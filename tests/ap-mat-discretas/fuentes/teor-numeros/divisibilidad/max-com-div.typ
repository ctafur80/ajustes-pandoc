
#import "@local/ctafur-notes:0.1.0": *



En @rosen-number-th, se tiene un primer contacto con este concepto en la
pág. 39 y, más adelante, se ve en más profundidad a partir de la pág. 93.

Lo primero sería definir qué son los _divisores comunes_ de dos números. Lo
dice el propio sintagma: el conjunto de divisores que son comunes a ambos.
Es evidente que el $1$ y el $-1$ son siempre divisores comunes de cualquier
par de números, por lo que dicho conjunto nunca será vacío.

A partir de esta definición, por la relación entre la lógica y la teoría de
conjuntos sabemos que podríamos expresarlo también mediante el operador
intersección, '$inter$'. Es decir, dados $a, b in bb(Z)$, se tiene que

$ "div"(a, b) = "div"(a) inter "div"(b) $

si usamos la notación '$"div"(a, b)$' para designar al conjunto de divisores
comunes de dos enteros $a$ y $b$ y '$"div"(a)$' para los de $a$ únicamente.
Por cierto, esta notación me resulta útil por comodidad, para no escribir
tanta prosa; no la he visto en ningún texto, con lo que no sé si hay alguna
razón para no usarla o se debe simplemente a que no merece mucho la pena.

Evidentemente, el concepto de _máximo común divisor_ de dos enteros se puede
expresar fácilmente a partir del de _divisores comunes_. Tal y como dice el
propio sintagma, sería el mayor de los divisores comunes#footnote[De hecho,
'el mayor de los divisores comunes' sería una traducción mejor para el
sintagma del inglés _greatest common divisor_, que es de donde viene. Pero a
este respecto, la otra terminología está ya muy asentada como para tratar de
cambiarla.] de dichos números.

El máximo común divisor de dos enteros $a$ y $b$ se suele expresar,
generalmente, como '$"mcd"(a, b)$' (en inglés, '$"gcd"(a, b)$'), mientras
que en algunos textos de teoría de números también se expresa a veces como
'$(a, b)$'. Al ser la misma notación, en este segundo caso, que la que se
suele usar para los pares ordenados, esto puede causar confusión. Tampoco es
un problema, si se aclara cuando se crea que sea necesario.

Advierta que para dos enteros cualesquiera $a$ y $b$ siendo al menos uno de
estos distinto de $0$ se tiene que $"mcd"(a, b) in bb(Z)^+$ ya que, tal y
como vimos antes, si se cumple $c divides e$ para $c, e in bb(Z)$, entonces
$-c divides e$.

Tal y como dijimos, al admitir que $0 divides 0$, se da que todo número en
$bb(Z)$ es múltiplo de $0$. Por tanto, por ese lado se contribuye con todo
$bb(Z)$. Se hace la intersección con el otro conjunto TKTK.

Alternativamente a la definición que hemos dado de _máximo común divisor_,
existe otra más moderna y que es la que dan en muchos textos de teoría de
números.

#definition(title: "Máximo Común Divisor de Dos Enteros (definición moderna)")[
  Dados $a, b in bb(Z)$ tales que alguno sea distinto de $0$ y un $d in
  bb(Z)^+$ tal que $d in "div"(a, b)$. Si para cualquier $d' in bb(Z)^+$ tal
  que $d' in "div"(a, b)$ se cumple que $d' divides d$, a $d$ se le llamará
  _máximo común divisor_ de $a$ y $b$.
] <def-mcd-alt>

La definición clásica es, evidentemente, la primera que se dio, pero hubo un
momento en el que alguien se dio cuenta de que la moderna tiene más sentido
al ser más autosuficiente al permitirnos deshechar de la definición el orden
usual en $bb(Z)$, es decir, '$lt.eq$'. Advierta que la moderna nos permite
usar el orden establecido por el operador "divide a...", pero para que este
establezca un orden debe hacerlo sobre $bb(Z)^+$ ---no sobre $bb(Z)$---, de
ahí que se modifique también esto.

