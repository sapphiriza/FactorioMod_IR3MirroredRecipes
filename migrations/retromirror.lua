---------------------------------------------------------------------------------------------------

for index, force in pairs(game.forces) do
    local techs = force.technologies
    local recipes = force.recipes
  
    recipes["ir3mr-crude-oil-processing"].enabled = techs["ir-crude-oil-processing"].researched
    recipes["ir3mr-heavy-oil-processing"].enabled = techs["ir-heavy-oil-processing"].researched
    recipes["ir3mr-light-oil-processing"].enabled = techs["ir-light-oil-processing"].researched
    recipes["ir3mr-petroleum-processing"].enabled = techs["ir-petroleum-processing"].researched
    recipes["ir3mr-natural-gas-processing"].enabled = techs["ir-natural-gas-processing"].researched

    recipes["ir3mr-lubricant"].enabled = techs["lubricant"].researched
    recipes["ir3mr-sulfur"].enabled = techs["sulfur-processing"].researched
    recipes["ir3mr-plastic-bar"].enabled = techs["plastics"].researched
    recipes["ir3mr-high-octane-fluid"].enabled = techs["rocket-fuel"].researched
    recipes["ir3mr-coal-liquefaction"].enabled = techs["coal-liquefaction"].researched
    
    recipes["ir3mr-ethanol"].enabled = techs["ir-ethanol-1"].researched
    recipes["ir3mr-ethanol-from-gas"].enabled = techs["ir-ethanol-2"].researched
    recipes["ir3mr-plastic-bar-from-ethanol"].enabled = techs["plastics-2"].researched
    recipes["ir3mr-rubber-from-ethanol"].enabled = techs["plastics-2"].researched

    recipes["ir3mr-coke-gasification"].enabled = techs["ir-gasification"].researched
    recipes["ir3mr-gold-plating-solution"].enabled = techs["ir-electroplating"].researched
    recipes["ir3mr-chromium-plating-solution"].enabled = techs["ir-electroplating"].researched

    recipes["ir3mr-liquid-fertiliser"].enabled = techs["ir-chrome-forestry"].researched
    recipes["ir3mr-ammonia-gas"].enabled = techs["ir-chrome-forestry"].researched
    
    -- recipes["ir3mr-geothermal-exchange"].enabled = techs["ir-geothermal-exchange"].researched
    -- recipes["ir3mr-geothermal-hot-water"].enabled = techs["ir-geothermal-exchange"].researched


end

---------------------------------------------------------------------------------------------------
