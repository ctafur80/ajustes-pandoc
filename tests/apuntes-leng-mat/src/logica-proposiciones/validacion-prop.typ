
#import "../../typst-maths-book-template/main-template.typ": *




Una vez que se ha construido una proposición a partir de otras respetando
las reglas sintácticas, veamos cómo determinar el valor que toma tal
proposición en función del valor que toma cada proposición componente. Las
leyes que se han presentado con anterioridad son tautologías y se emplean,
en la medida en que se pueda, para modificar y reducir una expresión antes
del estudio de verdad.





==== Validación mediante la tabla de verdad

Esta forma de validar consiste en construir la tabla de verdad de la
proposición, para lo cual se construye la tabla de cada una de las
proposiciones componentes de la proposición. También, para evitar cometer
errores, vamos creando también las tablas de verdad de partes de la
proposición compuesta. Este proceso es sencilllo. El número de casos que se
deben valorar depende del número de proposiciones simples que se emplean,
por lo que validar puede ser un proceso largo.

Ejemplo. La primera ley del condicional, que se presentó antes, tiene la
expresión

$ p arrow.r q arrow.l.r.double not p or q $

y se puede demostrar que es una ley porque su tabla de verdad es una
tautilogía, tal y como se muestra en la tabla siguiente.

#align(center)[
#table(columns: 6,
  table.header($p$, $q$, $not p$, $p arrow.r q$, $not p or q$,
    $(p arrow.r q) arrow.l.r (not p arrow.r q)$),
  $0$, $0$, $1$, $1$, $1$, $1$,
  $0$, $1$, $1$, $1$, $1$, $1$,
  $1$, $0$, $0$, $0$, $0$, $1$,
  $1$, $1$, $0$, $1$, $1$, $1$,
)]

#example[][
  La expresión lógica siguiente es conocida como la ley de resolución.

  $ [(not p or q) and (p or r)] arrow.r (q or r) $

  Es fácil comprobar que es una ley válida ya que es una tautología. Vea la
  tabla siguiente.

  #align(center)[
  #table(columns: 9,
    table.header($p$, $q$, $r$, $not p$, $p or r$, $q or r$, $not p or q$,
      $(not p or q) and (p or r)$, [resultado]),
    $0$, $0$, $0$, $1$, $0$, $0$, $1$, $0$, $1$,
    $0$, $0$, $1$, $1$, $1$, $1$, $1$, $1$, $1$,
    $0$, $1$, $0$, $1$, $0$, $1$, $1$, $0$, $1$,
    $0$, $1$, $1$, $1$, $1$, $1$, $1$, $1$, $1$,
    $1$, $0$, $0$, $0$, $1$, $0$, $0$, $0$, $1$,
    $1$, $0$, $1$, $0$, $1$, $1$, $0$, $0$, $1$,
    $1$, $1$, $0$, $0$, $1$, $1$, $1$, $1$, $1$,
    $1$, $1$, $1$, $0$, $1$, $1$, $1$, $1$, $1$,
  )]
]

Conforme aumenta el número de variables lógicas que aparecen en una
expresión, el número de filas de su tabla de verdad crece exponencialmente.
Así, se tienen, para una variable, 2 filas, para 2 variables, 4, para 3, 8,
etc. En general, para $n$ variables, se tienen $2^n$. Esto hace que, a
partir de cierto número de variables en una expresión, se hace inabarcable
comprobar si es una tautología dicha expresión mediante el análisis de su
tabla de verdad. Existe otro método de validación.





==== Validación mediante refutación

Esta forma de validar una expresión lógica consiste en aplicar la regla de
contradicción. Es decir, para demostrar la validez de una proposición, se
debe suponer que esta es falsa y, haciendo manipulaciones a su expresión,
tratar de llegar a una contradicción.

#example[][
  A la proposición

  $ (p arrow.r q) arrow.r [(q arrow.r r) arrow.r (p arrow.r r)] $

  se la conoce como la regla del silogismo. En la
  tabla~@tab:validacion_refutacion se muestran los pasos a seguir para
  demostrar que es una tautología mediante una validación por refutación.
  Los explicamos a continuación.

  #figure(
    align(center)[
    #table(
      columns: 4,
      align: (center,center,center,center),
      table.header(
        [Paso],
        $(p arrow.r q) arrow.r [(q arrow.r r) arrow.r (p arrow.r r)]$,
        [Comentarios],
        [Valor]
      ),
      table.hline(),
      [1], [$(p arrow.r q)$ es cierto], [Dado], [1],
      [2], [$(q arrow.r r) arrow.r (p arrow.r r)$ es falso], [Dado], [0],
      [3], [$q arrow.r r$ es cierto], [Deduce del paso 2], [1],
      [4], [$p arrow.r r$ es falso], [Deduce del paso 2], [0],
      [5], [$p$ es cierto], [Deduce del paso 4], [1],
      [6], [$q$ es cierto], [Deduce del paso 5], [1],
      [7], [$r$ es cierto y falso], [Contradicción], [--]
    )],
    caption: [Esquema de los pasos de validación por refutación],
    kind: table
  ) <tab:validacion_refutacion>

  Paso 1. Se supone que la proposición

  $ (p arrow.r q) arrow.r [(q arrow.r r) arrow.r (p arrow.r r)] $

  es falsa.

  Paso 2. Como un condicional solo es falso si el antecedente es cierto y el
  consecuente falso, se tiene que $p arrow.r q$ es cierto y $(q arrow.r r)
  arrow.r (p arrow.r r)$ falso.

  Paso 3. De la falsedad de $(q arrow.r r) arrow.r (p arrow.r r)$ se tiene
  que $q arrow.r r$ es cierto y que $p arrow.r r$ es falso, por la misma
  razón que antes.

  Paso 4. De la falsedad de $p arrow.r r$ se tiene que $p$ es cierto y $r$
  es falso, por la misma razón.

  Paso 5. Como $p arrow.r q$ es cierto por el paso 2 y $p$ es cierto por el
  4, se tiene que $q$ es cierto, puesto que de un antecedente cierto solo se
  puede obtener un consecuente cierto.

  Paso 6. Como $q arrow.r r$ es cierto por el paso 3 y $q$ es cierto por el
  5, se tiene que $r$ es cierto.

  Paso 7. La proposición $r$ es cierta por el paso 6 y falsa por el 4, con
  lo que hemos llegado a una contradicción.

  Por tanto, no queda otra que la proposición

  $ (p arrow.r q) arrow.r [(q arrow.r r) arrow.r (p arrow.r r)] $

  sea verdadera.
]




