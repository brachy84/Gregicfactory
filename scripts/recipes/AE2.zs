import mods.gregtech.recipe.RecipeMap;
import mods.appliedenergistics2.Inscriber;

//Silicon
Inscriber.removeRecipe(<appliedenergistics2:material:20>); 
Inscriber.addRecipe(<appliedenergistics2:material:20>, <ore:plateSilicon>, true, <appliedenergistics2:material:19>);

val primitiveCircuit = <metaitem:circuit.basic>;
val electronicCircuit = <metaitem:circuit.basic_electronic>;
	
//Engineering Processor	
Inscriber.removeRecipe(<appliedenergistics2:material:24>); 	
Inscriber.addRecipe(<appliedenergistics2:material:24>, primitiveCircuit, false, <appliedenergistics2:material:17>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:24>, electronicCircuit, false, <appliedenergistics2:material:17>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:24>, <contenttweaker:refinedcircuit>, false, <appliedenergistics2:material:17>,<appliedenergistics2:material:20>);	
Inscriber.removeRecipe(<appliedenergistics2:material:17>); 		
Inscriber.addRecipe(<appliedenergistics2:material:17>, <ore:plateDiamond>.firstItem, true, <appliedenergistics2:material:14>);		
	
//Calculation Processor
Inscriber.removeRecipe(<appliedenergistics2:material:23>); 	
Inscriber.addRecipe(<appliedenergistics2:material:23>, primitiveCircuit, false, <appliedenergistics2:material:16>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:23>, electronicCircuit, false, <appliedenergistics2:material:16>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:23>, <contenttweaker:refinedcircuit>, false, <appliedenergistics2:material:16>,<appliedenergistics2:material:20>);	
Inscriber.removeRecipe(<appliedenergistics2:material:16>); 		
Inscriber.addRecipe(<appliedenergistics2:material:16>, <ore:plateCertusQuartz>.firstItem, true, <appliedenergistics2:material:13>);	
	
//Logic Processor
Inscriber.removeRecipe(<appliedenergistics2:material:22>); 	
Inscriber.addRecipe(<appliedenergistics2:material:22>, primitiveCircuit, false, <appliedenergistics2:material:18>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:22>, electronicCircuit, false, <appliedenergistics2:material:18>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:22>, <contenttweaker:refinedcircuit>, false, <appliedenergistics2:material:18>,<appliedenergistics2:material:20>);	
Inscriber.removeRecipe(<appliedenergistics2:material:18>); 		
Inscriber.addRecipe(<appliedenergistics2:material:18>, <ore:plateGold>.firstItem, true, <appliedenergistics2:material:15>);		
	
//ME Drive
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>, [
	[<ore:plateAluminium>,<metaitem:emitter.mv>,<ore:plateAluminium>],
	[gt.getCirc("LV"),<appliedenergistics2:chest>,gt.getCirc("LV")],
	[<ore:plateAluminium>,<metaitem:sensor.mv>,<ore:plateAluminium>]]);	
	
//ME Inscriber
recipes.remove(<appliedenergistics2:inscriber>);
recipes.addShaped(<appliedenergistics2:inscriber>, [
	[<ore:plateDarkSteel>,<metaitem:electric.piston.mv>,<ore:plateDarkSteel>],
	[<appliedenergistics2:material:7>,<meta_tile_entity:gregtech:hull.mv>,<ore:plateDarkSteel>],
	[<ore:plateDarkSteel>,<metaitem:electric.piston.mv>,<ore:plateDarkSteel>]]);		
	
//Pattern
recipes.remove(<appliedenergistics2:material:52>);
recipes.addShaped(<appliedenergistics2:material:52> * 8, [
	[<ore:wireFineSilver>,<ore:wireFineSilver>,<ore:wireFineSilver>], 
	[<ore:platePlastic>,gt.getCirc("HV"),<ore:platePlastic>],
	[<ore:platePlastic>, <ore:platePlastic>, <ore:platePlastic>]]);	

//Crafting CPU
recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShaped(<appliedenergistics2:crafting_unit>, [
	[<ore:plateAluminium>, <appliedenergistics2:material:23>, <ore:plateAluminium>],
	[<appliedenergistics2:part:16>, <appliedenergistics2:material:22>, <appliedenergistics2:part:16>],
	[<ore:plateAluminium>, <appliedenergistics2:material:23>, <ore:plateAluminium>]]);
	
