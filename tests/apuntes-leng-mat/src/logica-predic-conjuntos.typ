== Capítulo 2. Conjuntos
<cap-conjuntos>
=== 2.1. Algunas ideas sobre conjuntos. Predicados
<algunas-ideas-sobre-conjuntos.-predicados>
En lo que respecta a los conjuntos, aunque existe un formalismo riguroso
para presentar este concepto, normalmente en los cursos introductorios
se opta por dar simplemente unas nociones intuitivas de estos; basta con
que aprenda a operar con ellos, evitando los casos conflictivos que
pueden surgir. Al fin y al cabo, el fin con el que se incluyen en
asignaturas como esta es que aprenda a hacer demostraciones.

A esta forma algo superficial de presentar la teoría de conjuntos se la
suele calificar de #emph[intuitiva] o #emph[ingenua] (#emph[naïve];),
palabra que verá en muchos de los textos.

Se explican junto con nociones de lógica, ya que se puede afirmar que la
lógica y la teoría de conjuntos constituyen la base de todas las
matemáticas. Advierta que a veces, en algunas asignaturas de
matemáticas, se encuentra en un nivel de abstracción en el que "pierde
de vista" los conjuntos. Es lo que sucede, por ejemplo, en el álgebra
básica y el cálculo. Pero siempre, si se adentra un poco, llegará un
punto en el que tenga que manejar conjuntos.

Llegado un punto, se ve que la presentación ingenua tiene ciertas
carencias. Pueden aparecer expresiones que en principio parece que se
refieren a un conjunto pero en realidad no es así. A estas situaciones
se las suele conocer como #emph[paradojas] (#emph[paradoxes];), y son
las que en su día motivaron una presentación rigurosa (o, dicho de otro
modo, una formalización) de la teoría de conjuntos y, en definitiva, de
las matemáticas. Por ejemplo, tal y como se muestra en @pineda[ p.~34],
una restricción que se debe imponer (de lo contrario, aparecerá una
paradoja) es que un objeto no puede ser simultáneamente un conjunto y un
elemento del mismo.

En @pineda[ p.~66] puede ver la definición rigurosa de #emph[conjunto]
(#emph[set];). Es una definición axiomática, como es habitual en
matemáticas, pero aquí se presenta solo por si tiene curiosidad; no es
materia que vaya a entrar en el examen. En @ol-set-theory se tratan los
conjuntos de manera ingenua en la primera parte y, en la última (parte
III), de manera rigurosa.

A los conjuntos unitarios en inglés los llaman #emph[singletons];.

El concepto de #emph[subconjunto] (#emph[subset];) es muy importante. Es
una relación que a veces se llama #emph[relación de contención] o
#emph[de inclusión];.

En cuanto a la notación que se emplea para esta relación, se puede decir
que hay dos predominantes en la actualidad. La que creo que es la
clásica es la que se usa en @pineda. En esta, el símbolo de
#emph[subconjunto] es "$subset$". La notación que ahora se ve con más
frecuencia es la que se sigue en @ol-set-theory. En esta, un subconjunto
se indica con el símbolo "$subset.eq$". Sería algo análogo a como se
hace con el signo de "menor o igual que…", "$lt.eq$"; cosa que tiene
sentido ya que también se admite la posibilidad de que el conjunto
contenido sea igual que el que lo contiene.

Los símbolos "$subset.not$" y "$subset.eq.not$" representan a las
negaciones de la inclusión, en las respectivas notaciones.

Algo que echo en falta en @pineda, y que tiene relación con la notación
de #emph[subconjunto];, es el concepto de #emph[subconjunto propio];.
Este no es más que un subconjunto excluyendo la posibilidad de que sea
igual que el conjunto que lo contiene. Es decir, dados dos conjuntos $A$
y $B$, se dice que $A$ es un subconjunto propio de $B$ si y solo si $A$
es un subconjunto de $B$ y $A eq.not B$.

En la notación moderna de #emph[subconjunto];, la relación de
#emph[subconjunto propio] se suele expresar por medio del símbolo
"$subset.neq$". En la antigua creo que no hay una simbología específica
para esto. En cualquier caso, siempre se puede mencionar en la prosa.

Tal y como verá, una de las dificultades de la teoría de conjuntos se
encuentra en las situaciones en las que aparecen conjuntos de conjuntos.
La notación a veces es complicada de entender. A este respecto, son de
destacar @pineda[ p.~45] #strong[Ejercicio 2.14] y la definición de
#emph[familia] de conjuntos de @pineda[ p.~51].

En cuanto a la terminología, conviene advertir de que muchas veces se
hablará de #emph[conjunto];, sin especificar de si se trata de un
subconjunto; entre otras cosas, porque ni siquiera se sabe #emph[a
priori];. TKTK. Es decir, ese prefijo #emph[sub-];, en este caso, sería
como un adjetivo que no hay por qué mencionarlo siempre.

