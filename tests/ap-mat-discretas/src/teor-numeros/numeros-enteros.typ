==== Números enteros
<números-enteros>
Sobre las referencias En la primera parte de la #strong[Sección 1-1] de
@bujalance-costa comienzan la teoría de números presentando a los
números enteros, $bb(Z)$, junto a sus operaciones principales (es decir,
la suma, "$+$", y el producto, "$dot.op$") y algunas de sus propiedades
así como de funciones relacionadas, como, por ejemplo, el valor
absoluto.

Se mete también a explicar algo sobre esta estructura algebraica,
($bb(Z) \, + \, dot.op$), aunque en realidad no es necesario para esta
asignatura. El contenido relevante es básicamente lo mismo que se
presenta en el Apéndice A de @rosen-number-th. En la sección de
ejercicios de dicho apéndice se presentan algunos de los resultados que
se explican en la sección correspondiente en @bujalance-costa.

En cualquier caso, me gustaría aclarar algunas partes de estos
contenidos, por si tiene curiosidad y cierto conocimiento de álgabra
abstracta.

#horizontalrule

Terminología Primero, presentar algunas traducciones a este respecto. Lo
que en inglés llaman #emph[identity element] para nosotros (según la
terminología de la asignatura Lenguaje Matemático, Conjuntos y Números)
sería el #emph[elemento neutro];. El #emph[inverse element] es nuestro
#emph[elemento simétrico];. También puede ver que hay quien los llama
#emph[elemento identidad] y #emph[elemento inverso];, respectivamente.

Advierta que el elemento simétrico no es lo mismo necesariamente que el
simétrico respecto al producto. En inglés, cuando se desea ser más
específico a este respecto, se habla del #emph[reciprocal element];.

#horizontalrule

Estructura algebraica de $bb(Z)$ Es fácil ver que $\( bb(Z) \, + \)$ es
un grupo conmutativo; a su elemento neutro lo designamos por "$0$". Para
$\( bb(Z) \, dot.op \)$, aunque la operación es interna para dicho
conjunto, y se satisfacen las propiedades asociativa, elemento neutro
(que se suele representar por "$1$") y conmutativa, no llega a ser un
grupo, pues no cumple la propiedad del elemento simétrico. Es decir, si
nos dan un $a in bb(Z)$, es posible que en $bb(Z)$ no encontremos un
elemento $b$ tal que $a dot.op b = 1$. De hecho, los únicos elementos de
$\( bb(Z) \, dot.op \)$ que cuentan con elemento simétrico son el $- 1$
y el $1$. Evidentemente, se puede "ampliar" esta estructura y obtener
otra en la que todos los elementos tengan su simétrico. El ejemplo
clásico sería el de los números racionales, $bb(Q)$, pero en esta
asignatura apenas se hablará de ellos.

Advierta que la propiedad distributiva se da de la suma respecto al
producto, y no al revés. Es decir, no podemos poner, en general, algo
como $a + \( b dot.op c \) = \( a + b \) \( a + c \)$.

A fin de cuentas, lo que tenemos es que $\( bb(Z) \, + \, dot.op \)$
tiene la estructura algebraica de anillo conmutativo unitario. Más
concretamente, el elemento unidad del producto es el $1$, tal y como
dijimos, y además no tiene divisores de $0$, es decir, para cualesquiera
$a \, b in bb(Z)$ siendo $a eq.not 0$ y $b eq.not 0$, nunca se da
$a b = 0$. Aplicando la lógica esto último sería como decir que, si
$a b = 0$, entonces se da necesariamente que $a = 0$ o $b = 0$ (o
ambos). Esta última propiedad la usaremos en algunos ejercicios y
demostraciones, con lo que, aunque no sea capaz de demostrarla, debe
conocerla de una forma práctica.

