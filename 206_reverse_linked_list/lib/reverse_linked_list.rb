require 'pry'

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  store = []
  curr_node = head
  temp_node = nil

  while curr_node
    store << curr_node
    temp_node = curr_node.next
    curr_node.next = nil
    curr_node = temp_node
  end

  store.each_with_index do |node, i|
    if store[i + 1]
      store[i + 1].next = node
    end
  end
end

three = ListNode.new(3, nil)
two = ListNode.new(2, three)
head = ListNode.new(1, two)

puts reverse_list(head)
