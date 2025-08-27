


= Capítulo 1



== Introducción

Algo que conviene hacer en esta asignatura es siempre dibujar la situación.
Aunque se trate de un caso particular y, por tanto, no sirva como
demostración ni como resolución de un ejercicio,#footnote[Esto es solo una
nota a pie de página.] dibujar la situación que se nos presenta nos saca en
muchas ocasiones de la ofuscación en la que nos encontramos.

+ Uno

  + otro
  + otro más

+ Dos

+ Tres

Esto es solo una prueba.

```python
def funcion():
  print("Hola, mundo!!!")
```

$ integral_0^t t^2 med d t $

Así se ve que...

#table(
  columns: 4,
  [uno], [Exam 1], [Exam 2], [Exam 3],

  [John], [dos], $a$, [cuatro],
  [Mary], [tres], $a$, $a$,
  [Robert], $b$, $a$, $b$,
)

#block[
  Dado un conjunto $bold(P)$ no vacío, una _métrica_ o _distancia_ es toda
  aplicación $d: bold(P) times bold(P) arrow.r.long bb(R)^+ union {0}$ en la
  que para cualesquiera $x, y, z in bold(P)$ se cumple:

  + $d (x, y) = 0$ si y solo si $x = y$.
  + $d (x, y) = d (y, x)$. (Simetría.)
  + $d (x, y) lt.eq d(x, z) + d(z, y)$. (Desigualdad triangular.)
] <def-metrica>

Esto es lo que se explica en la @def-metrica cuando se ve que...

En cuanto a la notación, se podría usar también la notación usual para la
restricción de una aplicación, que en este caso sería algo como $delta |_(M'
times M')$, para $M' subset.eq M$.

La nueva función se comporta del mismo modo que la vieja, solo que en un
dominio más restringido.

$ delta : && M times M & arrow.r.long     && bb(R) \
          && (x, y)    & arrow.r.bar.long && delta (x, y) $

mientras que

$ delta |_(M' times M') :
    && M' times M' & arrow.r.long
      && bb(R) \
    && (x, y)      & arrow.r.bar.long
      && delta |_(M' times M') (x, y) = delta (x, y) $

En la demostración de este teorema, creo que, por hacerla más completa,
quizás se debería comentar también que que ninguna de las propiedades de la
definición de _métrica_ es del tipo _closure_.