Algo que debe tener también en cuenta es que hay textos que consideran
al $0$ como un número natural y otros en los que no; es decir, no hay un
criterio unificado sobre esta cuestión. En realidad, esto no tiene
importancia siempre y cuando se sea constante con la opción que se haya
adoptado. Esto se ve en los enunciados tanto de la Propiedad de Buena
Ordenación como del Principio de Inducción
(@bujalance-costa@rosen-number-th), pero da igual el criterio que se
adopte, pues, aparte de cuál sea el valor base del que se parte, serán
iguales en lo relevante y se puede adoptar cualquiera de los dos
criterios.

En @bujalance-costa adoptan la convención de que $0 in.not bb(N)$. En
@rosen-number-th, por su parte, creo que tratan de evitar referirse a
$bb(N)$. Verá que suelen referirse a $bb(Z)^(+)$ o a
$bb(Z)^(+) union { 0 }$.

#horizontalrule

Propiedades de $bb(Z)$ Algunas propiedades interesantes de los números
enteros, $bb(Z)$ ---o, lo que es lo mismo, de la estructura
$\( bb(Z) \, + \, dot.op \)$---, son las siguientes.

#block[
Dados $a \, b \, c in bb(Z)$.

+ $0 dot.op a = 0$.
+ $a \( - b \) = - \( a b \)$.
+ Dado un $a eq.not 0$. Si $a b = a c$, entonces $b = c$. (Propiedad
  cancelativa.)
+ $- \( - a \) = a$.
+ $\( - a \) \( - b \) = a b$

]
Tal y como dijimos, tampoco es importante que sepa demostrar estos
enunciados generales sobre los números enteros, pues ese no es el
propósito de esta asignatura; lo sería, por ejemplo, de una asignatura
de álgebra abstracta. Puede hacer uso de las propiedades que conoce de
estos sin necesidad de demostrarlas.

No obstante, presentamos aquí las demostraciones de estas últimas.

#block[
Son estas.

+ Vea el Ejemplo A.1 de @rosen-number-th.

+ TKTK

  $ a \( - b \) & = a \( - b \)\
  a \( - b \) + a b & = a \( - b \) + a b\
  a \( - b \) + a b & = a \( - b + b \)\
  a \( - b \) + a b & = a 0 = 0 = a b - a b\
  \[ a - b \) + a b \] - a b & = \( a b - a b \) - a b\
  a \( - b \) + \( a b - a b \) & = 0 - a b\
  a \( - b \) + 0 & = 0 + \[ - \( a b \) \]\
  a \( - b \) & = - \( a b \) $

+ Partimos de la ecuación $a b = a c$, y operamos:

  $ a b & = a c\
  a b - a c & = a c - a c & upright("restamos ") a c\
   & = 0 & upright("hacemos la resta de la derecha")\
  0 & = a \( b - c \) & upright("sacamos factor común ") a $

  Como se da la condición $a eq.not 0$, y, tal y como explicamos antes,
  en $bb(Z)$ no hay divisores de $0$, entonces, para que se dé que

  $ a \( b - c \) = 0 $

  no queda otra que $b - c = 0$, o, lo que es lo mismo, $b = c$.

+ Nos vamos a auxiliar de otra variable $c$ que dependa de $a$.
  Concretamente, decidimos que la dependencia sea $c = - a$. Advierta
  que, si $a in bb(Z)$, se tiene que $c in bb(Z)$. Entonces,

  $ 0 & = c - c\
   & = c + \( - c \)\
   & = - a + \[ - \( - a \) \] & upright("c.d.v.: ") c = - a\
  0 + a & = { \( - a \) + \[ - \( - a \) \] } + a & upright("sumamos ") a upright(" en ambas partes")\
   & = { - \( - a \) + \( - a \) } + a & upright("prop. conmutativa de la suma")\
   & = - \( - a \) + \[ \( - a \) + a \] & upright("prop. asociativa de la suma")\
   & = - \( - a \) + 0 & upright("operamos en el paréntesis")\
  a & = - \( - a \) & upright("prop. elemento neutro") $

