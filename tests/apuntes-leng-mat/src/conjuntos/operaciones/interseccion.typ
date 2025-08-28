
#import "../../../typst-maths-book-template/main-template.typ": *



Dados dos conjuntos $A$ y $B$, el conjunto intersección de estos, que se
designará como $A inter B$ y se leerá "$A$ intersección $B$", es el conjunto
de los elementos comunes de ambos conjuntos. Es decir,

$ A inter B = {x | x in A quad "y" quad x in B} $

o, con notación más propia de la lógica,

$ A inter B = {x | (x in A) and (x in B)} $

En particular, si $A$ y $B$ son subconjuntos del conjunto $U$ y están
definidos por comprensión, es decir,

$ A = {x in U | P_x}, quad B = {x in U | Q_x} $

entonces

$ A inter B = {x in U | P_x and Q_x} $

#example[][
  Si

  $ A = {a, b, c, d, e, h} \
    B = {g, a, b, d, h, i, j} $

  entonces

  $ A inter B = {a, b, d, h} $

  En la figura~fig:venn-union-interseccion, se ha representado un diagrama
  de Venn de los conjuntos $A$ y $B$ donde se ha sombreado el conjunto $A
  union B$ intensificando el sombreado de $A inter B$. En un diagrama de
  Venn, se ve muy fácilmente que

  $ A inter B subset.eq A union B $

  aunque también se puede demostrar de otras formas.

  TKTK

  /*
  #figure([],
    caption: [
      Diagrama de Venn de $A union B$ y $A inter B$
    ]
  )
  <fig:venn-union-interseccion>
  */

  Dados los conjuntos

  $ C &= {x in NN | x med "es múltiplo de" med 2} \
    D &= {x in NN | x med "es múltiplo de" med 3} $

  entonces

  $ C inter D
      = {x in NN | x "es múltiplo de" 2 "y de" 3}
      = {x in NN | x "es múltiplo de" 6} $
]




=== Propiedades

La intersección de conjuntos tiene las siguientes propiedades que se deducen
fácilmente de la definición.

#theorem[Propiedades de la Intersección de Conjuntos][
  Cualesquiera que sean los conjuntos $A$, $B$ y $C$, se tiene:

  - $A inter B subset.eq A$ y $A inter B subset.eq B$.

  - $A inter B = B inter A$. (Propiedad conmutativa.)

  - $A inter (B inter C) = (A inter B) inter C$. (Propiedad asociativa.)

  - $A inter emptyset = emptyset$

  - $A inter A = A$
]

#example[][
  Demuestre que para dos conjuntos cualesquiera $A$ y $B$ se cumple

  $ A inter B = A quad "si y solo si" quad A subset.eq B $

  Se hace de forma análoga al ejercicio TKTK.
]

#example[][
  Los conjuntos

  $ pi = {(x, y, z) in RR^3 | 2x + 3y - 5z + 2 = 0} \
    Pi = {(x, y, z) in RR^3 | 2x + 3y - 5z + 7 = 0} $

  son disjuntos pues el sistema de ecuaciones

  $ 2x + 3y - 5z &= (-2) \
    2x + 3y - 5z &= (-7) $

  es claramente incompatible. Geométricamente representan dos planos
  paralelos del espacio, como los que se muestran en la
  figura~fig:planos-paralelos.
] <ej-planos-1>



=== Propiedades distributivas

Otra propiedad que se cumple es que la intersección es distributiva respecto
de la unión y la unión es distributiva respecto de la intersección. Es
decir, para tres conjuntos cualesquiera $A$, $B$ y $C$, se tiene

$ A inter (B union C) &= (A inter B) union (A inter C) \
  A union (B inter C) &= (A union B) inter (A union C) $

Advierta que se cumplen las dos propiedades distributivas, mientras que con
los números conlas operaciones suma y producto se cumple únicamente la
distributiva del producto respecto de la suma.

Aunque la unión y la intersección están definidas únicamente para dos
conjuntos, resulta que las propiedades asociativas permiten definir la unión
y la intersección de tres o más conjuntos:

$ A union B union C quad
    & "y" quad A union B union C union D union dots.h.c \
  A inter B inter C quad
    & "y" quad A inter B inter C inter D inter dots.h.c $

Esto hace que en la notación se pueda prescindir del uso de paréntesis a
este respecto.




== Familia indexada de conjuntos

Sea $I$ un conjunto que supondremos no vacío y al que llamaremos _conjunto
de índices_ de la familia. Supongamos que a cada $i in I$, es decir, a cada
índice, le asociamos un conjunto $F_i$. La colección de todos esos conjuntos
$F_i$ la denotaremos por $cal(F)$.

