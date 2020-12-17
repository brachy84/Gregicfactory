import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;

/////////////////   Tier One Circuits | Basic Tier   ///////////////////////	


//Primitive Circuit
recipes.remove(<metaitem:circuit.basic>);
recipes.addShaped(<metaitem:circuit.basic>, [
	[<metaitem:component.resistor>, <ore:plateWroughtIron>, <metaitem:component.resistor>], 
	[<metaitem:circuit.vacuum_tube>, <metaitem:board.coated>, <metaitem:circuit.vacuum_tube>], 
	[<ore:cableGtSingleRedAlloy>,<ore:cableGtSingleRedAlloy>,<ore:cableGtSingleRedAlloy>]]);

<metaitem:circuit.basic>.displayName = "Primitive Circuit";
<metaitem:circuit.basic>.clearTooltip();
<metaitem:circuit.basic>.addTooltip("Primitive Circuit");
<metaitem:circuit.basic>.addTooltip(format.aqua(format.italic("This is the first Tier One circuit.")));
	
	
	
//Primitive Circuit Board
recipes.remove(<metaitem:board.coated>);
recipes.addShaped(<metaitem:board.coated> * 3, [
	[null,<metaitem:rubber_drop>,null],
	[<ore:slabWood>,<ore:slabWood>,<ore:slabWood>],
	[null,<metaitem:rubber_drop>,null]]);
	
	
	
//Glass Tube
recipes.addShaped(<metaitem:component.glass.tube>, [
	[null, <minecraft:glass_pane>, null],
	[<minecraft:glass_pane>, null, <minecraft:glass_pane>],
	[null, <minecraft:glass_pane>, null]]);

	
	
//Electronic Circuit

<metaitem:circuit.basic_electronic>.displayName = "Electronic Circuit";
<metaitem:circuit.basic_electronic>.clearTooltip();
<metaitem:circuit.basic_electronic>.addTooltip("Electronic Circuit");
<metaitem:circuit.basic_electronic>.addTooltip(format.aqua(format.italic("This is the second Tier One circuit.")));

//assembler.findRecipe(8, [<metaitem:plate.integrated_logic_circuit>, <metaitem:component.resistor> * 2, <metaitem:component.capacitor>, <metaitem:board.phenolic>, <ore:wireFineCopper>.firstItem], [<liquid:tin> * 144]).remove();
//assembler.findRecipe(8, [<metaitem:plate.integrated_logic_circuit>, <metaitem:component.resistor> * 2, <metaitem:component.capacitor>, <metaitem:board.phenolic>, <ore:wireFineCopper>.firstItem], [<liquid:soldering_alloy> * 72]).remove();
//assembler.findRecipe(8, [<metaitem:plate.integrated_logic_circuit>, <metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor>, <metaitem:board.phenolic>, <ore:wireFineCopper>.firstItem], [<liquid:tin> * 144]).remove();
//assembler.findRecipe(8, [<metaitem:plate.integrated_logic_circuit>, <metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor>, <metaitem:board.phenolic>, <ore:wireFineCopper>.firstItem], [<liquid:soldering_alloy> * 72]).remove();

//assembler.recipeBuilder().inputs([<metaitem:component.resistor> * 4, <metaitem:component.capacitor> * 2, <metaitem:board.phenolic>, <ore:wireFineCopper> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.basic_electronic>]).duration(100).EUt(16).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.resistor> * 4, <metaitem:component.capacitor> * 2, <metaitem:board.phenolic>, <ore:wireFineCopper> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.basic_electronic>]).duration(100).EUt(16).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 4, <metaitem:component.smd.capacitor> * 2, <metaitem:board.phenolic>, <ore:wireFineCopper> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.basic_electronic>]).duration(100).EUt(16).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 4, <metaitem:component.smd.capacitor> * 2, <metaitem:board.phenolic>, <ore:wireFineCopper> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.basic_electronic>]).duration(100).EUt(16).buildAndRegister();
val fluids as int[ILiquidStack] = {
	<liquid:soldering_alloy> : 288,
	<liquid:tin> : 567,
	<liquid:lead> : 1152
};

for fluid, amount in fluids {
	gt.circuit_assembler.recipeBuilder()
		.inputs([<metaitem:component.resistor> * 8, <metaitem:component.diode> * 4, <ore:wireFineCopper>.firstItem * 4, <metaitem:board.good.phenolic>])
		.fluidInputs([fluid * amount])
		.outputs([<metaitem:circuit.basic_electronic>])
		.EUt(16).duration(sec(5))
		.buildAndRegister();
	gt.circuit_assembler.recipeBuilder()
		.inputs([<metaitem:component.smd.resistor> * 4, <metaitem:component.smd.diode> * 2, <ore:wireFineCopper>.firstItem * 4, <metaitem:board.good.phenolic>])
		.fluidInputs([fluid * amount])
		.outputs([<metaitem:circuit.basic_electronic>])
		.EUt(16).duration(sec(5))
		.buildAndRegister();
}


//Refined Circuit

<metaitem:circuit.processor.refined>.addTooltip(format.aqua(format.italic("This is the third and final Tier One circuit.")));

for fluid, amount in fluids {
	gt.circuit_assembler.recipeBuilder()
		.inputs([<metaitem:plate.system_on_chip>, <metaitem:board.good.plastic>, <ore:wireFineTinAlloy> * 2])
		.fluidInputs(fluid * amount)
		.outputs([<metaitem:circuit.processor.refined> * 4])
		.duration(50).EUt(600)
		.buildAndRegister();
}


//Assembling Machines

recipes.remove(<meta_tile_entity:gregtech:assembler.lv>);
recipes.remove(<meta_tile_entity:gregtech:assembler.mv>);
recipes.remove(<meta_tile_entity:gregtech:assembler.hv>);
recipes.remove(<meta_tile_entity:gregtech:assembler.ev>);
recipes.remove(<meta_tile_entity:gregtech:assembler.iv>);
recipes.remove(<meta_tile_entity:gtadditions:assembler.luv>);
recipes.remove(<meta_tile_entity:gtadditions:assembler.zpm>);
recipes.remove(<meta_tile_entity:gtadditions:assembler.uv>);

recipes.addShaped(<meta_tile_entity:gregtech:assembler.lv>, [
	[<metaitem:robot.arm.lv>, gt.getCirc("MV"), <metaitem:robot.arm.lv>], 
	[<metaitem:conveyor.module.lv>, <meta_tile_entity:gregtech:hull.lv>, <metaitem:conveyor.module.lv>], 
	[<ore:cableGtSingleTin>, gt.getCirc("MV"), <ore:cableGtSingleTin>]]);

recipes.addShaped(<meta_tile_entity:gregtech:assembler.mv>, [
	[<metaitem:robot.arm.mv>, gt.getCirc("HV"), <metaitem:robot.arm.mv>], 
	[<metaitem:conveyor.module.mv>, <meta_tile_entity:gregtech:hull.mv>, <metaitem:conveyor.module.mv>], 
	[<ore:cableGtSingleCopper>, gt.getCirc("HV"), <ore:cableGtSingleCopper>]]);

recipes.addShaped(<meta_tile_entity:gregtech:assembler.hv>, [
	[<metaitem:robot.arm.hv>, gt.getCirc("EV"), <metaitem:robot.arm.hv>], 
	[<metaitem:conveyor.module.hv>, <meta_tile_entity:gregtech:hull.hv>, <metaitem:conveyor.module.hv>], 
	[<ore:cableGtSingleGold>, gt.getCirc("EV"), <ore:cableGtSingleGold>]]);
	
recipes.addShaped(<meta_tile_entity:gregtech:assembler.ev>, [
	[<metaitem:robot.arm.ev>, gt.getCirc("IV"), <metaitem:robot.arm.ev>], 
	[<metaitem:conveyor.module.ev>, <meta_tile_entity:gregtech:hull.ev>, <metaitem:conveyor.module.ev>], 
	[<ore:cableGtSingleAluminium>, gt.getCirc("IV"), <ore:cableGtSingleAluminium>]]);
	
recipes.addShaped(<meta_tile_entity:gregtech:assembler.iv>, [
	[<metaitem:robot.arm.iv>, gt.getCirc("LuV"), <metaitem:robot.arm.iv>], 
	[<metaitem:conveyor.module.iv>, <meta_tile_entity:gregtech:hull.iv>, <metaitem:conveyor.module.iv>], 
	[<ore:cableGtSinglePlatinum>, gt.getCirc("LuV"), <ore:cableGtSinglePlatinum>]]);	
	
recipes.addShaped(<meta_tile_entity:gtadditions:assembler.luv>, [
	[<metaitem:robot.arm.luv>, gt.getCirc("ZPM"), <metaitem:robot.arm.luv>], 
	[<metaitem:conveyor.module.luv>, <meta_tile_entity:gregtech:hull.luv>, <metaitem:conveyor.module.luv>], 
	[<ore:cableGtSingleNiobiumTitanium>, gt.getCirc("ZPM"), <ore:cableGtSingleNiobiumTitanium>]]);

recipes.addShaped(<meta_tile_entity:gtadditions:assembler.zpm>, [
	[<metaitem:robot.arm.zpm>, gt.getCirc("UV"), <metaitem:robot.arm.zpm>], 
	[<metaitem:conveyor.module.zpm>, <meta_tile_entity:gregtech:hull.zpm>, <metaitem:conveyor.module.zpm>], 
	[<ore:cableGtSingleNaquadah>, gt.getCirc("UV"), <ore:cableGtSingleNaquadah>]]);

recipes.addShaped(<meta_tile_entity:gtadditions:assembler.uv>, [
	[<metaitem:robot.arm.uv>, gt.getCirc("MAX"), <metaitem:robot.arm.uv>], //replace MAX with UHV after 0.21
	[<metaitem:conveyor.module.uv>, <meta_tile_entity:gregtech:hull.uv>, <metaitem:conveyor.module.uv>], 
	[<ore:wireGtQuadrupleNaquadahAlloy>, gt.getCirc("MAX"), <ore:wireGtQuadrupleNaquadahAlloy>]]);



	


/////////////////   Tier Two Circuits | Good Tier   ///////////////////////	

# Use gregicality circuits

//Primitive Processor

<metaitem:circuit.assembly.primitive>.addTooltip(format.aqua(format.italic("This is the first Tier Two circuit.")));

recipes.remove(<metaitem:circuit.good>);

<metaitem:board.phenolic>.displayName = "Phenolic Substrate";
<metaitem:board.phenolic>.clearTooltip();
<metaitem:board.phenolic>.addTooltip("Phenolic Substrate");	
	
//Electronic Processor	

<metaitem:circuit.assembly.electronic>.addTooltip(format.aqua(format.italic("This is the second Tier Two circuit.")));
/* removed by gregicality
mods.jei.JEI.removeAndHide(<gregtech:meta_item_2:32489>);
mods.jei.JEI.removeAndHide(<gregtech:meta_item_2:32490>);
mods.jei.JEI.removeAndHide(<gregtech:meta_item_2:32507>);*/

//Refined Processor	

<metaitem:circuit.assembly.refined>.addTooltip(format.aqua(format.italic("This is the third Tier Two circuit.")));

//Microcircuit

<metaitem:circuit.processor.micro>.addTooltip(format.aqua(format.italic("This is the fourth and final Tier Two circuit.")));