Una consecuencia inmediata de la definición de #emph[subconjunto] es
que, para todo conjunto $A$ se cumple

$ A subset.eq A $

Otra cosa que no se menciona en @pineda pero que creo que es importante
presentarla al comienzo es que la relación de inclusión de conjuntos
cumple la propiedad transitiva; es decir, dados tres conjuntos $A$, $B$
y $C$, si $A subset.eq B$ y $B subset.eq C$, entonces $A subset.eq C$.
Es muy fácil de demostrar a partir de la definición de
#emph[subconjunto];.

==== Predicados
<predicados>
Se podría decir que los predicados son a las proposiciones como las
variables (también llamadas #emph[indeterminadas];) a los números. Es
decir, se trata de un proceso de abstracción análogo al que se hace al
pasar de la aritmética al álgebra (básica, es decir, de $bb(Z)$,
$bb(R)$, etc.).

En cuanto a la notación, aunque en @pineda ponen al designador del
predicado en mayúsculas y el argumento como subíndice, por ejemplo,
"$P_x$", también hay quien usa la notación como con las funciones; es
decir, algo como "$P \( x \)$".

En realidad, la lógica de predicados es mejor llamarla #emph[lógica de
primer orden];, pues, además de hablar de los predicados, se incluyen
otras cosas respecto a la lógica de proposiciones, como, por ejemplo,
los cuantificadores.

Algo que me gustaría aclarar es que, cuando hablamos de conjuntos
#emph[por extensión] o #emph[por comprensión] (que, por cierto, estas
dos denominaciones reciben muchos otros nombres a este respecto;
sobretodo la última), lo que estamos haciendo es #emph[expresarlos] o
#emph[definirlos] (a los conjuntos).

En una expresión por comprensión de un conjunto, se usa el símbolo
"$\|$", o, alternativamente, "$:$", que se puede leer como "tal que…".
En realidad, si lo piensa, no es más que una conjunción, con lo que se
podría leer como "y". Incluso a veces verá que una coma, "$\,$", se
corresponde con una conjunción en la notación matemática. Esto también
se explica en @velleman.

En la expresión por comprensión, a veces, se abusa de la notación y se
ven expresiones como

$ { 2 k med \| med k in bb(N) } $

en lugar de

$ { x in bb(N) med \| med \( exists x in bb(N) \) med x = 2 k } $

