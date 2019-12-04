# Stanford University - Algoritmos 1 - AUTO-PACED
## Algoritmos: Design e Análise
 
- Curso HASHING: THE BASICS - Tabelas Hash: Operações e Aplicações
 
## Transcrição do vídeo

Neste vídeo, começaremos nossa discussão sobre tabelas de hash; vamos nos concentrar primeiro na
operações de suporte e em algumas das aplicações canônicas. Então, tabelas de hash são
incrivelmente útil. Se você quer ser um programador sério ou um cientista da computação
você realmente não tem escolha a não ser aprender sobre tabelas de hash. Tenho certeza que muitos de vocês
de fato os utilizou em seus próprios programas no passado. Agora, por um lado, o que é
engraçado é que eles não fazem tantas coisas em termos de número de
operações, mas o que eles fazem, eles fazem muito, muito bem.

### Então, o que é uma tabela de hash?

Bem, conceitualmente, ignorando todos os aspectos da implementação, você pode
quero pensar em uma tabela de hash como uma matriz. Então, uma coisa que as matrizes fazem super bem é
apoiar acesso imediato imediato. Então, se você está se perguntando qual é a posição
número dezessete de alguma matriz, lança, com algumas instruções da máquina, você pode
descobrir, quer mudar o conteúdo da posição número 23 em alguma matriz? Feito, em
tempo constante. Então, vamos pensar em um aplicativo no qual você deseja se lembrar
os números de telefone dos seus amigos. 
Então, se você tiver sorte, seus amigos e pais foram todos nus, 
pessoas extraordinariamente sem imaginação e 
todos os nomes de seus amigos são números inteiros, digamos entre um e 10.000. 
Portanto, se este for o caso, você pode simplesmente manter uma matriz
do link 10.000. 
E para armazenar o número de telefone de, digamos, seu melhor amigo, 173, você
pode apenas usar a posição 173 desta matriz de tamanho modesto. 
Portanto, esta solução baseada em array
funcionaria muito bem, mesmo que seus amigos mudem com o tempo, você ganha um pouco aqui
perder um pouco lá, desde que todos os nomes de seus amigos sejam inteiros
entre 1-10.000. Agora, é claro, seus amigos têm nomes mais interessantes:
Alice, Bob, Carol, tanto faz. E sobrenomes também. Então, em princípio, você poderia
ter uma matriz com uma posição na matriz para cada nome concebível que você possa
encontro, com pelo menos 30 letras. Mas é claro que essa matriz seria muito
grande. Seria algo como 26 elevado ao trigésimo poder e você nunca poderia
Implementá-lo. Então, o que você realmente gostaria é de uma variedade de tamanho razoável,
digamos, você sabe estimar o número de amigos que já teria, então diga
os milhares ou algo assim, onde suas posições são indexadas, não pelos números,
não inteiros. [inaudível] Entre um e 10.000, mas sim pelos seus amigos
E o que você gostaria de fazer é ter acesso aleatório a essa matriz com base em
o nome do seu amigo. Então, basta procurar a citação entre aspas da posição de Alice
matriz e. Boom, haveria o número de telefone de Alice em tempo constante. E isto,
em um nível conceitual, é basicamente o que uma tabela de hash pode fazer por você. Então tem um
muita magia acontecendo sob o capô de uma tabela de hash e isso é algo que vamos
discutir até certo ponto em outros vídeos. Então você precisa ter esse mapeamento entre os
teclas importantes para você, como o nome de seus amigos e posições numéricas
de alguma matriz. Isso é feito pelo que é chamado de função hash, mas corretamente
implementado, esse é o tipo de funcionalidade que as tabelas de hash oferecem,
Assim como uma matriz com suas posições indexadas pelas chaves que você está armazenando.

Assim, você pode pensar no propósito da tabela de hash como manter uma possível
conjunto de coisas em evolução. Onde é claro o conjunto de coisas que você está mantendo, você
saber, variará de acordo com a aplicação. Pode ser qualquer número de coisas. Então se você é
executando um site de comércio eletrônico, talvez você esteja acompanhando as transações. Vocês
sabe, novamente, talvez você esteja acompanhando pessoas, como, por exemplo, seus amigos e
vários dados sobre eles. Talvez você esteja acompanhando os endereços I-P, por
exemplo, se você quer saber quem foi, houve visitantes únicos em seus sites.
E assim por diante.

