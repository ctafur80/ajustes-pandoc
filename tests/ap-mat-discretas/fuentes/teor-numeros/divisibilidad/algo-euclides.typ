



Puede consultar @rosen-number-th[p. 102].

Ahora, vamos a ver cómo se calcula el máximo común divisor de dos números.
La forma que sabemos de la educación primaria es factorizando. Así, por
ejemplo, para los números 6 y 14, tenemos que

$ 6 = 2 dot.op 3 $

y

$ 14 = 2 dot.op 7 $

con lo que $"mcd"(6, 14) = 2$.

Pero, si el número es muy grande, el proceso se hace inasumible en la
práctica. Existe un algoritmo que lo hace más cómodo. Este tiene su
justificación en una proposición que aparece en el libro de Euclides.

Ahora, vamos a ver una proposición que usaremos para poder demostrar la
existencia del Algoritmo de Euclides. Según esta, el máximo común divisor
del dividendo y divisor de una división en $bb(Z)$ con resto es el mismo que
el del divisor y el resto en esa misma operación.

#block[
  Dados $a, b, q, r in bb(Z)$, cumpliéndose $a = b q + r$ siendo $0 lt.eq r
  < |b|$, se cumple

  $ "mcd"(a, b) = "mcd"(b, r) $
] <th-mcd-div-resto>

En @weissman la dan algo más general, al no impone la restricción de los
valores de $r$. Serviría, por tanto, para divisiones enteras con resto
alternativas, como la mínima, por ejemplo.

#block[
  Designaremos por $d$ al $"mcd"(a, b)$. Ya que $d = "mcd"(a, b)$, se cumple
  necesariamente que $d divides a$ y $d divides b$. Si aislamos a $r$ en la
  igualdad $a = b q + r$, tenemos que $r = a - b q$. Entonces, como $d
  divides a$ y $d divides b$, por las proposiciones prop-divide-al-multiplo
  y princ-dos-de-tres se tiene que $d divides (a - b q)$, o, lo que es lo
  mismo, $d divides r$. Con esto hemos demostrado que, si $d = "mcd"(a, b)$,
  entonces, $d$ es un divisor común de $b$ y de $r$.

  Ahora, suponemos que existe un $c in bb(Z)$ tal que $c divides b$ y $c
  divides r$. Por las mismas proposiciones de antes, se tiene que $c divides
  (b q + r)$, que es lo mismo que decir que $c divides a$, por la ecuación
  anterior. Por lo tanto, $c$ es también, al igual que $d$, un divisor común
  de $a$ y de $b$.

  Pero, como por hipótesis hemos fijado la condición $d = "mcd"(a, b)$,
  entonces, al demostrar que $c$ es un divisor común de $a$ y de $b$, tiene
  que darse necesariamente, por la definición de máximo común divisor, $c
  divides d$. A su vez, si analizamos la relación de $c$ y $d$ como
  divisores de $b$ y $r$, tenemos que, como $c divides d$ (cosa que acabamos
  de demostrar), se tendrá que $d = "mcd"(b, r)$.
]

Si vamos encadenando esto mismo, tenemos entonces una forma de obtener el
$"mcd"(a, b)$. Esto sería el Algoritmo de Euclides para la división. Está
muy bien explicado en @bujalance-costa[p. 21].

Partimos de la sexta de las proposiciones prop-mcd, que dice que $"mcd"(a,
b) = "mcd"(|a|, |b|)$. Así, podemos suponer, sin pérdida de generalidad, que
$a gt.eq b > 0$.

Lo primero será dividir a $a$ por $b$, según la división en $bb(Z)$ con
resto:

$ a = b q_1 + r_1 quad "con" med 0 lt.eq r_1 < |b| = b $

Si $r_1 = 0$, entonces $b divides a$ y, por la cuarta de las propiedades
prop-mcd, se tiene $"mcd"(a, b) = b$, y ahí finalizaría el algoritmo al
tener ya la respuesta que buscábamos. Si, por el contrario, $r_1 eq.not 0$,
procedemos a dividir al dividendo, $b$, entre el resto, $r_1$. Tenemos,

