# Remove deep dark portal
recipes.remove(<extrautils2:Teleporter:1>);

# Plain angel ring
recipes.remove(<extrautils2:AngelRing>);
recipes.addShaped(<extrautils2:AngelRing>,
    [[<ore:blockGlass>, <minecraft:elytra>, <ore:blockGlass>],
     [<ore:ingotGold>, <extrautils2:Ingredients>, <ore:ingotGold>],
     [<extrautils2:GoldenLasso>.withTag({Animal: {id: "Bat"}, No_Place: 1 as byte}), <ore:ingotGold>, <extrautils2:GoldenLasso:1>.withTag({Animal: {id: "Ghast"}, No_Place: 1 as byte})]]);
recipes.addShapeless(<extrautils2:AngelRing>, [<ore:blockGlass>, <extrautils2:AngelRing:*>, <ore:blockGlass>]);

# Angel wings
recipes.remove(<extrautils2:AngelRing:1>);
recipes.addShaped(<extrautils2:AngelRing:1>,
    [[<minecraft:feather>, <minecraft:elytra>, <minecraft:feather>],
     [<ore:ingotGold>, <extrautils2:Ingredients>, <ore:ingotGold>],
     [<extrautils2:GoldenLasso>.withTag({Animal: {id: "Bat"}, No_Place: 1 as byte}), <ore:ingotGold>, <extrautils2:GoldenLasso:1>.withTag({Animal: {id: "Ghast"}, No_Place: 1 as byte})]]);
recipes.addShapeless(<extrautils2:AngelRing:1>, [<minecraft:feather>, <extrautils2:AngelRing:*>, <minecraft:feather>]);

# Fairy wings
recipes.remove(<extrautils2:AngelRing:2>);
recipes.addShaped(<extrautils2:AngelRing:2>,
    [[<ore:dyePurple>, <minecraft:elytra>, <ore:dyePink>],
     [<ore:ingotGold>, <extrautils2:Ingredients>, <ore:ingotGold>],
     [<extrautils2:GoldenLasso>.withTag({Animal: {id: "Bat"}, No_Place: 1 as byte}), <ore:ingotGold>, <extrautils2:GoldenLasso:1>.withTag({Animal: {id: "Ghast"}, No_Place: 1 as byte})]]);
recipes.addShapeless(<extrautils2:AngelRing:2>, [<ore:dyePurple>, <extrautils2:AngelRing:*>, <ore:dyePink>]);

# Demon wings
recipes.remove(<extrautils2:AngelRing:3>);
recipes.addShaped(<extrautils2:AngelRing:3>,
    [[<minecraft:leather>, <minecraft:elytra>, <minecraft:leather>],
     [<ore:ingotGold>, <extrautils2:Ingredients>, <ore:ingotGold>],
     [<extrautils2:GoldenLasso>.withTag({Animal: {id: "Bat"}, No_Place: 1 as byte}), <ore:ingotGold>, <extrautils2:GoldenLasso:1>.withTag({Animal: {id: "Ghast"}, No_Place: 1 as byte})]]);
recipes.addShapeless(<extrautils2:AngelRing:3>,
    [<minecraft:leather>, <extrautils2:AngelRing:*>, <minecraft:leather>]);

# Golden wings
recipes.remove(<extrautils2:AngelRing:4>);
recipes.addShaped(<extrautils2:AngelRing:4>,
    [[<ore:nuggetGold>, <minecraft:elytra>, <ore:nuggetGold>],
     [<ore:ingotGold>, <extrautils2:Ingredients>, <ore:ingotGold>],
     [<extrautils2:GoldenLasso>.withTag({Animal: {id: "Bat"}, No_Place: 1 as byte}), <ore:ingotGold>, <extrautils2:GoldenLasso:1>.withTag({Animal: {id: "Ghast"}, No_Place: 1 as byte})]]);
recipes.addShapeless(<extrautils2:AngelRing:4>, [<ore:nuggetGold>, <extrautils2:AngelRing:*>, <ore:nuggetGold>]);

# Bat wings
recipes.remove(<extrautils2:AngelRing:5>);
recipes.addShaped(<extrautils2:AngelRing:5>,
    [[<minecraft:coal>, <minecraft:elytra>, <minecraft:coal:1>],
     [<ore:ingotGold>, <extrautils2:Ingredients>, <ore:ingotGold>],
     [<extrautils2:GoldenLasso>.withTag({Animal: {id: "Bat"}, No_Place: 1 as byte}), <ore:ingotGold>, <extrautils2:GoldenLasso:1>.withTag({Animal: {id: "Ghast"}, No_Place: 1 as byte})]]);
recipes.addShapeless(<extrautils2:AngelRing:5>, [<minecraft:coal>, <extrautils2:AngelRing:*>, <minecraft:coal:1>]);

