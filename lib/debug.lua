
Debug = {}

Debug.enabled = false
Debug.returnValue = 11

function Debug:reseachAllTechnologies()
  force = game.forces["player"]

  local function researchTechnology(technologyName, printWarning)
    if not (printWarning == true or printWarning == false) then printWarning = true end

    if force.technologies[technologyName] and force.technologies[technologyName].enabled then
      -- check prerequisites
      for _,prerequisite in pairs(force.technologies[technologyName].prerequisites) do
        if not prerequisite.researched then
          if printWarning then
            log(string.format("WARNING: Could not research %q", technologyName))
          end
          return false
        end
      end
      -- do the research
      force.technologies[technologyName].researched = true
      return true
    end
    return false
  end


--------------------------------------------------------------------------------
----- Red science                                                          -----
--------------------------------------------------------------------------------

  -- PART 1: vanilla research
  researchTechnology("basic-automation", false)
  researchTechnology("automation", false)
  researchTechnology("logistics", false)
  researchTechnology("military", false)
  researchTechnology("stone-walls", false)
  researchTechnology("turrets", false)
  researchTechnology("bullet-damage-1", false)
  researchTechnology("bullet-speed-1", false)
  researchTechnology("shotgun-shell-damage-1", false)
  researchTechnology("shotgun-shell-speed-1", false)
  researchTechnology("optics", false)
  researchTechnology("electronics", false)
  researchTechnology("automation-2", false)
  researchTechnology("steel-processing", false)
  researchTechnology("fluid-handling", false)
  researchTechnology("heavy-armor", false)

  if Debug.returnValue == 1 then
    return
  end

  -- PART 13: morescience
  researchTechnology("basic-science-research-1")
  researchTechnology("research-speed-1")
  researchTechnology("bottling-research")
  researchTechnology("research-speed-2")



--------------------------------------------------------------------------------
----- Green science                                                        -----
--------------------------------------------------------------------------------

  -- PART 1: vanilla research
  researchTechnology("research-speed-2", false)
  researchTechnology("toolbelt", false)
  researchTechnology("landfill", false)
  researchTechnology("electric-energy-distribution-1", false)
  researchTechnology("military-2", false)
  researchTechnology("gates", false)
  researchTechnology("bullet-damage-2", false)
  researchTechnology("bullet-speed-2", false)
  researchTechnology("bullet-speed-3", false)
  researchTechnology("gun-turret-damage-1", false)
  researchTechnology("gun-turret-damage-2", false)
  researchTechnology("shotgun-shell-damage-2", false)
  researchTechnology("shotgun-shell-speed-2", false)
  researchTechnology("shotgun-shell-speed-3", false)

  if Debug.returnValue == 2 then
    return
  end

  -- PART 12: morescience
  researchTechnology("basic-military-science-research")



--------------------------------------------------------------------------------
----- gray science                                                         -----
--------------------------------------------------------------------------------

  -- PART 1: vanilla research
  researchTechnology("bullet-damage-3", false)
  researchTechnology("bullet-damage-4", false)
  researchTechnology("bullet-speed-4", false)
  researchTechnology("gun-turret-damage-3", false)
  researchTechnology("gun-turret-damage-4", false)
  researchTechnology("shotgun-shell-damage-3", false)
  researchTechnology("shotgun-shell-damage-4", false)
  researchTechnology("shotgun-shell-speed-4", false)
  researchTechnology("grenade-damage-1", false)
  researchTechnology("grenade-damage-2", false)
  researchTechnology("grenade-damage-3", false)

  if Debug.returnValue == 3 then
    return
  end

  -- PART 2: morescience
  researchTechnology("basic-automation-science-research")



