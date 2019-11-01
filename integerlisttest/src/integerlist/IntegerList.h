// IntegerList.h


#ifndef CMAKE_INTEGERLIST_H
#define CMAKE_INTEGERLIST_H


typedef struct Node {
  int data;
  struct Node * next;
} IntegerList;

IntegerList * createElement(int);
int  isEmpty(IntegerList *);
int  size(IntegerList *);
void printList(IntegerList *);
void insertElement(IntegerList **, int);
void removeElement(IntegerList **, int);
int search(IntegerList *, int);

#endif

