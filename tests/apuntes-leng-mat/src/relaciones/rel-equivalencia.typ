



Definición. Relación de equivalencia. Una relación $cal(E)$ en el conjunto
$U$ se denomina cuando posee las propiedades reflexiva, simétrica y
transitiva.

#block[
  Relación de equipolencia entre vectores. En el conjunto de vectores fijos
  del plano o del espacio, la relación de equipolencia es un relación de
  equivalencia. Recuérdese que un vector fijo es un segmento orientado (o
  dirigido) y que está compuesto por un punto origen del segmento, una recta
  dirección sobre la que se dibuja el segmento, la longitud del segmento y
  el sentido. El vector $arrow(v)$ es equipolente al vector $arrow(w)$ si y
  solo si las rectas directrices son la misma o paralelas y los módulos y
  sentidos son iguales.

  Además, cada uno de los conjuntos constituidos por todos los vectores que
  son equipolentes entre sí es denominado _vector libre_.

  A la vista de este ejemplo, podemos ver que hemos hecho una clasificación
  de los vectores. Vamos a hablar ahora sobre esto mismo de forma más
  general.
]

Definición. Clase de equivalencia. Dada una relación de equivalencia
$cal(E)$ en un conjunto $U$, se denomina del elemento $x in U$ al conjunto
imagen de $x$, que denotamos $cal(E)$ o $[x]$, es decir,

$ [x] = {y in U | x cal(E) y, med x in U} $

Muchas veces, se habla simplemente de _clase_, cuando se sobrentiende que
nos referimos a clases de equivalencia.




== Propiedades

Dada una relación de equivalencia homogénea $cal(E) subset.eq U times U$ y
tres elementos $x, y, z in U$, se cumple

#block[
  1. Propiedad. Si $x cal(E) y$, entonces $[x] = [y]$.
]

TKTK

#block[
_Proof._ Se puede demostrar deduciéndolo de forma directa de los requisitos
en la definición de relación de equivalencia.

Para cada $z in [x]$, se tiene que $x cal(E) z$ y, ya que en toda relación
de equivalencia se debe cumplir la propiedad simétrica, también se cumple $z
cal(E) x$. Dado que $z cal(E) x$ y $x cal(E) y$, se tiene entonces, por la
propiedad transitiva, que $z cal(E) y$. Aplicando otra vez la propiedad
simétrica, se tendrá que $y cal(E) z$, que es lo mismo que decir que $z in
[y]$. Con esto hemos llegado a demostrar que $[x] subset.eq [y]$. De forma
análoga se comprueba que $[y] subset.eq [x]$. Ambas afirmaciones hacen que
se cumpla $[x] = [y]$.
]

#block[
  2. Propiedad. Si $x not cal(E) y$, entonces $[x] inter [y] = emptyset$.
]

#block[
  _Proof._ Vamos a demostrarla por contradicción. Suponemos que $[x] inter
  [y] eq.not emptyset$, que sería lo mismo que decir que existe un $z in [x]
  inter [y]$, o, lo que es lo mismo, se tiene que $x cal(E) z$ e $y cal(E)
  z$. Al aplicar, al igual que en la otra demostración, las propiedades
  simétrica y transitiva, se puede llegar a obtener que $x cal(E) y$, cosa
  que contradice la hipótesos $x \\not cal(E) y$. Por tanto, se tiene que
  $[x] inter [y] = emptyset$.
]

Muchas veces, al trabajar con clases de equivalencia, hacemos uso de un
elemento de una clase para hablar de todos. A este elemento al que se le da
esa utilidad se le denomina de esa clase de equivalencia.

#block[
  Ecuaciones de la recta en el plano euclídeo. En el conjunto

  $ E = {a x + b y + c = 0 | |a| + |b| eq.not 0, med a, b, c in RR} $

  de las ecuaciones con coeficientes reales en dos incógnitas, se define la
  relación de equivalencia siguiente. Para $a, b, c, e, f, g in RR$,

  $ (a x + b y + c = 0) cal(E) (e x + f y + g = 0) $

  si y solo si los coeficientes de las ecuaciones son proporcionales. Es
  decir, de forma simbólica,

  $ exists p in RR, med p eq.not 0, " tal que " a = p e, med b = p f " y " c
  = p g $

  Por cierto, quizás, se pregunte por qué se ponen esos valores absolutos en
  la expresión del conjunto $E$, es decir, $|a| + |b| eq.not 0$. La razón
  está en que deseamos excluir el caso de $a = b = 0$, para el que la
  gráfica no sería una recta sino un punto, pero preferimos expresarlo de un
  modo algo más "elegante", si se puede llamar "elegante" a eso.

  En esa relación, cada clase de equivalencia se corresponde con una recta
  en el plano euclídeo dotado de un sistema de referencia, es decir, si las
  ecuaciones tienen los coeficientes proporcionales, entonces esas
  ecuaciones representan la misma recta. De esta forma, a clases de
  equivalencia distintas le corresponden rectas distintas. A la hora de
  trabajar con una recta, se elige la ecuación representante de la clase de
  equivalencia que más interese. De esta forma, en lugar de trabajar con un
  elemento geométrico, se trabaja con un elemento algebraico.
]

