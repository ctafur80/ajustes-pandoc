
#import "../../typst-maths-book-template/main-template.typ": *





/*
Primero, vamos a ver los básicos y luego iremos subiendo en complejidad.

Deberá memorizar todas las tablas de verdad de los operadores básicos que se
presentan aquí. No es complicado.

Una vez que las tenga memorizadas, para aplicarlas en los ejercicios
conviene fijarse en los resultados que aparecen con menor frecuencia en la
tabla. Esto le ahorrará trabajo.
*/

A continuación presentamos los distintos operadores y, concretamente, sus
*tablas de verdad* (_truth tables_), que nos sirven para ver cómo se
comportan estos.




=== Negación

Dada la proposición

#table(columns: 2,
  $p$, [El 4 es un número par.]
)

la negación de esta proposición es:

#table(columns: 2,
  $not p$, [El 4 no es un número par.]
)

y se puede designar de varias maneras: $not p$, $tilde.op #h(-1pt) p$, "no
$p$", $p'$, $dash(p)$, etc. La última es la que se usa en la notación para
las ciencias de la computación y los sistemas electrónicos digitales. En ese
ámbito, a este operador se le conoce como el _operador NOT_. En nuestro
caso, usaremos $not$.

Se trata de un operador que actúa sobre una única proposición, es decir, es
un operador unario, aunque nada impide que esa proposición sea compuesta.

Concretamente, en este ejemplo se tiene que $p = 1$ (verdad), mientras que
$not p = 0$ (falso).

En general, la negación de una proposición $p$ es otra proposición $not p$
que es cierta si $p$ es falsa, y falsa si $p$ es cierta. La tabla siguiente
indica los valores de $not p$ en función del valor de $p$, es decir, es la
tabla de verdad de este operador.

#align(center)[
#table(columns: 2,
  table.header($p$, $not p$),
  $0$, $1$,
  $1$, $0$,
)]

En realidad, los lenguajes naturales pueden dar lugar a cierta confusión, y
el operador de negación no está a salvo de esta. Para asegurarse de que
obtiene realmente una negación de una proposición dada, lo que puede hacer
es anteponer, a su enunciado, "No es verdad que...". Esa sería la forma
infalible de obtener su negación. A partir de esta, podrá crear si lo desea
enunciados alternativos que signifiquen lo mismo. Para el ejemplo anterior
se tendría

#table(columns: 2,
  $not p$, [No es verdad que el 4 es un número par.]
)

que veríamos fácilmente que se puede convertir en

#table(columns: 2,
  $not p$, [El 4 no es un número par.]
)

o incluso

#table(columns: 2,
  $not p$, [El 4 es impar.]
)




=== Disyunción

La disyunción es una conectiva sobre dos o más proposiciones, al igual que
las demás que aparecerán en esta sección. De momento, nos limitaremos a la
que une dos proposiciones, pero luego veremos esta misma operación para más.

Dadas las proposiciones

#table(columns: 2,
  $p$, [El 4 es un número par.],
  $q$, [El 4 es un número impar.]
)

la proposición disyunción de $p$ y $q$, expresada como "$p or q$", es

#table(columns: 2,
  $p or q$, [El 4 es un número par o el 4 es un número impar.]
)

que se podría decir de una forma más breve y elegante como

#table(columns: 2,
  $p or q$, [El 4 es un número par o impar.]
)

Otra simbología equivalente sería $p + q$, para el ámbito de las ciencias de
la computación y los sistemas electrónicos digitales. En ese ámbito, al
operador disyunción se le conoce también como _operador OR_. También hay
quien usa la simbología $p union q$, aunque esta puede confundirse con
cierta notación de la teoría de conjuntos, como verá más adelante.

Concretamente, en este ejemplo, "el 4 es un número par o impar", se tiene
que $p = 1$, es decir, $p$ es cierta, y $q = 0$, es falsa; y la disyunción
es la proposición compuesta $p or q = 1$.

La tabla siguiente representa el comportamiento del operador disyunción.

#align(center)[
#table(columns: 3,
  table.header($p$, $q$, $p or q$),
  $0$, $0$, $0$,
  $0$, $1$, $1$,
  $1$, $0$, $1$,
  $1$, $1$, $1$,
)]

La proposición será verdadera cuando al menos una de sus dos proposiciones
constituyentes sea verdadera, y solo puede ser falsa si son ambas falsas
simultáneamente.





==== Dos tipos de disyunciones