Esto nos permite usar esta definición en otras estructuras algebraicas
distintas a $(bb(Z), +, dot.op)$, pero no se verán en esta asignatura. Esto
se explica en @burton[p. 24] y en @rosen-number-th[p. 97].

Advierta que se puede tomar como base cualquiera de las dos definiciones y
la otra se deducirá fácilmente. Para deducir la clásica a partir de la
moderna, se hace uso del punto 5 de las propiedades 1-1.7 en
@bujalance-costa[p. 7]. En el otro sentido, TKTK.

#theorem(title: "Propiedades del Máximo Común Divisor")[
  Dados $a, b in bb(Z)$, se cumple

  + $"mcd"(a, b)$ es único.
  + $"mcd"(0, 0) = 0$.
  + Si $a divides b$, entonces $"mcd"(a, b) = |a|$.
  + $"mcd"(a, 0) = |a|$.
  + $"mcd"(a, b) = "mcd"(|a|, |b|)$.
] <prop-mcd>

#proof[
  + Al basarse en el operador "divide a..." y ser este una relación de
    orden, se cumple la propiedad antisimétrica, lo cual implica que el
    máximo común divisor sea siempre único (TKTK). Esto se cumple tanto para
    la definición clásica como para la moderna. El único caso excepcional
    podría ser $"mcd"(0, 0)$. Para eso, consulte el punto (ii).

  + Si tenemos en cuenta la admisión o no de $0 divides 0$ y la definición
    empleada es la clásica o la moderna, tendremos cuatro posibilidades para
    abordar cuál sería el resultado de $"mcd"(0, 0)$. De todas estas, la
    única combinación que nos conduce de forma natural a un único resultado
    es admitir como cierto que $0 divides 0$ y la definición moderna. El
    resultado que nos da es $0$. Por tanto, admitiremos este resultado como
    válido. En las otras combinaciones, se debe admitir por convenio.

  + Mediante la definición clásica. Como sabemos, de entre los divisores de
    $a$ el mayor es $|a|$. Además, como $a divides b$, se tiene que $|a|
    divides b$. Por tanto, $|a|$ será también el mayor de los divisores de
    $b$. Por darse ambas, se tiene que $"mcd"(a, b) = |a|$.

    Mediante la definición moderna. Como sabemos, si $a divides b$, entonces
    $|a| divides b$. Tenemos que cualquier divisor común de $a$ y $b$ es, en
    particular, divisor de $a$. Evidentemente, también será divisor de
    $|a|$. Entonces, cualquier divisor común de $a$ y $b$ será también
    divisor de $|a|$.

  + Sería un caso particular de la anterior. Veámoslo haciendo uso de la
    intersección.

    $ "div"(a, 0) = "div"(a) inter "div"(0) = "div"(a) inter bb(Z) =
    "div"(a) $

    ya que $"div"(a) subset.eq bb(Z)$. En cualquiera de las definiciones de
    _máximo común divisor_ tenemos que esto da $|a|$ como resultado.

  + Es consecuencia de la propiedad (iii) y de que si $a divides b$ entonces
    $-a divides b$.
]

Lo que en inglés llaman _fraction in lowest terms_ en español lo llamamos
_fracción en su forma reducida_.

