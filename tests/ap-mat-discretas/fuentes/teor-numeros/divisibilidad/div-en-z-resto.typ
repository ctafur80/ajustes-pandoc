
#import "@local/ctafur-notes:0.1.0": *




La operación que se presenta en este apartado es algo más "rica" o expresiva
que el operador "divide a...". En lugar de dar como resultado un valor
lógico, nos da dos números que expresan la relación de divisibilidad que
existe entre dos números enteros (con alguna excepción).

Esta operación no es más que la división que aprendió en la educación
primaria. Se trata de la división sin dar decimales, es decir, teniendo en
cuenta únicamente los números enteros; no los racionales. De ahí que la
califiquemos de _entera con resto_. Pero en realidad existen varios tipos de
divisiones enteras con resto, aunque seguramente usted solo conozca la que
se presenta aquí. A esta se la suele conocer como _división euclidiana_
(_Euclidean division_). Esta es la única que usaremos en esta asignatura. En
@weissman[p. 13] la llaman _división con resto tradicional_. Otro ejemplo de
división entera con resto sería la división con resto mínimo de @weissman[p.
13].

Para que la división euclidiana tenga sentido, debe cumplirse el teorema que
se suele conocer como el Teorema del Algoritmo de la División. Es decir, esa
representación ---bajo las condiciones que se imponen en el teorema--- es
única, cosa que hace que tenga sentido hablar de la división euclidiana como
una representación alternativa de la relación de divisibilidad entre esos
dos números.

Alternativamente, se podría presentar el teorema diciendo que existe una
única representación de la relación entre $a$ y $b$ como

$ a = b q + r $

con esas condiciones.

En realidad, no se trata de un algoritmo, por lo que es un nombre
desacertado. Personalmente, prefiero llamarlo el Teorema de la División
Euclidiana.

// TODO Adjetivo euclida euclidiana

Puede encontrarlo como el Teorema 1.10 en @rosen-number-th[p. 37], pero en
realidad esto debería verse únicamente como un resultado preliminar, ya que
después se da un corolario (o presentado de cualquier otro modo) más general
incluyendo también a los divisores negativos en la operación. Esto se
presenta como el Ejercicio 25 de @rosen-number-th[p. 41] y como el Corolario
1-1.10 en @bujalance-costa[p. 10].

A los elementos que aparecen en el teorema se les asignan nombres, pero a
veces se olvida mencionar que al dividendo también se le llama _numerador_
y, al _divisor_, _denominador_.

Advierta que, sea cual sea el criterio que adopte respecto a si $0 divides
0$, es necesario especificar que no se dé $b = 0$. Si se diese, llegaríamos
a tener $r in bb(Z)$ y $r < 0$ (como caso particular del encadenamiento de
desigualdades $0 lt.eq r < 0$), cosa que conduciría a que $r = emptyset$ y,
por tanto, no se cumplirían las condiciones del teorema.

Advierta que el teorema en realidad no afirma una única cosa, sino dos: la
_existencia_ (_existence_) de esos dos números enteros $q$ y $r$ y la
_unicidad_ (_unicity_) de estos. Por tanto, la demostración constará de esas
dos fases. A los teoremas con esta propiedad se les suele calificar de
"teoremas de existencia y unicidad". En el fondo es como si se tratase de
dos teoremas.

En la demostración que hacen en @bujalance-costa[p. 10] echo en falta
algunas cosas. Por ejemplo, en la fase de existencia, parece que hace uso de
la función mayor entero (_greater integer function_) pero no llega a
justificarla en ningún lugar. Puede encontrar la definición y propiedades de
esta en @rosen-number-th[p. 7]. Además, en la fase de unicidad, tampoco me
parece elegante aludir a la "distancia" que da el valor absoluto.

Me resulta más elegante la demostración de @rosen-number-th[p. 38], aunque
yo cambiaría algunas cosas. La pongo a mi manera a continuación.

