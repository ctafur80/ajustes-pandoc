
#import "../../typst-maths-book-template/main-template.typ": *




Antes de seguir, conviene aclarar que en este texto seremos algo laxos en
nuestro uso de la equivalencia de proposiciones. Con el fin de evitar
sobrecargar la notación simbólica con paréntesis, adoptaremos la regla de
ahorrarnos los paréntesis, corchetes o llaves al escribir la equivalencia
entre dos proposiciones, marcada con el símbolo '$arrow.l.r.double$'. Las
expresiones situadas a la derecha e izquierda del mismo constituyen las
proposiciones equivalentes, aunque vayan sin paréntesis. Por ejemplo, se
escribe

$ p or (q and r) quad arrow.l.r.double quad (p or q) and (p or r) $

para indicar que las proposiciones $p or (q and r)$ y $(p or q) and (p or
r)$ son equivalentes, en lugar de

$ [p or (q and r)] arrow.l.r.double [(p or q) and (p or r)] $

No obstante, a veces se usará una expresión de este último estilo.

Lo que sí que haremos con frecuencia es marcar la separación de las
distintas proposiciones con mayor espacio. TKTK.





=== Reglas lógicas equivalentes con una proposición

Con una proposición simple $p$ y el operador negación, $not$, se pueden
escribir aparentemente muchas proposiciones nuevas. Por ejemplo, $not p$,
$not (not p)$, $not (not (not p))$, etc., aunque en realidad no son
necesarios los paréntesis; se puede poner perfectamente $not p$, $not not
p$, $not not not p$, etc.

En realidad, tal y como vamos a demostrar ahora, en toda esa lista de
proposiciones se tienen únicamente dos proposiciones: $p$ y $not p$. Las
demás serán equivalentes a una de estas. Puede verlo fácilmente en las
tablas de $not p$ y $not not p$.

#align(center)[
#table(columns: 4,
  table.header($p$, $not p$, $not not p$, $not not not p$),
  $0$, $1$, $0$, $1$,
  $1$, $0$, $1$, $0$,
)]

Se ve claramente en la tabla de verdad que se dan las equivalencias
siguientes:

$ p       & arrow.l.r.double not not p \
  not p   & arrow.l.r.double not not not p $

Coloquialmente, la primera de estas reglas (o leyes) se expresa diciendo que
"*una doble negación afirma*". Es decir, podemos sustituir $not not p$ por
$p$ o viceversa allí donde aparezcan. En la tabla también se ve que se
pueden sustituir $not p$ y $not not not p$.

En general, se emplea la expresión más corta, aunque algunas veces puede
interesar hacer uso de una más extensa.

Este sería un caso práctico de la equivalencia que mencionamos antes al
hablar del operador bicondicional. Las reglas (o leyes) de inferencia no son
más que equivalencias de proposiciones. Gracias a esas equivalencias,
podemos manipular las expresiones lógicas y obtener algunas más simples.

Tal y como vimos antes, con una única proposición $p$, solo hay cuatro
tablas de verdad posibles.

#align(center)[
#table(columns: 5,
  table.header($p$, $bb(0)$, $p$, $not p$, $bb(1)$),
  $0$, $0$, $0$, $1$, $1$,
  $1$, $0$, $1$, $0$, $1$,
)]

Advierta que el encabezado de las columnas 2 y 5 en realidad no es un valor
lógico. Es decir, $bb(0)$ no es $0$ y $bb(1)$ no es $1$. Si se fija, se usa
un recurso tipográfico que las hace algo diferentes; lo que en el lenguaje
TeX llaman _blackboard bold_. Los primeros representan a tablas (o, lo que
es lo mismo, proposiciones), y, los segundos, a valores. A la tabla $bb(0)$
se la conoce como _contradicción_ y, a $bb(1)$, _tautología_. Más adelante,
se hablará más sobre estas.

Ahora, vamos a ver algunas otras reglas con una única proposición.





==== Reglas de simplificación

Con una única proposición $p$ y un conector distinto de $not$, se pueden
escribir muchas proposiciones nuevas, pero entre ellas se cumplen las
siguientes leyes de simplificación:

$ p or p & arrow.l.r p \
  p and p & arrow.l.r p \
  p arrow.l.r p & arrow.l.r bb(1) \
  p arrow.r p & arrow.l.r bb(1) $

Por tanto, en una expresión de una proposición lógica compuesta en la que
aparezca $p or p$, esta parte se puede sustituir por $p$, con lo que podemos
simplificar la expresión.

