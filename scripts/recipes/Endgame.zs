import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
//import scripts.CommonVars.craft.makeShaped as craft.makeShaped;

<deepmoblearning:glitch_fragment>.addTooltip(format.aqua(format.italic(
    "Obtained by crushing Glitch Hearts against Obsidian.")));

<appliedenergistics2:material:1>.addTooltip(format.aqua(format.italic(
    "Obtained by charging with RF power in the AE2 Charger.")));

//Gravistar
// gregicality grvi star? ??!!
//autoclave.findRecipe(7680, [<minecraft:nether_star>], [<liquid:neutronium> * 288]).remove();
autoclave.recipeBuilder()
    .inputs(<minecraft:nether_star>)
    .fluidInputs(<liquid:neutronium> * 36)
    .outputs([<metaitem:gravistar>])
    .duration(480).EUt(7680).buildAndRegister();

craft.makeShaped("of_sunnarium_plates", <advsolars:sunnarium_plate> * 4, 
    ["RRR",
     "RSR",
     "RRR"],
    { S : <advsolars:sunnarium>, R : <metaitem:plate.iridium_alloy> });

craft.makeShaped("of_enriched_sunnarium", <advsolars:sunnarium_enriched> * 4,
    ["NAN",
     "ASA",
     "NAN"],
    { N : <contenttweaker:stabilizedneptunium>,
      A : <contenttweaker:stabilizedamericium>,
      S : <advsolars:sunnarium> });

craft.makeShaped("of_enriched_sunnarium_plate", <advsolars:sunnarium_enriched_plate>,
    [" E ",
     "EPE",
     " E "],
    { E : <advsolars:sunnarium_enriched>, P : <advsolars:sunnarium_plate> });
	
electrolyzer.recipeBuilder()
    .inputs([<ore:dustSphalerite> * 3])
    .outputs([<ore:dustZinc>.firstItem,
              <ore:dustSmallZinc>.firstItem * 2,
              <ore:dustSulfur>.firstItem,
              <ore:dustSmallGallium>.firstItem])
    .duration(200).EUt(30).buildAndRegister();

//Radon
electrolyzer.recipeBuilder()
    .inputs([<contenttweaker:radiumsalt>])
    .outputs([<ore:dustRockSalt>.firstItem])
    .fluidOutputs(<liquid:radon> * 1000)
    .duration(200).EUt(2000).buildAndRegister();

electrolyzer.recipeBuilder()
    .inputs([<ore:blockGlass> * 4])
    .outputs([<minecraft:quartz>])
    .duration(100).EUt(20).buildAndRegister();

//reactor.findRecipe(8, [<ore:ingotPlutonium>.firstItem * 3], [null]).remove();  // ??

autoclave.findRecipe(40, [<ore:dustCarbon>.firstItem], [<liquid:platinum> * 1]).remove();

//Gem Sensor
craft.makeShaped("of_gem_sensor", <contenttweaker:gemsensor>,
    [" O ",
     "PSP",
     " P "],
    { O : <advancedrocketry:satelliteprimaryfunction>,
      S : <metaitem:sensor.iv>,
      P : <ore:plateTungstenCarbide> });

//Composition Sensor
recipes.remove(<advancedrocketry:satelliteprimaryfunction:1>);
craft.makeShaped("of_composition_sensor", <advancedrocketry:satelliteprimaryfunction:1>,
    [" O ",
     "PSP",
     " P "],
    { O : <advancedrocketry:satelliteprimaryfunction>,
      S : <metaitem:sensor.hv>,
      P : <ore:plateStainlessSteel> });

//Wetware Boards
//assembler.findRecipe(480,
//    [<metaitem:board.multilayer.fiber_reinforced>, <metaitem:circuit.good>],
//    [<liquid:polystyrene> * 144]).remove();

reactor.recipeBuilder()
    .inputs([<metaitem:board.multilayer.fiber_reinforced>, <contenttweaker:draconicstemcells> * 8])
    .fluidInputs(<liquid:sterilized_growth_medium> * 4000)
    .outputs([<metaitem:board.wetware>])
    .fluidOutputs(<liquid:raw_growth_medium> * 3000)
    .duration(6000).EUt(3000).buildAndRegister();

