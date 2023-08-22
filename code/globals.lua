---------------------------------------------------------------------------------------------------

local g = {}
g.this_mod_name = "IndustrialRevolution3MirroredRecipes"
g.icon_path = "__"..g.this_mod_name.."__/graphics/icons"

g.recipes = {
    {
        original_name = "ir-crude-oil-processing",
        mirror_name = "ir3mr-crude-oil-processing",
    },
    {
        original_name = "ir-heavy-oil-processing",
        mirror_name = "ir3mr-heavy-oil-processing",
    },
    {
        original_name = "ir-light-oil-processing",
        mirror_name = "ir3mr-light-oil-processing",
    },
    {
        original_name = "ir-petroleum-processing",
        mirror_name = "ir3mr-petroleum-processing",
    },
    {
        original_name = "ir-natural-gas-processing",
        mirror_name = "ir3mr-natural-gas-processing",
    },
    {
        original_name = "lubricant",
        mirror_name = "ir3mr-lubricant",
    },
    {
        original_name = "coal-liquefaction",
        mirror_name = "ir3mr-coal-liquefaction",
    },
    {
        original_name = "coke-gasification",
        mirror_name = "ir3mr-coke-gasification",
        technology = "ir-gasification",
    },
    {
        original_name = "geothermal-exchange",
        mirror_name = "ir3mr-geothermal-exchange",
        technology = "ir-geothermal-exchange",
    },
    {
        original_name = "geothermal-hot-water",
        mirror_name = "ir3mr-geothermal-hot-water",
        technology = "ir-geothermal-exchange",
        icon_name = "ir3mr-geothermal-exchange",
    },
    {
        original_name = "rubber-from-ethanol",
        mirror_name = "ir3mr-rubber-from-ethanol",
        technology = "plastics-2",
        icon_name = "ir3mr-ethanol",
    },
}

return g

---------------------------------------------------------------------------------------------------
