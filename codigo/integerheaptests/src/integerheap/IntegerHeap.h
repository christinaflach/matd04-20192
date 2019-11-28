/* Heap.h 
 * Header file for integer maxheaps.
 * Christina von Flach. 2019.
 */

#include <stdio.h>

typedef struct {
   int tail;
   int *heap;
} Heap;

#define MAX 11 // Usei MAX pequeno aqui para facilitar testes.

void add(Heap *hptr, int value); 
void buildHeap(Heap h); 
Heap createEmptyHeap(int n); 
Heap createHeap(int v[], int n); 
void heapify(Heap h, int index);
int isEmpty(Heap);
int isLeaf(int index, int tail);
int isValidIndex(int index, int tail);
int left(int index);
int max_index(Heap h, int index, int left, int right); 
int parent(int index);
void printHeap(Heap);
int removeElement(Heap *hptr);
int right(int index);
void swap(Heap h, int i, int j);

