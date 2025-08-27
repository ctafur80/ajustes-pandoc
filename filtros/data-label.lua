



-- Función auxiliar para comprobar si un elemento tiene una clase específica
function has_class(element, class_name)
    if not element.attr or not element.attr.classes then
        return false
    end
    for _, c in ipairs(element.attr.classes) do
        if c == class_name then
            return true
        end
    end
    return false
end




function Div(div)

  local sep = ".— "

  -- `proof` class.
  if has_class(div, "proof") then
      local title = "Demostración"
      local str_to_insert = pandoc.Strong(pandoc.Emph(pandoc.Str(title .. sep)))

      if div.content[1] then
          div.content[1].content:insert(1, str_to_insert)
      end
  end

  -- Adding the QED symbol (a square) at the end of the proof.
  if #div.content > 0 then
      local last_block = div.content[#div.content]
      if last_block.t == "Para" then
          local qed_symbol = pandoc.Span(pandoc.Str(" ◽"), {class = "qed"}) -- ■
          table.insert(last_block.content, qed_symbol)
      end

      -- TODO Hacerlo también si el último bloque es una ecuación o un elemento de una
      -- lista.
  end


  -- `data-label` attribute.
  local label = div.attr.attributes['data-label']
  if label and label ~= "" then
      local str_to_insert = pandoc.Strong({pandoc.Emph(pandoc.Str(label .. sep))})

      -- if div.content[1] and div.content[1].t == "Para" then
      if div.content[1] then
          div.content[1].content:insert(1, str_to_insert)
          div.attr.attributes['data-label'] = nil
      end
  end

  return div
end