--------------------------------------------------------------------------------
----- orange science                                                       -----
--------------------------------------------------------------------------------

  -- PART 1: vanilla research
  researchTechnology("research-speed-3", false)
  researchTechnology("circuit-network", false)
  researchTechnology("oil-processing", false)
  researchTechnology("plastics", false)
  researchTechnology("advanced-electronics", false)
  researchTechnology("sulfur-processing", false)
  researchTechnology("battery", false)
  researchTechnology("engine", false)
  researchTechnology("advanced-material-processing", false)
  researchTechnology("concrete", false)
  researchTechnology("modules", false)
  researchTechnology("speed-module", false)
  researchTechnology("productivity-module", false)
  researchTechnology("mining-productivity-1", false)
  researchTechnology("railway", false)
  researchTechnology("automated-rail-transportation", false)
  researchTechnology("rail-signals", false)
  researchTechnology("modular-armor", false)
  researchTechnology("night-vision-equipment", false)
  researchTechnology("flammables", false)
  researchTechnology("flamethrower", false)
  researchTechnology("explosives", false)
  researchTechnology("land-mine", false)
  researchTechnology("rocketry", false)
  researchTechnology("laser", false)
  researchTechnology("cliff-explosives", false)
  researchTechnology("flamethrower-damage-1", false)
  researchTechnology("flamethrower-damage-2", false)
  researchTechnology("rocket-damage-1", false)
  researchTechnology("rocket-damage-2", false)
  researchTechnology("rocket-speed-1", false)
  researchTechnology("rocket-speed-2", false)

  if self.returnValue == 4 then
    return
  end

  -- PART 12: morescience
  researchTechnology("basic-power-science-research")



--------------------------------------------------------------------------------
----- light blue science                                                   -----
--------------------------------------------------------------------------------

  -- PART 1: vanilla research
  researchTechnology("solar-energy", false)
  researchTechnology("bob-solar-energy-2")
  researchTechnology("electric-energy-accumulators-1", false)
  researchTechnology("effectivity-module", false)
  researchTechnology("laser-turrets", false)
  researchTechnology("solar-panel-equipment", false)
  researchTechnology("battery-equipment", false)
  researchTechnology("energy-shield-equipment", false)
  researchTechnology("laser-turret-damage-1", false)
  researchTechnology("laser-turret-damage-2", false)
  researchTechnology("laser-turret-speed-1", false)
  researchTechnology("laser-turret-speed-2", false)

  if self.returnValue == 5 then
    return
  end

  -- PART 5: morescience
  researchTechnology("basic-science-research-2")



--------------------------------------------------------------------------------
-----  blue science                                                        -----
--------------------------------------------------------------------------------

  -- PART 1: vanilla research
  researchTechnology("research-speed-4", false)
  researchTechnology("advanced-oil-processing", false)
  researchTechnology("advanced-material-processing-2", false)
  researchTechnology("advanced-electronics-2", false)
  researchTechnology("electric-engine", false)
  researchTechnology("speed-module-2", false)
  researchTechnology("productivity-module-2", false)
  researchTechnology("mining-productivity-4", false)
  researchTechnology("fluid-handling-2", false)
  researchTechnology("electric-energy-distribution-2", false)
  researchTechnology("nuclear-power", false)
  researchTechnology("effectivity-module-2", false)
  researchTechnology("flying", false)
  researchTechnology("combat-robotics", false)
  researchTechnology("military-3", false)
  researchTechnology("explosive-rocketry", false)
  researchTechnology("combat-robotics-2", false)
  researchTechnology("battery-mk2-equipment", false)
  researchTechnology("exoskeleton-equipment", false)
  researchTechnology("power-armor", false)
  researchTechnology("energy-shield-mk2-equipment", false)
  researchTechnology("personal-laser-defense-equipment", false)
  researchTechnology("discharge-defense-equipment", false)
  researchTechnology("bullet-damage-5", false)
  researchTechnology("bullet-speed-5", false)
  researchTechnology("gun-turret-damage-5", false)
  researchTechnology("shotgun-shell-damage-5", false)
  researchTechnology("shotgun-shell-speed-5", false)
  researchTechnology("grenade-damage-4", false)
  researchTechnology("grenade-damage-5", false)
  researchTechnology("flamethrower-damage-3", false)
  researchTechnology("flamethrower-damage-4", false)
  researchTechnology("rocket-damage-3", false)
  researchTechnology("rocket-damage-4", false)
  researchTechnology("rocket-damage-5", false)
  researchTechnology("rocket-speed-3", false)
  researchTechnology("rocket-speed-4", false)
  researchTechnology("rocket-speed-5", false)
  researchTechnology("laser-turret-damage-3", false)
  researchTechnology("laser-turret-damage-4", false)
  researchTechnology("laser-turret-speed-3", false)
  researchTechnology("laser-turret-speed-4", false)
  researchTechnology("combat-robot-damage-1", false)
  researchTechnology("combat-robot-damage-2", false)
  researchTechnology("combat-robot-damage-3", false)
  researchTechnology("combat-robot-damage-4", false)
  researchTechnology("follower-robot-count-1", false)
  researchTechnology("follower-robot-count-2", false)
  researchTechnology("follower-robot-count-3", false)
  researchTechnology("follower-robot-count-4", false)

  if self.returnValue == 6 then
    return
  end

  -- PART 13: morescience
  researchTechnology("basic-logistics-science-research")