/*
#block[
  Dados $a, b in bb(Z)$. Un $d in bb(Z)$ tal que $d divides a$ y $d divides
  b$ se dice que es un _divisor común_ de $a$ y de $b$.
]

Se me ocurre la notación $d divides {a, b}$ o, también, $"div"(a, b)$.

Algo que le puede resultar curioso es que es mucho más fácil encontrar
divisores comunes de dos números que divisores de estos por separado. Vea
@stillwell-elem-maths[p. 36].

#theorem(title: none)[
  Dados $a, b, d in bb(Z)$.

  + El conjunto de divisores comunes de $a$ y $b$ no es vacío. Es decir,

    $ {d in bb(Z) : d divides a " y " d divides b} eq.not emptyset $

  + $0 divides.not {a, b}$, a menos que $a = b = 0$. Es decir, el $0$ no es
    divisor común de dos números salvo cuando ambos valgan $0$.

  + Siempre que no se dé que $a = b = 0$, el conjunto de divisores comunes
    de $a$ y $b$ será finito.
]

#proof[
  + Se debe a que, para todo $n in bb(Z)$, se cumple que $1 divides n$, así
    que el conjunto contendrá al menos al 1.

  + Como el 0 no divide a ningún número distinto de 0, tampoco dividirá
    conjuntamente a $a$ y a $b$, salvo si ambos valen 0.

  + Podríamos expresarlo de forma conjuntista. Tenemos que

    $ "div"(a, b) = {x in bb(Z) : x divides a med "y" med x divides b} = {x
    in bb(Z) : x divides a} inter {x in bb(Z) : x divides b} = "div"(a) inter
    "div"(b) $

    Tal y como vimos, si un número $a in bb(Z)$ es distinto de 0, entonces
    $"div"(a)$ será finito. Lo mismo para $b$. Además, la intersección de
    dos conjuntos finitos ha de ser finita, por lo que $"div"(a, b)$ será
    finito.

    Veamos ahora los casos extraños. Si alguno de ambos es igual a 0, pero
    el otro no, por ejemplo, $a = 0$ y $b eq.not 0$, se dará que $"div"(a)$
    será un conjunto infinito pero no $"div"(b)$. La intersección de ambos
    conjuntos nos da $"div"(b)$.

    El caso en el que sería infinito sería cuando $a = b = 0$; de ahí que lo
    hayamos excluido.
]

#block[
  Dados $a, b in bb(Z)$ y un $d in bb(N)$ que sea divisor común de $a$ y
  $b$. Si para cualquier otro divisor común $d'$ de $a$ y $b$ se cumple que
  $d' divides d$, a $d$ se le llamará _máximo común divisor_ (_greatest
  common denominator_) de $a$ y $b$, cosa que también se denota como $"mcd"(a,
  b)$.

] <def-mcd>

Advierta que hemos mencionado que es un divisor tal que $d in bb(N)$. Esto
es perfectamente factible. Imagine que hubiésemos puesto que $d in bb(Z)$.
Al ser $d$ un número tal que $d divides a$ y $d divides b$, se tiene, tal y
como vimos antes, que $-d divides a$ y $- d divides b$. Además, como ya
vimos, si $d gt.eq 0$, entonces $- d lt.eq 0$, y viceversa. Por tanto,
podemos seleccionar al que deseemos de ${-d, d}$ y usarlo en la definición.

De hecho, si hubiésemos especificado $d in bb(Z)$, se tendrían dos
soluciones igualmente válidas: ${-d, d}$.

En algunos libros usan la misma notación que los pares ordenados, es decir,
algo como $(a, b)$, para denotar a lo que aquí designaríamos por $"mcd"(a,
b)$. Me parece que esa notación puede dar lugar a confisión en ciertos casos
y, por tanto, prefiero no usarla.
*/

El concepto de _máximo común divisor_ se puede extender a más de dos
argumentos. Vea @rosen-number-th[p. 98].

El Teorema de Bézout es muy importante, aunque quizás lo sea más el Teorema
TKTK.

Se presenta como el Teorema 1-1.22 en @bujalance-costa[p. 28], pero no me
gusta cómo se presenta ahí. En realidad, es como si fuese dos teoremas. Por
un lado, viene a decir que el máximo común divisor de dos números enteros es
único. Además, incluye la información que sería casi lo mismo que dice la
identidad de Bézout. Prefiero cómo se presentan en @rosen-number-th[p. 95].

