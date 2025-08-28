

#import "../../../typst-maths-book-template/main-template.typ": *


Volvamos al predicado $P_x$: "El número elegido es par", donde el universo
del predicado es $NN$. El valor de verdad de $P_x$ varía en relación al
valor que tome $x$. Sin embargo, las expresiones

#block[
  Todos los números naturales son pares. \
  Existe algún número natural par.
]

tienen un valor falso en el primer caso y verdadero en el segundo. Hemos
efectuado el proceso de cuantificar de alguna manera los elementos que
satisfacen la propiedad del predicado.

En una expresión, pueden aparecer implícita o explícitamente algún grupo de
palabras orientativas de la cantidad de elementos que satisfacen la
propiedad del predicado, tales como: "para cualquier...", "para cada...",
"todo...", "para todo...", "cada...", "cualesquiera que sean...", etc., o
cosas como "para algún...", "existe...", "existe al menos un...", etc.

En realidad, no existe una fórmula mágica para saber si una expresión en un
lenguaje natural se debe interpretar refiriéndose a todos y cada uno de los
elementos de un conjunto. Puede que se refieran a "un elemento
arbitrario..." del conjunto, cosa que sería equivalente a decir "para
todo...", o incluso que esto mismo ni se mencione de forma explícita y deba
interpretarlo. TKTK. Un poco más adelante retomaremos esta cuestión.

En la lógica de primer orden, existen símbolos que representan estas ideas.
Estos reciben el nombre de _cuantificadores_ (_quantifiers_).

Por muy extensa que sea la forma de expresar los cuantificadores en un
lenguaje natural, desde el punto de vista de la lógica se tienen dos
únicamente. Los mostramos a continuación.




==== Cuantificador universal

Sea $C$ un conjunto y $P_x$ un predicado sobre $C$. Consideremos el
subconjunto donde se cumple $P_x$:

$ C_P = {x in C | P_x} $

o, tal y como dijimos, la extensión del predicado $P_x$ sobre $C$. Si para
cada $x in C$ se satisface $P_x$, escribiremos

$ forall x in C . med P_x $

que se lee "Para todo $x$ de $C$, $P_x$.", o, si lo prefiere, "Cualquiera
que sea el elemento $x$ de $C$, $x$ satisface $P_x$.", o cualquier enunciado
que exprese esto mismo, como "Para un $x$ de $C$ arbitrario se tiene
$P_x$.".

El símbolo '$forall$' se denomina _cuantificador universal_ (_universal
quantifier_) y transforma un predicado en una proposición con un valor
verdadero o falso.

En algunos textos, en expresiones de este tipo ponen a la parte del
cuantificador entre paréntesis, para así separar claramente las partes en la
expresión. Por ejemplo, se tendría

$ (forall x in C) med P_x $

pero personalmente no me gusta, ya que me parece una notación algo
sobrecargada.

Cuando se sobrentienda el conjunto del que se toman los valores de $x$, $C$
en el caso anterior, se puede poner simplemente

$ forall x . med P_x $

Observe que la proposición $forall x in C . med P_x$ es equivalente a la
proposición $C_P = C$, es decir, en ese caso se da que la extensión del
predicado es igual al universo del predicado.

El cuantificador universal es una generalización de la conjunción ($and$) en
el sentido siguiente. Supongamos que $C$ sea un conjunto finito; por
ejemplo, $C = {1, 2, 3}$. Entonces, la proposición $forall x in C . med P_x$
es equivalente a la proposición $P_1 and P_2 and P_3$.





==== Cuantificador existencial

Sería el cuantificador dual al universal.

Sea $C$ un conjunto y $P_x$ un predicado sobre $C$. Consideremos el
subconjunto donde se cumple $P_x$:

$ C_P = {x in C | P_x} $

Si existe un elemento $x in C$ que satisface $P_x$, escribiremos

$ exists x in C . med P_x $

que se lee, "Existe al menos un elemento $x$ de $C$ que satisface $P_x$.", o
cualquier enunciado que exprese esto mismo. En particular, debe saber que se
puede eliminar la parte "al menos" ya que en la terminología matemática a
este respecto se considera como redundante. Es decir, si se dice "existe
un...", se considera equivalente a "existe al menos un...". Si deseamos
expresar que solo existe uno deberemos expresarlo de forma explícita:
"existe un único...".

El símbolo '$exists$' se denomina _cuantificador existencial_ (_existential
quantifier_), y transforma un predicado en una proposición.

También se podría expresar lo anterior como

$ (exists x in C) med P_x $

Cuando se sobrentienda el conjunto del que se toman los valores de $x$, $C$
en el caso anterior, se puede poner simplemente

$ exists x . med P_x $

Observe que la proposición $exists x in C . med P_x$ es equivalente a la
proposición $C_P eq.not emptyset$, es decir, expresa que la extensión del
predicado al conjunto referencial no es el conjunto vacío.

El cuantificador existencial es una generalización de la disyunción ($or$)
en el sentido siguiente. Supongamos que $C$ sea un conjunto finito. por
ejemplo $C = {1, 2, 3}$. Entonces la proposición $exists x in C . med P_x$
es equivalente a la proposición $P_1 or P_2 or P_3$.

// TODO Creo que a lo siguiente lo llaman dummy variable.

La variable empleada en la sintaxis de un predicado con cuantificadores no
tiene ninguna importancia. Tan solo lo tiene el universo de esa variable,
pues la proposición $forall x in C . med P_x$ es equivalente a la
proposición $forall y in C . med P_y$. Análogamente, la proposición $exists
x in C . med P_x$ es equivalente a la proposición $exists z in C . med P_z$.

Los cuantificadores son un complemento muy útil para las expresiones por
comprensión de conjuntos. Veamos algunos ejemplos del uso de los
cuantificadores.

