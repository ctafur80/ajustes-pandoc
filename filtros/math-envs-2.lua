

-- Filter for math-notes documents. It allows the use of web enviromnents (like in LaTeX)
-- and the use of automatic titles in references (kind of as with `nameref` LaTeX package).




-- Math environments data
local envs_data = {
    proof = {
        title = "Demostración",
        sep = ".— ",
        last_symbol = " ▢",
    },
    definition = {
        title = "Definición",
        sep = ".--- ",
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
        last_symbol = " △",
    },
    example = {
        title = "Ejemplo",
        sep = ".— ",
        last_symbol = " △",
    },
}


-- Stores references of IDs in the whole document.
local references = {}




-- Helping function for checking if an element has a class
function has_class(element, class_name)
    -- TODO Maybe the first condition in test is not neccesary.
    if not element.attr or not element.attr.classes then return false end
    for _, c in ipairs(element.attr.classes) do
        if c == class_name then return true end
    end
    return false
end





-- Scan 1. Write environment title and collect cross references
-- ----------------------------------------------------------------------------------------
local DivProcessor = {
    Div = function(div)

        local num_of_math_envs = 0

        for env_key, env_data in pairs(envs_data) do
            if has_class(div, env_key) then

                -- Checkings
                num_of_math_envs = num_of_math_envs + 1
                assert(num_of_math_envs <= 1, "Error. There is a div element with more than one math environment classes.")

                -- Simpler names in this function scope.
                local title_text = env_data.title
                local title_sep = env_data.sep
                local label = div.attr.attributes["data-label"]


                -- Text to insert in cross reference
                local ref_text = env_data.title

                -- TODO Quizás es demasiado enrevesado y no se necesite la tabla `references`.
                -- Collecting cross references (if the div element has an ID)
                local id = div.attr.identifier
                if id and id ~= "" then
                    references["#" .. id] = { pandoc.Str(ref_text) }
                end


                -- Writes title and data-label at the beginning of first paragraph in
                -- enviroment.
                if div.content[1] then
                    -- Build the title's inline content
                    local title_inlines = { pandoc.Str(title_text) }
                    if label and label ~= "" then
                        title_inlines:insert(pandoc.Str(" ("))
                        local formatted_label = pandoc.read(label, "markdown").blocks[1]
                        -- Insert the content of the label, not the block itself
                        for _, inline in ipairs(formatted_label.content) do
                            title_inlines:insert(inline)
                        end
                        title_inlines:insert(pandoc.Str(")"))
                    end
                    title_inlines:insert(pandoc.Str(title_sep))

                    if div.content[1].t == "Para" then
                        -- Case 1: The first block is a paragraph. Prepend the title to it.
                        local formatted_title = pandoc.Strong(pandoc.Emph(title_inlines))
                        div.content[1].content:insert(1, formatted_title)
                        div.content[1].content:insert(2, pandoc.Space()) -- Add a space after the title
                    else
                        -- Case 2: The first block is not a paragraph. Insert a new title paragraph.
                        local formatted_title = pandoc.Strong(pandoc.Emph(title_inlines))
                        local title_paragraph = pandoc.Para({ formatted_title })
                        table.insert(div.content, 1, title_paragraph)
                    end

                    -- Delete the label for avoiding duplications.
                    div.attr.attributes["data-label"] = nil
                end


                -- Write environment final symbol.
                local end_symbol = env_data.last_symbol
                if end_symbol and end_symbol ~= "" then
                    if #div.content > 0 and div.content[#div.content].t == "Para" then
                        local last_block = div.content[#div.content]
                        local formatted_symbol = pandoc.Span(pandoc.Str(end_symbol), {class = "env-last-symbol"})
                        table.insert(last_block.content, formatted_symbol)
                    end
                end

            end
        end

        return div
    end
}





-- Scan 2. Replace empty links with collected text
-- ----------------------------------------------------------------------------------------
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