Las demostraciones de las equivalencias anteriores son sencillas de hacer.
Simplemente, hay que comparar las tablas de verdad y ver que las
proposiciones son equivalentes, es decir, que haciendo una equivalencia
entre estas obtenemos una tautología, $bb(1)$.

// TODO Hacer la demostración de alguna de estas.

Cualquiera de estas proposiciones, al cumplirse, se trata por tanto de una
regla (o ley) de inferencia.

Con una única proposición $p$ y varios conectores distintos, se pueden
escribir proposiciones nuevas, como, por ejemplo, $p or not p$, $p and not
p$, ...




==== Ley del tercio excluso

La proposición $p or not p$ es una tautología. En forma simbólica:

$ p or not p arrow.l.r bb(1) $

Se demuestra fácilmente como las anteriores, a partir de la tabla de verdad.

Esta ley se expresa coloquialmente diciendo que "Siempre se cumple una
proposición o su negación". Por ejemplo,

#quote[
  El número $pi$ es racional o irracional.
]

He visto que hay quien la llama también de otras formas: _ley del tercero
excluyente_, _ley del tercero excluido_, _ley del mediano excluido_, etc. En
inglés la llaman _law of the excluded middle_.



==== Ley de contradicción

La proposición $p and not p$ es una contradicción. En forma simbólica:

$ p and not p arrow.l.r bb(0) $

Esto se expresa coloquialmente diciendo que "Nunca se cumple una proposición
y su negación". Por ejemplo,

#quote[
  El número $3$ es primo y compuesto.
]

es una proposición falsa.

Existe una ley para dos proposiciones que sería un caso genérico de esta y
que se emplea mucho en demostraciones matemáticas. Se verá más adelante.




=== Reglas lógicas equivalentes con dos proposiciones

Con dos proposiciones $p$ y $q$ y cualquier conjunto de conectores, solo se
pueden construir 16 proposiciones distintas. Esto se debe a que solo hay 16
tablas de verdad distintas. Las más interesantes son las siguientes:

#align(center)[
#table(columns: 9,
  table.header($p$, $q$, $bb(0)$, $p$, $q$, $not p$, $not q$, $p and q$,
    $p or q$),
  $0$, $0$, $0$, $0$, $0$, $1$, $1$, $0$, $0$,
  $0$, $1$, $0$, $0$, $1$, $1$, $0$, $0$, $1$,
  $1$, $0$, $0$, $1$, $0$, $0$, $1$, $0$, $1$,
  $1$, $1$, $0$, $1$, $1$, $0$, $0$, $1$, $1$,
)]

Si bien es cierto que se puede generar una expresión sintácticamente
correcta tan grande como se desee, pues para ello basta combinar esas dos
proposiciones empleando los conectores y los paréntesis necesarios, no cabe
duda de que esta expresión escrita debe tener un comportamiento igual a una
de esas 16 tablas.

De esta forma, se entiende que se pueden escribir muchas proposiciones, pero
necesariamente deben ser equivalentes a otras proposiciones que tienen una
escritura más corta. Con el fin de disponer de expresiones más cortas,
conviene mostrar las siguientes equivalencias, que son presentadas como
reglas lógicas.

A continuación, se presentan las principales leyes que se cumplen al
combinar dos proposiciones.




==== Reglas de identidad

$ p or 0 & arrow.l.r.double p \
  p and 1 & arrow.l.r.double p \
  1 arrow.r p & arrow.l.r.double p $





==== Reglas de absorción

A estas en TKTK las incluyen en las de identidad, pero creo que en realidad
no lo serían.

$ p and 0 & arrow.l.r bb(0) \
  p or 1  & arrow.l.r bb(1) $




==== Reglas conmutativas

Para algunos operadores, el orden en el que aparecen los operandos no es
relevante.

$ p or q        & arrow.l.r.double q or p \
  p and q       & arrow.l.r.double q and p \
  p arrow.l.r q & arrow.l.r.double q arrow.l.r p $

Como particularidad, advierta que no se cumple para el condicional.

$ p arrow.r q not arrow.l.r q arrow.r p $





==== Reglas de De Morgan

La negación de una disyunción es la conjunción de negaciones y, por otro
lado, la negación de una conjunción es la disyunción de conjunciones.

$ not (p or q)  & arrow.l.r.double not p and not q \
  not (p and q) & arrow.l.r.double not p or not q $

Suelen tener bastante uso.

Casi todas estas reglas se demuestran fácilmente viendo sus tablas de
verdad.





==== Reglas del condicional