for fluid, amount in fluids {
	gt.circuit_assembler.recipeBuilder()
		.inputs([<metaitem:plate.system_on_chip>, <metaitem:board.epoxy>, <ore:wireFineRedAlloy> * 2])
		.fluidInputs(fluid * amount)
		.outputs([<metaitem:circuit.processor.micro> * 8])
		.duration(50).EUt(2400)
		.buildAndRegister();
}


/////////////////   Tier Three Circuits | Advanced Tier   ///////////////////////	

//Electronic Processor Array

<metaitem:circuit.computer.electronic>.addTooltip(format.aqua(format.italic("This is the first Tier Three circuit.")));

//assembler.recipeBuilder().inputs([<metaitem:component.resistor> * 2, <metaitem:component.capacitor> * 2, <metaitem:plate.integrated_logic_circuit> * 2, <contenttweaker:electronicprocessor> * 4, <ore:plateAluminium> * 2, <ore:wireFineElectrum> * 16]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:electronicprocessorarray>]).duration(200).EUt(16).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.resistor> * 2, <metaitem:component.capacitor> * 2, <metaitem:plate.integrated_logic_circuit> * 2, <contenttweaker:electronicprocessor> * 4, <ore:plateAluminium> * 2, <ore:wireFineElectrum> * 16]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:electronicprocessorarray>]).duration(200).EUt(16).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 2, <metaitem:plate.integrated_logic_circuit> * 2, <contenttweaker:electronicprocessor> * 4, <ore:plateAluminium> * 2, <ore:wireFineElectrum> * 16]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:electronicprocessorarray>]).duration(200).EUt(16).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 2, <metaitem:plate.integrated_logic_circuit> * 2, <contenttweaker:electronicprocessor> * 4, <ore:plateAluminium> * 2, <ore:wireFineElectrum> * 16]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:electronicprocessorarray>]).duration(200).EUt(16).buildAndRegister();



//Refined Processor Array

<contenttweaker:refinedprocessorarray>.addTooltip(format.aqua(format.italic("This is the second Tier Three circuit.")));

gt.removeByOutput(gt.circuit_assembler, [<metaitem:circuit.basic_electronic>]);

//assembler.findRecipe(4, [gt.getCirc("MV").firstItem * 4, <ore:plateStainlessSteel>.firstItem * 2], [null]).remove();
//assembler.recipeBuilder().inputs([gt.getCirc("MV") * 4, <ore:ingotStainlessSteel> * 2]).outputs([<gtadditions:ga_meta_item:32131>]).duration(20).EUt(4).buildAndRegister(); //deconflicting blank schematic

//assembler.recipeBuilder().inputs([<metaitem:component.resistor> * 2, <metaitem:plate.random_access_memory> * 4, <metaitem:component.transistor> * 2, <contenttweaker:refinedprocessor> * 4, <metaitem:board.plastic>, <ore:plateStainlessSteel> * 2, <ore:wireGtSingleVibrantAlloy> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:refinedprocessorarray>]).duration(200).EUt(90).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.resistor> * 2, <metaitem:plate.random_access_memory> * 4, <metaitem:component.transistor> * 2, <contenttweaker:refinedprocessor> * 4, <metaitem:board.plastic>, <ore:plateStainlessSteel> * 2, <ore:wireGtSingleVibrantAlloy> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:refinedprocessorarray>]).duration(200).EUt(90).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 2, <metaitem:plate.random_access_memory> * 4, <metaitem:component.smd.transistor> * 2, <contenttweaker:refinedprocessor> * 4, <metaitem:board.plastic>, <ore:plateStainlessSteel> * 2, <ore:wireGtSingleVibrantAlloy> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:refinedprocessorarray>]).duration(200).EUt(90).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 2, <metaitem:plate.random_access_memory> * 4, <metaitem:component.smd.transistor> * 2, <contenttweaker:refinedprocessor> * 4, <metaitem:board.plastic>, <ore:plateStainlessSteel> * 2, <ore:wireGtSingleVibrantAlloy> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:refinedprocessorarray>]).duration(200).EUt(90).buildAndRegister();



//Microprocessor

<metaitem:circuit.processor_assembly>.displayName = "Microprocessor";
<metaitem:circuit.processor_assembly>.clearTooltip();
<metaitem:circuit.processor_assembly>.addTooltip("Microprocessor");
<metaitem:circuit.processor_assembly>.addTooltip(format.aqua(format.italic("This is the third Tier Three circuit.")));

//assembler.findRecipe(90, [<metaitem:circuit.advanced> * 2, <metaitem:component.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.plastic>, <metaitem:plate.random_access_memory> * 4, <ore:wireFineRedAlloy>.firstItem * 12], [<liquid:tin> * 288]).remove();
//assembler.findRecipe(90, [<metaitem:circuit.advanced> * 2, <metaitem:component.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.plastic>, <metaitem:plate.random_access_memory> * 4, <ore:wireFineRedAlloy>.firstItem * 12], [<liquid:soldering_alloy> * 144]).remove();
//assembler.findRecipe(90, [<metaitem:circuit.advanced> * 2, <metaitem:component.smd.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.plastic>, <metaitem:plate.random_access_memory> * 4, <ore:wireFineRedAlloy>.firstItem * 12], [<liquid:tin> * 288]).remove();
//assembler.findRecipe(90, [<metaitem:circuit.advanced> * 2, <metaitem:component.smd.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.plastic>, <metaitem:plate.random_access_memory> * 4, <ore:wireFineRedAlloy>.firstItem * 12], [<liquid:soldering_alloy> * 144]).remove();

//assembler.recipeBuilder().inputs([<contenttweaker:microcircuit> * 3, <metaitem:plate.random_access_memory> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.epoxy>, <metaitem:component.capacitor> * 4, <ore:wireFineRedAlloy> * 6]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.processor_assembly>]).duration(100).EUt(360).buildAndRegister();
//assembler.recipeBuilder().inputs([<contenttweaker:microcircuit> * 3, <metaitem:plate.random_access_memory> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.epoxy>, <metaitem:component.capacitor> * 4, <ore:wireFineRedAlloy> * 6]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.processor_assembly>]).duration(100).EUt(360).buildAndRegister();
//assembler.recipeBuilder().inputs([<contenttweaker:microcircuit> * 3, <metaitem:plate.random_access_memory> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.epoxy>, <metaitem:component.smd.capacitor> * 4, <ore:wireFineRedAlloy> * 6]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.processor_assembly>]).duration(100).EUt(360).buildAndRegister();
//assembler.recipeBuilder().inputs([<contenttweaker:microcircuit> * 3, <metaitem:plate.random_access_memory> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.epoxy>, <metaitem:component.smd.capacitor> * 4, <ore:wireFineRedAlloy> * 6]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.processor_assembly>]).duration(100).EUt(360).buildAndRegister();



//Nanocircuit

<metaitem:circuit.nano_processor>.displayName = "Nanocircuit";
<metaitem:circuit.nano_processor>.clearTooltip();
<metaitem:circuit.nano_processor>.addTooltip("Nanocircuit");
<metaitem:circuit.nano_processor>.addTooltip(format.aqua(format.italic("This is the fourth and final Tier Three circuit.")));

//assembler.findRecipe(480, [<metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 2, <metaitem:board.epoxy>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFineElectrum>.firstItem * 2], [<liquid:tin> * 144]).remove();
//assembler.findRecipe(480, [<metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 2, <metaitem:board.epoxy>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFineElectrum>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();
//assembler.findRecipe(9600, [<metaitem:board.epoxy>, <metaitem:plate.system_on_chip>, <ore:wireFineElectrum>.firstItem * 2], [<liquid:tin> * 144]).remove();
//assembler.findRecipe(9600, [<metaitem:board.epoxy>, <metaitem:plate.system_on_chip>, <ore:wireFineElectrum>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();

//assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 2, <metaitem:board.fiber_reinforced>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFineAluminium> * 2]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.nano_processor> * 4]).duration(100).EUt(2000).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 2, <metaitem:board.fiber_reinforced>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFineAluminium> * 2]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.nano_processor> * 4]).duration(100).EUt(2000).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:board.fiber_reinforced>, <metaitem:plate.system_on_chip>, <ore:wireFineAluminium> * 2]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.nano_processor> * 8]).duration(100).EUt(9600).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:board.fiber_reinforced>, <metaitem:plate.system_on_chip>, <ore:wireFineAluminium> * 2]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.nano_processor> * 8]).duration(100).EUt(9600).buildAndRegister();

gt.removeByOutput(gt.circuit_assembler, [<metaitem:circuit.nano_processor> * 4] as IItemStack[], true);

for fluid, amount in fluids {
	gt.circuit_assembler.recipeBuilder()
		.inputs([<metaitem:plate.nano_central_processing_unit> * 2, <metaitem:component.smd.transistor> * 8, <metaitem:component.smd.resistor> * 8, <metaitem:component.smd.capacitor> * 8, <ore:wireFineAluminium> * 2, <metaitem:board.extreme>])
		.fluidInputs([fluid * amount])
		.outputs([<metaitem:circuit.nano_processor>])
		.EUt(2000).duration(sec(5))
		.buildAndRegister();
	gt.circuit_assembler.recipeBuilder()
		.inputs([<metaitem:plate.nano_central_processing_unit> * 2, <metaitem:component.smd.transistor.nano> * 4, <metaitem:component.smd.resistor.nano> * 4, <metaitem:component.smd.capacitor.nano> * 4, <ore:wireFineAluminium> * 2, <metaitem:board.extreme>])
		.fluidInputs([fluid * amount])
		.outputs([<metaitem:circuit.nano_processor>])
		.EUt(2000).duration(sec(5))
		.buildAndRegister();
	
	gt.circuit_assembler.recipeBuilder()
		.inputs([<metaitem:board.extreme>, <metaitem:plate.system_on_chip>, <ore:wireFineAluminium> * 2])
		.fluidInputs(fluid * amount)
		.outputs([<metaitem:circuit.nano_processor> * 8])
		.duration(sec(5)).EUt(9600)
		.buildAndRegister();

}




/////////////////   Tier Four Circuits | Extreme Tier   ///////////////////////


//Refined Processor Mainframe

<metaitem:circuit.mainframe.refined>.addTooltip(format.aqua(format.italic("This is the first Tier Four circuit.")));

//assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 16, <metaitem:plate.random_access_memory> * 4, <metaitem:component.smd.transistor> * 6, <metaitem:component.smd.capacitor> * 8, <metaitem:component.smd.diode> * 4, <contenttweaker:refinedprocessorarray> * 2, <ore:frameGtStainlessSteel> * 4, <ore:wireGtSingleVibrantAlloy> * 8]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:refinedprocessormainframe>]).duration(500).EUt(110).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 16, <metaitem:plate.random_access_memory> * 4, <metaitem:component.smd.transistor> * 6, <metaitem:component.smd.capacitor> * 8, <metaitem:component.smd.diode> * 4, <contenttweaker:refinedprocessorarray> * 2, <ore:frameGtStainlessSteel> * 4, <ore:wireGtSingleVibrantAlloy> * 8]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:refinedprocessormainframe>]).duration(500).EUt(110).buildAndRegister();



//Microprocessor Array

