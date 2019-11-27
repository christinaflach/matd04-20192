#include <stdio.h>
#include "IntegerHeap.h"

// heap=[88,87,73,47,54,6,0,43,0,0]
// e tail = 7

int main(){

   int elementos5[15] = {5,8,2,3,4};
   int elementos10[15] = {54,90,73,87,88,6,0,43,47,100};
   int elementos8[15] = {40,87,2,90,1,100,30,20};

   Heap emptyHeap, fiveElementHeap, eightElementHeap, tenElementHeap;

   emptyHeap = createEmptyHeap(15);
   fiveElementHeap = createHeap(elementos5, 5);
   eightElementHeap = createHeap(elementos8, 8);
   tenElementHeap = createHeap(elementos10, 10);

   Heap h1 = createEmptyHeap(15);

   if (isEmpty(h1))
      printf("Heap vazia\n");
   add(&h1, 5);
   add(&h1, 3);
   add(&h1, 10);

   printf("Heap 1: \n");
   printHeap(h1);

   printf("Heap 8 elem: \n");
   printHeap(eightElementHeap);
   add(&eightElementHeap, 99);
   printHeap(eightElementHeap);

   return 0;
}