//Molecular Assembler
recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.addShaped(<appliedenergistics2:molecular_assembler>, [
	[<ore:plateAluminium>, <appliedenergistics2:quartz_glass>, <ore:plateAluminium>], 
	[<appliedenergistics2:material:44>, <enderio:block_crafter>, <appliedenergistics2:material:43>], 
	[<ore:plateAluminium>, <appliedenergistics2:quartz_glass>, <ore:plateAluminium>]]);
	
//Quartz Fiber
recipes.remove(<appliedenergistics2:part:140>);
wiremill.recipeBuilder().inputs([<appliedenergistics2:material:11>]).outputs(<appliedenergistics2:part:140> * 2).duration(100).EUt(16).buildAndRegister();	
	
//Glass Cable
recipes.remove(<appliedenergistics2:part:16>);	
alloy.recipeBuilder().inputs([<appliedenergistics2:material:8>, <appliedenergistics2:part:140>]).outputs(<appliedenergistics2:part:16> * 2).duration(50).EUt(16).buildAndRegister();	

//Covered Cable
assembler.recipeBuilder().inputs([<appliedenergistics2:part:16>]).fluidInputs(<liquid:rubber> * 144).outputs(<appliedenergistics2:part:36>).duration(20).EUt(16).buildAndRegister();	
	
//ME Conduit
recipes.remove(<enderio:item_me_conduit>);	
assembler.recipeBuilder().inputs([<appliedenergistics2:part:36> * 3, <enderio:item_material:4> * 6]).outputs(<enderio:item_me_conduit> * 8).duration(100).EUt(16).buildAndRegister();	

recipes.remove(<appliedenergistics2:sky_compass>);
recipes.addShaped(<appliedenergistics2:sky_compass>,[
	[<actuallyadditions:item_crystal:3>,<ore:plateDarkSteel>,<actuallyadditions:item_crystal:3>],
	[<ore:plateDarkSteel>,<appliedenergistics2:material:1>,<ore:plateDarkSteel>],
	[<actuallyadditions:item_crystal:3>,<ore:plateDarkSteel>,<actuallyadditions:item_crystal:3>]]);

compressor.recipeBuilder().inputs([<appliedenergistics2:material:7>]).outputs(<moreplates:fluix_plate>).EUt(12).duration(20).buildAndRegister();	
compressor.recipeBuilder().inputs([<appliedenergistics2:material:12>]).outputs(<moreplates:fluix_plate>).EUt(12).duration(20).buildAndRegister();	
	
//Formation Plane	
recipes.remove(<appliedenergistics2:part:320>);	
recipes.addShaped(<appliedenergistics2:part:320>, [[<moreplates:fluix_plate>, <moreplates:fluix_plate>, <moreplates:fluix_plate>], [<ore:plateAluminium>, <appliedenergistics2:material:43>, <ore:plateAluminium>]]);

//Fluid Formation Plane	
recipes.remove(<appliedenergistics2:part:321>);	
recipes.addShaped(<appliedenergistics2:part:321>, [[<moreplates:fluix_plate>, <moreplates:fluix_plate>, <moreplates:fluix_plate>], [<ore:plateLapis>, <appliedenergistics2:material:43>, <ore:plateLapis>]]);

//Annialation Plane	
recipes.remove(<appliedenergistics2:part:300>);	
recipes.addShaped(<appliedenergistics2:part:300>, [[<moreplates:fluix_plate>, <moreplates:fluix_plate>, <moreplates:fluix_plate>], [<ore:plateAluminium>, <appliedenergistics2:material:44>, <ore:plateAluminium>]]);

//Fluid Annialation Plane	
recipes.remove(<appliedenergistics2:part:302>);	
recipes.addShaped(<appliedenergistics2:part:302>, [[<moreplates:fluix_plate>, <moreplates:fluix_plate>, <moreplates:fluix_plate>], [<ore:plateLapis>, <appliedenergistics2:material:44>, <ore:plateLapis>]]);

//Fluid Terminal
recipes.remove(<appliedenergistics2:part:520>);	
recipes.addShapeless(<appliedenergistics2:part:520>, [<appliedenergistics2:part:380>, <ore:plateLapis>, <appliedenergistics2:material:22>]);

//Export Bus
recipes.remove(<appliedenergistics2:part:260>);	
recipes.addShaped(<appliedenergistics2:part:260>, [
	[<ore:plateAluminium>, <appliedenergistics2:material:43>, <ore:plateAluminium>], 
	[null, <metaitem:electric.piston.mv>, null]]);

