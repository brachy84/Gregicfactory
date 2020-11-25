import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

/*

  EnderIO Removals

*/

// Construction Alloy Block
rh(<enderio:block_alloy:9>);
recipes.remove(<enderio:block_alloy:9>);

// Construction Alloy Ingot
rh(<enderio:item_alloy_ingot:9>);
recipes.remove(<enderio:item_alloy_ingot:9>);

// Construction Alloy Nugget
rh(<enderio:item_alloy_nugget:9>);
recipes.remove(<enderio:item_alloy_nugget:9>);

rh(<enderio:item_material:46>); // Clippings and Trimmings
rh(<enderio:item_material:47>); // Twigs and Prunings
rh(<enderio:item_material:75>); // Infinity Goop
rh(<enderio:item_material:76>); // Clay-Coated Glowstone
rh(<enderio:item_material:21>); // Flour
rh(<enderio:item_species_item_filter>); // Species Filter (Forestry)
<ore:dustWheat>.remove(<enderio:item_material:21>); // Flour

rh(<enderio:item_material:67>); // Enhanced Dye Blend
rh(<enderio:item_material:52>); // Soul-Attuned Dye
rh(<enderio:item_material:49>); // Organic Brown Dye
rh(<enderio:item_material:48>); // Organic Green Dye
rh(<enderio:item_material:51>); // Industrial Dye Blend
recipes.remove(<enderio:item_material:67>); // Enhanced Dye Blend
recipes.remove(<enderio:item_material:51>); // Industrial Dye Blend

rh(<enderio:item_material:55>);             // Soulless Chassis
recipes.remove(<enderio:item_material:55>); // Soulless Chassis
rh(<enderio:block_industrial_insulation>);  // Industrial Insulation

rh(<enderio:item_material:69>);             // Simple Chassis Parts
recipes.remove(<enderio:item_material:69>); // Simple Chassis Parts

// Get rid of useless ingots
val uselessIngots = [
    0   // "CrudeSteel"
    , 1 // "CrystallineAlloy"
    , 2 // "MelodicAlloy"
    , 4 // "CrystallinePinkSlime"
    , 6 // "VividAlloy"
] as int[];

val variants = [
    "block_alloy_endergy"
    , "item_alloy_endergy_nugget"
    , "item_alloy_endergy_ingot"
] as string[];

for metadata in uselessIngots {
    for variant in variants {
        var item = itemUtils.getItem("enderio:" + variant, metadata) as IItemStack;
        if (!isNull(item)) {
            recipes.remove(item);
            rh(item);
        }
    }
}

// Grinding Balls
for item in <enderio:item_alloy_ball:*>.items as IItemStack[] {
    rh(item);
    recipes.remove(item);
}

for item in <enderio:item_alloy_endergy_ball:*>.items as IItemStack[] {
    rh(item);
    recipes.remove(item);
}

var teBalls = [<enderio:item_material:57>, <enderio:item_material:58>, <enderio:item_material:59>] as IItemStack[];
for item in teBalls {
    rh(item);
    recipes.remove(item);
}

// Slice'n'Splice dead-ends
mods.enderio.SliceNSplice.removeRecipe(<enderio:item_material:40>);       // Zombie Electrode
mods.jei.JEI.removeAndHide(<enderio:item_material:40>);                   // Zombie Electrode

mods.enderio.SliceNSplice.removeRecipe(<enderio:item_capacitor_totemic>); // Totemic Capacitor
mods.jei.JEI.removeAndHide(<enderio:item_capacitor_totemic>);             // Totemic Capacitor

/*

  EnderIO Additions

*/

// Blank Dark Steel Upgrade
alloy.recipeBuilder()
    .inputs([<ore:plateDarkSteel>, <forestry:crafting_material>])
    .outputs([<enderio:item_dark_steel_upgrade>])
    .duration(100)
    .EUt(20)
    .buildAndRegister();

// Glowstone Nano-Particles
macerator.recipeBuilder()
    .inputs([<minecraft:glowstone_dust>])
    .outputs([<enderio:block_holy_fog>])
    .duration(100)
    .EUt(20)
    .buildAndRegister();

/*

  Solar Upgrades (Helmet)

*/

// Simple Solar
recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar"}));
recipes.addShapeless(
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar"})
    , [<enderio:item_dark_steel_upgrade>, <solarflux:solar_panel_1>]
);