#proof[
  Primero, demostraremos la existencia.

  Considere el conjunto $S$ de todos los enteros de la forma $a - b k$ para
  $k in bb(Z)$, es decir,

  $ S = {a - b k | k in bb(Z)} $

  Tomemos ahora un subconjunto de este; el conjunto $T$ de todos los enteros
  no negativos en $S$.

  $T$ no es vacío ya que $a - b k$ es positivo siempre que $k < a \/ b$.

  Por la Propiedad de Buena Ordenación, $T$ tiene un elemento mínimo (_least
  element_). A este lo designaremos por $r = a - b q$.

  Por la forma en la que hemos definido a $T$, sabemos que $r gt.eq 0$.
  Además, es fácil ver que $r < b$. Vamos a justificarlo; lo haremos por
  reducción al absurdo.

  Si $r gt.eq b$, entonces

  $ r > r - b = a - b q - b = a - b (q + 1) gt.eq 0 $

  Recuerde que $b > 0$. Este último resultado contradice la elección de $r =
  a - b q$ como el menor entero no negativo de la forma $a = b k$. Por
  tanto, tendremos que $r < b$ y, por tanto, $0 lt.eq r < b$.

  Ahora, demostremos la unicidad.

  Supongamos que se tienen dos representaciones en la forma de división
  euclidea, en lugar de una; es decir, que existen $q_1, r_1, q_2, r_2 in
  bb(Z)$ siendo $0 lt.eq r_1 < b$ y $0 lt.eq r_2 < b$ con los que

  $ a = b q_1 + r_1 = b q_2 + r_2 $

  También supondremos, sin pérdida de generalidad, que $r_2 gt.eq r_1$.

  Por un lado, tenemos que, como $b > 0$, entonces $-b < 0$. Además, del
  hecho de que $r_2 gt.eq r_1$ se deduce que $r_2 - r_1 gt.eq 0$. Uniendo
  ambas, tenemos que $-b < 0 lt.eq r_2 - r_1$, o sea, $-b < r_2 - r_1$.

  Además, puesto que $0 lt.eq r_1 < b$ y $0 lt.eq r_2 < b$, tenemos, por un
  lado, que $-r_1 < 0$ y, entonces,

  $ r_2 &< b \
    r_2 - r_1 &< b - r_1 = b + (-r_1) < b - 0 = b $

  Uniendo ambos resultados, tenemos que

  $ -b < r_2 - r_1 < b $

  Por otro lado, de la igualdad

  $ b q_1 + r_1 = b q_2 + r_2 $

  operando tenemos

  $ 0         &= b(q_1 - q_2) + (r_1 - r_2) \
    r_2 - r_1 &= b(q_1 - q_2) $

  con lo que tenemos que $b divides (r_2 - r_1)$. Pero, puesto que se da $-b
  < r_2 - r_1 < b$, la única forma en la que se pueden "conciliar" ambas
  afirmaciones es que $r_2 - r_1 = 0$, o, lo que es lo mismo, que $r_1 =
  r_2$. Esto no llego a ver bien cómo lo justifica. La única forma en que se
  me ocurre a mí es haciendo uso del teorema que dice que, para $a, b in
  bb(Z)^+$, si $a divides b$ entonces $a lt.eq b$. TKTK.

  Una vez que se cumple esto último, se cumple también de forma inmediata la
  igualdad de los cocientes, es decir, $q_1 = q_2$. Designando por $r$ a
  $r_1$ y $r_2$, tenemos

  $ b q_1 + r &= b q_2 + r \
    b q_1 + (r - r) &= b q_2 + (r - r) \
    b q_1 &= b q_2 $

  y, ya que $b eq.not 0$, se tiene, por la propiedad cancelativa del
  producto, que $q_1 = q_2$.
]

En las dos fases (o dos demostraciones, al fin y al cabo), usamos lo mismo
pero de forma diferente; es decir, la reducción al absurdo o llegar a la
igualdad TKTK.

Tal y como he explicado, existe también la versión completa del teorema, en
la que se incluye la posibilidad de que el divisor sea negativo; eso sí,
distinto de $0$, tal y como hemos dicho. Vienen enunciados como el Corolario
1-1.10 de @bujalance-costa[p. 10] y el Ejercicio 26 de @rosen-number-th[p.
41].

La demostración de este se apoya en la del teorema anterior. Algo que echo
en falta en estas es que el simétrico (inverso) de la suma de un número
entero es siempre único. Es algo evidente pero que no está de más mencionar.

