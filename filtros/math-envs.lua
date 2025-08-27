


-- Fichero de filtro unificado para entornos matemáticos y referencias.

-- Tabla global para almacenar las referencias encontradas en la Pasada 1.
local references = {}

-- Datos de configuración para cada tipo de entorno.
local envs_data = {
    definition = { title = "Definición", sep = ".— ", last_symbol = "" },
    proof = { title = "Demostración", sep = ".— ", last_symbol = " ■" },
    axiom = { title = "Axioma", sep = ".— ", last_symbol = "" },
    theorem = { title = "Teorema", sep = ".— ", last_symbol = "" },
    proposition = { title = "Proposición", sep = ".— ", last_symbol = "" },
    lemma = { title = "Lema", sep = ".— ", last_symbol = "" },
    corollary = { title = "Corolario", sep = ".— ", last_symbol = "" },
    exercise = { title = "Ejercicio", sep = ".— ", last_symbol = "◀" },
    example = { title = "Ejemplo", sep = ".— ", last_symbol = "◀" },
}

-- Función auxiliar para comprobar si un elemento tiene una clase específica.
function has_class(element, class_name)
  if not element.attr or not element.attr.classes then return false end
  for _, c in ipairs(element.attr.classes) do
    if c == class_name then return true end
  end
  return false
end


-- =============================================================================
-- PASADA 1: Modificar Divs y Recopilar Referencias
-- =============================================================================
local DivProcessor = {
  Div = function(div)
    for env_key, env_data in pairs(envs_data) do
      if has_class(div, env_key) then

        -- 1. PREPARAR TEXTOS
        local title_text = env_data.title
        local ref_text = env_data.title -- El texto para la referencia no lleva separador.
        local label = div.attr.attributes["data-label"]

        if label and label ~= "" then
          title_text = title_text .. " (" .. label .. ")" .. env_data.sep
          ref_text = ref_text .. " (" .. label .. ")"
        else
          title_text = title_text .. env_data.sep
        end

        -- 2. RECOPILAR REFERENCIA (si el div tiene ID)
        local id = div.attr.identifier
        if id and id ~= "" then
          references["#" .. id] = {pandoc.Str(ref_text)}
        end

        -- 3. INSERTAR TÍTULO
        if div.content[1] and div.content[1].t == "Para" then
          local formatted_title = pandoc.Strong(pandoc.Emph(pandoc.Str(title_text)))
          div.content[1].content:insert(1, formatted_title)
          div.attr.attributes["data-label"] = nil -- Borrar para no duplicar
        end

        -- 4. INSERTAR SÍMBOLO FINAL
        local end_symbol = env_data.last_symbol
        if end_symbol and end_symbol ~= "" then
          if #div.content > 0 and div.content[#div.content].t == "Para" then
            local last_block = div.content[#div.content]
            local formatted_symbol = pandoc.Span(pandoc.Str(end_symbol), {class = "qed"})
            table.insert(last_block.content, formatted_symbol)
          end
        end

        break -- Entorno procesado, salir del bucle.
      end
    end
    return div
  end
}

-- =============================================================================
-- PASADA 2: Reemplazar los enlaces vacíos con el texto recopilado.
-- =============================================================================
local LinkResolver = {
  Link = function(link)
    if #link.content == 0 and link.target:match("^#") then
      local ref_content = references[link.target]
      if ref_content then
        link.content = ref_content
      end
    end
    return link
  end
}

-- El filtro devuelve una lista de "pasadas". Pandoc las ejecutará en orden.
return {
  DivProcessor,
  LinkResolver
}
