// Allow recipes to use Quark basalt blocks. Not using oredict so it doesn't
// include all the other non-base basalt variants in EnvironmentalTech.
recipes.addShaped(<environmentaltech:basalt_machine_base>,
                  [[<ore:dustRedstone>, <ore:barsIron>, <ore:dustRedstone>],
                   [<ore:barsIron>, <quark:basalt:0>, <ore:barsIron>],
                   [<ore:nuggetGold>, <ore:barsIron>, <ore:nuggetGold>]]);

recipes.addShaped(<environmentaltech:basalt_structure:0>,
               [[null, <ore:ingotGold>, null],
                [<ore:dustRedstone>, <quark:basalt:0>, <ore:dustRedstone>],
                [null, <ore:ingotGold>, null]]);
recipes.addShaped(<environmentaltech:basalt_structure:0>,
               [[null, <ore:dustRedstone>, null],
                [<ore:ingotGold>, <quark:basalt:0>, <ore:ingotGold>],
                [null, <ore:dustRedstone>, null]]);

// Also add versions that use the chisel basalt.
recipes.addShaped(<environmentaltech:basalt_machine_base>,
                  [[<ore:dustRedstone>, <ore:barsIron>, <ore:dustRedstone>],
                   [<ore:barsIron>, <chisel:basaltextra:7>, <ore:barsIron>],
                   [<ore:nuggetGold>, <ore:barsIron>, <ore:nuggetGold>]]);

recipes.addShaped(<environmentaltech:basalt_structure:0>,
               [[null, <ore:ingotGold>, null],
                [<ore:dustRedstone>, <chisel:basaltextra:7>, <ore:dustRedstone>],
                [null, <ore:ingotGold>, null]]);
recipes.addShaped(<environmentaltech:basalt_structure:0>,
               [[null, <ore:dustRedstone>, null],
                [<ore:ingotGold>, <chisel:basaltextra:7>, <ore:ingotGold>],
                [null, <ore:dustRedstone>, null]]);