Me resulta curioso que la manera en la que se justifica la unididad en el
máximo común divisor en @bujalance-costa es mediante este teorema. Es como
si aprovechase este teorema para zanjar esta cuestión de un "plumazo".

En realidad, es fácil deducirlo de la definición de máximo común divisor. En
la definición clásica es muy sencillo. Aunque nos den la moderna siempre
podemos recurrir a la clásica. Lo que sí se debería especificar es la el
caso excepcional $"mcd"(0, 0)$, que se hace que tenga un único valor al
asignarle por convenio el $0$.



/*
El siguiente lema es muy importante y, así aislado, quizás usted no advierta
por qué lo es. Conforme avance en la materia, verá que se recurre a este muy
a menudo.

Este lema nos dice que el máximo común divisor de dos números enteros
cualesquiera se puede expresar como combinación lineal (entera) de los
mismos. Más concretamente, se trata de la menor combinación lineal de estos,
como también se verá; pero esto último, más adelante.

#lemma[de Bézout][
  Dados $a, b in bb(Z)$, existen $x, y in bb(Z)$ tales que

  $ "mcd"(a, b) = a x + b y $
] <lema-bezout>

Tal y como dice el lema-bezout, se tiene que...

A esos valores $x$ y $y$ que aparecen en el lema se les llama _coeficientes
de Bézout_. Advierta que en la definición no se menciona que deban ser
únicos. De hecho, lo más frecuente es que no lo sean. A la ecuación

$ "mcd"(a, b) = a x + b y $

se la conoce como la _identidad de Bézout_.

En @bujalance-costa ponen la condición de que $a eq.not 0$ y $b eq.not 0$,
pero en realidad no sería necesario, pues, por un lado, si $a = b = 0$, la
igualdad se cumpliría para cualesquiera $x$ e $y$:

$ "mcd"(0, 0) = 0 = 0 x + 0 y $

Para el caso $a eq.not 0$ y $b = 0$, como sabemos que $"mcd"(a, 0) = |a|$,
tendríamos que se cumpliría tanto para $a > 0$ como si $a < 0$. Los
coeficientes $x$ e $y$ serían, respectivamente, para estos casos, $(1, y)$ y
$(-1, y)$. Como ve, el valor de $y$ da igual y, por esto mismo, demostramos
que los coeficientes de Bézout no tienen por qué ser únicos.

El caso de $a = 0$ y $b eq.not 0$ ya lo hemos contemplado en el anterior,
pues el operador máximo común divisor es conmutativo, es decir, $"mcd"(a, b)
= "mcd"(b, a)$, propiedad que hereda de la operación "divisor común de dos
números", en la que es evidente.

Vamos a ver ahora la demostración del lema-bezout.

#block[
  Los casos extraños, en los que aparece algún 0 en $a$ o $b$, ya los hemos
  mencionado antes, con lo que ahora suponemos el caso general en el que
  ninguno es 0.

  Vamos a hacer la demostración en 3 fases, ya que es algo extensa.

  Fase 1. Trataremos de demostrar que el elemento menor del conjunto de las
  combinaciones lineales (enteras) positivas de $a$ y $b$ es un divisor
  común de $a$ y $b$.

  Definimos el conjunto siguiente:

  $ M = {a x + b y : x, y in bb(Z) " y " a x + b y > 0} $

  Es decir, $M$ es el conjunto de todas las combinaciones lineales positivas
  de $a$ y $b$. ¿Por qué se ha tomado el conjunto en el que son mayores que
  0? Porque, cuando $a$ y $b$ no valen 0, su máximo común divisor será
  positivo, tal y como vimos antes.

  $M$ no puede ser vacío ya que bien la combinación $a dot.op 1 + b dot.op
  0$ o bien la $a dot.op (-1) + b dot.op 0$ será positiva. Dependerá de si
  $a$ es positiva o negativa. Recuerde que estamos excluyendo la posibilidad
  de que $a = 0$.

  Por otro lado, al ser números positivos todos los elementos de dicho
  conjunto, tendrán, por la Propiedad princ-buena-ord, un primer elemento,
  es decir, un elemento que es menor o igual que todos los demás de $M$.
  Vamos a designar a este primer elemento por $d$ y, a los valores de $x$ e
  $y$ que lo producen los designaremos por $k$ y $l$, respectivamente. Es
  decir, tenemos en el conjunto $M$ al elemento

  $ d = a k + b l $

  Vamos a suponer ahora que ese primer elemento $d$ no divide a $a$, es
  decir, $d divides.not a$. Entonces, aplicando la división en $bb(Z)$ con
  resto (th-div-entera-con-resto), tendremos un único par de $q, r in bb(Z)$
  siendo $0 lt.eq r < |d|$ y

  $ a = q d + r $

  Pero podemos ser más restrictivos con los valores posibles de $r$. Por un
  lado, sabemos que $d > 0$, ya que $d in M$, por lo que el rango de valores
  de $r$ pasa a ser $0 lt.eq r < d$. Además, hemos dicho que $d divides.not
  a$, es decir, no es una división exacta, con lo que $r eq.not 0$; nos
  queda, entonces, $0 < r < d$.

  Ahora, vamos a operar con $r$. Tenemos que

  $ r = a - d q = a - q (a k + b l) = a - q a k - q b l = a (1 - q k) + b (-
  q l) $

  Es decir, $r$ es una combinación lineal de $a$ y $b$. Además, tal y como
  hemos visto, $r > 0$, con lo que $r$ será también un elemento de $M$, es
  decir, $r in M$. Pero, por otro lado, también hemos visto que $r < d$, y
  habíamos dicho que $d$ era el elemento menor de $M$, con lo que hemos
  llegado a una contradicción. Esta nos obliga a rectificar la hipótesis $d
  divides.not a$, con lo que, al contrario de como supusimos, $d$, el menor
  elemento de $M$, será entonces un divisor de $a$.

  De forma análoga podemos proceder para deducir que $d divides b$. Así,
  tenemos que $d$, el menor elemento de $M$, es un divisor común de $a$ y
  $b$, es decir, $d divides {a, b}$.

  Fase 2. Trataremos de demostrar que el menor elemento de las combinaciones
  lineales positivas de $a$ y $b$ (es decir, el mínimo del conjunto $M$) es
  igual a $"mcd"(a, b)$.

  Sea $d' in bb(Z)$ un divisor común de $a$ y $b$, $d' divides {a, b}$.
  Entonces, existen $m, n in bb(Z)$ tales que $a = m d'$ y $b = n d'$.
  Entonces,

  $ d = a k + b l = m d' k + n d' l = d' (m k + n l) $

  con lo que $d' divides d$. Juntando esto con que $d$ es un divisor común
  de $a$ y $b$, cosa que demostramos justo antes, se tiene que $d = "mcd"(a,
  b)$.

  Una vez demostrado esto, y teniendo en cuenta que, tal y como demostramos
  en la prop-mcd, el máximo común divisor de dos números es único, ya
  estaría demostrado el lema.
]
*/

