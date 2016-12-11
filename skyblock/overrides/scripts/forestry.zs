import mods.botania.RuneAltar;

val mana_steel = <ore:ingotManasteel>;
val mana_dust = <ore:powderMana>;
val mana_pearl = <ore:manaPearl>;

// MoreBees Rock Hive
mods.botania.RuneAltar.addRecipe(<morebees:hive>,
    [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>,
     mana_steel, mana_dust], 25000);
// Forest Hive
mods.botania.RuneAltar.addRecipe(<forestry:beehives:0>,
    [<minecraft:leaves:0>, <minecraft:leaves:0>, <minecraft:leaves:0>,
     <minecraft:sapling:0>,
     mana_steel, mana_dust], 25000);
// Meadows Hive
mods.botania.RuneAltar.addRecipe(<forestry:beehives:1>,
    [<botania:grassSeeds:0>, <minecraft:wheat_seeds>, <ore:flowerYellow>,
     mana_steel, mana_dust], 25000);
// Modest Hive
mods.botania.RuneAltar.addRecipe(<forestry:beehives:2>,
    [<ore:sandstone>, <ore:sand>, <ore:blockCactus>,
     mana_steel, mana_dust], 25000);
// Tropical Hive
mods.botania.RuneAltar.addRecipe(<forestry:beehives:3>,
    [<minecraft:leaves:3>, <minecraft:leaves:3>, <ore:vine>,
     <minecraft:sapling:3>,
     mana_steel, mana_dust], 25000);
// Ender Hive
mods.botania.RuneAltar.addRecipe(<forestry:beehives:4>,
    [<ore:endstone>, <ore:endstone>, <ore:endstone>, mana_pearl,
     mana_steel, mana_dust], 25000);
// Snowy Hive
mods.botania.RuneAltar.addRecipe(<forestry:beehives:5>,
    [<ore:blockSnow>, <minecraft:snowball>, <minecraft:snowball>,
     mana_steel, mana_dust], 25000);
// Marshy Hive
mods.botania.RuneAltar.addRecipe(<forestry:beehives:6>,
    [<minecraft:waterlily>,
     <minecraft:brown_mushroom>, <minecraft:red_mushroom>,
     mana_steel, mana_dust], 25000);

