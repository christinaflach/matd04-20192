# Informações básicas

[MATD04](https://alunoweb.ufba.br/SiacWWW/ExibirEmentaPublico.do?cdDisciplina=MATD04&nuPerInicial=20101) - Estrutura de Dados

- Semestre letivo: 2019.2
- Turma: T01 P01
- Prof. Christina von Flach G. Chavez (flach@ufba.br)

# Ementa

Introdução à análise de algoritmos. 
Tipos Abstratos de Dados. 
Estruturas de dados fundamentais: listas, filas, pilhas, árvores e heaps. 
Algoritmos de busca em memória principal. 
Dispositivos de armazenamento secundário. 
Arquivos com organização sequencial (busca sequencial, busca por interpolação, busca binária). 
Arquivos com organização direta (funções de hashing, métodos de resolução de colisão). 
Arquivos com organização em árvore (árvores-B e suas variações). 
Ordenação externa.

# Tópicos

## Preâmbulo

+ Revisão de C / C++ (ver Links)

## Parte 1 

1. [Introdução à análise de algoritmos](tutorial/analisedealgoritmos.md) 

2. [Tipos abstratos de dados](tutorial/tiposabstratosdedados.md) 

3. [Estruturas de dados fundamentais](tutorial/estruturasfundamentais.md)
   - [Listas lineares](tutorial/listas.md)
   - [Pilhas](tutorial/pilhas.md)
   - [Filas](tutorial/filas.md)
   - [Árvores](tutorial/arvores.md)

4. Pesquisa em memória primária
   - [Pesquisa sequencial](tutorial/buscasequencial.md)
   - Pesquisa binária
   - Pesquisa em árvore binária.

## Parte 2 

5. Arquivos com organização sequencial 
   - Pesquisa sequencial
   - Pesquisa por interpolação
   - Pesquisa binária. 

6. Arquivos com organização direta 
   - Funções de hashing
   - Métodos de resolução de colisão.
 
7. Arquivos com organização em árvore 
   - Árvores-B e suas variações. 

8. Ordenação externa.

# Avaliações

+ Duas provas (peso 6) 
   - Prova 1: [Questões](exercicios/p1-questoes.md)
   - Prova 2
+ Trabalho (peso 2)
+ Exercícios (peso 2)

# Referências Bibliográficas

- (1) Ziviani, N. Projeto de Algoritmos com implementações em Pascal e C. Ed. Thomson, 2 ed. rev e ampl. 2005.
- (2) Sedgewick, R. Algorithms. Ed. Addison-Wesley, 2 ed. 1988. [Ver outras edições](https://algs4.cs.princeton.edu/home/).
- (3) D.E. Knuth, The Art of Computer Programming, vol. 1 (Fundamental Algorithms) e vol. 3 (Sorting and Searching), Addison-Wesley, 1973.

---

# Plano de aulas

- 04 e 06/12: Funções de hashing e métodos de resolução de colisão; Ordenação externa.

- 29/11: Prova 2

- 27/11: Árvores-B e suas variações

- 20 e 22/11: [Análise de algoritmos recursivos](https://joaoarthurbm.github.io/eda/posts/analise-algoritmos-recursivos/)  e Outros tipos de árvores 

- 13/11: Prova 1 e  15/11: Feriado

- 06/11 e 8/11: [Árvores binárias de pesquisa](tutorial/arvores.md). Aula Prática: [Lista 04](exercicios/lista04.md)

- 30/10 e 01/11: Congresso UFBA / Aula Prática (pilhas e filas).

- 23 e 25/10: Listas, Pilhas e Filas. 
   + [Lista 02](exercicios/lista02.md)  **Entrega até 13/11**.
   + [Lista 03](exercicios/lista03.md)  **Entrega até 13/11**

- 04/10 a 19/10: Licença médica da professora. Trabalhar em [Exercícios](exercicios/listas01.md)

- 25/9 e 27/9: Aula prática
   + [Lista 01](exercicios/lista01.md). **Entrega até 18/10**.

- 18/9 e 20/9: Listas
   + Leitura de [estruturas de dados fundamentais](tutorial/estruturasfundamentais.md) e links indicados.
   + Leitura de [listas lineares](tutorial/listas.md) e links indicados.

- 13/9: Revisão de [definição e uso de funções](https://www.ime.usp.br/~hitoshi/introducao/16-funcao02.pdf), [funções e ponteiros](https://www.ime.usp.br/~hitoshi/introducao/17-funcao03.pdf), [vetores](https://www.ime.usp.br/~hitoshi/introducao/18-vetor.pdf) e [vetores, ponteiros e funções](https://www.ime.usp.br/~hitoshi/introducao/19-vetor_ponteiro.pdf). 
   + *Exercícios recomendados*: Todos os exercícios da parte 17 da apostila da USP. **Entrega até 11/10**.
   + *Exercícios recomendados*: Todos os exercícios da parte 19 da apostila da USP (Entrega _opcional_, pois os exercícios estão resolvidos). **Entrega até 11/10**.

- 11/9: Revisão da linguagem de programação C. Aula prática: github, exercício de revisão sobre E/S padrão, ordenação e busca em vetor (em lab). 
   + *Leitura e exercícios recomendados*: partes 16 a 19 da apostila da USP.
   
- 06/9: Introdução: Análise de algoritmos. Aula teórica.
   + *Leitura e exercícios recomendados*: Leitura do capítulo 1 da referência (1) para realizar os seguintes exercícios recomendados no final do capítulo: 2 a 5, 10 a 15. **Entrega até 09/10**.
   
- 04/9: Primeira aula. Apresentação da disciplina.
   + *Leitura recomendada*: capítulo 1 da referência (1).


# Exercícios

+ [Lista 01](exercicios/lista01.md). **Entrega até 18/10**.
+ [Lista 02](exercicios/lista02.md) **Entrega até 13/11**.
+ [Lista 03](exercicios/lista03.md) **Entrega até 13/11**.
+ [Lista 04](exercicios/lista04.md) **Entrega até 20/11**.

# Trabalho 

Apresentação de seminários e exercícios sobre:

- Funções de hashing e métodos de resolução de colisão
- Árvores-B e suas variações
- Ordenação externa.

--- 

# Links

### Sobre C 
- [Apostila da USP: Introdução à Ciência da Computação em C](https://www.ime.usp.br/~hitoshi/introducao/)
- [Material de ILP do Prof. Rodrigo Rocha](https://rodrigorgs.github.io/aulas/mata37/), incluindo [ordenação](https://rodrigorgs.github.io/aulas/mata37/ordenacao).
- [Data Structures & Algorithm Analysis by Clifford A. Shaffer.](http://people.cs.vt.edu/~shaffer/Book/C++3elatest.pdf)
   
### Sobre markdown

- [Markdown Guide](https://www.markdownguide.org/basic-syntax/)
+ [The Ultimate Guide to Markdown](https://blog.ghost.org/markdown/)
+ [Markdown and including multiple files](https://stackoverflow.com/questions/4779582/markdown-and-including-multiple-files)

### Sobre github 

+ [Git Basics - Getting a Git Repository](https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository)
+ [Try Git](https://try.github.io/levels/1/challenges/1)

### Sobre Estruturas de Dados e Algoritmos

+ João Arthur Brunet, 2019. Estrutura de Dados e Algoritmos, Computação @ UFCG, <http://joaoarthurbm.github.io/eda>.
+ [binary search anime](https://pt.khanacademy.org/computer-programming/binary-search-with-selectable-search-key-hit-backspace-and-type/4590599206076416/embedded?embedded?embed=yes&editor=no&width=720)

### Sobre Testes Automatizados

+ [Google Test](https://github.com/google/googletest)
+ [Why Google C++ Testing Framework?](https://chromium.googlesource.com/external/github.com/google/googletest/+/refs/tags/release-1.8.0/googletest/docs/Primer.md)
   