que es como debería ser. Formas así también se consideran válidas aunque
en principio sean "agramaticales". Serían como lo que sucede con los
modismos (#emph[idioms];) en el estudio de los lenguajes naturales; se
usan por comodidad.

Por completar su conocimiento, quizás le interese saber la distinción
entre #emph[variable libre] (#emph[free variable];) y #emph[variable
ligada] (#emph[bound variable];) en un predicado. Puede consultar
@velleman.

El #emph[conjunto vacío] (#emph[empty set];) sería "${ }$" en la
expresión por extensión; es decir, tal y como indica su propio nombre,
el conjunto sin elementos; aunque se suele preferir el símbolo
"$nothing$" para denotarlo. Por comprensión, según pone en @pineda,
sería

$ { x in U med \| med x in.not U } $

En realidad serviría cualquier proposición que juntándola (es decir,
conectándola mediante un operador conjunción, "$and$") con la que está a
la izquierda de "$\|$", produzca el valor #emph[falso] para cualquier
valor de $x$, ya que estas en forma conjunta no producirían ningún valor
y por tanto se tendría el conjunto $nothing$. En particular, por la
regla de la contradicción, se cumple para la expresión anterior, ya que

$ \( x in U \) med and med \( x in.not U \) $

produce un valor #emph[falso] para cualquiera que tome $x$; o, lo que es
lo mismo, una contradicción. Cualquier predicado que junto con $x in U$
produzca el valor #emph[falso] para todos los valores de $x$ será un
predicado equivalente TKTK.

Por cierto, existe un único conjunto vacío. Esto se deduce de forma
directa de la forma en la que hemos definido la igualdad de conjuntos
(que en el fondo no es más que el Axioma de Extensionalidad de la
definición formal de #emph[conjunto];).

También, algo que se puede demostrar ---ahora que se ha definido el
conjunto vacío--- es que, para todo conjunto $A$, se cumple

$ nothing subset.eq A $

Se demuestra a partir de la definición de #emph[subconjunto] y se
trataría de una proposición vacuamente cierta.

En lo que respecta a la presentación de los números naturales que se da
en @pineda[ p.~38], hay que aclarar que en ese texto se adopta el
convenio de admitir al $0$ como un número natural. Esto no es algo que
se haga siempre; no existe un criterio unificado a este respecto en la
comunidad matemática, y de hecho hay razones tanto para incluirlo como
para no hacerlo, según el área de las matemáticas en la que nos
encontremos. Por ejemplo, en la teoría de conjuntos y la combinatoria se
suele incluir, mientras que en la teoría de números no.

En cualquier caso, tanto los Axiomas de Peano como el Principio de
Inducción serían igualmente válidos si se asumiese que $bb(N)$ comienza
en $1$ en lugar de en $0$.

Hablando de esos axiomas, me gustaría aclarar lo que se hace con el
$A_5$. Este hace que ese subconjunto sea $bb(N)$ ya que, tal y como se
dice en este, es un subconjunto de $bb(N)$. Entonces, si se dan esas
condiciones, $bb(N)$ es un subconjunto de este. Entonces, al darse la
doble inclusión, los dos conjuntos son iguales.

El Principio de Inducción, puede verse también de un modo algo más
general, tal y como se explica en @pineda[ p.~66]. Se puede comenzar
desde cualquier número natural; solo que entonces se cumpliría para
todos a partir de este.

Aunque no es muy común, a una definición recurrente también se la puede
llamar #emph[definición inductiva] ya que esta hace uso del Principio de
Inducción. Por cierto, a una expresión no recurrente también se la suele
llamar #emph[forma cerrada] o #emph[forma explícita];.

En cuanto a la definición de #emph[factorial];, a mí me gusta más la
definición siguiente:

$ \( n + 1 \) ! = cases(delim: "{", 1 & med upright("si ") n + 1 = 0, n ! thin \( n + 1 \) & med upright("si ") n + 1 > 0) $

o, mejor aún,

$ n ! = cases(delim: "{", 1 & med upright("si ") n = 0, \( n - 1 \) ! thin n & med upright("si ") n > 0) $

Tengo la manía de poner el factorial a la izquierda, pues no tengo
claras las reglas de precedencia de este operador TKTK. La verdad es que
me parece una simbología bastante desacertada. TKTK.

Por cierto, existen funciones recurrentes en las que el término general
depende de más de uno de los anteriores, con lo que, para concretar y
dejar de tener una familia de funciones, deberíamos obtener más de un
valor concreto. Es lo que sucede, por ejemplo, con la sucesión de
Fibonacci, en @pineda[ p.~64].

==== Cuantificadores
<cuantificadores>
En lo que respecta a los cuantificadores, la notación a veces varía en
los distintos textos. En @pineda, se suele encerrar entre paréntesis la
parte del cuantificador. Por ejemplo,

$ \( forall x in C \) med P_x $

Es común ver, no solo en @pineda, que en el uso de esta notación a veces
se es un poco laxo y se quita ese paréntesis. En este caso, se suele
poner un punto o una coma tras la variable del cuantificador, como
indicación de separación entre la expresión del cuantificador y el
predicado. Imagino que se hace con el propósito de que quede una
expresión más "limpia", menos "cargada" (con menos paréntesis). Por
ejemplo,

$ forall x in C \, med P_x $

En cuanto a @velleman, la notación que emplea es mucho más rigurosa. Lo
primero es que en la variable del cuantificador no se especifican
aspectos de esa variable, que no son otra cosa más que predicados. Así,
en lugar de '$forall x in C dots.h$', se pondría
'$forall x \( x in C and dots.h \)$'.

Además, lo que se pone entre paréntesis ---o corchetes o llaves, según
los anidamientos que existan--- es el predicado; no el cuantificador con
su variable.

$ forall x med \( x in C and P_x \) $

A este respecto, se siguen las mismas reglas del uso de paréntesis que
con el operador negación, '$not$'. Por ejemplo, se pondría

$ forall x med P_x $

pero,

$ forall x med x in C and P_x $

TKTK.

Lo cierto es que, en matemáticas, la notación de @velleman a este
respecto no se suele ver con frecuencia. La que se suele ver en los
textos de matemáticas es la de @pineda.

Volviendo a la definición de #emph[subconjunto];, podríamos decir que se
tiene la siguiente equivalencia:

$ A subset.eq B quad arrow.l.r.double quad forall x in A \, med x in B $

o, en la notación de @velleman,

$ A subset.eq B quad arrow.l.r.double quad forall x med \( x in A arrow.r x in B \) $

o

$ \[ A subset.eq B \] med arrow.l.r.double med \[ forall x med \( x in A arrow.r x in B \) \] $

Algo que se explica en @velleman pero no en @pineda es que en la lógica
de primer orden también podemos usar constantes; es decir, variables con
un valor fijado. Vea el ejemplo 2.1.2 punto 4.

Una forma de justificar que

$ forall x in C \, med P_x quad arrow.l.r.double quad C_P = C $

sería ver que, por un lado, al definir a $C_P$ del modo siguiente,

$ C_P = { x in C med \| med P_x } $

obviamente se cumple $C_P subset.eq C$, ya que para todo $x in C_P$ se
tiene que $x in C$ (hemos aplicado la definición de #emph[subconjunto];).
Por otro lado, la expresión '$forall x in C \, med P_x$” viene a decir
que para un $x in C$ cualquiera se tiene que $P_x$ es verdadero y, por
tanto, por la definición de $C_P$, se tiene que $x in C_P$. Por tanto,
se ha demostrado que $C subset.eq C_P$. Por la doble inclusión se tiene
entonces que $C_P = C$.

La otra expresión alternativa, es decir, la del cuantificador
existencial, es bastante evidente a la vista de la definición del
conjunto $C_P$.

Lo que viene a decir la última parte de la observación de @pineda[
p.~43] es que no hay una forma directa de transformar una expresión en
lenguaje natural (español o inglés, por ejemplo) al lenguaje matemático.
Por ejemplo, en el enunciado "Un número primo es impar" ese #emph[un] no
se debe interpretar como se hace la mayoría de las veces, pues en este
caso no se refiere a uno en particular, sino a uno genérico.#footnote[En
la lingüística creo que a esta figura se la conoce como sinécdoque de
género por especie.] Es decir, es como si se dijese "Para todo número
primo, este es impar".#footnote[Por cierto, esa expresión es falsa ya
que el $2$ es un número primo que no es impar. Es fácil demostrar que es
el único con esa propiedad de entre todos los números primos, pero eso
queda fuera de esta asignatura.]

Respecto a lo que se comenta sobre si se hace mayor o menor uso de la
simbología, en detrimento o favor de la prosa, personalmente soy de usar
mucha simbología, pues me resulta más clara.

==== Relaciones entre los cuantificadores '$exists$” y'$forall$'
<relaciones-entre-los-cuantificadores-exists-yforall>
Partiendo del resultado siguiente de la sección anterior:

$ forall x in C \, med P_x quad arrow.l.r.double quad C_P = C $

tenemos que

$ not \( forall x in C \, med P_x \) quad arrow.l.r.double quad C_P eq.not C $

Pero, como por la definición de $C_P$ se sigue cumpliendo
$C_P subset.eq C$, se tiene entonces que $C subset.eq.not C_P$, y de
esto podemos deducir, por la definición de #emph[subconjunto];, que
existe un $x in C$ tal que $x in.not C_P$, cosa que podríamos expresar
con el cuantificador existencial, '$exists$', del modo siguiente:

$ exists x in C \, med not P_x $

A la otra equivalencia se llega de un modo análogo. Como vimos,

$ exists x in C \, med P_x quad arrow.l.r.double quad C_P eq.not nothing $

con lo que

$ not \( exists x in C \, med P_x \) quad arrow.l.r.double quad C_P = nothing $

y aplicando la definición del conjunto $C_P$ tenemos que es lo mismo que

$ forall x in C \, med not P_x $

En el apartado b del ejercicio 18 se ve otra conclusión relacionada con
esto.

==== Complementario y partes de un conjunto
<complementario-y-partes-de-un-conjunto>
Aunque se deje para más adelante (tabla en @pineda[ p.~54]), conviene
explicar aquí que existen las propiedades análogas, para la teoría de
conjuntos, de las reglas de De Morgan (de la lógica). Para dos conjuntos
$A$ y $B$ arbitrarios, se cumplen

$ overline(A union B) & = \( overline(A) \) sect \( overline(B) \)\
overline(A sect B) & = \( overline(A) \) union \( overline(B) \) $

Se demuestran de un modo bastante directo a partir de la definición del
concepto de #emph[complementario] de un conjunto.

Tras definir el conjunto de las partes de un conjunto (#emph[power
set];), tendríamos una expresión simbólica alternativa para los
subconjuntos que nos vendrá bien en ciertas situaciones:

