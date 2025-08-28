
#import "@local/ctafur-notes:0.1.0": *



Ahora, sería momento de presentar un operador que tiene gran relevancia para
la divisibilidad. Se le llama de varias formas: "división exacta", "divide
a...", etc. Se designa por el símbolo '$divides$'.#footnote[En @weissman
proponen una notación alternativa ya que es un operador  que no es
simétrico, aunque dan por hecho que no va a popularizarse su propuesta.]
También, cuando se cumple, se califica de _factor_ (_factor_) y de
_múltiplo_ (_multiple_) a sus operandos izquierdo y derecho,
respectivamente.

Puede consultarlos en @bujalance-costa[p. 3] y @rosen-number-th[p. 36].

Advierta que se trata de un operador lógico, es decir, la evaluación en cada
caso particular produciría como valor a _verdadero_ o a _falso_; no un
número.




==== ¿Es cierto que $0 divides 0$?

De la definición del operador "división exacta" se deduce que el número $0$
es especial cuando se comporta como factor. En principio, no es factor de
ningún número... salvo quizás de sí mismo. A este respecto, lo normal (y que
será lo que encuentre en la mayoría de textos) es considerar que el $0$ no
es factor de ningún número entero. Por el contrario, hay otros, algo más
modernos, como @weissman, que admiten como cierto que $0 divides 0$, y, por
tanto, quitan esa excepción de la definición del operador en cuestión.

Esta discrepancia refleja que se trata de una cuestión abierta y sobre la
que no existe aún una última palabra. Personalmente, me atrae la idea de
admitir que $0 divides 0$, al hacer más "elegantes" y "limpios" algunos de
los enunciados de definiciones, teoremas, etc., aunque también hace que
otros sean más "feos", es decir, contengan excepciones (también llamadas de
forma más literaria "parches" o "verrugas").

Es lo que sucede, por ejemplo, con el máximo común divisor de $0$ y $0$, es
decir, $"mcd"(0, 0)$, que se le asigna el valor $0$. Este concepto se
estudia más adelante, pero recuerde, cuando lo vea, que si admitimos que $0
divides 0$ llegamos a esa conclusión de forma natural, mientras que si no lo
admitimos le asignaremos ese valor mediante consenso, es decir, como una
excepción a la definición de _máximo común divisor_.

Puede consultar tambíen el vídeo siguiente si desea filosofar sobre esta
cuestión: #link("https://www.youtube.com/watch?v=5WbK9O9JNDk").





==== Explicitud innecesaria

Independientemente de la cuestión anterior, algo que puede ver es que muchos
enunciados de definiciones, teoremas, etc. a veces se presentan con una
grado de explicitud que en realidad no es necesario. Veámoslo poniendo un
teorema como ejemplo. Se trata del teorema que muestra la transitividad del
operador "divide a...". Se tiene, por un lado, en @bujalance-costa[p. 4] se
presenta, en Propiedades 1-1.3 punto 5 lo siguiente (que nosotros
presentamos aquí como un teorema#footnote[pues una lista de propiedades no
deja de ser en el fondo una lista de teoremas; incluso muchos de los
ejercicios serán teoremas en el fondo]).

// TODO En realidad, esto no está bien del todo.

#theorem()[
  Sean $a$, $b$ y $c$ números enteros. Sean $a eq.not 0$ y $b eq.not 0$. Si
  $a divides b$ y $b divides c$, entonces $a divides c$.
]

Este mismo teorema lo presenta @rosen-number-th[p. 37] (traducido al
español) del modo siguiente.

#theorem()[
  Si $a$, $b$ y $c$ son enteros con $a divides b$ y $b divides c$, entonces
  $a divides c$.
]

Como ve, en este último no se menciona que se debe excluir el caso en el que
$a eq.not 0$ y $b eq.not 0$. Pero es que en realidad no es necesario
hacerlo, pues, como, por ejemplo, $0$ no divide a $b$ (si suponemos que $0$
no divide a ningún número entero), en el condicional no se da el antecedente
y, por tanto, el consecuente será verdadero. Esto es lo que se suele llamar
una proposición (o un predicado) _vacuamente cierto_ (_vacuously true_).

