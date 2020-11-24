class LinkedList
    attr_accessor :head
    def initialize(head_value)
        @head = Node.new(head_value,nil)
    end

    def append(value)
        current = @head
        until !current.next
            current = current.next
        end
        current.next = Node.new(value,nil)
    end

    def delete(value)
        return "no data" if !@head
        @head = @head.next if value == @head.value
        current = @head
        until current.value == value
            previous = current
            current = current.next
            return "node doesn't exist" if !current.next
        end
        previous.next = current.next
    end

    def print
        current = @head
        until !current.next
            p current.value
            current = current.next
        end
        p current.value
    end

end

class Node
    attr_accessor :next
    attr_accessor :value
    def initialize(value, next_node)
        @value = value
        @next = next_node
    end
end

def linked_addition(list1, list2)
    current1 = list1.head
    current2 = list2.head
    answer = LinkedList.new(0)
    until !current1.next || !current2.next
        digit = current1.value + current2.value
        if digit <= 9
            answer.append(digit)
            current1 = current1.next
            current2 = current2.next
        else
            answer.append(digit % 10)
            current1 = current1.next
            current2 = current2.next
            current1.value += 1
        end
    end
    last_digit = current1.value + current2.value
    if last_digit <= 9
        answer.append(last_digit)
    else
        answer.append(last_digit % 10)
        answer.append(1)
    end
    answer.delete(0)
    answer.print
end

list1 = LinkedList.new(5)
list1.append(5)
list1.append(5)

list2 = LinkedList.new(6)
list2.append(6)
list2.append(6)

list1.print
p "plus"
list2.print
p "equals"
linked_addition(list1,list2)