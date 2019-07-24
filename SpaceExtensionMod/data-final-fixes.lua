local scienceNames = require("prototypes/settings").scienceNames

-- Add new subgroup for the items
local spaceshipConstructionSubgroup =
{
  type = "item-subgroup",
  name = "sem-spaceship-construction",
  group = "intermediate-products",
  order = "h_a[sem-spaceship-construction]",
}
data:extend ({spaceshipConstructionSubgroup, })

if mods["MoreScience-ScienceCostTweakerExtension"] and data.raw["item-group"]["sct-science"] then
  data.raw["item-subgroup"][spaceshipConstructionSubgroup.name].group = "sct-science"
  data.raw["item-subgroup"][spaceshipConstructionSubgroup.name].order = "n-b[spaceship-construction]"

  if data.raw["item-subgroup"]["sct-sciencepack-space"] then data.raw["item-subgroup"]["sct-sciencepack-space"].order = "n-a[space]" end
end

-- add spaceship items to the new subgroup
for _, spaceshipItemTable in pairs({
  {name = "assembly-robot"},
  {name = "drydock-assembly"},
  {name = "drydock-structural"},
  {name = "fusion-reactor"},
  {name = "hull-component"},
  {name = "protection-field"},
  {name = "space-thruster"},
  {name = "fuel-cell"},
  {name = "habitation"},
  {name = "life-support"},
  {name = "command"},
  {name = "astrometrics"},
  {name = "ftl-drive"},
}) do
  if spaceshipItemTable.name and  data.raw["item"][spaceshipItemTable.name] then
    data.raw["item"][spaceshipItemTable.name].subgroup = spaceshipConstructionSubgroup.name

    if data.raw["recipe"][spaceshipItemTable.name] then
      data.raw["recipe"][spaceshipItemTable.name].order = nil
      data.raw["recipe"][spaceshipItemTable.name].subgroup = nil
    end

  end
end




-- if bobs mod is present, change logistics science pack over
  if data.raw.technology["ftl-theory-D"] then

  -- Change technology over to infused science
  for techName, ingredientChanges in pairs{
    ["space-assembly"] = {
      changeToInfused = {"pink"},
    },
    ["space-construction"] = {
      changeToInfused = {"pink"},
    },
  
    ["space-casings"] = {
      changeToInfused = {"pink"},
    },
    ["space-thrusters"] = {
      changeToInfused = {"pink"},
    },
    ["protection-fields"] = {
      changeToInfused = {"pink"},
    },
    ["fuel-cells"] = {
      changeToInfused = {"pink"},
    },
    ["habitation"] = {
      changeToInfused = {"pink"},
    },
    ["life-support-systems"] = {
      changeToInfused = {"pink"},
    },
    ["spaceship-command"] = {
      changeToInfused = {"pink"},
    },
    ["astrometrics"] = {
      changeToInfused = {"pink"},
    },
    ["fusion-reactor"] = {
      changeToInfused = {"pink"},
    },
  
    ["ftl-theory-D"] = {
      changeToInfused = {"red", "green", "blue", "pink"},
      addInfused      = {"orange" ,"cyan"},
    },
    ["ftl-propulsion"] = {
      changeToInfused = {"pink"},
    },
  } do
    if data.raw["technology"][techName] then
      for _, color in pairs(ingredientChanges.removeRegular   or {}) do
        LSlib.technology.removeIngredient(techName,               string.format(scienceNames[color], "pack"))
      end
      for _, color in pairs(ingredientChanges.changeToInfused or {}) do
        LSlib.technology.addIngredient   (techName, 1, "infused-"..string.format(scienceNames[color], "pack"))
        LSlib.technology.removeIngredient(techName,                string.format(scienceNames[color], "pack"))
      end
      for _, color in pairs(ingredientChanges.addInfused      or {}) do
        LSlib.technology.addIngredient   (techName, 1, "infused-"..string.format(scienceNames[color], "pack"))
      end
      for _, color in pairs(ingredientChanges.prerequisites   or {}) do
        LSlib.technology.addPrerequisite(techName,     "infused-"..string.format(scienceNames[color], "pack"))
      end
    end
  end
end
