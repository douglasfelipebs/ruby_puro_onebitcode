require 'net/http'
require 'uri'
require 'openssl'
require 'json'

class Translator 
    def translate(from, to, phraze)
        if (not validate_languages(from, to))
            puts "Informe apenas linguagens válidas"
            return
        end

        translated = get_translation_api(from, to, phraze)

        log_translation(from, to, phraze, translated)

        return translated;
    end

    private

    def get_translation_api(from, to, phraze)

        puts 'Executando!!'
        url = URI("https://google-translate1.p.rapidapi.com/language/translate/v2")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Post.new(url)
        request["content-type"] = 'application/x-www-form-urlencoded'
        request["accept-encoding"] = 'application/gzip'
        request["x-rapidapi-key"] = '033342dafbmsh10077c2373c289ep1a94b2jsn12c957bec1e6'
        request["x-rapidapi-host"] = 'google-translate1.p.rapidapi.com'
        request.body = "q=#{phraze}&source=#{from}&target=#{to}"

        response = http.request(request)

        doc = JSON.parse(response.read_body)
        translations = doc['data']['translations']
        translations.first['translatedText']
    end

    def validate_languages(from, to)
        valid_lang = ["af","sq","am","ar","hy","az","eu","be","bn","bs","bg","ca","ceb","zh-CN","zh-TW","co","hr","cs","da","nl","en","eo","et","fi","fr","fy","gl","ka","de","el","gu","ht","ha","haw","he","hi","hmn","hu","is","ig","id","ga","it","ja","jw","kn","kk","km","ko","ku","ky","lo","la","lv","lt","lb","mk","mg","ms","ml","mt","mi","mr","mn","my","ne","no","ny","ps","fa","pl","pt","pa","ro","ru","sm","gd","sr","st","sn","sd","si","sk","sl","so","es","su","sw","sv","tl","tg","ta","te","th","tr","uk","ur","uz","vi","cy","xh","yi","yo","zu"]

        from_valid = valid_lang.select do |x|
            x == from
        end

        if from_valid.empty?
            return false
        end

        to_valid = valid_lang.select do |y|
            y == to
        end

        return (not to_valid.empty?)
    end

    def log_translation(from, to, original, translated)
        time = Time.now
        now = time.strftime('%d-%m-%y_%H:%M:%S')
        File.open("logs/#{now}.txt", 'w') do |line|
            line.puts("Original Phraze: #{original}")
            line.puts("Translate From: #{from}")
            line.puts("Translate To: #{to}")
            line.print("Result Phraze: #{translated}")
        end
    end
end