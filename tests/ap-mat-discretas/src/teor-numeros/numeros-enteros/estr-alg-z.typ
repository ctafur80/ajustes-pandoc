



En realidad, no hace falta hablar de estructuras algebraicas para adentrarse
en la teoría elemental de números. Basta con conocer algunas de las
propiedades de la de los números enteros.

Lo que se explica en @bujalance-costa a este respecto, es parecido a lo que
se explica en @rosen-number-th[p. 605] Apéndice A. En la sección de
ejercicios de dicho apéndice se presentan algunos de los resultados que se
explican en @bujalance-costa. Por 





Aquí, vamos a presentar la estructura algebraica de los números enteros,
$bb(Z)$, que es el conjunto en el que nos solemos mover en la teoría de
números (aunque no siempre). Para esto, se requiere conocimiento básico de
álgebra abstracta. Si no los tiene, también puede seguir esta asignatura.
Simplemente, quédese con las partes importantes de esta sección. TKTK.

La estructura algebraica de los números enteros consta, además de esos
números, de dos operaciones: la suma, '$+$', y la multiplicación, '$dot.op$'
(a veces se representa por otra simbología, como '$times$' o por aposición);
me refiero a las versiones estándar que seguro que conoce. A esta estructura
se la denota por $(bb(Z), +, dot.op)$ (es decir, por una terna ordenada) o,
también, por $( bb(Z), +, times)$; como prefiera.

Por un lado, tenemos que $(bb(Z), +)$ es un grupo conmutativo, puesto que la
operación '$+$' será interna para dicho conjunto y, además se cumplirán las
propiedades asociativa, elemento neutro (identidad) (que se suele
representar como '$0$'), elemento simétrico (inverso) y conmutativa. Cuando
tenemos en cuenta los elementos simétricos por la suma, tenemos ya los
números negativos, con los que aparece la operación resta.

Por el otro, tenemos que $(bb(Z), dot.op)$, aunque la operación es interna
para dicho conjunto, y se satisfacen las propiedades asociativa, elemento
neutro (que se suele representar por '$1$') y conmutativa, no llega a ser un
grupo, pues no cumple la propiedad del elemento simétrico. Es decir, si nos
dan un $a in bb(Z)$, es posible que en $bb(Z)$ no encontremos un elemento
$b$ tal que $a dot.op b = e$, siendo este $e$ el elemento neutro del
producto, o sea, $1$. De hecho, los únicos elementos de $bb(Z)$ que cuentan
con elemento simétrico son el $-1$ y el $1$. Evidentemente, se puede
"ampliar" esta estructura y obtener otra en la que todos los elementos
tengan su simétrico. El ejemplo clásico sería el de los números racionales,
pero en esta asignatura apenas se hablará de ellos.

En $(bb(Z), +, dot.op)$, también se satisface la propiedad distributiva del
producto respecto a la suma. Es decir, dados $a, b, c in bb(Z)$, se cumplen

$ a (b + c) &= a b + a c \
  (b + c) a &= b a + c a $

Ojo, la distribución de la suma respecto al producto no se cumple. Es decir,
no podemos poner, en general, algo como $a + (b dot.op c) = (a + b) (a +
c)$.

Todo esto nos da, tal y como dijimos, para $(bb(Z), +, dot.op)$, la
estructura algebraica de anillo conmutativo unitario. Más concretamente, el
elemento unidad del producto es el $1$, tal y como dijimos, y no tiene
divisores de $0$. Esto último hace que, dados $a, b in bb(Z)$, si $a b = 0$,
entonces se da necesariamente que $a = 0$, $b = 0$ o ambos. Esta última
propiedad la usaremos en algunos ejercicios.

Tampoco vamos a demostrar todo en tanto detalle como se hace en una
asignatura de estructuras algebraicas.

Algunas propiedades interesantes de la estructura $(bb(Z), +, dot.op)$ son
las siguientes.

#block[
  Dados $a, b, c in bb(Z)$.

  + $0 dot.op a = 0$.

  + $a (-b) = (-a b)$.

  + Dado un $a eq.not 0$. Si $a b = a c$, entonces $b = c$. (Propiedad
    cancelativa.)

  + $(-(-a)) = a$.

  + $(-a)(-b) = a b$
]

#block[
  Son estas.

  + Partimos de la expresión $0 a$, y operamos:

    $ 0 a &= (0 + 0) a && "propiedad elemento neutro" \
      0 a &= 0 a + 0 a && "propiedad distributiva" \
      0 a - 0 a &= (0 a + 0 a) - 0 a && "restamos " 0 a " en ambas partes" \
      0 a - 0 a &= 0 a + (0 a - 0 a) && "propiedad asociativa de la suma" \
      0 &= 0 a + (0 a - 0 a) && \
      0 &= 0 a + 0 && \
      0 &= 0 a && "propiedad elemento neutro" $

  + Partimos de la expresión $a (-b) + a b$, y operamos:

    $ a (-b) + a b
        &= a [(-b) + b] && "propiedad distributiva" \
        &= a 0 && "operamos en los corchetes" \
        &= 0 && "por la propiedad 1" \
        &= a b - a b && "por la definición de " 0 \
      [a (-b) + a b] - a b &= (a b - a b) - a b && "restamos " a b " en ambos lados" \
      a (-b) + (a b - a b) &= (a b - a b) - a b && "propiedad asociativa" \
      a (-b) + 0 &= 0 - a b && "operamos en los paréntesis" \
      a (-b) &= (-a b) && "definición de elemento neutro" $

  + Partimos de la ecuación $a b = a c$, y operamos:

    $ a b &= a c \
      a b - a c &= a c - a c && "restamos " a c " en ambas partes" \
        &= 0 && "hacemos la resta de la derecha" \
      0 &= a (b - c) && "sacamos factor común " a \
        &= a(b - c) && $

    Como se da la condición $a eq.not 0$, para que se dé que

    $ a (b - c) = 0 $

    no queda otra que $b - c = 0$, o, lo que es lo mismo, $b = c$.

  + Nos vamos a auxiliar en otra variable $c$ que dependa de $a$.
    Concretamente, decidimos que la dependencia sea $c = - a$. Advierta que,
    si $a in bb(Z)$, se tiene que $c in bb(Z)$. Entonces,

    $ 0
        &= c - c \
        &= c + (-c) \
        &= -a + [-(-a)] && "cambio de variable: " c = -a \
      0 + a &= {(-a) + [-(-a)]} + a && "sumamos " a " en ambas partes" \
        &= {-(-a) + (-a)} + a && "propiedad conmutativa de la suma" \
        &= -(-a) + [(-a) + a] && "propiedad asociativa de la suma" \
        &= -(-a) + 0 && "operamos en el paréntesis" \
      a &= -(-a) && "propiedad elemento neutro, en ambos lados" $

  + Lo haremos con un cambio de variable y haciendo uso de las propiedades 2
    y 4. Tomemos la variable $c = (-a)$. Evidentemente, se tiene que $c in
    bb(Z)$. Entonces,

    $ (-a)(-b) &= c (-b) && "cambio de variable: " c =-a \
        &= -(c b) && "por la propiead 2" \
        &= -(b c) && "propiedad conmutativa del producto" \
        &= (-c) b && "por la propiedad 2" \
        &= (-(-a)) b && "cambio de variable: " c = -a \
        &= a b && "por la propiedad 4" $
]



