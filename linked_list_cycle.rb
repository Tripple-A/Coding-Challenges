# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

def hasCycle(head,hash={})
    return false if head.nil? || head.next.nil?
    return true if hash.has_key?(head.next)
    hash[head] = 1
    head = head.next
    hasCycle(head,hash)
end
#Using pointers
def hasCycle(head)
    slow = head
    fast = head.next if head
     while slow && fast
         return true if slow == fast
         slow = slow.next
         if fast.next
             fast = fast.next.next
         else
             fast = fast.next
         end
     end
     false
 end