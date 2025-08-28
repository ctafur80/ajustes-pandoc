
#import "../../typst-maths-book-template/main-template.typ": *



Lógica relacional. Esta lógica es similar a la lógica de predicados, pero
empleando relaciones lógicas simples como "palabras básicas". Se emplean las
mismas reglas sintácticas y conectivas, y los mismos cuantificadores que en
la lógica de predicados, si bien en este caso se puede utilizar un
cuantificador para cada argumento.

El uso de cuantificadores satisface el principio siguiente: Toda relación
$R_(x y)$ definida sobre el producto cartesiano $A times B$ de dos conjuntos
$A$ y $B$ y precedida por un cuantificador por cada variable, como, por
ejemplo,

$ forall x in A med forall y in B. med R_(x y), quad exists x in A med
forall y in B. med R_(x y) quad "o" quad forall y in B med exists x in A.
med R_(x y) $

es una proposición en el sentido de que se le puede atribuir sin ambigüedad
el valor verdadero o falso. Cuando no haya duda sobre los conjuntos $A$ y
$B$, se escribirá simplemente

$ forall x med forall y med R_(x y), quad exists x med forall y med R_(x y)
quad "o" quad forall y med exists x med R_(x y) $

#block[
  Si se tiene una relación $P_(x y)$ donde $A = {a, b, c}$ y $B = {1, 2}$,
  entonces $forall x med forall y med P_(x y)$ es la proposición

  $ P_(a 1) and P_(a 2) and P_(b 1) and P_(b 2) and P_(c 1) and P_(c 2) $

  La proposición $forall x med exists y med P_(x y)$ es la proposición

  $ (P_(a 1) or P_(a 2)) and (P_(b 1) or P_(b 2)) and (P_(c 1) or P_(c 2)) $

  mientras que in intercambio en el orden de los cuantificadores, $exists y
  med forall x med P_(x y)$, conduce a la proposición

  $ (P_(a 1) and P_(b 1) and P_(c 1)) or (P_(a 2) and P_(b 2) and P_(c 2)) $

  que no es equivalente a la anterior pues si $cal(R) = {(a, 1), (b, 2), (c,
  1)}$ entonces $forall x med exists y med P_(x y)$ es verdadera mientras
  que $exists y med forall x med P_(x y)$ es falsa.

  La proposición $exists x med forall y med P_(x y)$ toma el valor de la
  proposición

  $ (P_(a 1) and P_(a 2)) or (P_(b 1) and P_(b 2)) or (P_(c 1) and P_(c 2))
  $

  mientras que la proposición $forall y med exists x med P_(x y)$ es

  $ (P_(a 1) or P_(b 1) or P_(c 1)) and (P_(a 2) or P_(b 2) or P_(c 2)) $

  y $exists x med exists y med P_(x y)$ toma el valor de la propiedad

  $ P_(a 1) or P_(a 2) or P_(b 1) or P_(b 2) or P_(c 1) or P_(c 2) $
]

#block[
  En el ejemplo anterior, hemos comprobado que cuando los cuantificadores
  son distintos el orden de colocación de los mismos altera el valor lógico
  de la proposición. Analicemos otro ejemplo: la proposición

  $ forall x in RR med exists n in NN. med n > x $

  significa que para cada número real existe un número natural que lo
  supera, cosa que es cierta. Concretamente, a esta propiedad se la conoce
  como la Propiedad Arquimediana de $RR$, y la veremos en un captítulo
  posterior. Un simple cambio de orden en los cuantificadores conduce a

  $ exists n in NN med forall x in RR. med n > x $

  que significa que existe un número natural que supera a todos los números
  reales, cosa que sabemos que es falsa.
]

#block[
  Para negar una proposición con varios cuantificadores, se procede de la
  manera siguiente. Por ejemplo, busquemos la negación de $exists x in A med
  forall y in B. med P_(x y)$, que escribimos como $exists x med forall y
  med P_(x y)$ ya que se sobrentiende que se conocen esos conjuntos.

  $ not (exists x med forall y. med P_(x y))
      quad arrow.l.r.double quad forall x med not (forall y. med P_(x y))
      quad arrow.l.r.double quad forall x med exists y. med not P_(x y) $
]

#deffinition[Relación Homogénea][
  Se dice que una relación es _homogénea_ cuando se define sobre un producto
  de conjuntos iguales, es decir, cualquier relación $cal(R) subset.eq U
  times U$, para un conjunto $U$ cualquiera.
]




