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

void add(Heap *h, int value) {
   int i, p, aux;

   if (h->tail >= (MAX-1)) {
      printf("Heap cheia\n");
      exit(1);
   }

   h->tail = h->tail + 1;
   h->heap[h->tail] = value;
   i = h->tail;

   while (i > 0 && h->heap[parent(i)] < h->heap[i]) {
      aux = h->heap[i];
      p = parent(i);
      h->heap[i] = h->heap[p];
      h->heap[p] = aux;
      i = p;
   }
}

int removeElement(Heap h) {
   return 0;
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

void heapify(Heap h, int index) {
   int index_max;

   if (isLeaf(index, h.tail) || !isValidIndex(index, h.tail)) 
      return;
        
   // compares index, left and right to find max
   index_max = max_index(h, index, left(index), right(index));
        
   // if current index is not greater than its children, 
   // swap and keep heapifying.
   if (index_max != index) {
      swap(h, index, index_max);
      heapify(h, index_max);
   }
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


