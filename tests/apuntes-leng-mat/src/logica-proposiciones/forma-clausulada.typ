
#import "../../typst-maths-book-template/main-template.typ": *




Dada una proposición compesta por un conjunto de proposiciones simples $p$,
$q$, $r$, ..., se trata de encontrar una proposición equivalente a la
primera que esté escrita únicamente como conjunción ($and$) de proposiciones
disyuntivas ($or$) de literales. También, se admite que se tenga una sola
proposición TKTK.

Tal y como hemos explicado antes, a lo que nos referimos con _literal_ es a
una proposición simple, por ejemplo, $p$, o su negación, $not p$.

Un ejemplo de proposición en forma clausulada sería:

$ (p or not q) and (q or r) and (p or not r) $

Para una proposición dada, una proposición que sea equivalente a esta y esté
formada por conjunciones de disyunciones de literales se dice que es la
_forma clausulada_ de la primera. También se la llama su _forma normal
conjuntiva_.

Dentro de la expresión en forma clausulada, a las expresiones que hay entre
cada conjunción se las conoce como _cláusulas lógicas_.

Disponer de la forma clausulada de una proposición facilita saber si esta es
verdadera, ya que es condición suficiente para que la proposición sea falsa
que alguna de las cláusulas lógicas sea falsa, en su forma clausulada.

#example[][
  La primera ley del condicional,

  $ p arrow.r q arrow.l.r.double not p or q $

  establece la forma clausulada de un condicional. La forma clausulada de $p
  arrow.r q$ está formada unr una única cláusula: $not p or q$. No aparece
  la conjunción porque se trataría de una expresión en forma normal
  conjuntiva con una única cláusula.

  La segunda ley del condicional,

  $ p arrow.r q arrow.l.r.double not (p and not q) $

  no presenta una forma clausulada con dos cláusulas puesto que existe una
  negación que afecta a la conjunción.
]

#example[][
  La ley del bicondicional establede que $p arrow.l.r q$ se puede expresar
  como $(p arrow.r q) and (q arrow.r p)$.

  Al aplicar la primera ley del condicional a cada una de las expresiones
  entre paréntesis, se obtiene la forma clausulada de un bicondicional, que
  en este caso sería $(not p or q) and (not q or p)$; compuesta por dos
  cláusulas.
]





=== Pasos para obtener la forma clausulada

A continuación, establacemos los pasos recomendados para extraer la forma
clausulada de una proposición.

Paso 1. Sustitución de los conectores bicondicionales. Se transforma cada
bicondicional en una conjunción de bicondicionales. Concretamente, se
sustituye $p arrow.l.r q$ por $(p arrow.r q) and (q arrow.r p)$.

Paso 2. Sustitución de los conectores condicionales. Se utiliza la primera
ley del condicional. Concretamente, se sustituye $p arrow.r q$ por $not p or
q$.

Paso 3. Sustitución de los conectores que actúan sobre una proposición
conjunción o disyunción. Se utiliza la regla de De Morgan que corresponda
para transformar cada negación de una disyunción o conjunción de literales.
Es decir,

#align(center)[
#table(columns: 2, align: (center, center),
  table.header([*se sustituye...*], [*por...*]),
    table.hline(),
    $not (p and q)$, $not p or not q$,
    $not (p or q)$, $not p and not q$
)]

Paso 4. Utilización de las leyes distributivas, asociativas y conmutativas
para generar las cláusulas y, por tanto, la forma clausulada.

#example[][
  Determine la forma clausulada de la proposición

  $ p arrow.r (p and q) $

  Hagamos algunas transformaciones:

  Si se fija, la forma clausulada es la misma que la de $p arrow.r q$. Por
  lo tanto se tendrá que

  $ p arrow.r (p and q) arrow.l.r.double p arrow.r q $
]

Comprobación de una tautología mediante la forma clausulada.

Construyamos paso a paso la forma clausulada de la proposición

$ [(p arrow.r q) and (q arrow.r r)] arrow.r (p arrow.r r) $