$ cal(F) = {F_i | i in I} $

Advierta que, aunque se diga _familia_, en realidad no es más que un
conjunto, tal y como explicamos antes. Un conjunto de conjuntos. Lo
califican de esta otra forma para hacer una disttinción clara de los niveles
de anidamiento. Se trata también de una familia _indexada_ ya que cada
conjunto se identifica con un elemento del conjunto de índices.
Concretamente, el conjunto de índices suele estar formado por números
naturales. Así, se tendría una familia como, por ejemplo,

$ F_1, med F_2, med F_3, med dots.h $

Como es evidente, cuando todos los conjuntos $F_i$ son subconjuntos de un
mismo conjunto $U$, entonces $cal(F)$ es un subconjunto del conjunto
$cal(P)(U)$. Recíprocamente, cualquier subconjunto $cal(G)$ no vacío de
$cal(P)(U)$ será también una familia de conjuntos.

Los conceptos de unión e intersección se extienden a familias arbitrarias de
conjuntos, pues, tal y como hemos explicado, estas no dejan de ser conjuntos
al fin y al cabo.

Dada una familia de conjuntos $cal(F) = {F_i | i in I}$ para un conjunto de
índices $I$, el conjunto unión de todos los conjuntos de la familia $cal(F)$
es el conjunto de los elementos que pertenecen al menos a un $F_i$, siendo
$i in I$. Es decir:

$ union.big_(i in I) F_i = {x | exists i in I. med x in F_i} $

Si la familia viene dada por un subconjunto $cal(G)$ no vacío de
$cal(P)(U)$, entonces la unión es

$ union.big_(F in cal(G)) F = {x in U | exists F in cal(G). med x in F} $

Análogamente, el conjunto intersección de todos los conjuntos de la famnilia
$cal(F)$ es el conjunto de los elementos comunes a todos los conjuntos
$F_i$, siendo $i in I$. Es decir,

$ inter.big_(i in I) F_i = {x | forall i in I. med x in F_i} $

Si la familia viene dada por un subconjunto $cal(G)$ no vacío de
$cal(P)(U)$, entonces la intersección es

$ inter.big_(F in cal(G)) F = {x in U | forall F in cal(G). med x in F} $

#example[][
  Dado $a in RR$, se considera la familia de intervalos cerrados

  $ I_n = lr([a - 1/n, a + 1/n]) subset.eq RR $

  con $n in RR^*$. Demuestre que

  $ inter.big_(n in NN^*) I_n   &= {a} \
    union.big_(n in NN^*) I_n   &= [a - 1, a + 1] $

  Es evidente que $a in [a-1 \/ n \, a+1 \/ n]$ para todo $n in NN^*$.
  Luego, ${a} subset.eq inter_(n in NN^*) I_n$.

  Ahora, hay que demostrarlo en el otro sentido, es decir, que $inter_(n in
  NN^*) I_n subset.eq {a}$. Lo haremos por contradicción.

  Supongamos que la inclusión $inter_(n in NN^*) I_n subset.eq {a}$ no es
  cierta. Entonces $exists b in inter_(n in NN^*) I_n$ tal que $b
  subset.eq.not {a}$, o lo que es lo mismo, ya que $a$ es el único elemento
  de ${a}$, que $b eq.not a$. Si tomamos $n_0 in NN^*$ tal que
  $1 / n_0 < |b - a|$, se tiene que $b in.not [a-1 \/ n_0, a+1 \/ n_0]$, que
  está en contradicción con la suposición de que $b in inter_(n in NN^*) I_n
  subset.eq {a}$.

  La segunda igualdad que deseamos demostrar,

  $ union.big_(n in NN^*) I_n = lr([a-1, a+1]) $

  es evidente, pues la familia de intervalos satisface

  $ [a - 1, a + 1] supset.eq [a - 1/2 \, a + 1/2] supset.eq [a - 1/3, a +
  1/3] supset.eq [a - 1/4, a + 1/4] supset.eq dots.h.c $
]



== Diferencia y diferencia simétrica

#deffinition[Diferencia de Conjuntos][
  Dados dos conjuntos $A$ y $B$, el conjunto difeencia de $A$ y $B$, que se
  escribe "$A$ - $B$" o "$A without B$" y se lee "$A$ menos $B$", es el
  conjunto de elementos que pertenecen a $A$ y no pertenecen a $B$. Es
  decir,

  $ A without B = {x | x in A quad "y" quad x in.not B} $
] <def-diferencia-simetrica>

