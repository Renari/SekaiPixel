import mods.enderio.SagMill;
import mods.mekanism.crusher;
import mods.nuclearcraft.manufactory;

// add pixelmon silicon to ore dictionary
<ore:itemSilicon>.add(<pixelmon:silicon>);

furnace.remove(<pixelmon:silicon>);

SagMill.addRecipe([<pixelmon:silicon> * 2, <pixelmon:silicon>], [1.0, 0.5], <pixelmon:silicon_ore>, "MULTIPLY_OUTPUT");
crusher.addRecipe(<pixelmon:silicon_ore>, <pixelmon:silicon> * 2);
manufactory.addRecipe([<pixelmon:silicon_ore>, <pixelmon:silicon>]);

recipes.remove(<pixelmon:mower>);
recipes.addShaped("pixelmon:mower", <pixelmon:mower>, [[<pixelmon:aluminium_ingot>, null, null], [<minecraft:hopper>, <pixelmon:aluminium_ingot>, <pixelmon:aluminium_ingot>], [<ore:itemSilicon>, <minecraft:shears>, <ore:itemSilicon>]]);