Então, um pouco mais formalmente, você sabe, as operações básicas, você precisa
para poder inserir coisas em uma tabela de hash. Em muitos, mas nem todos os aplicativos,
você também precisa excluir coisas. E normalmente o mais importante
operação é procurar. E para todas essas três operações, você faz isso em uma chave
maneira. Onde, como sempre, uma chave deve ser apenas um identificador exclusivo para 
o registro que você está preocupado. Por exemplo, para funcionários, você pode estar usando redes sociais números de segurança. 
Para transações, você pode ter um número de identificação de transação. 
E os endereços IP podem atuar como sua própria chave. E às vezes tudo o que você está fazendo é
mantendo o controle das próprias chaves.

Então, por exemplo, em endereços IP, talvez você só quero lembrar uma lista de endereços IP. 
Você realmente não tem nenhum dados associados, mas em muitos aplicativos, 
junto com a chave, há outras coisas. 
Assim, junto com o número de previdência social do funcionário, você
precisa se lembrar de vários outros dados sobre esse funcionário. Mas quando você faz a inserção,
quando você faz a exclusão, quando pesquisa, você faz isso com base. Nesta chave, e
por exemplo, ao procurar, você alimenta a chave na tabela de hash e na tabela de hash
cuspirá de volta todos os dados associados a essa chave. Nós as vezes
ouvir as pessoas se referirem às estruturas de dados que suportam essas operações como um dicionário.

Portanto, a principal coisa que a tabela de hash deve suportar é procurar no espírito de um
dicionário. Acho essa terminologia um pouco enganosa, na verdade. Você sabe, a maioria
os dicionários que você encontrará estão em ordem alfabética. Então eles vão apoiar
algo como pesquisa binária. E eu quero enfatizar algo que uma tabela de hash faz
não fazer é manter uma ordem nos elementos que ele suporta. Então se você é
armazenando coisas e você deseja ter operações baseadas em pedidos, você quer encontrar o
mínimo ou máximo, ou algo assim, uma tabela de hash provavelmente não é a
estrutura de dados correta. Você quer algo mais. Você quer olhar para uma pilha ou você
quero olhar para uma árvore de busca. Mas para aplicativos em que tudo que você precisa fazer
é basicamente procurar coisas que você precisa, você precisa saber o que está lá e o que não está,
então deve haver uma lâmpada que se apaga na sua cabeça. E você pode dizer,
deixe-me considerar uma tabela de hash, essa é provavelmente a estrutura de dados perfeita para
esta aplicação.

Agora, olhando para essas operações suportadas por menus, você pode ficar
meio impressionado. Tudo bem, então uma tabela de hash, em certo sentido, não faz tantas
coisas; mas, novamente, o que faz, faz muito, muito bem. Então, de primeira ordem.
O que as tabelas de hash oferecem é a seguinte garantia incrível. Todas essas operações
correr em tempo constante. E, novamente, isso está no espírito de pensar em uma tabela de hash como
assim como uma matriz. Onde suas posições são convenientemente indexadas por suas teclas,
Assim como uma matriz suporta acesso aleatório em tempo constante, você pode ver se, você
sabe, há algo na posição da matriz e o que é. Da mesma forma que um
A tabela de hash permitirá que você pesquise com base na chave em tempo constante. Então, qual é o
impressão fina?

