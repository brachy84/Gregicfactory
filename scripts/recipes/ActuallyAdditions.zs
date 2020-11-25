print("--- loading ActuallyAdditions.zs ---");
	
# *======= Empowerer =======*
	
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:1> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:2> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:3> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:4> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:5> * 4);



//Empowered Restonia
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_restonia_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered>, <actuallyadditions:block_crystal>, <ore:gemAlmandine>.firstItem, <ore:ingotRedAlloy>.firstItem, <metaitem:fluid_cell>.withTag({Fluid: {FluidName: "sulfuric_acid", Amount: 1000}}), <extendedcrafting:material:19>, 1000000, 400);

//Empowered Restonia Gear
mods.actuallyadditions.Empowerer.addRecipe(<moreplates:empowered_restonia_gear>, <moreplates:restonia_gear>, <ore:blockAlmandine>.firstItem, <ore:blockRedAlloy>.firstItem, <metaitem:fluid_cell>.withTag({Fluid: {FluidName: "tritium", Amount: 1000}}), <extendedcrafting:material:13>, 1000000, 400);




//Empowered Palis 
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:1>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:1>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_palis_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:1>, <actuallyadditions:block_crystal:1>, <ore:gemSapphire>.firstItem, <thermalfoundation:material:136>, <metaitem:fluid_cell>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <extendedcrafting:material:16>, 1000000, 400);

//Empowered Palis Gear
mods.actuallyadditions.Empowerer.addRecipe(<moreplates:empowered_palis_gear>, <moreplates:palis_gear>, <ore:blockSapphire>.firstItem, <thermalfoundation:storage:8>, <metaitem:fluid_cell>.withTag({Fluid: {FluidName: "osmiridium", Amount: 1000}}), <extendedcrafting:material:10>, 1000000, 400);




//Empowered Enori
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:5>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:5>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_enori_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:5>, <actuallyadditions:block_crystal:5>, <ore:gemApatite>.firstItem, <enderio:item_alloy_ingot:8>, <metaitem:fluid_cell>.withTag({Fluid: {FluidName: "helium", Amount: 1000}}), <extendedcrafting:material:14>, 1000000, 400);

//Empowered Enori Gear
mods.actuallyadditions.Empowerer.addRecipe(<moreplates:empowered_enori_gear>, <moreplates:enori_gear>, <ore:blockApatite>.firstItem, <enderio:block_alloy:8>, <metaitem:fluid_cell>.withTag({Fluid: {FluidName: "helium3", Amount: 1000}}), <extendedcrafting:material:8>, 1000000, 400);




//Empowered Void Crystal
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:3>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:3>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_void_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:3>, <actuallyadditions:block_crystal:3>, <actuallyadditions:item_misc:5>, <enderio:item_alloy_ingot:6>, <metaitem:fluid_cell>.withTag({Fluid: {FluidName: "carbon", Amount: 1000}}), <extendedcrafting:material:15>, 1000000, 400);

//Empowered Void Crystal Gear
mods.actuallyadditions.Empowerer.addRecipe(<moreplates:empowered_void_gear>, <moreplates:void_gear>, <actuallyadditions:block_misc:2>, <enderio:block_alloy:6>, <metaitem:fluid_cell>.withTag({Fluid: {FluidName: "naquadria", Amount: 1000}}), <extendedcrafting:material:9>, 1000000, 400);




//Empowered Diamatine
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:2>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:2>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_diamatine_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:block_crystal:2>, <extendedcrafting:material:40>, <extendedcrafting:material:24>, <metaitem:fluid_cell>.withTag({Fluid: {FluidName: "nitrogen_dioxide", Amount: 1000}}), <extendedcrafting:material:18>, 1000000, 400);

//Empowered Diamatine Gear
mods.actuallyadditions.Empowerer.addRecipe(<moreplates:empowered_diamatine_gear>, <moreplates:diamatine_gear>, <extendedcrafting:storage:6>, <extendedcrafting:storage:3>, <metaitem:fluid_cell>.withTag({Fluid: {FluidName: "noble_gases", Amount: 1000}}), <extendedcrafting:material:12>, 1000000, 400);