<metaitem:circuit.computer.micro>.addTooltip(format.aqua(format.italic("This is the second Tier Four circuit.")));

//assembler.recipeBuilder().inputs([<metaitem:component.smd.diode> * 4, <metaitem:plate.random_access_memory> * 8, <metaitem:component.smd.transistor> * 4, <metaitem:circuit.processor_assembly> * 4, <metaitem:board.epoxy>, <ore:plateTitanium> * 2, <ore:wireGtSingleEndSteel> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:microprocessorarray>]).duration(200).EUt(16).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.smd.diode> * 4, <metaitem:plate.random_access_memory> * 8, <metaitem:component.smd.transistor> * 4, <metaitem:circuit.processor_assembly> * 4, <metaitem:board.epoxy>, <ore:plateTitanium> * 2, <ore:wireGtSingleEndSteel> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:microprocessorarray>]).duration(200).EUt(16).buildAndRegister();


//Nanoprocessor

<metaitem:circuit.nano_processor_assembly>.displayName = "Nanoprocessor";
<metaitem:circuit.nano_processor_assembly>.clearTooltip();
<metaitem:circuit.nano_processor_assembly>.addTooltip("Nanoprocessor");
<metaitem:circuit.nano_processor_assembly>.addTooltip(format.aqua(format.italic("This is the third Tier Four circuit.")));

//assembler.findRecipe(480, [<metaitem:component.smd.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:circuit.nano_processor> * 2, <metaitem:board.epoxy>, <metaitem:plate.random_access_memory> * 4, <ore:wireFineElectrum>.firstItem * 6], [<liquid:tin> * 288]).remove();
//assembler.findRecipe(480, [<metaitem:component.smd.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:circuit.nano_processor> * 2, <metaitem:board.epoxy>, <metaitem:plate.random_access_memory> * 4, <ore:wireFineElectrum>.firstItem * 6], [<liquid:soldering_alloy> * 144]).remove();

//assembler.recipeBuilder().inputs([<metaitem:circuit.nano_processor> * 3, <metaitem:plate.nano_central_processing_unit> * 2, <metaitem:component.small_coil> * 4, <metaitem:board.fiber_reinforced>, <metaitem:component.smd.diode> * 4, <ore:wireFineAluminium> * 6]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.nano_processor_assembly>]).duration(100).EUt(2000).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:circuit.nano_processor> * 3, <metaitem:plate.nano_central_processing_unit> * 2, <metaitem:component.small_coil> * 4, <metaitem:board.fiber_reinforced>, <metaitem:component.smd.diode> * 4, <ore:wireFineAluminium> * 6]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.nano_processor_assembly>]).duration(100).EUt(2000).buildAndRegister();



//Quantum Circuit

<metaitem:circuit.quantum_processor>.displayName = "Quantum Circuit";
<metaitem:circuit.quantum_processor>.clearTooltip();
<metaitem:circuit.quantum_processor>.addTooltip("Quantum Circuit");
<metaitem:circuit.quantum_processor>.addTooltip(format.aqua(format.italic("This is the fourth and final Tier Four circuit.")));

//assembler.findRecipe(1960, [<metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 2, <metaitem:board.fiber_reinforced>, <metaitem:plate.nano_central_processing_unit>, <metaitem:plate.qbit_central_processing_unit>, <ore:wireFinePlatinum>.firstItem * 2], [<liquid:tin> * 144]).remove();
//assembler.findRecipe(1960, [<metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 2, <metaitem:board.fiber_reinforced>, <metaitem:plate.nano_central_processing_unit>, <metaitem:plate.qbit_central_processing_unit>, <ore:wireFinePlatinum>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();
//assembler.findRecipe(32000, [<metaitem:board.fiber_reinforced>, <metaitem:plate.advanced_system_on_chip>, <ore:wireFinePlatinum>.firstItem * 2], [<liquid:tin> * 144]).remove();
//assembler.findRecipe(32000, [<metaitem:board.fiber_reinforced>, <metaitem:plate.advanced_system_on_chip>, <ore:wireFinePlatinum>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();

//assembler.recipeBuilder().inputs([<metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 2, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:plate.qbit_central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFinePlatinum> * 2]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.quantum_processor> * 4]).duration(200).EUt(3000).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 2, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:plate.qbit_central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFinePlatinum> * 2]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.quantum_processor> * 4]).duration(200).EUt(3000).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:board.multilayer.fiber_reinforced>, <metaitem:plate.advanced_system_on_chip>, <ore:wireFinePlatinum> * 2]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.quantum_processor> * 8]).duration(100).EUt(36000).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:board.multilayer.fiber_reinforced>, <metaitem:plate.advanced_system_on_chip>, <ore:wireFinePlatinum> * 2]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.quantum_processor> * 8]).duration(100).EUt(36000).buildAndRegister();
for fluid, amount in fluids {
	gt.circuit_assembler.recipeBuilder()
		.inputs([<metaitem:board.elite>, <metaitem:plate.advanced_system_on_chip>, <ore:wireFinePlatinum> * 4])
		.fluidInputs([fluid * amount])
		.outputs([<metaitem:circuit.quantum_processor> * 8])
		.duration(100).EUt(36000)
		.buildAndRegister();
}



/////////////////   Tier Five Circuits | Elite Tier   ///////////////////////


//Microprocessor Mainframe

<metaitem:circuit.mainframe.micro>.addTooltip(format.aqua(format.italic("This is the first Tier Five circuit.")));

//assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 20, <metaitem:plate.random_access_memory> * 8, <metaitem:component.smd.transistor> * 12, <metaitem:component.smd.capacitor> * 16, <metaitem:component.smd.diode> * 8, <contenttweaker:microprocessorarray> * 2, <ore:frameGtTitanium> * 4, <ore:wireGtSingleEndSteel> * 8]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:microprocessormainframe>]).duration(500).EUt(500).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 20, <metaitem:plate.random_access_memory> * 8, <metaitem:component.smd.transistor> * 12, <metaitem:component.smd.capacitor> * 16, <metaitem:component.smd.diode> * 8, <contenttweaker:microprocessorarray> * 2, <ore:frameGtTitanium> * 4, <ore:wireGtSingleEndSteel> * 8]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:microprocessormainframe>]).duration(500).EUt(500).buildAndRegister();



//Nanoprocessor Array

<metaitem:circuit.computer.nano>.addTooltip(format.aqua(format.italic("This is the second Tier Five circuit.")));

assembler.recipeBuilder().inputs([<metaitem:component.smd.diode> * 4, <metaitem:plate.random_access_memory> * 8, <metaitem:component.smd.transistor> * 4, <metaitem:circuit.nano_processor_assembly> * 4, <metaitem:board.fiber_reinforced>, <ore:plateTungstenSteel> * 2, <ore:wireGtSingleLumium> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:nanoprocessorarray>]).duration(200).EUt(2000).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.diode> * 4, <metaitem:plate.random_access_memory> * 8, <metaitem:component.smd.transistor> * 4, <metaitem:circuit.nano_processor_assembly> * 4, <metaitem:board.fiber_reinforced>, <ore:plateTungstenSteel> * 2, <ore:wireGtSingleLumium> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:nanoprocessorarray>]).duration(200).EUt(2000).buildAndRegister();


//Quantum Processor

<metaitem:circuit.assembly.quantum>.addTooltip(format.aqua(format.italic("This is the third Tier Five circuit.")));

//assembler.findRecipe(1960, [<metaitem:component.smd.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.fiber_reinforced>, <metaitem:plate.random_access_memory> * 4, <metaitem:circuit.quantum_processor> * 2, <ore:wireFinePlatinum>.firstItem * 6], [<liquid:tin> * 288]).remove();
//assembler.findRecipe(1960, [<metaitem:component.smd.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.fiber_reinforced>, <metaitem:plate.random_access_memory> * 4, <metaitem:circuit.quantum_processor> * 2, <ore:wireFinePlatinum>.firstItem * 6], [<liquid:soldering_alloy> * 144]).remove();

//assembler.recipeBuilder().inputs([<metaitem:component.smd.transistor> * 4, <metaitem:circuit.quantum_processor> * 3, <metaitem:plate.qbit_central_processing_unit> * 2, <metaitem:component.small_coil> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:component.smd.diode> * 4, <ore:wireFinePlatinum> * 6]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:quantumprocessor>]).duration(100).EUt(4000).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.smd.transistor> * 4, <metaitem:circuit.quantum_processor> * 3, <metaitem:plate.qbit_central_processing_unit> * 2, <metaitem:component.small_coil> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:component.smd.diode> * 4, <ore:wireFinePlatinum> * 6]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:quantumprocessor>]).duration(100).EUt(4000).buildAndRegister();

// obsolete
//recipes.addShapeless(<contenttweaker:quantumprocessor>, [<gregtech:meta_item_2:32495>]);	


//Crystal Circuit

<metaitem:circuit.processor.crystal>.addTooltip(format.aqua(format.italic("This is the fourth and final Tier Five circuit.")));

//assembler.findRecipe(7600, [<metaitem:component.smd.capacitor> * 2, <metaitem:component.smd.transistor> * 2, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:crystal.central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFineNiobiumTitanium>.firstItem * 2], [<liquid:tin> * 144]).remove();
//assembler.findRecipe(7600, [<metaitem:component.smd.capacitor> * 2, <metaitem:component.smd.transistor> * 2, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:crystal.central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFineNiobiumTitanium>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();
//assembler.findRecipe(31900, [<metaitem:board.multilayer.fiber_reinforced>, <metaitem:crystal.system_on_chip>, <ore:wireFineNiobiumTitanium>.firstItem * 2], [<liquid:tin> * 144]).remove();
//assembler.findRecipe(31900, [<metaitem:board.multilayer.fiber_reinforced>, <metaitem:crystal.system_on_chip>, <ore:wireFineNiobiumTitanium>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();

//assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 8, <metaitem:component.smd.transistor> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:crystal.central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFineNiobiumTitanium> * 2]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:crystalcircuit> * 4]).duration(200).EUt(10000).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 8, <metaitem:component.smd.transistor> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:crystal.central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFineNiobiumTitanium> * 2]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:crystalcircuit> * 4]).duration(200).EUt(10000).buildAndRegister();
for fluid, amount in fluids {
	gt.circuit_assembler.recipeBuilder()
		.inputs([<metaitem:board.master>, <metaitem:crystal.system_on_chip>, <ore:wireFineNiobiumTitanium> * 4])
		.fluidInputs(fluid * amount)
		.outputs([<metaitem:circuit.processor.crystal> * 8])
		.duration(sec(5)).EUt(86000)
		.buildAndRegister();

}

// obsolete
//recipes.addShapeless(<contenttweaker:crystalcircuit>, [<gregtech:meta_item_2:32496>]);	


/////////////////   Tier Six Circuits | Master Tier   ///////////////////////


//Nanoprocessor Mainframe

<metaitem:circuit.mainframe.nano>.addTooltip(format.aqua(format.italic("This is the first Tier Six circuit.")));

//assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 24, <metaitem:plate.random_access_memory> * 12, <metaitem:component.smd.transistor> * 16, <metaitem:component.smd.capacitor> * 20, <metaitem:component.smd.diode> * 12, <contenttweaker:nanoprocessorarray> * 2, <ore:frameGtTungstenSteel> * 4, <ore:wireGtSingleLumium> * 8]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:nanoprocessormainframe>]).duration(500).EUt(2000).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 24, <metaitem:plate.random_access_memory> * 12, <metaitem:component.smd.transistor> * 16, <metaitem:component.smd.capacitor> * 20, <metaitem:component.smd.diode> * 12, <contenttweaker:nanoprocessorarray> * 2, <ore:frameGtTungstenSteel> * 4, <ore:wireGtSingleLumium> * 8]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:nanoprocessormainframe>]).duration(500).EUt(2000).buildAndRegister();


//Quantum Processor Array

<metaitem:circuit.computer.quantum>.addTooltip(format.aqua(format.italic("This is the second Tier Six circuit.")));

//assembler.recipeBuilder().inputs([<metaitem:component.smd.diode> * 8, <metaitem:plate.power_integrated_circuit> * 4, <metaitem:component.smd.transistor> * 8, <contenttweaker:quantumprocessor> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:quantumeye>, <ore:plateChrome> * 2, <ore:wireGtSingleSignalum> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:quantumprocessorarray>]).duration(200).EUt(6000).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.smd.diode> * 8, <metaitem:plate.power_integrated_circuit> * 4, <metaitem:component.smd.transistor> * 8, <contenttweaker:quantumprocessor> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:quantumeye>, <ore:plateChrome> * 2, <ore:wireGtSingleSignalum> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:quantumprocessorarray>]).duration(200).EUt(6000).buildAndRegister();


//Crystal Processor

<metaitem:circuit.energy_flow>.displayName = "Crystal Processor";
<metaitem:circuit.energy_flow>.clearTooltip();
<metaitem:circuit.energy_flow>.addTooltip("Crystal Processor");
<metaitem:circuit.energy_flow>.addTooltip(format.aqua(format.italic("This is the third Tier Six circuit.")));

//assembler.findRecipe(7600, [<metaitem:component.smd.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:plate.random_access_memory> * 4, <metaitem:circuit.crystal_processor> * 2, <ore:wireFineNiobiumTitanium>.firstItem * 6], [<liquid:tin> * 288]).remove();
//assembler.findRecipe(7600, [<metaitem:component.smd.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:plate.random_access_memory> * 4, <metaitem:circuit.crystal_processor> * 2, <ore:wireFineNiobiumTitanium>.firstItem * 6], [<liquid:soldering_alloy> * 144]).remove();

//assembler.recipeBuilder().inputs([<metaitem:component.smd.capacitor> * 4, <contenttweaker:crystalcircuit> * 3, <metaitem:crystal.central_processing_unit>, <metaitem:plate.qbit_central_processing_unit>, <metaitem:component.small_coil> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:component.smd.diode> * 4, <ore:wireFineNiobiumTitanium> * 6]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.energy_flow>]).duration(100).EUt(20000).buildAndRegister();
//assembler.recipeBuilder().inputs([<metaitem:component.smd.capacitor> * 4, <contenttweaker:crystalcircuit> * 3, <metaitem:crystal.central_processing_unit>, <metaitem:plate.qbit_central_processing_unit>, <metaitem:component.small_coil> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:component.smd.diode> * 4, <ore:wireFineNiobiumTitanium> * 6]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.energy_flow>]).duration(100).EUt(20000).buildAndRegister();



//Wetware Circuit

<metaitem:circuit.wetware_processor>.displayName = "Wetware Circuit";
<metaitem:circuit.wetware_processor>.clearTooltip();
<metaitem:circuit.wetware_processor>.addTooltip("Wetware Circuit");
<metaitem:circuit.wetware_processor>.addTooltip(format.aqua(format.italic("This is the fourth and final Tier Six circuit.")));

gt.circuit_assembler.recipeBuilder()
	.inputs([<metaitem:plate.advanced_system_on_chip> * 4, <ore:wireGtSingleNaquadah> * 4, <metaitem:board.wetware>])
	.fluidInputs(<liquid:sterilized_growth_medium> * 1000)
	.outputs([<metaitem:circuit.wetware_processor> * 4])
	.duration(200).EUt(120000)
	.buildAndRegister();




/////////////////   Tier Seven Circuits | Ultimate Tier   ///////////////////////


//Quantum Processor Mainframe

<metaitem:circuit.mainframe.quantum>.addTooltip(format.aqua(format.italic("This is the first Tier Seven circuit.")));

gt.removeByOutput(gt.assembly_line, [<metaitem:circuit.mainframe.quantum>]);

for fluid, amount in fluids {
	gt.assembly_line.recipeBuilder()
		.inputs([<metaitem:component.smd.resistor.nano> * 64, 
			<metaitem:plate.power_integrated_circuit> * 8, 
			<metaitem:component.smd.transistor.nano> * 56, 
			<metaitem:component.smd.capacitor.nano> * 56, 
			<metaitem:component.smd.diode.nano> * 32, 
			<metaitem:quantumstar>, 
			<metaitem:circuit.computer.quantum> * 2, 
			<ore:frameGtHssg> * 4, 
			<ore:wireGtSingleIvSuperconductor> * 16])
		.fluidInputs(fluid * (amount * 4))
		.outputs([<metaitem:circuit.mainframe.quantum>])
		.duration(sec(25)).EUt(8000)
		.buildAndRegister();

	gt.assembly_line.recipeBuilder()
		.inputs([<metaitem:component.smd.resistor.quantum> * 32, 
			<metaitem:plate.power_integrated_circuit> * 8, 
			<metaitem:component.smd.transistor.quantum> * 28, 
			<metaitem:component.smd.capacitor.quantum> * 28, 
			<metaitem:component.smd.diode.quantum> * 16, 
			<metaitem:quantumstar>, 
			<metaitem:circuit.computer.quantum> * 2, 
			<ore:frameGtHssg> * 4, 
			<ore:wireGtSingleIvSuperconductor> * 16])
		.fluidInputs(fluid * (amount * 4))
		.outputs([<metaitem:circuit.mainframe.quantum>])
		.duration(sec(25)).EUt(8000)
		.buildAndRegister();
}



//Crystal Processor Array

<metaitem:circuit.computer.crystal>.addTooltip(format.aqua(format.italic("This is the second Tier Seven circuit.")));

gt.removeByOutput(gt.assembly_line, [<metaitem:circuit.computer.crystal>]);

for fluid, amount in fluids {
	gt.assembly_line.recipeBuilder()
		.inputs([<metaitem:component.smd.diode.crystal> * 8, 
			<metaitem:plate.high_power_integrated_circuit>, 
			<metaitem:component.smd.transistor.crystal> * 8, 
			<metaitem:circuit.energy_flow> * 4, 
			<metaitem:board.master>, 
			<metaitem:quantumeye>, 
			<ore:plateDraconium> * 2, 
			<ore:wireGtSingleLuvSuperconductor> * 16])
		.fluidInputs(fluid * (amount * 3))
		.outputs([<metaitem:circuit.computer.crystal>])
		.duration(sec(15)).EUt(30000)
		.buildAndRegister();
	
	gt.assembly_line.recipeBuilder()
		.inputs([<metaitem:component.smd.diode.quantum> * 16, 
			<metaitem:plate.high_power_integrated_circuit>, 
			<metaitem:component.smd.transistor.quantum> * 16, 
			<metaitem:circuit.energy_flow> * 4, 
			<metaitem:board.master>, 
			<metaitem:quantumeye>, 
			<ore:plateDraconium> * 2, 
			<ore:wireGtSingleLuvSuperconductor> * 16])
		.fluidInputs(fluid * (amount * 3))
		.outputs([<metaitem:circuit.computer.crystal>])
		.duration(sec(15)).EUt(30000)
		.buildAndRegister();
}



//Wetware Processor

//<metaitem:circuit.wetware_assembly>.displayName = "Wetware Processor";
//<metaitem:circuit.wetware_assembly>.clearTooltip();
//<metaitem:circuit.wetware_assembly>.addTooltip("Wetware Processor");
//<metaitem:circuit.wetware_assembly>.addTooltip(format.aqua(format.italic("This is the third and final Tier Seven circuit.")));

gt.assembly_line.recipeBuilder()
	.inputs([<metaitem:component.smd.resistor.crystal> * 32,
		<ore:foilSiliconRubber> * 16, 
		<metaitem:component.smd.transistor.crystal> * 32,
		<metaitem:component.smd.capacitor.crystal> * 32, 
		<metaitem:component.smd.diode.crystal> * 32, 
		<metaitem:circuit.wetware_processor> * 2, 
		<enderio:item_material:42> * 2, 
		<metaitem:plate.aram> * 4, 
		<ore:wireGtSingleZpmSuperconductor> * 6,
		<metaitem:cyber.processing.unit>])
	.fluidInputs(<liquid:sterilized_growth_medium> * 2000)
	.outputs(<metaitem:circuit.wetware_assembly>)
	.duration(400).EUt(120000)
	.buildAndRegister();

gt.assembly_line.recipeBuilder()
	.inputs([<metaitem:component.smd.resistor.wetware> * 16,
		<ore:foilSiliconRubber> * 16, 
		<metaitem:component.smd.transistor.wetware> * 16,
		<metaitem:component.smd.capacitor.wetware> * 16, 
		<metaitem:component.smd.diode.wetware> * 16, 
		<metaitem:circuit.wetware_processor> * 2, 
		<enderio:item_material:42> * 2, 
		<metaitem:plate.aram> * 4, 
		<ore:wireGtSingleZpmSuperconductor> * 6,
		<metaitem:cyber.processing.unit>])
	.fluidInputs(<liquid:sterilized_growth_medium> * 2000)
	.outputs(<metaitem:circuit.wetware_assembly>)
	.duration(400).EUt(120000)
	.buildAndRegister();



/////////////////   Tier Eight Circuits | Superconductor Tier   ///////////////////////
 
//Crystal Processor Mainframe

<metaitem:circuit.mainframe.crystal>.addTooltip(format.aqua(format.italic("This is the first Tier Eight circuit.")));

gt.removeByOutput(gt.assembly_line, [<metaitem:circuit.mainframe.crystal>]);

// change gregicality recipe !!
for fluid, amount in fluids {
	gt.assembly_line.recipeBuilder()
		.inputs([<metaitem:component.smd.resistor.quantum> * 64, 
			<metaitem:component.smd.resistor.quantum> * 64, 
			<metaitem:plate.high_power_integrated_circuit> * 4, 
			<metaitem:component.smd.transistor.quantum> * 64, 
			<metaitem:component.smd.capacitor.quantum> * 64, 
			<metaitem:component.smd.diode.quantum> * 48, 
			<enderio:item_material:19> * 4, 
			<extendedcrafting:material:18> * 8, 
			<metaitem:circuit.computer.crystal> * 2, 
			<gregtech:frame_hsse> * 4, 
			<ore:wireGtSingleLuvSuperconductor> * 32])
		.fluidInputs(fluid * (amount * 5))
		.outputs([<metaitem:circuit.mainframe.crystal>])
		.duration(sec(25)).EUt(30000)
		.buildAndRegister();

	gt.assembly_line.recipeBuilder()
		.inputs([<metaitem:component.smd.resistor.crystal> * 48, 
			<metaitem:plate.high_power_integrated_circuit> * 4, 
			<metaitem:component.smd.transistor.crystal> * 36, 
			<metaitem:component.smd.capacitor.crystal> * 32, 
			<metaitem:component.smd.diode.crystal> * 24, 
			<enderio:item_material:19> * 4, 
			<extendedcrafting:material:18> * 8, 
			<metaitem:circuit.computer.crystal> * 2, 
			<gregtech:frame_hsse> * 4, 
			<ore:wireGtSingleLuvSuperconductor> * 32])
		.fluidInputs(fluid * (amount * 5))
		.outputs([<metaitem:circuit.mainframe.crystal>])
		.duration(sec(25)).EUt(30000)
		.buildAndRegister();
}

 
 
