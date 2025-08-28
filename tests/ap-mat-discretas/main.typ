

#import "@local/ctafur-notes:0.1.0": *





// Filling the `templ-book-typ` template data.
#show: templ.with(
  sheet: "tablet",
  lang: "es",
  title: [Apuntes de Matemáticas Discretas],
  authors: (
    (
      name: "Carlos E. Tafur Egido",
      affiliation: "Artos Institute",
      email: "tung@artos.edu",
    ),
    (
      name: "Eugene Deklan",
      affiliation: "Honduras State",
      email: "e.deklan@hstate.hn",
    ),
  ),
  abstract: lorem(80),
)





// TODO When I put it in templ-book file it doesn't make any effect.
// Updating the counters by sections
#show heading.where(level: 1): it => {
  // pagebreak()
  counter("proposition").update(0)
  counter("theorem").update(0)
  counter("example").update(0)
  counter("lemma").update(0)
  counter("corollary").update(0)
  counter("exercise").update(0)
  counter("axiom").update(0)
  counter("deffinition").update(0)
  it
}







// ----------------------------------------------------------------------------


#heading(level: 2, numbering: none)[Introducción]
#include("fuentes/introduccion.typ")

= Teoría de números elemental

  == Introducción
  #include("fuentes/teor-numeros/intro-teor-num.typ")

  == Números enteros
  #include("fuentes/teor-numeros/numeros-enteros.typ")

  == Divisibilidad

    === El operador "divide a..."
    #include("fuentes/teor-numeros/divisibilidad/operador-divide-a.typ")

    === División entera con resto
    #include("fuentes/teor-numeros/divisibilidad/div-en-z-resto.typ")

    === Máximo común divisor
    #include("fuentes/teor-numeros/divisibilidad/max-com-div.typ")




  /*
  == División entera

    === El operador "divide a..."
    #include("fuentes/teor-numeros/division-en-z/divide-a.typ")

    === División entera con resto
    #include("fuentes/teor-numeros/division-en-z/div-en-z-resto.typ")

    === Máximo común divisor
    #include("fuentes/teor-numeros/division-en-z/max-com-div.typ")

    === Algoritmo de Euclides
    #include("fuentes/teor-numeros/division-en-z/algo-euclides.typ")



*/







// #set par(justify: false)
// #bibliography("referencias.yaml", style: "chicago-author-date")
#bibliography("referencias.yaml")





