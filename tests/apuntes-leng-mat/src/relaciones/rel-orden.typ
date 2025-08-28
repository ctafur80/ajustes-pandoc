



En el ejemplo TKTK, se define el conjunto de los números naturales $NN = {0,
1, 2, 3, 4, dots.h}$, donde el siguiente de 0 es $s(0) = 1$, el siguiente de
1 es $s(1) = 2$, y así sucesivamente. De esta forma, cada número natural
distinto del cero es definido como el siguiente de otro número natural, y
esto nos permite realizar la siguiente representación de $NN$:

$ 0 arrow.r s(0) arrow.r s(s(0)) arrow.r s(s(s(0))) arrow.r dots.h.c $

es decir,

$ 0 arrow.r 1 arrow.r 2 arrow.r 3 arrow.r dots.h.c $

y describir la relación "menor o igual que", '$lt.eq$', en $NN$, mediante $n
lt.eq m$, si y solo si hay un camino de flechas $arrow.r$ desde $n$ hasta
$m$, en esa representación, o si $m$ y $n$ son iguales. En esencia, lo que
se establece es la ordenación de los números naturales:

$  0 lt.eq 1 lt.eq 2 lt.eq 3 lt.eq dots.h.c  $

Este es el orden que usted conoce y al que está habituado, ya sea en $NN$ o
en cualquier otro conjunto numérico. En el álgebra abstracta, el concepto de
_orden_ es algo más abstracto y abarca a otras relaciones distintas de la
que acabamos de mencionar.

Definición. Relación de orden. Una relación $cal(R) subset.eq U times U$ se
denomina _relación de orden_ si posee las propiedades reflexiva,
antisimétrica y transitiva.

A veces, interesa hablar de un _preorden_. Sería lo mismo que la de orden
solo que no haría falta que se cumpla la antisimétrica.

Muchas veces, nos permitimos ahorrarnos la palabra _relación_ y simplemente
dicimos que es un _orden_.

Tal y como hemos explicado, al definir el concepto de _orden_ de esta forma,
encajarían aquí otras relaciones. Por ejemplo, una de estas sería la de
"divide a" en el conjunto $NN^*$. Es fácil comprobar que cumple las tres
propiedades de la definición de relación de orden. Entonces, dados dos
elementos $a, b in NN^*$, si $a | b$, se puede decir que "$a$ precede a
$b$", o, de forma algo más metafórica, que "$a$ es menor que $b$".

% TODO Diagramas de Hasse.

La relación de orden $cal(R)$ se dice que es de _orden total_ si posee la
propiedad

$  cal(R)^(-1) union cal(R) = U times U  $

o, dicho de otro modo,

$ forall x, y in U. med x cal(R) y " o " y cal(R) x $

En caso contrario, será de _orden parcial_.

Ejemplo. Orden entre subconjuntos. En la teoría de conjuntos, la relación
"contenido", representada normalmente por '$subset.eq$', tiene la forma
siguiente

$ subset.eq: cal(P)(U) arrow.r.long cal(P)(U) $

y, para cualesquiera $A, B, C in cal(P)(U)$, satisface las propiedades que
hacen que se trate de una relación de orden. Veámoslo.

- Reflexiva. Se cumple $A subset.eq A$. Esto se demostró antes, TKTK.

- Antisimétrica. Si $A subset.eq B$ y $B subset.eq A$, entones $A = B$. Es
  la doble inclusión, que vimos que era cierta.

- Transitiva. Si $A subset.eq B$ y $B subset.eq C$, entonces $A subset.eq
  C$. Se deduce directamente de la definición de _subconjunto_.

Es evidente que es un orden parcial, cosa que se podría demostrar con un
contraejemplo. Así, pues, sobre el conjunto $A = {a, b, c}$, para los
conjuntos $A_1 = {a}$ y $A_2 = {b}$, se tiene que $A_1 subset.eq.not A_2$ y
$A_2 subset.eq.not A_1$.

Ejemplo. Orden en $NN$, $ZZ$, $QQ$ y $RR$. En cada uno de estos conjuntos de
números está definida la relación de orden habitual, '$lt.eq$', "menor o
igual que", que es una relación de orden total. La definición del orden en
cada uno de estos conjuntos se verá en capítulos posteriores.

Cabe observar que, una vez establecida la relación orden $lt.eq$, se pueden
definir las relaciones habituales '$<$', "estrictamente menor", y '$>$',
"estrictamente mayor", que no son relaciones de orden, puesto que no son
reflexivas, aunque sí son transitivas.

El par formado por un conjunto y una relación de orden definida sobre este
se denomina _conjunto ordenado_.

Ya que nos movemos en conceptos muy genéricos y estamos usando una notación
que también se usa en un caso particular de relación de orden, es decir,
'$lt.eq$', es preferible pasar a usar otro símbolo con el que no exista
posibilidad de confusión. Lo más usual es hacer uso de '$prec.eq$'. La forma
en que se leería algo como gc sería "$a$ precede a $b$" o gc.

También se utiliza indistintamente la notación $b succ.eq a$, que se lee gc
o "$b$ es posterior a $a$". La notación $a prec b$ se utiliza para indicar
que $a prec.eq b$ y $a eq.not b$. Análogamente, para $a succ b$.

En todo conjunto ordenado, hay un tipo particular de subconjuntos a los que
se llama _intervalos_.

Definición. Intervalos en un conunto ordenado. Dados un conjunto ordenado
$(U, prec.eq)$ y los elementos $a, b in U$ tales que $a prec.eq b$, se
denominan _intervalos_ a cada uno de los conjuntos siguientes:

// TODO Explicación de cosas como a < x < b son como a < x y < < b.

intervalo abierto.

$ (a, b) = {x in u | a prec x prec b} $

intervalo cerrado.

$ [a, b] = {x in u | a prec.eq x prec.eq b} $

intervalos semiabiertos (o semicerrados también se les puede llamar).