--------------------------------------------------------------------------------
-----  pink science                                                        -----
--------------------------------------------------------------------------------

  -- PART 1: vanilla research
  researchTechnology("logistics-2", false)
  researchTechnology("stack-inserter", false)
  researchTechnology("fluid-wagon", false)
  researchTechnology("fluid-handling-3", false)
  researchTechnology("robotics", false)
  researchTechnology("construction-robotics", false)
  researchTechnology("logistic-robotics", false)
  researchTechnology("character-logistic-slots-1", false)
  researchTechnology("character-logistic-slots-2", false)
  researchTechnology("character-logistic-slots-3", false)
  researchTechnology("character-logistic-trash-slots-1", false)
  researchTechnology("character-logistic-trash-slots-2", false)
  researchTechnology("auto-character-logistic-trash-slots", false)
  researchTechnology("personal-roboport-equipment", false)
  researchTechnology("automobilism", false)
  researchTechnology("tanks", false)
  researchTechnology("inserter-capacity-bonus-1", false)
  researchTechnology("inserter-capacity-bonus-2", false)
  researchTechnology("inserter-capacity-bonus-3", false)
  researchTechnology("braking-force-1", false)
  researchTechnology("braking-force-2", false)
  researchTechnology("worker-robots-storage-1", false)
  researchTechnology("worker-robots-speed-1", false)
  researchTechnology("worker-robots-speed-2", false)
  researchTechnology("cannon-shell-damage-1", false)
  researchTechnology("cannon-shell-damage-2", false)
  researchTechnology("cannon-shell-damage-3", false)
  researchTechnology("cannon-shell-speed-1", false)
  researchTechnology("cannon-shell-speed-2", false)
  researchTechnology("cannon-shell-speed-3", false)

  if self.returnValue == 7 then
    return
  end

  -- PART 5: morescience
  researchTechnology("advanced-science-research-1")



--------------------------------------------------------------------------------
----- purple science                                                       -----
--------------------------------------------------------------------------------

  -- PART 1: vanilla research
  researchTechnology("research-speed-5", false)
  researchTechnology("automation-3", false)
  researchTechnology("logistics-3", false)
  researchTechnology("coal-liquefaction", false)
  researchTechnology("productivity-module-3", false)
  researchTechnology("wood-plantation", false)
  researchTechnology("character-logistic-slots-4", false)
  researchTechnology("character-logistic-slots-5", false)
  researchTechnology("mining-productivity-8", false)
  researchTechnology("inserter-capacity-bonus-4", false)
  researchTechnology("inserter-capacity-bonus-5", false)
  researchTechnology("inserter-capacity-bonus-6", false)
  researchTechnology("braking-force-3", false)
  researchTechnology("braking-force-4", false)
  researchTechnology("braking-force-5", false)
  researchTechnology("worker-robots-storage-2", false)
  researchTechnology("worker-robots-speed-3", false)
  researchTechnology("worker-robots-speed-4", false)
  researchTechnology("nuclear-fuel-reprocessing", false)

  if self.returnValue == 8 then
    return
  end

  -- PART 12: morescience
  researchTechnology("advanced-science-research-2")



