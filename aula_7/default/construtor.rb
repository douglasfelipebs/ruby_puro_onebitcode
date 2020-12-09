class Person

    def initialize(name, age)
        @name = name
        @age = age
    end

    def check 
        puts "Name = #{@name}"
        puts "Age = #{@age}"
    end
end

person = Person.new('Douglas', 23)
person.check


person2 = Person.new
person2.check