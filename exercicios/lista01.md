# Listas Lineares - Lista 01

1. Implement in C functions for manipulating integer linear lists (IntegerList).

```
   int isEmpty(IntegerList *)  /* returns 0 if the argument is a non-empty list, 1 otherwise; */
   int size(IntegerList *) /* returns the size of the list; */
   void insertElement(IntegerList **, int element) /* insert element at the end of the list; */
   int removeElement(IntegerList*, index i) /* returns the integer value of i-th element of the list, 1 <= i <= size(list), and removes it from the list; */
   void printList(IntegerList *) /* prints the integer values of the list elements. */
```

2. Use the functions implemented in question 1 to create a linked list of integers from a given array of integers of size N.

```
Input : arr[] = {1, 2, 3, 4, 5}; 
Output : 1->2->3->4->5
```

```
Input : arr[] = {10, 11, 12, 13}
Output : 10->11->12->13
```

3. Implement a function to perform binary search in an ordered list of integer elements. You will have to implement a function to sort the list and use it before performing the binary search.

```
   int binarySearch(int key, IntegerList *) /* returns order of key in the list, or 0 if key is not found; */
   void sortList (IntegerList **) 
```

4. Calculate O(N) for the implemented functions.


