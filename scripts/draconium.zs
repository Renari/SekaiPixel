import mods.nuclearcraft.infuser;
import mods.nuclearcraft.dissolver;

<pewter:pewterfluid>.displayName = "Ionized Draconium";
dissolver.addRecipe([<extraplanets:tier7_items:7>, <liquid:nitrogen_fluid> * 1000, <liquid:pewterfluid> * 1000, 2.0, 80.0, 5]);
infuser.addRecipe([<extraplanets:tier5_items:5>, <liquid:pewterfluid> * 1000, <draconicevolution:draconium_ingot>, 2.0, 80.0, 5]);
