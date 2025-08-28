


Dada una relación homogénea $cal(R) subset.eq U times U$, definimos las
propiedades siguientes:

1. Propiedad. Reflexiva. Cuando

   $ forall x in U. med x cal(R) x $

   Dicho de otra forma, si

   $ {(x, x) | x in U} subset.eq cal(R) $

2. Propiedad. Simétrica. Cuando

   $ forall x, y in U. " Si " x cal(R) y, " entonces " y cal(R) x $

   Se puede definir también como

   $ cal(R)^(-1) subset.eq cal(R) $

   La justificación de este hecho se podría deducir de la definición
   anterior. Además de esa expresión, sería evidente que para cualquier $(x,
   y) in cal(R)$ se tiene que $(y, x) in cal(R)^(-1)$. Así, uniendo ambas,
   se tiene

   $ cal(R)^(-1) subset.eq cal(R) $

   No lo tengo del todo claro. Quizás esto requeriría que se diera la
   propiedad transitiva. TKTK. ¿No sería al revés? $cal(R) subset.eq
   cal(R)^(-1)$.

3. Propiedad. Antisimétrica. Cuando

   $ forall x, y in U " Si " x cal(R) y " e " y cal(R) x, " entonces " x = y
   $

   Dicho de otro modo,

   $ cal(R)^(1) inter cal(R) subset.eq {(x, x) | x in U} $

4. Propiedad. Transitiva. Cuando

   $ forall x, y, z in U " se cumple que, si " x cal(R) y " e " y cal(R) z,
   " entonces " x cal(R) z $

   También se puede definir del modo siguiente

   $ cal(R) compose cal(R) subset.eq cal(R) $

Advierta que, aunque diga "cuando" o "si", para estas definiciones, en
realidad sería "si y solo si". En estos casos tampoco hay que ser tan exacto
en el lenguaje, pues sería un engorro TKTK. Se sobrentiende que en las
definiciones se está usando en realidad una bicondicional, aunque no se haga
realmente.

En realidad, se podría haber definido sobre relaciones en el sentido amplio,
es decir, no solo sobre las homogéneas, pero tampoco nos interesa en esta
asignatura. Ya que nos centramos en las homogéneas, vamos a definir más
adelante otros términos centrándonos en estas.

Observaciones. La relación del ejemplo TKTK no es reflexiva. Para que una
relación en $RR$ sea reflexiva, la representación del grafo de la relación
debe contener a la diagonal, $y = x$.

La relación del ejemplo TKTK es simétrica, pero no la relación del
ejemplo TKTK. Para que una relación en $cal(R)$ sea simétrica, la
representación del grafo de la relación debe ser simétrica respecto a la
recta diagonal del primer cuadrante.



