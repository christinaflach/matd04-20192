# Estruturas de Dados Fundamentais

Fonte do material (além dos livros referenciados):
   - [CS Library - Stanford, Linked List Basics](http://cslibrary.stanford.edu/103/LinkedListBasics.pdf)
   - [First Simple Linked List in C, with 3 elements](https://www.geeksforgeeks.org/linked-list-set-1-introduction/).

## Listas lineares (_linked lists_)

- Lista é uma estrutura que contém elementos de um conjunto em que as operações _inserir_, _retirar_ e _localizar_ são definidas.

- Listas podem crescer e encolher em tempo de execução; seu tamanho máximo não precisa ser conhecido antecipadamente.

- Elementos podem ser acessados, inseridos ou retirados da lista.

- A lista é um conjunto de itens organizados sequencialmente. 
   - No _array_, a organização sequencial é dada implicitamente pela posição do elemento no _array_.
   - Na _linked list_, há uma organização explícita em que cada elemento é parte de um "nó" que também contém um "link" para o próximo "nó".

---

## Tipo Abstrato de Dados LISTA

### Um conjunto de operações

   - Criar uma lista linear vazia
   - Inserir um novo item imediatamente após o i–ésimo item
   - Retirar o i-ésimo item
   - Localizar o i-ésimo item para examinar e/ou alterar o conteúdo de seus componentes
   - Combinar duas ou mais listas lineares em uma lista única
   - Fazer uma cópia da lista linear
   - Ordenar os itens da lista em ordem ascendente ou decrescente, de acordo com alguns de seus componentes
   - Pesquisa a ocorrência de um item com um valor específico em algum componente. 

---

### Outro conjunto de operações

   - FLVazia(Lista). Faz a lista ficar vazia.
   - Insere(x, Lista). Insere x após o último elemento da lista.
   - Retira(x, Lista). Retorna o item x que está na posição p da lista, retirando-o da lista e deslocando os itens a partir da posição p+1 para as posições anteriores.
   - Vazia(Lista). Retorna _true_ se a lista for vazia; senão, retorna _false_.
   - Imprime(Lista). Imprime os itens da lista na ordem de ocorrência.

---

## Implementação de LISTA

### Com _arrays_

Ver capítulo 3, seção 3.1.1 do livro de Ziviani.


### Com _pointers_, em C

Fonte do material a seguir: https://www.geeksforgeeks.org/data-structures/linked-list/ 
[First Simple Linked List in C, with 3 elements](https://www.geeksforgeeks.org/linked-list-set-1-introduction/).

```
// A simple C program to introduce linked lists 
#include <stdio.h> 
#include <stdlib.h> 
  
// A linked list node 
struct Node { 
    int data; 
    struct Node* next; 
}; 
  

// Program to create a simple linked list with 3 nodes 
int main() 
{ 
    struct Node* head = NULL; 
    struct Node* second = NULL; 
    struct Node* third = NULL; 
  
    // allocate 3 nodes in the heap 
    head = (struct Node*)malloc(sizeof(struct Node)); 
    second = (struct Node*)malloc(sizeof(struct Node)); 
    third = (struct Node*)malloc(sizeof(struct Node)); 

    /* Three blocks have been allocated dynamically.  
     We have pointers to these three blocks as head, 
     second and third      
       head           second           third 
        |                |               | 
        |                |               | 
    +---+-----+     +----+----+     +----+----+ 
    | #  | #  |     | #  | #  |     |  # |  # | 
    +---+-----+     +----+----+     +----+----+ 
     
   # represents any random value. 
   Data is random because we haven’t assigned  
   anything yet  */
  
    head->data = 1; // assign data in first node 
    head->next = second; // Link 1st node with the 2nd node 

   /* data has been assigned to the data part of the first 
     block (block pointed by the head). And next 
     pointer of first block points to second.   
     So they both are linked. 
  
       head          second         third 
        |              |              | 
        |              |              | 
    +---+---+     +----+----+     +-----+----+ 
    | 1  | o----->| #  | #  |     |  #  | #  | 
    +---+---+     +----+----+     +-----+----+     
  */
  
    // assign data to second node 
    second->data = 2; 
  
    // Link second node with the third node 
    second->next = third; 
  
    /* data has been assigned to the data part of the second 
     block (block pointed by second). And next 
     pointer of the second block points to the third  
     block. So all three blocks are linked. 
    
       head         second         third 
        |             |             | 
        |             |             | 
    +---+---+     +---+---+     +----+----+ 
    | 1  | o----->| 2 | o-----> |  # |  # | 
    +---+---+     +---+---+     +----+----+      */
  
    third->data = 3; // assign data to third node 
    third->next = NULL; 
  
    /* data has been assigned to data part of third 
    block (block pointed by third). And next pointer 
    of the third block is made NULL to indicate 
    that the linked list is terminated here. 
  
     We have the linked list ready.   
  
           head     
             | 
             |  
        +---+---+     +---+---+       +----+------+ 
        | 1  | o----->|  2  | o-----> |  3 | NULL | 
        +---+---+     +---+---+       +----+------+        
     
    Note that only head is sufficient to represent  
    the whole list.  We can traverse the complete  
    list by following next pointers.    */
  
    return 0; 
} 

```

---

## Implementação de Imprime(Lista) em C

```
// This function prints contents of linked list starting from 
// the given node 

void printList(struct Node* n) 
{ 
    while (n != NULL) { 
        printf(" %d ", n->data); 
        n = n->next; 
    } 
} 
```

---

## Insert Element

1. Inserir elemento em lista vazia.

2. Inserir no final da lista.

```
      head
        |
        +---+---+    +----+------+        
        | 2 | o----->| 4  | NULL | 
        +---+---+    +----+------+        
```

3. Inserir no início da lista.

```
      head     
        |   
        +---+---+     +---+---+      +----+------+ 
        | 1  | o----->| 2 | o----->  | 4  | NULL | 
        +---+---+     +---+---+      +----+------+        
```

4. Inserir no meio da lista. 

```  
      head   
        |  
        +---+---+     +---+---+       +----+----+     +----+------+ 
        | 1  | o----->|  2  | o-----> |  3 |    o---->|  4 | NULL | 
        +---+---+     +---+---+       +----+----+     +----+------+   
  ```
  
