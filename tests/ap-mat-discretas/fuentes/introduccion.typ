
#import "@local/ctafur-notes:0.1.0": *



Esta asignatura consta de tres partes, cada una de las cuales se podría
estudiar en mayor profundidad en una asignatura propia. Estas son teoría de
números, teoría de grafos y combinatoria. Evidentemente, todas y cada una de
estas se engloban en las matemáticas discretas, es decir, las matemáticas de
los conjuntos numerables. TKTK.

/*
Es una asignatura que, aunque los tutores dicen que no es difícil, creo que
al principio sí que cuesta, pues se ven muchas demostraciones y hay partes
complicadas; principalmente, en la parte de teoría de números. Al menos, a
la vista de los ejercicios, algunos parecen difíciles.
*/

El libro de texto que se sigue en la asignatura es @bujalance-costa, creado
por profesores de la UNED. Me parece un libro que presenta los contenidos de
un modo demasiado directo, y, por tanto, poco pedagógico. Además, han puesto
poco cuidado en la tipografía; no parece que esté hecho en TeX o algo
similar.

Se ve que está muy inspirado en @burton, un clásico de la teoría de números
muy antiguo, aunque se ha seguido editando. Si se puede hacer con este
último, puede ayudarle en su estudio, aunque también lo veo demasiado
directo. También es más extenso que @bujalance-costa y presenta en mayor
detalle muchos resultados útiles para manejarse en esta materia.

Aunque algunos contenidos estén en otro orden, todo el contenido sobre
teoría de números de @bujalance-costa se encuentra también en @burton.

Otro libro que puede servir para toda la parte de la teoría de números es
@rosen-number-th, que es algo más moderno que @burton y, personalmente, me
gusta más. Es el que estoy usando yo como complemento del libro oficial. Por
cierto, no lo confunda con el libro _Discrete Mathematics_ del mismo autor,
Kenneth H. Rosen. El principal problema que le encuentro a @rosen-number-th
es que parece que trata de usar lo menos posible la simbología matemática.

Al ser, tanto @burton como @rosen-number-th, textos muy populares de la
teoría de números, puede encontrar por la web las soluciones a sus
ejercicios y problemas. Por ejemplo,
#link("http://www.americanriver.com/mathematics/elementary_number_theory.html")[esta]
para @burton. En @rosen-number-th vienen las soluciones a los ejercicios
pares al final. También, existe un libro de soluciones, en el que se dan las
de todos los planteados.

Otra referencia que me parece interesante es @weissman, que es bastante más
moderna que las otras dos mencionadas. Esta incorpora algunas innovaciones
que me parecen interesantes. Otro punto fuerte de este es el gran cuidado de
las figuras que incluye.

Otro libro sobre teoría de números que creo que se considera un clásico es
@theory-of-numbers-niven, pero es difícil de encontrar actualmente. Creo que
es algo más avanzado que los otros mencionados aquí. Además, creo que es
difícil de encontrar actualmente.

En lo que respecta a la parte de la teoría de grafos, TKTK.

En lo que respecta a la parte de combinatoria, está muy bien @brualdi. TKTK.






Algo que también desearía explicar es que es común en matemáticas usar el
condicional en muchas definiciones o resultados de cualquier tipo cuando en
realidad se debería usar el bicondicional. Así, por ejemplo, la definición
del operador "divide a..." que se da en @bujalance-costa[p. 3] es la
siguiente:

#definition(title: "Operador \"Divide a...\" (mal)")[
  Dados $a, b in bb(Z)$, si $a eq.not 0$ y $b = a dot.op q$ para algún $q in
  bb(Z)$, diremos que $a$ divide a $b$.
]

Si se fija, esa proposición hace uso del condicional. Entonces, supongamos
que no se da el antecedente. En ese caso, el consecuente será cierto, pero
no es eso lo que deseábamos expresar. En realidad, la definición debería
hacer uso del bicondicional. Podría ser algo como lo siguiente:

#definition(title: "Operador \"Divide a...\" (bien)")[
  Dados $a, b in bb(Z)$ tales que $a eq.not 0$, diremos que $a$ divide a $b$
  si y solo si $b = a dot.op q$ para algún $q in bb(Z)$.
]