En mi opinión, el enunciado de @bujalance-costa es innecesariamente más
explícito, aunque no es que se esté cometiendo un error.






==== Propiedades del operador división exacta

Existen muchas propiedades que se pueden deducir fácilmente de la definición
del operador división exacta. Al ser tantas, lo normal no es presentarlas
como teoremas o como propiedades, sino que muchas veces se incluyen como
ejemplos o ejercicios. Hay algunas que son más generales y que se presentan
como teoremas, de las que muchas otras son casos particulares. Además, estas
que considero importantes se usan en muchos resultados sobre la
divisibilidad.

A este respecto, puede consultar @rosen-number-th[p. 40] y TKTK. Creo que en
@rosen-number-th se dedica menos contenido a esta materia que en @burton,
que cuenta con un montón de ejercicios.

Tal y como dije antes, se puede admitir perfectamente que $0 divides 0$. La
demostración es muy sencilla, basándonos en la definición del operador
división exacta. ¿Existe un $q in bb(Z)$ tal que $0 = 0 dot.op q$? Sí, de
hecho, existen infinitos: todo $bb(Z)$.

Tal y como dije, al admitir esto, se modificarían otras de las propiedades.
Por ejemplo, se admitiría que, para todo $a in bb(Z)$, se cumple que $a
divides 0$. No habría que añadir una excepción para el caso $a = 0$.

Sin embargo, en la propiedad "Para todo $a in bb(Z), med 0 divides.not a$",
habría que añadir la excepción "$a eq.not 0$".

Otras que no se mencionan en algunos textos pero que son muy evidentes son
$1 divides a$ y $a divides a$, cuyas demostraciones son triviales;
simplemente, $q = a$ en el primer caso y $q = 1$ en el segundo. Por cierto,
advierta que esta última es la propiedad reflexiva del operador "divide
a...".

Algunas de las que presentan en @bujalance-costa[p. 4] son en realidad casi
consecuencia inmediata de los Teoremas 1.8 y 1.9 de @rosen-number-th[p. 37].
A estos dos a mí me gusta llamarlos, respectivamente, Teorema del Factor del
Múltiplo y Teorema del Factor de la Combinación Lineal. Por ejemplo la
Propiedad 4 en @bujalance-costa[p. 4] es un caso particular de la 6 (Teorema
1.9 en @rosen-number-th[p. 37]) junto con que todo número (excepto quizás el
$0$) divide a $0$. No hay más que tomar $b = 0$.

Por cierto, si se fija, el Teorema 1.8 sería la propiedad transitiva del
operador "divide a...".






==== Ejercicio

Es fácil resolver un ejercicio cuando nos piden comprobar, para un caso que
sea cierto, si un número divide a otro. Sin embargo, si es un ejericio en el
que resulta que no es cierto, ¿cómo se comprueba? ¿Se prueba para todos los
casos? Es imposible, pues habría que probar con infinitos números. Bueno, sí
que existe una forma. Veámoslo con un ejemplo.

Queremos saber si $2$ divide a $5$.

// TODO Quizás, sería mejor hacerlo por la Propiedad de Buena Ordenación.

Supongamos el conjunto siguiente:

$ A = {k in bb(Z) | k = 2 m, med m in bb(Z), med m gt.eq 3} $

Es decir, el conjunto de múltiplos de $2$ mayores o iguales que $3$. Por la
Propiedad de Buena Ordenación, este subconjunto de $bb(Z)$ tiene un primer
elemento. Este es $k = 2 dot.op 3 = 6$. Por tanto, sabemos que, para todo $n
in A, med 6 lt.eq n$.

TKTK.