//Wetware Processor Array 
 
<metaitem:circuit.wetware_super_computer>.displayName = "Wetware Processor Array";
<metaitem:circuit.wetware_super_computer>.clearTooltip();
<metaitem:circuit.wetware_super_computer>.addTooltip("Wetware Processor Array");
<metaitem:circuit.wetware_super_computer>.addTooltip(format.aqua(format.italic("This is the second and final Tier Eight circuit.")));

// change gregicality recipe !!
//gt.assembly_line.recipeBuilder().inputs(<gregtech:meta_item_2:32459> * 32, <gregtech:meta_item_1:19391> * 32, <gregtech:meta_item_2:32460> * 32, <gregtech:meta_item_2:32458> * 16, <gregtech:meta_item_2:32457> * 16, <ore:plateEuropium> * 4, <ore:wireGtSingleSuperconductor> * 8, <metaitem:circuit.wetware_assembly> * 2, <enderio:item_material:44> * 8).fluidInputs(<liquid:soldering_alloy> * 1152).outputs(<gregtech:meta_item_2:32500>).duration(600).EUt(122880).buildAndRegister();



/////////////////   Tier Nine Circuits | Infinite Tier   ///////////////////////


<metaitem:circuit.wetware_mainframe>.displayName = "Wetware Processor Mainframe";
<metaitem:circuit.wetware_mainframe>.clearTooltip();
<metaitem:circuit.wetware_mainframe>.addTooltip("Wetware Processor Mainframe");
<metaitem:circuit.wetware_mainframe>.addTooltip(format.aqua(format.italic("This is the first and only Tier Nine circuit.")));





<enderio:item_basic_capacitor>.displayName = "Basic RF Capacitor";
<enderio:item_basic_capacitor:1>.displayName = "Double-Layer RF Capacitor";
<enderio:item_basic_capacitor:2>.displayName = "Octadic RF Capacitor";


	
//Cables By Hand
recipes.removeByRecipeName("gregtech:tin_cable_1");
recipes.removeByRecipeName("gregtech:red_alloy_cable_1");
recipes.addShapeless(<ore:cableGtSingleTin>.firstItem, [<ore:wireGtSingleTin>,<ore:plateRubber>]);		//tin
recipes.addShapeless(<ore:cableGtSingleRedAlloy>.firstItem, [<ore:wireGtSingleRedAlloy>,<ore:plateRubber>]);		//red alloy
recipes.addShapeless(<ore:cableGtSingleCopper>.firstItem, [<ore:wireGtSingleCopper>,<ore:plateRubber>]);		//copper

//Rubber by hand
recipes.addShaped(<ore:plateRubber>.firstItem,[[gt.hammer],[<metaitem:rubber_drop>],[<metaitem:rubber_drop>]]);	

//Resonant Clathrate
furnace.remove(<minecraft:ender_pearl>);
furnace.addRecipe(<forestry:crafting_material>, <thermalfoundation:material:895>, 0.0);

//EnderIO Conduits
recipes.remove(<enderio:item_power_conduit>);
recipes.remove(<enderio:item_power_conduit:1>);
recipes.remove(<enderio:item_power_conduit:2>);
recipes.remove(<enderio:item_item_conduit>);
recipes.remove(<enderio:item_endergy_conduit:2>);
recipes.remove(<enderio:item_endergy_conduit:5>);
recipes.remove(<enderio:item_redstone_conduit>);
recipes.remove(<enderio:item_liquid_conduit:2>);
recipes.remove(<enderio:item_liquid_conduit:2>);
recipes.remove(<enderio:item_endergy_conduit:8>);
recipes.remove(<enderio:item_endergy_conduit:9>);
recipes.remove(<enderio:item_endergy_conduit:10>);
recipes.remove(<enderio:item_endergy_conduit:11>);
recipes.remove(<enderio:item_endergy_conduit:1>);
recipes.remove(<enderio:item_endergy_conduit:6>);
recipes.remove(<enderio:item_endergy_conduit>);
recipes.remove(<enderio:item_endergy_conduit:4>);

//LV Tier - Conductive Iron

// TODO: Remove all x1 and x9 converters

