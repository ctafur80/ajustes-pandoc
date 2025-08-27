
-- TODO Hacer locales las variables.


local envs_data = {
    proof = {
        title = "Demostración",
        sep = ".— ",
        last_symbol = " ▢", -- Alt. ■ o ◽
    },

    definition = {
        title = "Definición",
        sep = ".— ",
        last_symbol = nil,
    },

    axiom = {
        title = "Axioma",
        sep = ".— ",
        last_symbol = nil,
    },

    theorem = {
        title = "Teorema",
        sep = ".— ",
        last_symbol = nil,
    },

    proposition = {
        title = "Proposición",
        sep = ".— ",
        last_symbol = nil,
    },

    lemma = {
        title = "Lema",
        sep = ".— ",
        last_symbol = nil,
    },

    corollary = {
        title = "Corolario",
        sep = ".— ",
        last_symbol = nil,
    },

    exercise = {
        title = "Ejercicio",
        sep = ".— ",
        last_symbol = " △", -- Alt. ◀
    },

    example = {
        title = "Ejemplo",
        sep = ".— ",
        last_symbol = " △", -- Alt. ◀
    },
}






-- Accesory funtion. Checks if an element has some class.
local function has_class(element, class_name)
    if not element.attr or not element.attr.classes then
        return false
    end
    for _, c in pairs(element.attr.classes) do
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
    for div_classes, _ in pairs(div.attr.classes) do
        for math_classes, v in pairs(math_env_data) do
            if div_classes == math_classes then
                num_of_env_classses = num_of_env_classses + 1
            end
        end
    end

    assert(num_of_env_classses > 1, "ERROR. There should not be math environments with more than one TKTK.")
    --]]


    for env_key, env_data in pairs(envs_data) do
        if has_class(div, env_key) then

            -- Preparation for the initial text.
            local prev_string = env_data.title
            local label = div.attr.attributes["data-label"]

            if label and label ~= "" then
                prev_string = prev_string .. " (" .. label .. ")" .. env_data.sep
                div.attr.attributes["data-label"] = nil -- Avoid duplications.
            else
                prev_string = prev_string .. env_data.sep
            end

            -- Transforms string to formatted Pandoc (AST) text.
            local formatted_prev_str = pandoc.Strong(pandoc.Emph(pandoc.Str(prev_string)))


            -- Inserts the initial text.
            -- TODO Maybe check also `div.content[1].t == "Para"`.
            if div.content[1] then
                div.content[1].content:insert(1, formatted_prev_str)
            end


            -- Readying and inserting the last symbol.
            local post_string = env_data.last_symbol
            if post_string and post_string ~= "" then
                if #div.content > 0 then
                    local last_block = div.content[#div.content]
                    local formatted_post_str = pandoc.Span(pandoc.Str(post_string), {class = "env-last-symbol"})
                    table.insert(last_block.content, formatted_post_str)
                end
            end

            -- Se encontró una clase de entorno y se procesó, podemos salir del bucle.
            break
        end
    end


    return div
end