//Fluid Export Bus
recipes.remove(<appliedenergistics2:part:261>);	
recipes.addShaped(<appliedenergistics2:part:261>, [
	[<ore:plateLapis>, <appliedenergistics2:material:43>, <ore:plateLapis>], 
	[null, <metaitem:electric.piston.mv>, null]]);

//Import Bus
recipes.remove(<appliedenergistics2:part:240>);	
recipes.addShaped(<appliedenergistics2:part:240>, [
	[null, <appliedenergistics2:material:44>, null], 
	[<ore:plateAluminium>, <metaitem:electric.piston.mv>, <ore:plateAluminium>]]);

//Fluid Import Bus
recipes.remove(<appliedenergistics2:part:241>);	
recipes.addShaped(<appliedenergistics2:part:241>, [
	[null, <appliedenergistics2:material:44>, null], 
	[<ore:plateLapis>, <metaitem:electric.piston.mv>, <ore:plateLapis>]]);

//Storage Bus
recipes.remove(<appliedenergistics2:part:220>);	
recipes.addShapeless(<appliedenergistics2:part:220>, [<metaitem:electric.piston.mv>, <appliedenergistics2:interface>]);
	
//Fluid Storage Bus
recipes.remove(<appliedenergistics2:part:221>);	
recipes.addShapeless(<appliedenergistics2:part:221>, [<metaitem:electric.pump.mv>, <appliedenergistics2:fluid_interface>]);	
	
//P2P Tunnel
recipes.remove(<appliedenergistics2:part:460>);	
recipes.addShaped(<appliedenergistics2:part:460>, [
	[null, <ore:plateStainlessSteel>, null], 
	[<ore:plateStainlessSteel>, <appliedenergistics2:material:24>, <ore:plateStainlessSteel>], 
	[<moreplates:fluix_plate>, <moreplates:fluix_plate>, <moreplates:fluix_plate>]]);

//Card bio	
recipes.remove(<appliedenergistics2:biometric_card>);	
recipes.addShapeless(<appliedenergistics2:biometric_card>, [<appliedenergistics2:material:25>, <metaitem:sensor.hv>]);		

//Memory Card	
recipes.remove(<appliedenergistics2:memory_card>);	
recipes.addShapeless(<appliedenergistics2:memory_card>, [<appliedenergistics2:material:25>, gt.getCirc("HV")]);
	
//Basic Card
recipes.remove(<appliedenergistics2:material:25>);	
recipes.addShaped(<appliedenergistics2:material:25>, [
[<ore:wireFineCopper>,<ore:plateIron>,null],
[<ore:wireFineCopper>,<appliedenergistics2:material:23>,<ore:plateIron>],
[<ore:wireFineCopper>,<ore:plateIron>,null]]);

//Advanced Card
recipes.remove(<appliedenergistics2:material:28>);	
recipes.addShaped(<appliedenergistics2:material:28>, [
[<ore:wireFineCopper>,<ore:plateElectricalSteel>,null],
[<ore:wireFineCopper>,<appliedenergistics2:material:23>,<ore:plateElectricalSteel>],
[<ore:wireFineCopper>,<ore:plateElectricalSteel>,null]]);
	
//Matter Condensor
recipes.remove(<appliedenergistics2:condenser>);	
recipes.addShaped(<appliedenergistics2:condenser>, [
	[<ore:plateTitanium>,<ore:plateTitanium>,<ore:plateTitanium>], 
	[<ore:plateTitanium>, <metaitem:quantumstar>, <ore:plateTitanium>], 
	[<ore:plateTitanium>,<ore:plateTitanium>,<ore:plateTitanium>]]);

//Wireless Part	
recipes.remove(<appliedenergistics2:material:41>);	
recipes.addShaped(<appliedenergistics2:material:41>, [
	[null, <metaitem:emitter.ev>, null], 
	[<ore:plateTitanium>, <appliedenergistics2:material:9>, <ore:plateTitanium>], 
	[null, <ore:plateTitanium>, null]]);

//Level Emitters	
recipes.remove(<appliedenergistics2:part:280>);		
recipes.remove(<appliedenergistics2:part:281>);		
recipes.addShaped(<appliedenergistics2:part:280>, [[<minecraft:redstone_torch>, <ore:plateAluminium>], [<appliedenergistics2:material:23>,<ore:stickStainlessSteel>]]);
recipes.addShaped(<appliedenergistics2:part:281>, [[<minecraft:redstone_torch>, <ore:plateLapis>], [<appliedenergistics2:material:23>,<ore:stickStainlessSteel>]]);	
	
