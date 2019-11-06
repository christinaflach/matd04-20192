# Estruturas de Dados Fundamentais


## Arrays

- Um _array_ é uma estrutura de dados fundamental, em geral disponível como tipo primitivo da linguagem de programação.

- O _array_ possui número fixo, pré-definido, de elementos de um mesmo tipo (estrutura de dados homogênea), armazenados em posições de memória adjacentes e acessíveis por meio de um _índice_.


```
/* sieve of Eratosthenes */
program primes (input, output);
const N = 1000;
var 
   a: array[1..N] of boolean;
   i, j: integer;
begin
   a[1] := false; 
   for i := 2 to N do
      a[i] := true; 

   for i := 2 to N do
      for j := 2 to N div i do
         a[i*j] := false;

   for i := 1 to N do
      if a[i] then write(i);
end.
```

- A principal característica dos _arrays_ é que _se o índice for conhecido, qualquer elemento pode ser acessado em tempo constante. 

- O tamanho N do _array_ deve ser conhecido em tempo de compilação (na maior parte das linguagens de programação).

## Arrays multidimensionais

- _Arrays_ podem ter mais de uma dimensão, com um índice específico para cada uma delas.


```
program example (input, output);
const N = 100;
var
   a: array[1..N, 1..N] of integer;
   i, j: integer;
begin
   for i := 1 to N do
      for j := 1 to N do
         a[i,j] := 0;
end.
```

---

[Anterior]|[Listas](./listas.md)

