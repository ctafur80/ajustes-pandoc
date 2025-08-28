
En lógica (particularmente en *lógica matemática* o en el estudio de
*lenguajes formales*), aunque a veces se usan casi como sinónimos, hay una
diferencia técnica entre *fórmula* y *expresión*:



=== 1. Expresión (_expression_)

- Es un término *más general*.
- Una *expresión* es cualquier cadena de símbolos bien formada de acuerdo
  con las reglas sintácticas del lenguaje.
- Puede ser:

  - Un *término* (por ejemplo, $f(x,y)$, $x+3$).
  - Una *fórmula* (por ejemplo, $P(x)$, $forall x (P(x) arrow.r Q(x))$).
  - Un conector o combinación que todavía no sea una proposición completa.

- Es decir, toda *fórmula* es una *expresión*, pero no toda expresión es una fórmula.



=== 2. Fórmula (_formula_)

- Es un caso particular de *expresión*.
- Una *fórmula* es una expresión que *puede ser evaluada como verdadera o
  falsa* en una interpretación dada (en lógica de primer orden, en un modelo).
- Ejemplos de fórmulas:

  - $P(a)$
  - $forall x (P(x) arrow.r Q(x))$
  - $x > 3$

- Ejemplos de expresiones que *no* son fórmulas:

  - Un término: $f(x,y)$
  - Una variable sola: $x$




