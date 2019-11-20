# Exercícios sobre Heaps

### 1. Ler material em https://joaoarthurbm.github.io/eda/posts/heap/
antes de fazer a questão 2.


### 2. Definir o tipo "Heap" (usar struct e typedef) e Implementar em C as seguintes funções de manipulação de _heaps_:


Heap criaHeap(int n); // cria heap vazia, com capacidade para n elementos.

Heap criaHeap(int v[]); // cria heap a partir de um vetor de elementos e chama a função _buildHeap_;

void add(Heap h, int value); // adiciona elemento value a heap h.

int remove(Heap h); // remove elemento da heap (sempre o maior) e devolve o elemento removido.

int isEmpty(Heap h);

int left(Heap h, int index);

int right(Heap h, int index);

int parent(Heap h, int index);

void heapify(Heap h); // ver material da questão 1

int max_index(Heap h, int index, int left, int right); // ver material da questão 1

void buildHeap(Heap h); // ver material da questão 1


### 3. Escolher uma aplicação que usa _heaps_ e mostrar seu funcionamento usando as funções definidas na questão 2.


