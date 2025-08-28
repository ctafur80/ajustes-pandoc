
#import "../../../typst-maths-book-template/main-template.typ": *



La teoría de conjuntos actual, que fue desarrollada en su inicio por Georg
Cantor en el siglo XIX, constituye el fundamento de las matemáticas. El
propósito de Cantor era tratar cuestiones relacionadas con el infinito, y su
método allanaba dificultades. Para Cantor, un conjunto es una reunión de
objetos determinados y bien diferenciados de nuestra intuición o nuestro
pensamiento, formando una totalidad. Cantor trataba una colección o conjunto
de objetos como un todo, aceptando implícitamente lo siguiente:

+ Un conjunto es una colección de elementos que cumplen cierta propiedad.
  Por tanto, queda definido por dicha propiedad. Es decir, tal y como lo
  hemos definido aquí por comprensión, mediante un predicado.
+ Un conjunto es una sola entidad matemática, de modo que puede a su vez ser
  contenido por otro conjunto.
+ Dos conjuntos que tengan los mismos elementos son iguales. Un conjunto
  está determinado por sus elementos.

Esta teoría tuvo éxito, pero necesitó ser precisada por otros matemáticos
como Gottlob Frege, Bertrand Russell, E.~Zermelo, A.~Skolem y A.~Fraenkel.
Después de varios intentos de axiomatización, teoría de Frege, teoría de
Russell-Whitehead (PM) y otras, se destacan dos sistemas axiomáticos de la
teoría de conjuntos: la teoría de conjuntos de Zermelo-Fraenkel (ZF),
desarrollada por Zermelo, Skolem y Fraenkel, y la teoría de conjuntos de Von
Newman-Gödel, desarrollada por John von Newman, Bernays y Kurt Gödel.

Tal y como explicamos al comienzo del capítulo, el concepto de _conjunto_ se
encuentra a un nivel tan elemental que no es posible dar una definición
precisa del mismo. La utilización de palabras como _colección_, _familia_,
_reunión_, etc. en un intento de definirlo, no hacen nada más que emplear el
objeto a definir dentro de la definición, puesto que esas palabras son
sinónimos de la palabra _conjunto_.

Es claro que el lenguaje natural es necesario para describir los objetos
matemáticos y que este posee cierto nivel de ambigüedad, pero las
definiciones matemáticas deben quedar exentas de ambigüedad aunque se
formulen con un lenguaje natural.

En la teoría "ingenua" de conjuntos, se admite el uso de esas palabras, y se
acepta la existencia de un universo de objetos, sin importar la naturaleza
de los objetos. A partir de ese universo se construyen los conjuntos como
entidad matemática. Un elemento posterior es introducir la relación de
pertenencia de elementos a conjuntos, $in$. Al expresar los conjuntos a
partir de una propiedad determinada que deben cumplir sus elementos (es
decir, al expresarlos por comprensión), se producen ciertas paradojas como
la de Bertrand Russell, y aparecen "conjuntos enormes" que producen cierto
desasosiego intuitivo y lógico.

Dificultades como estas introducen la necesidad de axiomatizar y formalizar
la teoría de conjuntos para poder obtener resultados profundos. Se renuncia
a una definición intuitiva de _conjunto_, y se establecen una serie de
principios (axiomas) que describen el comportamiento de dicho concepto.
Cualquier resultado obtenido debe ser consecuencia de tales principios.

A continuación exponemos una de las axiomáticas de conjuntos más utilizadas
con el espíritu de que el lector se dé cuenta de la dificultad que tiene el
formalizar una teoría. No se trata de que memorice los axiomas; ni siquiera
de que comprenda los enunciados de los mismos. Simplemente queremos que vea
que establecer un lenguaje sin ambigüedad precisa un esfuerzo enorme, y que
incluso solo comprenderlo requiere de una sólida formación matemática.

La teoría de conjuntos de ZF establece el concepto de _conjunto_ como
elemento primitivo, al igual que la relación de pertenencia. Dispone de los
axiomas que mostramos a continuación.

+ Axioma de extensión. Dos conjuntos $A$ y $B$ son iguales si contienen los
  mismos elementos. Es decir,

  $ forall x . med (x in A arrow.l.r x in B) arrow.r.double.long A = B $

