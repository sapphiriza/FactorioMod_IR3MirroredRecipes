---------------------------------------------------------------------------------------------------

local f = {}
local g = require("code.globals")

local function get_single_icons(icon)
	return {
		{
			icon = DIR.get_icon_path(icon, DIR.icon_size, g.icon_path),
			icon_size = DIR.icon_size,
			icon_mipmaps = DIR.icon_mipmaps
		}
	}
end

---------------------------------------------------------------------------------------------------

function f.create_mirror_recipe(input)
	if not data.raw.recipe[input.original_name] then error("IR3 Mirrored Recipes: no such recipe as "..input.original_name) end
	local recipe = table.deepcopy(data.raw.recipe[input.original_name])
	recipe.name = input.mirror_name
    recipe.localised_name = { "recipe-name."..input.mirror_name }
	local icon = input.mirror_name
	if input.icon_name then
		icon = input.icon_name
	end
	recipe.icons = get_single_icons(icon)
	recipe.order = recipe.order.."m"

	-- mirror ingredients
	local num = #recipe.ingredients
	local half = math.floor((num - 1) / 2)
	for i=0,half do
		local temp = recipe.ingredients[i+1]
		recipe.ingredients[i+1] = recipe.ingredients[num-i]
		recipe.ingredients[num-i] = temp
	end

	-- mirror results
	local num = #recipe.results
	local half = math.floor((num - 1) / 2)
	for i=0,half do
		local temp = recipe.results[i+1]
		recipe.results[i+1] = recipe.results[num-i]
		recipe.results[num-i] = temp
	end

	-- log("IR3:"..serpent.block(data.raw.recipe[input.original_name]))
	-- log("IR3MR:"..serpent.block(recipe))
	data:extend({recipe})
	return data.raw.recipe[input.mirror_name]
end

---------------------------------------------------------------------------------------------------

function f.add_mirror_to_technology(input)
	local name = input.original_name
	if input.technology then
		name = input.technology
	end
	if not data.raw.technology[name] then error("IR3 MIrrored Recipes: no such recipe as "..name) end
	DIR.add_unlock_to_tech(name, input.mirror_name, input.tech_index)
end

---------------------------------------------------------------------------------------------------

return f