$ B subset.eq A quad arrow.l.r.double quad B in cal(P) \( A \) $

Antes de continuar, me gustaría presentar un resultado de las partes de
un conjunto.

#block[
Dados dos conjuntos $A$ y $B$, se cumple

$ A subset.eq B quad arrow.r.double quad cal(P) \( A \) subset.eq cal(P) \( B \) $

]
#block[
La forma que me resulta más sencilla para demostrarlo es mediante el
condicional contrarrecíproco.

Partiendo de $cal(P) \( A \) subset.eq.not cal(P) \( B \)$, vemos que
esto es lo mismo que decir que existe un conjunto $C in cal(P) \( A \)$
tal que $C in.not cal(P) \( B \)$.

ESto es lo mismo que afirmar que existe un conjunto $C eq.not nothing$
para el que $C subset.eq A$ y $C subset.eq.not B$.

Entonces, podemos decir que para todo elemento $x in C$ se tiene que
$x in A$, pero además existe un $x in C$ tal que $x in.not B$.

Por tanto, existe un $x in A$ tal que $x in.not B$, que es como decir
que $A subset.eq.not B$.

]
Antes de seguir, vamos a dar una noción no muy formal del
#emph[cardinal] (#emph[cardinal];) o #emph[tamaño] de un conjunto. TKTK.

