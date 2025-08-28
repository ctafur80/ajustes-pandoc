
#import "../../../typst-maths-book-template/main-template.typ": *




==== Complementario

Sea $U$ un conjunto y sea $A$ un subconjunto de $U$. Se llama
*complementario* (o _complemento_) de $A$ con respecto a $U$ al conjunto de
los elementos de $U$ que no pertenecen a $A$.

Existen varias notaciones para el complemento, como, por ejemplo,
$complement_U A$. En muchas de estas, ni siquiera se especifica el conjunto
respecto al que se toma el complemento; habría que proporcionar esa
información en la prosa o quizás se sobrentienda. Esto último es lo más
usual. En ese caso, es normal encontrar las notaciones $complement A$,
$A^complement$, $A'$, $dash(A)$, etc. Nosotros nos quedaremos con esta
última, ya que es bastante cómoda.

$ dash(A) = {x in U | x in.not A} $

En el caso de que el conjunto $A$ esté definido por comprensión, como en

$ A = {x in U | P_x} $

se tendría que

$ dash(A) = {x in U | not P_x} $

TKTK

/*
#figure([],
  caption: [
    Diagrama de Venn de $A$ y $dash(A)$
  ]
)
*/

#example[][
  Dado $U = {a, b, c, d, 1, 2, 3, 4, 5, 6}$, si $A = {a, b, c, d}$,
  entonces, $dash(A) = {1, 2, 3, 4, 5, 6}$.

  Los complementarios respectivos de ${0}$ con relación a los conjuntos
  $NN$, $ZZ$, $QQ$ y $RR$ se denotan usualmente como $NN^*$, $ZZ^*$, $QQ^*$
  y $RR^*$.

  En $NN^*$, se tiene que el complementario del conjunto de números pares,
  es decir, de

  $ P = {x in NN^* | x = 2k, med k in NN^*} = {2k | k in NN^*} $

  es el conjunto de los números impares:

  $ dash(P) = I = {x in NN^* | x eq.not 2k, med k in NN^*} = {x in NN^* | x
  = 2k - 1, med k in NN^*} = {2k - 1 |  k in NN^*} $
]





==== Partes de un conjunto

Consideremos todos los subconjuntos de un conjunto dado $A$. Forman un nuevo
conjunto que se denomina *conjuntos de las partes* (_power set_) de $A$ y se
designa por $cal(P)(A)$.

$ cal(P)(A) = {B | B subset.eq A} $

Como consecuencia directa del concepto de subconjunto se tiene que,
cualquiera que sea el conjunto $A$ se cumple que $emptyset in cal(P)(A)$ y
$A in cal(P)(A)$, puesto que $emptyset subset.eq A$ y $A subset.eq A$, como
vimos antes.

Aunque $A$ sea el conjunto vacío, $cal(P)(A)$ nunca lo puede ser, pues
siempre contiene al conjunto vacío. Es decir,

$ A = emptyset, quad cal(P)(A) eq.not emptyset, quad {emptyset} subset.eq
cal(P)(A) $

Dado el conjunto con 4 elementos $A = {a, b, c, d}$, se tiene

// TODO Hacer más grande las llaves de fuera.

