
#import "../../../typst-maths-book-template/main-template.typ": *




Tal y como explicamos antes, algunas expresiones sencillas en contexto
matemático no pueden ser expresadas con la lógica de proposiciones. Por
ejemplo,

#block[
  El número natural elegido es un número par. \
  Un número múltiplo de $10$ es un número par. \
  Si una función es derivable en un punto, entonces la función es continua
  en ese punto. \
  Un número primo mayor que $2$ es impar. \
]

Analicemos la primera expresión, "El número natural elegido es un número
par.". Podemos decir que, si bien vemos que describe la propiedad "ser
número par", en realidad queda indefinida ya que no se indica el número al
que se aplica esta. Por eso, esta expresión es cierta o falsa dependiendo
del número que se elija.

Dado un conjunto $C$, un *predicado* (_predicate_) simple de un argumento
sobre $C$ es una proposición que tendrá un valor de verdad en función del
valor que tome ese argumento, que no es más que una variable $x in C$.

Al conjunto de valores que puede tomar el argumento se le conoce como
_universo del predicado_. Sería $C$ en la terminología de la definición
anterior.

La notación que se suele seguir es usar una letra mayúscula para la
proposición y poner el argumento sobre el que actúa como subíndice. Por
ejemplo, $P_x$. Existen otras notaciones; por ejemplo, la notación de
funciones, como $P(x)$.

Así, el enunciado

#quote[
  El número natural elegido es un número par.
]

se podría expresar como un predicado simple de un argumento $P_x$, donde $P$
indicaría "ser un número par" y $x$ el número natural elegido. Para cada
valor de $x$ se tendrá una proposición, y, como es evidente, esta tomará un
valor de verdad. Sería algo análogo al paso de la aritmética al álgebra. Un
salto de nivel ganando en abstracción.

Para este predicado en concreto, si el universo del predicado es $C = {1, 2,
3, 5, 6, 7}$, entonces para $x = 1$ se tendrá la proposición $P_1$, que es
falsa. Para $x = 2$ se tiene $P_2$; verdadera.

Se puede observar también el subconjunto del universo del predicado cuyos
elementos hacen que se tenga una proposición verdadera. Para el predicado
$P_x$ sobre un universo $C$, lo designaremos por $C_P$ y se puede expresar
del modo siguiente:

$ C_P = {x in C | P_x} $

El símbolo '$|$' se leería como "tal que..." o "cumpliendo la condición...".
Alternativamente, se puede poner el signo de dos puntos, '$:$', con el mismo
propósito. Evidentemente, cualquiera que sea el predicado $P_x$, se tendrá
que $C_P$ es un subconjunto del universo del predicado, $C$.

En el ejemplo anterior, se tiene que $C_P = {2, 6}$. En algunos casos podría
darse $C_P = C$.

También se podría denotar al conjunto $C_P$ sin hacer referencia al
universo; por ejemplo, $A$. Se tendría que

$ A = {x in C | P_x} $

Un conjunto $A$ cualquiera así se dice que está definido o expresado *por
comprensión* (también, _caracterización_).#footnote[En inglés también llaman
a esta notación _set-builder notation_]. Se tendría que la propiedad $P$ es
una _propiedad característica_ del conjunto $A$ en $C$, y al conjunto $A$ se
le llama _extensión del predicado_ $P_x$ al conjunto $C$.

Esto es lo que mencionamos antes: la otra otra forma de expresar o definir
un conjunto, distinta a la forma por extensión. Tal y como veremos, al
tratar de "construir" conjuntos por medio de predicados, pueden aparecer
paradojas, como mencionamos antes; es decir, puede que haya conjuntos
expresados por extensión que no estén bien definidos.

Los conjuntos de los apartados 2, 3, 4 y 5 del ej-conjuntos-1 están
definidos por comprensión; así, en el punto 2 se tiene que $B = {x in ZZ |
x^3 - 3x + 2 = 0}$ o, en el 5, que $E = {x in ZZ | x "es par"}$. También, el
conjunto $B = {1, 2}$ coincide con el conjunto $A$ del apartado 1.

A su vez, un conjunto puede estar determinado por distintos predicados. Por
ejemplo, si $C = {x in ZZ | 0 < x quad "y" quad x < 3}$, entonces $B = C$.
Se dice que los predicados $x^2 - 3 x + 2$, por un lado, y $0 < x$ y $x <
3$, por el otro, son equivalentes sobre el universo $ZZ$. Es decir, dos
predicados se consideran _equivalentes_ sobre un universo $C$ cuando
determinan un mismo subconjunto de dicho universo, $C$.

Por cierto, es común usar una notación abreviada para expresar cosas como $0
< x$ y $x < 3$. Sería simplemente encadenando las expresiones; es decir, $0
< x < 3$.