$ (a, b] &= {x in u | a prec x prec.eq b} \
  [a, b) &= {x in u | a prec.eq x prec b} $

Obsérvese que, si $a = b$, entonces los intervalos $(a, b)$, $(a, b]$ y $[a,
b)$ son el conjunto vacío, $emptyset$, mientras que el intervalo $[a, b]$ se
reduce a un solo elemento: $a$, o $b$, si lo prefiere.

Ejemplo. Sea el conjunto ordenado $(RR, lt.eq)$ donde la relación $lt.eq$ es
el orden usual de $RR$. La forma habitual de representar el conjunto de los
números reales es mediante los puntos de una recta, como en la
figura~fig:intervalo-r. El lector está familiarizado con los intervalos y
semirrectas en la recta real que se ven como segmentos continuos en dicha
recta. La expresión $a lt.eq b$ se traduce gráficamente como $g c$.

/*
\begin{figure}
  \centering
  \foreignlanguage{english}{
  \begin{tikzpicture}
    % Línea principal
    \draw (-2, 0) -- (2, 0); % Eje real
    \draw[very thick] (-1, 0) -- (1, 0); % Intervalo cerrado [a, b]

    % Puntos en los extremos
    \filldraw (-1, 0) circle (1.5pt) node[below] {$a$};
    \filldraw (1, 0) circle (1.5pt) node[below] {$b$};

    % Etiqueta del eje real
    \node[below right] at (2,0) {$RR$};
  \end{tikzpicture}
  }
  \caption{Intervalo cerrado $[a, b]$ en $RR$.}
  \label{fig:intervalo-r}
\end{figure}
*/

Sin embargo los intervalos pueden ser entendidos en el marco de los otros
conjntos numéricos ordenados, aunque se representen dentro de la recta real.

El intervalo $[3, 6]$ en los números naturales, $NN$, que denotaremos como
$[3, 6]_NN$, es $[3, 6]_NN = {3, 4, 5, 6}$. Por otro lado, se tiene $(1,
2)_NN = emptyset$.

El intervalo $((-2), 3]$ en los números enteros, $ZZ$, es

$  ((-2), 3]_ZZ = {(-1), 0, 1, 2, 3}  $

y lo representamos gráficamente en la figura~fig:intervalo-entero. Otro
ejemplo sería $(3, 4)_ZZ = emptyset$.

/*
\begin{figure}
  \centering
  \foreignlanguage{english}{
  \begin{tikzpicture}
    % Línea principal (eje real)
    \draw (-5.5, 0) -- (5.5, 0);

    % Marcas de puntos en Z
    \foreach \x in {-5,...,5} {
      \draw (\x, 0.1) -- (\x, -0.1) node[below] at(\x, 0) {$\x$};
    }

    % Puntos en el intervalo
    \foreach \x in {-2,...,3} {
      \filldraw (\x, 0) circle (1.5pt) node[below] {${\x}$};
    }

    % Extremos del intervalo
    % TODO \draw (-2, 0) -- (\x, -0.1) node[below] at(\x, 0) {$\x$};

    % Etiqueta del eje real
    \node[below right] at (5.7, 0) {$ZZ$};
  \end{tikzpicture}
  }
  \caption{Intervalo $[{-2}, 3]_ZZ$.}%
  \label{fig:intervalo-entero}
\end{figure}
*/

En general, los intervalos de $NN$ y los de $ZZ$ son puntos aislados en la
recta real $RR$.

Cuando se desea hacer referencia al intervalo $(-3), 4]_QQ$, en los números
racionales, $QQ$, se emplea la intersección de todo $QQ$ con ese mismo
intervalo pero de $RR$, es decir,

$ ((-3), 4]_QQ = ((-3), 4]_RR inter QQ $

Definición. Intervalos iniciales y finales. Dado un conjunto ordenado $(U,
succ.eq)$, los siguientes conjuntos también se denominan _intervalos_.

+ Intervalo inicial abierto: $(arrow.l, a) = {x in U | x prec a}$.
+ Intervalo final abierto: $(a, arrow.r) = {x in U | a prec x}$.
+ Intervalo inicial cerrado: $(arrow.l, a] = {x in U | x prec.eq a}$.
+ Intervalo final cerrado: $[a, arrow.r) = {x in U | a prec.eq x}$.

Ejemplo. El lector está familiarizado con los intervalos iniciales y finales
(las semirrectas) en la recta real del ejemplo TKTK. Sin embargo, un
intervalo inicial o final puede ser entendido en el marco de los otros
conjuntos numéricos ordenados.

Por ejemplo, podríamos tener el siguiente intervalo inicial en los números
naturales: $(arrow.l, 5)_NN = [0, 4]_NN = {0, 1, 2, 3, 4}$, y el intervalo
final en los enteros $[3, arrow.r)_NN = {3, 4, 5, dots.h}$.

El intervalo inicial $(arrow.l, 2)_ZZ = {dots.h, (-2), (-1), 0, 1}$ en los
números enteros, y el intervalo final $[3, arrow.r)_ZZ = {3, 4, 5,
dots.h}$.

Los intervalos iniciales y finales en los números racionales, también se
escriben en función de los correspondientes intervalos en $RR$:

$ (arrow.l, 2)_QQ = (arrow.l, 2) inter QQ \
  (3, arrow.r)_QQ = (3, arrow.r) inter QQ $

Orden lexicográfico en $RR^2$. Basándonos en el orden usual de $RR$,
definimos la relación siguiente de orden en $RR^2$:

$ (a, b) lt.eq_L (c, d) " si y solo si " (a < c) " o " (a = c " y " b lt.eq
d) $

para $a, b, c, d in RR$.

Para representar un intervalo abierto o semiabierto, se tendría que hacer
uso de la versión estricta de esta relación, que sería:

$ (a, b) <_L (c, d) " si y solo si " (a < c) " o " (a = c " y " b < d) $