$ cal(P)(A) =
    & lr({emptyset, {a}, {b}, {c}, {d}, {a, b}, {a, c}, \
    & {a, d}, {b, c}, {b, d}, {c, d}, {a, b, c}, \
    & {a, b, d}, {a, c, d}, {b, c, d}, A}, size: #100%) $

Si $A = {a, b}$, determine $cal(P)(A)$ y $cal(P)(cal(P)(A))$.

TKTK

/*
\$\$\\begin{aligned}
    cal(P)(\\powset(A)) =
    &\\left\\{
      \\emptyset,
      {\\emptyset},
      {\\{a}\\},
      {\\{b}\\},
      {A},
      \\left{\\emptyset, \\{a}\\right\\},
      \\left{\\emptyset, \\{b}\\right\\},
      \\left{\\emptyset, A\\right},
      \\left{\\{a}, {b}\\right\\},
      \\left{\\{a}, A\\right\\},\\right. \\\\
    &\\left.\\left{\\{b}, A\\right\\},
      \\left{\\emptyset, \\{a}, {b}\\right\\},
      \\left{\\emptyset, \\{a}, A\\right\\},
      \\left{\\emptyset, \\{b}, A\\right\\},
      \\left{\\{a}, {b}, A\\right\\},
      cal(P)(A)
    \\right\\} \\\\
  
\\end{aligned}\$\$
]
*/

#exercise[][
  Si un conjunto $A$ tiene $n$ elementos, ¿cuántos elementos tiene
  $cal(P)(A)$? Razone usando el Principio de Inducción.

  // TODO Cambiar los designadores. Mejor, x a los elementos, p_x a el
  // número de elementos de las partes de A, etc.

  Se trata de un problema muy genérico, y, como tal, es un resultado
  importante de las matemáticas.

  El proceso que vamos a seguir se basa en dividir el conjunto de las partes
  de un conjunto arbitrario $C$ en dos. Lo haremos tomando un elemento
  arbitrario $c in C$. Tendremos, por un lado, los subconjuntos de $C$ que
  contienen a $c$, y, por el otro, los que no lo contienen. Ambos conjuntos
  serán disjuntos y su unión será igual que $cal(P)(C)$. De ahí, deduciremos
  una fórmula recursiva para $"card"(cal(P)(C))$ y, luego, de esta
  deduciremos una fórmula explícita de $"card"(cal(P)(C))$ en función de
  $"card"(C)$.

  Tal y como hemos dicho, al conjunto arbitrario que tomaremos lo designamos
  por $C$. Por abreviar, al $"card"(C)$ lo designaremos por $n$. También, al
  $"card"(cal(P)(C))$ lo designaremos por $a_n$. Advierta que tiene que
  tener ese subíndice necesariamente.

  Veamos el caso base. Queremos que sea $n = 0$, por lo que tomamos $C =
  emptyset$. Así, tal y como acabamos de decir, $n = "card"(C) = 0$.
  También, se dará $a_0 = "card"(cal(P)(C)) = 1$, ya que $cal(P)(emptyset) =
  {emptyset}$.

  Ahora, vamos al caso genérico. Suponemos que $C$ tiene $n$ elementos.
  Llamamos $D$ al subconjunto de $C$ cuando a este le quitamos un elemento
  arbitrario $c in C$; es decir, $D = C without {c}$. Se tiene que
  $"card"(D) = n - 1$, como es evidente. Se tendrá entonces que
  $"card"(cal(P)(C without {c})) = "card"(cal(P)(D)) = a_(n-1)$.

  Ahora, si a todo subconjunto de $D$, o, lo que es lo mismo, a todo $E in
  cal(P)(C without {c})$, le añadimos el elemento $c$, tendremos los mismos
  conjuntos que habríamos obtenido de haber seleccionado únicamente a los
  subconjuntos de $C$ que contienen al elemento $c$. Como los acabamos de
  construir a partir de $D$, el número de estos conjuntos será el mismo que
  los de aquel, es decir, $a_(n - 1)$.

  Entonces, tenemos dos subconjuntos de $cal(P)(C)$ que son disjuntos entre
  sí y que cuya unión da $cal(P)(C)$. Como además, ambos tienen por tamaño
  $a_n$, se tendrá entonces que

  $ a_n = a_(n - 1) + a_(n - 1) = 2 thin a_(n - 1) $

  Tenemos entonces la fórmula en forma recursiva de $a_n$. Esta es:

  $ a_n cases(delim: "{",
    1                 & quad "si" med n = 0,
    2 thin a_(n - 1)  & quad "si" med n > 0 ) $

  A la vista de lo siguiente,

  $ a_n = 2 thin a_(n - 1) = 2 (2 thin a_(n - 2)) = 2 (2(2 thin a_(n - 3)))
  = dots.h.c = 2(2(2(2 thin dot.op dots.h.c dot.op (2 thin a_0)))) $

  tiene pinta que la fórmula explícita será la siguiente:

  $ a_n = a_0 thin product_(i = 0)^n 2 = 1 dot.op 2^n = 2^n $

  pero esto no lo hemos demostrado. Aquí es cuando haremos uso del Principio
  de Inducción. El caso base se dará para el valor $n = 0$. Para este se
  tiene que $a_0 = 1$.

  Ahora, pasamos a ver la hipótesis de inducción. Será

  $ a_n = 2^n $

  La meta de inducción será

  $ a_(n + 1) = 2^(n + 1) $

  Vamos a ver si de la hipótesis se deduce la meta. Tenemos que, aplicando
  la definición recursiva, se tiene

  $ a_(n + 1) = 2 thin a_n = 2 dot.op 2^n = 2^(n + 1) $

  que es a donde queríamos llegar. Así, hemos demostrado que la fórmula
  explícita de $a_n$ es

  $ a_n = 2^n $

  Con esto hemos demostrado que

  $ "card"(cal(P)(C)) = 2^("card"(C)) $

  Existen otras demostraciones alternativas. Por ejemplo, haciendo uso de la
  combinatoria.
]