// TODO Para la limitación en los números por debajo, quizás podríamos hacer
// los inversos o el conjunto complementario de $B = {k in bb(Z) | k = 2 m,
// med m in bb(Z), m gt.eq 2} y hacerle el valor absoluto. Ahí quizás
// podamos aplicar también el Principio de Buena Ordenación.

// TODO Si no lo hago así, lo hago por la monotonía de la función $f(m)$.


/*
Supongamos la función $f(m) = 2 m$ en la que $m in bb(Z)$. Supongamos ahora


Por un lado, vamos a ver si se cumple
para $4$, en lugar de $5$. Se cumple ya que $2 dot.op 2 = 4$. De hecho, en
general, se tiene siempre que

$ "Para todo " m in bb(Z) " con " m lt.eq 2 . quad 2 m lt.eq 4 $

Esto se debe a que la función $f (m) = 2 m$ con el dominio en $bb(Z)$ es una
función monótona estrictamente creciente. TKTK.

Por otro lado, se tiene siempre que

$ "Para todo " m in bb(Z) " con " m gt.eq 3 . quad 2 m gt.eq 6 $

por una razón análoga a la del otro caso.

Así, puesto que $m$ no puede tomar un valor en $bb(Z)$ entre $2$ y $3$,
todos los valores de la función $2 m$ se irán por encima de 6 o por debajo
de $4$, por lo que nunca podrá ser $5$. Por tanto, $2 divides.not 5$.

Es decir, hemos demostrado que existe un $q in bb(Z)$ con el que se cumple

$ 2q < 5 < 2(q+1) $
*/

Este ejercicio es en esencia lo mismo que el punto c del Ejemplo 1-1.2 de
@bujalance-costa[p. 3].





==== Reglas de precedencia del operador divisibilidad

Algo que no tengo del todo claro son las reglas de precedencia que se
consideran cuando aparece el operador "divide a...". Por lo que veo, parece
que se suele dar más prioridad al operador divisibilidad que a la
multiplicación, pero no así con la suma. Por lo que puede ver sin necesidad
de usar paréntesis, cosas como $p divides a dot.op b$ o $p divides a thin
b$, para designar que $p$ divide al producto de $a$ y $b$, pero, si en lugar
del producto es la suma, sí se usarán paréntesis, como en la expresión $p
divides (a + b)$.

En cualquier caso, puede hacer uso de paréntesis en caso de duda y no le
puede decir nadie que esté mal.




==== Más propiedades del operador divisibilidad y su orden

Del Ejercicio 15 de @rosen-number-th[p. 40], que es lo mismo que el punto a
del Ejercicio 1-1.5 de @bujalance-costa, se deduce que, si tenemos $a, b in
bb(Z)$ tales que $a divides b$, podemos admitir como ciertas todas las
combinaciones cambiándoles los signos a esas variables; es decir,

$ (-a) divides b,
    quad a divides (-b),
    quad (-a) divides (-b) $

Este resultado se usa con frecuencia.

En el fondo, sería un caso particular del Teorema 1.9 de @rosen-number-th[p.
37], si se tiene en cuenta que todo número entero (salvo quizás el $0$)
divide a $0$.

Hemos visto ya que el operador "divide a..." cumple las propiedades
reflexiva y transitiva. Nos quedaría por ver si cumple la simétrica o la
antisimétrica, para clasificarlo como un tipo especial de relación. La
simétrica es fácil ver que no se cumple; bastaría con un contraejemplo como
$3 divides 9$ y $9 divides.not 3$. Sin embargo, sí que existe aquí algo
parecido a la antisimétrica. Concretamente, el teorema siguiente.

#theorem()[
  Si $a divides b$ y $b divides a$, entonces o bien $a = b$ o bien $a = -b$.
]

Este sería el Ejercicio 14 de @rosen-number-th[p. 40] (no viene la solución)
o el punto 8 en las propiedades de @bujalance-costa[p. 4].

La demostración sería la siguiente.

