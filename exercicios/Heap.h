// Heap.h

#include <stdio.h>

//  Lembrete: limites dos elementos presentes na Heap são 0 e tail.

typedef struct {
   int tail;
   int *heap;
} Heap;


#define MAX 15 // Usei valor para MAX pequeno para testar com heaps pequenas

Heap createEmptyHeap(int n); // cria heap vazia, com capacidade para n elementos.

Heap createHeap(int v[], int n); // cria heap a partir de um vetor de n elementos e chama a função _buildHeap_;

void add(Heap *h, int value); // adiciona elemento value a heap de h e incrementa tail

// A remoção em heap é sempre feita na raiz (maior elemento)
// Trocar o valor da raiz com a última folha e remover essa última folha. 
// Depois, heapify

int removeElement(Heap h);

int isEmpty(Heap);  // testa se tail == -1

void printHeap(Heap);

// métodos que retornam índice do elemento à esquerda
// do elemento à direita e do pai de um nó, 
// baseado no seu índice.

int left(int index);
int right(int index);
int parent(int index);

// Heapify
void heapify(Heap h, int index);

void buildHeap(Heap h); // ver código no material da UFCG

int max_index(Heap h, int index, int left, int right); // devolve o índice do maior

int isValidIndex(int index, int tail);
    
int isLeaf(int index, int tail);
  
void swap(Heap h, int i, int j);

