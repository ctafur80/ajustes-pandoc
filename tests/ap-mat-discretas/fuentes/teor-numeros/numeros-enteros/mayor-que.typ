


#block[
  Dados $a, b in bb(Z)$, diremos que $b$ $a$, y lo expresamos como $b > a$,
  si existe un $d in bb(N)$ siendo $d > 0$ que hace que se cumpla $b = a +
  d$.
] <def-op-mayor-que>

O, lo que es lo mismo, ya que ya sabemos qué es la resta, si $b - a in
bb(N)^+$.

Existe también la operación opuesta, llamada "menor que", que se representa
con el símbolo '\<'. Es decir, $a < b$ es lo mismo que $b > a$.

#block[
  Dados $a, b in bb(N)$, diremos que $b$ $a$, y lo escribiremos como $b
  gt.eq a$, si $b > a$ o $b = a$.
] <def-op-mayor-o-igual>

Se podría dar otra definición alternativa. Dados $a, b in bb(N)$, diremos
que $b$ es mayor o igual que $a$, y lo expresamos como $b gt.eq a$, si
existe un $d in bb(N)$ tal que se cumpla $b = a + d$ o, lo que es lo mismo,
$d = b - a$. O, dicho de otra forma, si $b - a in bb(N)$.

Análogamente al operador '$>$', se tiene el operador opuesto a '$gt.eq$',
que se representará por el símbolo '$lt.eq$' y se puede definir diciendo que
las expresiones $a gt.eq b$ y $b lt.eq a$ representan lo mismo.

A veces, cuando se indica algo como $a > b$, si se desea resaltar que no se
trata de $a gt.eq b$, se dice que $a$ $b$. Existen otras expresiones
similares, como, por ejemplo, que $a$ que $b$.

Como quizás sepa de sus conocimientos de álgebra, estos los operadores
'$lt.eq$' y '$gt.eq$' indican, cada uno, para los números enteros $bb(Z)$,
una relación binaria de orden; concretamente, un orden total. Sin embargo,
esto mismo no se puede decir para sus versiones estrictas, ya que en estas
no se cumple, por ejemplo, la propiedad reflexiva. La forma que tienen es de
operadores infijos, aunque podrían aparecer con otras notaciones; por
ejemplo, como función. Se me ocurre la notación '$gt.eq (a, b)$'.

#exercise()[
  Demuestre que, dado un $a in bb(Z)$, si $a < 0$ entonces $-a > 0$.

  $ a     &< 0 \
    a - a &< 0 - a = 0 + (-a) = -a \
    0     &< - a $

  Las operaciones algebraicas que se pueden hacer con las inecuaciones
  tienen algunas sutilezas, pero en la estructura algebraica que nos
  moveremos no suele tenerlas TKTK.
]



