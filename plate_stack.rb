class Plates
    attr_accessor :max_height, :stacks
    def initialize(max_height)
        @max_height = max_height
        @stacks = []
    end

    def push(val)
        if @stacks.empty? || @stacks[-1].length == @max_height
            @stacks.push([val])
        else
            @stacks[-1].push(val)
        end
    end

    def pop
        @stacks[-1].pop
    end
end

stack1 = Plates.new(4)
stack1.push(5)
stack1.push(8)
stack1.push(2)
stack1.push(45)
stack1.pop
stack1.push(1)

p stack1.stacks