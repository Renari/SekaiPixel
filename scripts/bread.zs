import mods.appliedenergistics2.Grinder;
import mods.enderio.SagMill;

# remove 3x wheat -> bread recipe
recipes.removeShaped(<minecraft:bread>, [[<minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>]]);

# vanillafoodpantry flour oredict entry
<ore:dustWheat>.addAll(<ore:foodFlour>);
<ore:foodFlour>.mirror(<ore:dustWheat>);

# remove vanillafoodpantry flour recipe
recipes.removeShapeless(<vanillafoodpantry:flour_portion> * 2, [<minecraft:wheat>,<minecraft:wheat>,<vanillafoodpantry:drying_agent>]);
recipes.removeShapeless(<vanillafoodpantry:flour_portion>, [<minecraft:wheat>]);

# switch grinder to use vanillafoodpantry flour
Grinder.removeRecipe(<minecraft:wheat>);
Grinder.addRecipe(<vanillafoodpantry:flour_portion>, <minecraft:wheat>, 4);

# switch sag mill to use vanillafoodpantry flour
SagMill.removeRecipe(<minecraft:wheat>);
SagMill.addRecipe([<vanillafoodpantry:flour_portion>, <minecraft:wheat_seeds>], [1, 0.2], <minecraft:wheat>, "CHANCE_ONLY");

# cookies use flour
recipes.removeShaped(<minecraft:cookie> * 8, [[<minecraft:wheat>, <minecraft:dye:3>, <minecraft:wheat>]]);
recipes.addShaped(<minecraft:cookie> * 8, [[<ore:dustWheat>, <minecraft:dye:3>, <ore:dustWheat>]]);
recipes.removeShaped(<teastory:matcha_cookie> * 8, [[<minecraft:wheat>, <teastory:matcha_powder>, <minecraft:wheat>]]);
recipes.addShaped(<teastory:matcha_cookie> * 8, [[<ore:dustWheat>, <teastory:matcha_powder>, <ore:dustWheat>]]);

# cake uses flour
recipes.removeShaped(<minecraft:cake>, [[<minecraft:milk_bucket>, <minecraft:milk_bucket>, <minecraft:milk_bucket>],[<minecraft:sugar>, <minecraft:egg>, <minecraft:sugar>], [<minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>]]);
recipes.addShaped(<minecraft:cake>, [[<minecraft:milk_bucket>, <minecraft:milk_bucket>, <minecraft:milk_bucket>],[<minecraft:sugar>, <minecraft:egg>, <minecraft:sugar>], [<ore:dustWheat>, <ore:dustWheat>, <ore:dustWheat>]]);