reactor.recipeBuilder()
    .inputs([<minecraft:dragon_egg>])
    .fluidInputs(<liquid:sterilized_growth_medium> * 10000)
    .outputs([<contenttweaker:draconicstemcells> * 64])
    .duration(6000).EUt(25000).buildAndRegister();

//Growth Medium
reactor.recipeBuilder()
    .inputs([<ore:dustMeat>])
    .fluidInputs(<liquid:distilled_water> * 1000)
    .fluidOutputs([<liquid:raw_growth_medium> * 1000])
    .duration(200).EUt(200).buildAndRegister();

//Neutronium Plating
blast_furnace.recipeBuilder()
    .inputs([<avaritia:resource:2> * 9])
    .fluidInputs([<liquid:xenon> * 250])
    .outputs(<avaritia:resource:3>)
    .property("temperature", 9600)
    .duration(40).EUt(500000).buildAndRegister();

//Neutron Reflector // ??
//assembler.findRecipe(120,
//    [<ore:plateBeryllium>.firstItem * 30,
//     <ore:plateTungstenCarbide>.firstItem * 3,
//     <metaitem:plate.iridium_alloy>],
//    [<liquid:tin_alloy> * 13824]).remove();

//Superconductor Wires
//assembler.findRecipe(512,
//    [<gregtech:cable:200> * 3,
//     <ore:plateTungstenSteel>.firstItem * 3,
//     <metaitem:electric.pump.lv>],
//    [<liquid:nitrogen> * 2000]).remove();

//assembler.findRecipe(512,
//    [<gregtech:cable:135> * 3,
//     <ore:plateTungstenSteel>.firstItem * 3,
//     <metaitem:electric.pump.lv>],
//    [<liquid:nitrogen> * 2000]).remove();

//assembler.findRecipe(512,
//    [<gregtech:cable:195> * 3,
//     <ore:plateTungstenSteel>.firstItem * 3,
//     <metaitem:electric.pump.lv>],
//    [<liquid:nitrogen> * 2000]).remove();

freezer.recipeBuilder()
    .inputs(<ore:wireGtSingleDraconium>)
    .fluidInputs([<liquid:moltennetherstar> * 144])
    .outputs(<ore:wireGtSingleSuperconductor>.firstItem)
    .duration(100).EUt(6000).buildAndRegister();
/*
//t6 circuits
val t6c as IIngredient[] = [
    <metaitem:component.smd.capacitor> * 2,
    <metaitem:component.smd.transistor> * 2,
    <gregtech:meta_item_2:16200> * 2,
    <metaitem:board.wetware>,
    <gregtech:meta_item_2:32474>,
    <gregtech:meta_item_2:32481>];

// gregicality !!
#assembler.findRecipe(32800, t6c, [<liquid:tin> * 144]).remove();
#assembler.findRecipe(32800, t6c, [<liquid:soldering_alloy> * 72]).remove();

//t7 circuits
val t7c as IIngredient[] = [
    <gregtech:meta_item_2:16200> * 6,
    <gregtech:meta_item_2:32456> * 4,
    <metaitem:component.smd.capacitor> * 4,
    <metaitem:plate.random_access_memory> * 4,
    <metaitem:circuit.wetware_processor> * 2,
    <metaitem:board.wetware>];

#assembler.findRecipe(34400, t7c, [<liquid:tin> * 288]).remove();
#assembler.findRecipe(34400, t7c, [<liquid:soldering_alloy> * 144]).remove();

//t8 circuits
val t8c as IIngredient[] = [
    <gregtech:meta_item_2:16200> * 6,
    <metaitem:component.smd.diode> * 4,
    <metaitem:plate.nor_memory_chip> * 4,
    <metaitem:plate.random_access_memory> * 4,
    <metaitem:circuit.wetware_assembly> * 3,
    <metaitem:board.wetware> * 2];

#assembler.findRecipe(34400, t8c, [<liquid:tin> * 288]).remove();
#assembler.findRecipe(34400, t8c, [<liquid:soldering_alloy> * 144]).remove();

recipes.remove(<gregtech:meta_item_2:26708>);
recipes.remove(<gregtech:meta_item_2:26707>);
*/
//neuroprocessor // ??
//assembly_line.findRecipe(80000,
//    [<gregtech:meta_item_1:19391> * 64,
//     <gtadditions:ga_meta_item:32018> * 8,
//     <gregtech:meta_item_2:32454> * 8,
//     <ore:plateGold>.firstItem * 8,
//     <ore:plateStainlessSteel>.firstItem * 4,
//     <metaitem:board.wetware>],
//    [<liquid:sterilized_growth_medium> * 250,
//     <liquid:uumatter> * 100,
//     <liquid:water> * 250,
//     <liquid:lava> * 1000]).remove();

