== Capítulo 3. Relaciones y aplicaciones
<capítulo-3.-relaciones-y-aplicaciones>
=== Propiedades básicas de una relación
<propiedades-básicas-de-una-relación>
Advierta que en @pineda[ p.~75], al pasar a ver estas propiedades, nos
centramos en las relaciones #emph[homogeneas];, es decir, de la forma
$cal(R) subset.eq U times U$, siendo $U$ un conjunto. Se podrían ver de
forma más general, pero sería más engorroso.

En cuanto a la clasificación que se hace según estas propiedades, en
@ol-set-theory se da una clasificación más "rica", es decir, que
contempla más casos. Además resulta ser distinta a la de nuestro libro
en ciertos casos.

Si se fija, se dan dos definiciones por cada una de esas propiedades que
se mencionan. La segunda sería la que se suele dar comúnmente.

Me gustaría comentar que, en lo que respecta a la propiedad de simetría,
a partir de la segunda definición, se tiene, por aplicación directa de
de la definición de #emph[subconjunto];, que
$cal(R) subset.eq cal(R)^(- 1)$. Además, como se da para todos los pares
de puntos, se tendrá también que $cal(R)^(- 1) subset.eq cal(R)$ (por
cierto, esta es la que se da en el libro), y, por tanto, se tiene que
$cal(R) = cal(R)^(- 1)$. Esta sería quizás una definición más elegante.

Me gustaría resaltar que a veces conviene usar el (condicional)
contrarrecíproco de esta definición, en la segunda forma en la que se
expresa; es decir: si $\( y \, x \) in.not cal(R)$, entonces
$\( x \, y \) in.not cal(R)$. O, cambiando la notación, ya que se cumple
para todos los pares de elementos: si $\( x \, y \) in.not cal(R)$,
entonces $\( y \, x \) in.not cal(R)$. Advierta que también se da
entonces el (condicional) contrario del original.

En cuanto a las propiedades que se pueden cumplir en las relaciones, me
gustaría aclarar que estas no tienen por qué ser excluyentes. Por
ejemplo, una relación puede ser a la vez simétrica y antisimétrica. Esto
sucedería, por ejemplo, con la relación identidad para cualquier
conjunto $A$, que solemos representar por "$upright("id")_A$" o por
"$I_A$".

Para ver que la relación de @pineda[ ejemplo 2.43] cumple la propiedad
de simetría, bastaría con ver que, para cualesquiera $x \, y in bb(R)$,
se cumple:

$ \( x \, y \) in cal(G) med arrow.l.r.double med x^2 + y^2 = 1 med arrow.l.r.double med y^2 + x^2 = 1 med arrow.l.r.double med \( y \, x \) in cal(G) $

Para ver que en el ejercicio 2.42 no se cumple, bastaría con encontrar
un contraejemplo. Tomando los valores $x = 4$ e $y = 2$, se tiene que se
cumple $x cal(R) y$ pero no se cumple $y cal(R) x$.

Lo que se hace en @pineda[ ejemplo 3.2], es decir, a partir de un
concepto (vector fijo) definir a uno más general (vector libre) a partir
de las clases de equivalencia, es algo que se hace a menudo. TKTK.

En @pineda[ ejemplo 3.4], en la expresión del conjunto $E$, la parte

$ \| a \| thin + thin \| b \| eq.not 0 $

tiene el propósito de excluir (de un modo bastante elegante) el caso
$a = b = 0$, que daría lugar a un punto, en lugar dea a una recta.

Lo que se explica al final de este ejemplo es que existen varias
expresiones algebraicas equivalentes para una misma recta. Por ejemplo,
si multiplicamos a todos los términos por $2$, seguirá siendo la misma
recta en realidad.

Evidentemente, para trabajar con expresiones algebraicas en geometría,
debemos hacer uso de una de estas expresiones; a esta se la califica de
#emph[representante] de esa clase de equivalencia. A la recta la
definimos como toda esa clase de equivalencia.

Ahora, presenta dos ejemplos en los que se muestra la necesidad de
definir conjuntos numéricos más amplios que $bb(N)$. No obstante, estos
se definirán con mucho más detalle en capítulos posteriores.

En @pineda[ ejemplo 3.8], al definir la relación de equivalencia
"$epsilon$", definida del modo siguiente:

$ \( a \, b \) thin epsilon thin \( c \, d \) upright(" si y solo si ") a + d = b + c $

en realidad piense en que esto viene de manipular las ecuaciones
anteriores, es decir,

$ x + b & = a\
x + d & = c $

de lo que se obtiene

$ x = a - b = c - d $

