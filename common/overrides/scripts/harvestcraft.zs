recipes.remove(<harvestcraft:saucepanItem>);

recipes.addShaped(<harvestcraft:saucepanItem>,
    [[null, <ore:plateCopper>, null],
     [null, <ore:stickWood>, null],
     [null, null, null]]);
recipes.addShaped(<harvestcraft:saucepanItem>,
    [[null, <ore:plateSteel>, null],
     [null, <ore:stickWood>, null],
     [null, null, null]]);
recipes.addShaped(<harvestcraft:saucepanItem>,
    [[null, <ore:plateIron>, null],
     [null, <ore:stickWood>, null],
     [null, null, null]]);

# Recipe clashes with salt recipe, and can be made in presser. Reported,
# remove once fixed and updated.
recipes.remove(<harvestcraft:bubblywaterItem>);