$ b = r_1 q_2 + r_2 quad "con" med 0 lt.eq r_2 < |r_1| = r_1 < b $

Por lo mismo de antes, si $r_2 = 0$, entonces $r_1 = "mcd"(b, r_1)$, pero,
por la proposición th-mcd-div-resto, se tiene que $"mcd"(a, b) = "mcd"(b,
r_1)$, con lo que se tendrá que $"mcd"(a, b) = r_1$.

Si, por el contrario, se tiene que $r_2 eq.not 0$, pasamos a dividir a $r_1$
entre $r_2$.

$ r_1 = r_2 q_3 + r_3 quad "con" med 0 lt.eq r_3 < |r_2| = r_2 < r_1 < b $

Si $r_3 = 0$, entonces $r_2 = "mcd"(r_1, r_2)$, pero también se tiene que
$"mcd"(r_1, r_2) = "mcd"(r_1, b) = "mcd"(a, b)$, con lo que se tendrá que
$"mcd"(a, b) = r_2$.

Si, por el contrario, se tiene que $r_3 eq.not 0$, pasamos a dividir a $r_2$
entre $r_3$.

$ r_2 = r_3 q_4 + r_4 quad "con" med 0 lt.eq r_4 < |r_3| = r_3 < r_2 < r_1 <
b $

Y así sucesivamente. El proceso continuaría hasta que se tenga un resto $r_n
= 0$ para algún $n in bb(N)^(+)$. Pero, ¿no podría darse el caso de estar
buscando indefinidamente ese resto con valor 0? Si se fija, eso no puede
suceder ya que, según la condición $0 lt.eq r_k < |r_(k - 1)| = r_(k - 1)$
que se daría en la iteración $k$-ésima, en cada iteración ese resto se
acerca al 0, sin detenerse nunca, al tener una desigualdad estricta entre
$r_k$ y $r_(k - 1)$. Por tanto, este algoritmo tiene siempre un número
finito de iteraciones y, por tanto, un número finito de pasos.

Analizando un caso genérico $n$-ésimo, se puede decir que, cuando en la
iteración $n$-ésima se obtenga un resto de 0, es decir, $r_n = 0$, se tendrá
que $"mcd"(a, b) = r_(n - 1)$. Este se puede obtener, en el resto de la
penúltima expresión (de división) o, si lo prefiere, del divisor en la
última.

Esta demostración también puede verla en
#link("https://www.youtube.com/watch?v=8cikffEcyPI");.

Puede ver en @weissman[p. 25] al comienzo del capítulo 1, una explicación
muy creativa e intuitiva de lo que significa este proceso, el algoritmo de
Euclides. Lo que viene a explicar es que el máximo común divisor de dos
números nos indica a qué números nos podemos mover haciendo combinaciones de
saltos y a cuáles no. Y, si se fija, esto mismo es lo que nos dice la
Identidad de Bézout, es decir, con las combinaciones lineales enteras $a x +
b y$ nos podremos mover por los distintos valores de los múltiplos de
$"mcd"(a, b)$. Otro ejemplo curioso sobre la aplicación de esta propiedad se
encuentra en @leighton sección 9.1.3 Die Hard pág. 344. Está sacado de un
problema que se les plantea a los protagonistas de la película _La jungla de
cristal 3_. TKTK.

En realidad, este algoritmo, como todos, lo normal es implementarlo en
_software_. No obstante, para esta asignatura tenemos que saber hacerlo con
lázpiz y papel.

Una implementación en código Python sería la siguiente. TKTK.

```python
# Da el máximo común divisor de dos números enteros a y b.

a = 12384
b = 4720

dividendo = a
divisor = b

resto = 0

while True:

    cociente = dividendo // divisor
    resto_ant = resto
    resto = dividendo % divisor

    # print(f"{dividendo} = {divisor} x {cociente} + {resto}")

    if resto == 0:
        mcd = resto_ant
        break

    dividendo = divisor
    divisor = resto

print()
print(f"mcd({a}, {b}) = {mcd}")
```