Además, tal y como veremos, ese $"mcd"(a, b)$ es el entero positivo más
pequeño que puede expresarse en la forma $a x + b y$. En @bujalance-costa,
esto último lo incluyen en el lema-bezout, pero nosotros lo deduciremos
luego por separado. Bueno, en realidad ya se ha demostrado en esta última
demostración, pero se hará luego una vez más.

Se deduce inmediatamente el corolario siguiente. Este en realidad hace
alusión a los números primos relativos, cosa que veremos en el capítulo
siguiente. Basta con que, de momento, sepa que dos números enteros se dice
que son primos relativos si su máximo común divisor es 1.

#block[
  Sean $a, b in bb(Z)$. Se cumple que $"mcd"(a, b) = 1$ si y solo si existen
  $x, y in bb(Z)$ tales que

  $ a x + b y = 1 $
] <cor-comb-lin-primos-rel>

Es consecuencia directa del Lema lema-bezout. Este corolario se usa en
varias demostraciones sobre números primos. Viene en @rosen-number-th[p. 97]
y en @burton[p. 23].

Ahora, vamos a ver un corolario muy importante. Este viene a decir que las
combinaciones lineales enteras de dos números generan a todos los múltiplos
de su máximo común divisor.

#block[
  Para cualesquiera $a, b in bb(Z)$, se da

  $ {a x + b y : x, y in bb(Z)} = {k thin "mcd"(a, b) : k in bb(Z)} $
] <cor-mult-mcd>

