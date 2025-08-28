

==== Operador división exacta

#block[
  Dados $a, k in bb(Z)$. Al número $a dot.op k$ se le conoce como _múltiplo_
  de $a$.
] <def-multiplo>

Advierta que también se podría decir, en ese caso, que $a dot.op k$ es
múltiplo de $k$.

A partir de la operación múltiplo, se puede definir la operación división
exacta, que sería su inversa, es decir, la que deshace la acción de esta. Se
podría decir que un número divide a otro si este último es múltiplo del
primero. Más bien, se debería haber usado el sintagma "si y solo si", ya que
son definiciones equivalentes. En cualquier caso, aquí se puede ser algo
impreciso, pues no tiene excesiva relevancia.

#block[
  Dados $a, b in bb(Z)$, decimos que "$a$ divide a $b$", y lo escribimos
  como $a divides b$, si y solo si existe algún $d in bb(Z)$ con el que se
  cumpla

  $ b = d dot.op a $
] <op-divide-a>

Es decir, si $b$ es múltiplo de $a$, tal y como dijimos.

Advierta que ese $d$ no tiene por qué ser único. Lo opuesto, es decir, si
para todo $d in bb(Z)$ se cumple que $b eq.not a dot.op d$, se dice que $a$
no divide a $b$, cosa que se suele designar como $a divides.not b$.

Existen otras formas de llamar a esto mismo. Si $a divides b$, también se
dice que "$a$ es un factor de $b$" o que, tal y como ya hemos visto, que
"$b$ es un múltiplo de $a$".

Advierta que el operador división exacta es un operador buleano (en inglés,
_Boolean_); el resultado será, por tanto, _verdadero_ o _falso_. No lo
confunda con el valor de esa variable que aquí hemos designado por $d$.

#block[
  Para cuaquier $a in bb(Z)$, se cumple:

  + $0 divides 0$.

  + $a divides 0$. Es decir, todo número $a$ divide a $0$.

  + Dado $a eq.not 0$, se cumple $0 divides.not a$. Es decir, ningún número
    distinto de $0$ es múltiplo de $0$.

  + $1 divides a$. Es decir, el 1 divide a todo número.

  + $a divides a$. Es decir, todo número se divide a sí mismo.
] <propi-divide-1>

En lo poco que llevamos de capítulo, he tomado dos decisiones que me harán,
si deseo mantener coherencia en el resto del texto, poner las demás
definiciones, teoremas, etc. algo distintas a las de textos clásicos como,
por ejemplo, @burton. Estoy siguiendo esta regla imitando lo que se hace en
@weissman. Concretamente, lo que origina todo el cambio es no poner, en la
definición del operador división exacta, una excepción excluyendo el caso $a
= 0$ y, en estas propiedades, admitir que $0 divides 0$.

Lo que debe tener en cuenta es que, en ciertas situaciones en las que se
tiene una proposición (en forma de proposición, teorema, lema, etc.) con un
operador lógico condicional, algunos casos serán vacuamente ciertos
(_vacuously true_). TKTK.

Independientemente de lo que se diga aquí para este operador, seguramente le
habrían enseñado en cursos previos que el $0$ no divide a ningún número,
incluido al $0$. TKTK. Si está más interesado en la posibilidad de que $0$
pueda dividir a $0$, puede ver el vídeo del siguiente enlace web:
#link("https://www.youtube.com/watch?v=5WbK9O9JNDk").

#block[
  + Para todo $q in bb(Z)$ se cumple $0 = 0 q$, con lo que será cierto que
    $0 divides 0$.

  + Se tiene que cumplir $0 = a q$ para algún $q in bb(Z)$. Si $a = 0$, es
    cierto por ser como el punto anterior. Si $a eq.not 0$, tomamos $q = 0$
    y se cumple.

  + Es fácil demostrar que no existe ningún $q in bb(Z)$ para el que se
    cumpla $a = 0 q$, pues $0 q = 0$ para cualquier $q$ y nos queda $a = 0$,
    pero esa posibilidad la hemos excluido.

  + Se tiene que cumplir $a = q 1$. Tomando $q = a$ se cumple.

  + Se tiene que cumplir $a = q a$. Tomando $q = 1$ se cumple.
]

Es fácil resolver un ejercicio cuando nos piden comprobar, para un caso que
sea cierto, si un número divide a otro. Sin embargo, si es un ejericio en el
que resulta que no es cierto, ¿cómo se comprueba? ¿Se prueba para todos los
casos? Es imposible, pues habría que probar con infinitos números. Bueno, sí
que existe una forma. Veámoslo con un ejemplo.

Queremos saber si 2 divide a 5. Por un lado, vamos a ver si se cumple para
4, en lugar de 5. Se cumple ya que $2 dot.op 2 = 4$. De hecho, en general,
se tiene siempre que

$ "Para todo " m in bb(Z) " con " m lt.eq 2 . quad 2 m lt.eq 4 $

Esto se debe a que la función $f (m) = 2 m$ con el dominio en $bb(Z)$ es una
función monótona estrictamente creciente. TKTK.

