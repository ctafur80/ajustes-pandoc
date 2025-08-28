
#import "../../../typst-maths-book-template/main-template.typ": *


Hoy en día, prácticamente todos los conceptos matemáticos se definen
formalmente en términos conjuntistas, por lo que se puede afirmar que la
teoría de conjuntos y la lógica constituyen la base de las matemáticas. Esto
no quiere decir que en matemáticas siempre estemos haciendo uso de
conjuntos. Hay veces en que nos "elevamos" a un nivel de abstracción
considerable y no mencionamos a los conjuntos ---por ejemplo, usted ha
cursado muchos cursos de matemáticas en la educación primaria y secundaria y
quizás no ha tocado la teoría de conjuntos---, pero usted ahora debe saber
que, en el fondo, lo que hace funcionar a todo, son la lógica y la teoría de
conjuntos.

Aquí, introducimos los conjuntos de una manera intuitiva, es decir, no
mediante un sistema axiomático, que sería lo correcto pero poco práctico
para un primer contacto con los conjuntos.




==== Definición de _conjunto_

Aunque tenga una idea de qué quiere decir la palabra _conjunto_ (_set_),
tanto por su uso cotidiano como por nociones de cursos anteriores de
matemáticas que haya seguido, en realidad es un concepto bastante difícil de
definir, tal y como hemos explicado antes.

Debido a esto, lo que se suele hacer es presentarlo de forma intuitiva, cosa
que en los textos de matemáticas muchas veces califican de "ingenua"
(_naive_ o _naïve_). Así, el estudiante queda satisfecho al conocer lo
básico sobre qué es un conjunto y cómo se comporta, y puede dedicarse a
hacer un uso práctico de este tipo de objetos matemáticos; que es lo que
interesa la mayoría de las veces, en lugar de hacer deliberaciones sobre
cómo se podría definir formalmente ese tipo de objetos.

Además, es bastante común que los textos de matemáticas de nivel
universitario tengan apéndices donde se expone lo básico sobre lógica y
teoría de conjuntos, así como algunos otros conceptos que se tratan aquí. En
esta asignatura, se tratan en bastante mayor detalle TKTK.

Vamos con nuestra definición "ingenua" de _conjunto_.

#block[
  Un _conjunto_ es una colección de objetos.
] <def-conjunto-ingenua>

¿Pero qué es una _colección_? En realidad, como puede intuir usted mismo,
quiere decir lo mismo que _conjunto_, con lo que estaríamos usando en la
definición la palabra a definir, cosa que está prohibida... aunque no
siempre lo está, tal y como veremos más adelante. En cualquier caso, para
esta definición no tiene sentido usar la autorreferencia y se da esta
definición falsa simplemente para que el lector se dé por satisfecho. Una
definición real de este término es mucho más compleja y extensa, y aquí solo
la incluiremos en la sección de comentarios de este capítulo por si está
interesado en conocerla.

Quédese, por tanto, con esta definición "ingenua", o, si lo prefiere, tome
al concepto de _conjunto_ como sinónimo de _colección_, _falimia_,
_agrupación_, etc., sobre los que también tendrá casi con toda seguridad una
idea intuitiva.

Un conjunto lo pueden constituir, por ejemplo, las letras del abecedario de
la lengua española. Otro, los meses del año. Etc.

Los conjuntos se suelen designar mediante letras mayúsculas del alfabeto
latino, o, a veces, de otros alfabetos, como, por ejemplo, el griego: $A$,
$B$, $X$, $Omega$, etc. A veces dependiendo del contexto se seguirán unas
reglas de estilo para designarlos.

A esos objetos que constituyen los conjuntos, en la terminología matemática
se les conoce como *elementos* (_elements_, o _miembros_, _members_). Los
elementos se suelen designar mediante letras minúsculas del alfabeto latino,
o, a veces, de otros alfabetos, como, por ejemplo, el griego: $a$, $b$, $x$,
$omega$, etc. Aunque esto no siempre se tiene por qué cumplir y, además,
existen partes de las matemáticas que tienen a este respecto sus propias
reglas de estilo.

Tan interesante como lo que se dice en la definición es lo que no se dice.
Es decir, se trata de un concepto muy amplio, con pocas limitaciones. Por un
lado, ya que no se especifica lo contrario, no nos interesa la naturaleza de
esos objetos. Existirán, por tanto, conjuntos de objetos de cualquier tipo,
permitiendo la heterogeneidad, es decir, en un conjunto pueden aparecer
objetos que se clasificarían naturalmente como miembros de agrupaciones
distintas, pero eso da igual; pueden aparecer como se desee.

Además, un objeto puede estar en varios conjuntos simultáneamente. También,
nada impide que los objetos del conjunto sean conjuntos a su vez. Bueno, en
realidad, sobre esta última propiedad sí se debería puntualizar algo, pero
eso lo veremos luego.





==== Pertenencia