#proof[
  Si se fija, se tendrían tres casos posibles. Por un lado, si $a = b = 0$,
  si se admite que $0 divides 0$ entonces es fácil ver que es cierta.

  Por otro lado, para los casos $a eq.not 0$, $b = 0$ y $a = 0$, $b eq.not
  0$, sería vacuamente verdadera.

  Veamos ahora el caso en el que $a eq.not 0$ y $b eq.not 0$, que sería el
  más interesante.

  Como $a divides b$, se tendrá un $q_1 in bb(Z)$ tal que

  $ b = a q_1 $

  Por el otro lado, como $b divides a$, se tendrá un $q_2 in bb(Z)$ tal que

  $ a = b q_2 $

  Manipulando las expresiones, llegamos a que

  $ a = a (q_1 q_2) $

  Por tanto, $q_1 q_2 = 1$. Para que se dé esto, existen solo dos
  posibilidades: que $q_1 = q_2 = 1$ o bien que $q_1 = q_2 = -1$. (Esto
  quizás requiere de una demostrción. TKTK).

  // TODO La demostración de esto último TKTK se podría hacer con el valor
  // absoluto.

  Luego, simplemente con sustituir el valor de $q_1$ en la ecuación anterior
  $b = a q_1$, se demuestra que tiene que darse $a = b$ o que $a = -b$.
]

Es decir, no se cumple la antisimétrica. Pero si hacemos una restricción de
los conjuntos en los que se definen esas variables $a$ y $b$ a los enteros
positivos, $bb(Z)^+$ ---o, incluso a $bb(Z)^+ union {0}$---, sí la cumple.
Podemos decir entonces que el operador '$divides$' es una relación (binaria)
de orden para $bb(Z)^+$. Eso sí, se trata de un orden parcial (no total),
cosa que podemos demostrar simplemente con el contraejemplo siguiente: $2
divides.not 3$ y $3 divides.not 2$.





==== Combinaciones lineales (enteras)

El concepto de _combinación lineal entera_ se explica en @rosen-number-th[p.
94]. Por cierto, en las asignaturas de teoría de números se suele obviar en
este sintagma el adjetivo _entera_, al darse por supuesto que nos referimos
a las de este tipo.

En general, las ecuaciones en las que nos interesan únicamente los valores
en $bb(Z)$ de la variable $x$ se conocen como _ecuaciones diofánticas_
(_Diophantine equations_), y se estudian más adelante en esta asignatura en
cierta profundidad.

También, un teorema que se usa mucho es el de las combinaciones lineales
enteras; sería el Teorema 1.9 de @rosen-number-th[p. 37], que sería
equivalente a la Proposición 0.29 y la 0.30 de @weissman[p. 16], en forma
conjunta. De estos, en @weissman[p. 16] se extrae el siguiente corolario,
que tiene bastante utilidad práctica.

#corollary(title: "Principio Dos de Tres de la Divisibilidad")[
  Dados $a, b, c in bb(Z)$ que satisfacen la ecuación $a + b = c$ y dado $d
  in bb(Z)$. Si dos de los números del conjunto ${a, b, c}$ son múltiplos de
  $d$, entonces el otro también lo será.
] <princ-dos-de-tres>

Debe tener en cuenta la Proposición 0.29 de @weissman[p. 16] para aplicarlo.

Para ver una aplicación de este principio, consulte el Problema 0.34 de
@weissman[p. 17]. La solución me parece un poco críptica, por lo que lo
pongo a continuación a mi manera.

// TODO Crear bloque de tipo problem.

#exercise()[
  ¿Tiene soluciones enteras la ecuación $7 x^2 + 11 = 21 y$?

  Suponiendo que la respuesta es "Sí" y aplicando el condicional
  contrarrecíproco del Principio Dos de Tres de la Divisibilidad, tenemos
  que, puesto que $7 divides.not 11$ (cosa que es evidente), entonces no es
  cierto que $7 divides 7 x^2$ y $7 divides 21 y$, o, expresado de otro
  modo, es falso que $7 divides 7(x x)$ y $7 divides 7(3y)$.

  Pero, en realidad esta afirmación es falsa, ya que, usando el Teorema del
  Factor del Múltiplo (Teorema 1.9 de @rosen-number-th[p. 37]), es evidente
  que se cumple tanto $7 divides 7(x x)$ como $7 divides 7(3y)$.

  Entonces, al haber llegado a una contradicción, será falsa la hipótesis de
  la que partimos, con lo que no existen $x, y in bb(Z)$ con los que se
  cumpla esa ecuación.
]




