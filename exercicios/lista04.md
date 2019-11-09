# Exercícios sobre árvores binárias de pesquisa (_BTS - Binary Search Trees_ )

1. Implementar versão recursiva para árvores binárias de pesquisa (em C).

Observação: Considerar que valores são inteiros e que não pode haver valores repetidos na BTS.
Definir o tipo abstrato de dados "IntegerBTS".

```
typedef struct TreeNode {
  int data;
  TreeNode * left;
  TreeNode * right;
} IntegerBTS;
```

- void add (IntegerBTS *, int); // adiciona valor inteiro 
- remove (IntegerBTS *, int); // remove nó que contém valor 
- IntegerBTS * search (IntegerBTS*, int);
- void preorder (IntegerBTS *);
- void inorder (IntegerBTS *);
- void posorder (IntegerBTS *);

2. Implementar funções para manipular árvores binárias de pesquisa. Usar versão recursiva (em C).

- altura da árvore.
- mínimo e máximo valores presentes na árvore.
- sucessor (se um nó possui subárvore à direita, o seu sucessor é nó que contém o valor mínimo dessa subárvore).
- predecessor (se um nó possui subárvore à esquerda, o seu predecessor é nó que contém o valor máximo dessa subárvore).

3. Usar as funções implementadas em uma pequena aplicação à sua escolha (em C).