Existe una relación entre los conjuntos y sus elementos: la _relación de
pertenencia_ de un elemento a un conjunto.

Que una entidad $a$ sea un elemento de un conjunto $C$ se expresa en
notación simbólica como

$ a in C $

cosa que se expresaría verbalmente como "$a$ pertenece a $C$", "$a$ es un
elemento de $C$" o, también, "$C$ contiene a $a$". Por el contrario, si
dicha proposición es falsa, será cierta la proposición negación de esta, es
decir, "$a$ no pertenece a $C$", "$a$ no es un elemento de $C$" o, también,
"$C$ no contiene a $a$", y se designaría por "$a in.not C$".

Por cierto, estoy usando el término _entidad_ ya que no sabemos si esta es
elemento de algún conjunto. En realidad, lo normal es referirnos a esta como
_elemento_ ya que TKTK. Es un lenguaje un poco laxo, pero es algo que nos
permitimos por comodidad.

// TODO Quizás mover lo siguiente a después de definir la expresión de un
// conjunto por caracterización.

Un conjunto está _bien definido_ (_well-defined_) cuando no existe
ambigüedad en la relación de pertenencia, para ningún elemento. Es decir,
cuando se tiene un criterio que permite decidir si un elemento cualquiera
pertenece o no a dicho conjunto. Una expresión como "el elemento $b$
pertenece al conjunto $C$" la interpretaremos como una proposición, como las
que vimos en el capítulo anterior, ya que se trata de un enunciado al que
podemos atribuir un valor lógico.

Aunque quizás en este momento no se le ocurra ningún caso en el que se diese
esa ambigüedad, estrujando un poco el ingenio, tal y como veremos más
adelante, puede que existan "conjuntos" para los que no podemos hacer esa
afirmación. Esas especies de agrupaciones no las consideraremos conjuntos.
Esas ambigüedades se reflejan en las _paradojas_ (_paradoxes_) de la teoría
de conjuntos. Estas motivaron el esfuerzo de crear una teoría de conjuntos
más compleja#footnote[no me refiero a los números complejos, sino a compleja
en general] pero con una base sólida.

#example[][
  Veamos algunos ejemplos de conjuntos:

  + Los números 1 y 2.
  + Las soluciones enteras de la ecuación $x^2 - 3 x + 2 = 0$.
  + Los países de Europa en el año 2010.
  + Las letras del abecedario.
  + Los números pares.
  + Las vocales del abecedario del español.
  + El conjunto formado por el número 2, la vocal _i_, y el museo del Prado.
] <ej-conjuntos-1>



==== Igualdad

Se dice que dos conjuntos $A$ y $C$ son _iguales_, y se escribe $A = C$, si
y solo si tienen los mismos elementos. En caso contrario, se dice que $A$ y
$C$ son _distintos_ y se escribe $A eq.not C$.

En el ej-conjuntos-1, los conjuntos dados en los puntos 1, 6 y 7 están
expresados (o definidos, también se dice) dando una lista de sus elementos.
Cuando escribimos un conjunto mediante una lista de todos sus elementos, se
dice que se ha expresado *por extensión* (_by extension_). En notación
simbólica, se hace poniendo la lista de elementos, separados entre sí por
comas, "envolviéndolos" globalmente entre signos de llaves. Las expresiones

$ A = {1, 2},
  quad B = {a, e, i, o, u},
  quad C = {2, i, "museo del Prado"} $

corresponden a los conjuntos de los puntos 1, 6 y 7 del
#link(<ej-conjuntos-1>)[ejemplo anterior].

Algo que debe saber también sobre los conjuntos es que no se tiene en cuenta
el orden de los elementos ni la multiplicidad de apariciones de estos, ya
que en la definición no se especifica lo contrario. Como dijimos, es una
definición bastante amplia. Como ve, los conjuntos son unos objetos muy
básicos. Así, si

$ A = {1, 2},
  quad D = {1, 1, 2},
  quad E = {2, 1} $

se tiene entonces que $A = D = E$, es decir, se trata del mismo conjunto.
Los elementos son los mismos aunque en el conjunto $D$ el elemento 1 se haya
escrito dos veces y en $E$ se haya alterado el orden de los elementos
respecto a $A$.

Se suele seguir la norma de expresar los conjuntos de la forma más breve
posible, con lo que no es normal que vea un conjunto expresado por extensión
en el que aparece un elemento repetido. En cuanto al orden, aunque tampoco
se tiene en cuenta, lo normal es, por claridad, si existe cierto orden
natural para sus elementos, presentar a estos siguiéndolo; pero no olvide
nunca que eso es simplemente una regla de estilo que no indica nada en la
información sobre el conjunto. Así, por ejemplo, si se trata el conjunto de
los números pares, el conjunto normalmente se expresa del modo siguiente:

$ {2, 4, 6, 8, 10, 12, dots.h} $

