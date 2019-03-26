// bucket can be crafted via tinkers
recipes.remove(<minecraft:bucket>);

// make ender bucket require a bucket
recipes.remove(<randomthings:enderbucket>);
recipes.addShaped(<randomthings:enderbucket>, [[null, null, null],[<minecraft:iron_ingot>, <minecraft:ender_pearl>, <minecraft:iron_ingot>], [null, <minecraft:bucket>, null]]);
