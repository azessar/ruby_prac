class Hotel
    def initialize
        queue = []
    end

    def enqueue(animal)
        queue.unshift(animal)
    end

    def dequeue(animal = nil)
        if !animal
            return queue.pop
        else
            i = -1
            until queue[i] == animal
                
                i -= 1
            end
        end
    end


end