Inscriber.removeRecipe(<appliedenergistics2:material:14>); 	
Inscriber.removeRecipe(<appliedenergistics2:material:13>); 	
Inscriber.removeRecipe(<appliedenergistics2:material:19>); 	
Inscriber.removeRecipe(<appliedenergistics2:material:15>); 	
engraver.recipeBuilder().inputs([<gregtech:compressed_0>]).notConsumable(<ore:craftingLensRed>).outputs([<appliedenergistics2:material:14>]).EUt(120).duration(1600).buildAndRegister();
engraver.recipeBuilder().inputs([<gregtech:compressed_0>]).notConsumable(<ore:craftingLensBlue>).outputs([<appliedenergistics2:material:13>]).EUt(120).duration(1600).buildAndRegister();
engraver.recipeBuilder().inputs([<gregtech:compressed_0>]).notConsumable(<gregtech:meta_item_1:15111>/*Diamond Lens*/).outputs([<appliedenergistics2:material:19>]).EUt(120).duration(1600).buildAndRegister();
engraver.recipeBuilder().inputs([<gregtech:compressed_0>]).notConsumable(<ore:craftingLensLime>).outputs([<appliedenergistics2:material:15>]).EUt(120).duration(1600).buildAndRegister();
 
recipes.addShapeless(<appliedenergistics2:part:120>, [<ore:boltSteel>]); 
 
//Interface
recipes.removeByRecipeName("appliedenergistics2:network/blocks/interfaces_interface");
recipes.addShaped(<appliedenergistics2:interface>, [
	[<ore:plateAluminium>, <metaitem:robot.arm.mv>, <ore:plateAluminium>], 
	[<appliedenergistics2:material:44>, <meta_tile_entity:gregtech:hull.mv>, <appliedenergistics2:material:43>], 
	[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);
	
//Fluid Interface
recipes.removeByRecipeName("appliedenergistics2:network/blocks/fluid_interfaces_interface");
recipes.addShaped(<appliedenergistics2:fluid_interface>, [
	[<ore:plateLapis>, <metaitem:electric.pump.mv>, <ore:plateLapis>], 
	[<appliedenergistics2:material:44>, <meta_tile_entity:gregtech:hull.mv>, <appliedenergistics2:material:43>], 
	[<ore:plateLapis>, <ore:plateLapis>, <ore:plateLapis>]]);
	
//Energy Acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [
	[<ore:plateElectricalSteel>, <moreplates:fluix_plate>, <ore:plateElectricalSteel>], 
	[<moreplates:fluix_plate>, <meta_tile_entity:gregtech:hull.lv>, <moreplates:fluix_plate>], 
	[<ore:plateElectricalSteel>, <moreplates:fluix_plate>, <ore:plateElectricalSteel>]]);

//Fluix Plate
recipes.remove(<moreplates:fluix_plate>);
//recipes.addShaped(<moreplates:fluix_plate>, [
//	[<ore:craftingToolHardHammer>], 
//	[<appliedenergistics2:material:7>], 
//	[<appliedenergistics2:material:7>]]);	
//recipes.addShaped(<moreplates:fluix_plate>, [
//	[<ore:craftingToolHardHammer>], 
//	[<appliedenergistics2:material:12>], 
//	[<appliedenergistics2:material:12>]]);	
	
	
//Storage Housing
recipes.remove(<appliedenergistics2:material:39>);
recipes.addShaped(<appliedenergistics2:material:39>, [
	[<ore:wireFineRedAlloy>, <ore:plateElectricalSteel>, <ore:wireFineRedAlloy>], 
	[<ore:plateElectricalSteel>, null, <ore:plateElectricalSteel>], 
	[<ore:wireFineRedAlloy>, <ore:plateElectricalSteel>, <ore:wireFineRedAlloy>]]);	
	
	
//Illuminated Panel
recipes.removeByRecipeName("appliedenergistics2:network/parts/panels_semi_dark_monitor");
recipes.addShaped(<appliedenergistics2:part:180>, [
	[<appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>], 
	[<moreplates:fluix_plate>, <moreplates:fluix_plate>, <moreplates:fluix_plate>]]);

//Charger
recipes.remove(<appliedenergistics2:charger>);
recipes.addShaped(<appliedenergistics2:charger>, [
	[<ore:plateDarkSteel>, <ore:plateCertusQuartz>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, null, null], 
	[<ore:plateDarkSteel>, <ore:plateCertusQuartz>, <ore:plateDarkSteel>]]);

