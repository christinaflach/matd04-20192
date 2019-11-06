// IntegerList.h

typedef struct Node {
  int data;
  struct Node * next;
} IntegerList;

int  isEmpty(IntegerList *);
int  size(IntegerList *);
void printList(IntegerList *);
void insertElement(IntegerList **, int);