#block[
  Dirección en el plano euclídeo. Se supone que el plano euclídeo está
  dotado de un sistema de referencia. En el conjunto de rectas del plano se
  define una relación de equivalencia. Dos rectas $r$ y $r'$ son paraleleas,
  cosa que solemos designar por $r \| \| r'$, si y solo si los coeficientes
  de las incógnitas de sus ecuaciones son proporcionales. Al emplear una
  ecuación de cada recta:

  $ r   & equiv a x + b y + c = 0 \
    r'  & equiv e x + f y + g = 0 $

  se tiene

  $ r || r' arrow.l.r.double exists p in RR, med p eq.not 0, " tal que " a =
  p e " y " b = p f $

  A cada clase de equivalencia le corresponde lo que se llama una
  _dirección_ en el plano euclídeo, es decir, una dirección es el conjunto
  de una recta y todas sus paralelas.
]

#block[
  Vector libre del plano euclídeo. Cada vector libre del plano o del espacio
  es una clase de equivalencia de la relación de equipolencia del ejemplo
  TKTK en el conjunto de los vectores fijos del plano o del espacio. Cuando
  se interpretan geométricamente resultados con vectores libres, se utilizan
  vectores fijos escogiendo representantes adecuados.
]

Definición. Conjunto cociente. Dada una relación de equivalencia $cal(E)
subset.eq U times U$, se denomina , $U/cal(E)$, al conjunto de todas las
clases de equivalencia que se generan en esa relación $cal(E)$.

#block[
  Números enteros ($ZZ$). En el conjunto de los números naturales, $NN$, se
  puede plantear preguntas del estilo: ¿Qué número natural al sumarle 3 da
  como resultado 5? Es decir, se plantea la ecuación $x + 3 = 5$, que tiene
  solución. Pero si se plantea la ecuación $x + 5 = 3$, ocurre que no existe
  solución en $NN$.

  En general, una ecuación de la forma $x + b = a$, donde $a$ y $b$ son
  números naturales, no siempre posee solución en el conjunto $NN$. Buscar
  un marco donde esta ecuación genérica posea solución es lo que obliga a
  introducir el conjunto de los números enteros, denotado por $ZZ$.

  La ecuación $x + b = a$ tiene solución en $NN$ dependiendo del par de
  números $(a, b)$. Esto nos induce a pensar en definir los números enteros
  partiendo de pares de números naturales. Además, los pares $(5, 3)$, $(8,
  6)$ y $(3, 1)$ inducen ecuaciones que tienen la misma solución, $x = 2$,
  esto lleva a considerar el conjunto $NN times NN$ y la relación de
  equivalencia siguiente:

  $ (a, b) cal(E) (c, d) " si y solo si " a + d = b + c $

  Piense como si esto viniera de $a - b = c - d$, que al fin y al cabo es la
  misma ecuación, pero la definición debe hacerse con la suma, en lugar de
  la resta. TKTK.

  El conjunto cociente $(NN times NN)/cal(E)$, denotado normalmente como
  $ZZ$, está compuesto por las clases

  $ [(0, 0)], [(1, 0)], [(0, 1)], [(2, 0)], [(0, 2)], dots.h $

  que se designan también por $0, 1, (-1), 2, (-2), dots.h$ Así, pues, el
  conjunto $ZZ$ se escribe

  $ ZZ = {dots.h, (-3), (-2), (-1), 0, 1, 2, 3, dots.h} $

  Observación. Al igual que en $NN$, la notación $ZZ^*$ designa a $ZZ
  without {0}$.
]

#block[
  Números racionales ($QQ$). En el conjunto de los números enteros, $ZZ$, se
  pueden plantear preguntas del estilo: ¿Qué número entero multiplicado por
  2 da como resultado 6? Es decir, se plantea la ecuación $2 x = 6$, que
  tiene solución. Pero si se plantea la ecuación $6 x = 2$, ocurre que no
  existe solución en $ZZ$.

  En general, una ecuación de la forma $b x = a$, donde $b eq.not 0$ y $a$
  son números enteros, no siempre tiene solución en el conjunto $ZZ$. Buscar
  un marco donde esta ecuación genérica tenga solución es lo que obliga a
  introducir el conjunto de los números racionales, denotado $QQ$.

  La ecuación $b x = a$ tiene solución en $ZZ$ dependiendo del par de
  números $(a, b)$. lo que nos induce a pensar en definir los números
  racionales partiendo de pares de números enteros, teniendo en cuenta que
  el $b$ no puede valer 0. Además, observamos que los pares $(3, 1)$, $(6,
  2)$ y $(15, 5)$ conducen a la misma solución de la correspondiente
  ecuación. Esto nos lleva a considerar en el conjunto $ZZ times ZZ^\*$ la
  siguiente relación de equivalencia:

  $ (a, b) cal(E) (c, d) " si y solo si " a d = b c $

  Piense como si esto viniera de $a \/ b = c \/ d$, que al fin y al cabo es
  la misma ecuación, pero la definición debe hacerse con el producto, en
  lugar de la división. TKTK.

  El conjunto cociente $(ZZ times ZZ^*) \/ cal(E)$, que denotamos por $QQ$,
  se escribe como

  $ a / b $

  Así, pues, el conjunto $QQ$ se escribe como

  // TODO Hay algo mal

  /*
  $ QQ = lr({ a/b |). (a, b) in ZZ times ZZ^*} $

  Al igual que con $ZZ$, la notación $QQ^*$ designa a $QQ without {0}$.
  */
]

