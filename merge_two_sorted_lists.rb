# creating a dummy head node
def merge_two_lists(l1, l2)
    head = ListNode.new
    dummy = head
    while !l1.nil? && !l2.nil?
        if l1.val < l2.val
            head.next = l1
            l1 = l1.next
        else
            head.next = l2
            l2 = l2.next
        end
        head = head.next
    end
   head.next = l1 if l1
    head.next = l2 if l2
    dummy.next
end

#creating an array
def merge_two_lists(l1, l2)
    head1=l1
    head2=l2
    arr = []
    while !head1.nil? || !head2.nil?
        arr <<  head1.val if head1
        arr << head2.val if head2
        head1 = head1.next if head1
        head2 = head2.next if head2
    end
    arr.sort
end