El ejercicio 2.14 (@pineda[ p.~45]) es una demostración bastante
conocida de las matemáticas. Una forma de hacerla es por la teoría de
conjuntos, tal y como se hace aquí. No obstante, también se puede
demostrar haciendo uso de otras áreas de las matemáticas.

Voy a presentar aquí la misma demostración de @pineda solo que expresada
a mi manera (incluyendo la simbología) y añadiendo algunas cosas del
final que dejan sin completar.

#block[
Por abreviar, a $upright("card") \( C \)$ lo designaremos por $n$.
También, a $upright("card") \( cal(P) \( C \) \)$ lo designaremos por
$a_n$. Advierta que tiene que tener ese subíndice necesariamente.

Definimos otro conjunto:

$ D = C \\ { x } $

para un $x in C$. Evidentemente, se tiene que $D subset.eq C$. Si nos
fijamos en el número de elementos, tenemos, evidentemente, que
$upright("card") \( D \) = n - 1$. Además, según la notación que hemos
establecido para el número de elementos de las partes de un conjunto, se
tendrá que $upright("card") \( cal(P) \( D \) \) = a_(n - 1)$.

Advierta que aún no sabemos cuál es la relación entre $n$ y $a_n$. De
hecho, eso es precisamente lo que deseamos hallar en este problema.

Ahora, vamos a definir a un conjunto $D'$ como

$ D' = cal(P) \( D \) $

es decir, es el conjunto de todos los subconjuntos de $D$, o sea, de
$C - { x }$. Advierta que $D' subset.eq cal(P) \( C \)$. Además, para
todo elemento (y, además, conjunto) $Y$ de $D'$ formamos un conjunto
$Y union { x }$. Al conjunto de todos estos conjuntos $Y union { x }$ lo
designamos por $D''$. Advierta que se cumple
$D'' subset.eq cal(P) \( C \)$.

Como $D$ tiene $n - 1$ elementos, se tendrá que $D'$ contiene
$a_(n - 1)$ elementos (que a su vez son conjuntos). (Esa relación nos
sigue siendo desconocida, de momento.) Por otro lado, por la forma de
construir al conjunto $D''$, se tiene que este ha de tener el mismo
número de elementos que $D'$.

Además de lo anterior, se puede ver fácilmente que se cumplen

$ D' union D'' & = C\
D' sect D'' & = nothing $

Son disjuntos (es decir, se cumple la segunda) porque no existe ningún
conjunto que contenga y no contenga (simultáneamente) a un elemento $x$.
La primera es bastante evidente. TKTK.

Por lo que sabemos de combinatoria, al cumplirse esas dos propiedades se
tiene que el conjunto unión de $D'$ y $D''$ tendrá como número de
elementos a la suma de esos dos; es decir, se cumple que

$ a_n = a_(n - 1) + a_(n - 1) = 2 thin a_(n - 1) $

Advierta que esta es una definición recursiva, aunque incompleta. Hay
que tener en cuenta también algún valor concreto, pues, sin este,
tendremos una gama o familia de funciones. Esto es fácil. Para
$C = nothing$ tenemos que
$n = upright("card") \( C \) = upright("card") \( nothing \) = 0$.
También, se dará $a_0 = upright("card") \( cal(P) \( C \) \) = 1$, ya
que $cal(P) \( nothing \) = { nothing }$.

Entonces, ahora sí tenemos una definición recursiva. Es la siguiente:

$ a_n = cases(delim: "{", 1 & med upright("si ") n = 0, 2 thin a_(n - 1) & med upright("si ") n > 0) $

A la vista de lo siguiente,

$ a_n = 2 thin a_(n - 1) = 2 \( 2 thin a_(n - 2) \) = 2 \( 2 \( 2 thin a_(n - 3) \) \) = dots.h.c = 2 \( 2 \( 2 \( 2 thin dot.op dots.h.c dot.op \( 2 thin a_0 \) \) \) \) $

tiene pinta que la fórmula explícita (es decir, no recursiva) será la
siguiente:

$ a_n = a_0 thin product_(i = 0)^n 2 = 1 dot.op 2^n = 2^n $