En español, un lenguaje natural, la palabra que indica una disyunción es
_o_.#footnote[Morfológicamente es una conjunción disyuntiva. TKTK.] Esta
puede aparecer en dos variantes. Veámoslo mediante dos ejemplos. En el
enunciado

#quote[
  El medicamento está indicado para el dolor de cabeza o la fiebre.
]

se indica que se debe tomar el medicamento si se cumple al menos uno de los
dos requisitos: tener dolor de cabeza o tener fiebre; pudiendo darse que se
tengan ambos síntomas simultáneamente. Se trataría de una disyunción
_inclusiva_. Sin embargo, en

#quote[
  Compraré el regalo hoy o mañana.
]

parece que el _o_ es excluyente ya que, si compro el regalo hoy, no lo
compraré mañana, y viceversa.

Como ve, aunque se expresan del mismo modo, se comportan de un modo
ligeramente distinto. El significado de operador lógico disyunción, '$or$',
es como en el primero de estos casos, es decir, se trata de lo que suelen
llamar una *_o_ inclusiva*. La del segundo ejemplo sería una *_o_
exclusiva*. También veremos más adelante las de este último tipo, pero
tienen menos importancia que las anteriores.

En los lenguajes naturales, al contrario que en la lógica, la variedad de
disyunción de la que se trata no será siempre la misma y la única forma de
saber de cuál se trata será deducirlo de la información contextual. Este
sería un ejemplo de la ambigüedad que existe en los lenguajes naturales y
por qué es conveniente hacer uso de un lenguaje formal para el estudio de la
lógica.

En ciencias de la computación y sistemas electrónicos digitales, se suele
denotar por el símbolo '$xor$'. En este caso, se tendría que la proposición
$p xor q$ es cierta.





=== Conjunción

Dadas las proposiciones

#table(columns: 2,
  $p$, [El 4 es un número par.],
  $q$, [El 9 es un número impar.]
)

la proposición conjunción de $p$ y $q$, que se suele designar por "$p and
q$", es:

#table(columns: 2,
  $p and q$, [El 4 es un número par y el 9 es un número impar.]
)

y se representa con alguna de las expresiones $p and q$, $p dot.op q$, $p
inter q$, etc. En el ámbito de las ciencias de la computación y los sistemas
electrónicos digitales, se usa $p dot.op q$ y a este operador se le conoce
como el _operador AND_. Nosotros usaremos '$and$'.

En este caso se tiene que, $p = 1$, $q = 1$ y $p and q = 1$.

En la tabla siguiente se muestra su comportamiento. La proposición $p and q$
es verdadera solo si ambas proposiciones son verdaderas, y es falsa si al
menos una de las dos es falsa.

#align(center)[
#table(columns: 3,
  table.header($p$, $q$, $p and q$),
  $0$, $0$, $0$,
  $0$, $1$, $0$,
  $1$, $0$, $0$,
  $1$, $1$, $1$,
)]




=== Condicional

Dadas las proposiciones

#table(columns: 2,
  $p$, [El 8 es un número par.],
  $q$, [El 8 es suma de dos números iguales.]
)

la proposición condicional con forma abstracta

#quote[
  Si $p$, entonces $q$.
]

sería, concretando para este ejemplo,

#table(columns: 2,
  $p arrow.r.long q$,
  [Si el 8 es un número par, entonces es suma de dos números iguales.]
)

y se representa con alguna de las notaciones siguientes: $p arrow.r q$, $p
arrow.r.long q$, $p arrow.r.long.double q$, etc.

En este caso, $p = 1$, $q = 1$ y $p arrow.r.long q = 1$.

#figure(
  table(columns: 3,
    table.header($p$, $q$, $p arrow.r.long q$),
    $0$, $0$, $1$,
    $0$, $1$, $1$,
    $1$, $0$, $0$,
    $1$, $1$, $1$,
  ),
  caption: [Tabla de verdad del operador condicional],
  kind: table
) <tbl-verdad-cond>

La proposición $p arrow.r.long q$ es falsa únicamente si $p$ es verdadera y
$q$ es falsa.

Al contrario de lo que sucedía con los operadores anteriores, en este existe
cierta asimetría y, por eso, se da nombres a las proposiciones
constituyentes. De la proposición $p arrow.r.long q$, se suele decir que $p$
es el _antecedente_ y $q$ el _consecuente_.





==== Proposición vacuamente cierta