Por otro lado, se tiene siempre que

$ "Para todo " m in bb(Z) " con " m gt.eq 3 . quad 2 m gt.eq 6 $

por una razón análoga a la del otro caso.

Así, puesto que $m$ no puede tomar un valor en $bb(Z)$ entre 2 y 3, todos
los valores de la función $2 m$ se irán por encima de 6 o por debajo de 4,
por lo que nunca podrá ser 5. Por tanto, $2 divides.not 5$.

En lo que respecta a las reglas de prioridad en la notación, por lo que veo,
parece que en los libros siguen como regla de estilo dar más prioridad al
operador división exacta que a la multiplicación, pero no así con la suma.
Por lo que puede ver sin necesidad de usar paréntesis, cosas como $p divides
a dot.op b$ o $p divides a thin b$, para designar que $p$ divide al producto
de $a$ y $b$, pero, si en lugar del producto es la suma, sí se usarán
paréntesis, como en la expresión $p divides (a + b)$.

Veamos algunas propiedades más del operador división exacta.

#block[
  Dados $a, b, c in bb(Z)$, se cumple:

  + Si $a divides b$, entonces $- a divides b$. También, $a divides (-b)$ y
    $(-a) divides (-b)$. Debido a esto, todos los factores de un número $b$
    arbitrario vienen en pares de la forma $plus.minus a$.

  + Si $a divides b$ y $b divides c$, entonces $a divides c$. Esta es la
    propiedad transitiva del operador división exacta.

  + Si $a divides b$ y $b divides a$, entonces o bien $a = b$ o bien $a =
    -b$.
] <propi-divide-2>

La penúltima de estas propiedades es la transitiva, y, la última, es algo
parecido a la antisimétrica, aunque no llega a serlo, pues se admite que
también se puede dar la posibilidad $a = -b$. Para que sí se dé la
antisimétrica, podríamos restringirnos a los números naturales, en lugar de
los enteros. Entonces, con estas dos propiedades, junto con la reflexiva,
que se vio antes que también se cumple para todo número, se tiene que el
operador división exacta es una relación de orden, al igual que sucede con
el operador "menor o igual que" ('$lt.eq$'). Eso sí, al contrario de lo que
sucede con el operador menor o igual que, el operador división exacta es un
orden parcial, no total.

#block[
  + Como se da que $a divides b$, existe un $q in bb(Z)$ para el que

    $ b = a q $

    Entonces,

    $ b = a q = (a dot.op 1) q = [(-a) (-1)] q = (-a) [(-1) q] = (-a) (-q) $

    Como $-q in bb(Z)$, se da entonces que $-a divides b$.

    Esto engloba como casos particulares los casos $a = b = 0$, por un lado,
    y $a = 0$ y $b eq.not 0$, por el otro. Se comprueba fácilmente que, pare
    el primero, se cumple, ya que $- 0 = 0$, y, para el segundo, será
    vacuamente cierta, ya que $0 divides.not b$.

    Los demás casos de este apartado se hacen de forma similar.

  + Veamos el caso más general, en el que $a eq.not 0$, $b eq.not 0$ y $c
    eq.not 0$.

    Si se da $a divides b$, se tiene un $q_1 in bb(Z)$ tal que

    $ b = a q_1 $

    Del mismo modo, si $b divides c$, se tiene un $q_2 in bb(Z)$ tal que

    $ c = b q_2 $

    Entonces, sustituyendo,

    $ c = (a q_1) q_2 = a (q_1 q_2) $

    Advierta que, al igual que antes, $q_1 q_2 in bb(Z)$, por lo que se
    cumplirá necesariamente que $a divides c$.

    Ahora, habría que analizar los casos en los que aparece algún $0$.
    Serían varios, pero en realidad no entorpecen la versión generalista de
    esta propiedad ya que son vacuamente verdaderas. Por ejemplo, para el
    caso con $a eq.not 0$, $b = 0$ y $c eq.not 0$, el antecedente es falso,
    pues, si se da $a divides b$, entonces no puede darse $b divides c$. No
    voy a demostrarlo aquí para todos esos casos.

  + Veamos primero el caso en el que $a eq.not 0$ y $b eq.not 0$.

    Como $a divides b$, se tendrá un $q_1 in bb(Z)$ tal que

    $ b = a q_1 $

    Por el otro lado, como $b divides a$, se tendrá un $q_2 in bb(Z)$ tal
    que

    $ a = b q_2 $

    Manipulando las expresiones, llegamos a que

    $ a = a (q_1 q_2) $

    Por tanto, $q_1 q_2 = 1$. Para que se dé esto, existen solo dos
    posibilidades: que $q_1 = q_2 = 1$ o bien que $q_1 = q_2 = - 1$. (Esto
    quizás requiere de una demostrción. TKTK).

    Luego, simplemente con sustituir el valor de $q_1$ en la ecuación
    anterior $b = a q_1$, se demuestra que tiene que darse $a = b$ o que $a
    = -b$.

    Para los casos $a eq.not 0$, $b = 0$ y $a = 0$, $b eq.not 0$, sería
    vacuamente verdadera. Para el caso $a = b = 0$, se demostraría como los
    otros casos, siempre y cuando se tenga en cuenta que $- 0 = 0$.
]