En particular, si $A$ y $B$ son subconjuntos del conjunto $U$ y están
definidos por comprensión, como

$ A &= {x in U | P_x},
  quad B &= {x in U | Q_x} $

entonces

$ A without B = {x in U | P_x and not Q_x} $

#theorem[Propiedades de la Diferencia de Conjuntos][
  Se cumple que:

  + $A without B = A without (A inter B)$.

  + Si $A subset.eq U$ y $B subset.eq U$ y $dash(B)$ es el complementario de
    $B$ en $U$, se cumplen:

    $ U without B &= dash(B)\
      A without B &= A inter dash(B) $
]

Esta última igualdad se puede considerar una definición alternativa de la
diferencia de conjuntos. De hecho, se usa más que la otra. La demostramos en
el ejercicio siguiente.

#exercise[][
  Demuéstrese que para todo par de conjuntos $A, B in cal(P)(U)$, se cumple
  que $A without B = A inter dash(B)$.

  Para ver la igualdad, comprobaremos las dos inclusiones:

  $ A without B subset.eq A inter dash(B), quad A inter dash(B) subset.eq A
  without B $

  Si $x in A without B$, entonces $x in A$ y $x in.not B$, por definición de
  diferencia de conjuntos. Ahora bien, si $x in.not B$, entonces $x in
  dash(B)$, por definición de complementario de un conjunto. Luego, si $x in
  A$ y $x in dash(B)$, entonces $x in A inter dash(B)$, por definición de
  intersección de conjuntos, y, por lo tanto, $A without B subset.eq A inter
  dash(B)$.

  Inversamente, si $x in A inter dash(B)$ se tiene que $x in A$ y $x in
  dash(B)$, por definición de intersección de conjuntos. Ahora bien, si $x
  in dash(B)$, entonces $x in.not B$, por defición de complementario de un
  conjunto. Luego, si $x in A$ y $x in.not B$, entonces $x in A without B$,
  y, por tanto, $A inter dash(B) subset.eq A without B$.
]


Dados dos conjuntos $A$ y $B$, el conjunto de $A$ y $B$, que se escribe $A
triangle B$, es el conjunto de elementos que pertenecen solo a uno de los
dos conjuntos $A$ y $B$. Son por tanto los elementos de $A union B$ que no
son elementos de $A inter B$. Es decir,

$ A triangle B = (A union B) without (A inter B) $

Se comprueba fácilmente que una definición al ternativa sería

$ A triangle B = (A without B) union (B without A) $

o, lo que es lo mismo,

$ A triangle B = (A inter dash(B)) union (B inter dash(A)) $

En consecuencia,

$ A triangle B = {x | x in A med "y" med x in.not B} union {x | x in.not A
med "y" med x in B} $

En particular, si $A$ y $B$ son subconjuntos del conjunto $U$ y están
definidos por comprensión, como

$ A = {x in U | P_x}, quad B = {x in U | Q_x} $

entonces,

$ A triangle B = {x in U | (P_x and not Q_x) or (not P_x and Q_x)} $

#exercise[][
  Demuestre que, dados dos conjuntos $A$ y $B$, se cumple que

  $ A without B = A triangle (A inter B) $

  Para ver la igualdad, comprobaremos que se cumplen las dos inclusiones

  $ A without B & subset.eq A triangle (A inter B) \
    A without B & supset.eq A triangle (A inter B) $

  Para la primera, sea un $x in A without B$ arbitrario. Entonces, $x in A$
  y $x in.not B$. En consecuencia, $x in.not A inter B$. Luego $x in A
  without (A inter B)$. Si nos fijamos en la definición de diferencia
  simétrica entre $A$ y $A inter B$,

  $ A triangle (A inter B) = [A without (A inter B)] union [B without (A
  inter B)] $

  se dará, en particular, que $A without (A inter B) subset.eq A triangle (A
  inter B)$, con lo que $x in A triangle (A inter B)$, y queda demostrada la
  primera parte.

  Para la segunda parte, de $x in A triangle (A inter B)$ se cumple
  particularmente que $x in A without (A inter B)$. De esto, se tiene que $x
  in A$ y $x in.not A inter B$, de lo que se deduce que $x in.not B$ pues en
  caso contrario, si fuera $x in B$, resultaría que $x in A inter B$, en
  contradicción con $x in.not A inter B$. Por tanto, $x in.not B$ y en
  consecuencia $x in A without B$.

  El segundo caso es imposible pues $A inter B subset.eq A$.

  En definitiva, se cumple la inclusión $A triangle (A inter B) subset.eq A
  without B$.
]