assembly_line.recipeBuilder()
    .inputs(<contenttweaker:draconicstemcells> * 8,
            <gregtech:cable:708> * 32,
            <metaitem:circuit.wetware_processor> * 8,
            <metaitem:board.wetware> * 4)
    .fluidInputs(<liquid:sterilized_growth_medium> * 16000)
    .outputs(<metaitem:processor.neuro>)
    .duration(200).EUt(80000).buildAndRegister();

extractor.findRecipe(1024, [<minecraft:egg>], [null]).remove();

extractor.recipeBuilder()
    .inputs(<contenttweaker:impossiblerealmdata>)
    .outputs([<contenttweaker:quantumflux>])
    .duration(100).EUt(3000).buildAndRegister();

recipes.remove(<extrautils2:rainbowgenerator>);
craft.makeShaped("of_rainbow_generator", <extrautils2:rainbowgenerator>,
    ["OTO",
     "OHO",
     "OBO"],
    { O : <extrautils2:opinium:8>,
      H : <contenttweaker:heartofauniverse>,
      T : <extrautils2:rainbowgenerator:2>,
      B : <extrautils2:rainbowgenerator:1> });

recipes.remove(<craftelytra:elytra_wing>);
craft.makeShaped("of_elytra_wing", <craftelytra:elytra_wing>,
    [" PP",
     "PE ",
     "PP "],
    { P : <ore:platePalladium>,
      E : <ore:gemExquisiteEmerald> });

recipes.remove(<minecraft:elytra>);
craft.makeShaped("of_elytra", <minecraft:elytra>,
    ["   ", "WGW", "   "],
    { W : <craftelytra:elytra_wing>,
      G : <enderio:item_material:7> });

//ZPM Field Generator
assembly_line.recipeBuilder()
    .inputs(<ore:wireFineOsmium> * 64,
            <ore:wireFineOsmium> * 64,
            <ore:wireFineOsmium> * 64,
            <ore:wireFineOsmium> * 64,
            <ore:wireFineOsmium> * 64,
            <ore:wireFineOsmium> * 64,
            <metaitem:emitter.zpm> * 4,
            <ore:frameGtTritanium>,
            <moreplates:awakened_draconium_plate> * 8,
            <ore:cableGtDoubleNaquadah> * 6,
            <extendedcrafting:material:40>)
    .fluidInputs(<liquid:soldering_alloy> * 1152)
    .outputs(<metaitem:field.generator.zpm>)
    .duration(600).EUt(122880).buildAndRegister();

fluidextractor.recipeBuilder()
    .inputs(<contenttweaker:sentientgear>)
    .fluidOutputs([<liquid:tungsten_carbide> * 40320])
    .duration(1000).EUt(3000).buildAndRegister();

fusion_reactor.findRecipe(4096, [null],
    [<liquid:deuterium> * 125, <liquid:tritium> * 125]).remove();	

fusion_reactor.recipeBuilder()
	.fluidInputs([<liquid:berkelium> * 16, <liquid:californium> * 16])
    .fluidOutputs(<liquid:einsteinium> * 16)
    .duration(100)
    .EUt(15360)
    .property("eu_to_start", 400000)
    .buildAndRegister();

// LuV Machine Casing
recipes.remove(<gregtech:machine_casing:6>);

// LuV Machine Hull
recipes.remove(<meta_tile_entity:gregtech:hull.luv>);

recipes.addShaped(<meta_tile_entity:gregtech:hull.luv>, [
	[<ore:platePlastic>, <ore:plateLumium>, <ore:platePlastic>], 
	[<ore:cableGtSingleVanadiumGallium>, <gregtech:machine_casing:6>, <ore:cableGtSingleVanadiumGallium>]]);

assembler.findRecipe(16,
    [<ore:plateRhodiumPlatedPalladium>.firstItem * 8,
     gt.getCirc(8)],
    [null]).remove();
	