Existe también el Algoritmo de Euclides Extendido. En este, además de
obtener el máximo común divisor, se obtienen los coeficientes de Bézout. Se
implementaría del modo siguiente en código Python. TKTK.

#block[
  Dado un $k in bb(N)$ siendo $k > 0$, se cumple que

  $ "mcd"(k a, k b) = k thin "mcd"(a, b) $
] <teor-mcd-multiplos>

La demostración siguiente es la que aparece en @bujalance-costa[p. 24] y en
@burton[p. 29]. Hace uso del Algoritmo de Euclides. No sé si existirá una
demostración que no requiera de dicho proceso iterativo. Si no la tienen
estos textos, seguramente es que no la haya encontrado nadie aún.

#block[
  Básicamente, lo que vamos a hacer es aplicar el Algoritmo de Euclides.

  Nos quedamos con $a > 0$ y $b > 0$, sin pérdida de generalidad, pues
  $"mcd"(a, b) = "mcd"(|a|, |b|)$.

  Supongamos primero el caso $b divides a$. En dicho caso, como sabemos por
  la proposición TKTK, $"mcd"(a, b) = b$. Por tanto,

  $ k thin "mcd"(a, b) = k b $

  Por otro lado, como consecuencia de $b divides a$ también se da que $k b
  divides k a$, se tiene que

  $ "mcd"(k a, k b) = k b $

  y ahí se habría terminado la demostración.

  Caso $b divides.not a$. Se tiene también $k b divides.not k a$ (cosa que
  es muy fácil demostrar por su condicional contrarrecíproco) y, entonces,

  $ k a = k b q + r' quad "con" med 0 lt.eq r' < |k b| = k b $

  en realidad, $0 < r'$, pero eso da igual.

  Aislando a $r'$ en la expresión, tenemos

  $ r' = k a - k b q = k (a - b q) $

  con lo que $k divides r'$. Por tanto, existe un $r in bb(Z)$ tal que $r' =
  k r$.

  Así, manipulamos las desigualdades:

  $ 0 lt.eq k r < k b $

  y, por tanto,

  $ 0 lt.eq r < b $

  Así, tenemos

  $ k a = k b q + k r quad "con" med 0 lt.eq r < b $

  Ahora, pasaríamos a una nueva iteración del Algoritmo de Euclides.
  Analizamos primero la hipótesis de que se dé que $k r divides k b$. En ese
  caso, $"mcd"(k b, k r) = k r$. Veamos por qué.

  Si $k r divides k b$, se cumple también que $r divides b$ y, por tanto,
  $"mcd"(b, r) = r$, con lo que $k thin "mcd"(b, r) = k r$. Uniendo entonces
  ambas expresiones, tenemos que $"mcd"(k b, k r) = k thin "mcd"(b, r)$ y
  ahí se terminaría la demostración.

  En caso contrario, es decir, $k r divides.not k b$, tendríamos que existen
  un par de números $q_1, r'' in bb(Z)$ únicos tales que

  $ k b = k r q_1 + r'' quad "con" med 0 lt.eq r'' < |k r| = k r $

  Entonces, al igual que antes, aislando la $r''$, tenemos

  $ r'' = k b - k r q_1 = k (b - r q_1) $

  con lo que $k divides r''$. Entonces existe un $r_1 in bb(Z)$ tal que $r''
  = k r_1$. Entonces tenemos

  $ 0 lt.eq k r_1 < k r $

  y, por tanto,

  $ k b = k r q_1 + k r_1 quad "con" med 0 lt.eq r_1 < r $

  Ahora, pasaríamos a una neva iteración del Algoritmo. Si $k r_1 divides k
  r$, entonces $"mcd"(k r, k r_1) = k r_1$. Por otro lado, si $k r_1 divides
  k r$, entonces $r_1 divides r$ y, por tanto, $"mcd"(r, r_1) = r_1$.
  Uniendo ambas, tenemos que $k thin "mcd"(r, r_1) = k r_1 = "mcd"(k r, k
  r_1)$.

  En caso de que $k r_1 divides.not k r$, tenemos que

  $ k r = k r_1 q_2 + r''' quad "con" med 0 lt.eq r''' < |k r_1| = k r_1 $

  Entonces, al igual que antes, aislando la $r'''$, tenemos

  $ r''' = k r - k r_1 q_2 = k (r - r_1 q_2) $

  con lo que $k divides r'''$. Entonces existe un $r_2 in bb(Z)$ tal que
  $r''' = k r_2$. Entonces tenemos

  $ 0 lt.eq k r_2 < k r_1 $

  y, por tanto,

  $ k r_1 = k r_1 q_2 + k r_2 quad "con" med 0 lt.eq r_2 < r_1 $

  Ahora, pasaríamos a una neva iteración del Algoritmo. Si $k r_2 divides k
  r_1$, entonces $"mcd"(k r_1, k r_2) = k r_2$. Por otro lado, si $k r_2
  divides k r_1$, entonces $r_2 divides r_1$ y, por tanto, $"mcd"(r_1, r_2)
  = r_2$. Uniendo ambas, tenemos que $k thin "mcd"(r_1, r_2) = k r_2 =
  "mcd"(k r_1, k r_2)$.

  En caso de que $k r_2 divides.not k r_1$, se procedería como en las
  iteraciones anteriores. Existirá alguna en la que se termine por obtener
  un resto $r_(n + 1) = 0$, al igual que en la demostración del Algoritmo de
  Euclides, ya que las desigualdades siguientes son estrictas:

  $ 0 lt.eq dots.h.c < r_2 < r_1 < r $

  Así, en la última iteración se tendrá

  $ k r_(n - 1) = (k r_n) q_(n + 1) + 0 $

  Se tiene entonces, por el algoritmo de Euclides, que $k r_n = "mcd"(k a, k
  b)$. Por otro lado, como $r_n = "mcd"(a, b)$, se tiene, por tanto, que

  $ "mcd"(k a, k b) = k thin "mcd"(a, b) $

  tal y como queríamos demostrar.

  Otra demostración, más breve, es haciendo uso del Corolario id-bezout-2.
  Supongamos se tienen $m, n in bb(Z)$ para los que se tiene la menor
  combinación lineal positiva de $a$ y $b$, $a m + b n$. Se tiene entonces
  que, para un $k in bb(Z)$,

  $ "mcd"(a, b) = a m + b n $

  Multiplicándolo por $k$, se tiene

  $ k thin "mcd"(a, b) = k (a m + b n) = k a m + k b n = k a (m) + k b (n) =
  "mcd"(k a, k b) $
]

En realidad, se tiene una generalización del teorema anterior.

#block[
  Se cumple, para cualquier $k in bb(Z)$,

  $ "mcd"(k a, k b) = |k| thin "mcd"(a, b) $
]

#block[
  Para el caso en el que $k > 0$, se demuestra por el teorema anterior. Para
  el caso en el que $k < 0$, se tiene $- k > 0$ y hacemos lo siguiente:

  $ "mcd"(k a, k b) = "mcd"(- k a, - k b) = - k "mcd"(a, b) = |k| thin
  "mcd"(a, b) $

  La demostración del caso $k = 0$ es trivial.
]

El corolario siguiente se usará mucho en demostraciones de las secciones
siguientes.

#block[
  Dados $a, b in bb(Z)$ y $g = "mcd"(a, b)$ siendo $g eq.not 0$. Entonces,

  $ "mcd"(a / g, b / g) = 1 $
] <cor-mcd-div-mcd>

#block[
  Dividiento entre $g$ en ambas partes de la igualdad $g = "mcd"(a, b)$
  tenemos:

  $ g / g &= 1 / g "mcd"(a, b) \
    1     &= "mcd"(a / g, b / g) $

  La última transformación es por una aplicación de la Proposición
  teor-mcd-multiplos.
]






