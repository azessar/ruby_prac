class Stack
    attr_accessor :stack, :min, :mins
    def initialize
        @stack = []
        @min = nil
        @mins = []
    end

    def push_with_min(val)
        if @stack.empty?
            @stack.push(val)
            @min = val
        else
            @stack.push(val)
            make_min(val)
        end
        @mins.push(@min)
    end

    def make_min(val)
        @min = val if val < @min
    end
    
    def pop_with_min
        @stack.pop
        @mins.pop
    end

    def find_min
        @mins[-1]
    end
end

stack1 = Stack.new
stack1.push_with_min(5)
stack1.push_with_min(6)
stack1.push_with_min(3)
stack1.push_with_min(7)
stack1.push_with_min(2)
stack1.push_with_min(10)

stack1.pop_with_min
stack1.pop_with_min


p stack1.stack
p stack1.find_min