//ME Chest
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, [
	[<appliedenergistics2:quartz_glass>,<appliedenergistics2:part:180>, <appliedenergistics2:quartz_glass>], 
	[<appliedenergistics2:material:10>, <actuallyadditions:block_giant_chest>, <appliedenergistics2:material:12>], 
	[<enderio:block_alloy:6>, <appliedenergistics2:material:11>, <enderio:block_alloy:6>]]);

//Pattern Terminal
recipes.remove(<appliedenergistics2:part:340>);
recipes.addShapeless(<appliedenergistics2:part:340>, [<appliedenergistics2:material:24>, <appliedenergistics2:part:380>, <appliedenergistics2:material:52>]);
	
//ME Terminal
recipes.remove(<appliedenergistics2:part:380>);
recipes.addShapeless(<appliedenergistics2:part:380>, [<ore:itemIlluminatedPanel>, gt.getCirc("LV")]);
	
//Crystal Growth Chamber
recipes.addShaped(<ae2stuff:grower>, [
	[<enderio:block_dark_iron_bars>, <appliedenergistics2:material:1>, <enderio:block_dark_iron_bars>], 
	[<appliedenergistics2:material:1>, <meta_tile_entity:gregtech:hull.lv>, <appliedenergistics2:material:1>], 
	[<enderio:block_dark_iron_bars>, <appliedenergistics2:material:1>, <enderio:block_dark_iron_bars>]]);	

//Quantum Ring
recipes.remove(<appliedenergistics2:quantum_ring>);
recipes.addShaped(<appliedenergistics2:quantum_ring>, [
[<ore:plateStainlessSteel>, <appliedenergistics2:material:23>, <ore:plateStainlessSteel>], 
[<appliedenergistics2:material:24>, <metaitem:quantumstar>, <appliedenergistics2:material:24>], 
[<ore:plateStainlessSteel>, <appliedenergistics2:material:23>,<ore:plateStainlessSteel>]]);

	
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_1k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_4k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_16k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_64k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_1k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_4k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_16k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_64k");

<appliedenergistics2:material:10>.addTooltip(format.red("Made in a Crystal Growth Chamber from a Certus Quartz Seed."));
<appliedenergistics2:material:11>.addTooltip(format.red("Made in a Crystal Growth Chamber from a Nether Quartz Seed."));
<appliedenergistics2:material:12>.addTooltip(format.red("Made in a Crystal Growth Chamber from a Fluix Seed."));
	
// 1k Storage
recipes.remove(<appliedenergistics2:material:35>);	
recipes.addShaped(<appliedenergistics2:material:35>, [
	[<ore:blockGlass>, <ore:plateRedAlloy>, <ore:blockGlass>], 
	[<ore:plateRedAlloy>, gt.getCirc("LV"), <ore:plateRedAlloy>], 
	[<ore:blockGlass>, <ore:plateRedAlloy>, <ore:blockGlass>]]);
	
// 4k Storage
recipes.remove(<appliedenergistics2:material:36>);	
recipes.addShaped(<appliedenergistics2:material:36>, [
	[<ore:blockGlass>, <appliedenergistics2:material:22>, <ore:blockGlass>],
	[<appliedenergistics2:material:35>, gt.getCirc("MV"), <appliedenergistics2:material:35>],
	[<ore:blockGlass>, <appliedenergistics2:material:35>, <ore:blockGlass>]]);
	
// 16k Storage
recipes.remove(<appliedenergistics2:material:37>);
recipes.addShaped(<appliedenergistics2:material:37>, [
	[<ore:blockGlass>, <appliedenergistics2:material:24>, <ore:blockGlass>],
	[<appliedenergistics2:material:36>, gt.getCirc("HV"), <appliedenergistics2:material:36>],
	[<ore:blockGlass>, <appliedenergistics2:material:36>, <ore:blockGlass>]]);
	
// 64k Storage
recipes.remove(<appliedenergistics2:material:38>);
recipes.addShaped(<appliedenergistics2:material:38>, [
	[<appliedenergistics2:material:22>, <appliedenergistics2:material:24>, <appliedenergistics2:material:22>],
	[<appliedenergistics2:material:37>, gt.getCirc("EV"), <appliedenergistics2:material:37>],
	[<appliedenergistics2:material:22>, <appliedenergistics2:material:37>, <appliedenergistics2:material:22>]]);
	
//AE2 Wireless Terminal, Infinity Booster Card
recipes.removeByRecipeName("ae2wtlib:booster_card_old");
recipes.addShaped(<ae2wtlib:infinity_booster_card>, [
	[<metaitem:quantumeye>, null, <metaitem:quantumeye>],
	[null, <appliedenergistics2:material:41>, null],
	[null, null, null]]);
