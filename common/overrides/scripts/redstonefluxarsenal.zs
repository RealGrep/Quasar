# It is extremely annoying that it smelts iron to dark ingots when making
# EIO alloys like pulsating iron. So we will use dark steel ingots instead.
furnace.remove(<redstonefluxarsenal:itemrfdarkingot>);

recipes.remove(<redstonefluxarsenal:itemrfenergizedingot>);

recipes.addShaped(<redstonefluxarsenal:itemrfenergizedingot>,
    [[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
     [<minecraft:redstone>, <enderio:itemAlloy:6>, <minecraft:redstone>],
     [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]]);