Existen muchas otras proposiciones de este tipo que son triviales de
demostrar y no nos molestaremos en presentar aquí. Si las necesita para
algún ejercicio, puede deducirlas sobre la marcha. También, si quiere tener
un listado más amplio de este tipo de proposiciones, puede consultar
@burton.

A continuación vamos a dar dos proposiciones que, en combinación, nos dan la
posibilidad de abarcar un espectro muy amplio de casos para este operador.

Según la primera de estas, si un número divide a otro, entonces también
dividirá a todos los múltiplos de este.

#block[
  Dados $a, b, k in bb(Z)$. Si $a divides b$, entonces se cumple $a divides
  b k$.
] <prop-divide-al-multiplo>

Se demuestra simplemente dándose uno cuenta de que estamos en una situación
en la que se está haciendo uso de la propiedad transitiva, ya que, por
definición, $b k$ será múltiplo de $b$.

Otra proposición importante y con mucho uso de este operador viene a decir
que, si tenemos dos múltiplos de un número, la suma y la resta de estos
también serán múltiplos de dicho número. Es decir:

#block[
  Dados $d, x, y in bb(Z)$. Si $d divides x$ y $d divides y$, entonces $d
  divides (x + y)$ y $d divides (x - y)$.
]

#block[
  Se debe a que, en los números enteros, se cumple la propiedad distributiva
  del producto respecto a la suma.

  La hipótesis implica que $x = m d$ e $y = n d$ para algún par de enteros
  $m, n in bb(Z)$. Sumando y restando $x$ e $y$, tenemos

  $ x plus.minus y = m d plus.minus n d = (m plus.minus n) d $

  con lo que $d divides (x plus.minus y)$.

  Habría que estudiar también los casos en los que alguna de las variables
  vale $0$. En todos, sigue siendo cierta la proposición. Sería destacable
  el caso en que $d = 0$ pero alguno de $x$ e $y$ es distinto de 0. En dicho
  caso, la proposición sería vacuamente cierta.
]

La proposición anterior se puede exponer de otra forma, que será la que
usemos con más frecuencia, aunque sigue siendo lo mismo.

#block[
  Dados $a, b, c in bb(Z)$ que satisfacen la ecuación $a + b = c$ y dado $d
  in bb(Z)$. Si dos de los números del conjunto ${a, b, c}$ son múltiplos de
  $d$, entonces el otro también lo será.
] <princ-dos-de-tres>

Tal y como expliqué antes, uniendo esta proposición con la
prop-divide-al-multiplo podemos sacar muchas conclusiones sobre la operación
división exacta, en muchos casos. Concretamente, uniendo ambas tendríamos
que si un número divide, de forma independiente, a los coeficientes de una
combinación lineal entera (una combinación lineal como las que conoce solo
que con los coeficientes y las variables en el dominio de $bb(Z)$), entonces
también dividirá a esta. Pero en realidad no se queda ahí, pues también nos
permiten explicar el divisor para expresiones más complicadas.

#block[
  ¿Tiene soluciones enteras la ecuación $7 x^2 + 11 = 21 y$?

  Partamos de un hecho que vimos antes que se cumplía siempre. Si un número
  $a$ divide a otro $b$, entonces también divide a cualquier múltiplo de
  $b$, por ejemplo, expresado como $k dot.op b$.

  Volviendo ahora a los datos de este ejercicio, tenemos que, aplicando lo
  anterior, sabemos que tanto $7 x^2$ como $21 y$ son múltiplos de 7, ya que
  $21 = 7 dot.op 3$. Aplicando aquí la proposición que llamo el
  princ-dos-de-tres, se tiene que 11 ha de ser múltiplo de 7, pero esto
  sabemos que no es cierto. Por tanto, aplicando el condicional
  contrarrecíproco, se tendrá que la ecuación no tiene solución.

  Este ejercicio viene en @weissman[p. 17], problema 0.34.

  Aunque más adelante veremos ecuaciones de este tipo, que las suelen llamar
  ecuaciones diofánticas, en este caso simplemente hemos usado el ingenio
  con nuestros pocos conocimientos hasta ahora de teoría de números para
  deducir que no tiene solución.
]

La proposición siguiente también se usa en muchas demostraciones.

#block[
  Dados $a, b in bb(Z)$, siempre que no se dé que $a eq.not 0$ y $b = 0$. Si
  $a divides b$, entonces $|a| lt.eq |b|$.
] <prop-factor-men>

#block[
  Para el caso con $a = b = 0$, la demostración es trivial, pues $0 divides
  0$ y $0 = |0| gt.eq |0| = 0$. Para el caso con $a = 0$ y $b eq.not 0$ es
  vacuamente verdadera pues $0 divides.not b$, es decir, el antecedente es
  falso.

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
]

Como caso particular, se cumple también que, si $a > 0$ y $b > 0$, entonces,
si $a divides b$, se cumple que $a lt.eq b$.