#example[][
  El conjunto de los números pares, ${0, 2, 4, 6, dots.h}$, denotado por
  $2NN$, se escribe con más precisión como

  $ {x in NN | exists k in NN. med x = 2k} $

  A veces, se omite la escritura del cuantificador y se da esta otra:

  $ {x in NN | x = 2k, med k in NN} $

  o incluso

  $ {2k | k in NN} $

  En realidad, en esta ultima expresión del conjunto nos estamos saltando
  las reglas de cómo se define por comprensión un conjunto, pero está
  ampliamente admitido hacerlo de este modo y viene muy bien por razones de
  expresividad.

  Las proposiciones

  $ forall x in RR. med x^2 - 1 = (x + 1)(x - 1) $

  y

  $ exists x in RR. med x + 5 = 3 $

  son ambas verdaderas. La primera es una identidad que se cumple para todos
  los elementos de $RR$, mientras que la segunda plantea una ecuación que
  tiene al menos una solución. Así, por ejemplo,

  $ forall x in RR. quad a x + b = 0
      & med arrow.l.r.double med a = b = 0 \
    forall x in RR. quad a x + b = 0
      & med arrow.l.r.double med (a eq.not 0) or (a = b = 0) $
]

// TODO Este resultado creo que más bien es un teorema que se puede deducir
// fácilmente.

Equivalencia de Predicados. Dos predicados $P_x$ y $Q_x$ son equivalentes
sobre un universo $C$ cuando determinan el mismo subconjunto del mismo, es
decir, $C_P = C_Q$. Se podría expresar como

$ C_P = C_Q quad arrow.l.r.double quad forall x in C . med P_x arrow.l.r Q_x
$

/*
Observación. La forma de escribir matemáticas ha ido variando a lo largo de
los años. Si hace unos años lo usual era escribir los enunciados de los
resultados con el máximo de símbolos posibles, la tendencia actual es la de
no usar tanta simbología, volviendo a usar en parte la prosa. Así, rara vez
se utilizan los símbolos de los cuantificadores, salvo en los temas de
lógica o de conjuntos. Sin embargo hay un uso implícito, o explícito pero
sin símbolos, de ellos. Expresiones como "Si una función real de variable
real es derivable en un punto, entonces la función es continua en ese punto"
y "Un número primo es impar", que aparentemente son predicados sin
cuantificar, desde el punto de vista matemático son dos enunciados que van
cuantificados y significan: "Toda función real de variable real derivable en
un punto es continua en ese punto", que es una proposición verdadera, y
"Todo número primo es impar", que es una proposición falsa pues el número 2
es primo y no es impar.
*/



==== Relación entre los cuantificadores universal y existencial

Aquí supondremos que el universo de la variable $x$ es el conjunto $C$.
Primero, buscaremos la negación de

$ forall x in C. med P_x $

es decir,

$ not (forall x in C. med P_x) $

Es fácil comprender que esto último equivale a

$ exists x in C. med not P_x $

Alternativamente, podíamos haber recurrido a expresarlo en notación
conjuntista.

$ not (forall x in C. med P_x) $

equivale a

$ C_P eq.not C $

Por tanto, 

$ {x in C | P_x} eq.not {x in C} $

TKTK

La otra expresión a la que deseamos hallar su negación es la que tiene al
otro cuantificador.

$ exists x in C. med P_x $

Su negación es

$ not (exists x in C. med P_x) $

y es fácil comprender en lenguaje natural que esto es equivalente a

$ forall x in C. med not P_x $

También, podríamos haberlo demostrado mediante conjuntos. De

$ not (exists x in C. med P_x) $

tenemos

$ C_P = emptyset $

TKTK.

En definitiva, se cumplen las equivalencias siguientes (omitiendo el
universo del predicado):

$ not (forall x. med P_x)
    & quad arrow.l.r.double quad exists x. med not P_x \
  not (exists x. med P_x)
    & quad arrow.l.r.double quad forall x. med not P_x $

Estas equivalencias se usan en la práctica para manipular expresiones
lógicas de predicados y llegar a obtener conclusiones de una forma más
sistemática que si tuviésemos que razonarlo TKTK.

Concretamente, nos permiten resolver por la "vía rápida" muchos de los
problemas que se nos presenten. Así, si tenemos que demostrar que no es
cierto que se cumpla una propiedad $P_x$ para todos los elementos de un
conjunto $C$, es decir, $not (forall x in C . med P_x)$, gracias a la
primera de estas equivalencias podemos comprobar que es cierto simplemente
demostrando que existe un elemento para el que no se cumple, que no es más
que demostrar que es cierto su predicado equivalente $exists x in C . med
not P_x$. En este tipo de demostraciones se dice que se ha hecho uso de un
_contraejemplo_ (_counterexample_), y se ven con bastante frecuencia en las
matemáticas. Evidentemente, se trata de demostraciones muy cómodas.

#exercise[][
  La proposición $forall x in RR. med x lt.eq x^2$ es falsa. Es decir,
  deseamos demostrar

  $ not(forall x in RR. med x lt.eq x^2) $

  Como sabemos, esto equivale a

  $ exists x in RR. med not (x lt.eq x^2) $

  o, lo que es lo mismo,

  $ exists x in RR. med x lt.eq.not x^2 $

  o, lo que es lo mismo,

  $ exists x in RR. med x gt x^2 $

  Esto no es más que una demostración mediante un contraejemplo. Llamaremos
  $x_0$ al parámetro TKTK. Si $x_0 = 1 \/ 2$, se obtiene que $x_0^2 = 1 \/
  4$ y, por tanto, se tiene que $x_0 gt x_0^2$.
]