pero esto no lo hemos demostrado; solo lo hemos intuido. Si aplicamos el
Principio de Inducción podemos ver si se cumple o no se cumple esto.

El caso base se dará para el valor $n = 0$. Para este se tiene que
$a_0 = 1 = 2^0$. De momento, se cumple.

Ahora, pasamos a ver la hipótesis de inducción. Será $a_n = 2^n$; y la
meta de inducción será $a_(n + 1) = 2^(n + 1)$.

Vamos a ver si de la hipótesis se deduce la meta. Aplicando el resultado
obtenido antes tenemos

$ a_(n + 1) = 2 thin a_n = 2 dot.op 2^n = 2^(n + 1) $

con lo que sí se cumple. Por tanto, se ha demostrado que la relación que
se cumple entre $n$ y $a_n$ es

$ a_n = 2^n $

Pero, mejor, vamos a presentar el resultado para que lo entienda
cualquiera sin necesidad de que conozca la terminología empleada en esta
demostración. Para todo conjunto $C$, se tiene que

$ upright("card") \( cal(P) \( C \) \) = 2^(upright("card") \( C \)) $

]
=== Operaciones con conjuntos
<operaciones-con-conjuntos>
Para el ejemplo 2.26 de @pineda, recuerde cómo se opera con
desigualdades en las que aparece algún valor absoluto. (Vea el apéndice
TKTK).

Todas estas propiedades (@pineda[ p.~46]) se pueden demostrar
fácilmente. La primera se haría aplicando de forma directa la definición
de #emph[subconjuto];. La segunda y la tercera, teniendo en cuenta que
la disyunción cumple las propiedades conmutativa y asociativa. La
cuarta, porque $P_x or upright(bold(0)) = P_x$, ya que se puede definir

$ nothing = { x in U med \| med upright(bold(0)) } $

La quinta, porque $P_x or P_x = P_x$.

Tal y como se explica en @pineda[ p.~50], al igual que sucede con las
proposiciones y los predicados, la propiedad asociativa nos permite usar
expresiones como $A union B union C$ sin que estas sean ambiguas.

El ejercicio 2.18 hace uso de estas propiedades. Tal y como expliqué
antes, suelo hacer un mayor uso de la simbología ---tanto de la teoría
de conjuntos como de la lógica de primer orden--- en mis demostraciones,
ya que me resulta más claro así. También, presento las distintas fases o
casos de un modo más visual (o tipográfico). Lo resuelvo aquí para tener
un ejemplo de cómo lo suelo hacer.

#block[
Suponemos que los conjuntos $A$ y $B$ son subconjuntos de un conjunto
universal $U$ (universo de los predicados en las definiciones de dichos
conjuntos).

Fase 1 ($arrow.r.double$). Tomamos un elemento arbitrario $x in A$ y
hacemos manipulaciones de expresiones conjuntistas.

$ x in A & med arrow.r.double & med x in A union B & med upright("por la propiedad 1")\
 & med arrow.r.double & med x in B & med upright("por el antecedente ") \( A union B subset.eq B \) $

Fase 2 ($arrow.l.double$).

Fase 2.1.
($A subset.eq B med arrow.r.double med B subset.eq A union B$). Por la
propiedad 1, siempre se cumple que $B subset.eq A union B$; en
particular, también en los casos que se marcan en el antecedente.

Fase 2.2 ($A subset.eq B med arrow.r.double med A union B subset.eq B$).
Partimos de un elemento $x in A union B$ y deseamos llegar a $x in B$.
Se tienen dos casos posibles:

+ $x in B$. No hay nada que demostrar.
+ $x in A$. Por el antecedente llegamos directamente a que $x in B$.

]
Las propiedades de la intersección de conjuntos se demuestran de modo
análogo a como se hace con la unión. Muchas de estas se deducen de forma
directa de las propiedades de la conjunción. Por ejemplo,
$upright(bold(0)) and P_x arrow.l.r.double upright(bold(0))$.

Advierta que con la unión y la disyunción se cumplen los dos tipos de
propiedades distributivas, al contrario de lo que sucede con la de la
suma y el producto de números (del tipo que sea).

En lo que respecta a las familias de conjuntos (indexadas o no
indexadas), presentadas en @pineda[ p.~51], advierta que con
#emph[familia] no queremos más que decir #emph[conjunto];. Se le llama
de forma distinta para distinguir los distintos niveles de conjuntos,
según el anidamiento.

En lo que respecta a las propiedades de la diferencia de conjuntos, creo
que la más importante, y que quizás se debería resaltar más en el texto,
es

$ A \\ B = A sect overline(B) $

La propiedad 1 de la diferencia de conjuntos se puede demostrar
fácilmente manipulando expresiones conjuntistas.