assembler.recipeBuilder()
    .inputs(<ore:plateLumium> * 6, <ore:plateRhodiumPlatedPalladium> * 2)
    .outputs([<gregtech:machine_casing:6>])
    .duration(30).EUt(16).buildAndRegister();

//Rare Earth
centrifuge.findRecipe(24, [<ore:dustImpureRedstone>.firstItem], [null]).remove();
centrifuge.recipeBuilder()
    .inputs(<ore:dustImpureRedstone>)
    .outputs([<minecraft:redstone>, <ore:dustTinyRareEarth>.firstItem])
    .duration(900).EUt(24).buildAndRegister();


//Bismuth
centrifuge.findRecipe(24, [<ore:dustImpureLead>.firstItem], [null]).remove();
centrifuge.recipeBuilder()
    .inputs(<ore:dustImpureLead>)
    .outputs([<ore:dustLead>.firstItem, <ore:dustTinyBismuth>.firstItem * 3])
    .duration(900).EUt(24).buildAndRegister();

centrifuge.findRecipe(24, [<ore:dustImpureScheelite>.firstItem], [null]).remove();
centrifuge.recipeBuilder()
    .inputs(<ore:dustImpureScheelite>)
    .outputs([<ore:dustScheelite>.firstItem, <ore:dustTinyBismuth>.firstItem * 3])
    .duration(900).EUt(24).buildAndRegister();


//Nuclear Stuff

//centrifuge.findRecipe(320, [<gregtech:meta_item_1:2075>], [null]).remove(); //??

chemical_bath.findRecipe(384, [<minecraft:ender_eye>], [<liquid:plutonium> * 288]).remove();
chemical_bath.recipeBuilder()
    .inputs(<minecraft:ender_eye>)
    .fluidInputs(<liquid:radon> * 500)
    .outputs([<metaitem:quantumeye>])
    .duration(480).EUt(384).buildAndRegister();

chemical_bath.findRecipe(384, [<minecraft:nether_star>], [<liquid:plutonium> * 1152]).remove();
chemical_bath.recipeBuilder()
    .inputs(<minecraft:nether_star>)
    .fluidInputs(<liquid:radon> * 2000)
    .outputs([<metaitem:quantumstar>])
    .duration(1920).EUt(384).buildAndRegister();

craft.makeShaped("of_nc_cell_block", <nuclearcraft:cell_block>,
    ["TCT",
     "C C",
     "TCT"],
    { T : <ore:ingotTough>, C : <gtadditions:ga_transparent_casing> });


val trimPattern as string[] = ["N N",
                               " C ",
                               "N N"];

recipes.remove(<extendedcrafting:trimmed>);
craft.makeShaped("of_iron_trimmed_black_steel",
    <extendedcrafting:trimmed>, trimPattern,
    { N : <ore:nuggetIron>, C : <ore:blockBlackSteel> });

recipes.remove(<extendedcrafting:trimmed:1>);
craft.makeShaped("of_gold_trimmed_black_steel",
    <extendedcrafting:trimmed:1>, trimPattern,
    { N : <ore:nuggetGold>, C : <ore:blockBlackSteel> });

recipes.remove(<extendedcrafting:trimmed:2>);
craft.makeShaped("of_diamond_trimmed_black_steel",
    <extendedcrafting:trimmed:2>, trimPattern,
    { N : <ore:nuggetDiamond>, C : <ore:blockBlackSteel> });

recipes.remove(<extendedcrafting:trimmed:3>);
craft.makeShaped("of_emerald_trimmed_black_steel",
    <extendedcrafting:trimmed:3>, trimPattern,
    { N : <ore:nuggetEmerald>, C : <ore:blockBlackSteel> });

recipes.remove(<extendedcrafting:trimmed:4>);
craft.makeShaped("of_crystaltine_trimmed_black_steel",
    <extendedcrafting:trimmed:4>, trimPattern,
    { N : <extendedcrafting:material:25>, C : <ore:blockBlackSteel> });

recipes.remove(<extendedcrafting:trimmed:5>);
craft.makeShaped("of_omnium_trimmed_black_steel",
    <extendedcrafting:trimmed:5>, trimPattern,
    { N : <extendedcrafting:material:33>, C : <ore:blockBlackSteel> });


//Remove hardcoded gtce neutronium recipes and replace with oredicted versions