$ p arrow.r q & arrow.l.r.double not p or q \
  p arrow.r q & arrow.l.r.double not (p and not q) \
  p arrow.r q & arrow.l.r.double (p and q) arrow.l.r p $

De estas cuatro reglas del condicional, la más destacada es aquella que
establece que $p arrow.r q$ es equivalente a $not p or q$. Esta equivalencia
es fundamental en el estudio de la lógica proposicional, ya que permite
transformar implicaciones en una forma disyuntiva, que suele ser más
manejable. Su utilidad radica en simplificar la interpretación y
manipulación de proposiciones complejas en razonamientos formales.

La segunda no sería más que la aplicación de una de las leyes de De Morgan a
la primera, con lo que es fácil de recordar.

A este respecto, existe una particularidad en la notación sobre la flecha
TKTK.





==== Regla del bicondicional

$ p arrow.l.r q arrow.l.r.double (p arrow.r q) and (q arrow.r p) $

Si se cumplen las dos posibles proposiciones condicionales entre dos
proposiciones $p$ y $q$, entonces $p$ y $q$ son equivalentes.

Esta ley se utiliza a menudo en las demostraciones en matemáticas para
demostrar que dos supuestos son equivalentes. Se demuestra que, si el
supuesto primero es crierto, entonces el segundo también lo es. También, que
si el segundo es cierto, también lo es el primero. Por eso se dice, cuando
aparece el bicondicional, que una de las proposiciones es condición
suficiente y necesaria para la otra, y viceversa. Recuerde lo que explicamos
sobre condición necesaria y condición suficiente al hablar del operador
condicional.





==== Regla de contradicción

Se trata de una regla que tiene mucho uso en demostraciones. Simbólicamente
se expresaría como

$ not p arrow.r (q and not q) arrow.l.r.double p $

Lo más común es que en los textos en español la llamen _ley de reducción al
absurdo_, o, incluso, si se ponen pedantes, en su forma en latín: _reductio
ad absurdum_. En inglés es bastante común que la llamen _by contradiction_.

Como acabamos de explicar, se usa con frecuencia en demostraciones en
matemáticas. Funciona del modo siguiente. Para demostrar que un enunciado es
ceierto, se niega dicho enunciado y se demuestra que de tal negación se
deducen una proposición y la negación de esta. Esto sería una contradicción.
Esta se ha producido por asumir que el enunciado es falso, con lo que no
queda otra más que que este sea verdadero.

En realidad, existe una forma más elegante de explicarlo, pero para ello
necesitamos una ley que vemos un poco más adelante. Cuando lleguemos,
daremos una explicación más fácil de entender sobre las demostraciones por
contradicción.

Una demostración bastante popular que hace uso del método de contradicción
es la de que $sqrt(2)$ no es racional. Otra, la demostración de que existen
infinitos números primos.





==== Reglas de transposición

$ p arrow.r q   & arrow.l.r.double not q arrow.r not p \
  p arrow.l.r q & arrow.l.r.double not p arrow.l.r not q $

Advierta que la primera de estas expresa que un condicional es equivalente a
su (condicional) contrarrecíproco. Esta regla se emplea en muchas
demostraciones matemáticas. Por ejemplo, gracias a esta puede entender mejor
por qué funcionan las demostraciones por contradicción, que vimos antes.
TKTK.

Si tiene una proposición condicional, eso indica, tal y como hemos visto,
que, si es cierto el antecedente, entonces también será cierto el
consecuente. A veces, resulta complicado demostrar algo con ese
razonamiento. La primera ley de transposición nos permite usar otro
razonamiento alternativo para el mismo fin. Simplemente, tenemos que
demostrar que es falso el consecuente y, entonces, gracias a esta regla, se
dará que automáticamente el antecedente también será falso.

La demostración de por qué funciona esta regla, al igual que sucede con
todas, está en su tabla de verdad.

