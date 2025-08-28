
#import "../../../typst-maths-book-template/main-template.typ": *



Dados dos conjuntos $A$ y $B$, el conjunto unión de estos, que denotaremos
por $A union B$ y se leerá como "$A$ unión $B$", es el conjunto de elementos
que pertenecen a al menos uno de estos dos. Es decir,

$ A union B = {x | x in A quad "o" quad x in B} $

o, con notación más propia de la lógica,

$ A union B = {x | (x in A) or (x in B)} $

Recuerde que, tal y como se explicó antes, en la lógica, cuando se usa la
disyunción _o_, sin especificar, nos referimos a la inclusiva; no a la
exclusiva.

En particular, si $A$ y $B$ son subconjuntos de un conjunto $U$ y están
definidos en base a predicados (es decir, por comprensión),

$ A = {x in U | P_x},
  quad B = {x in U | Q_x} $

se tiene entonces que

$ A union B = {x in U | P_x or Q_x} $




=== Propiedades

La unión de conjuntos tiene las propiedades siguientes, que se deducen
fácilmente de la definición.

#theorem[Propiedades de la Unión de Conjuntos][
  Cualesquiera que sean los conjuntos $A$, $B$ y $C$, se tiene:

  - $A subset.eq A union B$ y $B subset.eq A union B$.

  - $A union B = B union A$. (Propiedad conmutativa.)

  - $A union (B union C) = (A union B) union C$. (Propiedad asociativa.)

  - $A union emptyset = A$

  - $A union A = A$
]

#example[][
  Demuestre que para dos conjuntos cualesquiera $A$ y $B$ se cumple

  $ A union B = B quad "si y solo si" quad A subset.eq B $

  Demostraremos la igualdad mediante la doble implicación.

  Primero, se desea demostrar que, si $A union B = B$, entonces $A subset.eq
  B$. Por un lado, se cumple, tal y como se dice en la primera de las
  propiedades anteriores, que $A subset.eq A union B$.

  Además, como se da por hipótesis que $A union B = B$, concretamente se
  dará que $A union B subset.eq B$.

  Tal y como se vio, para la operación inclusión de conjuntos, $subset.eq$,
  se cumple la propiedad transitiva, con lo que podemos "encadenar" estas
  dos proposiciones que hemos obtenido, teniendo $A subset.eq B$, como
  deseábamos demostrar.

  Recíprocamente, supongamos que se cumple que $A subset.eq B$. Hay que ver
  solamente que $A union B subset.eq B$, pues $B subset.eq A union B$ es
  cierta por una de las propiedades de antes.

  Todo elemento $x in A union B$ es elemento de al menos uno de los dos
  conjuntos $A$ y $B$. Si $x in B$, ya habríamos terminado, pues es lo que
  deseamos demostrar. Si, por el contrario, se da que $x in A$, entonces $x
  in B$ ya que es la hipótesis de la que partimos, $A subset.eq B$. Por
  tanto, todo elemento de $A union B$ es elemento de $B$, o, lo que es lo
  mismo, $A union B subset.eq B$.
]



