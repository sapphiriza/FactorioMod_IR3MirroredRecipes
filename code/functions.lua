---------------------------------------------------------------------------------------------------

local f = {}
local g = require("code.globals")
local locale = require("__rusty-locale__.locale")

function f.get_single_icons(icon)
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
	local recipe = table.deepcopy(data.raw.recipe[input.original])
	if recipe == nil then
		DIR.spam_log("Unable to find original recipe "..input.original.." for mirror "..input.mirror, DIR.log_level.error)
		return
	end
	recipe.name = input.mirror
	recipe.localised_name = { "", locale.of(recipe).name, " (mirrored)" }
	local icon = input.mirror
	if input.icon_name then
		icon = input.icon_name
	end
	recipe.icons = f.get_single_icons(icon)
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

	-- log("IR3:"..serpent.block(data.raw.recipe[input.original]))
	-- log("IR3MR:"..serpent.block(recipe))
	data:extend({recipe})
	return data.raw.recipe[input.mirror]
end

---------------------------------------------------------------------------------------------------

function f.add_mirror_to_technology(input)
	local name = input.original
	if input.technology then
		name = input.technology
	end
	DIR.add_unlock_to_tech(name, input.mirror, input.tech_index)
end

---------------------------------------------------------------------------------------------------

return f