Bem, existem basicamente duas advertências. Então, a primeira coisa é que o hash
tabelas são fáceis de implementar mal. E se você implementá-los mal, você não receberá
esta garantia. Portanto, essa garantia é para tabelas de hash implementadas corretamente. Agora de
Claro, se você está apenas usando uma tabela de hash de uma biblioteca conhecida, provavelmente é uma
muito boa suposição de que foi implementada corretamente. Você esperaria. Mas no evento
que você é forçado a criar sua própria tabela de hash e sua própria função de hash
e, diferentemente de muitas outras estruturas de dados, falaremos sobre alguns
provavelmente terá que fazer isso em algum momento da sua carreira. Então você vai conseguir isso
garantir apenas se você implementá-lo bem. E falaremos exatamente sobre o que isso
significa em outros vídeos. Portanto, a segunda ressalva é que, diferentemente da maioria dos
problemas que resolvemos neste curso, as tabelas de hash não têm o pior caso
garantias. Você não pode dizer para uma determinada tabela de hash que para todos os dados possíveis
definir que você vai ter custo e tempo. O que é verdade é que, para dados não patológicos,
você obterá operações de custo e tempo em uma tabela de hash implementada corretamente. Tão bem
falar sobre esses dois problemas um pouco mais em outros vídeos, mas por enquanto apenas
bits de ordem são, você sabe, tabelas de hash, desempenho em tempo constante, sujeitos a uma
algumas advertências.

Então agora que eu cobri as operações que tabelas de hash
suporte e a maneira recomendada de pensar sobre eles, vamos voltar nossa atenção para
algumas aplicações.
Todas essas aplicações serão, em certo sentido,
você sabe, usos triviais de tabelas de hash, mas elas também são todas
prático. Estes surgem o tempo todo.

### Uma aplicação

Então, a primeira aplicação que discutiremos, que é de novo canônica,
está removendo duplicatas de várias coisas,
também conhecido como problema de desduplicação.
Portanto, no problema de deduplicação, a entrada é essencialmente um fluxo de objetos.
Onde, quando eu digo um fluxo que eu tenho, você sabe
duas coisas diferentes em mente como exemplos canônicos.

Então, primeiro de tudo, você pode imaginar que possui um arquivo enorme.
Então você tem um registro de tudo o que aconteceu em
algum site que você está executando. Ou todas as transações que foram feitas em uma loja em
algum dia, e você passa por esse arquivo enorme. Então você está no meio de
alguns externos para loop indo linha por linha através deste arquivo enorme. O outro
O exemplo de um fluxo que eu tinha em mente é onde você está obtendo novos dados
Tempo. Então, aqui, você pode imaginar que está executando um software para ser implantado no
um roteador de internet. E os pacotes de dados estão chegando através deste roteador a uma constante
taxa extremamente rápida. E então você pode estar olhando, digamos, os endereços IP e os
remetente e use o pacote de dados que está passando pelo roteador. Então seria
outro exemplo de um fluxo de objetos. E agora, o que você tem que fazer? O que você
O que você deve fazer é ignorar as duplicatas. Então lembre-se apenas do distinto
objetos que você vê neste fluxo. E eu espero que você ache fácil imaginar por que você
pode querer executar esta tarefa em vários aplicativos. Então, por exemplo, se você estiver
executando um site, você pode acompanhar os visitantes distintos que você
já viu em um determinado dia ou semana. Se você está fazendo algo como uma web
rastrear, convém identificar documentos duplicados e lembrar apenas deles
uma vez. Assim, por exemplo, seria irritante se nos resultados de pesquisa os dois principais
link e o segundo link levaram a páginas idênticas em URLs diferentes, ok,
então os mecanismos de pesquisa obviamente querem evitar isso, então você deseja detectar web duplicada
páginas e apenas reportam páginas únicas. E a solução usando uma tabela de hash é ridiculamente
simples. Portanto, toda vez que um novo objeto chega ao fluxo, você o pesquisa.
Se estiver lá, é uma duplicata e você a ignora.
Se não estiver lá, esse é um novo objeto e você se lembra dele. Qed, é isso.
E então, depois que a string for concluída,
por exemplo, depois de terminar de ler um arquivo enorme, se você quiser
para relatar todos os objetos exclusivos, as tabelas de hash geralmente oferecem suporte a uma verificação linear
através deles e você pode apenas relatar todos os objetos distintos quando esse fluxo
termina.

### Uma segunda aplicação

Então, vamos para uma segunda aplicação um pouco menos trivial, talvez
mas ainda assim bastante fácil, e esse é o assunto do número de Projetos de Programação
cinco.
Portanto, este é um problema chamado problema de duas somas.
Você recebe como entrada uma matriz de N número.
Essas imagens não estão em uma ordem específica. Você também recebe um
soma alvo, que chamarei de T.
E o que você quer saber é que existem dois números inteiros
dentre esses N, você recebe essa quantia para T. Agora, a mais óbvia e ingênua
maneira de resolver esse problema é apenas repassar todos os N, escolher dois pares de números inteiros
na entrada e verifique cada um separadamente. Então isso é claramente um quadrático
algoritmo de tempo.