// change gregicality recipe !!
recipes.remove(<meta_tile_entity:gtadditions:convert_gteu.lv.4>);
recipes.remove(<meta_tile_entity:gtadditions:convert_forge.lv.4>);
recipes.remove(<meta_tile_entity:gtadditions:convert_gteu.lv.16>);
recipes.remove(<meta_tile_entity:gtadditions:convert_forge.lv.16>);
recipes.addShaped(<enderio:item_power_conduit> * 3, [									//Conductive Iron Conduit
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<ore:wireGtSingleConductiveIron>,<ore:wireGtSingleConductiveIron>,<ore:wireGtSingleConductiveIron>],
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_power_conduit>.displayName = "Conductive Iron Energy Conduit";
assembler.recipeBuilder().inputs([<ore:wireGtSingleConductiveIron> * 3, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_power_conduit> * 4]).duration(80).EUt(16).buildAndRegister();
//x4 LV ceu // change gregicality recipe !!
recipes.addShaped(<meta_tile_entity:gtadditions:convert_gteu.lv.4>, [[<ore:wireGtQuadrupleConductiveIron>, gt.getCirc("LV"), <ore:wireGtQuadrupleConductiveIron>], [<enderio:item_power_conduit>, <meta_tile_entity:gregtech:hull.lv>, <enderio:item_power_conduit>], [<ore:wireGtQuadrupleConductiveIron>, <ore:chestWood>, <ore:wireGtQuadrupleConductiveIron>]]);
//x4 LV cef
recipes.addShaped(<meta_tile_entity:gtadditions:convert_forge.lv.4>, [[<enderio:item_power_conduit>, gt.getCirc("LV"), <enderio:item_power_conduit>], [<ore:wireGtQuadrupleConductiveIron>, <meta_tile_entity:gregtech:hull.lv>, <ore:wireGtQuadrupleConductiveIron>], [<enderio:item_power_conduit>, <ore:chestWood>, <enderio:item_power_conduit>]]);
//x16 LV ceu
recipes.addShaped(<meta_tile_entity:gtadditions:convert_gteu.lv.16>, [[<ore:wireGtHexConductiveIron>, gt.getCirc("LV"), <ore:wireGtHexConductiveIron>], [<enderio:item_power_conduit>, <meta_tile_entity:gregtech:hull.lv>, <enderio:item_power_conduit>], [<ore:wireGtHexConductiveIron>, <ore:chestWood>, <ore:wireGtHexConductiveIron>]]);
//x16 LV cef
recipes.addShaped(<meta_tile_entity:gtadditions:convert_forge.lv.16>, [[<enderio:item_power_conduit>, gt.getCirc("LV"), <enderio:item_power_conduit>], [<ore:wireGtHexConductiveIron>, <meta_tile_entity:gregtech:hull.lv>, <ore:wireGtHexConductiveIron>], [<enderio:item_power_conduit>, <ore:chestWood>, <enderio:item_power_conduit>]]);


//MV Tier - Energetic Alloy
// change gregicality recipe !!
recipes.remove(<meta_tile_entity:gtadditions:convert_gteu.mv.4>);
recipes.remove(<meta_tile_entity:gtadditions:convert_forge.mv.4>);
recipes.remove(<meta_tile_entity:gtadditions:convert_gteu.mv.16>);
recipes.remove(<meta_tile_entity:gtadditions:convert_forge.mv.16>);
recipes.addShaped(<enderio:item_power_conduit:1> * 3, [									//Energetic Alloy Conduit
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<gregtech:cable:501>,<enderio:item_power_conduit>,<gregtech:cable:501>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_power_conduit:1>.displayName = "Energetic Alloy Energy Conduit";
assembler.recipeBuilder().inputs([<gregtech:cable:501> * 2, <enderio:item_power_conduit>, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_power_conduit:1> * 4]).duration(80).EUt(16).buildAndRegister();
//x4 MV ceu
recipes.addShaped(<meta_tile_entity:gtadditions:convert_gteu.mv.4>, [[<ore:wireGtQuadrupleEnergeticAlloy>, gt.getCirc("MV"), <ore:wireGtQuadrupleEnergeticAlloy>], [<enderio:item_power_conduit:1>, <meta_tile_entity:gregtech:hull.mv>,<enderio:item_power_conduit:1>], [<ore:wireGtQuadrupleEnergeticAlloy>, <ore:chestWood>, <ore:wireGtQuadrupleEnergeticAlloy>]]);
//x4 MV cef
recipes.addShaped(<meta_tile_entity:gtadditions:convert_forge.mv.4>, [[<enderio:item_power_conduit:1>, gt.getCirc("MV"), <enderio:item_power_conduit:1>], [<ore:wireGtQuadrupleEnergeticAlloy>, <meta_tile_entity:gregtech:hull.mv>, <ore:wireGtQuadrupleEnergeticAlloy>], [<enderio:item_power_conduit:1>, <ore:chestWood>, <enderio:item_power_conduit:1>]]);
//x16 MV ceu
recipes.addShaped(<meta_tile_entity:gtadditions:convert_gteu.mv.16>, [[<ore:wireGtHexEnergeticAlloy>, gt.getCirc("MV"), <ore:wireGtHexEnergeticAlloy>], [<enderio:item_power_conduit:1>, <meta_tile_entity:gregtech:hull.mv>, <enderio:item_power_conduit:1>], [<ore:wireGtHexEnergeticAlloy>, <ore:chestWood>, <ore:wireGtHexEnergeticAlloy>]]);
//x16 MV cef
recipes.addShaped(<meta_tile_entity:gtadditions:convert_forge.mv.16>, [[<enderio:item_power_conduit:1>, gt.getCirc("MV"), <enderio:item_power_conduit:1>], [<ore:wireGtHexEnergeticAlloy>, <meta_tile_entity:gregtech:hull.mv>, <ore:wireGtHexEnergeticAlloy>], [<enderio:item_power_conduit:1>, <ore:chestWood>, <enderio:item_power_conduit:1>]]);


//HV Tier - Vibrant Alloy 
// change gregicality recipe !!
recipes.remove(<meta_tile_entity:gtadditions:convert_gteu.hv.4>);
recipes.remove(<meta_tile_entity:gtadditions:convert_forge.hv.4>);
recipes.remove(<meta_tile_entity:gtadditions:convert_gteu.hv.16>);
recipes.remove(<meta_tile_entity:gtadditions:convert_forge.hv.16>);
recipes.addShaped(<enderio:item_power_conduit:2> * 3, [									//vibrant alloy conduit
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<ore:wireGtSingleVibrantAlloy>,<enderio:item_power_conduit:1>,<ore:wireGtSingleVibrantAlloy>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_power_conduit:2>.displayName = "Vibrant Alloy Energy Conduit";
assembler.recipeBuilder().inputs([<ore:wireGtSingleVibrantAlloy> * 2, <enderio:item_power_conduit:1>, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_power_conduit:2> * 4]).duration(80).EUt(16).buildAndRegister();	
//x4 HV ceu
recipes.addShaped(<meta_tile_entity:gtadditions:convert_gteu.hv.4>, [[<ore:wireGtQuadrupleVibrantAlloy>, gt.getCirc("HV"), <ore:wireGtQuadrupleVibrantAlloy>], [<enderio:item_power_conduit:2>, <meta_tile_entity:gregtech:hull.hv>, <enderio:item_power_conduit:2>], [<ore:wireGtQuadrupleVibrantAlloy>, <ore:chestWood>, <ore:wireGtQuadrupleVibrantAlloy>]]);
//x4 HV cef
recipes.addShaped(<meta_tile_entity:gtadditions:convert_forge.hv.4>, [[<enderio:item_power_conduit:2>, gt.getCirc("HV"), <enderio:item_power_conduit:2>], [<ore:wireGtQuadrupleVibrantAlloy>, <meta_tile_entity:gregtech:hull.hv>, <ore:wireGtQuadrupleVibrantAlloy>], [<enderio:item_power_conduit:2>, <ore:chestWood>, <enderio:item_power_conduit:2>]]);
//x16 HV ceu
recipes.addShaped(<meta_tile_entity:gtadditions:convert_gteu.hv.16>, [[<ore:wireGtHexVibrantAlloy>, gt.getCirc("HV"), <ore:wireGtHexVibrantAlloy>], [<enderio:item_power_conduit:2>, <meta_tile_entity:gregtech:hull.hv>, <enderio:item_power_conduit:2>], [<ore:wireGtHexVibrantAlloy>, <ore:chestWood>, <ore:wireGtHexVibrantAlloy>]]);
//x16 HV cef
recipes.addShaped(<meta_tile_entity:gtadditions:convert_forge.hv.16>, [[<enderio:item_power_conduit:2>, gt.getCirc("HV"), <enderio:item_power_conduit:2>], [<ore:wireGtHexVibrantAlloy>, <meta_tile_entity:gregtech:hull.hv>, <ore:wireGtHexVibrantAlloy>], [<enderio:item_power_conduit:2>, <ore:chestWood>, <enderio:item_power_conduit:2>]]);



//EV Tier - End Steel Conduit
// change gregicality recipe !!
recipes.remove(<meta_tile_entity:gtadditions:convert_gteu.ev.4>);
recipes.remove(<meta_tile_entity:gtadditions:convert_forge.ev.4>);
recipes.remove(<meta_tile_entity:gtadditions:convert_gteu.ev.16>);
recipes.remove(<meta_tile_entity:gtadditions:convert_forge.ev.16>);
recipes.addShaped(<enderio:item_endergy_conduit:1> * 3, [									//End Steel Conduit
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<gregtech:cable:512>,<enderio:item_power_conduit:2>,<gregtech:cable:512>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_endergy_conduit:1>.displayName = "End Steel Energy Conduit";
assembler.recipeBuilder().inputs([<gregtech:cable:512> * 2, <enderio:item_power_conduit:2>, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_endergy_conduit:1> * 4]).duration(80).EUt(16).buildAndRegister();	
//x4 EV ceu
recipes.addShaped(<meta_tile_entity:gtadditions:convert_gteu.ev.4>, [[<ore:wireGtQuadrupleEndSteel>, gt.getCirc("EV"), <ore:wireGtQuadrupleEndSteel>], [<enderio:item_endergy_conduit:1>, <meta_tile_entity:gregtech:hull.ev>, <enderio:item_endergy_conduit:1>], [<ore:wireGtQuadrupleEndSteel>, <ore:chestWood>, <ore:wireGtQuadrupleEndSteel>]]);
//x4 EV cef
recipes.addShaped(<meta_tile_entity:gtadditions:convert_forge.ev.4>, [[<enderio:item_endergy_conduit:1>, gt.getCirc("EV"), <enderio:item_endergy_conduit:1>], [<ore:wireGtQuadrupleEndSteel>, <meta_tile_entity:gregtech:hull.ev>, <ore:wireGtQuadrupleEndSteel>], [<enderio:item_endergy_conduit:1>, <ore:chestWood>,<enderio:item_endergy_conduit:1>]]);
//x16 EV ceu
recipes.addShaped(<meta_tile_entity:gtadditions:convert_gteu.ev.16>, [[<ore:wireGtHexEndSteel>, gt.getCirc("EV"), <ore:wireGtHexEndSteel>], [<enderio:item_endergy_conduit:1>, <meta_tile_entity:gregtech:hull.ev>, <enderio:item_endergy_conduit:1>], [<ore:wireGtHexEndSteel>, <ore:chestWood>, <ore:wireGtHexEndSteel>]]);
//x16 EV cef
recipes.addShaped(<meta_tile_entity:gtadditions:convert_forge.ev.16>, [[<enderio:item_endergy_conduit:1>, gt.getCirc("EV"), <enderio:item_endergy_conduit:1>], [<ore:wireGtHexEndSteel>, <meta_tile_entity:gregtech:hull.ev>, <ore:wireGtHexEndSteel>], [<enderio:item_endergy_conduit:1>, <ore:chestWood>, <enderio:item_endergy_conduit:1>]]);

	
//IV Tier - Lumium Conduit
// change gregicality recipe !!
recipes.remove(<meta_tile_entity:gtadditions:convert_gteu.iv.4>);
recipes.remove(<meta_tile_entity:gtadditions:convert_forge.iv.4>);
recipes.remove(<meta_tile_entity:gtadditions:convert_gteu.iv.16>);
recipes.remove(<meta_tile_entity:gtadditions:convert_forge.iv.16>);	
recipes.addShaped(<enderio:item_endergy_conduit:6> * 3, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<gregtech:cable:506>,<enderio:item_endergy_conduit:1> ,<gregtech:cable:506>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_endergy_conduit:6>.displayName = "Lumium Energy Conduit";
assembler.recipeBuilder().inputs([<gregtech:cable:506> * 2, <enderio:item_endergy_conduit:1> , <ore:itemConduitBinder> * 6]).outputs([<enderio:item_endergy_conduit:6> * 4]).duration(80).EUt(16).buildAndRegister();

//x4 IV ceu
recipes.addShaped(<meta_tile_entity:gtadditions:convert_gteu.iv.4>, [[<ore:wireGtQuadrupleLumium>, gt.getCirc("IV"), <ore:wireGtQuadrupleLumium>], [<enderio:item_endergy_conduit:6>, <meta_tile_entity:gregtech:hull.iv>, <enderio:item_endergy_conduit:6>], [<ore:wireGtQuadrupleLumium>, <ore:chestWood>, <ore:wireGtQuadrupleLumium>]]);
//x4 IV cef
recipes.addShaped(<meta_tile_entity:gtadditions:convert_forge.iv.4>, [[<enderio:item_endergy_conduit:6>, gt.getCirc("IV"), <enderio:item_endergy_conduit:6>], [<ore:wireGtQuadrupleLumium>, <meta_tile_entity:gregtech:hull.iv>, <ore:wireGtQuadrupleLumium>], [<enderio:item_endergy_conduit:6>, <ore:chestWood>,<enderio:item_endergy_conduit:6>]]);
//x16 IV ceu
recipes.addShaped(<meta_tile_entity:gtadditions:convert_gteu.iv.16>, [[<ore:wireGtHexLumium>, gt.getCirc("IV"), <ore:wireGtHexLumium>], [<enderio:item_endergy_conduit:6>, <meta_tile_entity:gregtech:hull.iv>, <enderio:item_endergy_conduit:6>], [<ore:wireGtHexLumium>, <ore:chestWood>, <ore:wireGtHexLumium>]]);
//x16 IV cef
recipes.addShaped(<meta_tile_entity:gtadditions:convert_forge.iv.16>, [[<enderio:item_endergy_conduit:6>, gt.getCirc("IV"), <enderio:item_endergy_conduit:6>], [<ore:wireGtHexLumium>, <meta_tile_entity:gregtech:hull.iv>, <ore:wireGtHexLumium>], [<enderio:item_endergy_conduit:6>, <ore:chestWood>, <enderio:item_endergy_conduit:6>]]);



//LUV Tier - Signalum Conduit
// change gregicality recipe !!
recipes.remove(<meta_tile_entity:gtadditions:convert_gteu.luv.4>);
recipes.remove(<meta_tile_entity:gtadditions:convert_forge.luv.4>);
recipes.remove(<meta_tile_entity:gtadditions:convert_gteu.luv.16>);
recipes.remove(<meta_tile_entity:gtadditions:convert_forge.luv.16>);
recipes.addShaped(<enderio:item_endergy_conduit:4> * 3, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<gregtech:cable:507>,<enderio:item_endergy_conduit:6>,<gregtech:cable:507>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_endergy_conduit:4>.displayName = "Signalum Energy Conduit";
assembler.recipeBuilder().inputs([<gregtech:cable:507> * 2, <enderio:item_endergy_conduit:6>, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_endergy_conduit:4> * 4]).duration(80).EUt(16).buildAndRegister();
//x4 LUV ceu
recipes.addShaped(<meta_tile_entity:gtadditions:convert_gteu.luv.4>, [[<ore:wireGtQuadrupleSignalum>, gt.getCirc("LuV"), <ore:wireGtQuadrupleSignalum>], [<enderio:item_endergy_conduit:4>, <meta_tile_entity:gregtech:hull.luv>, <enderio:item_endergy_conduit:4>], [<ore:wireGtQuadrupleSignalum>, <ore:chestWood>, <ore:wireGtQuadrupleSignalum>]]);
//x4 LUV cef
recipes.addShaped(<meta_tile_entity:gtadditions:convert_forge.luv.4>, [[<enderio:item_endergy_conduit:4>, gt.getCirc("LuV"), <enderio:item_endergy_conduit:4>], [<ore:wireGtQuadrupleSignalum>, <meta_tile_entity:gregtech:hull.luv>, <ore:wireGtQuadrupleSignalum>], [<enderio:item_endergy_conduit:4>, <ore:chestWood>,<enderio:item_endergy_conduit:4>]]);
//x16 LUV ceu
recipes.addShaped(<meta_tile_entity:gtadditions:convert_gteu.luv.16>, [[<ore:wireGtHexSignalum>, gt.getCirc("LuV"), <ore:wireGtHexSignalum>], [<enderio:item_endergy_conduit:4>, <meta_tile_entity:gregtech:hull.luv>, <enderio:item_endergy_conduit:4>], [<ore:wireGtHexSignalum>, <ore:chestWood>, <ore:wireGtHexSignalum>]]);
//x16 LUV cef
recipes.addShaped(<meta_tile_entity:gtadditions:convert_forge.luv.16>, [[<enderio:item_endergy_conduit:4>, gt.getCirc("LuV"), <enderio:item_endergy_conduit:4>], [<ore:wireGtHexSignalum>, <meta_tile_entity:gregtech:hull.luv>, <ore:wireGtHexSignalum>], [<enderio:item_endergy_conduit:4>, <ore:chestWood>, <enderio:item_endergy_conduit:4>]]);



//ZPM Tier - Enderium Conduit	
// change gregicality recipe !!
recipes.remove(<meta_tile_entity:gtadditions:convert_gteu.zpm.4>);
recipes.remove(<meta_tile_entity:gtadditions:convert_forge.zpm.4>);
recipes.remove(<meta_tile_entity:gtadditions:convert_gteu.zpm.16>);
recipes.remove(<meta_tile_entity:gtadditions:convert_forge.zpm.16>);
recipes.addShaped(<enderio:item_endergy_conduit> * 3, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<gregtech:cable:963>,<enderio:item_endergy_conduit:4>,<gregtech:cable:963>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_endergy_conduit>.displayName = "Enderium Energy Conduit";
assembler.recipeBuilder().inputs([<gregtech:cable:963>* 2, <enderio:item_endergy_conduit:4>, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_endergy_conduit> * 4]).duration(80).EUt(16).buildAndRegister();
//x4 ZPM ceu
recipes.addShaped(<meta_tile_entity:gtadditions:convert_gteu.zpm.4>, [[<ore:wireGtQuadrupleEnderium>, gt.getCirc("ZPM"), <ore:wireGtQuadrupleEnderium>], [<enderio:item_endergy_conduit>, <meta_tile_entity:gregtech:hull.zpm>, <enderio:item_endergy_conduit>], [<ore:wireGtQuadrupleEnderium>, <ore:chestWood>, <ore:wireGtQuadrupleEnderium>]]);
//x4 ZPM cef
recipes.addShaped(<meta_tile_entity:gtadditions:convert_forge.zpm.4>, [[<enderio:item_endergy_conduit>, gt.getCirc("ZPM"), <enderio:item_endergy_conduit>], [<ore:wireGtQuadrupleEnderium>, <meta_tile_entity:gregtech:hull.zpm>, <ore:wireGtQuadrupleEnderium>], [<enderio:item_endergy_conduit>, <ore:chestWood>,<enderio:item_endergy_conduit>]]);
//x16 ZPM ceu
recipes.addShaped(<meta_tile_entity:gtadditions:convert_gteu.zpm.16>, [[<ore:wireGtHexEnderium>, gt.getCirc("ZPM"), <ore:wireGtHexEnderium>], [<enderio:item_endergy_conduit>, <meta_tile_entity:gregtech:hull.zpm>, <enderio:item_endergy_conduit>], [<ore:wireGtHexEnderium>, <ore:chestWood>, <ore:wireGtHexEnderium>]]);
//x16 ZPM cef
recipes.addShaped(<meta_tile_entity:gtadditions:convert_forge.zpm.16>, [[<enderio:item_endergy_conduit>, gt.getCirc("ZPM"), <enderio:item_endergy_conduit>], [<ore:wireGtHexEnderium>, <meta_tile_entity:gregtech:hull.zpm>, <ore:wireGtHexEnderium>], [<enderio:item_endergy_conduit>, <ore:chestWood>, <enderio:item_endergy_conduit>]]);


//UV Tier - Draconium Conduit
// change gregicality recipe !!
recipes.remove(<meta_tile_entity:gtadditions:convert_gteu.uv.4>);
recipes.remove(<meta_tile_entity:gtadditions:convert_forge.uv.4>);
recipes.remove(<meta_tile_entity:gtadditions:convert_gteu.uv.16>);
recipes.remove(<meta_tile_entity:gtadditions:convert_forge.uv.16>);
recipes.addShaped(<enderio:item_endergy_conduit:10> * 3, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<ore:wireGtSingleDraconium>,<enderio:item_endergy_conduit>,<ore:wireGtSingleDraconium>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_endergy_conduit:10>.displayName = "Draconium Energy Conduit";
assembler.recipeBuilder().inputs([<ore:wireGtSingleDraconium>* 2, <enderio:item_endergy_conduit>, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_endergy_conduit:10> * 4]).duration(80).EUt(16).buildAndRegister();
//x4 UV ceu
recipes.addShaped(<meta_tile_entity:gtadditions:convert_gteu.uv.4>, [[<ore:wireGtQuadrupleDraconium>, gt.getCirc("UV"), <ore:wireGtQuadrupleDraconium>], [<enderio:item_endergy_conduit:10>, <meta_tile_entity:gregtech:hull.uv>, <enderio:item_endergy_conduit:10>], [<ore:wireGtQuadrupleDraconium>, <ore:chestWood>, <ore:wireGtQuadrupleDraconium>]]);
//x4 UV cef
recipes.addShaped(<meta_tile_entity:gtadditions:convert_forge.uv.4>, [[<enderio:item_endergy_conduit:10>, gt.getCirc("UV"), <enderio:item_endergy_conduit:10>], [<ore:wireGtQuadrupleDraconium>, <meta_tile_entity:gregtech:hull.uv>, <ore:wireGtQuadrupleDraconium>], [<enderio:item_endergy_conduit:10>, <ore:chestWood>,<enderio:item_endergy_conduit:10>]]);
//x16 UV ceu
recipes.addShaped(<meta_tile_entity:gtadditions:convert_gteu.uv.16>, [[<ore:wireGtHexDraconium>, gt.getCirc("UV"), <ore:wireGtHexDraconium>], [<enderio:item_endergy_conduit:10>, <meta_tile_entity:gregtech:hull.uv>, <enderio:item_endergy_conduit:10>], [<ore:wireGtHexDraconium>, <ore:chestWood>, <ore:wireGtHexDraconium>]]);
//x16 UV cef
recipes.addShaped(<meta_tile_entity:gtadditions:convert_forge.uv.16>, [[<enderio:item_endergy_conduit:10>, gt.getCirc("UV"), <enderio:item_endergy_conduit:10>], [<ore:wireGtHexDraconium>, <meta_tile_entity:gregtech:hull.uv>, <ore:wireGtHexDraconium>], [<enderio:item_endergy_conduit:10>, <ore:chestWood>, <enderio:item_endergy_conduit:10>]]);


//MAX Tier - Superconductor
recipes.addShaped(<enderio:item_endergy_conduit:11> * 3, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<ore:wireGtSingleSuperconductor>,<enderio:item_endergy_conduit:10>,<ore:wireGtSingleSuperconductor>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_endergy_conduit:11>.displayName = "Superconducter Energy Conduit";
assembler.recipeBuilder().inputs([<ore:wireGtSingleSuperconductor>* 2, <enderio:item_endergy_conduit:10>, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_endergy_conduit:11> * 4]).duration(80).EUt(16).buildAndRegister();
	
//removing bad field generator assembling recipes
assembler.findRecipe(30, [gt.getCirc("LV").firstItem * 4, <ore:dustEnderPearl>.firstItem], [<liquid:osmium> * 288]).remove();
assembler.findRecipe(125, [gt.getCirc("MV").firstItem * 4, <ore:dustEnderEye>.firstItem], [<liquid:osmium> * 144]).remove();
assembler.findRecipe(120, [gt.getCirc("MV").firstItem * 4, <ore:dustEnderEye>.firstItem], [<liquid:osmium> * 576]).remove();
assembler.findRecipe(500, [gt.getCirc("HV").firstItem * 4, <metaitem:quantumeye>], [<liquid:osmium> * 244]).remove();
assembler.findRecipe(1920, [gt.getCirc("IV").firstItem * 4, <ore:dustNetherStar>.firstItem], [<liquid:osmium> * 2304]).remove();
//assembler.findRecipe(7680, [gt.getCirc("LuV").firstItem * 4, <metaitem:quantumstar>], [<liquid:osmium> * 4608]).remove();

//Item conduit - by hand
recipes.addShaped(<enderio:item_item_conduit> * 4, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<contenttweaker:pulsatingwire>,<contenttweaker:pulsatingwire>,<contenttweaker:pulsatingwire>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

//redstone conduit - by hand
recipes.addShaped(<enderio:item_redstone_conduit> * 4, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<ore:wireGtSingleRedAlloy>,<ore:wireGtSingleRedAlloy>,<ore:wireGtSingleRedAlloy>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

//me conduit - by hand
recipes.addShaped(<enderio:item_me_conduit> * 4, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<appliedenergistics2:part:36>,<appliedenergistics2:part:36>,<appliedenergistics2:part:36>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

//ender fluid conduit - by hand
recipes.addShaped(<enderio:item_liquid_conduit:2> * 4, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<ore:wireGtSingleVibrantAlloy>,<enderio:item_liquid_conduit:1>,<ore:wireGtSingleVibrantAlloy>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

//redstone conduit - assembler
assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleRedAlloy> * 3, <ore:itemConduitBinder> * 6])
    .outputs([<enderio:item_redstone_conduit> * 8])
    .duration(80).EUt(16).buildAndRegister();

//item conduit - assembler
assembler.recipeBuilder()
    .inputs([<contenttweaker:pulsatingwire> * 3, <ore:itemConduitBinder> * 6])
    .outputs([<enderio:item_item_conduit> * 8])
    .duration(80).EUt(16).buildAndRegister();

//ender fluid conduit - assembler
assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleVibrantAlloy> * 2, <enderio:item_liquid_conduit:1>, <ore:itemConduitBinder> * 6])
    .outputs([<enderio:item_liquid_conduit:2> * 8])
    .duration(80).EUt(16).buildAndRegister();

mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:2>);
mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:3>);
mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:5>);
mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:7>);
mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:8>);
mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:9>);


//Ender Pearls
alloy.recipeBuilder().inputs([<minecraft:diamond>,<forestry:crafting_material>]).outputs([<minecraft:ender_pearl>]).duration(300).EUt(16).buildAndRegister();

//Wrought Iron
furnace.remove(<ore:nuggetWroughtIron>);
furnace.addRecipe(<ore:ingotWroughtIron>.firstItem, <minecraft:iron_ingot>, 0.0);
	
//LV Casing
recipes.removeByRecipeName("gregtech:casing_lv");

// remove the steel plate assembler recipe for LV casing
assembler.findRecipe(16, [<ore:plateSteel>.firstItem * 8, gt.getCirc(8)], [null]).remove();

// use wrought iron instead
assembler.recipeBuilder()
    .inputs(<ore:plateWroughtIron> * 8)
    .notConsumable(gt.getCirc(8))
    .outputs([<gregtech:machine_casing:1>])
    .duration(30).EUt(16).buildAndRegister();

// Buckets from iron plates
assembler.recipeBuilder()
    .inputs(<ore:plateElectricalSteel> * 3)
    .notConsumable(gt.getCirc(3))
    .outputs([<minecraft:bucket>])
    .duration(30).EUt(16).buildAndRegister();

	
//LV Hull
recipes.remove(<meta_tile_entity:gregtech:hull.lv>);	
recipes.addShaped(<meta_tile_entity:gregtech:hull.lv>, [
	[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>], 
	[<ore:cableGtSingleTin>, <gregtech:machine_casing:1>, <ore:cableGtSingleTin>]]);	
assembler.findRecipe(16, [<ore:cableGtSingleTin>.firstItem * 2, <gregtech:machine_casing:1>], [<liquid:plastic> * 288]).remove();	

recipes.addShaped(<metaitem:electric.motor.lv>, [
	[<ore:cableGtSingleTin>, <ore:wireFineCopper>, <ore:stickIron>], 
	[<ore:wireFineCopper>, <ore:stickIronMagnetic>, <ore:wireFineCopper>],
	[<ore:stickIron>, <ore:wireFineCopper>, <ore:cableGtSingleTin>]]);

//Diode
recipes.remove(<metaitem:component.diode>);
recipes.addShaped(<metaitem:component.diode> * 4, [[null, <minecraft:glass_pane>, null], [<ore:wireFineTin>, <ore:dustTinyGallium>, <ore:wireFineTin>], [null, <minecraft:glass_pane>, null]]);	
	
//Wood Pulp
recipes.addShapeless(<ore:dustWood>.firstItem * 4,[<ore:logWood>,gt.mortar]);	

//Charcoal
furnace.addRecipe(<minecraft:coal:1>, <minecraft:log>, 0.0);

//Red Alloy Dust
recipes.addShapeless(<ore:dustRedAlloy>.firstItem, [<ore:dustCopper>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]);

//Scannable
recipes.remove(<scannable:module_blank>);
recipes.addShaped(<scannable:module_blank>, [
	[<metaitem:board.coated>,<metaitem:board.coated>,<metaitem:board.coated>],
	[<metaitem:board.coated>,<metaitem:board.coated>,<metaitem:board.coated>],
	[<ore:wireGtSingleGold>,<ore:wireGtSingleGold>,<ore:wireGtSingleGold>]]);

recipes.remove(<scannable:scanner>);
recipes.addShaped(<scannable:scanner>, [
	[<metaitem:emitter.lv>,null,<metaitem:emitter.lv>],
	[<ore:plateIron>,gt.getCirc("LV"),<ore:plateIron>],
	[<ore:plateIron>,<metaitem:battery.re.lv.lithium>,<ore:plateIron>]]);
	
recipes.addShapeless(<extrautils2:endershard> * 2,[<enderio:item_material:62>]);
recipes.addShapeless(<enderio:item_material:62>,[<extrautils2:endershard>,<extrautils2:endershard>]);
recipes.removeByRecipeName("enderio:ender_defragmentation");
recipes.addShaped(<minecraft:ender_pearl>,[[<enderio:item_material:62>,<enderio:item_material:62>],[<enderio:item_material:62>,<enderio:item_material:62>]]);

autoclave.findRecipe(120, [<gregtech:meta_item_2:32572> * 9], [<liquid:water> * 1800]).remove(); //??	


	
//Pyrolyse Oven
recipes.remove(<meta_tile_entity:gregtech:pyrolyse_oven>);	
recipes.addShaped(<meta_tile_entity:gregtech:pyrolyse_oven>, [
	[<metaitem:electric.piston.lv>, gt.getCirc("MV"), <ore:wireGtQuadrupleCupronickel>], 
	[gt.getCirc("MV"), <meta_tile_entity:gregtech:hull.ulv>, gt.getCirc("MV")], 
	[<metaitem:electric.piston.lv>, <metaitem:electric.pump.lv>, <ore:wireGtQuadrupleCupronickel>]]);
	
//ULV Casing
recipes.remove(<gregtech:machine_casing>);

    // ULV Machine Casing
    recipes.addShaped("of_ulv_casing_wrench", <gregtech:machine_casing>, [
        [<ore:plateElectricalSteel>, <ore:plateElectricalSteel>, <ore:plateElectricalSteel>],
        [<ore:plateElectricalSteel>,      gt.wrench    , <ore:plateElectricalSteel>],
        [<ore:plateElectricalSteel>, <ore:plateElectricalSteel>, <ore:plateElectricalSteel>]]);

    // LV Machine Casing
    recipes.addShaped("of_lv_casing_wrench", <gregtech:machine_casing:1>, [
        [<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>],
        [<ore:plateWroughtIron>,          gt.wrench       , <ore:plateWroughtIron>],
        [<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>]]);

    // LuV Machine Casing
    recipes.addShaped("of_luv_casing_wrench", <gregtech:machine_casing:6>, [
        [<ore:plateLumium>, <ore:plateLumium>, <ore:plateLumium>], 
        [<ore:plateLumium>,       gt.wrench     , <ore:plateLumium>], 
        [<ore:plateLumium>, <ore:plateLumium>, <ore:plateLumium>]]);


assembler.findRecipe(16,[<ore:plateWroughtIron>.firstItem * 8, gt.getCirc(8)], [null]).remove();	
assembler.findRecipe(4, [<ore:plateWroughtIron>.firstItem * 2, gt.getCirc(2)], [null]).remove();	
assembler.findRecipe(4, [<ore:plateIron>.firstItem * 2, gt.getCirc(2)], [null]).remove();	
assembler.findRecipe(4, [<ore:plateWroughtIron>.firstItem * 6, gt.getCirc(6)], [null]).remove();	
assembler.findRecipe(4, [<ore:plateIron>.firstItem * 6, gt.getCirc(6)], [null]).remove();	
assembler.findRecipe(4, [<ore:plateWroughtIron>.firstItem * 7, gt.getCirc(7)], [null]).remove();	
assembler.findRecipe(4, [<ore:plateIron>.firstItem * 7, gt.getCirc(7)], [null]).remove();	
assembler.findRecipe(2, [<ore:plateWroughtIron>.firstItem * 5, <minecraft:chest>], [null]).remove();	
assembler.findRecipe(2, [<ore:plateIron>.firstItem * 5, <minecraft:chest>], [null]).remove();	
assembler.findRecipe(4, [<ore:plateWroughtIron>.firstItem * 4, <minecraft:redstone>], [null]).remove();	
assembler.findRecipe(4, [<ore:plateIron>.firstItem * 4, <minecraft:redstone>], [null]).remove();	
assembler.recipeBuilder().inputs(<ore:plateElectricalSteel> * 8).notConsumable(gt.getCirc(8)).outputs([<gregtech:machine_casing>]).duration(30).EUt(16).buildAndRegister();
assembler.findRecipe(16, [<gregtech:cable:5035> * 2, <gregtech:machine_casing>], [<liquid:plastic> * 288]).remove();	
assembler.recipeBuilder().inputs(<ore:plateIron> * 3,<gregtech:machine_casing>,<ore:cableGtSingleRedAlloy> * 2).outputs([<meta_tile_entity:gregtech:hull.ulv>]).duration(30).EUt(16).buildAndRegister();

//ULV Hull
recipes.remove(<gregtech:machine:500>);	
recipes.addShaped(<gregtech:machine:500>, [
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
	[<ore:cableGtSingleRedAlloy>, <gregtech:machine_casing>, <ore:cableGtSingleRedAlloy>]]);	
	
//Pyro Oven
pyro.findRecipe(64, [<minecraft:log> * 16, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [null]).remove();	
pyro.findRecipe(96, [<minecraft:log> * 16, gt.getCirc(1)], [<liquid:nitrogen> * 400]).remove();	
pyro.findRecipe(192, [<minecraft:log> * 16, gt.getCirc(2)], [null]).remove();	
pyro.findRecipe(64, [<minecraft:log> * 16, gt.getCirc(3)], [null]).remove();	
pyro.findRecipe(96, [<minecraft:log> * 16, gt.getCirc(4)], [<liquid:nitrogen> * 400]).remove();	
pyro.findRecipe(64, [<minecraft:log> * 16, gt.getCirc(5)], [null]).remove();	
pyro.findRecipe(96, [<minecraft:log> * 16, gt.getCirc(6)], [<liquid:nitrogen> * 400]).remove();	
pyro.findRecipe(64, [<minecraft:log> * 16, gt.getCirc(7)], [null]).remove();	
pyro.findRecipe(96, [<minecraft:log> * 16, gt.getCirc(8)], [<liquid:nitrogen> * 400]).remove();	
pyro.findRecipe(96, [<minecraft:log> * 16, gt.getCirc(9)], [<liquid:nitrogen> * 400]).remove();
pyro.findRecipe(96, [<minecraft:sugar> * 23, gt.getCirc(2)], [<liquid:nitrogen> * 400]).remove();	
pyro.findRecipe(64, [<minecraft:sugar> * 23, gt.getCirc(1)], [null]).remove();		
pyro.recipeBuilder().inputs([<ore:logWood> * 16]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0})).fluidInputs([<liquid:steam> * 4000]).outputs([<minecraft:coal:1> * 20]).fluidOutputs([<liquid:creosote> * 4000]).duration(600).EUt(30).buildAndRegister();
pyro.recipeBuilder().inputs([<ore:logWood> * 16]).notConsumable(gt.getCirc(1)).fluidInputs([<liquid:steam> * 4000]).outputs([<minecraft:coal:1> * 20]).fluidOutputs([<liquid:wood_vinegar> * 3000]).duration(600).EUt(30).buildAndRegister();
pyro.recipeBuilder().inputs([<ore:logWood> * 16]).notConsumable(gt.getCirc(2)).fluidInputs([<liquid:steam> * 4000]).outputs([<minecraft:coal:1> * 20]).fluidOutputs([<liquid:wood_gas> * 1500]).duration(600).EUt(30).buildAndRegister();
pyro.recipeBuilder().inputs([<ore:logWood> * 16]).notConsumable(gt.getCirc(3)).fluidInputs([<liquid:steam> * 4000]).outputs([<minecraft:coal:1> * 20]).fluidOutputs([<liquid:wood_tar> * 1500]).duration(600).EUt(30).buildAndRegister();
pyro.recipeBuilder().inputs([<ore:logWood> * 16]).notConsumable(gt.getCirc(4)).fluidInputs([<liquid:steam> * 4000]).outputs([<minecraft:coal:1> * 20]).fluidOutputs([<liquid:charcoal_byproducts> * 4000]).duration(600).EUt(30).buildAndRegister();
pyro.recipeBuilder().inputs([<minecraft:coal> * 16]).notConsumable(gt.getCirc(1)).fluidInputs([<liquid:steam> * 4000]).outputs([<gregtech:meta_item_1:8357> * 20]).fluidOutputs([<liquid:phenol> * 1000]).duration(600).EUt(30).buildAndRegister();
pyro.recipeBuilder().inputs([<ore:dustCoal> * 16]).notConsumable(gt.getCirc(1)).fluidInputs([<liquid:steam> * 4000]).outputs([<gregtech:meta_item_1:2357> * 20]).fluidOutputs([<liquid:phenol> * 1000]).duration(600).EUt(30).buildAndRegister();

reactor.recipeBuilder().inputs(<metaitem:board.coated>).fluidInputs([<liquid:phenol> * 100]).outputs([<metaitem:board.phenolic>]).duration(100).EUt(8).buildAndRegister();

assembler.findRecipe(8, [<ore:dustWood>.firstItem, <metaitem:shape.mold.plate>], [<liquid:glue> * 100]).remove();	
assembler.findRecipe(8, [<ore:dustWood>.firstItem, <metaitem:shape.mold.plate>], [<liquid:bisphenol_a> * 100]).remove();	

recipes.removeByRecipeName("gregtech:small_coil_annealed_copper_steel");
recipes.removeByRecipeName("gregtech:small_coil_copper_ferrite");
recipes.removeByRecipeName("gregtech:small_coil_annealed_copper_ferrite");