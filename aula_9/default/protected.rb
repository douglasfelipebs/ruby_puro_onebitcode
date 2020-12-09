class Foo
    attr_accessor :id

    def initialize(id)
        @id = id
    end

    def call_protected(instance)
        instance.bar
    end

    protected

    def bar
        puts "protected method #{@id}"
    end
end

instance_1 = Foo.new(1)
instance_2 = Foo.new(2)
instance_1.call_protected(instance_1)
instance_1.call_protected(instance_2)