Mas agora, é claro, precisamos perguntar, podemos fazer melhor? E sim,
podemos. E antes de tudo, vamos ver o que você faria se não pudesse usar nenhum dado
estruturas. Portanto, se você fosse esperto, mas não usasse nenhuma estrutura de dados como um hash
tabela, aqui haveria uma melhora razoável em relação à ingênua.
Portanto, o primeiro passo para uma solução melhor é classificar A antecipadamente,
por exemplo, usando classificação por palavra ou classificação por pilha, algo executado em N log N time.
Portanto, você pode estar se perguntando sobre a motivação para classificar.
Bem, novamente, você sabe, uma coisa é apenas, você sabe sempre
você está tentando fazer melhor que N ao quadrado; você pode pensar que classificando seus dados
de alguma forma ajuda.
Certo e você pode fazê-lo quase de graça em N log N time.
Agora, por que classificar a matriz antecipadamente nos ajudaria? Bem, então o insight inteligente é
que para cada entrada da matriz a, digamos a primeira entrada, agora sabemos o que estamos
procurando atingir esse objetivo, certo. Se o alvo que estamos tentando
chegar a é somado a 100 e a primeira entrada na matriz classificada é 43, então nós
sabemos que estamos procurando um 57 em outro lugar. Esse array agora classificado. E nós sabemos
que pesquisar uma matriz classificada é bastante fácil, certo. Essa busca apenas binária.
Isso leva tempo logarítmico.
Portanto, para cada uma das n entradas da matriz, podemos procurar um
entrada complementar, ou seja, do alcance X, podemos procurar o T - X usando pesquisa binária.
E usar a pesquisa binária leva tempo N de log. Portanto, a classificação inicial acelera esse
lote inteiro de N pesquisas. É por isso que é uma vitória.
Então, na segunda etapa, porque fazemos um número linear de pesquisas binárias,
novamente, este é apenas N, o número de pesquisas, vezes log-N, o tempo por pesquisa.
Portanto, este é apenas mais um teta do fator N log N.
Tudo bem, então isso é bem legal.
 
Você, eu acho que você não poderia criar esta solução N log N sem ter
alguma facilidade básica com algoritmos.
Isso já é uma melhoria muito boa sobre o ingênuo N ao quadrado.
Mas podemos fazer ainda melhor. Não é por isso que estamos presos a um limite inferior N log N
pelo problema [inaudível].
Obviamente, como a matriz não é classificada, temos que
olhe para todos os números inteiros. Portanto, não faremos melhor que o tempo linear. Mas nós
pode fazer tempo linear através de uma tabela de hash. Então, uma boa pergunta que você pode fazer neste momento
é a pista sobre esse problema, sobre esta tarefa que sugere que queremos
use uma tabela de hash.
Bem, as tabelas de hash vão acelerar drasticamente qualquer
aplicação em que a maior parte da palavra é apenas repetida pesquisa.
E se examinarmos essa solução N log N,
uma vez que tenhamos essa ideia de pesquisar T menos X para cada valor de X,
percebemos que, na verdade, a única coisa que precisávamos
matriz para era apoiar pesquisas.
Isso é tudo o que a pesquisa binária aqui está fazendo, apenas procurando as coisas. Então dizemos, ah-ha.
Todo o trabalho aqui na etapa dois é de pesquisas repetidas.
Estamos pagando um exorbitante relativamente, logaritmo por quantidade de tempo
por pesquisa, enquanto as tabelas de hash podem fazê-las em custo e tempo. Então, repetido
pesquisas, ding, ding, ding, vamos usar uma tabela de hash; e de fato é isso que dá
tempo linear neste problema.
Portanto, pela incrível garantia de tabelas de hash, nós
obtenha a seguinte solução surpreendente para o verdadeiro problema [inaudível], embora novamente
isso está sujeito às mesmas letras miúdas sobre você melhor usá-lo corretamente
tabela de hash implementada e é melhor você não ter dados patológicos.