//Empowered Emerald
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:4>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:4>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_emeradic_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:4>, <actuallyadditions:block_crystal:4>, <contenttweaker:stabilizeduranium>, <enderio:item_alloy_ingot:2>, <metaitem:fluid_cell>.withTag({Fluid: {FluidName: "argon", Amount: 1000}}), <extendedcrafting:material:17>, 1000000, 400);

//Empowered Emerald Gear
mods.actuallyadditions.Empowerer.addRecipe(<moreplates:empowered_emeradic_gear>, <moreplates:emeradic_gear>, <gregtech:compressed_3:12>, <enderio:block_alloy:2>, <metaitem:fluid_cell>.withTag({Fluid: {FluidName: "krypton", Amount: 1000}}), <extendedcrafting:material:11>, 1000000, 400);
	
//Snad	
recipes.remove(<snad:snad>);
recipes.remove(<snad:snad:1>);
recipes.addShaped(<snad:snad>, [[<extrautils2:compressedsand:1>],[<extrautils2:compressedsand:1>]]);

	
	
//Long Range Breaker
recipes.remove(<actuallyadditions:block_directional_breaker>);
recipes.addShaped(<actuallyadditions:block_directional_breaker>, [
[<ore:plateVibrantAlloy>,<actuallyadditions:block_crystal:2>,<ore:plateVibrantAlloy>], 
[<actuallyadditions:block_breaker>,<actuallyadditions:block_breaker>,<actuallyadditions:block_breaker>], 
[<ore:plateVibrantAlloy>,<actuallyadditions:block_crystal:4>,<ore:plateVibrantAlloy>]]);	
	
//AA Ender Pearl Block
recipes.remove(<actuallyadditions:block_misc:6>);	
recipes.remove(<actuallyadditions:block_phantomface>);	
recipes.addShaped(<actuallyadditions:block_phantomface>, [
[null, <ore:chestWood>, null], 
[<actuallyadditions:item_crystal_empowered:2>, <ore:blockEnderPearl>, <actuallyadditions:item_crystal_empowered:2>], 
[null, <actuallyadditions:item_misc:8>, null]]);
	
//AA Iron Casing
recipes.remove(<actuallyadditions:block_misc:9>);	
recipes.addShaped(<actuallyadditions:block_misc:9>, [
[<ore:plateAluminium>,<ore:plateAluminium>,<ore:plateAluminium>], 
[<ore:plateAluminium>,<actuallyadditions:item_misc:5>,<ore:plateAluminium>], 
[<ore:plateAluminium>,<ore:plateAluminium>,<ore:plateAluminium>]]);
<actuallyadditions:block_misc:9>.displayName = "Aluminium Casing";	

//AA Atomic Reconstructor	
recipes.remove(<actuallyadditions:block_atomic_reconstructor>);	
recipes.addShaped(<actuallyadditions:block_atomic_reconstructor>, [
[<ore:plateLead>,<ore:plateLead>,<metaitem:emitter.mv>], 
[<ore:plateLead>,<actuallyadditions:block_misc:9>,<ore:lensEnderEye>], 
[<ore:plateLead>,<ore:plateLead>,<metaitem:emitter.mv>]]);

//Display Stand
recipes.remove(<actuallyadditions:block_display_stand>);	
recipes.addShaped(<actuallyadditions:block_display_stand>, [
[<ore:stickDarkSteel>,<ore:plateVibrantAlloy>,<ore:stickDarkSteel>], 
[<ore:plateVibrantAlloy>,<actuallyadditions:block_misc:9>,<ore:plateVibrantAlloy>], 
[<ore:stickDarkSteel>,<ore:plateVibrantAlloy>,<ore:stickDarkSteel>]]);

//Empowerer
recipes.remove(<actuallyadditions:block_empowerer>);	
recipes.addShaped(<actuallyadditions:block_empowerer>, [
[<ore:plateTungstenCarbide>,<actuallyadditions:block_crystal:5>,<ore:plateTungstenCarbide>], 
[<actuallyadditions:block_crystal:5>,<actuallyadditions:block_display_stand>,<actuallyadditions:block_crystal:5>], 
[<ore:plateTungstenCarbide>,<actuallyadditions:block_crystal:5>,<ore:plateTungstenCarbide>]]);