Por cierto, es muy común hacer uso de puntos suspensivos,
'$dots.h$',#footnote[A este signo en inglés se le conoce como _ellipsis_.]
para expresar por extensión conjuntos que no terminan nunca, ya que en ese
caso es imposible escribir una lista exhaustiva de estos. Es el caso del
conjunto $A$ anterior. A la vista de los primeros elementos, en el orden en
el que se disponen, el lector debería saber intuir cómo serían los demás. No
es una forma rigurosa de expresar el conjunto, pero se usa bastante en la
práctica. La otra forma de expresar un conjunto, distinta a por extensión,
permite expresar sin ambigüedad conjuntos ilimitados, al ser una forma más
constructiva y rigurosa, pero la veremos más adelante.

Dado un elemento cualquiera $a$, se considera el conjunto cuyo único
elemento es $a$. A este lo denotaremos por ${a}$ y se dice que es un
*conjunto unitario* (_singleton_). Advierta que $a in {a}$, aunque esto no
impide que $a$ también pueda estar en muchos otros conjuntos, y, además, que
las expresiones $a$ y ${a}$ indican cosas distintas: la primera no tiene por
qué ser un conjunto (aunque podría serlo), pero sí la segunda.




==== Subconjuntos

Dados dos conjuntos $A$ y $B$, se dice que "$B$ está incluido en $A$" si y
solo si cualquier elemento del conjunto $B$ es un elemento del conjunto $A$.
De forma simbólica, esta relación de inclusión la denotaremos con la
expresión

$ B subset.eq A $

En este caso, se dice también que "$B$ es un subconjunto de $A$" o que "$B$
está contenido o incluido en $A$". La escritura equivalente $A supset.eq B$
se lee como "$A$ contiene a $B$", o cualquiera de las alternativas como "$B$
está incluido en $A$", que expresa lo mismo que $B subset.eq A$.

Esta relación suele recibir el nombre de _inclusión_ o _contención_ de
conjuntos.

Por cierto, usaremos los términos _conjunto_ y _subconjunto_ según nos
convenga. Es decir, dado un conjunto, nos referiremos a este como
_subconjunto_ de otro en concreto solo si cumple las condiciones para serlo,
pero aun cumpliéndolas no siempre lo llamaremos _subconjunto_ sino que a
veces lo llamaremos _conjunto_, ya que no consideramos relevante su
contención en el otro.

Si no se cumple la inclusión, se escribirá $B subset.eq.not A$.

A este respecto, la terminología puede variar en los distintos textos. TKTK.
En muchos textos encontrará que se usa el símbolo '$subset$', en lugar de
'$subset.eq$'. TKTK. No inclusión. TKTK. Subconjunto propio. TKTK.

#example[][
  El conjunto de los días del fin de semana es un subconjunto del (conjunto)
  de los días de la semana:

  $ {"sábado", "domingo"} subset.eq {"lunes", "martes", "miércoles",
  "jueves", "viernes", "sábado", "domingo"} $

  ya que todo elemento del primer conjunto "aparece" también en el segundo.

  El conjunto de los números naturales que son potencia de 2 es un
  subconjunto del conjunto de los números naturales pares. Tal y como verá
  más adelante, en esta asignatura iremos aprendiendo a usar la simbología y
  así expresar de forma breve y precisa un enunciado como este último.
]

Advierta que, en particular, para todo conjunto $A$, se cumple que $A
subset.eq A$, cosa que es fácil demostrar a partir de la definición de
subconjunto.

Dados dos conjuntos $A$ y $B$, claramente se cumple

$ A = B quad "si y solo si" quad A subset.eq B med "y" med B subset.eq A $

Esta es la forma en la que demostramos en la práctica la igualdad de dos
conjuntos. La solemos llamar _la doble inclusión_.

Una manera sencilla de representar la inclusión o la pertenencia en los
conjuntos se hace mediante los llamados _diagramas de Venn_. En ellos, se
representa cada conjunto mediante un círculo, un óvalo o cualquier área
cerrada en el plano, como en la figura siguiente:

#figure(image("../../../figuras/diagr-venn-1.svg", width: 35mm),
  caption: [Diagrama de Venn de $A$]
)

donde se muestra el conjunto $A = {a, b, c, d, e}$. La posición relativa en
el plano entre los círculos muestra la inclusión entre conjuntos. Se podría
representar también, junto a $A$, el conjunto $B = {a, b, d}$, siendo $B
subset.eq A$, como en la figura siguiente:

#figure(image("../../../figuras/diagr-venn-2.svg", width: 35mm),
  caption: [Diagrama de Venn de $A$ y $B subset.eq A$]
)

Algo que debe saber es que la inclusión de conjuntos cumple la propiedad
transitiva. Es decir, dados 3 conjuntos $A$, $B$, $C$, si se dan $A
subset.eq B$ y $B subset.eq C$, entonces se dará $A subset.eq C$. Es muy
fácil demostrarlo. TKTK.