#example[][
  Demuestre que el límite de una sucesión, si existe, es único.

  Lo primero que haremos será recordar la definición de límite de una
  sucesión de números reales.

  Una sucesión de números reales ${x_n}$ converge a un $l in RR$ cuando para
  todo $epsilon in RR$ siendo $epsilon > 0$ existe un $n_epsilon in NN$ (que
  depende de $epsilon$) tal que para todo número $n in NN$ que sea $n >
  n_epsilon$ se cumple $|l - x_n| < epsilon$.

  Vamos a demostrarlo por contradicción (también llamada por reducción al
  absurdo). Suponemos que la sucesión ${x_n}$ tiene dos límites: $r$ y $s$.

  De entre todos los valores que puede tomar el $epsilon$ en la definición
  de límite, vamos a tomar el que cumpla $2 epsilon = |r - s|$. Advierta que
  $r$ y $s$ son parámetros, más que variables, con lo que ese $epsilon$
  tendrá un valor determinado para un problema con datos concretos.

  Por un lado, si usamos un hecho que conocemos de los números reales
  llamado desigualdad triangular, podemos ver que

  $ 2 epsilon
    & = |r - s| \
    & = |r - x_n + x_n - s| \
    & lt.eq |r - x_n| + |x_n - s| \
    & = |r - x_n| + |s - x_n| $

  Por otro lado, por la definición de límite de una sucesión de números
  reales, se tiene que para todo $n in NN$ tal que $n > n_epsilon$, se
  tienen

  $ |r - x_n| & < epsilon \
    |s - x_n| & < epsilon $

  y, si sumamos ambas desigualdades, tenemos

  $ |r - x_n| + |s - x_n| < 2 epsilon $

  Cosa que se contradice con lo anterior, es decir, llegamos a la
  desigualdad $2 epsilon < 2 epsilon$, que evidentemente es falsa. Aplicando
  entonces la regla de contradicción, se tiene que el límite de una sucesión
  de números reales, en caso de existir, será siempre único.

  Por cierto, aunque la desigualdad triangular es un hecho que conocemos de
  los números reales, en realidad lo conocemos intuitivamente, sin haberlo
  demostrado. Más adelante, cuando entremos de lleno en el estudio de los
  conjuntos numéricos como $NN$, $RR$, etc., veremos de dónde sale.
]



=== Leyes lógicas equivalentes con tres proposiciones

Con tres proposiciones $p$, $q$ y $r$, y cualquier conjunto de operadores,
solo se pueden construir 256 proposiciones que no sean equivalentes entre
sí. Esto se debe a que solo hay 256 tablas de verdad distintas. Las
mostramos parcialmente en la tabla siguiente. Los valores de verdad se
corresponden con las expresiones de los números del 0 al 255 en notación
binaria: $00000000$, $00000001$, $00000010$, $dots.h$, $11111111$.

#align(center)[
#table(columns: 9,
  table.header($p$, $q$, $r$, $f_0$, $f_1$, $f_2$, $f_3$, $dots.h$,
  $f_255$),
  table.hline(),
  $0$, $0$, $0$, $0$, $0$, $0$, $0$, $dots.h$, $1$,
  $0$, $0$, $1$, $0$, $0$, $0$, $0$, $dots.h$, $1$,
  $0$, $1$, $0$, $0$, $0$, $0$, $0$, $dots.h$, $1$,
  $0$, $1$, $1$, $0$, $0$, $0$, $0$, $dots.h$, $1$,
  $1$, $0$, $0$, $0$, $0$, $0$, $0$, $dots.h$, $1$,
  $1$, $0$, $1$, $0$, $0$, $0$, $0$, $dots.h$, $1$,
  $1$, $1$, $0$, $0$, $0$, $1$, $1$, $dots.h$, $1$,
  $1$, $1$, $1$, $0$, $1$, $0$, $1$, $dots.h$, $1$,
)]

Como ya se ha indicado anteriormente, se puede generar una expresión
sintácticamente correcta tan grande como se desee, al combinar esas 3
proposiciones empleando operadores y los paréntesis necesarios. Cada
expresión escrita se corresponde con alguna de las 256 tablas de verdad
contenidas en la tabla anterior.

Las reglas lógicas siguientes nos permiten expresar operaciones con más de
dos proposiciones y una única conectiva sin paréntesis.




==== Reglas asociativas

$ (p or q) or r               & arrow.l.r.double p or (q or r) \
  (p and q) and r             & arrow.l.r.double p and (q and r) \
  (p arrow.l.r q) arrow.l.r r & arrow.l.r.double p arrow.l.r (q arrow.l.r r) $

Cada regla asociativa establece la forma de operar con más de dos
proposiciones y una misma conectiva. Estas reglas permiten dotar de
significado a las expresiones

$ p or q or r med quad p and q and r med quad p arrow.l.r q arrow.l.r r $

Estas reglas permiten simplificar expresiones compuestas por tres
proposiciones y un único conector lógico, eliminando la necesidad de
paréntesis adicionales.





==== Reglas distributivas