//Basic Coil
recipes.remove(<actuallyadditions:item_misc:7>);	
recipes.addShaped(<actuallyadditions:item_misc:7>, [
[null,<ore:wireGtSingleConductiveIron>,<actuallyadditions:item_crystal>], 
[<ore:wireGtSingleConductiveIron>,<actuallyadditions:item_crystal>,<ore:wireGtSingleConductiveIron>], 
[<actuallyadditions:item_crystal>,<ore:wireGtSingleConductiveIron>,null]]);

//Advanced Coil
recipes.remove(<actuallyadditions:item_misc:8>);	
recipes.addShaped(<actuallyadditions:item_misc:8>, [
[<ore:wireGtSingleEnergeticAlloy>,<ore:wireGtSingleEnergeticAlloy>,<ore:wireGtSingleEnergeticAlloy>], 
[<ore:wireGtSingleEnergeticAlloy>,<actuallyadditions:item_misc:7>,<ore:wireGtSingleEnergeticAlloy>], 
[<ore:wireGtSingleEnergeticAlloy>,<ore:wireGtSingleEnergeticAlloy>,<ore:wireGtSingleEnergeticAlloy>]]);

//XU2 Machine Block
recipes.removeByRecipeName("extrautils2:machine_base");
recipes.addShaped(<extrautils2:machine>, [
[<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>], 
[<ore:plateSteel>,<actuallyadditions:item_misc:5>,<ore:plateSteel>], 
[<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>]]);		
	
var furnGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator"});
var redPlate = <ore:plateRedAlloy>;

//XU2 Generators
recipes.remove(furnGen);
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}));	

recipes.addShaped(furnGen, [
	[<ore:plateWroughtIron>,<ore:plateWroughtIron>,<ore:plateWroughtIron>],
	[<ore:plateWroughtIron>,<minecraft:furnace>,<ore:plateWroughtIron>],
	[redPlate,redPlate,redPlate]]);

recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}), [
	[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>], 
	[<minecraft:cobblestone>, <extrautils2:machine>, <minecraft:cobblestone>], 
	[redPlate, furnGen, redPlate]]);

recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}), [
	[<minecraft:potato>, <minecraft:potato>, <minecraft:potato>], 
	[<minecraft:potato>, <extrautils2:machine>, <minecraft:potato>], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}), [
	[<minecraft:lava_bucket:*>, <ore:plateGold>, <minecraft:lava_bucket:*>], 
	[<ore:plateGold>, <extrautils2:machine>, <ore:plateGold>], 
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}), [
	[redPlate, <ore:blockCobaltBrass>, redPlate], 
	[redPlate, <extrautils2:machine>, redPlate], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}), [
	[<ore:plateEnderPearl>, <ore:blockCobaltBrass>, <ore:plateEnderPearl>], 
	[<ore:plateEnderPearl>, <extrautils2:machine>, <ore:plateEnderPearl>], 
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}), [
	[<minecraft:brewing_stand:*>,<minecraft:brewing_stand:*>,<minecraft:brewing_stand:*>], 
	[<minecraft:brewing_stand:*>,<extrautils2:machine>,<minecraft:brewing_stand:*>], 
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}), [
	[<minecraft:dye:9>, <minecraft:dye:9>, <minecraft:dye:9>], 
	[<minecraft:dye:9>, <extrautils2:machine>, <minecraft:dye:9>], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}), [
	[<extrautils2:redstoneclock>,<extrautils2:redstoneclock>,<extrautils2:redstoneclock>], 
	[<extrautils2:redstoneclock>,<extrautils2:machine>,<extrautils2:redstoneclock>], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}), [
	[<ore:plateEnergeticAlloy>,<ore:blockPaper>,<ore:plateEnergeticAlloy>], 
	[<ore:plateEnergeticAlloy>,<extrautils2:machine>,<ore:plateEnergeticAlloy>], 
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}), [
	[<minecraft:slime>,<minecraft:slime>,<minecraft:slime>],
	[<minecraft:slime>,<extrautils2:machine>,<minecraft:slime>],
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}), [
	[<ore:plateEndSteel>,<enderio:item_material:42>,<ore:plateEndSteel>],
	[<ore:plateEndSteel>,<extrautils2:machine>,<ore:plateEndSteel>],
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}), [
	[<minecraft:enchanting_table:*>,<minecraft:enchanting_table:*>,<minecraft:enchanting_table:*>], 
	[<minecraft:enchanting_table:*>,<extrautils2:machine>,<minecraft:enchanting_table:*>], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}), [
	[<minecraft:purpur_block:*>, <minecraft:end_rod:*>, <minecraft:purpur_block:*>], 
	[<minecraft:purpur_block:*>, <extrautils2:machine>, <minecraft:purpur_block:*>], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}), [
	[<minecraft:ice:*>,<minecraft:ice:*>,<minecraft:ice:*>], 
	[<minecraft:ice:*>,<extrautils2:machine>,<minecraft:ice:*>], 
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<draconicevolution:generator>, [
	[<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>], 
	[<draconicevolution:draconium_ingot>,<extrautils2:machine>,<draconicevolution:draconium_ingot>], 
	[<gregtech:compressed_11>, furnGen, <gregtech:compressed_11>]]);
		
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}), [
	[<ore:plateNetherStar>,<ore:plateNetherStar>,<ore:plateNetherStar>], 
	[<ore:plateNetherStar>,<extrautils2:machine>,<ore:plateNetherStar>], 
	[<gregtech:compressed_11>, <draconicevolution:generator>, <gregtech:compressed_11>]]);
	
	
	
	
	
