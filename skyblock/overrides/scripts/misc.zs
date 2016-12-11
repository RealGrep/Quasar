// This is here because I may need to delete it later, and don't want the
// script hanging around. So I use a misc category for it, and I can just
// blank it out if I need to. Temporary recipes should go here.

// Slime spawn egg
recipes.addShaped(<minecraft:spawn_egg>.withTag({EntityTag:{id:"Slime"}}),
    [[null, <minecraft:milk_bucket>.reuse(), null],
     [<ore:dyeLime>, <extrautils2:DecorativeSolidWood:1>, <ore:dyeLime>],
     [null, <minecraft:egg>, null]]);

// End portal frame - Move with NotEnoughWands moving wand.
recipes.addShaped(<minecraft:end_portal_frame>,
    [[<ore:endstone>, <ore:endstone>, <ore:endstone>],
     [<ore:endstone>, <minecraft:chorus_fruit_popped>, <ore:endstone>],
     [<ore:endstone>, <ore:endstone>, <ore:endstone>]]);
