function Div(div)
  local label = div.attr.attributes['data-label']
  if label and label ~= "" then
    -- Crea el elemento en negrita e itálica, añadiendo dos puntos y un espacio
    local new_inline = pandoc.Strong({pandoc.Emph(pandoc.Str(label .. ": "))})

    -- Comprueba si hay contenido y si el primer bloque es un párrafo
    if div.content[1] and div.content[1].t == "Para" then
      -- Inserta el nuevo elemento inline al principio del contenido del párrafo
      div.content[1].content:insert(1, new_inline)

      -- Elimina el atributo para que no se renderice
      div.attr.attributes['data-label'] = nil
    end
  end
  return div
end