//Resonator
recipes.remove(<extrautils2:resonator>);
recipes.addShaped(<extrautils2:resonator>, [
	[<extrautils2:ingredients>, <ore:plateRedAlloy>, <extrautils2:ingredients>], 
	[<ore:plateRedAlloy>, <extrautils2:machine>,<ore:plateRedAlloy>], 
	[<extrautils2:ingredients>, <ore:plateRedAlloy>, <extrautils2:ingredients>]]);

//Farmer
recipes.remove(<actuallyadditions:block_farmer>);
recipes.addShaped(<actuallyadditions:block_farmer>, [
	[<actuallyadditions:block_crystal:3>, <minecraft:wheat_seeds>, <actuallyadditions:block_crystal:3>], 
	[<enderio:item_material:73>, <actuallyadditions:block_misc:9>, <enderio:item_material:73>], 
	[<actuallyadditions:block_crystal:3>, <enderio:item_material:73>, <actuallyadditions:block_crystal:3>]]);

//Drill
recipes.remove(<actuallyadditions:item_drill:3>);
recipes.addShaped(<actuallyadditions:item_drill:3>, [
	[<actuallyadditions:block_crystal:3>, <actuallyadditions:block_crystal:2>, <ore:toolHeadDrillDiamond>], 
	[<ore:gearEnergeticAlloy>, <actuallyadditions:item_misc:16>, <actuallyadditions:block_crystal:2>], 
	[<enderio:block_alloy:1>, <ore:gearEnergeticAlloy>, <actuallyadditions:block_crystal:3>]]);	
	
//Drill Core
recipes.remove(<actuallyadditions:item_misc:16>);
<actuallyadditions:item_misc:16>.addTooltip(format.red("Acquired by exploration of Lost Cities buildings or vanilla dungeons."));
<actuallyadditions:item_misc:16>.addTooltip(format.red("Also can be purchased for Omnicoins."));

//Vertical Digger	
recipes.remove(<actuallyadditions:block_miner>);
recipes.addShaped(<actuallyadditions:block_miner>, [
	[<actuallyadditions:block_misc:9>, <gregtech:meta_tool:23>, <actuallyadditions:block_misc:9>], 
	[<actuallyadditions:block_crystal:3>, <thermalinnovation:drill:2>, <actuallyadditions:block_crystal:3>], 
	[<actuallyadditions:block_misc:9>, <actuallyadditions:item_drill:*>, <actuallyadditions:block_misc:9>]]);
	