A la vista de la @tbl-verdad-cond, puede que le llame la atención cómo se
comporta el operador condicional cuando el antecedente es falso.

Existen razones para argumentar que la tabla tiene que ser esta y no otra,
pero no entraremos en tanto detalle, pues en esta asignatura la lógica la
usaremos más bien como una herramienta para las matemáticas. Si no le
convence que sea así, piense que se trata de un "tecnicismo" que le
permitirá ahorrarse trabajo mental en bastantes situaciones. Ya lo verá,
pues esos casos aparecen con bastante frecuencia en esta asignatura, y en
otras.

Cuando se determina que una proposición condicional es cierta porque
demostramos que su antecedente solo puede ser falso, diremos que se trata de
una proposición *vacuamente cierta* (_vacuously true_). Hay quien explica
esto que acabo de decir mediante el enunciado "De un antecedente falso se
deduce cualquier cosa". Así, por ejemplo, podríamos afirmar que todos los
unicornios son de color rosa. Es como si la carga de la prueba estuviese en
el receptor del mensaje; no en quien lo emite. Si yo digo "Todos los
unicornios son de color rosa" y usted no me demuestra con un contraejemplo
que no es así, ya que no existen los unicornios, técnicamente podemos
afirmar que mi afirmación es cierta.





==== Condición necesaria y condición suficiente

Otra terminología que verá muy a menudo en matemáticas es la de condición
necesaria y condición suficiente, que aparecen cuando se tiene un
condicional. Si se tienen dos proposiciones $p$ y $q$ y una proposición
compuesta $p arrow.r.long q$, se tendrá que $p$ es una *condición
suficiente* para que se dé $q$ y, por otro lado, que $q$ es una *condición
necesaria* para que se dé $p$.

La mejor forma de comprender esto es fijándose en la tabla de verdad del
operador condicional. Por ejemplo, comencemos por la condición de
suficiencia: $p$ es suficiente para que se dé $q$. Si se fija en la tabla,
bajo la condición de que $p = 1$, se tiene que las proposiciones $q$ y $p
arrow.r.long q$ tienen el mismo comportamiento. Que tengan el mismo
comportamiento lo expresaremos como que son equivalentes; lo veremos algo
más adelante en este mismo capítulo.

Vamos ahora con la condición de necesariedad: $q$ es necesario para que se
dé $p$. Fijándonos en si se da $p arrow.r.long q$ y que no se dé $q$, es
decir, que se dé $q = 0$, se tiene que $p = 0$.

En cualquier caso, si no lo comprende, no se preocupe. Después veremos una
herramienta que le servirá para comprenderlo de forma muy sencilla. Cuando
vea esa herramienta, comprenderá por qué dije que la lógica permite
sistematizar el razonamiento. Es, tal y como dijimos, como si le permitiera
razonar en "piloto automático".

/*
A este respecto, creo que es fácil comprender por qué se da la condición de
suficiencia, pero quizás no comprenda la otra, la de necesariedad.

Veamos primero la de suficiencia. Fijándonos en la @tbl-verdad-cond, se
tiene que, para los valores en los que $p = 1$, la proposición compuesta $p
arrow.r.long q$ es verdadera solo cuando se tiene la combinación $p = 1$ y
$q = 1$. En la otra, es decir, cuando $p = 1$ y $q = 0$, se tiene que $p
arrow.r.long q$ es falsa. Debido a esto, se puede afirmar que basta con que
$p$ sea cierta para que también lo sea $q$.

Veamos ahora la condición de necesariedad. Esta puede pensarla fijándose en
cómo varían los valores de $p$ en función de los de $q$ en la misma tabla de
verdad.
*/





=== Bicondicional
<bicondicional>

Dadas las proposiciones

#table(columns: 2,
  $p$, [El 8 es un número par.],
  $q$, [El 8 es divisible por 2.]
)

la proposición bicondicional

#quote[
  $p$ si y solo si $q$.
]

sería

#table(columns: 2,
  $p arrow.l.r q$,
  [El 8 es un número par si y solo si también es divisible por 2.]
)

y se puede representar simbólicamente de diversas formas: $p arrow.l.r q$,
$p arrow.l.r.long q$, $p arrow.l.r.double q$, $p arrow.l.r.double.long q$,
etc.

En este ejemplo, $p = 1$, $q = 1$ y $p arrow.l.r q = 1$.

Se comporta como indica la tabla de verdad siguiente:

