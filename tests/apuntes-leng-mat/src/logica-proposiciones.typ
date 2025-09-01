== Capítulo 1. Lógica de proposiciones
<cap-logica-prop>
La lógica surge en la filosofía, y de hecho la inició el filósofo
Aristóteles de la Antigua Grecia. Muchas veces se suele decir que el
propósito de la lógica es "sistematizar el razonamiento". Además de en
filosofía, también se estudia, para su aplicación, en matemáticas y en
ciencias de la computación#footnote[cosa que en España se conoce más
como #emph[informática];];, o, de forma más general, en el estudio de
los sistemas lógicos digitales#footnote[A esta he visto que la llaman
también lógica digital.];, aunque puede que tenga utilidad en
prácticamente todas las ramas del conocimiento.

En cada área donde se estudia se suelen usar unas reglas de estilo
propias sobre la simbología de la lógica.

También cambia la terminología y la notación en las distintas
referencias. Por ejemplo, en @forallx llaman #emph[truth-functional
logic] a lo que en @pineda llaman #emph[lógica de proposiciones];,
mientras que en @velleman llaman #emph[lógica enunciativa]
(#emph[sentential logic];) a la de proposiciones y también a la de
predicados.

En cualquier caso, lo que debe tener claro es que la lógica es también
un lenguaje (#emph[language] TKTK) y podríamos hacer varias
clasificaciones en cuanto a las expresiones, de más general a más
particular:

+ Verbalización (#emph[utterance];). TKTK.
+ Enunciado (#emph[sentence];; también llamado #emph[oración] o
  #emph[frase];). Los hay de varios tipos: interrogativos, exclamativos,
  imperativos, declarativos (también llamados #emph[informativos];),
  etc.
+ Afirmación (#emph[statement];) o #emph[proposición]
  (#emph[proposition];). Sería un enunciado declarativo. Estos son los
  únicos que nos interesan en la lógica. Estas producirán un valor de
  certeza (también llamado #emph[valor de verdad];, #emph[lógico] o
  #emph[buleano];); es decir, #emph[verdadero] o #emph[falso];.

La lógica es un #emph[lenguaje formal] (#emph[formal language];), en
contraposición a los lenguajes naturales (#emph[natural languages];).
TKTK.

La lógica se encarga de los #emph[argumentos]
(#emph[arguments];#footnote[Advierta que en inglés este término tiene
polisemia. Además de tener el sentido de nuestro #emph[argumento];,
tiene también el de #emph[discusión] o #emph[riña];.];). Estos son una
afirmación que consta de varias afirmaciones y de una conclusión.

Esta afirmación puede contar con otras en su interior, a varios niveles
de anidamiento (#emph[nesting];).

Dentro de los argumentos, a la lógica únicamente le interesan los que
son #emph[válidos] (#emph[valid];). Un argumento será válido si y solo
si no puede ser cierta la conclusión cuando las premisas no sean todas
ciertas.

Si ya supuese algo de lógica, esto mismo se podría expresar diciendo que
un argumento no es más que una proposición (también valdría luego para
predicados) cuya conectiva principal (#emph[main connective];) es un
condicional, "$arrow.r$". La expresión a la izquierda de esa conectiva
es una conjunción de varias proposiciones; a estas se las conoce como
#emph[premisas];. A la parte derecha se la conoce como
#emph[conclusión];. En este capítulo se aprenden todos estos conceptos
que he usado en este párrafo. Esto se pasa por alto en @pineda, pero sí
que se explica tanto en @forallx como en @velleman.

Una demostración matemática no es más que un argumento válido.

Mediante el uso de la lógica, a partir de una serie de certezas ya
establecidas #emph[deducimos] (#emph[deduce];) otras, con lo que
extendemos nuestro conocimiento sobre algo. La deducción no es la única
forma de extender nuestro conocimiento en matemáticas, como veremos.

Además de la validez de un argumento, se tiene también su #emph[solidez]
(#emph[soundness];). TKTK.

=== Expresiones matemáticas. Proposiciones
<expresiones-matemáticas.-proposiciones>
En cuanto a la notación, para las proposiciones lo más común es usar una
letra mayúscula, como $P$, $Q$, etc. En @pineda se saltan esa regla y
optan por usar una letra minúscula: $p$, $q$, etc.

=== Conectores lógicos básicos
<conectores-lógicos-básicos>
A las conectivas (#emph[connectives];) también se las podría llamar
#emph[operadores] (#emph[operators];).

Me gustaría destacar la importancia de que conozca las alternativas que
existen en lo que respecta al condicional. Así, se tienen condicional
contrario (#emph[inverse];), el recíproco (#emph[converse];) y el
contrarrecíproco (#emph[contrapositive];), tal y como se muestra en
@pineda[ p.~11].

La conectiva condicional (#emph[conditional];) es quizás la más
importante de todas. De hecho, es la que usamos al definir la
#emph[validez] de un argumento.

Vacuamente cierta TKTK.

Algo que me gustaría aclarar, cuando se estudia la conectiva
condicional, es que encontrará muchas definiciones, teoremas, etc. en
los que no se expresa de forma correcta lo que se desea a este respecto.

Por ejemplo, en matemáticas sucede muchas veces en definiciones que se
usa un enunciado del tipo "si …, entonces …" cuando lo que se desea
expresar es un bicondicional. Creo que se debe a la costumbre, y se
entiende que el lector lo interpretará como un bicondicional. Aun así,
personalmente creo que lo ideal sería TKTK.

=== Construcción de proposiciones nuevas
<construcción-de-proposiciones-nuevas>
Básicamente, es construir una proposición haciendo la sustitución de una
de sus subproposiciones por otra que sea equivalente.

Una proposición será equivalente a otra cuando el bicondicional de estas
dos es una tautología, $upright(bold(1))$.

=== Leyes lógicas
<leyes-lógicas>
En lo que respecta a las secciones en las que se presentan las
#emph[leyes] (#emph[laws];; también calificadas de #emph[reglas];,
#emph[rules];) lógicas, en el fondo lo que se hace no es más que
comprobar si, de forma global, esa proposición es una tautología,
$upright(bold(1))$. De hecho, en lugar de #emph[leyes] o #emph[reglas]
se las podría calificar también de #emph[tautologías];, aunque no se
suele hacer.

Advierta, por ejemplo, que la propiedad distributiva se da para los dos
tipos posibles, con los operadores "$and$" y "$or$", cosa que contrasta
con lo que sucede con los números (de cualquier tipo), TKTK.

Una vez que contemos con un buen "arsenal" de reglas lógicas, podemos
manipular las expresiones (lógicas) para llegar a la más simple posible.
No olvide que para una expresión de dos proposiciones simples se tienen
$16$ tablas de verdad posibles, con lo que, por muy compleja y
enrevesada que sea una expresión lógica compuesta basada en estas dos,
al fin y al cabo será una de esas $16$ proposiciones. Para $3$ se tienen
$256$ posibles proposiciones.

La regla general, para $n in bb(Z)^(+)$ proposiciones simples, es,
primero, sacar el número de filas, que no es más que $a = 2^n$.
Entonces, a partir de este, ver todas las posibles tablas con ese número
de filas, que serían $2^a$. Es decir, en total, para $n$ proposiciones
simples se tienen $2^2^n$.

=== Validación de proposiciones
<validación-de-proposiciones>
=== Forma clausulada de proposiciones
<forma-clausulada-de-proposiciones>
Echo en falta, al comienzo de la Sección 1.6 Forma clausulada de
proposiciones, dar la definición de #emph[literal] (#emph[literal];) de
una expresión lógica. Este no es más que una proposición simple o su
negación; por ejemplo, $p$ o $not p$.

Pregunta. ¿Tienen que aparecer todos los términos en cada cláusula?

A la forma normal conjiuntiva se la suele llamar, en ciencias de la
computación, #emph[maxitérmino] (#emph[maxterm];).

Aunque no se explique, análogamente también se tiene la forma normal
disyuntiva (en ciencias de la computación, #emph[minitérmino];,
#emph[minterm];), que es una expresión de disyunciones de conjunciones
de literales.