Podríamos representar, como en la figura~fig:orden-lexicografico-1, el
intervalo inicial cerrado $(arrow.l, (a, b)]_(lt.eq_L)$, que sería el área
sombreada de la izquierda junto a la semirrecta vertical continua izquierda,
incluyendo al punto $(a, b)$, y el intervalo final cerrado $[(c, d),
arrow.r)_(lt.eq_L)$, correspondiente al área sombreada de la derecha y la
semirrecta vertical continua de la derecha, junto con el punto $(c, d)$.
Estos intervalos iniciales serían

$ (arrow.l, (a, b)]_(lt.eq_L)
    &= {(x, y) in RR^2 | (x, y) lt.eq _L (a, b)} \\
  [(c, d), arrow.r)_(lt.eq_L)
    &= {(x, y) in RR^2 | (c, d) lt.eq _L (x, y)} $

Se trata de una relación de orden total ya que se puede comprobar que, dado
un punto $(a, b)$, entonces $(arrow.l, (a, b)]_(lt.eq_L) union [((a, b),
arrow.r)_(lt.eq_L) = RR^2$, y, por tanto, cualquier punto $(x, y)$ del plano
está relacionado con un punto cualquiera $(a, b)$, ya sea mediante $(x, y)
lt.eq_L (a, b)$, o bien, $(a, b) lt.eq_L (x, y)$.

/*
\begin{figure}
\centering
  \foreignlanguage{english}{
  \begin{tikzpicture}[scale=1]

    % Áreas sombreadas
    \fill[gray!140, opacity=0.8] (-3.5, -3.5) rectangle (-0.5, 3.5);
    \fill[gray!140, opacity=0.8] (0.5, -3.5) rectangle (3.5, 3.5);

    % Ejes cartesianos
    \draw[->] (-3.7, 0) -- (3.7, 0) node[right] {$x$};
    \draw[->] (0, -3.7) -- (0, 3.7) node[above] {$y$};

    % Líneas verticales
    \draw (-0.5, -3.5) -- (-0.5, -0.5);
    \draw[dashed] (-0.5, -0.5) -- (-0.5, 3.5);

    \draw[dashed] (0.5, -3.5) -- (0.5, 0.5);
    \draw (0.5, 0.5) -- (0.5, 3.5);

    % Puntos en el plano
    \filldraw (-0.5, -0.5) circle (1.5pt) node[left] {$(a, b)$};
    \filldraw (0.5, 0.5) circle (1.5pt) node[right] {$(c, d)$};

    % Etiquetas de las relaciones
    \node[above, rotate= 45] at (-2, 1.5) {$(x, y) lt.eq_L (a, b)$};
    \node[above, rotate=45] at (2.5, -1.5) {$(c, d) lt.eq_L (x, y)$};

  \end{tikzpicture}
  }
  \caption{Intervalos $(arrow.l, (a, b)]_{lt.eq_L}$ y $[(c,d),
    \to)_{lt.eq_L}$.}%
  \label{fig:orden-lexicografico-1}
\end{figure}
*/

También, podríamos tener los intervalos inicial y final abiertos que, en
notación compacta, serían $(a, b) <_L (x, y) <_L (c, d)$. Su representación
gráfica la mostramos en la figura~\ref{fig:orden-lexicografico-2}.

/*
\begin{figure}
\centering
  \foreignlanguage{english}{
  \begin{tikzpicture}[scale=1]

    % Áreas sombreadas
    \fill[gray!140, opacity=0.8] (-2.7, -3.5) rectangle (1, 3.5);

    % Ejes cartesianos
    \draw[->] (-3.7, 0) -- (3.7, 0) node[right] {$x$};
    \draw[->] (0, -3.7) -- (0, 3.7) node[above] {$y$};

    % Líneas verticales
    \draw[dashed] (-2.7, -3.5) -- (-2.7, -1);
    \draw (-2.7, -1) -- (-2.7, 3.5);

    \draw (1, -3.5) -- (1, 1);
    \draw[dashed] (1, 1) -- (1, 3.5);

    % Puntos en el plano
    \draw (-2.7, -1) circle (1.5pt) node[left] {$(a, b)$};
    \draw (1, 1) circle (1.5pt) node[right] {$(c, d)$};

    % Etiquetas de las relaciones
    \node[above, rotate= 45] at (-0.7, 0)
      {$(a, b) <_L (x, y) <_L (c, d)$};

  \end{tikzpicture}
  }
  \caption{Intervalo $((a, b), (c, d))_{lt.eq_L}$.}%
  \label{fig:orden-lexicografico-2}
\end{figure}
*/

Esta relación de orden la llaman _lexicográfica_ porque viene de que el
orden es análogo al que se utiliza para disponer las palabras en un
diccionario.

Ejemplo. Orden producto en $RR^2$. Se define en $RR^2$, componente a
componente, el siguiente orden

$ (a, b) lt.eq_P (c, d) " si y solo si " a lt.eq c " y " b lt.eq d $

entendiendo que ese '$lt.eq$' es el orden usual de los números reales. Su
versión estricta, para poder hacer uso de intervalos abiertos o
semiabiertos, sería

$ (a, b) lt.eq_P (c, d) " si y solo si " a < c " y " b < d $

La relación producto es un orden parcial en $RR^2$ que en economía suelen
llamar _orden de Pareto_. En general, cuando se tienen dos espacios
ordenados, el orden producto es el orden que se define en el producto
cartesiano componente a componente.

En las figuras~fig:orden-pareto-1 y~fig:orden-pareto-2, mostramos las
representaciones de intervalos según el orden producto. Advierta que en la
primera se ve claramente que el orden producto no es total, ya que dado un
punto $(a, b)$, se tiene que $RR^2 eq.not (arrow.l, (a, b)]_(lt.eq_P) union
[(a, b), arrow.r)_(lt.eq_P)$. De hecho, si $a eq.not b$, los puntos $(a, b)$
y $(b, a)$ no son comparables, es decir, ni $(b, a) lt.eq_P (a, b)$ ni $(a,
b) lt.eq_P (b, a)$.

/*
\begin{figure}
\centering
  \foreignlanguage{english}{
  \begin{tikzpicture}[scale=1]

    % Áreas sombreadas
    \fill[gray!140, opacity=0.8] (-3.5, -3.5) rectangle (-1, -1);
    \fill[gray!140, opacity=0.8] (1, 1) rectangle (3.5, 3.5);

    % Ejes cartesianos
    \draw[->] (-3.7, 0) -- (3.7, 0) node[right] {$x$};
    \draw[->] (0, -3.7) -- (0, 3.7) node[above] {$y$};

    % Líneas
    \draw (-1, -3.5) -- (-1, -1) -- (-3.5, -1);
    \draw (3.5, 1) -- (1, 1) -- (1, 3.5);

    % Puntos en el plano
    \filldraw (-1, -1) circle (1.5pt) node[right] {$(a, b)$};
    \filldraw (1, 1) circle (1.5pt) node[right] {$(c, d)$};

    % Etiquetas de las relaciones
    \node[above, rotate= 45] at (-2.5, -3) {$(x, y) lt.eq_P (a, b)$};
    \node[above, rotate=45] at (3, 3) {$(c, d) lt.eq_P (x, y)$};

  \end{tikzpicture}
  }
  \caption{Intervalos $(arrow.l, (a, b)]_{lt.eq_P}$ y $[(c, d),
    arrow.r)_{lt.eq_P}$.}%
  \label{fig:orden-pareto-1}
\end{figure}

\begin{figure}
\centering
  \foreignlanguage{english}{
  \begin{tikzpicture}[scale=1]

    % Áreas sombreadas
    \fill[gray!140, opacity=0.8] (-2, -2) rectangle (3, 3);

    % Ejes cartesianos
    \draw[->] (-3.7, 0) -- (3.7, 0) node[right] {$x$};
    \draw[->] (0, -3.7) -- (0, 3.7) node[above] {$y$};

    % Líneas
    \draw[dashed] (-2, -2) -- (-2, 3) -- (3, 3) -- (3, -2) -- (-2, -2);

    % Puntos en el plano
    \draw (-2, -2) circle (1.5pt) node[below] {$(a, b)$};
    \draw (3, 3) circle (1.5pt) node[above] {$(c, d)$};

    % Etiquetas de las relaciones
    \node[above, rotate= 45] at (1, 0)
      {$(a, b) <_P (x, y) <_P (c, d)$};

  \end{tikzpicture}
  }
  \caption{Intervalo $((a, b), (c, d))_{lt.eq_P}$.}%
  \label{fig:orden-pareto-2}
\end{figure}
*/

// TODO Quizás, crear una (sub)sección sobre acotación.

Definición. Cotas de un subconjunto $A$. Dados un conjunto ordenado $(U,
prec.eq)$ y un subconjunto $A subset.eq U$, se denomina _cota superior_ del
conjunto $A$ a un elemento de $U$ que suceda a todo elemento de $A$, y será
una _cota inferior_ de $A$ todo elemento de $U$ que preceda a todo elemento
de $A$.

Esto mismo se podría expresar haciendo más uso de simbología. Una cota
superior de $A$ es cualquier elemento $u in U$ que cumple que $forall x in
A. med x prec.eq u$, mientras que, una cota inferior de $A$ es cualquier
elemento $d in U$ que cumple que $forall x in A. med d prec.eq x$.

Si, para un conjunto $A$, existe una cota superior en este, se dice que el
conjunto $A$ está acotado superiormente. Análogamente, si para un conjunto
$A$ se tiene una cota inferior, se dirá que $A$ está acotado inferiormente.
Se dice que un conjunto está _acotado_ si está acotado superiormente e
inferiormente.

Observación. En un conjunto ordenado $(U, prec.eq)$ se tiene que un conjunto
$A subset.eq U$ está acotado si y solo si existen dos elementos $a, b in U$
tales que $A$ está contenido en el intervalo $[a, b]_{prec.eq}$.

Definición. Máximo y mínimo de un conjunto $A$. Dados un conjunto ordenado
$(U, prec.eq)$ y un subconjunto $A subset.eq U$, se denomina _máximo_ del
conjunto $A$, denotado por $"máx"(A)$, a una cota superior de $A$ que
pertenezca a $A$, mientras que será un _mínimo_ de $A$, que representaremos
por $"mín"(A)$, una cota inferior de $A$ que pertenezca a $A$.

Se podrían dar estas definiciones haciendo más uso de la simbología. Un
máximo de $A$ es todo elemento $m in A$ tal que $forall x in A. med x
prec.eq m$, mientras que un mínimo de $A$ es todo elemento $m in A$ tal que
$forall x in A. med m prec.eq x$.

Definición. Supremo e ínfimo de un conjunto $A$. Dados un conjunto ordenado
$(U, prec.eq)$ y un subconjunto $A subset.eq U$, llamamos _supremo_ de $A$,
representado por $"sup"(A)$, a toda cota superior de $A$ que preceda a las
demás. Análogamente, será _ínfimo_ de $A$, representado por $"ínf"(A)$, toda
cota inferior de $A$ que suceda a las demás.

Se podrían definir haciendo un mayor uso de la simbología. El supremo de $A$
es una cota superior $s in U$ de $A$ tal que $s prec.eq u$ para toda cota
superior $u$ de $A$, mientras que el ínfimo de $A$ es una cota inferior $i
in U$ de $A$ tal que $d prec.eq i$ para toda cota superior $d$ de $A$.

Observaciones. En un conjunto ordenado $(U, prec.eq)$, se tiene que el
ínfimo de un conjunto $A$ es el máximo del conjunto de las cotas inferiores
de $A$, y el supremo de $A$ es el mínimo del conjunto de las cotas
superiores de $A$.

Proposición. Si un conjunto posee máximo, entonces posee supremo, y, además,
$"sup"(A) = "máx"(A)$. Análogamente. si un conjunto posee mínimo, entonces
posee ínfimo, e $"ínf"(A) = "mín"(A)$.

Para demostrarlo, es fácil ver que se deduce de forma directa de la
definición de TKTK.

// TODO Todo esto habrá que trabajarlo y consultarlo en otras fuentes, pues
// parecen proposiciones importantes pero que menciona muy de pasada.

De aquí podemos deducir su condicional contrarrecíproca, que también tiene
su utilidad. Es la siguiente:

Proposición. Si $"sup"(A) in.not A$, entonces no existe $"máx"(A)$.

Tal como veremos ahora, se dan ciertas propiedades sobre la existencia de
los elementos que acabamos de ver. Concretamente, aunque no hemos querido
especificarlo en la definición, tanto el máximo, mínimo, supremo e ínfimo,
en caso de existir, son únicos. Lo vemos en la proposición siguiente.

Proposición. Dados un conjunto ordenado $(U, prec.eq)$ y un subconjunto $A$
de $U$, $A subset.eq U$, se tiene

+ Si existe el máximo del conjunto $A$, entonces este es único. Lo mismo
  sucede para el mínimo.
+ Si existe el supremo de $A$, entonces este es único. Lo mismo sucede para
  el ínfimo.
+ Si existe el supremo $s$ del conjunto $A$ y $s in A$, entonces $s$ es el
  máximo de $A$.
+ Si existe el ínfimo $i$ del conjunto $A$ e $i in A$, entonces $i$ es el
  mínimo de $A$.

Demostración. Veamos las demostraciones de algunas de estas proposiciones.

Para la primera, sobre el máximo, sería lo siguiente. Suponemos que existen
$m, m' in A$ tales que para cualquier $x in A$ se cumple que $x prec.eq m$ y
$x prec.eq m'$. En particular, se cumple, según el punto de vista, que tanto
$m' prec.eq m$ como $m prec.eq m'$. Por tanto, se tiene directamente de la
propiedad antisimétrica que se debe cumplir en toda relación de orden, que
$m = m'$. Ocurre lo mismo con el mínimo.

Para la del supremo, la demostración sería muy parecida. El supremo sería
una cota superior que precede a todas las demás. Supondríamos la existencia
de dos supremos de $A$: $s$ y $s'$. Según los dos puntos de vista, se
tendría que $s prec.eq s'$ y $s' prec.eq s$, con lo que, gracias a la
propiedad antisimétrica, se tiene que $s = s'$. Para el caso del ínfimo, se
seguiría un razonamiento análogo.

Debido a las afirmaciones anteriores, se puede decir, más cómodamente, que
el supremo de $A$ es la menor de sus cotas superiores, y, el ínfimo, la
mayor de las inferiores. Ojo, gc y "mayor" en el sentido del orden (es
decir, la relación de orden) que estamos tratando; no tiene por qué ser el
orden al que estamos acostumbrados.

Ejemplo. En el conjunto de los números naturales $NN^*$, véase el ejemplo
TKTK, se define la relación gc mediante

$ n divides m " si y solo si " exists k in NN^* " tal que " m = k n $

para $m, n in NN^*$. Es una relación de orden, puesto que, para cualesquiera
$m, n, h in NN^*$, se cumple:

- Reflexiva, pues $n = 1n$.
- Antisimétrica, pues, si $m = k n$ y $n = k' m$, para unos $k, k' in NN^*$,
  entonces $n = k' k n$. Luego $k' k = 1$, de donde $k' = k = 1$.
- Transitiva pues, si $n divides m$ y $m divides h$, entonces $m = k n$ y $h
  = k' m$, para unos $k, k' in NN^*$, y, por tanto, $h = k' k n$, con lo que
  $n divides h$.

Esta relación no es de orden total, cosa que se podría demostrar con un
contraejemplo: Los números 2 y 3 no están relacionados en ninguno de los
sentidos, es decir, $2 divides.not 3$ y $3 divides.not 2$.

El conjunto $A = {2, 4, 6}$ tiene como cota superior cualquier número que
sea divisible por 4, y 6, ya que, al ser divisible por uno cualquiera de
estos, también será divisible entre 2, automáticamente. En cuanto al
supremo, se tiene que $"sup"(A) = 12$ pues el mínimo común múltiplo de esos
dos números es 12. Además, no existe máximo puesto que de existir debería
ser 12, pero $12 in.not A$. Las cotas inferiores son los números 1 y 2.
Además, $"mín"(A) = 2 = "ínf"(A)$.

Ejemplo. En el conjunto ordenado de los números racionales, $QQ$, se
considera el conjunto

$  A = {x in QQ | x^2 < 2}  $

Se deduce fácilmente que $(-sqrt(2)) < x < sqrt(2)$ para $x in QQ$, o, lo
que es lo mismo, $A = [(-sqrt(2)), sqrt(2)] inter QQ$. Entonces, una cota
inferior de $A$ en $QQ$ es $(-2)$, mientras que una superior es 2. Ahora
bien, no existe ni supremo ni ínfimo de $A$ en el conjunto $QQ$. Esto se
verá en detalle posteriormente, véase el ejemplo TKTK. Si se tratase de un
intervalo de $RR$, es decir, $[(-sqrt(2)), sqrt(2)]$, se tendría que
$"sup"(A) = sqrt(2)$ y $"ínf"(A) = (-sqrt(2))$. Tampoco existen $"máx"(A)$
ni $"mín"(A)$ en $A$.

Propiedad del buen orden. Se dice que un conjunto ordenado $(U, prec.eq)$ es
un conjunto _bien ordenado_, o que la relación $prec.eq$ es una buena
ordenación, si cualquier subconjunto no vacío posee mínimo.

En caso de existir, al elemento mínimo de cada subconjunto $A$ también se
denomina _primer elemento_ de $A$.

Concretamente, la propiedad de buena ordenación se cumple en el conjunto de
los números naturales, $NN$. A esta la suelen llamar el Principio de Buena
Ordenación de $NN$. Por tanto, tal y como veremos en un capítulo posterior,
todo conjunto no vacío de números naturales tiene mínimo.

Tal y como sucedía en el ejemplo anterior, en un conjunto ordenado un
subconjunto acotado puede no tener supremo ni ínfimo.

Ejemplo. El conjunto $A = {(x, y) in RR^2 | 1 lt.eq x lt.eq 2}$ está acotado
superiormente en $RR^2$ dotado del orden lexicográfico. Así, por ejemplo,
una cota superior sería $(3, (-7))$. Para hallar el supremo, es bastante
evidente que la primera coordenada sería el 2, pero la segunda no tiene
límite por debajo, con lo que podemos afirmar que dicho conjunto no tiene
supremo.

Por otro lado, una cota inferior sería el $(0, 0)$. Al tener cotas
superiores e inferiores, se trata de un conjunto acotado. Con el ínfimo,
sucedería algo similar al supremo. TKTK. No tiene.

Propiedad del supremo. Se dice que un conjunto ordenado $(U, prec.eq)$ cuple
la propiedad del supremo si y solo si cualquier subconjunto no vacío $A$
acotado superiormente posee supremo.

La propiedad del supremo es una propiedad característica del orden de los
números reales, orden continuo. que se conoce como axioma del supremo de
$RR$: Todo conjunto no vacío de números reales acotado superiormente tiene
supremo.

Advierta que esto no quiere decir que tenga máximo.

Ejemplo. Sea el conjunto $A = {(x, y) in RR^2 | 1 lt.eq x lt.eq 2, med 1
lt.eq y < 2}$ en el conjunto ordenado $RR^2$ dotado del orden lexicográfico,
es decir, el conjunto ordenado $(RR, lt.eq_L)$. Determine, para $A$, las
cotas inferiores y superiores, supremo e ínfimo y máximo y mínimo.

Solución. Tal y como se puede ver en su representación gráfica, en la
figura~ref{fig:orden-cotas-lexi-1}, una cota superior de $A$ es cualquier
punto del intervalo final cerrado $[(2, 2), arrow.r)_L$, es decir, cualquier
$(x, y)$ con $2 < x$, que corresponde al área sombreada de la derecha, o
$(2, y)$ con $2 lt.eq y$, que es la semirrecta vertical desde el punto $(2,
2)$, sin incluirlo, hacia ariba.

El supremo de $A$ es $"sup"L (A) = (2, 2)$. El conjunto $A$ no posee máximo,
debido a que aparece una desigualdad estricta, $1 lt.eq y < 2$, en una de
las condiciones en la definición del conjunto $A$. TKTK.

Una cota inferior de $A$ es cualquier punto del intervalo inicial $(arrow.l,
(1, 1)]_L$, es decir, cualquier $(x, y)$ con $x < 1$, que corresponde con el
área sombreada de la izquierda, o $(1, y)$ con $y lt.eq 1$, que es la
semirrecta vertical hacia abajo desde en el punto $(1, 1)$, incluido este.
El ínfimo de $A$ es $"ínf"L(A) = (1, 1)$. Como el conjunto $A$ contiene al
punto $(1, 1)$, entonces $"mín"L(A) = (1, 1)$.

/*
\begin{figure}
\centering
  \foreignlanguage{english}{
  \begin{tikzpicture}[scale=1]

    % Áreas sombreadas
    \fill[gray!140, opacity=0.8] (1, 1) rectangle (3, 3);
    \fill[gray!80, opacity=0.8] (-0.5, -0.5) rectangle (1, 5);
    \fill[gray!80, opacity=0.8] (3, -0.5) rectangle (5, 5);

    % Ejes cartesianos
    \draw[->] (-0.5, 0) -- (5, 0) node[right] {$x$};
    \draw[->] (0, -0.5) -- (0, 5) node[above] {$y$};

    % Líneas
    \draw (1, 3) -- (1, 1) -- (3, 1) -- (3, 5);
    \draw (1, -0.5) -- (1, 1);
    \draw[dashed] (1, 5) -- (1, 3) -- (3, 3);
    \draw[dashed] (3, 1) -- (3, -0.5);

    % Puntos
    \filldraw (1, 1) circle (1.5pt) node[left] {$(1, 1)$};
    \draw (3, 3) circle (1.5pt) node[right] {$(2, 2)$};
    \draw (1, 3) circle (1.5pt);

    % Etiquetas
    \node at (2, 2) {$A$};

  \end{tikzpicture}
  }
  \caption{Cotas lexicográficas del conjunto $A \subseteq RR^2$.}
  \label{fig:orden-cotas-lexi-1}
\end{figure}
*/

Ejercicio. Sea el mismo conjunto $A = {(x, y) in RR^2 | 1 lt.eq x lt.eq 2,
med 1 lt.eq y < 2}$ del ejercicio anterior, solo que ahora consideramos el
conjunto ordenado $(RR, (lt.eq)_P)$, es decir, con el orden producto.
Determine cotas inferiores y superiores, supremo. ínfimo, máximo y mínimo de
$A$.

Solución. Tal y como puede ver en la figura~ref{fig:orden-cotas-prod-1}, una
cota superior de $A$ es cualquier punto del intervalo final $[(2, 2),
arrow.r)_P$, es decir, cualquier $(x, y)$ con $2 lt.eq x$ y $2 lt.eq y$, que
en la figura será el área sombreada superior derecha. El supremo de $A$ es
$"sup"P(A) = (2, 2)$. El conjunto $A$ no posee máximo puesto que $(2, 2)
in.not A$.

Una cota inferior de $A$ es cualquier punto del intervalo inicial $(arrow.l,
(1, 1)]_P$, es decir, cualquier $(x, y)$ con $x lt.eq 1$ e $y lt.eq 1$. El
ínfimo de $A$ es $"ínf"P(A) = (1, 1)$. Como el conjunto $A$ contiene al
punto $(1, 1)$, entonces $"mín"P(A) = (1, 1)$.

/*
\begin{figure}
\centering
  \foreignlanguage{english}{
  \begin{tikzpicture}[scale=1]

    % Áreas sombreadas
    \fill[gray!140, opacity=0.8] (1, 1) rectangle (3, 3);
    \fill[gray!80, opacity=0.8] (-0.5, -0.5) rectangle (1, 1);
    \fill[gray!80, opacity=0.8] (3, 3) rectangle (5, 5);

    % Ejes cartesianos
    \draw[->] (-0.5, 0) -- (5, 0) node[right] {$x$};
    \draw[->] (0, -0.5) -- (0, 5) node[above] {$y$};

    % Líneas
    \draw[dashed] (1, 3) -- (3, 3);
    \draw (1, -0.5) -- (1, 3);
    \draw (-0.5, 1) -- (3, 1) -- (3, 5);
    \draw (3, 3) -- (5, 3);

    % Puntos
    \filldraw (1, 1) circle (1.5pt) node[left] {$(1, 1)$};
    \draw (3, 3) circle (1.5pt) node[right] {$(2, 2)$};

    % Etiquetas
    \node at (2, 2) {$A$};

  \end{tikzpicture}
  }
  \caption{Cotas lexicográficas del conjunto $A \subseteq RR^2$.}
  \label{fig:orden-cotas-prod-1}
\end{figure}
*/

Ejemplo. Sea el conjunto $B$ constituido por la arista inferior y la arista
izquierda del cuadrado que representa al conjunto $A$ de los dos ejercicios
anteriores, es decir,

$ B = {(x, y) in RR^2 | (1 lt.eq x lt.eq 2, " e " y = 1) " o " (1 lt.eq y
lt.eq 2 " y " x = 1)} $

Resulta que, para el orden producto, $lt.eq_P$, el conjunto de las cotas
superiores de $B$ es el conjunto de las cotas superiores de $A$, y el
conjunto de las cotas inferiores de $B$ es el conjunto de las cotas
inferiores de $A$.

El supremo de $B$ es $"sup"P(B) = (2, 2)$, y no existe $"máx"P(B)$. Además,
$"ínf"P(B) = (1, 1) = "mín"P(B)$. Fíjese en que el punto $(1,5, 3)$ no sería
una cota superior de $B$ por el orden producto. De hecho, al no tratarse de
un orden parcial, hay puntos que no están relacionados.

// TODO Explicarlo mejor.

Respecto al orden lexicográfico, el supremo de $B$ es $"sup"L(B) = (2, 1)$,
y, como $(2, 1) in B$, resulta que es máximo. El ínfimo de $B$ es $"ínf"L(A)
= (1, 1)$ y, además, $"mín"L(B) = (1, 1)$.

Ahora, vamos a presentar unos conceptos que serían como el de _máximo_ y
_mínimo_ solo que con un orden no estricto. Recuerde que, dada una relación
de orden $prec.eq$, su correspondiente orden estricto se representaría por
$prec$ y lo definiríamos como

$ a prec b " si y solo si " a prec.eq b " y " a eq.not b $

Definición. Dados un conjunto ordenado $(U, prec.eq)$ y un subconjunto $A$
de $U$, $A subset.eq U$, se define el _elemento maximal_ (_maximal element_)
del conjunto $A$ como un elemento $M in A$ tal que

$ exists.not x in A. med M prec x $

De forma dual, se tiene al _elemento minimal_ (_minimal element_) del
conjunto $A$ como un elemento $m in A$ tal que

$ exists.not x in A. med x prec m $

A estos elementos, muchas veces se les llama simplemente _maximal_ y
_minimal_, pues se sobrentiende que se trata de elementos.

En realidad, estos elementos se definen sobre conjuntos con preorden, pero
tampoco es algo que vayamos a estudiar en profundidad en esta asginatura.

Observación. Si el orden de $U$ es total, los conceptos de maximal y máximo
coinciden, así como los de minimal y mínimo. En general, los elementos
maximales y los minimales de un conjunto no tienen por qué ser únicos, como
se muestra en el el ejemplo siguiente. Sin embargo, si un conjunto tiene
elemento máximo, entonces solo hay un elemento maximal, y este coincidirá
con su máximo. Análogamente, para el mínimo. Es decir, si un conjunto tiene
un elemento mínimo, entonces solo hay un minimal, y este coincidirá con su
mínimo.

Ejemplo. En el conjunto ordenado del ejemplo TKTK, $(NN^*, |)$, se considera
el conjunto $A = {2, 3, 4, 5, 6, 7, 8, 9, 10}$. Querríamos hallar los
elementos máximo, mínimo, maximal y minimal.

Si se fija, no tiene máximo, ya que no existe un $M in A$ tal que para todo
$x in A$ se dé $x divides.not M$. Se haría comprobándolo para todos y cada
uno de los elementos de $A$.

Por cierto, el orden es parcial, como es fácil ver con un contraejemplo.
Así, se tiene que $2 divides.not 3$ y $3 divides.not 2$.

Tampoco tiene mínimo, cosa que se comprobaría de forma análoga. Se puede
comprobar que no existe un $m in A$ tal que, para todo $x in A$, se dé $m
\mid x$. Se tendría que comprobar para todos los elementos de $A$.

Veamos ahora si tiene elementos maximales. Tenemos que averiguar si existe
algún $M in A$ para el que no existe un $x in A$ con el que se dan $M eq.not
x$ y $M divides x$. Con esta condición, se tiene que, por ejemplo, el 2 no
lo es, ya que divide al 4, entre otros. El 3, tampoco, porque al menos
divide al 6. Así, tendríamos que los elementos maximales de $A$ son ${6, 7,
8, 9, 10}$. Por otro lado, los minimales son ${2, 3, 5, 7}$, pues, por
ejemplo, el 2 no tiene en $A$ a ningún elemento que le divida y que no sea
2; con el 3, lo mismo; el 4 sí, pues $2 divides 4$. Etc.

Aunque no nos lo han preguntado, una cota superior sería, por ejemplo, el
producto de todos ellos.

Ejercicio. Determine cotas, supremo ínfimo, máximo. mínimo, maximales y
minimales del conjunto

$ A = {(x,y) in RR^2 | 0 lt.eq x, med 0 lt.eq y, \ x + y lt.eq 1} $

para el orden lexicográfico y para el orden producto.

Solución. El conjunto $A$ es el conjunto de puntos del triángulo de vértices
$(0, 0)$, $(1, 0)$ y $(0, 1)$ y de su interior. Advierta que esas
condiciones se unen mediante conjunciones. Las dos primeras nos harían
descartar los cuadrantes 2, 3 y 4. Con la otra, nos quedamos con ese
tríángulo.

/*
\begin{figure}
\centering
  \foreignlanguage{english}{
  \begin{tikzpicture}[scale=1]

    % Áreas sombreadas
    \fill[gray!80, opacity=0.8] (-2, -2) rectangle (0, 4);
    \fill[gray!80, opacity=0.8] (3, -2) rectangle (4, 4);
    %\fill[gray!140, opacity=0.8] (1, 1) triangle (2, 2);
    % Triángulo
    \fill[gray!50, opacity=0.8] (0, 0) -- (3, 0) -- (0, 3) -- cycle;

    % Ejes cartesianos
    \draw[->] (-2, 0) -- (4, 0) node[right] {$x$};
    \draw[->] (0, -2) -- (0, 4) node[above] {$y$};

    % Líneas
    \draw (0, -2) -- (0, 0) -- (3, 0) -- (3, 4);
    \draw (0, 0) -- (0, 3) -- (3, 0);
    \draw[dashed] (0, 0) -- (0, 4);
    \draw[dashed] (3, 0) -- (3, -2);

    % Puntos
    \filldraw (0, 0) circle (1.5pt);
    \filldraw (3, 0) circle (1.5pt) node[anchor=north west] {$(1, 0)$};

    % Etiquetas
    \node[left] at (0, 3) {$(0, 1)$};

  \end{tikzpicture}
  }
  \caption{Cotas lexicográficas del conjunto $A \subseteq RR^2$.}
  \label{fig:}
\end{figure}
*/

Primera parte. TKTK. Con $RR^2$ dotado del orden lexicográfico tenemos que: 

Una cota superior de $A$ es cualquier punto $(x, y)$ tal que $1 < x$ o un
punto $(1, y)$ con $0 lt.eq y$, es decir, un punto del intervalo final
$lr([(1, 0), \to ))_L$. Esto no quiere decir que sean las únicas. Por
ejemplo, otra sería $(0.5, 0.6)$.

En cuanto al supremo, en principio no lo tengo claro. Por ejemplo, ¿cuál
precede a cuál? ¿$(1, 0) lt.eq_L (0.5, 0.6)$ o $(0.5, 0.6) lt.eq_L (1, 0)$?
Es fácil de comprobar. En el primer caso, se comprueba que dicha relación no
se da, mientras que, en el segundo sí. Por tanto, $"sup"_L(A) = (1, 0)$.
Además, como $"sup"_L(A) in A$, se tiene que $"máx"_L(A) = "sup"_L(A) = (1,
0)$.

// TODO En realidad, tampoco he llegado a demostrar que sea ese el supremo.

Una cota inferior de $A$ es cualquier punto $(x, y)$ tal que $x < 0$ o un
punto $(0, y)$ con $y lt.eq 0$, es decir, un punto del intervalo inicial
$lr((arrow.l, (0, 0)])_L$, además de muchos otros. Además, $"ínf"_L(A) = (0,
0) in A$, luego $"mín"_L(A) = (0, 0)$.

Segunda parte. TKTK. Con $RR^2$ dotado del orden producto tenemos que:

Una cota superior de $A$ es cualquier punto $(a, b)$ tal que $1 lt.eq a$ y
$1 lt.eq b$, es decir, cualquier punto del intervalo final $lr([(1, 1), \to
))_P$. Además, se observa que la primera coordenada del supremo sería

$  "sup"({x | (x, y) in A}) = 1  $

y, la segunda,

$  "sup"({y | (x, y) in A}) = 1  $

con lo que se tiene que

$  "sup"P(A) = (1, 1)  $

El conjunto $A$ no posee máximo, y cada punto $(x, y) in A$ que satisface la
ecuación $x + y - 1 = 0$ es un punto maximal de $A$. Puede comprobarse
visualmente en la figura TKTK, donde se ha dibujado un intervalo final $[(x,
y), arrow.r)_P$ siendo $(x, y) in A$ tal que $x + y = 1$, que cualquier
intervalo de este tipo solo contiene al propio punto $(x, y)$.

Una cota inferior de $A$ es cualquier punto del intervalo inicial $(arrow.l,
(0, 0)]_P$. Además, $"ínf"P(A) = (0, 0) in A$, luego $"mín"P(A) = (0, 0)$.

Ejemplo. Orden inducido por un pseudografo dirigido. Dado el grafo dirigido
de la figura TKTK, $(V, G)$ donde $V = {a, b, c, d, e, f, g}$ y $G = {a b, a
e, a f, b c, c d, e f, g b}$, se considera el pseudo-grafo obtenido al
añadir las aristas que unen cada punto con sí mismo. Es decir, el conjunto
de vértices del pseudo-grafo son $V = {a, b, c, d, e, f, g}$, y el conjunto
de aristas:

$ E = {a a, a b, a e, a f, b b, b c, c c, c d, d d, e e, e f, f f, g b, g g}
$

Este pseudografo permite definir la relación $cal(R) subset.eq V times V$,
que denotamos por $lt.eq_cal(R)$ mediante:

$ x lt.eq_cal(R) y " si y solo si existe un camino que empieza en " x
" y termina en " y $

Esta relación es de orden parcial puesto que los vértices $d$ y $f$ no están
relacionados. El conjunto de minimales de $V$ es ${a, g}$ y el conjunto de
elementos maximales de $V$ es ${d, f}$.






