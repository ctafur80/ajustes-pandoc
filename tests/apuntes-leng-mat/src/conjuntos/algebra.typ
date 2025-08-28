
#import "../../typst-maths-book-template/main-template.typ": *



Todos los conjuntos que se consideran en este apartado son subconjuntos de
un conjunto $U$, es decir, tan solo se utilizan elementos del conjunto
$cal(P)(U)$. En la @tab-prop-algebra-conjuntos se comparan las propiedades
de la unión, la intersección y la complementación en $cal(P)(U)$, muchas de
las cuales ya han sido enunciadas. Paralelamente, escribiremos las leyes
lógicas correspondientes a las propiedades características o predicados que
definen los conjuntos por comprensión. Se puede pues razonar sobre los
subconjuntos de $U$ directamente o sobre las propiedades que los definen por
comprensión. En todo lo que sigue $A$, $B$ y $C$ son tres subconjuntos
cualesquiera de $U$ tales que

$ A &= {x in U | P_x},
  quad B &= {x in U | Q_x},
  quad C &= {x in U | R_x} $

#[#show figure: set block(breakable: true)
#figure(
  align(center)[
  #table(
    columns: 2,
    align: (center,center,center,center),
    table.header(
      [*Conjuntista*],
      [*Lógica*]
    ),
    table.hline(),
    table.cell(colspan: 2)[Reglas de idempotencia],
    [$ A union A  & = A \
       A inter A   & = A $],
    [$ P_x or P_x   & arrow.l.r.double P_x \
       P_x and P_x  & arrow.l.r.double P_x $],

    table.cell(colspan: 2)[Reglas conmutativas],
    [$ A union B  & = B union A \
       A inter B  & = B inter A $],
    [$ P_x or Q_x   & arrow.l.r.double Q_x or P_x \
       P_x and Q_x  & arrow.l.r.double Q_x and P_x $],

    table.cell(colspan: 2)[Reglas asociativas],
    [$ (A union B) union C  & = A union (B union C)\
       (A inter B) inter C  & = A inter (B inter C) $],
    [$ (P_x or Q_x) or R_x    & arrow.l.r.double P_x or (Q_x or R_x) \
       (P_x and Q_x) and R_x  & arrow.l.r.double P_x and (Q_x and R_x) $],

    table.cell(colspan: 2)[Reglas distributivas],
    [$ A union (B inter C)  & = (A union B) inter (A union C) \
       A inter (B union C)  & = (A inter B) union (A inter C) $],
    [$ P_x or (Q_x and R_x) & arrow.l.r.double (P_x or Q_x) and (P_x or R_x) \
       P_x and (Q_x or R_x) & arrow.l.r.double (P_x and Q_x) or (P_x and R_x) $],

    table.cell(colspan: 2)[Reglas de identidad],
    [$ A union emptyset & = A \
       A union U        & = U \
       A inter emptyset & = emptyset \
       A inter U        & = A $],
    [$ P_x or 0       & arrow.l.r.double P_x \
        P_x or bb(1)  & arrow.l.r.double bb(1) \
        P_x and bb(0) & arrow.l.r.double bb(0) \
        P_x and 1     & arrow.l.r.double P_x $],

    table.cell(colspan: 2)[Reglas del complementario],
    [$ A union dash(A)  & = U \
       A inter dash(A)  & = emptyset \
       dash(dash(A))    & = A \
       dash(U)          & = emptyset \
       dash(emptyset)   & = U $],

    [$ P_x or not P_x   & arrow.l.r.double bb(1) \
       P_x and not P_x  & arrow.l.r.double bb(0) \
       not (not P_x)    & arrow.l.r.double P_x \
       not bb(1)        & arrow.l.r.double bb(0) \
       not bb(0)        & arrow.l.r.double bb(1) $],

    table.cell(colspan: 2)[Reglas de De Morgan],
    [$ dash(A union B)    & = dash(A) inter dash(B) \
       dash(A inter B)    & = dash(A) union dash(B) $],
    [$ not (P_x or Q_x)   & arrow.l.r.double not P_x and not Q_x \
       not (P_x and Q_x)  & arrow.l.r.double not P_x or not Q_x $],
  )],
  caption: [Propiedades del álgebra de conjuntos],
  kind: table
) <tab-prop-algebra-conjuntos>
]

TKTK

/*
Esto mismo se podría ver comparándolos dos a dos:

$ A union A & = A\
A inter A & = A $
$ P_x or P_x & arrow.l.r.double P_x\
P_x and P_x & arrow.l.r.double P_x $
*/

#exercise[][
  Demuestre, utilizando las propiedades de la tabla anterior, que para todo
  $A, B in cal(P)(U)$, se cumple que $(A inter B) union (A inter
  overline(B)) = A$.

  $ (A inter B) union (A inter overline(B))
      = A inter (B union overline(B)) = A union U = A $
]




