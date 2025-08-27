
-- TODO Hacer locales las variables.


envs_data = {
    proof = {
        title = "Demostración",
        sep = ".— ",
        last_symbol = " ◽", -- Alt. ■
    },

    axiom = {
        title = "Axioma",
        sep = ".— ",
        last_symbol = "", -- TODO nil instead of ""?
    },

    theorem = {
        title = "Teorema",
        sep = ".— ",
        last_symbol = "",
    },

    proposition = {
        title = "Proposición",
        sep = ".— ",
        last_symbol = "",
    },

    lemma = {
        title = "Lema",
        sep = ".— ",
        last_symbol = "",
    },

    corollary = {
        title = "Corolario",
        sep = ".— ",
        last_symbol = "",
    },

    exercise = {
        title = "Ejercicio",
        sep = ".— ",
        last_symbol = "◀",
    },

    example = {
        title = "Ejemplo",
        sep = ".— ",
        last_symbol = "◀",
    },
}






-- Accesory funtion. Checks if an element has some class.
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




-- Filter to every `div` elements.
function Div(div)

    --[[
    -- TODO Quizás, integrarlo en el siguiente.
    -- Asserts that there are no `div` elements with more than one `env_classes`.
    local num_of_env_classses = 0
    for div_classes, _ in ipairs(div.attr.classes) do
        for math_classes, v in ipairs(math_env_data) do
            if div_classes == math_classes then
                num_of_env_classses = num_of_env_classses + 1
            end
        end
    end

    assert(num_of_env_classses > 1, "ERROR. There should not be math environments with more than one TKTK.")
    --]]



    for cl, _ in ipairs(envs_data) do
        if has_class(div, cl) then

            local prev_string = cl.title
            -- formatted in Pandoc's native format (AST).
            local formatted_prev_str = ""

            local post_string = cl.last_symbol
            local formatted_post_str = ""


            -- TODO Revisar los condicionales de este if y el siguiente. Tengo que pensar en
            -- el comportamiento. Además, ¿qué sucede si termina en un display math o un
            -- elemento de una lista?

            -- Behaviour depends on the `data-label` attribute.
            local label = div.attr.attributes["data-label"]
            if label and label ~= "" then

                -- TODO El original también comprobaba div.content[1].t == "Para".
                if div.content[1] then
                    prev_string = prev_string .. "(" .. label .. ")" .. cl.sep
                    formatted_prev_str = pandoc.Strong(pandoc.Emph(pandoc.Str(prev_string)))
                    div.content[1].content:insert(1, formatted_prev_str)
                    div.attr.attributes["data-label"] = nil
                end
            else
                if div.content[1] then
                    prev_string = prev_string .. cl.sep
                    formatted_prev_str = pandoc.Strong(pandoc.Emph(pandoc.Str(prev_string)))
                    div.content[1].content:insert(1, prev_string)
                end
            end

            if #div.content > 0 then
                local last_block = div.content[#div.content]
                formatted_post_str = pandoc.Span(pandoc.Str(prev_string), {class = "env-last-symbol"})
                table.insert(last_block.content, formatted_post_str)
            end

        end
    end




    return div
end