// Solar
recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar1"}));
recipes.addShapeless(
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar1"})
    , [<enderio:item_dark_steel_upgrade>, <solarflux:solar_panel_2>]
);

// Solar II
recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar2"}));
recipes.addShapeless(
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar2"})
    , [<enderio:item_dark_steel_upgrade>, <solarflux:solar_panel_3>]
);

// Solar III
recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar3"}));
recipes.addShapeless(
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar3"})
    , [<enderio:item_dark_steel_upgrade>, <solarflux:solar_panel_4>]
);


/*

  Extra Enderio Glasses

*/

// Enlightened Quite Clear Glass
alloy.recipeBuilder()
    .inputs([<enderio:block_fused_glass:0>, <minecraft:glowstone>])
    .outputs([<enderio:block_enlightened_fused_glass:0>])
    .duration(160)
    .EUt(16)
    .buildAndRegister();

// Enlightened Fused Quartz
alloy.recipeBuilder()
    .inputs([<enderio:block_fused_quartz:0>, <minecraft:glowstone>])
    .outputs([<enderio:block_enlightened_fused_quartz:0>])
    .duration(160)
    .EUt(16)
    .buildAndRegister();

//Dark Fused Quarz
alloy.recipeBuilder()
    .inputs([<actuallyadditions:item_misc:5>, <enderio:block_fused_glass:*>])
    .outputs([<enderio:block_dark_fused_quartz:0>])
    .duration(200)
    .EUt(32)
    .buildAndRegister();	

recipes.addShaped(compressedoctadiccap, [
	[<enderio:item_basic_capacitor:2>,<enderio:item_basic_capacitor:2>,<enderio:item_basic_capacitor:2>],
	[<enderio:item_basic_capacitor:2>,<enderio:item_basic_capacitor:2>,<enderio:item_basic_capacitor:2>],
	[<enderio:item_basic_capacitor:2>,<enderio:item_basic_capacitor:2>,<enderio:item_basic_capacitor:2>]]);

recipes.addShaped(doublecompressedoctadiccap, [
	[compressedoctadiccap,compressedoctadiccap,compressedoctadiccap],
	[compressedoctadiccap,compressedoctadiccap,compressedoctadiccap],
	[compressedoctadiccap,compressedoctadiccap,compressedoctadiccap]]);
	
//Replace old compressed capacitors with functional ones
recipes.addShapeless(compressedoctadiccap, [<contenttweaker:compressedoctadiccapacitor>]);
recipes.addShapeless(doublecompressedoctadiccap, [<contenttweaker:doublecompressedoctadiccapacitor>]);

//An attempt to do the same in JEI
mods.jei.JEI.addItem(compressedoctadiccap);
mods.jei.JEI.addItem(doublecompressedoctadiccap);
<contenttweaker:compressedoctadiccapacitor>.addTooltip(format.white("Put the item into a crafting window if it has no lore"));
<contenttweaker:doublecompressedoctadiccapacitor>.addTooltip(format.white("Put the item into a crafting window if it has no lore"));

/*

  Extra Slice'n'Splice Recipes

*/

var bonus = 1 as int;
var cost  = 20000 as int;

for wafer in [<gregtech:meta_item_2:32441>, <gregtech:meta_item_2:32442>] as IItemStack[] {
    bonus = bonus * 2;
    cost  = cost  * 2;

    // Z-Logic Controller
    mods.enderio.SliceNSplice.addRecipe(<enderio:item_material:41> * bonus, [
        <enderio:item_alloy_ingot:7> , <minecraft:skull:2>  , <enderio:item_alloy_ingot:7>
        , wafer                      , <minecraft:redstone> , wafer
    ], cost);

    // Ender Resonator
    mods.enderio.SliceNSplice.addRecipe(<enderio:item_material:43> * bonus, [
        <enderio:item_alloy_ingot:7> , <enderio:block_enderman_skull> , <enderio:item_alloy_ingot:7>
        , wafer                      , <enderio:item_alloy_ingot:2>   , wafer
    ], cost);

    // Skeletal Contractor
    mods.enderio.SliceNSplice.addRecipe(<enderio:item_material:45> * bonus, [
        <enderio:item_alloy_ingot:7> , <minecraft:skull> , <enderio:item_alloy_ingot:7>
        , <minecraft:rotten_flesh>   , wafer             , <minecraft:rotten_flesh>
    ], cost);

    // Guardian Diode
    mods.enderio.SliceNSplice.addRecipe(<enderio:item_material:56> * bonus, [
        <enderio:item_alloy_ingot:1>      , <minecraft:prismarine_shard> , <enderio:item_alloy_ingot:1>
        , <minecraft:prismarine_crystals> , wafer                        , <minecraft:prismarine_crystals>
    ], cost);
}


