import mods.jei.JEI;
import crafttweaker.item.IItemStack;

var toHide as IItemStack[] = [
  // enderio items
  <enderio:item_travel_staff>,
  <enderio:item_rod_of_return>,
  <enderio:item_magnet>,
  <enderio:block_enchanter>,
  <enderio:block_travel_anchor>,
  <enderio:block_tele_pad>,
  <enderio:block_dialing_device>,
  <enderio:item_dark_steel_helmet>,
  <enderio:item_dark_steel_chestplate>,
  <enderio:item_dark_steel_leggings>,
  <enderio:item_dark_steel_boots>,
  <enderio:item_dark_steel_sword>,
  <enderio:item_dark_steel_pickaxe>,
  <enderio:item_dark_steel_axe>,
  <enderio:item_dark_steel_bow>,
  <enderio:item_dark_steel_shears>,
  <enderio:item_dark_steel_crook>,
  <enderio:item_end_steel_boots>,
  <enderio:item_end_steel_leggings>,
  <enderio:item_end_steel_chestplate>,
  <enderio:item_end_steel_helmet>,
  <enderio:item_end_steel_bow>,
  <enderio:item_end_steel_axe>,
  <enderio:item_end_steel_pickaxe>,
  <enderio:item_end_steel_sword>,
  <enderio:item_dark_steel_hand>,
  <enderio:item_material:6>,
  <enderio:item_material:7>,

  // creative items
  <enderio:block_creative_spawner>,
  <enderio:block_cap_bank:0>,
  <enderio:block_buffer:3>,
  <theoneprobe:creativeprobe>,
  <netherendingores:creative_tab>,
  <minecraft:barrier>,
  <minecraft:command_block>,
  <minecraft:repeating_command_block>,
  <minecraft:chain_command_block>,
  <minecraft:structure_void>,
  <minecraft:structure_block>,
  <minecraft:written_book>,
  <minecraft:fireworks>,
  <minecraft:command_block_minecart>,
  <minecraft:knowledge_book>,
  <minecraft:filled_map>,
  <pixelmon:pixelmon_spawner>,
  <minecraft:mob_spawner>,

  // portals
  <randomportals:upside_down_end_portal_frame>,
  <randomportals:vertical_end_portal_frame>,
  <randomportals:vertical_end_portal>,
  <randomportals:upside_down_end_portal>,
  <randomportals:white_vertical_nether_portal>,
  <randomportals:white_lateral_nether_portal>,
  <randomportals:orange_vertical_nether_portal>,
  <randomportals:orange_lateral_nether_portal>,
  <randomportals:magenta_vertical_nether_portal>,
  <randomportals:magenta_lateral_nether_portal>,
  <randomportals:light_blue_vertical_nether_portal>,
  <randomportals:light_blue_lateral_nether_portal>,
  <randomportals:green_lateral_nether_portal>,
  <randomportals:red_vertical_nether_portal>,
  <randomportals:red_lateral_nether_portal>,
  <randomportals:black_vertical_nether_portal>,
  <randomportals:black_lateral_nether_portal>,
  <randomportals:silver_lateral_nether_portal>,
  <randomportals:cyan_vertical_nether_portal>,
  <randomportals:cyan_lateral_nether_portal>,
  <randomportals:purple_lateral_nether_portal>,
  <randomportals:blue_vertical_nether_portal>,
  <randomportals:blue_lateral_nether_portal>,
  <randomportals:brown_vertical_nether_portal>,
  <randomportals:brown_lateral_nether_portal>,
  <randomportals:green_vertical_nether_portal>,
  <randomportals:yellow_vertical_nether_portal>,
  <randomportals:yellow_lateral_nether_portal>,
  <randomportals:lime_vertical_nether_portal>,
  <randomportals:lime_lateral_nether_portal>,
  <randomportals:pink_vertical_nether_portal>,
  <randomportals:pink_lateral_nether_portal>,
  <randomportals:gray_vertical_nether_portal>,
  <randomportals:gray_lateral_nether_portal>,
  <randomportals:silver_vertical_nether_portal>,
  <minecraft:end_portal>,
  <minecraft:portal>,
  <minecraft:end_gateway>,


  // recurrent complex
  <reccomplex:block_selector>,
  <reccomplex:block_selector_floating>,
  <reccomplex:inventory_generation_tag>,
  <reccomplex:inventory_generation_component_tag>,
  <reccomplex:artifact_generation_tag>,
  <reccomplex:generic_space>,
  <reccomplex:generic_solid>,
  <reccomplex:spawn_script>,
  <reccomplex:maze_generator>,
  <reccomplex:weighted_command_block>,

  // evolved enderman soul vials aren't in the creative inventory
  <enderio:item_soul_vial:1>.withTag({entityId: "endermanevo:enderman_evolved"}),
  <enderio:item_soul_vial:1>.withTag({entityId: "endermanevo:frienderman"}),
  <enderio:item_soul_vial:1>.withTag({entityId: "endermanevo:evolved_endermite"}),

  // ae2 slightly grown seeds
  <appliedenergistics2:crystal_seed>.withTag({progress: 200}),
  <appliedenergistics2:crystal_seed>.withTag({progress: 400})
  <appliedenergistics2:crystal_seed:600>.withTag({progress: 800}),
  <appliedenergistics2:crystal_seed:600>.withTag({progress: 1000}),
  <appliedenergistics2:crystal_seed:1200>.withTag({progress: 1400}),
  <appliedenergistics2:crystal_seed:1200>.withTag({progress: 1600}),

  // evolved enderman spawn eggs
  <minecraft:spawn_egg>.withTag({EntityTag: {id: "endermanevo:enderman_evolved"}}),
  <minecraft:spawn_egg>.withTag({EntityTag: {id: "endermanevo:frienderman"}}),
  <minecraft:spawn_egg>.withTag({EntityTag: {id: "endermanevo:evolved_endermite"}}),

  // unused flours
  <enderio:item_material:21>,
  <appliedenergistics2:material:4>,

  // jaopca coins
  <jaopca:item_coinaluminium>,
  <jaopca:item_coinboron>,
  <jaopca:item_coincopper>,
  <jaopca:item_coingold>,
  <jaopca:item_coiniron>,
  <jaopca:item_coinlead>,
  <jaopca:item_coinlithium>,
  <jaopca:item_coinmagnesium>,
  <jaopca:item_cointhorium>,
  <jaopca:item_coinuranium>,
  <jaopca:item_cointin>,

  // architecturecraft shapes
  <architecturecraft:shape>,

  // items not used in any crafting
  <endermanevo:ender_flower>,
  <vanillafoodpantry:iron_stomach>,
  <vanillafoodpantry:ink_pearl>
];
hide(toHide);


//Ender IO Soul Vial's and broken spawners
JEI.hide(<enderio:item_broken_spawner:*>);
for soul in <enderio:item_soul_vial>.definition.getSubItems(<creativetab:enderio.mobs>) {
    if (soul.hasTag) {
        JEI.hide(soul);
    }
}


// JEI.hide all spawn eggs from the misc creative tab
for egg in <minecraft:spawn_egg>.definition.getSubItems(<creativetab:misc>) {
    JEI.hide(egg);
}

// AE2 Facades
val baseFacade = <appliedenergistics2:facade>.withTag({damage: 0, item: "minecraft:stone"});
for facade in <appliedenergistics2:facade>.definition.subItems {
    if (facade.hasTag && !(baseFacade.matchesExact(facade))) {
        JEI.hide(facade);
    }
}

// Extra Cells fluid patterns
hideFilledContainers(<extracells:pattern.fluid>);

function hideFilledContainers(container as IItemStack) {
    for c in container.definition.subItems {
        if (c.hasTag) {
            JEI.hide(c);
        }
    }
}

function hide(items as IItemStack[]) {
    for item in items {
        JEI.hide(item);
    }
}
