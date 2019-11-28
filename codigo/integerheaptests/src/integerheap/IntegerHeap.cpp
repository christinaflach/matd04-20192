/*  IntegerHeap.cpp
 *  C/C++ file for integer maxheaps.
 *  Christina von Flach. 2019.
 */

#include <stdlib.h>
#include "IntegerHeap.h"

int isEmpty(Heap h) {
   return (h.tail == -1);
}

Heap createEmptyHeap(int capacity) {
   Heap h;
   if (capacity > MAX) {
      printf("Capacidade maior que limite máximo\n");
      exit(1);
   }
   h.tail = -1;
   h.heap = (int *) malloc(sizeof(int)*capacity);

   return h;
}

Heap createHeap(int v[], int n){
   Heap h;
   h.heap = v;
   h.tail = n-1;

   buildHeap(h);

   return h;
}

void buildHeap(Heap h) {
   for (int i = parent(h.tail); i >= 0; i--)
      heapify(h,i);
}

void heapify(Heap h, int index) {
// Implement here
}

void add(Heap *hptr, int value) {
// Implement here
}

int removeElement(Heap *hptr) {
// Implement here
}

int left(int index) {
   return 2 * index + 1;
}

int right(int index) {
   return 2 * (index + 1);
}

int parent(int index) {
   return (index-1)/2;
}

void printHeap(Heap h) {
   int *v = h.heap;
   int t = h.tail;

   for (int i=0; i <= t; i++)
      printf("%d\n", v[i]);
}

int max_index(Heap h, int index, int left, int right) {

   if (h.heap[index] > h.heap[left]) {
      if (isValidIndex(right, h.tail)) {
         if (h.heap[index] < h.heap[right])
            return right;
      }
      return index;
   } 
   else {
      if (isValidIndex(right, h.tail)) {
         if (h.heap[left] < h.heap[right])
	    return right;
      }
      return left;
   }
}

int isValidIndex(int index, int tail) {
   return index >= 0 && index <= tail;
}
    
int isLeaf(int index, int tail) {
   return index > parent(tail) && index <= tail;
} 
    
void swap(Heap h, int i, int j) {
   int aux = h.heap[i];
   h.heap[i] = h.heap[j];
   h.heap[j] = aux;
}