También sería un caso de particular relevancia la situación $a = b = 0$, y
por eso en muchos textos verá que excluyen ese caso. Pero, si lo analizamos,
podemos incluirlo sin problema. Si sustituimos los valores, vemos que ambos
conjuntos producen el conjunto ${0}$.

#block[
  Vamos a demostrar la igualdad mediante la doble inclusión.

  Primero, vamos a especificar algunas variables para ahorrarnos escribir
  demasiado. Por un lado, tenemos $d = "mcd"(a, b)$. También, definimos los
  dos conjuntos siguientes:

  $ T = {a x + b y : x, y in bb(Z)} quad "y" quad M = {k thin "mcd"(a, b) : k
  in bb(Z)} $

  Para cualquier combinación lineal entera de $a$ y $b$, como $d divides a$
  y $d divides b$, según las propiedades prop-divide-al-multiplo y
  princ-dos-de-tres se tendrá que $d divides (a x + b y)$. Así pues, un
  elemento arbitrario de $T$ será necesariamente también elemento de $M$, o,
  lo que es lo mismo, $T subset.eq M$.

  Ahora, trataremos de demostrar el subconjunto en el otro sentido. Según el
  lema-bezout, se tiene

  $ d = a x + b y $

  para algún par de números $x, y in bb(Z)$. Multiplicando por un $k in
  bb(Z)$ arbitrario, tenemos

  $ k d = k (a x + b y) = a (k x) + b (k y) $

  con lo que $k d$ es una combinación lineal entera de $a$ y $b$. Es decir,
  hemos demostrado que todo múltiplo de $"mcd"(a, b)$, es decir, todo
  elemento de $M$, será también un elemento de $T$. Por tanto, $M subset.eq
  T$.

  Como consecuencia de $T subset.eq M$ y $M subset.eq T$, se tiene que $T =
  M$.
]

Es la misma teoría que se muestra en @burton[p. 22].

De este corolario podemos deducir algo interesante. Vamos a tratar de
averiguar cuál sería el menor $m$ positivo.

#block[
  Dados $a, b in bb(Z)$. $"mcd"(a, b)$ es el menor entero positivo que se
  puede expresar como una combinación lineal entera de $a$ y $b$.
] <cor-menor-mcd>

#block[
  El caso con $a = b = 0$ lo excluiríamos, pues en este caso el máximo común
  divisor vale 0 y no se puede generar, por tanto, un entero positivo.

  Si $a eq.not 0$ y $b = 0$, tenemos, por un lado, que $"mcd"(a, 0) = |a|$.
  La combinación lineal que le correspondería, sería, por tanto, $a x + 0 y$
  o $a (-x) + 0 y$, según sea positivo o negativo $a$. En ambos casos, el
  valor que tomase $y$ sería indiferente, al estar multiplicada por 0. El
  otro caso, $a = 0$ y $b eq.not 0$ sería análogo a este.

  Caso $a eq.not 0$ y $b eq.not 0$. Se tiene siempre que $"mcd"(a, b) > 0$.
  Como, según el Corolario cor-mult-mcd, la combinación lineal entera genera
  todos los múltiplos de $"mcd"(a, b)$, el primero será este. ]

De todos modos, esto ya se demuestra también en la demostración del
lema-bezout.




