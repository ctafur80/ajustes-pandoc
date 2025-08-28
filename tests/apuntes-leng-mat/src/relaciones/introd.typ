
#import "../../typst-maths-book-template/main-template.typ": *


Al igual que subimos en abstracción al pasar de proposiciones a predicados,
podemos plantearnos la existencia de predicados simples de más de un
argumento. A estos los solemos llamar _relaciones lógicas_, aunque también
hay quien las llama _correspondencias lógicas_. En particular, a las de dos
argumentos se las conoce como _relaciones lógicas binarias_.

// TODO Diferencia entre correspondencia y relación.

Gracias a las relaciones lógicas binarias, podríamos representar en notación
matemática expresiones como

#quote[
  El número natural elegido es menor que el número que he pensado.
]

En esta, se hace referencia a una propiedad, "ser menor que", que requiere
de dos elementos para que tenga sentido. Al igual que sucedía con los
predicados de un solo argumento, esta, al particularizar para unos valores
de entrada concretos ---el valor elegido y el pensado---, tendrá un valor
lógico: verdadero o falso.

Esos elementos sin determinar se representarán, al igual que se hacía con
los predicados, como variables, que suelen tomar la forma de letras
minúsculas del alfabeto latino con tipografía en itálicas.

La relación lógica binaria se representará igual que los predicados solo que
se pondrán como subíndices dos argumentos, en lugar de uno. Así, por
ejemplo, la relación del ejemplo podría representarse como $M_(x y)$, siendo
$M$ la relación "ser menor que", $x$ el número natural elegido e $y$ el
pensado. Al igual que con los predicados de un argumento, también se puede
usar una notación como las de las funciones: $M (x, y)$.

Evidentemente, se tienen también relaciones lógicas de más de dos
argumentos, pero aquí nos centraremos en las de dos. Por tanto, tomaremos la
regla de asumir implícitamente que las relaciones lógicas de las que
hablamos son binarias, a menos que se especifique otra cosa.

Al contrario que con los predicados, ahora, como tenemos dos variables, los
posibles valores diferentes que podrán tomar estas conjuntamente son el
producto de los conjuntos sobre los que están definidas. Así, si $x$ se toma
de un conjunto $A$ e $y$ de uno $B$, se tendrá que para cada par $(x, y) in
A times B$ la relación podrá tomar un valor lógico. Sería como una
proposición, cada uno de esos casos particulares. Por ejemplo, $M_12 = 1$
(verdadero).

Me gustaría hacer un inciso sobre los dos niveles de abstracción que estamos
usando. Muchas veces, en los textos de matemáticas, se hacen engaños que
vienen bien para la comprensión. Concretamente, me refiero a particularizar
de forma genérica. Así, en este caso, tenemos las variables $x$ e $y$ de la
relación. Podríamos hablar entonces de los valores $a$ y $b$, como si se
tratase de valores concretos, aunque en realidad no sean diferentes de los
anteriores. TKTK. A esos valores los podríamos calificar de _parámetros_
(_parameters_). TKTK.

#example[][
  Si $A = B = {1, 2, 3}$, la propiedad $M_(x y)$ que indica "$x$ es
  estrictamente menor que $y$", es una relación lógica binaria, pues, al
  particularizar $(x, y)$ en cada elemento del conjunto,

  $ A times B = {(1, 1), (1, 2), (1, 3), (2, 1), (2, 2), (2, 3), (3, 1), (3,
  2), (3, 3)} $

  se obtiene una proposición verdadera o falsa. Concretamente, será cierta
  para los valores $(1, 2)$, $(1, 3)$ y $(2, 3)$.
]

#deffinition[Grafo de una Relación Lógica Binaria][
  Dada una relación lógica binaria $R_(x y)$ sobre el producto $A times B$,
  al subconjunto $cal(R)$ de $A times B$ donde se cumple $R_(x y)$, es
  decir,

  $ cal(R) = {(x, y) in A times B | R_(x y) " es verdadera"} $

  se le conoce como _grafo_ (_graph_) de la relación. También, se podría
  denotar como $"Gr"(R_(x y))$.
]

Advierta que no son lo mismo una relación lógica y su grafo, pues, en la
última se "pierde" la información sobre los conjuntos sobre los que se toman
los valores de las variables. Por tanto, varias relaciones lógicas
diferentes pueden contar con un mismo grafo.

Inversamente, sea $cal(G)$ un subconjunto de $A times B$, $cal(G) subset.eq
A times B$, definimos sobre el producto $A times B$ la relación lógica $P_(x
y)$ que consideramos verdadera si $(x, y) in cal(G)$ y falsa en caso
contrario.

En vista de la asociación unívoca que se puede hacer entre los subconjuntos
de $A times B$ y las relaciones lógicas sobre $A times B$, se define lo
siguiente.

#deffinition[Relación Binaria (Conjuntista)][
  Dados los conjuntos $A$ y $B$, todo subconjunto $cal(R) subset.eq A times
  B$ es una _relación binaria_ (conjuntista; no lógica) del conjunto $A$ al
  conjunto $B$.
]

Tal y como hemos visto, los conceptos de _relación lógica binaria_ y
_relación conjuntista binaria_ son equivalentes, por lo que consideraremos
que son lo mismo y los denotaremos simplemente como _relación binaria_. Es
más, el adjetivo _binaria_ también sobrará y, si no se especifica el número
de variables en el predicado, se considerará binaria.