+ Axioma del conjunto vacío. Existe un conjunto sin elementos. Es decir,

  $ exists emptyset med forall x . med x in.not emptyset $

+ Axioma de pares. Dados dos conjuntos cualesquiera $A$ y $B$, existe otro
  conjunto cuyos elementos son únicamente $A$ y $B$, ${A, B }$. Es decir,

  $ forall A, B med exists C med forall x. med [x in C arrow.l.r (x = A or x
  = B)] $

+ Axioma de la unión. Dado cualquier conjunto de conjuntos, $C$, existe un
  conjunto, que denominamos "unión de $C$" y denotamos por $union C$, que
  contiene a todos los elementos de cada conjunto de $C$. Es decir,

  $ forall C med exists union C med forall x. med [x in union C arrow.l.r
  exists A. med (A in C and x in A)] $

+ Axioma del conjunto potencia. Para cualquier conjunto $A$, existe otro
  conjunto, llamado "conjunto potencia de $A$" y que denotamos por
  $cal(P)(A)$, que contiene todos los subconjuntos de $A$. Es decir,

  $ forall A med exists cal(P)(A) med forall B. med [B in cal(P)(A)
  arrow.l.r forall x. med (x in B arrow.r.double x in A)] $

+ Axioma de especificación. Sea $phi.alt (t)$ una fórmula de un lenguaje de
  primer orden que contenga una variable libre $t$. Entonces, para cualquier
  conjunto $A$ existe un conjunto $B$ cuyos elementos son aquellos elementos
  $x$ de $A$ que cumplen $phi.alt (x)$. Es decir,

  $ forall A med exists B med forall x. med [x in B arrow.l.r (x in A and
  phi.alt (x))] $

+ Axioma de sustitución. Si $phi.alt (x, y)$ es una sentencia tal que para
  cualquier elemento $x$ de un conjunto $A$ existe el conjunto $B = {y |
  phi(x, y)}$, entonces existe una función $f : A arrow.r B$ tal que $f (A)
  = B$.

+ Axioma de infinitud. Existe un conjunto $A$ tal que $emptyset in A$ y tal
  que si $x in A$, entonces $x union {x} in A$. Es decir,

  $ exists A. med [emptyset in A and (forall x in A med x union {x} in A)] $

+ Axioma de regularidad. Para todo conjunto no vacío $A$, existe un conjunto
  $B$ que es elemento de $A$ tal que $A inter B = emptyset$. Es decir,

  $ forall A eq.not emptyset med exists B. med (B in A and forall x [x in B
  arrow.r.double.long x in.not A]) $




=== Paradojas

Finalmente, señalamos algunas de las paradojas que hemos citado y que
motivaron el establecimiento de estos axiomas como la teoría de conjuntos de
ZF.




==== Paradoja de Cantor

Sea $C$ la colección de todos los conjuntos posibles. Por un lado, si $C$ es
un conjunto, se cumple que $C in cal(P)(C)$. Por el otro, como cualquier
subconjunto $A subset.eq C$ también es un conjunto, $A$ será un elemento de
$C$, es decir, $A in C$. Al darse esto para todos los subconjuntos de $C$,
es decir, para $cal(P)(C)$, resulta que $cal(P)(C) subset.eq C$. Esto es una
contradicción, tal y como se verá en el capítulo~ch:naturales.

Obsérvese que también se deduce que $C in C$, que está en contradicción con
una de las reglas básicas de las que hemos partido. Por tanto, el concepto
de "conjunto de todos los conjuntos" conduce a una paradoja.



==== Paradoja de Russell

Sea $M$ la colección de todos los conjuntos que no son elementos de sí
mismos. es decir:

$ M = {X | X in.not X} $

Si $M$ fuera un conjunto, la pregunta que se plantea es: ¿Es $M$ elemento de
sí mismo? Si $M$ es elemento de $M$, entonces $M in M$ por definición de
$M$. Por otro lado, si $M$ no es elemento ele $M$, entonces $M in M$, por
definición de $M$. En ambos casos llegamos a una contradicción.

La paradoja de Russell es análoga a una paradoja más popular que se denomina
paradoja del barbero que más o menos dice así: En un pueblo, hay un único
barbero que afeita a todos los que no se afeitan a sí mismos. ¿Quién afeita
al barbero?