Portanto, em vez de classificar, basta inserir tudo na matriz em uma tabela de hash.
Portanto, as inserções custam tempo. Então, esse será o tempo linear, em vez de
o N log N que estávamos pagando antes.
Quando todas as coisas estão na tabela de hash, fazemos o mesmo
como na solução N log N.
Para cada X na matriz, procuramos seus elementos correspondentes,
T-X na tabela de hash usando a operação de consulta de custo e tempo exportada
pela tabela de hash.
E, é claro, se, para algum X, você encontrar o elemento correspondente T menos X,
então você pode denunciar X e T menos X.
Isso prova que realmente há um par de números inteiros da soma alvo T.
Se para cada elemento único da matriz de entrada A,
você não encontra esse elemento correspondente T menos X na tabela de hash, então, com certeza,
não há um par de números inteiros na entrada que seja igual a T.
Portanto, isso resolve o problema corretamente.
Além disso, inserção constante no tempo, o que significa que este primeiro passo
será O do fim dos tempos.
E pesquisa de tempo constante. Então isso significa que o segundo passo também será o tempo linear.
Isso deixa os assuntos sob as ressalvas que discutimos no slide anterior.
Então é incrível quantas aplicações diferentes da ciência da computação
resumem-se em essência a operações repetidas de pesquisa.
Portanto, ter uma operação de pesquisa super rápida, como a suportada por
uma tabela de hash, permite que esses aplicativos sejam dimensionados para tamanhos fantásticos.
É realmente incrível e gera muita tecnologia moderna.
Então deixe-me mencionar alguns exemplos.
Novamente, se você olhar em volta ou fazer alguma pesquisa na Web, você
encontre rapidamente muito mais.

Então, originalmente, o que levou os pesquisadores a pensar muito sobre
estruturas de dados que suportam pesquisas super rápidas, estava de volta quando as pessoas eram as primeiras
compiladores de construção. Então, isso faz muito tempo. Isso é nos anos cinquenta ou mais. E
essas pesquisas repetidas para descobrir, o que foi e o que não foi definido
antes era, estava emergindo como um gargalo nos compiladores. De volta aos primeiros dias de
linguagens de programação. E essa foi uma das primeiras aplicações das tabelas de hash,
para suportar pesquisas super rápidas para acelerar o tempo de compilação e acompanhar o
função de nomes de variáveis ​​e coisas assim.

A tecnologia de tabela hash também é super útil para softwares em roteadores na Internet.
Portanto, por exemplo, você pode querer bloquear o tráfego de rede de determinadas fontes.
Então, por exemplo, talvez você suspeite que um determinado endereço IP tenha sido assumido
por spammers e, portanto, qualquer tráfego proveniente desse endereço IP que você deseja ignorar.
E você nem quer deixar chegar ao host final,
para o computador na área de trabalho de alguém ou para o celular de alguém
dispositivo, mas dentro da internet. Você quer apenas soltar pacotes que estão chegando
certos, certos centros.
Então, qual é o problema? Bem, você pode ter uma lista negra de endereços IP
que você está recusando o tráfego e as tarefas
enfrentado pelo roteador é realmente o problema de pesquisa. Portanto, se o pacote de dados chegar em
alguma taxa de dados incrivelmente rápida e quando você quiser. Você imediatamente, basta olhar para cima, é
isso na lista negra ou não, e se estiver na lista negra, você solta o pacote,
se não for, então deixe passar.

