---------------------------------------------------------------------------------------------------

local g = {}
g.this_mod_name = "IndustrialRevolution3MirroredRecipes"
g.icon_path = "__"..g.this_mod_name.."__/graphics/icons"

-- Almost everything is derived from here!
-- Unfortunately migrations/retromirror.lua can't read from data, and I haven't bothered improving the icon logic, but that'll come in version 1.1
-- There are some custom fixes needed too, see data-final-fixes.lua
-- The commented out recipes need fixes too, due to mirroring not working (e.g. the forestries have their recipe locked; need to unlock that)
g.recipes = {
    -- oil processing
    {
        original = "ir-crude-oil-processing",
        mirror = "ir3mr-crude-oil-processing",
        tech_index = 6,
    },
    {
        original = "ir-heavy-oil-processing",
        mirror = "ir3mr-heavy-oil-processing",
    },
    {
        original = "ir-light-oil-processing",
        mirror = "ir3mr-light-oil-processing",
    },
    {
        original = "ir-petroleum-processing",
        mirror = "ir3mr-petroleum-processing",
    },
    {
        original = "ir-natural-gas-processing",
        mirror = "ir3mr-natural-gas-processing",
    },
    
    -- general oil chemistry
    {
        original = "lubricant",
        mirror = "ir3mr-lubricant",
    },
    {
        original = "sulfur",
        mirror = "ir3mr-sulfur",
        technology = "sulfur-processing",
        tech_index = 2,
    },
    {
        original = "plastic-bar",
        mirror = "ir3mr-plastic-bar",
        technology = "plastics",
    },
    {
        original = "coal-liquefaction",
        mirror = "ir3mr-coal-liquefaction",
    },

    -- ethanol and ethanol accessories
    {
        original = "ethanol",
        mirror = "ir3mr-ethanol",
        technology = "ir-ethanol-1",
    },
    {
        original = "ethanol-from-gas",
        mirror = "ir3mr-ethanol-from-gas",
        technology = "ir-ethanol-2",
        icon_name = "ir3mr-ethanol",
    },
    {
        original = "rubber-from-ethanol",
        mirror = "ir3mr-rubber-from-ethanol",
        technology = "plastics-2",
        icon_name = "ir3mr-rubber",
    },
    {
        original = "plastic-bar-from-ethanol",
        mirror = "ir3mr-plastic-bar-from-ethanol",
        technology = "plastics-2",
        icon_name = "ir3mr-plastic-bar",
        tech_index = 2,
    },
    
    -- misc
    {
        original = "coke-gasification",
        mirror = "ir3mr-coke-gasification",
        technology = "ir-gasification",
    },
    {
        original = "gold-plating-solution",
        mirror = "ir3mr-gold-plating-solution",
        technology = "ir-electroplating",
        tech_index = 12,
    },
    {
        original = "chromium-plating-solution",
        mirror = "ir3mr-chromium-plating-solution",
        technology = "ir-electroplating",
        tech_index = 3,
    },

    -- -- geothermals
    -- {
    --     original = "geothermal-hot-water",
    --     mirror = "ir3mr-geothermal-hot-water",
    --     technology = "ir-geothermal-exchange",
    --     icon_name = "ir3mr-geothermal-exchange",
    --     icon_name = "ir3mr-water",
    -- },
    -- {
    --     original = "geothermal-exchange",
    --     mirror = "ir3mr-geothermal-exchange",
    --     technology = "ir-geothermal-exchange",
    --     icon_name = "ir3mr-steam",
    -- },

    -- -- forestry
    -- {
    --     original = "forestry-rubber-wood-fertiliser-example",
    --     mirror = "ir3mr-rubber-wood",
    --     technology = "ir-chrome-forestry",
    --     tech_index = 5,
    -- },
    -- {
    --     original = "forestry-wood-fertiliser-example",
    --     mirror = "ir3mr-wood",
    --     technology = "ir-chrome-forestry",
    --     tech_index = 4,
    -- },
    {
        original = "liquid-fertiliser",
        mirror = "ir3mr-liquid-fertiliser",
        technology = "ir-chrome-forestry",
        tech_index = 3,
    },
    {
        original = "ammonia-gas",
        mirror = "ir3mr-ammonia-gas",
        technology = "ir-chrome-forestry",
        tech_index = 2,
    },

    -- -- molten alloys
    -- {
    --     original = "bronze-molten-from-molten",
    --     mirror = "ir3mr-bronze-molten",
    --     technology = "ir-arc-furnace",
    --     tech_index = 15,
    -- },
    -- {
    --     original = "brass-molten-from-molten",
    --     mirror = "ir3mr-brass-molten",
    --     technology = "ir-arc-furnace",
    --     tech_index = 9,
    -- },
    -- {
    --     original = "steel-molten-from-molten-advanced",
    --     mirror = "ir3mr-steel-molten",
    --     technology = "ir-arc-furnace-2",
    -- },
}

return g

---------------------------------------------------------------------------------------------------