//Ender Casing
recipes.remove(<actuallyadditions:block_misc:8>);	
recipes.addShaped(<actuallyadditions:block_misc:8>, [
	[<ore:plateEnderPearl>, <ore:platePulsatingIron>, <ore:plateEnderPearl>],
	[<ore:platePulsatingIron>, <actuallyadditions:block_misc:2>, <ore:platePulsatingIron>], 
	[<ore:plateEnderPearl>, <ore:platePulsatingIron>, <ore:plateEnderPearl>]]);
	
	
	
//TE Drill
recipes.addShapeless(<thermalfoundation:material:640>, [<actuallyadditions:item_misc:16>]);
recipes.addShapeless(<thermalfoundation:material:656>, [<gregtech:meta_item_2:8183>]);
	
	
//medium crate
recipes.remove(<actuallyadditions:block_giant_chest_medium>);
recipes.remove(<actuallyadditions:block_giant_chest_large>);
recipes.addShaped(<actuallyadditions:block_giant_chest_medium>, [
	[<actuallyadditions:block_crystal:2>, <ore:plankWood>, <actuallyadditions:block_crystal:2>], 
	[<actuallyadditions:block_giant_chest>,<ore:plankWood>, <actuallyadditions:block_giant_chest>], 
	[<actuallyadditions:block_crystal:2>, <ore:plankWood>, <actuallyadditions:block_crystal:2>]]);
	
recipes.addShaped(<actuallyadditions:block_giant_chest_large>, [
	[<actuallyadditions:block_crystal_empowered:2>, <ore:plankWood>, <actuallyadditions:block_crystal_empowered:2>], 
	[<actuallyadditions:block_giant_chest_medium>,<actuallyadditions:block_giant_chest_medium>,<actuallyadditions:block_giant_chest_medium>], 
	[<actuallyadditions:block_crystal_empowered:2>, <ore:plankWood>, <actuallyadditions:block_crystal_empowered:2>]]);
	
	
recipes.remove(<extrautils2:passivegenerator>);	
recipes.remove(<extrautils2:passivegenerator:1>);	
recipes.remove(<extrautils2:passivegenerator:2>);	
recipes.remove(<extrautils2:passivegenerator:3>);	
recipes.remove(<extrautils2:passivegenerator:4>);	
recipes.remove(<extrautils2:passivegenerator:5>);	
recipes.remove(<extrautils2:passivegenerator:8>);	
recipes.remove(<extrautils2:chunkloader>);	

//GP Solar
recipes.addShaped(<extrautils2:passivegenerator>, [
	[null,<solarflux:solar_panel_1>,null], 
	[<extrautils2:decorativesolid:2>, <extrautils2:ingredients>, <extrautils2:decorativesolid:2>]]);

//GP Lunar
recipes.addShaped(<extrautils2:passivegenerator:1>, [
	[null, <extrautils2:ingredients:3>, null], 
	[<extrautils2:ingredients:3>,<extrautils2:passivegenerator>,<extrautils2:ingredients:3>],
	[null, <extrautils2:ingredients:3>, null]]);
	
//Lava Mill
recipes.addShaped(<extrautils2:passivegenerator:2>, [
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients:1>, <extrautils2:decorativesolid:3>], 
	[<extrautils2:ingredients>, <meta_tile_entity:gregtech:hull.mv>, <extrautils2:ingredients>], 
	[<extrautils2:decorativesolid:3>, <armorplus:block_infused_lava_crystal>, <extrautils2:decorativesolid:3>]]);
	
//Water Mill
recipes.addShaped(<extrautils2:passivegenerator:3>, [
	[<extrautils2:decorativesolid:3>,  <extrautils2:ingredients:1>, <extrautils2:decorativesolid:3>], 
	[<metaitem:electric.pump.mv>, <meta_tile_entity:gregtech:hull.mv>, <metaitem:electric.pump.mv>], 
	[<extrautils2:decorativesolid:3>,  <extrautils2:ingredients:1>, <extrautils2:decorativesolid:3>]]);
	
