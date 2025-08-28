
#import "../../typst-maths-book-template/main-template.typ": *



El concepto del que partimos en el estudio de la lógica es el de uno que
estudiamos en la lengua: el _enunciado_ (_sentence_), que, en español,
recibe muchos otros nombres: _oración_, _frase_, _sentencia_, etc. A veces,
en ciertos contextos, estas distintas formas de llamarlo pueden tener
sutilezas y significar cosas ligeramente distintas. En inglés, los suelen
llamar _sentence_ o _phrase_#footnote[aunque _phrase_ a veces tiene otro
significado algo distinto].

Un enunciado es necesario que sea gramatical, para que la comunicación sea
efectiva. Esto quiere decir que su sintaxis es válida y su semántica TKTK.
Por ejemplo, en español, un lenguaje natural, el enunciado

#quote[
  Eléctrica ordenador el máquina es una.
]

no es sintácticamente correcto, mientras que

#quote[
  El ordenador es una máquina eléctrica.
]

sí lo es.

Los enunciados pueden clasificarse, según la intención de quien los
pronuncia, en varios tipos. Uno de ellos son las oraciones informativas, que
también hay quien las califica de _declarativas_, o, también, *afirmaciones*
(_statements_). Evidentemente, el propósito de estas es dar una información
y, de cada caso particular de estas, se podrá decir si son _verdaderas_ (o
_ciertas_; _true_) o _falsas_ (_false_). Entre los otros tipos de oraciones,
se tienen, por ejemplo, las interrogativas, las exclamativas, las
imperativas, etc. En estas, no tiene sentido decir si son verdaderas o
falsas.

A esa evaluación, es decir, determinar si una afirmación es verdadera o
falsa, es a lo que en lógica se conoce como su valor semántico lógico o
*valor de verdad* (o, también, _valor de certeza_, _valor de veracidad_,
_valor lógico_ o _valor buleano_#footnote[_Buleano_ viene de Boole, el
apellido del álgebra que se usa en los computadores internamente, o en
cualquier sistema electrónico digital.]). Independientemente de este, una
afirmación puede tener más valores semánticos, pero a la lógica solo le
interesa el lógico, como es evidente.

Así, una afirmación en español como

#quote[
  La vaca es un animal.
]

tiene un valor lógico verdadero, mientras que

#quote[
  La piedra es un animal.
]

es una afirmación con uno falso.

A las afirmaciones, en el estudio de la lógica también se las llama
_proposiciones_ (_propositions_). Creo que hay quien considera que existe
una diferencia sutil entre _statement_ y _proposition_, pero, para nosotros,
serán lo mismo. Lo más común en lógica es hablar de proposiciones, en lugar
de hacerlo de afirmaciones.

En lo que respecta a los valores de verdad, verdadero y falso, en filosofía
se suelen representar como $V$ y $F$, respectivamente (en ingles, $T$ y
$F$). En matemáticas, ciencias de la computación y sistemas electrónicos
digitales, sin embargo, la costumbre es representarlos como $1$ y $0$,
respectivamente.

Las proposiciones pueden ser *simples* (_simple_ también llamadas
_atómicas_, _atomic_) o *compuestas* (_compound_ también llamadas
_moleculares_, _molecular_). A las proposiciones simples algunos libros las
prefieren llamar _variables lógicas_ (_logical variables_) o _variables
buleanas_ (_Boolean variables_). Las compuestas son composiciones de
proposiciones (simples o compuestas, o una mezcla de ambos tipos) usando
operadores llamados _conectivas lógicas_ (o, simplemente, _conectivas_;
_logical connectives_, _connectives_). A estas últimas también se las puede
llamar _conectores lógicos_ u _operadores lógicos_ o, simplemente,
_conectores_ u _operadores_.

En una proposición compuesta, se puede dar el anidamiento, y de hecho es lo
más usual. Es decir, una proposición compuesta puede constar de
proposiciones simples unidas mediante operadores o bien por proposiciones
compuestas y proposiciones simples, uniendo mediante operadores al igual que
antes.

