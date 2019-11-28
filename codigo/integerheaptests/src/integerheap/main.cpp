#include <stdio.h>
#include "IntegerHeap.h"

int main(){

   int elementos5[MAX] = {5,8,2,3,4};
   int elementos10[MAX] = {54,90,73,87,88,6,0,43,47,100};
   int elementos8[MAX] = {40,87,2,90,1,100,30,20};

   Heap emptyHeap = createEmptyHeap(MAX);
   Heap fiveElementHeap = createHeap(elementos5, 5);
   printf("Tail: %d\n", fiveElementHeap.tail);
   Heap eightElementHeap = createHeap(elementos8, 8);
   printf("Tail: %d\n", eightElementHeap.tail);
   Heap tenElementHeap = createHeap(elementos10, 10);
   printf("Tail: %d\n", tenElementHeap.tail);

   Heap h1 = createEmptyHeap(MAX);
   int elemento;

   if (isEmpty(h1))
      printf("Heap h1 vazia\n");

   add(&h1,5);
   add(&h1,3);
   add(&h1,10);
   add(&h1,7);
   add(&h1,50);
   printf("Heap h1 após 5 inserções: \n");
   printHeap(h1);

   if (isEmpty(h1))
      printf("Heap h1 vazia\n");
   
   elemento = removeElement(&h1);
   elemento = removeElement(&h1);
   printf("Heap h1 após 2 remoções: \n");
   printHeap(h1);

   printf("Heap 8 elem: \n");
   printHeap(eightElementHeap);
   add(&eightElementHeap, 99);
   printf("Heap com 9 elementos, após adição do elemento %d\n", 99);
   printHeap(eightElementHeap);
   printf("Tail: %d\n", eightElementHeap.tail);
   elemento = removeElement(&eightElementHeap);
   printf("Heap com 8 elementos, após remoção do elemento %d\n", elemento);
   printHeap(eightElementHeap);
   printf("Tail: %d\n", eightElementHeap.tail);

   printf("Heap 10 elem: \n");
   printHeap(tenElementHeap);
   add(&tenElementHeap, 99);
   printf("Heap com 11 elementos, após adição do elemento 99\n");
   printHeap(tenElementHeap);
   printf("Tail: %d\n", tenElementHeap.tail);
   add(&tenElementHeap, 99);

   return 0;
}


