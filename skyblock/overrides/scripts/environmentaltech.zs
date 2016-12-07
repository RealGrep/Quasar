# Void ore miner can't be made normally without iron and diamond ores.
# Would like to make this harder, maybe? For example,
# exnihiloomnia:ore_gravel_ender:12 (Draconium) might be involved.
recipes.remove(<environmentaltech:controller_void_ore_miner_1>);
recipes.addShaped(<environmentaltech:controller_void_ore_miner_1>,
    [[<minecraft:gold_block>, <exnihiloomnia:ore_gravel_ender:12>, <minecraft:gold_block>],
     [<minecraft:gold_block>, <environmentaltech:lens>, <minecraft:gold_block>],
     [<minecraft:iron_block>, <environmentaltech:laser_core>, <minecraft:diamond_block>]]);