Dada una relación $cal(R) subset.eq A times B$, se denomina *conjunto
inicial* de la relación $cal(R)$ al conjunto $A$ y *conjunto final* a $B$.

Tal y como dijimos antes, el producto de conjuntos $A times A$ se suele
representar por $A^2$.

Si un elemento $(x, y) in cal(R) subset.eq A times B$, entonces se dice que
el elemento $x in A$ está relacionado con el elemento $y in B$ mediante la
relación $cal(R)$, y se escribe $x cal(R) y$, o, también, $(x, y) in
cal(R)$. Análogamente si $(x, y) in.not R$, se dice que "$x$ no está
relacionado con $y$" y se escribe $x not (cal(R)) y$.

// TODO Tengo que tachar car(R) en lo anterior

#example[][
  Si tomamos $A = B = {1, 2, 3}$ y la relación $M_(x y)$ que indica "$x$ es
  estrictamente menor que $y$", el grafo de esta relación es el conjunto

  $ cal(R) = {(1, 2), (1, 3), (2, 3)} $

  Si $A = {a, b}$ y $B = { 1, 2, 3 }$, entonces $cal(R) = {(a, 2), (a, 3)}$
  es una relación de $A$ a $B$ donde $a cal(R) 2$ y $a cal(R) 3$, y, sin
  embargo, $a not (cal(R)) 1$, $b not (cal(R)) 1$, $b not (cal(R)) 2$ y $b
  not (cal(R)) 3$.
]

#deffinition[Relación Inversa (de una Relación)][
  Dada una relación $cal(R)$ entre $A$ y $B$, $cal(R) subset.eq A times B$,
  se denomina _relación inversa_ (_inverse relation_) de $cal(R)$ a la
  relación $cal(R)^(-1) subset.eq B times A$ en la que se cumple

  $ cal(R)^(-1) = {(y, x) in B times A | (x, y) in cal(R) subset.eq A times
  B} $
]

Aunque esté acostumbrado a considerar que el exponente $(-1)$ es como
dividir a uno entre ese número, olvídese de eso aquí. TKTK. Más adelante
verá que esta notación tiene sentido.

#example[][
  Volviendo al ejemplo anterior, se tiene $cal(R)^(-1) = {(2, 1), (3, 1),
  (3, 2)}$, en el primer caso, y, $cal(R)^(-1) = {(2, a), (3, a)}$, en el
  segundo.
]

Dada una relación $cal(R)$ entre $A$ y $B$, $cal(R) subset.eq A times B$, se
denomina *conjunto original* de la relación $cal(R) subset.eq A times B$ al
siguiente subconjunto de $A$:

$ cal(R)^(-1)(B) = {x in A | exists y in B. med x cal(R) y} $

*conjunto imagen* de la relación $cal(R) subset.eq A times B$, al siguiente
subconjunto de $B$:

$ cal(R)(A) = {y in B | forall x in A. med x cal(R) y} $

*conjunto imagen del elemento* $x in A$ por la relación $cal(R) subset.eq A
times B$, a

$ cal(R)(x) = {y in B | x cal(R) y} $

y *conjunto original del elemento* $y in B$ por la relación $cal(R)
subset.eq A times B$, a

$ cal(R)^(-1)(y) = {x in A | x cal(R) y} $

Muchas relaciones usuales están representadas por símbolos específicos, como
la relación "menor o igual", '$lt.eq$', en el conjunto de los números
reales, $RR$, o la relación "pertenece a", '$in$', en el ámbito de $A times
cal(P)(A)$, para un conjunto cualquiera $A$, siendo $cal(P)(A)$ el conjunto
de las partes de $A$, es decir, el conjunto de todos sus subconjuntos
posibles.

#example[][
  Al considerar el conjunto de las partes de un conjunto $U$, $cal(P)(U)$,
  se puede considerar la inclusión de conjuntos, '$subset.eq$', como una
  relación en $cal(P)(U)$, es decir, se define la relación $A subset.eq B$,
  donde $A$ y $B$ son subconjuntos de $U$. Es claro que dos subconjuntos no
  vacíos tales que $A inter B = emptyset$ no están relacionados entre sí.
]

Como es evidente, para la relación $cal(R) subset.eq A times B$ el conjunto
$cal(P)(A times B)$ será el conjunto de todas las relaciones posibles en $A
times B$. En consecuencia, toda relación puede darse por extensión o por
comprensión. TKTK.

#deffinition[Composición de Relaciones][
  Dadas las relaciónes

  $ cal(R) subset.eq A times B, quad
    cal(S) subset.eq B times C $

  se define una relación entre los conjuntos $A$ y $C$, denominada
  _composición_ de las relaciones $cal(R)$ y $cal(S)$, que denotamos por
  $cal(S) compose cal(R) subset.eq A times C$, como

  $ cal(S) compose cal(R) = {(x, y) in A times C | exists y in B
      quad "tal que " x cal(R) y " e " y cal(S) z} $
]

En realidad, el concepto de composición de relaciones puede ser más amplio
que el que hemos dado aquí. Si se fija, se podría haber referido, de forma
más general, a las relaciones

$ cal(R) subset.eq A times B, quad
  cal(S) subset.eq C times D $

TKTK