#block[
  Enteros módulo $p$: $ZZ / p$. En el conjunto de los números enteros, $ZZ$,
  se define la relación de equivalencia

  $ a equiv b med ("mod " p) " si y solo si " a - b " es divisible por " p $

  o, dicho de otro modo,

  $ a equiv b med ("mod " p) arrow.l.r.double exists k in ZZ. med a - b = k
  p $

  Esto también se puede decir como que los restos de la división entera de
  $a$ y $b$ entre $p$ coinciden. Esta relación $a equiv b med ("mod " p)$ se
  lee como "$a$ es congruente con $b$ módulo $p$".

  El conjunto cociente $ZZ / equiv$, que denotamos por alguna de las
  expresiones siguientes: $ZZ / p ZZ$, $ZZ / (p)$ o $ZZ / p$, está compuesto
  por las clases $[0], [1], [2], [3], dots.h, [p - 1]$, que denominamos
  simplemente

  $ ZZ / p = {0, 1, 2, 3, dots.h, (p - 1)} $

  Si se fija, la clase del $0$, es decir, $[0]$, sería el conjunto de todos
  los múltiplos de $p$, es decir,

  $ p ZZ = {k p | k in ZZ} $
]

#block[
  Números reales módulo $2 pi$: $RR \/ 2 pi$. En el conjunto de los números
  reales, $RR$, se define la relación de equivalencia

  $ a equiv b med ("mod " 2 pi) " si y solo si " exists k in ZZ " tal que "
  a - b = 2 pi k $

  o, lo que es lo mismo,

  $ a equiv b ("mod " 2 pi) arrow.l.r.double exists k in ZZ, med a = b + 2
  pi k $

  El conjunto cociente $RR \/ equiv$, que denotamos por alguna de las
  expresiones siguientes: $RR \/2 pi ZZ$, $RR \/ 2 pi$ o $RR \/ 2 pi$, está
  compuesto por las clases $[r]$ donde $r in [0, 2 pi)$. Las medidas de los
  ángulos en radianes son una buena interpretación de este conjunto
  cociente. Las funciones priódicas de periodo $2 pi$ tan solo se estudian
  en el intervalo $[0, 2 pi]$, o en el $[(-pi), pi]$, puesto que la gráfica
  en el intervalo $[(2 k - 1) pi, [(2 k + 1) pi]$ es la misma que en el
  intervalo $[(-pi), pi]$.
]

Definición. Partición de un conjunto. Una de un conjunto $U$ es una familia
$P$ de subconjuntos no vacíos de $U$ disjuntos dos a dos y cuya unión es el
conjunto $U$.

Se podría dar una definición alternativa, más simbólica.

Una partición de un conjunto $U$ es un conjunto de $n in NN$ conjuntos $A_1,
A_2, A_3, dots.h, A_n$ no vacíos para los que, para todos los índices $i,
j in NN$, siendo $1 lt.eq i lt.eq n$, $1 lt.eq j lt.eq n$ e $i eq.not j$, se
cumplen

$ union.big_(A_i subset.eq U) A_i = U quad y \
  quad A_i inter A_j = emptyset $

De esta definición, se derivan algunos hechos importantes.

Toda relación de equivalencia $cal(E) subset.eq U times U$ genera una
partición de $U$ puesto que, tal y como demostramos antes, las clases $U \/
cal(E)$ son subconjuntos de $U$ disjuntos dos a dos y, por definición, la
unión de estos es el conjunto $U$.

Recíprocamente, toda partición $P$ del conjunto $U$ permite definir la
siguiente relación de equivalencia $cal(E)$ en el conjunto $U$:

$ x cal(E) y " si y solo si existe algún " A in P " tal que " {x, y}
subset.eq A $

#block[
  Al considerar la partición

  $ P = {[i - 1, i) | i in ZZ} $

  de intervalos en $RR$, se define la relación de equivalencia entre números
  reales $x cal(R) y$ si y solo si existe un intervalo $[i - 1, i)$ tal que
  $x, y in [i - 1, i)$. Es decir, dos números reales están relacionados si y
  solo si tienen la misma parte entera.
]




