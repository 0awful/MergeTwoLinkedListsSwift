/*
 This is a solution to the LeetCode Merge Two Linked Lists question
 
 You can find this question at:
 https://leetcode.com/problems/merge-two-sorted-lists/description/
 
 
 
 */


/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        if l2 == nil {
            return l1
        }
        if l1 == nil {
            return l2
        }
        
        var merged: ListNode
        if l1!.val < l2!.val {
            merged = l1!
            merged.next = mergeTwoLists(l1?.next, l2)
        } else {
            merged = l2!
            merged.next = mergeTwoLists(l1, l2?.next)
        }
        
        return merged
        
    }
}
