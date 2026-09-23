class Node:
    def __init__(self, v, l=None, r=None):
        self.v = v
        self.l = l
        self.r = r


def kth_smallest_in_bst(root: Node, k: int) -> int:
    """Finds the k-th smallest element (1-indexed) in a Binary Search Tree.

    Time Complexity:  O(h + k) - Traverse left spine (height h), then visit k nodes.
    Space Complexity: O(h)     - Bounded by the height of the tree on the call stack/list.
    """
    stack = []
    curr = root

    while curr or stack:
        # Traverse to the leftmost node
        while curr:
            stack.append(curr)
            curr = curr.l

        # Visit the node
        curr = stack.pop()
        k -= 1
        if k == 0:
            return curr.v

        # Move to the right subtree
        curr = curr.r

    raise ValueError("k is greater than the number of nodes in the BST.")