y de ahí $a + d = b + c$. Algo similar se hace en el ejemplo 3.9 solo
que con el producto y la división. Simplemente, hay que igualar dos
expresiones genéricas y despejar las $x$. De

$ b x & = a\
d x & = c $

tenemos

$ \( b x \) c & = a \( d x \)\
b c x & = a d x\
b c & = a d $

Tal y como se verá más adelante (además de en teoría de números), en
$bb(Q)$ existe un representante de clase especial: la fracción en
términos mínimos. TKTK.

El comentario que se hace en @pineda[ ejemplo 3.10], aunque pertenezca
más bien a la teoría de números, (puede verla en la Matemáticas
Discretas) y se vea en profundidad en esta, me gustaría aclararlo aquí.

La definición que se suele dar de #emph[congruencia] módulo $p$ de dos
números $a \, b in bb(Z)$ es

$ a equiv b med \( upright("mód") #h(0em) p \) quad arrow.l.r.double quad p divides \( a - b \) $

Hemos usado el operador "divide a…", que se representa por "$\|$".

Advierta que lo anterior es lo mismo que

$ exists k in bb(Z) upright(" tal que ") k p = a - b $

Es fácil deducir que esto es lo mismo que decir que el resto tanto de
$a$ como de $b$ al dividirlo mediante la división euclidiana entre $p$,
es el mismo.

Por el Teorema de la División Euclidiana (más conocido como el Algoritmo
de la División, aunque no es un algoritmo en realidad), se tiene que

$ a & = q_1 p + r_1\
b & = q_2 p + r_2 $

para $q_1 \, q_2 \, r_1 \, r_2 in bb(Z)$ siendo $0 lt.eq r_1 < p$ y
$0 lt.eq r_2 < p$.

Restando tenemos

$ a - b & = \( q_1 p + r_1 \) - \( q_2 p + r_2 \)\
 & = p \( q_1 - q_2 \) + \( r_2 - r_1 \) $

Uniendo este resultado con la hipótesis anterior tenemos que

$ k = q_1 - q_2 upright(" y ") r_2 - r_1 = 0 $

con lo que tenemos que $r_1 = r_2$, tal y como deseábamos demostrar.

Es fácil ver cuáles son todas las clases de equivalencia, o, lo que es
lo mismo, el conjunto cociente, al ver los únicos valores posibles de
$r_1$ y $r_2$.

En @pineda[ ejemplo 3.16], se tendría la relación
$upright("\"") subset.eq upright("\"") subset.eq cal(P) \( U \) times cal(P) \( U \)$.
Como puede ver, esta notación es a veces un poco engorrosa. Por cierto,
hemos entrecomillado el símbolo que usamos en la relación para
distinguirlo aquí del otro.

Ahora, se pasa a las relaciones de orden. Estas, en muchas ocasiones,
son más difíciles de comprender que las de equivalencia, principalmente,
porque a estas alturas estará muy acostumbrado a emplear una relación de
orden en particular; la usual de los números de cualquier tipo. La
relación de orden supone una generalización de ese concepto de
#emph[orden] que se emplea en los números.

En realidad, los órdenes estrictos se pueden definir por medio de la
propiedad irreflexiva, como se hace en @ol-set-theory. TKTK.

En la definición de #emph[conjunto ordenado];,
$\( U \, prec.curly.eq \)$, advierta que el orden $prec.curly.eq$ tiene
que corresponder a ese conjunto $U$, es decir,
$prec.curly.eq subset.eq U times U$.

Al hablar de las relaciones de orden, en @pineda[ p.~82], se pasa por
alto explicar que cosas como "$a prec.curly.eq b prec.curly.eq c$" es
una forma abreviada de expresar

$ a prec.curly.eq b upright(" y ") b prec.curly.eq c $

Sería válido para cualquier relación de orden. A la expresión abreviada,
es decir, a una expresión como "$a prec.curly.eq b prec.curly.eq c$", me
gusta llamarla "expresión en forma concatenada".

De hecho, se puede deducir algo más de la definición de
#emph[intervalo];. Tomemos a un intervalo genérico $\( a \, b \]$ como
ejemplo siendo $a \, b in U$ y la relación de orden
$prec.curly.eq subset.eq U times U$. Se tiene lo siguiente:

$ \( a \, b \] & = { x in U med \| med a prec x prec.curly.eq b } = { x in U med \| med a prec x upright(" y ") x prec.curly.eq b }\
 & = { x in U med \| med a prec x } sect { x in U med \| med x prec.curly.eq b } = \( a \, arrow.r \) sect \( arrow.l \, b \] $

Algo análogo se tendría para los otros tipos de intervalos.

Tal y como se explica luego, para cualquier $a in U$,

$ \[ a \, a \) = \[ a \, a \) = nothing $

Es fácil verlo si descomponemos la expresión en forma concatenada en la
conjunción de dos relaciones. Tenga en cuenta que la intersección de dos
conjuntos en los que uno contiene a un elemento $a$ con uno que no lo
contiene, no contendrá a dicho elemento $a$.

A partir de @pineda[ ejemplo 3.22], comienza a complicarse el estudio de
las relaciones de orden.

En este ejemplo, tenga en cuenta que "$lt.eq_L$" (TKTK quitar espacios)
y "$lt.eq$" son relaciones de orden diferentes. La primera es el orden
lexicográfico, definido para elementos de $bb(R)^2$. La otra es el orden
usual en $bb(R)$.

En @pineda[ ejemplo 3.23 figura 3.10], creo que debería tener el
cuadrado que encierra al área sombreada con línea discontinua ya que se
trata de un intervalo abierto y, por tanto, se usa un orden (producto)
estricto, tal y como se indica en esa área sombreada.

Evidentemnte, el orden producto estricto se definiría

$ \( a \, b \) lt.eq_P \( c \, d \) quad arrow.l.r.double quad x < a upright(" e ") y < b $

Además, por lo que explicamos antes, se tendría que

$ \( \( a \, b \) \, \( c \, d \) \)_(lt.eq_P) = \( \( a \, b \) \, arrow.r \)_(lt.eq_P) sect \( arrow.l \, \( c \, d \) \)_(lt.eq_P) $

Aunque pasemos a usar una notación genérica para las relaciones de
orden, es decir, "$prec.curly.eq$" y similares, seguiremos diciendo que
un elemento es #emph[menor o igual] que otro si le precede según esa
relación de orden. Es decir, debe tener en cuenta que ampliamos el
significado de TKTK.

En lo que respecta a la acotación de conjuntos, es relevante que sepa
que ese adjetivo, #emph[acotado];, en inglés es #emph[bounded];, y,
#emph[cota] se traduce por #emph[bound];.

Creo que estos conceptos relacionados con la acotación son relevantes
para la formalización del cálculo, cosa que se suele conocer como
#emph[análisis matemático];. Creo que tienen relación con la topología.

Advierta que, aplicando la definición de intervalos iniciales y finales
(@pineda[ p.~85]) a la definición de #emph[cota superior] $u in U$ de
$A subset.eq U$, tenemos que esta se puede expresar alternativamente
como

$ A subset.eq \( arrow.l \, u \]_prec.curly.eq $

No hay más que aplicar la definición de #emph[subconjunto];.
Análogamente, para una cota inferior $d$ se tiene

$ A subset.eq \[ d \, arrow.r \)_prec.curly.eq $

Si se cumplen las dos, se tiene que el conjunto $A$ está acotado. Pero,
además, por estas otras expresiones, se tiene que

$ A subset.eq \[ d \, arrow.r \)_prec.curly.eq sect \( arrow.l \, u \]_prec.curly.eq = \[ d \, u \]_prec.curly.eq $

Lo que acabamos de explicar es, de hecho, la primera parte de la
demostración de la observación de @pineda[ p.~87] (si se cambian $d$ por
$a$ y $u$ por $b$); es decir, la demostración de la implicación
"$arrow.r.double$". Quedaría por ver la implicación en el otro sentido,
"$arrow.l.double$". Veámosla.

$ A subset.eq \[ a \, b \]_prec.curly.eq & med arrow.l.r.double med forall x in A \, med x in \[ a \, b \]_prec.curly.eq\
 & med arrow.l.r.double med forall x in A \, med x in \[ a \, arrow.r \)_prec.curly.eq sect x in \( arrow.l \, b \]_prec.curly.eq\
 & med arrow.l.r.double med forall x in A \, med x in \[ a \, arrow.r \)_prec.curly.eq upright(" y ") x in \( arrow.l \, b \]_prec.curly.eq\
 & med arrow.l.r.double med a upright(" es cota inferior y ") b upright(" cota superior ") $

El concepto de #emph[máximo] (#emph[greater];) de un conjunto $A in U$
es lo mismo que el de #emph[cota superior] solo que ciñéndonos a los
valores de $A$, en lugar de los de $U$. Algo análogo sucede para el
concepto de #emph[mínimo] (#emph[least];). Además, tal y como se ve
luego, estos son únicos, necseariamente.

Por su parte, el supremo es, tal y como se explica en la observación
tras su definición, el máximo del conjunto de sus cotas superiores.
Análogamente, el ínfimo sería el mínimo de las cotas inferiores. Estos
son también únicos.

Hacer la demostración de esta observación. TKTK

En @pineda, la Proposición 3.26 es importante y conviene que sepa hacer
las demostraciones de esta.