Será como sigue:

Tabla de verdad mediante la forma clausulada. La forma clausulada de la
proposición

$ [(p arrow.r q) and (not p arrow.r r)] arrow.r (q arrow.r r) $

que designaremos de forma abreviada como $f$, es la proposición $not q or
not p or r$. Veamos cómo se deduce.

Paso 1. Quitar condicionales.

$ & not [(p arrow.r q) and (not p arrow.r r)] or (q arrow.r r)\
 & not [not (p or q) and (not not p or r)] or (not q or r)\
 & not [not (p or q) and (p or r)] or (not q or r)\
 $

Paso 2. Quitar negaciones de proposiciones compuestas, haciendo uso de las
Leyes de De Morgan.

$  & [not (not p or q) or not (p or r)] or (not q or r)\
 & [(not not p or not q) or (not p and not r)] or (not q or r)\
 & [(p and not q) or (not p and not r)] or (not q or r)\
 $

Paso 3. Aplicar las leyes distributiva, asociativa y conmutativa.

$  & [(p and not q) or (not p and not r)] or (not q or r)\
 & { [(p and not q) or not p] and [(p and not q) or not r] } or (not q or r)\
 & { [(p or not p) and (not q or not p)] and [(p or not r) and (not q or not r)] } or (not q or r)\
 & { [1 and (not q or not p)] and [(p or not r) and (not q or not r)] } or (not q or r)\
 & [(not q or not p) and (p or not r) and (not q or not r)] or (not q or r)\
 & [(not q or not p) or (not q or r)] and [(p or not r) or (not q or r)] and [(not q or not r) or (not q or r)]\
 & (not q or not p or not q or r) and (p or not r or not q or r) and (not q or not r or not q or r)\
 & (not q or not p or r) and (p or not q or not r or r) and (not q or not r or r)\
 & (not q or not p or r) and (p or not q or 1) and (not q or 1)\
 & not q or not p or r\
 $

Se puede comprobar que las tablas de verdad que se obtienen son iguales, en
// cualquiera de las expresiones: la original, tabla~@tbl:ej-clausulada-1, y la
// clausulada, tabla~@tbl:ej-clausulada-2. Se trata, por tanto, de
proposiciones equivalentes. Evidentemente, es más fácil construir la tabla
de verdad de la expresión en forma clausulada.

#align(center)[
#table(columns: 9,
  $p$, $q$, $r$, $not p$, $p arrow.r q$, $not p arrow.r r$, $q arrow.r r$,
    $(p arrow.r q) arrow.r (not p arrow.r r)$, $f$,
  $0$, $0$, $0$, $1$, $1$, $0$, $1$, $0$, $1$,
  $0$, $0$, $1$, $1$, $1$, $1$, $1$, $1$, $1$,
  $0$, $1$, $0$, $1$, $1$, $0$, $0$, $0$, $1$,
  $0$, $1$, $1$, $1$, $1$, $1$, $1$, $1$, $1$,
  $1$, $0$, $0$, $0$, $0$, $1$, $1$, $0$, $1$,
  $1$, $0$, $1$, $0$, $0$, $1$, $1$, $0$, $1$,
  $1$, $1$, $0$, $0$, $1$, $1$, $0$, $1$, $0$,
  $1$, $1$, $1$, $0$, $1$, $1$, $1$, $1$, $1$
)]

#align(center)[
#table(columns: 6,
  table.header($p$, $q$, $r$, $not p$, $not q$, $not p or not q or r$),
  table.hline(),
  $0$, $0$, $0$, $1$, $1$, $1$,
  $0$, $0$, $1$, $1$, $1$, $1$,
  $0$, $1$, $0$, $1$, $0$, $1$,
  $0$, $1$, $1$, $1$, $0$, $1$,
  $1$, $0$, $0$, $0$, $1$, $1$,
  $1$, $0$, $1$, $0$, $1$, $1$,
  $1$, $1$, $0$, $0$, $0$, $0$,
  $1$, $1$, $1$, $0$, $0$, $1$
)]