--------------------------------------------------------------------------------
----- yellow science                                                      -----
--------------------------------------------------------------------------------

  -- PART 1: vanilla research
  researchTechnology("advanced-science-research-2", false)
  researchTechnology("research-speed-6", false)
  researchTechnology("speed-module-3", false)
  researchTechnology("effectivity-module-3", false)
  researchTechnology("effect-transmission", false)
  researchTechnology("logistic-system", false)
  researchTechnology("character-logistic-slots-6", false)
  researchTechnology("kovarex-enrichment-process", false)
  researchTechnology("military-4", false)
  researchTechnology("combat-robotics-3", false)
  researchTechnology("uranium-ammo", false)
  researchTechnology("atomic-bomb", false)
  researchTechnology("artillery", false)
  researchTechnology("fusion-reactor-equipment", false)
  researchTechnology("personal-roboport-equipment-2", false)
  researchTechnology("power-armor-2", false)
  researchTechnology("mining-productivity-12", false)
  researchTechnology("inserter-capacity-bonus-7", false)
  researchTechnology("braking-force-6", false)
  researchTechnology("braking-force-7", false)
  researchTechnology("worker-robots-storage-3", false)
  researchTechnology("worker-robots-speed-5", false)
  researchTechnology("bullet-damage-6", false)
  researchTechnology("bullet-speed-6", false)
  researchTechnology("gun-turret-damage-6", false)
  researchTechnology("shotgun-shell-damage-6", false)
  researchTechnology("shotgun-shell-speed-6", false)
  researchTechnology("grenade-damage-6", false)
  researchTechnology("flamethrower-damage-5", false)
  researchTechnology("flamethrower-damage-6", false)
  researchTechnology("rocket-damage-6", false)
  researchTechnology("rocket-speed-6", false)
  researchTechnology("rocket-speed-7", false)
  researchTechnology("laser-turret-damage-5", false)
  researchTechnology("laser-turret-damage-6", false)
  researchTechnology("laser-turret-damage-7", false)
  researchTechnology("laser-turret-speed-5", false)
  researchTechnology("laser-turret-speed-6", false)
  researchTechnology("laser-turret-speed-7", false)
  researchTechnology("combat-robot-damage-5", false)
  researchTechnology("follower-robot-count-5", false)
  researchTechnology("follower-robot-count-6", false)
  researchTechnology("cannon-shell-damage-4", false)
  researchTechnology("cannon-shell-damage-5", false)
  researchTechnology("cannon-shell-speed-4", false)
  researchTechnology("cannon-shell-speed-5", false)

  if self.returnValue == 9 then
    return
  end

  -- PART 12: morescience
  researchTechnology("rocket")
  researchTechnology("rocketpart-hull-component")
  researchTechnology("rocketpart-ion-thruster")
  researchTechnology("rocketpart-fusion-reactor")
  researchTechnology("rocketpart-shield-array")
  researchTechnology("rocket-silo")



--------------------------------------------------------------------------------
----- Infinite science research                                            -----
--------------------------------------------------------------------------------

  if self.returnValue == 10 then
    return
  end

  -- PART 1: infinite science research
  researchTechnology("infinite-science-research")
  researchTechnology("infused-basic-science-research-1")
  researchTechnology("infused-basic-science-research-2")
  researchTechnology("infused-basic-science-research-3")
  researchTechnology("infused-advanced-science-research-1")
  researchTechnology("infused-advanced-science-research-2")
  researchTechnology("infused-basic-military-science-research")
  researchTechnology("infused-basic-automation-science-research")
  researchTechnology("infused-basic-power-science-research")
  researchTechnology("infused-basic-logistics-science-research")

  -- PART 2: space extension mod
  researchTechnology("space-assembly")
  researchTechnology("space-construction")
  researchTechnology("space-casings")
  researchTechnology("space-thrusters")
  researchTechnology("protection-fields")
  researchTechnology("fuel-cells")
  researchTechnology("habitation")
  researchTechnology("life-support-systems")
  researchTechnology("spaceship-command")
  researchTechnology("astrometrics")
  researchTechnology("fusion-reactor")
  researchTechnology("ftl-theory-A")
  researchTechnology("ftl-theory-B")
  researchTechnology("ftl-theory-C")
  researchTechnology("ftl-propulsion")

end