+ Lo haremos con un cambio de variable y haciendo uso de las propiedades
  2 y 4. Tomemos la variable $c = \( - a \)$. Evidentemente, se tiene
  que $c in bb(Z)$. Entonces,

  $ \( - a \) \( - b \) & = c \( - b \) & upright("cd.v.: ") c = - a\
   & = - \( c b \) & upright("prop. 2")\
   & = - \( b c \) & upright("prop. conmutativa de \"") dot.op upright("\"")\
   & = \( - c \) b & upright("prop. 2")\
   & = \( - \( - a \) \) b & upright("c.d.v.: ") c = - a\
   & = a b & upright("prop. 4") $

]
Sería interesante también el ejercicio siguiente, que guarda cierta
relación con la ley de la tricotomía, que se menciona en
@rosen-number-th.

#block[
Demuestre que, dado un $a in bb(Z)$, si $a < 0$ entonces $- a > 0$.

$ a & < 0\
a - a & < 0 - a = 0 + \( - a \) = - a\
0 & < - a $

Las operaciones algebraicas que se pueden hacer con las desigualdades
(#emph[inequations];) tienen algunas sutilezas, pero en esta asignatura
esas manipulaciones no suelen ser complicadas a este respecto.

]

#horizontalrule

Terminología Por cierto, al Principio de Buena Ordenación hay quien
prefiere calificarlo de #emph[propiedad];. Aunque dicha propiedad pueda
parecer algo evidente y sin relevancia, se usa en muchas demostraciones,
como veremos.

#horizontalrule

Valor absoluto En @bujalance-costa también presentan el concepto de
#emph[valor absoluto] con dominio en $bb(Z)$ y algunas de sus
propiedades más interesantes. De hecho, antes de ver la divisibilidad,
las propiedades generales que nos interesan del valor absoluto son las
siguientes.

#block[
Dados $a \, b in bb(Z)$, se cumplen

#block[
#set enum(numbering: "i.", start: 1)
+ $\| a dot.op b \| = \| a \| thin dot.op thin \| b \|$.
+ $\| a + b \| lt.eq \| a \| thin + thin \| b \|$. (Desigualdad
  triangular.)
]

]
Se demuestran en @bujalance-costa. Estas demostraciones me parecen algo
aparatosas, es decir, poco elegantes; pero existe una razón para que sea
así: nos queremos restringir a los números enteros. Si pudiésemos hacer
uso de los radicales, cosa que nos metería ya en los números reales, se
podrían tener demostraciones más simples y elegantes, como la siguiente,
para el punto i.

Lo primero que se debe decir es que, para un $a in bb(R)$, se tiene que
$\| a \| = sqrt(a^2)$. Esta sería una expresión alternativa del valor
absoluto. Sabiendo esto, podemos hacer lo siguiente:

$ \| a dot.op b \| = sqrt(\( a dot.op b \)^2) = sqrt(a^2 dot.op b^2) = sqrt(a^2) dot.op sqrt(b^2) = \| a \| thin dot.op thin \| b \| $

Solo hemos tenido que aplicar una propiedad de los radicales.

#horizontalrule

Ejercicio 1.19 de @rosen-number-th Me gustó este ejercicio. Lo cierto es
que no llego a ver cómo lo resuelve él, pero a mí se me ocurrió una
forma que creo que es más fácil. Si se fija, los triángulos se pueden
disponer de tal forma que vemos que hay dos triángulos de tamaño $k$
juntos y una línea de $k + 1$ elementos debajo. Así, se tendría la
ecuación

$ \( k + 1 \)^2 = 2 t_k + k + 1 $

De esto obtenemos que

$ t_k = frac(k \( k + 1 \), 2) $

igual que él.

Por cierto, tiene sentido que sea el mismo resultado que la serie
aritmética más básica, pues en realidad se trata de una serie
aritmética.