Uma aplicação muito diferente é para acelerar os algoritmos de pesquisa.
E quando digo um algoritmo de pesquisa, o que estou pensando
aqui é algo como um programa de xadrez.
Então, algo que explora a árvore de jogo.
Então, já conversamos bastante sobre a pesquisa de gráficos em
nesta aula, mas em nossa discussão sobre a primeira e a primeira pesquisa de profundidade,
estavam pensando em gráficos que você poderia escrever basicamente. Você pode armazená-los
na memória principal da sua máquina ou, na pior das hipóteses, em um grande cluster. tão
talvez gráficos, você sabe, sobre o tamanho do gráfico da web ou possivelmente menor.
Mas, no contexto de algo como um jogo de xadrez, programa o gráfico de que você está
interessado é muito, muito maior que o gráfico da web. Então, qual é o gráfico que nos importa
prestes a um programa de xadrez? Bem, os nós do gráfico vão
correspondem a todas as configurações possíveis de peças de xadrez em um tabuleiro de xadrez.
Assim, todos os tabuleiros de xadrez que você pode encontrar em um jogo de xadrez.
Portanto, esse é um grande número de configurações.
E você nunca será capaz de escrever esses vértices.
As arestas deste gráfico levarão você de um
configuração para outro. E lá vai corresponder a movimentos legais. Então, se você puder
mova um bispo de um lugar para outro, e você obtém uma configuração
para outra configuração, há uma aresta no gráfico correspondente a esse movimento.
Agora você não pode escrever este gráfico. Portanto, você não pode implementar amplitude versus profundidade
versus pesquisa exatamente como discutimos anteriormente. Mas você ainda gostaria de fazer um gráfico
exploração, certo? Então, você gostaria de ter o seu programa de computador, razão pela qual
menos ramificações de curto prazo de seu possível próximo passo.
Portanto, isso corresponderá à pesquisa neste gráfico.
Agora, como você está, lembrando que os gráficos pesquisam uma propriedade realmente importante
foi que você não quer fazer um trabalho redundante,
você não deseja re-explorar coisas que você já explorou.
Isso seria bobo e pode levar a loops e assim por diante. E você não pode escrever
o gráfico apenas lembrando onde você esteve, de repente é um problema não trivial;
mas o que é lembrar onde você esteve, fundamentalmente?
Fundamentalmente, é uma operação de pesquisa.
Então é exatamente para isso que servem as tabelas de hash.
Então, para ser um pouco mais concreto, você sabe, aquele em que você usa a tabela de hash,
digamos, um programa de jogo de xadrez, você aposta, assume a configuração inicial.
Você poderia imaginar tentando todos os movimentos possíveis nessa configuração.
E então você tentaria, você meio que teria todos os movimentos do seu oponente e então
você teria todos os seus movimentos em resposta.
E você sempre se lembraria, ao fazer esse raciocínio, todos os
configuração do tabuleiro de xadrez que você já olhou antes e você ficaria no hash
tabela. E antes de explorar algumas configurações, você deve procurar no seu
tabela de hash para ver se você já a explorou no passado. E se você tiver,
você não se incomoda. Você já viu isso.
Tudo certo. Portanto, os programas de xadrez operam explorando sistematicamente
tantas configurações quanto eles teriam tempo.
Você sabe, obviamente, em um orçamento de três minutos ou o que você não quer
desperdice qualquer trabalho explorando uma determinada configuração mais de uma vez. Como você
lembra onde você esteve? Bem, tudo o que você explorou fica em um
tabela de hash. Antes de explorar uma configuração, procure-a em um hash
tabela e veja se você já fez isso.

Então, é claro, isso está apenas arranhando a superfície.
Eu só queria destacar algumas, de aparência bem diferente
aplicativos, você sabe para convencê-lo de que tabelas de hash aparecem o tempo todo. E
a razão pela qual eles surgem o tempo todo é porque você sabe a necessidade de
pesquisas surgem o tempo todo. É incrível o quanto a tecnologia está sendo
conduzido apenas por você conhece pesquisas rápidas e repetidas.

Então, como lição de casa, eu encorajo você a pensar sobre sua própria vida,
ou pensar em tecnologia existente no mundo e criar algumas.
Você sabe, suposições sobre onde provavelmente as tabelas de hash estão criando algo por aí
correndo incrivelmente rápido. Eu acho que não vai demorar mais que alguns minutos para você
alguns bons exemplos.


- © Todos os direitos reservados
   - A Universidade de Stanford busca a ciência da aprendizagem. Os alunos on-line são participantes importantes nessa busca. As informações que coletamos do seu envolvimento com nossas ofertas instrucionais possibilitam que professores, pesquisadores, designers e engenheiros aprimorem continuamente seus trabalhos e, nesse processo, desenvolvam a ciência da aprendizagem.
Termos de serviço e código de honra Política de privacidade Faça mais cursos em online.stanford.edu
- © Universidade Stanford. Stanford, Califórnia 94305.