Podemos hacer también lo opuesto a lo que estamos haciendo. Podemos pasar de
la definición por extensión a una por comprensión. Se tiene que cualquier
subconjunto $A$ de $C$, es decir, $A subset.eq C$, definido por extensión,
puede determinarse mediante el predicado $x in A$, es decir,

$ A = {x in C | x in A} $

Conjunto vacío. Sea $C$ un conjunto cualquiera. Consideramos sobre este el
predicado $x in.not C$. Se tendría un conjunto $A$ que podríamos expresar
por comprensión del modo siguiente:

$ A = {x in C | x in.not C} $

Por lo que dijimos, se cumple que $A subset.eq C$, pero se trata de un
subconjunto algo especial. Es un (sub)conjunto sin elementos. A este se le
llama *conjunto vacío* (_empty set_) y se denota con el símbolo
'$emptyset$'. Alternativamente, el conjunto vacío se podría haber definido
por extensión como ${}$, es decir, el conjunto sin ningún elemento.

Alternativamente, se podría haber expresado por comprensión haciendo uso de
cualquier otra contradicción distinta a $x in.not C$. Cualquiera de estas
nos generará un conjunto sin ningún elemento. En general, se podía haber
puesto la expresión siguiente como definición de _conjunto vacío_:

$ emptyset = {x in C | bb(0)} $

Es fácil demostrar que el conjunto vacío es un subconjunto de cualquier
conjunto, es decir, para todo $A$ conjunto se cumple siempre $emptyset
subset.eq A$. Simplemente hay que aplicar la definición de _subconjunto_.
Supongamos un conjunto $C$ arbitrario. Dado un elemento arbitrario $x in
emptyset$, se da que $x in C$. Esta proposición es verdadera; concretamente,
vacuamente cierta, ya que nunca se da el antecedente, es decir, nunca se da
$x in emptyset$.

No hay que confundir las expresiones conjuntistas "$emptyset$" y
"${emptyset}$". La primera de estas es el conjunto vacío, mientras que la
segunda denota al conjunto unitario cuyo único elemento es el conjunto
vacío. Puede ver también que se trata de conjuntos con distinto número de
elementos: $0$ el primero y $1$ el segundo.



==== Lógica de predicados

Los predicados que hemos visto hasta ahora son simples, ya que se
concretizan en proposiciones simples. Se tienen también los predicados
compuestos, que son los que lo hacen sobre proposiciones compuestas.

Sea $C$ un conjunto sobre el que están definidos diversos predicados: $P_x$,
$Q_x$, $R_x$, etc. Cada vez que damos un valor a $x$, por ejemplo, $x = c$
siendo $c in C$, obtenemos las proposiciones $P_c$, $Q_c$, etc. a las que se
les puede aplicar todo el cálculo de proposiciones del capítulo anterior.
Por tanto, tienen sentido en $C$ los predicados

$ not P_x,
  quad P_x or Q_x,
  quad med P_x arrow.r Q_x,
  quad P_x and Q_x,
  quad dots.h $

Estos predicados determinan diferentes subconjuntos de $C$ formados por los
elementos de $C$ donde son ciertos los nuevos predicados.

La lógica de predicados también recibe el nombre de _lógica de primer
orden_.

Si $C$ es un conjunto y $P_x$ un predicado sobre $C$, entonces

$ emptyset = {x in C | P_x and not P_x} $

Si recuerda de la lógica de proposiciones, ese predicado compuesto es una
contradicción, $bb(0)$, y, tal y como dijimos antes, este conduce a definir
al conjunto vacío. También es fácil ver que

$ emptyset = {x in ZZ | (x^2 = 9) and (x "es par")} $

ya que tenemos también otra contradicción, o que

$ {x in ZZ | (x "es par") and (x "es múltiplo de 3")}
  = {x in ZZ | x "es múltiplo de 6"} $




=== Los números naturales

A continuación, asumimos la existencia del conjunto de los números
naturales, que solemos representar por $NN$. En el capítulo~ch:naturales se
hará un estudio más completo de la fundamentación de estos. Nos interesa, en
primer lugar, que la definición axiomática de $NN$ asegura la existencia de
conjuntos infinitos; aunque de momento solo tengamos una idea intuitiva de
este concepto. Además, que estos presentan un hecho, muy útil en la
práctica, conocido como el Principio de Inducción.

Los números naturales. Aunque intuitivamente se conocen los números
naturales,

$ NN = {0, 1, 2, 3, 4, 5, 6, 7, dots.h} $

como los números que utilizamos para contar, y este proceso nos es familiar
desde nuestros comienzos en la educación primaria, resulta que la existencia
de este conjunto se asegura mediante los axiomas de Peano, que presentamos
aquí de manera informal.