#block[
$ A \\ \( A sect B \) & = A sect overline(A sect B)\
 & = A sect \( overline(A) union overline(B) \)\
 & = \( A sect overline(A) \) union \( A sect overline(B) \)\
 & = nothing union \( A sect overline(B) \)\
 & = A sect overline(B)\
 & = A \\ B $

]
En cuanto a @pineda[ ejercicio 2.26], que es la demostración de la
propiedad 2, se podría haber hecho una demostración más directa, sin
necesidad de ver los distintos casos, haciendo uso de la definición de
#emph[diferencia de conjuntos];.

En @pineda[ p.~53] #strong[Ejercicio 2.28] se puede hacer más fácilmente
mediante manipulaciones de las expresiones conjuntistas. Es sencillo.

=== Producto de dos conjuntos
<producto-de-dos-conjuntos>
Evidentemente, aunque en @pineda no se presente, existe una definición
rigurosa del concepto de #emph[par ordenado] (#emph[ordered pair];). La
que se suele dar es la definición de Viener-Kuratowski. TKTK.

En realidad, al producto de conjuntos se le suele llamar en casi todos
los textos #emph[producto cartesiano];, aunque en @pineda lo mencionen
solo de pasada.

Las propiedades del producto cartesiano no presentan gran dificultad.

=== Relaciones entre conjuntos
<relaciones-entre-conjuntos>
En lo que respecta al concepto de #emph[relación] binaria, debe saber
que este es en realidad un predicado lógico simple de dos argumentos. En
@pineda[ p.~59] la llaman #emph[relación lógica];, para distinguirla de
la conjuntista que definen posteriormente. En realidad, pasar de las
relaciones lógicas (las auténticas) a las conjuntistas es algo más
complicado de lo que se nos muestra en @pineda. Puede consultar
@ol-set-theory para ver que, aunque muchos conjuntos pueden sintetizar
la información que nos da una relación, esto no siempre sucede.

En cualquier caso, a nosotros en principio lo que nos interesa serán las
relaciones desde el punto de vista conjuntista, y no nos detendremos en
la cuestión anterior. Para nosotros, todas las relaciones que veremos se
podrán definir desde el punto de vista conjuntista.

En @velleman llaman #emph[relación] a las conjuntistas mientras que a
las lógicas las llaman #emph[predicados de dos argumentos] (afirmaciones
o predicados?? TKTK). Esto quizás sea lo que más sentido tenga.

Si los argumentos del predicado son 2, será una relación #emph[binaria];;
si son 3, terciaria, etc. En general, $n$-arias, para un
$n in bb(Z)^(+)$. A esta cualidad se la conoce como la #emph[aridad]
(#emph[arity];) de la relación. Pero en realidad esta información casi
nunca se da de forma explícita, sino que se entiende por los datos del
problema o situación en particular. Es decir, normalmente, se habla de
una #emph[relación];, sin especificar su aridad.

Me gustaría aclarar que a veces se usan definiciones algo distintas del
concepto #emph[relación];. Así, en @ol-set-theory la definen como un
subconjunto de $A times A$, siendo $A$ un conjunto. A esta, en nuestra
terminología ---que cuenta con una definición más general--- las
llamamos #emph[relaciones homogéneas];.

En cuanto a la notación, personalmente me gusta usar
"$cal(R) subset.eq A times B$" para las relaciones y reservar
"$cal(R) : A arrow.r B$" para las aplicaciones (también llamadas
#emph[funciones];), un tipo de relaciones que cumplen ciertas
propiedades y que se estudian un poco más adelante. Me gusta
distinguirlas así, simbólicamente. Si sigue esta misma notación, debe
tener cuidado, pues en muchos textos también expresan las relaciones (en
general) con expresiones del tipo de $cal(R) : A arrow.r B$. Es lo que
se hace en @pineda, con lo que aquí usaré una notación algo distinta a
este respecto.

La terminología que se presenta al respecto de las relacioens en
@pineda[ p. 60], en otros textos es común que tome otros nombres:

- Al conjunto original (ojo, no el inicial) de la relación también se le
  conoce como #emph[dominio] (#emph[domain];), y se puede designar por
  "$upright("Dom") \( cal(R) \)$".
- Al final, #emph[codominio] (#emph[codomain];).
- Al conjunto imagen de la relación, #emph[rango] (#emph[range];) o
  #emph[recorrido];, y se puede designar por
  "$upright("Im") \( cal(R) \)$".
- Al (conjunto) original de un elemento del conjunto final por $cal(R)$
  también se le puede llamar #emph[contraimagen] (de ese mismo elemento
  por esa misma relación).

Por cierto, creo que no pasa nada si en lugar de decir "conjunto imagen"
o "conjunto original" decimos simplemente "imagen" u "original",
respectivamente, ya que se sobrentiende que se trata de conjuntos. Al
igual que se puede omitir mencionar a qué relación nos referimos, si
está claro por el contexto.

También, me gustaría aclarar que una relación (conjuntista) y su grafo
se diferencian en que en este último se "pierde" cierta información.
Concretamente, no sabemos cuáles son el conjunto inicial ni el final.
Podrían ser, respectivamente, cualaquier supraconjunto del conjunto
original y del conjunto imagen.

Por cierto #emph[grafo] sería básicamente un concepto que ya conoce de
sus estudios previos: la gráfica de una función; aunque aquí, de
momento, estamos estudiando relaciones, que es un concepto más amplio
que el de #emph[función];.

Los ejercicios que se presentan aquí tienen relación con partes del
álgebra básica y el precálculo. Si se fija, se muestran cosas como
"$cal(G) \( 1 \) = { 0 }$". Esto no es más que lo que en esas
asignaturas expresaríamos por "$cal(G) \( 1 \) = 0$", que, aunque le
parezca increíble, en cierto modo es abusar de la notación. Sin embargo,
no se podría hacer esa simplificación en la notación para
$cal(G) \( x \) = { - sqrt(1 - x^2) \, sqrt(1 - x^2) }$ ya que se tienen
dos resultados; aunque también se podría presentar como
$cal(G) \( x \) = plus.minus sqrt(1 - x^2)$.

Como se verá en el capítulo siguiente, un tipo muy importante de
relaciones son las que producen un único resultado; a estas se las llama
#emph[aplicaciones] o #emph[funciones];,#footnote[Tampoco llega a ser
esta una definición completa; ya lo verá.] y ya las conoce de
asignaturas previas, solo que este concepto se lo definieron de formas
menos rigurosas; por ejemplo, diciendo que se comportan como si se
tratase de una máquina.