//Cutting Saw recipes
saw.findRecipe(30, [<avaritia:block_resource>], [<liquid:water> * 1000]).remove();
saw.recipeBuilder()
    .inputs(<avaritia:block_resource:0>)
    .fluidInputs(<liquid:water> * 1000)
    .outputs([<moreplates:neutronium_plate> * 9])
    .duration(80000).EUt(30).buildAndRegister();

saw.findRecipe(30, [<avaritia:block_resource>], [<liquid:distilled_water> * 750]).remove();
saw.recipeBuilder()
    .inputs(<avaritia:block_resource:0>)
    .fluidInputs(<liquid:distilled_water> * 750)
    .outputs([<moreplates:neutronium_plate> * 9])
    .duration(52000).EUt(30).buildAndRegister();

saw.findRecipe(30, [<avaritia:block_resource>], [<liquid:lubricant> * 250]).remove();
saw.recipeBuilder()
    .inputs(<avaritia:block_resource:0>)
    .fluidInputs(<liquid:lubricant> * 250)
    .outputs([<moreplates:neutronium_plate> * 9])
    .duration(20000).EUt(30).buildAndRegister();

//Extruder Recipes
extruder.findRecipe(64,[<avaritia:resource:4>, <metaitem:shape.extruder.plate>], [null]).remove();
extruder.recipeBuilder()
    .inputs(<avaritia:resource:4>)
    .notConsumable(<metaitem:shape.extruder.plate>)
    .outputs(<moreplates:neutronium_plate>)
    .duration(5000).EUt(64).buildAndRegister();

//Alloy Smelter recipes
alloy.findRecipe(16, [<avaritia:resource:4> * 2, <metaitem:shape.mold.plate>], [null]).remove();
alloy.recipeBuilder()
    .inputs(<ore:ingotNeutronium> * 2)
    .notConsumable(<metaitem:shape.mold.plate>)
    .outputs(<moreplates:neutronium_plate>)
    .duration(10000).EUt(16).buildAndRegister();

//Assembly Line Recipes

//UV Electric Pump
/*
assembly_line.findRecipe(245760,
    [<ore:ringSiliconRubber> * 16, <ore:screwNeutronium> * 8,
     <ore:pipeLargeUltimet> * 2, <ore:plateNeutronium> * 2,
     <ore:rotorNeutronium> * 2, <ore:cableGtQuadrupleNiobiumTitanium> * 2,
     <metaitem:electric.motor.uv>],
    [<fluid:lubricant> * 2000, <fluid:soldering_alloy> * 1296]).remove();*/

assembly_line.recipeBuilder()
    .inputs(<ore:ringSiliconRubber> * 16,
            <ore:screwNeutronium> * 8,
            <ore:pipeLargeUltimet> * 2,
            <ore:plateNeutronium> * 2,
            <ore:rotorNeutronium> * 2,
            <ore:cableGtQuadrupleNiobiumTitanium> * 2,
            <metaitem:electric.motor.uv>)
    .fluidInputs(<liquid:lubricant> * 2000, <liquid:soldering_alloy> * 1296)
    .outputs(<metaitem:electric.pump.uv>)
    .duration(600).EUt(245760).buildAndRegister();
/*
//UV Electric Piston
assembly_line.findRecipe(245760,
    [<ore:roundNeutronium> * 32, <ore:plateNeutronium> * 6,
     <ore:ringNeutronium> * 4, <ore:stickNeutronium> * 4,
     <ore:cableGtQuadrupleNiobiumTitanium> * 4, <ore:gearSmallNeutronium> * 2,
     <metaitem:electric.motor.uv>, <ore:gearNeutronium>,
     gt.getCirc(2)],
 [<liquid:lubricant> * 2000, <liquid:soldering_alloy> * 1296]).remove();*/

assembly_line.recipeBuilder()
    .inputs(<ore:roundNeutronium> * 32,
            <ore:plateNeutronium> * 6,
            <ore:ringNeutronium> * 4,
            <ore:stickNeutronium> * 4,
            <ore:cableGtQuadrupleNiobiumTitanium> * 4,
            <ore:gearSmallNeutronium> * 2,
            <metaitem:electric.motor.uv>,
            <ore:gearNeutronium>)
    .notConsumable(gt.getCirc(2))
    .fluidInputs(<liquid:lubricant> * 2000, <liquid:soldering_alloy> * 1296)
    .outputs(<metaitem:electric.piston.uv>)
    .duration(600).EUt(245760).buildAndRegister();

