---------------------------------------------------------------------------------------------------

local f = require("code.functions")
local g = require("code.globals")

for _,recipe in pairs(g.recipes) do
	f.create_mirror_recipe(recipe)
	f.add_mirror_to_technology(recipe)
end

---------------------------------------------------------------------------------------------------
