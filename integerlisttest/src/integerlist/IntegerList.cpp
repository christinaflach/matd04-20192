// Includes
#include <iostream>
#include <stdlib.h>
#include "IntegerList.h"

using namespace std;

// IntegerList * createElement(int);

IntegerList * createElement(int element) {

  IntegerList *new_node;
  new_node = (IntegerList *) malloc(sizeof(IntegerList *)); 
  if (new_node == NULL) {
      printf ("No memory left.\n");
      exit(EXIT_FAILURE);
  }
  new_node->data = element;
  new_node->next = NULL;
  return new_node;
}


// int  isEmpty(IntegerList *);

int isEmpty(IntegerList * integerList) {
  return (integerList != NULL)? 0 : 1;
}

// int  size(IntegerList *);

int size(IntegerList * l){
  int i = 0;

  while (l) {
    i++;
    l = l->next;
  }

  return i;
}

// void printList(IntegerList *);

void printList(IntegerList * ptr) {
  while (ptr) {
    cout << "Data: " << ptr->data << endl;
    ptr = ptr->next;
  }
}


// void insertElement(IntegerList **, int);
void insertElement(IntegerList** l, int element) {

  IntegerList *new_node;
  new_node = createElement(element);

  IntegerList *prev = (IntegerList *) NULL;
  IntegerList *ptr = * l;

  while (ptr) {
    prev = ptr;
    ptr = ptr->next;
  }

  if (prev) 
    prev->next = new_node;
  else
    (*l) = new_node;
}

// int removeElement(IntegerList **, int);
int removeElement(IntegerList** l, int index) {

  // Assume 1 <= index <= size(l)

  // locate
  IntegerList *prev = (IntegerList *) NULL;
  IntegerList *ptr = *l;
  int element;

  if (index == 1) {
    element = ptr->data;
    (*l) = ptr->next;
  }
  else {
     for (int i=1; i < index; i++) {
       prev = ptr;
       ptr = ptr->next;
     }

  // remove
     element = ptr->data;
     prev->next = ptr->next;
  }

  return element;
}



/* Checks whether the value x is present in linked list 
*  and returns index if found, or 0 */
int search(IntegerList* head, int x) {  
    IntegerList* current = head; // Initialize current  
    int index = 0;
    while (current != NULL)  
    {  
        index++;
        if (current->data == x)  
            return index;  
        current = current->next;  
    }  
    return 0;  
} 


