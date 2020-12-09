# hello_proc = proc do |msg|
#     puts msg
# end

# hello_proc.call

# hello_lambda = lambda do |msg|
#     puts msg
# end
   
# hello_lambda.call

# hello_lambda = lambda do |msg|
#     return msg
#   end
   
#   def run_hello_block(block)
#     puts "Preparando para executar lambda..."
#     puts "Lambda em execução: #{block.call("Hello World")}"
#     return "Lambda executado com sucesso!"
#   end
   
#   puts run_hello_block(hello_lambda)

# hello_proc = proc do |msg|
#     return msg
#   end
   
#   def run_hello_block(block)
#     puts "Preparando para executar proc..."
#     puts "Proc em execução: #{block.call("Hello World")}"
#     return "Proc executado com sucesso!"
#   end
   
#   puts run_hello_block(hello_proc)

  def run_hello_block
    hello_proc = proc do |msg|
        return msg
      end
       
    puts "Preparando para executar proc..."
    puts "Proc em execução: #{hello_proc.call("Hello World")}"
    return "Proc executado com sucesso!"
  end
   
  puts run_hello_block