En la demostración se ven cosas que quizás no se mencionen de forma
explícita en el teorema (aunque sí implícita). Por ejemplo, que el divisor
multiplicado por el cociente debe quedar por "debajo" del dividendo, aun
cuando ese divisor sea un número negativo. Esto es lo que mencionaba de la
función mayor entero. Es decir, tal y como se ve en la primera parte de la
demostración, $b q$ queda siempre por "debajo" de $a$, tanto si se trata de
$a gt.eq 0$ como de $a < 0$. Concretamente, a una distancia menor de $|b|$.
Es evidente puesto que $r gt.eq 0$.

Así, por ejemplo, para los valores $a = -15$ y $b = 8$ se tendría la
descomposición (o representación) siguiente:

$ -15 = 8 dot.op (-2) + 1 = -16 + 1 quad "con" med 0 lt.eq 1 < 8 $

Es decir, ese $q$ tiene que valer $-2$ para que $b q$ quede por "debajo" de
$-15$.

Respecto a la otra división entera con resto que mencionamos, la que en
@weissman llaman la _división con resto mínimo_, en el Ejercicio 26 de
@rosen-number-th[p. 41] presentan el teorema que la hace válida; lo llaman
_algoritmo de la división modificado_.

También, me gustaría mencionar que en los lenguajes de programación de las
ciencias de la computación se usan operadores para la división, pero estos a
veces ---según el lenguaje del que se trate--- tienen un comportamiento algo
diferente al de este operador matemático. En muchos casos se hace con la
intención de dar más expresividad al lenguaje.



/*
Vamos a ver ahora la demostración del teorema.

#proof[
  La demostración va a ser de tipo constructivo.

  Vamos a dividirla en dos casos.

  Caso $b > 0$.

  Tomamos un valor $q in bb(Z)$ tal que sea el mayor con el que se cumpla $b
  q lt.eq a$. Es decir, $b q$ es el mayor múltiplo de $b$ que es menor o
  igual que $a$. Entonces, se da

  $ b q lt.eq a < b (q + 1) $

  La desigualdad de la derecha tiene que darse necesariamente porque, si con
  nuestro $q$ no se cumple $a < b (q + 1)$, es que lo hemos seleccionado
  mal. En ese caso, tendríamos que haber elegido $q + 1$ o algún otro valor
  superior.

  Ahora, defino una variable $r = a - b q$, ya que deseo que se dé $a = b q
  + r$, y resto $b q$ en todas las partes de ambas desigualdades.

  $ b q - b q & lt.eq a - b q < b (q + 1) - b q = b q + b - b q \
    0 & lt.eq r < b = |b| $

  Se da que $b = |b|$ porque nos encontramos en el caso en el que $b > 0$.
  Por cierto, advierta que la desigualdad $0 lt.eq a - b q$ es coherente con
  que, tal y como dijimos, $b q$ es el mayor múltiplo de $b$ menor o igual
  que $a$.

  Con esto, hemos demostrado la primera parte, es decir, que existen $q, r
  in bb(Z)$ tales que $a = b q + r$ con $0 lt.eq r < |b|$. Ojo, existen uno
  o varios. Es decir, hemos demostrado la existencia; ahora, queda demostrar
  la unicidad.

  Para esto, vamos a tratar de hacer una demostración por contradicción.
  Suponemos que lo anterior se cumple para dos pares de $q$ y $r$ distintos
  entre sí. Los designaremos por $q_1$ y $r_1$, y $q_2$ y $r_2$, y suponemos
  que se da, tal y como acabamos de decir, $r_1 eq.not r_2$.

  Tenemos entonces que

  $ a & = b q_1 + r_1 & quad "con" med 0 lt.eq r_1 < |b| & = b \
    a & = b q_2 + r_2 & quad "con" med 0 lt.eq r_2 < |b| & = b $

  Vamos a quedarnos, de momento, con las ecuaciones de la izquierda. Si
  restamos ambas expresiones, tenemos

  $ a - a &= b q_1 + r_1 - (b q_2 + r_2) \
    0 &= b (q_1 - q_2) + (r_1 - r_2) \
    r_2 - r_1 &= b (q_1 - q_2) $

  Por tanto, tenemos que $b divides (r_2 - r_1)$, ya que $(q_1 - q_2) in
  bb(Z)$. Por la Proposición #link(<prop-factor-men>)[];, se tiene que

  $ |b| lt.eq |r_2 - r_1| $

  Ahora, nos centraremos en las desigualdades. Ya que se cumplen $0 lt.eq
  r_1 < |b| = b$ y $0 lt.eq r_2 < |b| = b$, se dará necesariamente que, en
  la recta real (o entera), la distancia entre $r_1$ y $r_2$ será menor
  (estrictamente) que $b$, que es lo mismo que decir que

  $ |r_2 - r_1| < b = |b| $

  que justamente contradice la conclusión a la que acabábamos de llegar.

  Por tanto, al darse esta contradicción, la premisa de la que partimos, que
  era que $r_1 eq.not r_2$ será falsa. Por lo tanto, se da que $r_1 = r_2$.

  Además, si $r_1 = r_2$, veamos qué sucederá al sustituirlos en la ecuación
  .

  $ r_2 - r_1 = b (q_1 - q_2) $

  Como $r_1 = r_2$, se tiene

  $ 0 = b (q_1 - q_2) $

  y, como partimos de la premisa de que $b eq.not 0$, se tiene que $q_1 -
  q_2 = 0$, o, lo que es lo mismo, $q_1 = q_2$.

  Así, hemos demostrado que $q$ y $r$ son únicos.

  Caso $b < 0$.

  Si $b < 0$, entonces, $-b > 0$ y podemos aplicar lo que demostramos para
  el caso anterior. Tenemos que existen $q, r in bb(Z)$ siendo $0 lt.eq r <
  |-b|$, para los que se cumple

  $ a = (-b) q + r $

  Ahora, podemos manipular la expresión anterior.

  $ a = (-b) q + r = (-q) b + r quad "con" med 0 lt.eq r < |-b| = |b| $

  con lo que hemos demostrado que existen $-q, r in bb(Z)$ únicos con los
  que se cumple la división en $bb(Z)$ con resto de $a$ entre $b$, siendo $b
  < 0$.
]
*/

