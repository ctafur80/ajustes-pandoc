
#import "../../../typst-maths-book-template/main-template.typ": *


En el ejemplo TKTK vimos el Principio de Inducción. Este proporciona un
método para establecer que un predicado $P_n$ en el que interviene una
variable $n in NN$ es verdadero para todo $n$. Es decir, si se quiere
demostrar que la proposición $forall n in NN. med P_n$ es verdadera, basta
comprobar los dos puntos siguientes:

- $P_0$ es verdadera.
- Si $P_n$ es verdadera, entonces $P_(n + 1)$ también lo es.

Como dijimos, la utilización de este principio permite también construir una
sucesión de elementos de un conjunto $A$ cuando se dispone de una manera
para formar el término $a_n$ en función de términos anteriores. Este tipo de
sucesiones se denominan _sucesiones recurrentes_.

#example[][
  La sucesión recurrente con mayor fama es la _sucesión de Fibonacci_, que
  recibe su nombre de TKTK. Es la siguiente:

  $ 0, 1, 1, 2, 3, 5, 8, 13, 21, dots.h $

  aunque quizás esta lista no le diga mucho. Cada término se construye al
  sumar los dos anteriores, y los términos $0$ y $1$ toman los valores $0$ y
  $1$ respectivamente.

  Otro caso particular de sucesión recurrente es la _progresión aritmética_
  de diferencia $d$. Su definición recurrente es

  $ x_n = x_(n - 1) + d $

  De esta definición recurrente podemos obtener su fórmula no recursiva:

  $ x_n = x_1 + d (n - 1) $

  Para determinar la sucesión hay que conocer el primer término, $x_1$.

  Otra, la _progresión geométrica_ de razón $r$. Su definición recurrente es

  $ x_n = r med x_(n - 1) $

  De la definición se deduce directamente que

  $ x_n = x_1 med r^(n - 1) $

  Al igual que con la aritmética, para determinar la sucesión hay que
  conocer el primer término, $x_1$.
]

Sea $a in NN$. En ocasiones hay que demostrar que una determinada propiedad
$P_n$, que no es verdadera para todo $n in NN$, sí lo es si $n gt.eq a$. En
este caso, se cambia el primer punto en la demostración por inducción,
teniendo que comprobar que la proposición $P_a$ es verdadera y, además,

$ forall n in NN " tal que " n gt.eq a. med (P_n arrow.r.double P_(n+1)) $

para concluir que la proposición $P_n$ es verdadera para $n gt.eq a$.

Lo anterior se aplica a menudo cuando se demuestran predicados donde la
variable se restringe a $NN^*$, porque por ejemplo la proposición $P_0$ no
tenga sentido. Se empieza pues probando que $P$ es verdadera para $n = 1$.

Ocurre a veces que, para establecer un predicado con variable en $NN$, el
suponer que $P_n$ es cierto no basta para demostrar la validez de $P_(n +
1)$. En cambio, sí se demuestra la validez de $P_(n + 1)$ si se supone
cierta $P_k$ para todo $k lt.eq n$. La conclusión es la misma. En este caso
la inducción se denomina *inducción completa* (_complete induction_) o
inducción _fuerte_ (_strong_).

- La proposición $P_0$ es verdadera.
- Para todo $n in NN$, si $P_k$ es verdadera para todo $k$ tal que $0 lt.eq
  k lt.eq n$, entonces $P_(n+1)$ es verdadera.

Entonces la proposición $P_n$ es verdadera para $n in NN$.