//Wind Mill	
recipes.addShaped(<extrautils2:passivegenerator:4>, [
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients>, <extrautils2:decorativesolid:3>], 
	[<ore:rotorSteel>, <extrautils2:ingredients:1>, <meta_tile_entity:gregtech:hull.mv>], 
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients>, <extrautils2:decorativesolid:3>]]);
	
//Fire Mill
recipes.addShaped(<extrautils2:passivegenerator:5>, [
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients:1>, <extrautils2:decorativesolid:3>], 
	[<extrautils2:ingredients>, <meta_tile_entity:gregtech:hull.mv>, <extrautils2:ingredients>], 
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients:13>, <extrautils2:decorativesolid:3>]]);
	
//Chunk Loader
recipes.addShaped(<extrautils2:chunkloader>, [
	[<ore:stickEnergeticAlloy>, <extrautils2:ingredients:2>, <ore:stickEnergeticAlloy>], 
	[<ore:stickEnergeticAlloy>, <enderio:block_alloy:1>, <ore:stickEnergeticAlloy>], 
	[null, <enderio:block_alloy:1>, null]]);

//Dragon Mill
recipes.addShaped(<extrautils2:passivegenerator:8>, [
	[<ore:blockTitanium>,<ore:blockTitanium>,<ore:blockTitanium>], 
	[<extrautils2:ingredients:2>, <extendedcrafting:storage:2>, <extrautils2:ingredients:2>], 
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients:2>, <extrautils2:decorativesolid:3>]]);
	
//Iron Drum
recipes.removeByRecipeName("extrautils2:drum_256");
recipes.addShaped(<extrautils2:drum:1>, [
	[<ore:plateWroughtIron>, <minecraft:heavy_weighted_pressure_plate:*>, <ore:plateWroughtIron>], 
	[<ore:plateWroughtIron>, <minecraft:cauldron:*>, <ore:plateWroughtIron>], 
	[<ore:plateWroughtIron>, <minecraft:heavy_weighted_pressure_plate:*>, <ore:plateWroughtIron>]]);
	
//Reinforced Drum
recipes.removeByRecipeName("extrautils2:drum_4096");
recipes.addShaped(<extrautils2:drum:2>, [
							  #Stainless Steel Drum
	[<ore:plateVibrantAlloy>, <gregtech:machine:2198>, <ore:plateVibrantAlloy>], 
	[<ore:plateVibrantAlloy>, <extrautils2:drum:1>, <ore:plateVibrantAlloy>], 
	[<ore:plateVibrantAlloy>, <gregtech:machine:2198>, <ore:plateVibrantAlloy>]]);
	
//Demonic	
recipes.removeByRecipeName("extrautils2:drum_65536");
mods.extendedcrafting.TableCrafting.addShaped(<extrautils2:drum:3>,[
	[<extrautils2:simpledecorative:1>,<moreplates:demon_plate>,<moreplates:demon_plate>,<moreplates:demon_plate>,<extrautils2:simpledecorative:1>],
	[<extrautils2:simpledecorative:1>,<gregtech:machine:2199>/*Titanium Drum*/,<gregtech:machine:2199>,<gregtech:machine:2199>,<extrautils2:simpledecorative:1>],
	[<extrautils2:simpledecorative:1>,<gregtech:machine:2199>,<extrautils2:drum:2>,<gregtech:machine:2199>,<extrautils2:simpledecorative:1>],
	[<extrautils2:simpledecorative:1>,<gregtech:machine:2199>,<gregtech:machine:2199>,<gregtech:machine:2199>,<extrautils2:simpledecorative:1>],
	[<extrautils2:simpledecorative:1>,<moreplates:demon_plate>,<moreplates:demon_plate>,<moreplates:demon_plate>,<extrautils2:simpledecorative:1>]]);		
	
//Solar
recipes.remove(<actuallyadditions:block_furnace_solar>);
recipes.addShaped(<actuallyadditions:block_furnace_solar>, [
	[<extrautils2:ingredients>, <solarflux:solar_panel_1>, <extrautils2:ingredients>],
	[null,<extrautils2:decorativesolid:3>,null]]);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	print("--- ActuallyAdditions.zs initialized ---");