Ahora, en @bujalance-costa[p. 14] pasan a explicar unas nociones de la
aritmética modular. En el fondo no es más que el concepto de congruencia,
que se explica en un capítulo posterior. Puede consultar también
@rosen-number-th[p. 145].

El Ejemplo 1-1.18 en @bujalance-costa[p. 16] creo que lo resuelve de un modo
innecesariamente complicado sin que le suponga un ahorro en el trabajo a la
hora de resolverlo, pues al final termina analizando todos los casos para
los distintos restos posibles. Me gustaría aclarar que el paso

$ n med "MOD" med 7 = (n med "MOD" med 7) med "MOD" 7 $

se justifica porque $0 lt.eq r < 7$, con lo que, si

$ n = 7q + r $

entonces

$ r = 7 dot.op 0 + r $

Es un resultado general que ha metido ahí (en medio de un ejercicio) como si
nada.

A partir de la división euclidiana, se puede definir la paridad de los
números. No es más que calificar de _par_ (_even_) a todo número que al
dividirlo entre $2$ produce un resto de $0$, mientras que _impar_ (_odd_)
será el que en ese caso produzca un resto de $1$. Advierta que son los dos
únicos valores que puede tomar el resto, como se demostraría con el Teorema
de la División Euclidiana. Por tanto, todo número entero será par o impar (y
no ambos). Pero para ese viaje no se necesitan alforjas; es decir, podríamos
definir la paridad en base al operador "divide a...": un número $a in bb(Z)$
es par si y solo si $2 divides a$; en caso contrario, es impar.

Algo que viene bien conocer es la paridad del producto de dos números, en
base a la paridad de estos. Así, se tiene que TKTK.

Como la multiplicación en $bb(Z)$ es conmutativa, omitimos un caso.

par por par da par

par por impar da par

impar por impar da impar

Uno de estos reslutados se usa, por ejemplo, en una de las demostraciones de
que $sqrt(2)$ es irracional.

Creo que la razón por la que en las referencias que pongo no lo suelen
presentar en la teoría sino únicamente en la resolución de algún ejercicio
es porque lo consideran muy elemental.