//TODO Poner lo de A1, etc.

#[ //#set enum(numbering: "A.1")
+ El elemento $0$ es un número natural.

+ Todo número natural $n$ tiene un único elemento sucesor, $s(n)$, que es
  también un número natural.

+ $0$ no es el sucesor de ningún número natural.

+ Dos números naturales cuyos sucesores son iguales son iguales.

+ Si un subconjunto de números naturales contiene al $0$ y a los sucesores
  de cada uno de sus elementos, entonces contiene a todos los números
  naturales.
]

De aquí se pueden extraer algunas conclusiones. Por ejemplo, A1 permite
asegurar que el conjunto de los números naturales es un conjunto no vacío,
es decir, $NN eq.not emptyset$. Hablar de sucesor en A2 refleja precisamente
la idea de contar. A3 indica que hay un primer elemento en dicho conjunto,
es decir, aunque podamos ir "subiendo" indefinidamente, no podemos "bajar"
por siempre. A2, A3 y A4, en forma conjunta, aseguran que al ir contando
nunca volvernos a un mismo elemento, en cuyo caso terminaríamos dándo
círculos y no avanzaríamos. Por tanto, esto asegura que el conjunto $NN$ es
ilimitado. A5 es el axioma utilizado en las demostraciones por inducción. Es
la formulación conjuntista del principio siguiente.

Principio de Inducción. Si $P$ es una propiedad definida sobre $NN$ tal que:

+ El número $0$ satisface la propiedad $P$, es decir, $P_0$ es verdadera.

+ Si $n$ satisface la propiedad $P$, entonces el sucesor de $n$, $s(n)$,
  también la satisface.

Entonces todo número natural satisface la propiedad $P$.

En efecto, si consideramos el subconjunto $M$ de los elementos de $NN$ (es
decir, $M subset.eq NN$) que satisfacen la propiedad $P$ y comprobamos que
$M$ contiene al $0$ y a los sucesores de cada elmento, aplicando entonces el
Principio de Inducción (o, si lo prefiere, el A5 de Peano) se obtiene que
$NN subset.eq M$. Entonces, como se cumplen $M subset.eq NN$ y $NN subset.eq
M$, se tiene que $M = NN$, por la propiedad de la doble inclusión de
conjuntos, que vimos antes.

#exercise[][
  Demuéstrese para todo número natural la igualdad

  $ 0 / 2^0 + 1 / 2^1 + 2 / 2^2 + 3 / 2^3 + dots.h.c + n / 2^n = 2 - ((n +
  2) / (2^n)) $

  La igualdad es verdadera para $n = 0$, pues

  $ 0 / 2^0 = 0 = 2 - ((0 + 2) / (2^0)) $

  Supongamos que la igualdad es cierta para $n$, esto es,

  $ 0 / 2^0 + 1 / 2^1 + 2 / 2^2 + 3 / 2^3 + dots.h.c + n / 2^n = 2 - ((n +
  2) / (2^n)) $

  y comprobemos que es cierta para el sucesor de $n$, es decir, para $n +
  1$. En consecuencia hay que comprobar que

  $ 0 / 2^0 + 1 / 2^1 + 2 / 2^2 + 3 / 2^3 + dots.h.c + n / 2^n + ((n + 1) /
  (2^(n + 1))) = 2 - (((n + 1) + 2) / (2^(n + 1))) $

  En efecto:

  $ 0 / 2^0 + 1 / 2^1 + 2 / 2^2 + dots.h.c + n / 2^n + frac(n + 1, 2^(n +
     1)) & = (0 / 2^0 + 1 / 2^1 + 2 / 2^2 + 3 / 2^3 + dots.h.c + n / 2^n) +
     frac(n + 1, 2^(n + 1)) \
   & = (2 - frac(n + 2, 2^n)) + frac(n + 1, 2^(n + 1)) \
   & = 2 - frac(2 n + 4 - n - 1, 2^(n - 1)) = 2 - frac(n + 3, 2^(n + 1)) \
   & = 2 - frac((n + 1) + 2, 2^(n + 1)) $
]

Las demostraciones que se hacen echando mano del Principio de Inducción son
muy comunes en matemáticas. El principal problema con el que cuentan es que
no nos van indicando, sino que debemos saber qué es lo que deseamos
demostrar. TKTK.

Vamos a analizar cómo se usa el Principio de Inducción. Primero, hemos
tenido que comprobar que se cumple para el valor $n = 0$. A este caso lo
llamamos el Caso Base. Luego, hemos supuesto que es cierta para el valor
$n$. A esto lo llamamos la Hipótesis de Inducción. Entonces, a partir de
esta debemos deducir que se cumple para el sucesor de esta, es decir, para
$n+1$. A esto lo llamamos la Meta de Inducción.