#align(center)[
#table(columns: 3,
  table.header($p$, $q$, $p arrow.l.r q$),
  $0$, $0$, $1$,
  $0$, $1$, $0$,
  $1$, $0$, $0$,
  $1$, $1$, $1$,
)]

La proposición $p arrow.l.r q$ es verdadera solo si $p$ y $q$ toman el mismo
valor. A la vista de esta tabla, es evidente que el bicondicional sería algo
así como una igualdad, solo que en la lógica no existe la igualdad, en
principio TKTK. Si se tiene una proposición con un bicondicional y es, en
general, verdadera, las proposiciones que la constituyen se dice que son
*equivalentes* (_equivalent_).

Cuando se sabe que una proposición con un bicondicional es verdadera, tan
solo hay que estudiar si alguna de las proposiciones es verdadera, para
concluir que la otra también lo es. O que es falsa para demostrar que la
otra también lo es. Esto es algo que se puede usar para hacer
demostraciones, y, de hecho, se usa bastante; por ejemplo, en combinatoria.
Es decir, esto nos permite, en muchos casos, demostrar algo indirectamente
simplemente demostrando otra cosa que sea equivalente pero que nos parezca
más sencilla de demostrar.

Otras formas frecuentes de expresar esta equivalencia entre proposiciones en
la literatura matemática son: "$p$ si y solo si $q$", que se resume en la
expresión "$p$ ssi $q$" (en inglés, "$p$ iff $q$").

#example[][
  Dentro del contexto matemático, podemos encontrar proposiciones con los
  operadores anteriores.

  #quote[
    La función $f(x) = 1 \/ x$ no está definida para $x = 0$.
  ]

  Se trata de una proposición de negación verdadera, $not p$, donde la
  proposición $p$ es:

  #table(columns: 2,
    $p$, [La función $f(x) = 1 \/ x$ está definida para $x = 0$.]
  )

  que es falsa.

  La proposición

  #quote[
    El punto $(1, 1)$ está contenido en la región del plano $x^2 + y^2 lt.eq
    4$.
  ]

  se puede ver como una proposición de disyunción, $p or q$, donde

  #table(columns: 2,
    $p$, [El punto $(1, 1)$ está contenido en la región del plano $x^2 +
      y^2 < 4$.],
    $q$, [El punto $(1, 1)$ está contenido en la región del plano $x^2 +
      y^2 = 4$.]
  )

  Se tiene que $p = 1$, $q = 0$ y $p or q = 1$.

  La proposición

  #quote[
    La función $f(x) = x^2$ es continua en $[0, 1]$ y derivable en $(0, 1)$.
  ]

  se puede ver como una proposición de conjunción verdadera, $p and q$,
  donde las proposiciones

  #table(columns: 2,
    $p$, [La función $f(x) = x^2$ es continua en $[0, 1]$.],
    $q$, [La función $f(x) = x^2$ es derivable en $(0, 1)$.]
  )

  son ambas verdaderas.

  Dentro del contexto matemático, podemos encontrar proposiciones con
  conectores condicionales como:

  #quote[
    Al ser $f(x) = 3 x^3 + 2 x^2 + x$ una función derivable en $RR$,
    entonces $f(x)$ es continua en todo $RR$.
  ]

  Se trata de una proposición condicional verdadera, $p arrow.r.long q$,
  donde la proposición

  #table(columns: 2,
    $p$, [La función $f(x) = 3 x^3 + 2 x^2 + x$ es derivable en $RR$.]
  )

  es verdadera y la proposición

  #table(columns: 2,
    $q$, [La función $f(x) = 3 x^3 + 2 x^2 + x$ es continua en $RR$.]
  )

  también es verdadera.

  En este caso decimos que la derivabilidad de la función $f(x) = 3 x^3 + 2
  x^2 x$ en $RR$ implica la continuidad de esta en todo $RR$.

  Tenemos

  #quote[
    La dimensión de $RR^2$ es 2 si y solo si el conjunto ${(1, 0),(0, 1)}$
    constituye una base de $RR^2$.
  ]

  Se trata de una proposición bicondicional verdadera, $p arrow.l.r q$,
  donde la proposición

  #table(columns: 2,
    $p$, [La dimensión de $RR^2$ es 2.]
  )

  es verdadera y la proposición

  #table(columns: 2,
    $q$, [El conjunto ${(1, 0),(0, 1)}$ es una base de $RR^2$.]
  )

  también es verdadera.
]