==== Relación entre '$|$' y '$lt.eq$'

Es también de destacar el Ejercicio 18 de @rosen-number-th[p. 40], que es lo
mismo que la Propiedad 7 de @bujalance-costa[p. 4]. La
demostración/resolución sería la siguiente.

#proof[
  Suponiendo que se cumple $a divides b$, se tiene, por la definición del
  operador "divide a...", que existe un $q in bb(Z)$ tal que $b = q a$.

  Como $a > 0$ y $b > 0$, se tiene que $q gt.eq 1$. Entonces, existirá un $c
  in bb(Z)$ siendo $c gt.eq 0$ tal que $q = c + 1$. Tenemos entonces

  $ b = q a = (c + 1) a = c a + a $

  Como $c gt.eq 0$ y $a > 0$, tenemos que $a c gt.eq 0$. Por tanto, por la
  definición del operador "mayor o igual que...", tenemos que

  $ b gt.eq a $

  como deseábamos demostrar.
]

Advierta que si complementamos esta propiedad con la que dice que si $a
divides b$ entonces $(-a) divides b$, y además $a divides (-b)$ y $(-a)
divides (-b)$, tenemos el corolario siguiente, que es una versión más
general del resultado anterior.

#corollary()[
  Dados $a, b in bb(Z)$, excepto si $a eq.not 0$ y $b = 0$. Si $a divides
  b$, entonces $|a| lt.eq |b|$.
]

Se presenta en @bujalance-costa[p. 7].

Por ejemplo, para el caso en el que $a < 0$ y $b > 0$. Se deduce que $-a >
0$.

Por otro lado, como por hipótesis se tiene que $a divides b$, del teorema
mencionado antes TKTK tenemos que $-a divides b$. Entonces estamos en el
caso del teorema anterior ya que tenemos dos números positivos: $-a$ y $b$.
Con lo que $-a lt.eq b$, que implicaría que $|a| lt.eq |b|$.

Para los demás casos sería análogo.

Advierta que el operador '$lt.eq$' sí es un orden completo mientras que
'$divides$' no, tal y como dijimos antes. Es como si este último estuviese
en cierto modo incluido dentro del otro.

/*
Quizás se podría haber demostrado todo de un solo golpe.

Para el caso con $a = b = 0$, la demostración es trivial, pues $0 divides 0$
y $0 = |0| lt.eq |0| = 0$. Para el caso con $a = 0$ y $b eq.not 0$ es
vacuamente verdadera pues $0 divides.not b$, es decir, el antecedente es
falso y, por tanto, el consecuente cierto.

Para el caso con $a eq.not 0$ y $b eq.not 0$, tenemos que existe un $q in
bb(Z)$ tal que

$ b = q a $

Además, por las propiedades del valor absoluto, tenemos que

$ |b| = |q a| = |q| dot.op |a| $

Como $b eq.not 0$, también será $q eq.not 0$, pues, de lo contrario, se
tendría $|b| = |q| dot.op |a| = 0$. Por tanto, $|q| gt.eq 1$, ya que el
valor absoluto es siempre positivo. Uniendo ambas condiciones, tenemos

$ |b| = |q| dot.op |a| gt.eq 1 dot.op |a| = |a| $

Si tiene curiosidad de por qué se excluye el caso para $a eq.not 0$ y $b =
0$, se debe fijar en que se cumple $a divides 0$, pero también se cumple
$|a| > 0 = |0| = |b|$.
*/