Tal y como dijimos en la sección anterior, nos encontramos dentro de la
lógica formal simbólica, por lo que usamos una simbología con la que nos
comunicamos sin ambigüedad y de forma muy directa. Así, usamos letras como
si se tratara de variables para designar a una proposición. Normalmente, la
regla de estilo que se usa consiste en usar una letra minúscula en
tipografía en itálicas, como se hace normalmente con las variables en muchos
de los campos de las matemáticas por ejemplo, $p$.#footnote[En muchos
textos, la usan en mayúsculas: $P$.] Así, por ejemplo, se podría tener la
variable lógica $p$ que representaría a la proposición

#quote[
  Lloverá mañana.
]

Como es común, a veces somos algo imprecisos y, por ejemplo, decimos cosas
como "la proposición $p$...", en lugar de "la proposición representada por
$p$...".

Como puede imaginar, que se use la letra $p$ se debe a que es la letra con
la que comienza la palabra _proposición_ (o _proposition_, en inglés). Si se
tienen varias proposiciones, se suele seguir en orden alfabético: $p$, $q$,
etc. En otros libros he visto que siguen la regla de designar a las
proposiciones con letras mayúsculas: $P$, $Q$, etc. Evidentemente, esta
cuestión de estilo no afecta a los resultados ni a la validez de lo que se
explique.

Al tratarse de un lenguaje formal, la lógica formal cuenta también con
formas de combinar las proposiciones. Se tienen así los operadores. Por
ejemplo, se tiene el operador negación, que se suele representar por el
símbolo '$not$', que lo que hace es "invertir" el valor lógico de la
proposición sobre la que actúa. Más adelante estudiaremos en profundidad los
principales operadores lógicos.

Debe saber que, dentro de una expresión lógica, se conoce como *literal*
(_literal_) a una proposición o a la negación de una; por ejemplo, $p$ o
$not p$.

// TODO ¿Son lo mismo proposición simple y literal?

/*
Quizás no se debería llamar _conectiva_ al operador negación, ya que no
conecta a dos proposiciones, pero creo que se suele hacer.
*/

/*
Hay también operadores que actúan sobre más de una proposición. Se tiene,
por ejemplo, al operador conjunción, que se suele representar por '$and$'.
Se trataría de un operador que actúa sobre dos proposiciones, y, como tal,
sería un operador binario; pero, tal y como veremos más adelante, en
realidad puede actuar simultáneamente sobre un número arbitrario de estas.
Toma la forma de un operador infijo, es decir, se ubica entre las dos
proposiciones; por ejemplo, $p and q$. Si actuase, por ejemplo, sobre cuatro
proposiciones, podría verse una expresión como la siguiente: $p and q and r
and s$.

En la notación que se usa en el estudio de la lógica en el ámbito de las
ciencias de la computación y los sistemas electrónicos digitales, se
representa normalmente con la misma notación que el producto de números, es
decir, con el símbolo "$dot.op$" o por aposición; $p dot.op q$ o por $p q$.
*/

Los operadores lógicos básicos que usaremos serán: negación, disyunción,
conjunción, condicional y bicondicional. Existen muchos más. De hecho,
veremos cuántos pueden existir, dependiendo del número de variables lógicas
sobre las que operen. Dedicaremos una sección a estudiar cada uno de los
básicos, además de que tocaremos algo de otros menos básicos.

// TODO Quizás, mover lo siguiente a más adelante. A la parte después de
// presentar los operadores.

De todos modos, tal y como se demuestra en las asignaturas de diseño lógico
digital, bastaría con un solo operador equivalente a una puerta
NAND,#footnote[que sería como una negación de una conjunción] o,
alternativamente, uno equivalente a una puerta NOR, para poder obtener todos
los demás y, por tanto, llegar a obtener expresiones de cualquiera de las
funciones lógicas posibles. Esto no lo trataremos aquí.

Además de las proposiciones, en el capítulo siguiente se verá una
generalización de estas: los predicados. De momento, basta con que sepa que
en matemáticas existen muchos enunciados que no se pueden representar por
medio de proposiciones, pues se requiere un lenguaje algo más expresivo.