Si nos fijamos en la proposición condicional $p arrow.r q$, podemos tener
otras proposiciones condicionales que tomarán ciertas designaciones respecto
a esta:

#figure(
  align(center)[
  #table(columns: 2,
  align: (center, left),
  // align: (col, row) => (left,left,).at(col),
  table.header([Proposición], [Designación respecto a $p arrow.r.long q$]),
  $q arrow.r.long p$,
  [su condicional recíproco],
  $not p arrow.r.long not q$,
  [su condicional contrario],
  $not q arrow.r.long not p$,
  [su condicional contrarrecíproco],
)])

De estos, el más importante es el contrarrecíproco, y se usa en muchas
demostraciones. Se volverá a ver en este capítulo.




=== Operadores que actúan sobre una proposición

¿Cuántos operadores que actúen sobre una única proposición se pueden
definir? Hay tantos como tablas de verdad distintas se puedan construir con
una única proposición $p$. En la tabla siguiente mostramos sus respectivas
tablas de verdad.

#align(center)[
#table(columns: 5,
  table.header($p$, $C_0 p$, $C_1 p$, $C_2 p$, $C_3 p$),
  $0$, $0$, $0$, $1$, $1$,
  $1$, $0$, $1$, $0$, $1$,
)]

Hemos designado a los operadores por $C_0$, $C_1$, $C_2$ y $C_3$, que se
corresponden con las expresiones de los números del 0 al 3 en notación
binaria: $00$, $01$, $10$ y $11$.

El operador $C_1$ es el operador identidad ya que no altera los valores de
la proposición; es decir, $C_1 p arrow.l.r.double p$. El operador $C_2$ es
la negación, es decir, $C_2 p arrow.l.r.double not p$. Recuerde que, tal y
como explicamos antes, la equivalencia la marca el operador bicondicional
(vea @bicondicional).

Advierta que la notación que usamos para un operador sobre una sola
proposición es la notación prefija, ya que es la que se suele usar en los
operadores unarios.





=== Operadores que actúan sobre dos proposiciones

¿Cuántas operaciones que actúen sobre dos proposiciones se pueden definir?
Si se escriben todas las posibles tablas de verdad para dos proposiciones
$p$ y $q$, se comprueba que hay 16 tablas distintas.

#figure(
  align(center)[
  #table(columns: 10,
    table.header($p$, $q$, $p med C_0 med q$, $p med C_1 med q$,
      $p med C_2 med q$, $p med C_3 med q$, $p med C_4 med q$,
      $p med C_5 med q$, $p med C_6 med q$, $p med C_7 med q$),
    $0$, $0$, $0$, $0$, $0$, $0$, $0$, $0$, $0$, $0$,
    $0$, $1$, $0$, $0$, $0$, $0$, $1$, $1$, $1$, $1$,
    $1$, $0$, $0$, $0$, $1$, $1$, $0$, $0$, $1$, $1$,
    $1$, $1$, $0$, $1$, $0$, $1$, $0$, $1$, $0$, $1$,
  )
  #table(columns: 10,
    table.header($p$, $q$, $p med C_8 med q$, $p med C_9 med q$,
      $p med C_10 med q$, $p med C_11 med q$, $p med C_12 med q$,
      $p med C_13 med q$, $p med C_14 med q$, $p med C_15 med q$),
    $0$, $0$, $1$, $1$, $1$, $1$, $1$, $1$, $1$, $1$,
    $0$, $1$, $0$, $0$, $0$, $0$, $1$, $1$, $1$, $1$,
    $1$, $0$, $0$, $0$, $1$, $1$, $0$, $0$, $1$, $1$,
    $1$, $1$, $0$, $1$, $0$, $1$, $0$, $1$, $0$, $1$,
  )]
)

Por tanto, se pueden definir 16 operadores distintos, uno por cada una de
las tablas, y los representamos por esos símbolos: $C_0, C_1, dots.h, C_15$,
que se corresponden con los números del $0$ al $15$ en notación binaria:
$0000, 0001, 0010, dots.h, 1111$.

Observemos que a algunos de estos operadores ya los conocemos. Por ejemplo,
$C_1$ es el operador conjunción, $p and q$, $C_7$ el disyunción, $p or q$,
$C_9$ el bicondicional, $p arrow.l.r q$, y $C_13$ el condicional, $p arrow.r
q$.

En la tabla anterior, al operador $C_6$ se le denomina _disyunción
excluyente_, que es como la otra variedad de la disyunción que mencionamos
antes, la _o_ exclusiva.