En @pineda no se da la definición más amplia posible de la composición
de relaciones, sino que usan relaciones $cal(R)$ y $cal(S)$ que tienen
el mismo conjunto final e inicial, respectivamente, al cual denotan por
$B$. Imagino que lo hacen por no hacerlo excesivamente complejo.

Para la definición amplia se debería imponer una condición para que se
pueda tener la composición de relaciones
$cal(S) circle.stroked.tiny cal(R)$. Debe cumplirse que el conjunto
original de $cal(S)$ sea un subconjunto del conjunto imagen de $cal(R)$.

Es decir, si tuviésemos dos relaciones $cal(R) subset.eq A times B$ y
$cal(S) subset.eq C times D$, para tener
$cal(S) circle.stroked.tiny cal(R)$ se debería dar

$ cal(S)^(- 1) \( D \) subset.eq cal(R) \( A \) $

o, lo que es lo mismo,

$ upright("Dom") \( cal(S) \) subset.eq upright("Im") \( cal(R) \) $

Si no se da esta condición, podría tenerse un elemento de $C$ que,
aunque tenga su imagen por $cal(S)$ en $D$, no tiene ninguna
contraimagen por $cal(R)$ en $A$. Sin embargo, sí está permitido que
exista un elemento de $C$ que tenga una contraimagen por $cal(R)$ en $A$
pero no tenga imagen por $cal(S)$ en $D$.

Por otro lado, estaría bien que se explicara que la composición viene a
decir que, para un $x in A$, se tiene

$ \( cal(S) circle.stroked.tiny cal(R) \) \( x \) = cal(S) \( cal(R) \( x \) \) $

En algún texto he visto que la definen justo al revés, pero es muy poco
común verlo así.

=== Comentarios
<comentarios>
==== Sobre el método de inducción
<sobre-el-método-de-inducción>
En @pineda[ ejemplo 2.49], quizás debería dejar más claro que
#emph[sucesión] y #emph[progresión] son lo mismo.

Para pasar de una forma recursiva de una sucesión a una explícita, se
suele usar el Principio de Inducción. Se puede ver, por ejemplo, cómo se
aplica a las fórmulas de las sumas de sucesiones, o, lo que es lo mismo,
el término general de una serie; por ejemplo, las que se presentan en
@pineda[ p.~66], es decir, las aritméticas y las geométricas.

Como curiosidad, quizás le interese saber que existen formalismos
alternativos de los números naturales en los que se tiene, en lugar del
Principio de Inducción como quinto axioma, la Propiedad de Buena
Ordenación. Tomando uno cualquiera de estos, se deduce el otro y por
tanto es un teorema. Esto se explica en #emph[Rosen Number Theory];.

A la variante del método de inducción que llamamos #emph[inducción
completa];, a veces se prefiere calificarla de #emph[fuerte]
(#emph[strong];) o #emph[estricta];, en lugar de #emph[completa];.
