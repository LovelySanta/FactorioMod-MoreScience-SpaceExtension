
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