//Alloy Smelter recipe for Organic Black Dye
alloy.recipeBuilder()
    .inputs(<minecraft:slime_ball>,<ore:dustCarbon>)
    .outputs(<enderio:item_material:50>)
    .duration(100)
    .EUt(16)
    .buildAndRegister();

//Ensure Correct Solidification

val liquidMap as IItemStack[][ILiquidStack] = {
    <liquid:electrical_steel> : [<enderio:item_alloy_ingot:0>, <enderio:block_alloy:0>, <enderio:item_alloy_nugget:0>],
    <liquid:energetic_alloy>  : [<enderio:item_alloy_ingot:1>, <enderio:block_alloy:1>, <enderio:item_alloy_nugget:1>],
    <liquid:vibrant_alloy>    : [<enderio:item_alloy_ingot:2>, <enderio:block_alloy:2>, <enderio:item_alloy_nugget:2>],
    <liquid:conductive_iron>  : [<enderio:item_alloy_ingot:4>, <enderio:block_alloy:4>, <enderio:item_alloy_nugget:4>],
    <liquid:pulsating_iron>   : [<enderio:item_alloy_ingot:5>, <enderio:block_alloy:5>, <enderio:item_alloy_nugget:5>],
    <liquid:dark_steel>       : [<enderio:item_alloy_ingot:6>, <enderio:block_alloy:6>, <enderio:item_alloy_nugget:6>],
    <liquid:end_steel>        : [<enderio:item_alloy_ingot:8>, <enderio:block_alloy:8>, <enderio:item_alloy_nugget:8>]
};

for liquid, items in liquidMap {

    //Ingots
    solidifier.findRecipe(8, [<gregtech:meta_item_1:32306>], [liquid * 144]).remove();
    solidifier.recipeBuilder()
        .fluidInputs(liquid * 144)
        .notConsumable(<gregtech:meta_item_1:32306>)
        .outputs(items[0])
        .duration(20).EUt(8).buildAndRegister();

    //Blocks
    solidifier.findRecipe(8, [<gregtech:meta_item_1:32308>], [liquid * 1296]).remove();
    solidifier.recipeBuilder()
        .fluidInputs(liquid * 1296)
        .notConsumable(<gregtech:meta_item_1:32308>)
        .outputs(items[1])
        .duration(98).EUt(8).buildAndRegister();

    //Nuggets
    solidifier.findRecipe(8, [<gregtech:meta_item_1:32309>], [liquid * 144]).remove();
    solidifier.recipeBuilder()
        .fluidInputs(liquid * 144)
        .notConsumable(<gregtech:meta_item_1:32309>)
        .outputs(items[2] * 9)
        .duration(98).EUt(8).buildAndRegister();
}


//Furnace Recipes
//End Steel
furnace.remove(<gregtech:meta_item_1:10712>, <gregtech:meta_item_1:2712>);
furnace.addRecipe(<enderio:item_alloy_ingot:8>, <gregtech:meta_item_1:2712>);

//Vibrant Alloy
furnace.remove(<gregtech:meta_item_1:10702>, <gregtech:meta_item_1:2702>);
furnace.addRecipe(<enderio:item_alloy_ingot:2>, <gregtech:meta_item_1:2702>);

//Pulsating Iron
furnace.remove(<gregtech:meta_item_1:10703>, <gregtech:meta_item_1:2703>);
furnace.addRecipe(<enderio:item_alloy_ingot:5>, <gregtech:meta_item_1:2703>);

//Energetic Alloy
furnace.remove(<gregtech:meta_item_1:10701>, <gregtech:meta_item_1:2701>);
furnace.addRecipe(<enderio:item_alloy_ingot:1>, <gregtech:meta_item_1:2701>);

//Electrical Steel
furnace.remove(<gregtech:meta_item_1:10705>, <gregtech:meta_item_1:2705>);
furnace.addRecipe(<enderio:item_alloy_ingot:0>, <gregtech:meta_item_1:2705>);

//Dark Steel
furnace.remove(<gregtech:meta_item_1:10704>, <gregtech:meta_item_1:2704>);
furnace.addRecipe(<enderio:item_alloy_ingot:6>, <gregtech:meta_item_1:2704>);