$ p or (q and r)      & arrow.l.r.double (p or q) and (p or r) \
  p and (q or r)      & arrow.l.r.double (p and q) or (p and r) \
  p arrow.r (q or r)  & arrow.l.r.double (p arrow.r q) or (p arrow.r r) \
  p arrow.r (q and r) & arrow.l.r.double (p arrow.r q) and (p arrow.r r) $





=== Reglas lógicas condicionales

Las reglas lógicas expuestas en los apartados anteriores son reglas donde se
muestra la equivalencia de dos proposiciones, y, por lo tanto, una puede ser
sustituida por la otra allí donde sea necesario.

En este apartado, se presentan nuevas tautologías compuestas por un
condicional entre dos proposiciones. Usualmente, a estas tautologías también
se las llama _reglas_ o _leyes_. Recordemos que para indicar que un
condicional es una tautología escribimos el símbolo '$arrow.r.double$' y, al
igual que con las proposiciones equivalentes, cuando se escribe una
implicación entre proposiciones con un único símbolo '$arrow.r.double$', las
expresiones situadas a la izquierda y derecha del símbolo constituyen las
proposiciones de la implicación aunque vayan sin paréntesis.

Con dos proposiciones $p$ y $q$, se tienen las reglas lógicas siguientes.





==== Regla de simplificación condicional

$ p and q arrow.r.double.long p $





==== Regla de ampliación disyuntiva

$ p arrow.r.double.long p or q $






==== Regla de inferencia

$ not p and (p or q)      & arrow.l.r.double q \
  p and (not p or not q)  & arrow.l.r.double not q $

Estas leyes de inferencia se denominan habitualmente #emph[silogismos
disyuntivos];. Aunque se puede llegar a estas fácilmente manipulando las
expresiones en base a otras reglas, como la distributiva, son evidentes a
simple vista. Por ejemplo, la primera se puede interpretar del modo
siguiente:

#quote[
  Si $p or q$ es cierto y, además, se sabe que $p$ es falso, entonces $q$
  será cierto.
]



==== Regla _modus ponens_
<regla-modus-ponens>

O, en su denominación más extensa, _modus ponendo ponens_. Supuesto cierto
el condicional $p arrow.r q$, si se afirma el antecedente, es decir, $p$,
entonces, será cierto también el consecuente, $q$.

$ (p arrow.r q) and p arrow.r.double.long q $

La proposición

#quote[
  Si llueve, entonces el suelo se moja.
]

Se puede descomponer en proposiciones simples unidas por un operador
condicional:

#table(columns: 2,
  $p$, [Llueve. $q$ El suelo se moja.]
)

Entonces, se tendría la siguiente deducción:

#table(columns: 2, align: (right, left),
  $p arrow.r q$, [Si llueve, el suelo se moja.],
  $p$, [Llueve.],
  $therefore$, [El suelo está mojado.]
)

La proposición compuesta sería

$ p arrow.r q $

Si, además, se da $p$, es decir, que llueve, se tiene, según la ley _modus
ponens_,

$ (p arrow.r q) and p arrow.r.double.long q $

es decir, será cierto $q$. Esto se intepretaría como: Si llueve, el suelo se
moja. Adeás, está lloviendo. Por tanto, el suelo estará mojado.





==== Regla _modus tollens_

O, en su denominación más extensa, regla _modus tollendo tollens_. Supuesto
cierto el condicional $p arrow.r q$, si no se cumple el consecuente, $q$,
necesariamente no se cumple el antecedente, $p$. Simbólicamente:

$ (p arrow.r q) and not q arrow.r.double.long not p $

Se podría ver mejor sabiendo que $p arrow.r q$ es equivalente a $not q
arrow.r not p$, tal y como vimos antes. Entonces, la expresión _modus
tollens_ sería equivalente a

$ (not q arrow.r not p) and not q arrow.r.double.long not p $

que sería cierta por la #link(<regla-modus-ponens>)[regla _modus ponens_],
de la sección anterior.

Siguiendo con el ejemplo anterior, imagine que ve que el suelo no está
mojado, $not q$. De esto puede deducir que no ha llovido, $not p$.

#example[][
  Si la función $f (x) = (-x^2)$ tiene un máximo local en el punto $x_0$,
  entonces $f' (x_0) = 0$. Resulta que comprobamos que $f' (x_0) > 0$. Por
  tanto, la función $f (x)$ no tiene un máximo local en $x_0$.

  Con tres o más proposiciones, $p$, $q$, y $r$, se tienen varias leyes que
  el lector puede encontrar entre los enunciados de los ejercicios
  propuestos.
]






