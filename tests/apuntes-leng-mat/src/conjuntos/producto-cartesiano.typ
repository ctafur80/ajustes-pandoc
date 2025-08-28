
#import "../../typst-maths-book-template/main-template.typ": *



Para poder definir los predicados de dos variables, se tiene que establecer
con anterioridad su universo compuesto por parejas de elementos. En este
apartado estudiamos la estructura de estos universos de parejas.

Intuitivamente, un *par ordenado* (_ordered pair_) de elementos consiste en
dar dos elementos $x$ e $y$, de manera que uno de ellos, $x$, es el primero
y el otro, $y$, el segundo. Se escribe $(x, y)$, aunque puede que encuentre
otras notaciones como, por ejemplo, $angle.l x, y angle.r$.

Existen otras definiciones más rigurosas de _par ordenado_, pero tampoco es
necesario aquí ser tan riguroso.

Dos pares $(x, y)$ y $(z, p)$ son iguales si y solo si $x = z$ e $y = p$.

No hay que confundir un conjunto de dos elementos ${x, y}$ con el par $(x,
y)$. Así los pares $(1, 2)$ y $(2, 1)$ son distintos mientras que los
conjuntos ${ 1, 2 }$ y ${ 2, 1 }$ representan el mismo conjunto. Un par
ordenado puede tener los dos elementos iguales, por ejemplo el par $(1, 1)$,
mientras que la escritura habitual del conjunto ${1, 1}$ suele ser ${ 1 }$,
ya que, como dijimos, la norma que solemos seguir es evitar redundancias en
la representación de los conjuntos.

Dados dos conjuntos $A$ y $B$, se denomina *producto* (_product_) de $A$ por
$B$, cosa que se suele representar como $A times B$ y se lee "$A$ por $B$",
al conjunto de pares ordenados donde el primer elemento pertenece a $A$ y el
segundo a $B$.

$ A times B = {(x, y) | x in A quad "e" quad y in B} $

Lo más común es que al producto de conjuntos vea que lo llaman _producto
cartesiano_ (_Cartesian product_), denominación que homenajea al matemático
y filósofo francés René Descartes, que fue quien lo inventó, para su
aplicación a la geometría analítica, una rama de las matemáticas.

Si los dos conjuntos son el mismo, es decir, esos $A$ y $B$ son iguales, $A
= B$, para denotar $A times A$, se suele usar $A^2$.

El producto de conjuntos tiene las propiedades siguientes, de las que, a
modo de ejercicio, demostraremos una de ellas.

#theorem[Propiedades del Producto Cartesiano][
  Cualesquiera que sean los conjuntos $A$, $A'$, $B$, $B'$ y $C$, se cumple:

  + Si $A' subset.eq A$ y $B' subset.eq B$, entonces $A' times B' subset.eq
    A times B$.

  + Propiedad distributiva del producto respecto a la unión.

    $ (A union B) times C & = (A times C) union (B times C) \
      A times (B union C) & = (A times B) union (A times C) $

  + Propiedad distributiva del producto respecto a la intersección.

    $ (A inter B) times C & = (A times C) inter (B times C) \
      A times (B inter C) & = (A times B) inter (A times C) $

  + $A times B = emptyset$ si y solo si $A = emptyset$ o $B = emptyset$.
]

#exercise[][
  Demuestre la propiedad distributiva siguiente:

  $ A times (B inter C) = (A times B) inter (A times C) $

  Demostramos las dos inclusiones

  $ A times (B inter C) subset.eq (A times B) inter (A times C) \
    A times (B inter C) supset.eq (A times B) inter (A times C) $

  Sea $(x, y)$ un elemento arbitrario de $A times (B inter C)$. En
  consecuencia, $x in A$ e $y in B inter C$. Luego $y$ es elemento de $B$ y
  de $C$, por lo que $(x, y) in A times B$ y $(x, y) in A times C$. Por
  tanto, $(x, y) in (A times B) inter (A times C)$.

  Inversamente, son cualquier par $(x, y) in (A times B) inter (A times C)$.
  Por tanto, $(x, y) in A times B$ y $(x, y) in A times C$. Es decir, $x in
  A$ e $y in B$ y, además, $x in A$ e $y in C$. Como $y$ es elemento de
  ambos conjuntos $B$ y $C$, resulta que $y in B inter C$. En consecuencia,
  $(x, y) in A times (B inter C)$.
]

El producto de conjuntos distintos no cumple la propiedad conmutativa. Es
decir, dados dos conjuntos $A$ y $B$, en general se tiene que

$ A times B eq.not B times A $

El concepto de producto de dos conjuntos se puede ampliar a producto de tres
o más conjuntos.

Dados un elemento $x$ de un conjunto $A$, $x in A$, un elemento $y$ de otro
conjunto $B$, $y in B$, y otro elemento $z$ de un tercer conjunto $C$, $z in
C$, existen seis posibles ordenaciones de los tres elementos. Cada
ordenación se denomina (_ordered triples_) y se escriben como $(x, y, z)$,
$(x, z, y)$, $(y, x, z)$, $(y, z, x)$, $(z, x, y)$ y $(z, y, x)$.

Dos ternas $(x, y, z)$ y $(p, q, r)$ son iguales si y solo si $x = p$, $y =
q$ y $z = r$.

Dados tres conjuntos $A$, $B$ y $C$, se denomina producto (o producto
cartesiano) de $A$ por $B$ y $C$ al conjunto de ternas ordenadas

$ A times B times C = {(x, y, z) | x in A, quad y in B quad "y" quad z in C}
$

Si $A = B = C$, se escribe $A^3$ en lugar de $A times A times A$.

Este mismo concepto, además de a 3 conjuntos se puede generalizar a un
número arbitrario (entero positivo, evidentemente) de conjuntos.

Dados $n$ conjuntos $A_1, A_2, A_3, dots.h, A_n$, se denomina "producto de
$A_1$ por $A_2$ por $A_3$ ... por $A_n$" al conjunto

$ A_1 times A_2 times dots.h.c times A_n = {(x_1, x_2, dots.h, x_n) | x_1
in A_1, x_2 in A_2, dots.h, x_n in A_n} $

Los elementos de $A_1 times A_2 times dots.h.c times A_n$ se llaman
"$n$-tuplas" (_$n$-tuples_). También hay quien las llama _listas_ (_lists_).

Si $A_1 = A_2 = dots.h.c = A_n = A$, se escribe $A^n$ en lugar de $A times A
times dots.h.c times A$.





