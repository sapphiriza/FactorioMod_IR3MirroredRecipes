---------------------------------------------------------------------------------------------------

local f = require("code.functions")
local g = require("code.globals")

for _,recipe in pairs(g.recipes) do
	f.create_mirror_recipe(recipe)
end

-- Fixup icons for special recipes
DIR.add_icons_to_recipe(
    data.raw.recipe["ir3mr-ethanol"],
    {{icon = DIR.get_icon_path("wood-chips"), icon_size = DIR.icon_size, icon_mipmaps = DIR.icon_mipmaps}},
    -1
)
DIR.add_icons_to_recipe(
    data.raw.recipe["ir3mr-ethanol-from-gas"],
    {{icon = DIR.get_icon_path("natural-gas"), icon_size = DIR.icon_size, icon_mipmaps = DIR.icon_mipmaps}},
    -1
)
DIR.add_icons_to_recipe(
    data.raw.recipe["ir3mr-plastic-bar"],
    {{icon = DIR.get_icon_path("petroleum-gas"), icon_size = DIR.icon_size, icon_mipmaps = DIR.icon_mipmaps}},
    -1
)
DIR.add_icons_to_recipe(
    data.raw.recipe["ir3mr-plastic-bar-from-ethanol"],
    {{icon = DIR.get_icon_path("ethanol"), icon_size = DIR.icon_size, icon_mipmaps = DIR.icon_mipmaps}},
    -1
)
DIR.add_icons_to_recipe(
    data.raw.recipe["ir3mr-rubber-from-ethanol"],
    {{icon = DIR.get_icon_path("ethanol"), icon_size = DIR.icon_size, icon_mipmaps = DIR.icon_mipmaps}},
    -1
)
-- DIR.add_icons_to_recipe(
--     data.raw.recipe["ir3mr-brass-molten"],
--     {{icon = DIR.get_icon_path("bronze-molten"), icon_size = DIR.icon_size, icon_mipmaps = DIR.icon_mipmaps},
--         {icon = DIR.get_icon_path("lead-molten"), icon_size = DIR.icon_size, icon_mipmaps = DIR.icon_mipmaps}},
--     -1
-- )
-- DIR.add_icons_to_recipe(
--     data.raw.recipe["ir3mr-bronze-molten"],
--     {{icon = DIR.get_icon_path("copper-molten"), icon_size = DIR.icon_size, icon_mipmaps = DIR.icon_mipmaps},
--         {icon = DIR.get_icon_path("tin-molten"), icon_size = DIR.icon_size, icon_mipmaps = DIR.icon_mipmaps}},
--     -1
-- )
-- DIR.add_icons_to_recipe(
--     data.raw.recipe["ir3mr-steel-molten"],
--     {{icon = DIR.get_icon_path("iron-molten"), icon_size = DIR.icon_size, icon_mipmaps = DIR.icon_mipmaps},
--         {icon = DIR.get_icon_path("hydrogen-gas"), icon_size = DIR.icon_size, icon_mipmaps = DIR.icon_mipmaps}},
--     -1
-- )
-- DIR.add_icons_to_recipe(
--     data.raw.recipe["ir3mr-geothermal-exchange"],
--     {{icon = DIR.get_icon_path("geothermal-exchange"), icon_size = DIR.icon_size, icon_mipmaps = DIR.icon_mipmaps}},
--     -1
-- )
-- DIR.add_icons_to_recipe(
--     data.raw.recipe["ir3mr-geothermal-hot-water"],
--     {{icon = DIR.get_icon_path("geothermal-exchange"), icon_size = DIR.icon_size, icon_mipmaps = DIR.icon_mipmaps}},
--     -1
-- )
-- DIR.add_icons_to_recipe(
--     data.raw.recipe["ir3mr-wood"],
--     {{icon = DIR.get_icon_path("liquid-fertiliser"), icon_size = DIR.icon_size, icon_mipmaps = DIR.icon_mipmaps}},
--     -1
-- )
-- DIR.add_icons_to_recipe(
--     data.raw.recipe["ir3mr-rubber-wood"],
--     {{icon = DIR.get_icon_path("liquid-fertiliser"), icon_size = DIR.icon_size, icon_mipmaps = DIR.icon_mipmaps}},
--     -1
-- )

-- Change icon for air separation to match aesthetic
data.raw.recipe["air-separation-reversed"].icons = f.get_single_icons("ir3mr-air-separation")

---------------------------------------------------------------------------------------------------
