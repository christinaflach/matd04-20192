# Exercícios sobre Heaps

Ler material em https://joaoarthurbm.github.io/eda/posts/heap/
antes de fazer as questões.


### 1. Definir o tipo "Heap" (usar struct e typedef) e implementar em C as seguintes funções de manipulação de _heaps_:


Heap createHeap(int n); // cria heap vazia, com capacidade para n elementos.

Heap createHeap(int v[]); // cria heap a partir de um vetor de elementos e chama a função _buildHeap_;

void add(Heap h, int value); // adiciona elemento value a heap h.

int remove(Heap h); // remove elemento da heap (sempre o maior) e devolve o elemento removido.

int isEmpty(Heap h);

int left(Heap h, int index);

int right(Heap h, int index);

int parent(Heap h, int index);

void heapify(Heap h); // ver material indicado.

int max_index(Heap h, int index, int left, int right); // ver material indicado

void buildHeap(Heap h); // ver material indicado


### 2. Escolher uma aplicação simples que usa _heaps_, e implementar usando as funções definidas na questão 1.


