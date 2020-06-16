# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head,prev=nil)
    return prev if head.nil?
        next_node = head.next
        head.next = prev
        prev = head
        head = next_node 
    reverse_list(head,prev)
end