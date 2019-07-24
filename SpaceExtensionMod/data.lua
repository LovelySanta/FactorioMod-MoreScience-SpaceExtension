local scienceNames = require("prototypes/settings").scienceNames
LSlib.utils.log.enable()

-- Change technology over to infused science
for techName, ingredientChanges in pairs{
  ["space-assembly"] = {
    changeToInfused = {"red", "green"},
    addInfused      = {"orange"},
    removeRegular   = {"blue", "purple"},
    prerequisites   = {"orange"},
  },
  ["space-construction"] = {
    changeToInfused = {"red", "green"},
    addInfused      = {"orange", "cyan"},
    removeRegular   = {"blue", "purple"},
    prerequisites   = {"cyan"},
  },

  ["space-casings"] = {
    changeToInfused = {"red", "green", "blue"},
    addInfused      = {"orange"},
    removeRegular   = {"purple"},
    prerequisites   = {"blue"},
  },
  ["space-thrusters"] = {
    changeToInfused = {"red", "green", "blue", "purple"},
    addInfused      = {"orange", "cyan"},
    prerequisites   = {"purple"},
  },
  ["protection-fields"] = {
    changeToInfused = {"red", "green", "blue", "yellow", "gray"},
    addInfused      = {"orange", "cyan"},
    prerequisites   = {"yellow", "gray"},
  },
  ["fuel-cells"] = {
    changeToInfused = {"red", "green", "blue", "yellow"},
    addInfused      = {"orange", "cyan"},
    prerequisites   = {"yellow"},
  },
  ["habitation"] = {
    changeToInfused = {"red", "green", "blue", "purple", "yellow"},
    addInfused      = {"orange"},
    prerequisites   = {"yellow", "purple"},
  },
  ["life-support-systems"] = {
    changeToInfused = {"red", "green", "blue", "purple", "yellow"},
    addInfused      = {"cyan"},
    prerequisites   = {"yellow", "purple"},
  },
  ["spaceship-command"] = {
    changeToInfused = {"red", "green", "blue", "purple", "yellow"},
    addInfused      = {"orange"},
    prerequisites   = {"yellow", "purple"},
  },
  ["astrometrics"] = {
    changeToInfused = {"red", "green", "blue", "purple","yellow", "white"},
    addInfused      = {"orange", "cyan"},
    prerequisites   = {"yellow", "purple"},
  },
  ["fusion-reactor"] = {
    changeToInfused = {"red", "green", "blue", "purple","yellow", "gray"},
    addInfused      = {"orange", "cyan"},
    prerequisites   = {"yellow", "purple"},
  },

  ["ftl-theory-A"] = {
    changeToInfused = {"red"},
  },
  ["ftl-theory-B"] = {
    changeToInfused = {"red", "green"},
    addInfused      = {"cyan"},
  },
  ["ftl-theory-C"] = {
    changeToInfused = {"red", "green", "blue"},
    addInfused      = {"orange" ,"cyan"},
    prerequisites   = {"blue"},
  },
  ["ftl-theory-D1"] = {
    changeToInfused = {"red", "green", "blue", "purple"},
    addInfused      = {"orange" ,"cyan"},
    prerequisites   = {"purple"},
  },
  ["ftl-theory-D2"] = {
    changeToInfused = {"red", "green", "blue", "yellow"},
    addInfused      = {"orange" ,"cyan"},
    prerequisites   = {"yellow"},
  },
  ["ftl-propulsion"] = {
    removeRegular   = {"pink"},
    changeToInfused = {"red", "green", "blue", "purple", "yellow", "white"},
    addInfused      = {"orange" ,"cyan", "gray"},
    prerequisites   = {"gray"},
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