El A5 de Peano también se utiliza para definir términos donde intervienen
los números naturales donde se define el objeto que depende de un número
natural en función de objetos que dependen de términos anteriores. Se trata
de definiciones que hacen uso de la autorreferencia, cosa que está prohibida
en otros ámbitos (por ejemplo, en los diccionarios) pero, en matemáticas,
bajo ciertas circunstancias, sí se permite.

/*
En realidad, lo que sucede en los diccionarios tampoco es tan distinto a las
matemáticas. Hay, por necesidad, una serie de términos que no se pueden
definir (serían el equivalente a los axiomas), pues, de estar todos
definidos, se tendría lógica circular.
*/

A las definiciones que emplean la autorreferencia se las conoce como
definiciones _recurrentes_ o _por recurrencia_. Aunque se ve menos, también
se las podría llamar, perfectamente, definiciones _autorreferentes_... o
_inductivas_, ya que se basan en el Principio de Inducción.

Un ejemplo de definición recurrente es la del factorial de un número natural
$n$, cosa que expresamos como '$n!$'. Para cualquier $n in NN$ se define $(n
+ 1)!$ en función de $n!$ mediante

$ (n + 1)! = n! thin (n + 1) $

y se lee "factorial de $n + 1$". Es evidente que hay que conocer el valor de
$0!$ para poder determinar todos los demás, pues de lo contrario tendríamos
toda una familia de factoriales de $n$.#footnote[_Familia_ es un término que
se suele usar como sinónimo de conjuntos cuando hablamos de conjuntos de
conjuntos.] Se define $0! = 1$, cosa que hace que se trate de una función
concreta. En resumen, la definición recurrente de factorial de $n$ es

$ (n + 1)! = cases( delim: "{",
    1                   & quad "si" med n + 1 = 0,
    n! med (n + 1)      & quad "si" med n + 1 > 0 ) $

o, si lo prefiere,

$ n! = cases( delim: "{",
    1                 & quad "si" med n = 0,
    (n - 1)! med n    & quad "si" med n > 0 ) $

que me parece más elegante. Como puede ver, se está usando un factorial
dentro de la definición del factorial; un ejemplo de recurrencia.

De esta definición se obtiene fácilmente su forma no recursiva:

$ n ! = n dot.op (n - 1) dot.op (n - 2) dot.op (n - 3) dot.op dots.h.c
dot.op 3 dot.op 2 dot.op 1 $

Si $n'$ designa el sucesor de $n$, los cinco axiomas de Peano permiten
pensar en $NN$ como en el conjunto

$ {0, 0', (0')', ((0')')', dots.h} $

Existe cierta controversia sobre la inclusión del número $0$ en el conjunto
de los números naturales, $NN$, pues a veces se excluye de este conjunto. No
existe un consenso generalizado y, de hecho, para las distintas áreas de las
matemáticas, hay razones tanto para incluirlo como para excluirlo. Así, en
la lógica y la teoría de conjuntos parece evidente que ha de darse que $0 in
NN$, pero esto no sucede en otras áreas. En cualquier caso, esto es
simplemente una cuestión de terminología y no afecta a la validez de los
resultados que se obtengan. En caso de excluirlo, el Principio de Inducción
se enunciaría de tal forma que comience con el $1$, en lugar de con $0$,
pero seguiría siendo igual de válido para el $1$ todo lo explicado aquí.

// TODO Mencionar el Principio de Inducción generalizado para cualquier
// número inicial.

En la terminología que seguiremos en este texto, sí consideramos que $0 in
NN$. Si deseamos designar a $NN$ excluyendo el $0$, usaremos la notación
$NN^*$, es decir,

$ NN^* = {1, 2, 3, 4, 5, 6, 7, dots} $

Definición. Conjuntos finitos y conjuntos infinitos. Los conjuntos pueden
ser finitos o infinitos. Intuitivamente, un conjunto es finito si contando
los diferentes elementos del conjunto, el proceso de contar se termina. En
caso contrario, el conjunto es infinito. En capítulos posteriores se verá
una definición más precisa de estos dos conceptos. En cualquier caso, los
conjuntos $A = {1, 2}$, $B = {a, e, i, o, u}$
y $C = {2, i, "museo del Prado"}$ son conjuntos finitos. Los axiomas A2, A3
y A4 de Peano permiten asegurar que el proceso de contar los elementos del
conjunto $NN$ no se acaba nunca. Es decir, $NN$ es un conjunto infinito.
Esto se tratará de forma más rigurosa en el capítulo~ch:naturales.