/*
// UV Conveyor Belt
assembly_line.findRecipe(245760,
    [<ore:roundNeutronium> * 32,
     <ore:ringNeutronium> * 4,
     <metaitem:electric.motor.uv> * 2,
     <ore:plateNeutronium> * 2,
     <ore:cableGtQuadrupleNiobiumTitanium> * 2,
     gt.getCirc(1)],
     [<liquid:lubricant> * 2000, <liquid:styrene_butadiene_rubber> * 2880]).remove();*/

assembly_line.recipeBuilder()
    .inputs(<ore:roundNeutronium> * 32,
            <ore:ringNeutronium> * 4,
            <metaitem:electric.motor.uv> * 2,
            <ore:plateNeutronium> * 2,
            <ore:cableGtQuadrupleNiobiumTitanium> * 2)
    .notConsumable(gt.getCirc(1))
    .fluidInputs(<liquid:lubricant> * 2000, <liquid:styrene_butadiene_rubber> * 2880)
    .outputs(<metaitem:conveyor.module.uv>)
    .duration(600).EUt(245760).buildAndRegister();

/*
//UV Field Generator
assembly_line.findRecipe(491520,
    [<metaitem:board.multilayer.fiber_reinforced> * 64, <ore:wireFineOsmium> * 64,
     <ore:wireFineOsmium> * 64, <ore:wireFineOsmium> * 64,
     <ore:wireFineOsmium> * 64, <ore:wireFineOsmium> * 64,
     <ore:wireFineOsmium> * 64, <ore:wireFineOsmium> * 64,
     <ore:wireFineOsmium> * 64, <ore:cableGtQuadrupleNiobiumTitanium> * 8,
     <ore:plateNeutronium> * 6, <metaitem:emitter.uv> * 4,
     <gregtech:frame_neutronium>, <metaitem:gravistar>],
    [<liquid:soldering_alloy> * 2304]).remove();*/

assembly_line.recipeBuilder()
    .inputs(<metaitem:board.multilayer.fiber_reinforced> * 64, <ore:wireFineOsmium> * 64,
            <ore:wireFineOsmium> * 64, <ore:wireFineOsmium> * 64,
            <ore:wireFineOsmium> * 64, <ore:wireFineOsmium> * 64,
            <ore:wireFineOsmium> * 64, <ore:wireFineOsmium> * 64,
            <ore:wireFineOsmium> * 64, <ore:cableGtQuadrupleNiobiumTitanium> * 8,
            <ore:plateNeutronium> * 6, <metaitem:emitter.uv> * 4,
            <gregtech:frame_neutronium>, <metaitem:gravistar>)
    .fluidInputs(<liquid:soldering_alloy> * 2304)
    .outputs(<metaitem:field.generator.uv>)
    .duration(600).EUt(491520).buildAndRegister();
/*
//MAX Battery
assembly_line.findRecipe(300000,
    [<gregtech:meta_item_2:32479> * 64, <gregtech:meta_item_2:32479> * 64,
     <ore:wireGtSingleSuperconductor> * 32, <ore:plateNeutronium> * 16,
     <gregtech:meta_item_2:32457> * 16, <gregtech:meta_item_1:32598> * 8,
     <metaitem:field.generator.uv> * 2, gt.getCirc("MAX"),
     gt.getCirc("MAX"), gt.getCirc("MAX"),
     gt.getCirc("MAX") ],
    [<liquid:water> * 16000, <liquid:soldering_alloy> * 2880]).remove();

assembly_line.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32479> * 64, <gregtech:meta_item_2:32479> * 64,
            <ore:wireGtSingleSuperconductor> * 32, <ore:plateNeutronium> * 16,
            <gregtech:meta_item_2:32457> * 16, <gregtech:meta_item_1:32598> * 8,
            <metaitem:field.generator.uv> * 2, gt.getCirc("MAX") * 4)
    .fluidInputs(<liquid:water> * 16000, <liquid:soldering_alloy> * 2880)
    .outputs(<gtadditions:ga_meta_item:32124>)
    .duration(2000).EUt(300000).buildAndRegister();*/
