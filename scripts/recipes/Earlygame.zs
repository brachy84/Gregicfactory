import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import crafttweaker.item.IItemStack;

//Plantball
recipes.addShaped(<metaitem:plant_ball>, [
	[<ore:treeLeaves>,<ore:treeLeaves>,<ore:treeLeaves>],
	[<ore:treeLeaves>,null,<ore:treeLeaves>],
	[<ore:treeLeaves>,<ore:treeLeaves>,<ore:treeLeaves>]]);
recipes.addShaped(<metaitem:plant_ball>, [
	[<minecraft:vine>,<minecraft:vine>,<minecraft:vine>],
	[<minecraft:vine>,null,<minecraft:vine>],
	[<minecraft:vine>,<minecraft:vine>,<minecraft:vine>]]);
recipes.addShaped(<metaitem:plant_ball>, [
	[<ore:treeSapling>,<ore:treeSapling>,<ore:treeSapling>],
	[<ore:treeSapling>,null,<ore:treeSapling>],
	[<ore:treeSapling>,<ore:treeSapling>,<ore:treeSapling>]]);
furnace.addRecipe(<minecraft:slime_ball> * 2, <metaitem:plant_ball>, 0.0);


//Mining Hammers
<thermalfoundation:tool.hammer_stone>.displayName = "Stone Mining Hammer";
<thermalfoundation:tool.hammer_stone>.addTooltip(format.red("Do not break GT multiblocks with a hammer, pieces will be deleted!"));
<thermalfoundation:tool.hammer_tin>.displayName = "Tin Mining Hammer";
<thermalfoundation:tool.hammer_tin>.addTooltip(format.red("Do not break GT multiblocks with a hammer, pieces will be deleted!"));
<thermalfoundation:tool.hammer_copper>.displayName = "Copper Mining Hammer";
<thermalfoundation:tool.hammer_copper>.addTooltip(format.red("Do not break GT multiblocks with a hammer, pieces will be deleted!"));
<thermalfoundation:tool.hammer_nickel>.displayName = "Nickel Mining Hammer";
<thermalfoundation:tool.hammer_nickel>.addTooltip(format.red("Do not break GT multiblocks with a hammer, pieces will be deleted!"));
<thermalfoundation:tool.hammer_platinum>.displayName = "Platinum Mining Hammer";
<thermalfoundation:tool.hammer_platinum>.addTooltip(format.red("Do not break GT multiblocks with a hammer, pieces will be deleted!"));
<thermalfoundation:tool.hammer_bronze>.displayName = "Bronze Mining Hammer";
<thermalfoundation:tool.hammer_bronze>.addTooltip(format.red("Do not break GT multiblocks with a hammer, pieces will be deleted!"));
<thermalfoundation:tool.hammer_iron>.displayName = "Iron Mining Hammer";
<thermalfoundation:tool.hammer_iron>.addTooltip(format.red("Do not break GT multiblocks with a hammer, pieces will be deleted!"));
<thermalfoundation:tool.hammer_diamond>.displayName = "Diamond Mining Hammer";
<thermalfoundation:tool.hammer_diamond>.addTooltip(format.red("Do not break GT multiblocks with a hammer, pieces will be deleted!"));

recipes.remove(<storagedrawers:upgrade_template>);
recipes.addShaped(<storagedrawers:upgrade_template> * 2, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
	[<ore:stickWood>, <storagedrawers:customdrawers>, <ore:stickWood>],
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

recipes.remove(<inspirations:pipe>);
recipes.addShapeless(<inspirations:pipe>, [<ore:pipeSmallSteel>]);

//Iron Shears
recipes.remove(<minecraft:shears>);
recipes.addShaped(<minecraft:shears>,[
[gt.hammer,<ore:plateElectricalSteel>],
[<ore:plateElectricalSteel>,gt.file]]);
<minecraft:shears>.displayName = "Iron Shears";

//Clay & Wool
recipes.addShapeless(<minecraft:clay_ball> * 4, [<minecraft:clay>]);
recipes.remove(<minecraft:string>);
recipes.addShapeless(<minecraft:string> * 4, [<minecraft:wool>]);


recipes.addShaped(<gregtech:meta_tool:7>.withTag({"GT.ToolStats": {PrimaryMaterial: "rubber", MaxDurability: 256, DigSpeed: 4.0 as float, AttackDamage: 1.0 as float, HarvestLevel: 1}}), [
[<ore:plateRubber>,<ore:plateRubber>,null],
[<ore:plateRubber>,<ore:plateRubber>,<minecraft:stick>],
[<ore:plateRubber>,<ore:plateRubber>,null]]);


//Dusts
furnace.addRecipe(<ore:ingotTin>.firstItem, <gregtech:ore_tin_0>, 0.0);
//recipes.addShapeless(<ore:dustCopper>, [<ore:ingotCopper>,gt.mortar]);
#recipes.addShapeless(<ore:dustIron>, [<ore:ingotIron>,gt.mortar]);
recipes.addShaped(<ore:dustLithium>.firstItem, [[<ore:ingotLithium>],[gt.mortar]]);
#recipes.addShapeless(<ore:dustCoal>,[<minecraft:coal>,gt.mortar]);
#recipes.addShapeless(<ore:dustCharcoal>,[<minecraft:coal:1>,gt.mortar]);
#recipes.addShapeless(<ore:dustTin>, [<ore:ingotTin>,gt.mortar]);
recipes.addShaped(<minecraft:gravel>, [[<minecraft:cobblestone>],[gt.mortar]]);
recipes.addShaped(<minecraft:sand>, [[<minecraft:gravel>],[gt.mortar]]);
recipes.addShaped(<contenttweaker:block_dust>, [[<minecraft:sand>],[gt.mortar]]);
recipes.addShapeless(<minecraft:clay>, [<contenttweaker:block_dust>,<minecraft:water_bucket>]);
furnace.addRecipe(<forestry:crafting_material>, <ore:dustUranite>, 0.0);


//Clay Electrolyzing
electrolyzer.findRecipe(120, [<ore:dustClay>.firstItem * 13], [null]).remove();
electrolyzer.recipeBuilder().inputs([<ore:dustClay> * 7]).outputs([<ore:dustSodium>.firstItem * 2, <ore:dustSilicon>.firstItem * 2, <ore:dustLithium>.firstItem, <ore:dustAluminium>.firstItem * 2]).duration(400).EUt(30).buildAndRegister();

//Photovoltaic Cells
alloy.recipeBuilder().inputs([<enderio:item_material:38> * 2, <ore:plateElectricalSteel>]).outputs([<enderio:item_material:3>]).duration(180).EUt(16).buildAndRegister();

//Small Gears
alloy.recipeBuilder().inputs([<ore:ingotAluminium>]).notConsumable(<metaitem:shape.mold.gear.small>).outputs([<ore:gearSmallAluminium>.firstItem]).duration(80).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:ingotTitanium>]).notConsumable(<metaitem:shape.mold.gear.small>).outputs([<ore:gearSmallTitanium>.firstItem]).duration(80).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:ingotStainlessSteel>]).notConsumable(<metaitem:shape.mold.gear.small>).outputs([<ore:gearSmallStainlessSteel>.firstItem]).duration(80).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:ingotSteel>]).notConsumable(<metaitem:shape.mold.gear.small>).outputs([<ore:gearSmallSteel>.firstItem]).duration(80).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:ingotTungstenSteel>]).notConsumable(<metaitem:shape.mold.gear.small>).outputs([<ore:gearSmallTungstenSteel>.firstItem]).duration(80).EUt(16).buildAndRegister();

//Drawers
recipes.remove(<storagedrawers:upgrade_storage>);
recipes.remove(<storagedrawers:compdrawers>);
recipes.remove(<storagedrawers:controller>);
recipes.remove(<storagedrawers:controllerslave>);
recipes.addShaped(<storagedrawers:upgrade_storage>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<minecraft:coal>, <storagedrawers:upgrade_template>, <minecraft:coal>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

recipes.addShaped(<storagedrawers:compdrawers>, [
	[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
	[<metaitem:electric.piston.lv>, <storagedrawers:customdrawers>, <metaitem:electric.piston.lv>],
	[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]]);

recipes.addShaped(<storagedrawers:controller>, [
	[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
	[gt.getCirc("LV"), <storagedrawers:customdrawers>, gt.getCirc("LV")],
	[<ore:plateIron>, <minecraft:diamond_block>, <ore:plateIron>]]);

recipes.addShaped(<storagedrawers:controller>, [
	[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
	[gt.getCirc("LV"), <storagedrawers:customdrawers>, gt.getCirc("LV")],
	[<ore:plateIron>, <minecraft:emerald_block>, <ore:plateIron>]]);

recipes.addShaped(<storagedrawers:controllerslave>, [
	[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
	[gt.getCirc("LV"), <storagedrawers:customdrawers>, gt.getCirc("LV")],
	[<ore:plateIron>, <minecraft:gold_block>, <ore:plateIron>]]);

recipes.remove(<rangedpumps:pump>);
recipes.addShaped(<rangedpumps:pump>, [
	[<minecraft:obsidian>, <metaitem:electric.pump.lv>, <minecraft:obsidian>],
	[<metaitem:electric.pump.lv>, <ore:blockEnderPearl>, <metaitem:electric.pump.lv>],
	[<minecraft:obsidian>, <metaitem:electric.pump.lv>, <minecraft:obsidian>]]);
<rangedpumps:pump>.displayName = "Ender Pump";

recipes.remove(<enderstorage:ender_storage:1>);
recipes.addShaped(<enderstorage:ender_storage:1>, [
	[<minecraft:blaze_rod>, <minecraft:wool>, <minecraft:blaze_rod>],
	[<ore:obsidian>, basictank, <ore:obsidian>],
	[<minecraft:blaze_rod>, <ore:blockEnderPearl>, <minecraft:blaze_rod>]]);
recipes.addShapeless(<enderstorage:ender_storage:1>, [<enderstorage:ender_storage:1>]);


//Black Quartz
electrolyzer.recipeBuilder().inputs([<ore:dustQuartzite> * 4]).outputs([<actuallyadditions:item_dust:7>]).duration(400).EUt(90).buildAndRegister();
autoclave.recipeBuilder().inputs([<actuallyadditions:item_dust:7>]).fluidInputs(<liquid:water> * 1000).outputs([<actuallyadditions:item_misc:5>]).duration(150).EUt(16).buildAndRegister();

//Mechanical Crafter
recipes.remove(<extrautils2:crafter>);
recipes.addShaped(<extrautils2:crafter>, [[<extrautils2:ingredients>, <ore:gearSmallSteel>, <extrautils2:ingredients>],[<ore:gearSmallSteel>, <avaritia:compressed_crafting_table>, <ore:gearSmallSteel>], [<extrautils2:ingredients>, <ore:gearSmallSteel>, <extrautils2:ingredients>]]);


//resonating redstone crystal
recipes.remove(<extrautils2:ingredients>);
recipes.remove(<extrautils2:ingredients:2>);
recipes.remove(<extrautils2:ingredients:6>);
recipes.remove(<extrautils2:ingredients:7>);
recipes.remove(<extrautils2:ingredients:8>);
alloy.recipeBuilder().inputs([<extrautils2:endershard>, <actuallyadditions:item_crystal>]).outputs([<extrautils2:ingredients>]).duration(180).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<extrautils2:endershard>, <minecraft:redstone_block>]).outputs([<extrautils2:ingredients>]).duration(180).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:blockEnderEye>, <actuallyadditions:block_crystal> * 4]).outputs([<extrautils2:ingredients:2>]).duration(800).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<extrautils2:ingredients:9>, <minecraft:diamond> * 4]).outputs([<extrautils2:ingredients:7>]).duration(800).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<extrautils2:ingredients:9>, <enderio:item_alloy_ingot:1> * 4]).outputs([<extrautils2:ingredients:6>]).duration(400).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<extrautils2:ingredients:9>, <enderio:item_alloy_ingot> * 4]).outputs([<extrautils2:ingredients:8>]).duration(400).EUt(16).buildAndRegister();

//Redstone Gear
recipes.remove(<extrautils2:ingredients:1>);
recipes.addShaped(<extrautils2:ingredients:1>, [
	[null, <actuallyadditions:item_crystal>, null],
	[<actuallyadditions:item_crystal>, <ore:gearConductiveIron>, <actuallyadditions:item_crystal>],
	[null, <actuallyadditions:item_crystal>, null]]);



//Photovoltaic Composite
recipes.remove(<enderio:item_material:38>);
recipes.addShapeless(<enderio:item_material:38> * 3, [<ore:dustLapis>,<ore:dustCoal>,<ore:dustSilicon>]);


recipes.remove(<simplyjetpacks:metaitem:4>);
recipes.remove(<appliedenergistics2:quartz_glass>);
recipes.addShaped(<simplyjetpacks:metaitem:4>, [[<minecraft:leather>, <ore:plateSteel>, <minecraft:leather>]]);

//EIO Alloys
alloy.recipeBuilder().inputs([<ore:ingotWroughtIron>, <ore:dustCoal>]).outputs([<ore:ingotSteel>.firstItem]).duration(200).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:ingotWroughtIron>, <ore:dustCharcoal>]).outputs([<ore:ingotSteel>.firstItem]).duration(200).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:ingotWroughtIron>, <ore:dustCarbon>]).outputs([<ore:ingotSteel>.firstItem]).duration(200).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:ingotSteel>, <minecraft:obsidian>]).outputs([<enderio:item_alloy_ingot:6>]).duration(240).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:ingotSteel>, <actuallyadditions:item_crystal:3>]).outputs([<enderio:item_alloy_ingot:6>]).duration(240).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:ingotSteel>, <ore:dustSilicon>]).outputs([<enderio:item_alloy_ingot>]).duration(120).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:ingotGold>, <minecraft:soul_sand>]).outputs([<enderio:item_alloy_ingot:7>]).duration(120).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<enderio:item_alloy_ingot:6>, <ore:dustEndstone>]).outputs([<enderio:item_alloy_ingot:8>]).duration(300).EUt(120).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:blockGlass>, <ore:dustCertusQuartz>]).outputs([<appliedenergistics2:quartz_glass> * 2]).duration(100).EUt(16).buildAndRegister();

//Ender Chest
recipes.removeByRecipeName("enderstorage:ender_chest");
recipes.addShaped(<enderstorage:ender_storage>, [
	[<minecraft:blaze_rod>, <minecraft:wool>, <minecraft:blaze_rod>],
	[<ore:obsidian>, <meta_tile_entity:gregtech:steel_chest>, <ore:obsidian>],
	[<minecraft:blaze_rod>, <ore:enderpearl>, <minecraft:blaze_rod>]]);

//Blaze Rod
recipes.addShapeless(<minecraft:blaze_rod>, [<minecraft:brewing_stand>]);

//LV Macerator
recipes.remove(<meta_tile_entity:gregtech:macerator.lv>);
recipes.addShaped(<meta_tile_entity:gregtech:macerator.lv>, [
	[<metaitem:electric.piston.lv>, <metaitem:electric.motor.lv>, <ore:toolHeadBuzzSawWroughtIron>],
	[<ore:cableGtSingleTin>, <ore:cableGtSingleTin>, <meta_tile_entity:gregtech:hull.lv>],
	[gt.getCirc("LV"), gt.getCirc("LV"), <ore:cableGtSingleTin>]]);

//MV Macerator
recipes.remove(<meta_tile_entity:gregtech:macerator.mv>);
recipes.addShaped(<meta_tile_entity:gregtech:macerator.mv>, [
	[<metaitem:electric.piston.mv>, <metaitem:electric.motor.mv>, <ore:toolHeadBuzzSawSteel>],
	[<ore:cableGtSingleCopper>, <ore:cableGtSingleCopper>, <meta_tile_entity:gregtech:hull.mv>],
	[gt.getCirc("MV"), gt.getCirc("MV"), <ore:cableGtSingleCopper>]]);

//LV Piston
recipes.addShaped(<metaitem:electric.piston.lv>, [
	[<ore:plateWroughtIron>,<ore:plateWroughtIron>,<ore:plateWroughtIron>],
	[<ore:cableGtSingleTin>, <ore:stickWroughtIron>,<ore:stickWroughtIron>],
	[<ore:cableGtSingleTin>, <metaitem:electric.motor.lv>, <ore:gearWroughtIron>]]);

<simplefluidtanks:wrench>.displayName = "Multiblock Fluid Tank Wrench";
<simplefluidtanks:tankitem>.displayName = "Multiblock Fluid Tank Block";
<simplefluidtanks:valveitem>.displayName = "Multiblock Fluid Tank Valve";
recipes.remove(<simplefluidtanks:tankitem>);
recipes.addShaped(<simplefluidtanks:tankitem> * 4, [
	[<ore:plateIron>, <ore:blockGlass>, <ore:plateIron>],
	[<ore:blockGlass>, null, <ore:blockGlass>],
	[<ore:plateIron>, <ore:blockGlass>, <ore:plateIron>]]);
recipes.remove(<simplefluidtanks:valveitem>);
recipes.addShaped(<simplefluidtanks:valveitem>, [
	[null, <minecraft:lever>],
	[<simplefluidtanks:tankitem>, <ore:pipeMediumBronze>]]);

//Fluid Conduit
mods.jei.JEI.removeAndHide(<enderio:item_liquid_conduit>);
recipes.remove(<enderio:item_liquid_conduit:1>);
recipes.addShaped(<enderio:item_liquid_conduit:1> * 4, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
	[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
assembler.recipeBuilder().inputs([<ore:blockGlass> * 3, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_liquid_conduit:1> * 8]).duration(80).EUt(16).buildAndRegister();
macerator.recipeBuilder().inputs([<minecraft:diamond>]).outputs([<ore:dustDiamond>.firstItem]).duration(80).EUt(8).buildAndRegister();
macerator.recipeBuilder().inputs([<appliedenergistics2:material:7>]).outputs([<appliedenergistics2:material:8>]).duration(80).EUt(8).buildAndRegister();
macerator.recipeBuilder().inputs([<enderio:item_material:16>]).outputs([<enderio:item_material:37>]).duration(500).EUt(16).buildAndRegister();
macerator.recipeBuilder().inputs([<enderio:item_material:19>]).outputs([<enderio:item_material:34>]).duration(400).EUt(16).buildAndRegister();
macerator.recipeBuilder().inputs([<enderio:item_material:15>]).outputs([<enderio:item_material:35>]).duration(300).EUt(16).buildAndRegister();
macerator.recipeBuilder().inputs([<enderio:item_material:14>]).outputs([<enderio:item_material:36>]).duration(200).EUt(16).buildAndRegister();
macerator.recipeBuilder().inputs([<enderio:item_material:17>]).outputs([<contenttweaker:grainsofinnocence>]).duration(200).EUt(16).buildAndRegister();
recipes.addShapeless(<contenttweaker:blazepowder>,[<minecraft:blaze_powder>]);
recipes.addShapeless(<minecraft:blaze_powder>,[<contenttweaker:blazepowder>]);
recipes.remove(<appliedenergistics2:part:36>);

//Yeta Wrench
recipes.remove(<enderio:item_yeta_wrench>);
recipes.addShaped(<enderio:item_yeta_wrench>, [
	[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
	[null, <ore:gearIron>, null],
	[null,<minecraft:iron_ingot>,null]]);
<gregtech:machine:511>.displayName = "Electric Blast Furnace Controller"; // TODO: Put this in lang file
<gregtech:machine:502>.displayName = "Fluid Input Hatch (ULV)";
<gregtech:machine:512>.displayName = "Fluid Input Hatch (LV)";
<gregtech:machine:722>.displayName = "Fluid Input Hatch (MV)";
<gregtech:machine:732>.displayName = "Fluid Input Hatch (HV)";
<gregtech:machine:742>.displayName = "Fluid Input Hatch (EV)";
<gregtech:machine:752>.displayName = "Fluid Input Hatch (LuV)";
<gregtech:machine:762>.displayName = "Fluid Input Hatch (IV)";
<gregtech:machine:772>.displayName = "Fluid Input Hatch (ZPM)";
<gregtech:machine:782>.displayName = "Fluid Input Hatch (UV)";
<gregtech:machine:792>.displayName = "Fluid Input Hatch (MAX)";
<gregtech:machine:503>.displayName = "Fluid Output Hatch (ULV)";
<gregtech:machine:713>.displayName = "Fluid Output Hatch (LV)";
<gregtech:machine:723>.displayName = "Fluid Output Hatch (MV)";
<gregtech:machine:733>.displayName = "Fluid Output Hatch (HV)";
<gregtech:machine:743>.displayName = "Fluid Output Hatch (EV)";
<gregtech:machine:753>.displayName = "Fluid Output Hatch (LuV)";
<gregtech:machine:763>.displayName = "Fluid Output Hatch (IV)";
<gregtech:machine:773>.displayName = "Fluid Output Hatch (ZPM)";
<gregtech:machine:783>.displayName = "Fluid Output Hatch (UV)";
<gregtech:machine:793>.displayName = "Fluid Output Hatch (MAX)";




//Chemistry
reactor.recipeBuilder().inputs([<extendedcrafting:material:7>]).fluidInputs([<liquid:lava> * 1000]).outputs(<minecraft:end_stone>).EUt(15).duration(20).buildAndRegister();
reactor.recipeBuilder().inputs([<minecraft:quartz>]).fluidInputs([<liquid:lava> * 1000]).outputs(<armorplus:lava_crystal:1>).EUt(15).duration(100).buildAndRegister();
reactor.recipeBuilder().inputs([<minecraft:obsidian>]).fluidInputs([<liquid:lava> * 1000]).outputs(<armorplus:lava_infused_obsidian>).EUt(15).duration(200).buildAndRegister();
reactor.recipeBuilder().inputs([<contenttweaker:block_dust>]).fluidInputs([<liquid:lava> * 1000]).outputs(<minecraft:netherrack>).EUt(15).duration(20).buildAndRegister();
reactor.recipeBuilder().inputs([<contenttweaker:block_dust>]).fluidInputs([<liquid:water> * 1000]).outputs(<minecraft:clay>).EUt(15).duration(20).buildAndRegister();
reactor.recipeBuilder().inputs([<minecraft:magma>]).fluidOutputs(<liquid:lava> * 1000).EUt(30).duration(120).buildAndRegister();
reactor.recipeBuilder().inputs([<thermalfoundation:fertilizer>]).fluidInputs(<liquid:ammonia> * 100).outputs(<thermalfoundation:fertilizer:1>).EUt(30).duration(120).buildAndRegister();
// recipes for Manganese Oxides - currently unused
// reactor.recipeBuilder().inputs([<gregtech:meta_item_1:2039>]).fluidInputs(<liquid:oxygen> * 250).outputs(<nuclearcraft:dust_oxide:2>).EUt(15).duration(120).buildAndRegister();
// reactor.recipeBuilder().inputs([<nuclearcraft:dust_oxide:2>]).fluidInputs(<liquid:phosphoric_acid> * 1000).outputs(<nuclearcraft:dust_oxide:2>).EUt(500).duration(120).buildAndRegister();
mixer.recipeBuilder().inputs([<minecraft:redstone>,<minecraft:glowstone_dust>]).outputs(<nuclearcraft:compound:2> * 2).EUt(22).duration(40).buildAndRegister();
mixer.recipeBuilder().inputs([<ore:dustPhosphor>,<ore:dustGold>]).outputs(<minecraft:glowstone_dust> * 2).EUt(15).duration(80).buildAndRegister();
mixer.recipeBuilder().inputs([<ore:dustIron>,<ore:dustTin>]).outputs(<ore:dustTinAlloy>.firstItem * 2).EUt(15).duration(40).buildAndRegister();
mixer.recipeBuilder().inputs([<ore:ingotNaquadah>,<enderio:item_material:20> * 4,<contenttweaker:grainsofinnocence>,<enderio:item_material:36>]).fluidInputs([<liquid:pulsating_iron> * 576, <liquid:neptunium> * 144]).outputs(<ore:dustNaquadahEnriched>.firstItem).EUt(8000).duration(400).buildAndRegister();
mixer.recipeBuilder().inputs([<ore:dustNaquadahAlloy>,<enderio:item_material:34>,<enderio:item_material:35>*4,<enderio:item_material:37>]).fluidInputs([<liquid:enderium> * 576, <liquid:curium> * 144]).outputs(<ore:dustNaquadria>.firstItem).EUt(30000).duration(400).buildAndRegister();
mixer.recipeBuilder().inputs([<ore:dustSteel> * 3,<ore:dustBlackBronze> * 2,<actuallyadditions:item_crystal:3> * 2,<extrautils2:ingredients:4> * 2]).outputs(<ore:dustBlackSteel>.firstItem  * 9).EUt(15).duration(200).buildAndRegister();
recipes.remove(<ore:dustBlackSteel>);
furnace.addRecipe(<actuallyadditions:item_misc:5>, <actuallyadditions:block_misc:3>, 0.0);

reactor.recipeBuilder().inputs([<minecraft:quartz>]).fluidInputs([<liquid:glowstone> * 288]).outputs(<thermalfoundation:material:894>).EUt(100).duration(100).buildAndRegister();
reactor.recipeBuilder().inputs([<minecraft:quartz>]).fluidInputs([<liquid:redstone> * 288]).outputs(<thermalfoundation:material:893>).EUt(100).duration(100).buildAndRegister();
reactor.recipeBuilder().inputs([<minecraft:quartz>]).fluidInputs([<liquid:ender> * 250]).outputs(<thermalfoundation:material:895>).EUt(100).duration(100).buildAndRegister();
reactor.recipeBuilder().inputs([<minecraft:dragon_breath>, <ore:dustManyullyn>]).outputs(<draconicevolution:draconium_dust>).EUt(2000).duration(500).buildAndRegister();
reactor.recipeBuilder().inputs([<minecraft:glass_bottle> * 4]).fluidInputs([<liquid:pyrotheum> * 1000, <liquid:nitro_fuel> * 1000]).outputs(<minecraft:dragon_breath> * 4).EUt(2000).duration(1000).buildAndRegister();
recipes.addShaped(<armorplus:lava_nether_brick>, [
	[null, <minecraft:nether_brick>, null],
	[<minecraft:nether_brick>, <minecraft:lava_bucket>, <minecraft:nether_brick>],
	[null, <minecraft:nether_brick>, null]]);
recipes.addShaped(<extendedcrafting:material:40>, [
	[null, <minecraft:ender_eye>, null],
	[<minecraft:ender_eye>, <minecraft:nether_star>, <minecraft:ender_eye>],
	[null, <minecraft:ender_eye>, null]]);

recipes.remove(<minecraft:ender_eye>);
reactor.recipeBuilder().inputs([<minecraft:ender_pearl>,<minecraft:blaze_powder>]).outputs(<minecraft:ender_eye>).EUt(16).duration(100).buildAndRegister();
recipes.remove(<extrautils2:endershard>);
recipes.addShapeless(<extrautils2:endershard> * 8, [<minecraft:ender_pearl>]);
assembler.findRecipe(2, [<minecraft:blaze_powder>,<minecraft:ender_pearl>], [null]).remove();
assembler.findRecipe(2, [<minecraft:ender_pearl> * 6,<minecraft:blaze_rod>], [null]).remove();
mixer.findRecipe(8, [<ore:dustSteel>.firstItem * 3,<gregtech:meta_item_1:2229>,<gregtech:meta_item_1:2044>], [null]).remove(); // ??

// Magnesium Chloride decomposition
reactor.findRecipe(240, [<ore:dustMagnesiumChloride>.firstItem * 2, <ore:dustSodium>.firstItem], [null]).remove();
electrolyzer.recipeBuilder()
    .inputs([<ore:dustMagnesiumChloride>*3])
    .outputs([<ore:dustMagnesium>.firstItem])
    .fluidOutputs([<liquid:chlorine>*2000])
    .duration(720).EUt(30).buildAndRegister();

//reactor.findRecipe(388, [gt.getCirc(1)], [<liquid:oxygen> * 500, <liquid:hydrogen> * 3000, <liquid:nitrogen_dioxide> * 1000]).remove();

reactor.findRecipe(384, [gt.getCirc(1)], [<liquid:nitrogen> * 1000, <liquid:hydrogen> * 3000]).remove();
reactor.recipeBuilder().notConsumable(gt.getCirc(1)).fluidInputs(<liquid:nitrogen> * 1000, <liquid:hydrogen> * 3000).fluidOutputs(<liquid:ammonia> * 4000).EUt(100).duration(320).buildAndRegister();

reactor.findRecipe(480, [null], [<liquid:chloramine> * 1000, <liquid:dimethylamine> * 1000]).remove();
reactor.findRecipe(480, [null], [<liquid:methanol> * 2000, <liquid:ammonia> * 1000, <liquid:hypochlorous_acid> * 1000]).remove();
reactor.recipeBuilder().fluidInputs(<liquid:chloramine> * 1000, <liquid:dimethylamine> * 1000).fluidOutputs(<liquid:dimethylhidrazine> * 1000,<liquid:diluted_hydrochloric_acid> * 1000).EUt(120).duration(960).buildAndRegister();

//Remove phosphorus pentoxide, not used anywhere aside from duping phosphorus
reactor.findRecipe(30, [<gregtech:meta_item_1:2466>], [<liquid:water> * 6000]).remove(); // ??
//reactor.findRecipe(30, [<gregtech:meta_item_1:2050> * 4], [<liquid:oxygen> * 10000]).remove(); // ??
electrolyzer.findRecipe(30, [<gregtech:meta_item_1:2466> * 14], null).remove();

//mods.jei.JEI.removeAndHide(<gregtech:meta_item_1:466>); TODO: uncomment after lines above corrected
//mods.jei.JEI.removeAndHide(<gregtech:meta_item_1:1466>);
//mods.jei.JEI.removeAndHide(<gregtech:meta_item_1:2466>);
//mods.jei.JEI.removeAndHide(<gregtech:compressed_16:13>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:facade>.withTag({damage: 13, item: "gregtech:compressed_16"}));

//Lava Factory
recipes.remove(<actuallyadditions:block_misc:7>);
recipes.addShaped(<actuallyadditions:block_misc:7> * 2, [[<ore:plateAluminium>, <ore:plateSteel>, <ore:plateAluminium>],[<ore:plateSteel>, null, <ore:plateSteel>], [<ore:plateAluminium>, <ore:plateSteel>, <ore:plateAluminium>]]);

recipes.remove(<actuallyadditions:block_lava_factory_controller>);
recipes.addShaped(<actuallyadditions:block_lava_factory_controller>, [
	[<actuallyadditions:item_misc:8>, <actuallyadditions:block_misc:7>, <actuallyadditions:item_misc:8>],
	[<minecraft:lava_bucket:*>, <morefurnaces:furnaceblock:3>, <minecraft:lava_bucket:*>]]);

recipes.remove(<actuallyadditions:block_fluid_collector>);
recipes.remove(<actuallyadditions:block_placer>);
recipes.remove(<actuallyadditions:block_fluid_placer>);

recipes.addShaped(<actuallyadditions:block_breaker>, [[<actuallyadditions:item_misc:7>, <metaitem:electric.piston.lv>]]);
recipes.addShaped(<actuallyadditions:block_placer>, [[<metaitem:electric.piston.lv>,<actuallyadditions:item_misc:7>]]);
recipes.addShaped(<actuallyadditions:block_fluid_placer>, [[<metaitem:electric.pump.lv>,<actuallyadditions:item_misc:7>]]);
recipes.addShaped(<actuallyadditions:block_fluid_collector>, [[<actuallyadditions:item_misc:7>,<metaitem:electric.pump.lv>]]);

//Rubber Sheet
compressor.recipeBuilder().inputs(<metaitem:rubber_drop>).outputs(<ore:plateRubber>.firstItem).duration(20).EUt(8).buildAndRegister();
compressor.recipeBuilder().inputs(<extrautils2:ingredients:11>).outputs(<moreplates:demon_plate>).duration(200).EUt(400).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:dustCalcium> * 2).outputs(<minecraft:dye:15>).duration(20).EUt(4).buildAndRegister();
compressor.recipeBuilder().inputs(<minecraft:dye:15> * 3).outputs(<minecraft:bone>).duration(20).EUt(8).buildAndRegister();
compressor.recipeBuilder().inputs(<minecraft:bone> * 4).outputs(<minecraft:skull>).duration(20).EUt(16).buildAndRegister();


macerator.findRecipe(8, [<minecraft:cobblestone>], [null]).remove();
macerator.findRecipe(8, [<minecraft:gravel>], [null]).remove();
macerator.recipeBuilder().inputs([<minecraft:stone>]).outputs([<ore:dustStone>.firstItem]).duration(16).EUt(10).buildAndRegister();
macerator.recipeBuilder().inputs([<minecraft:cobblestone>]).outputs([<minecraft:gravel>]).duration(16).EUt(10).buildAndRegister();
macerator.recipeBuilder().inputs([<minecraft:gravel>]).outputs([<minecraft:sand>]).duration(16).EUt(10).buildAndRegister();
macerator.recipeBuilder().inputs([<minecraft:sand>]).outputs([<contenttweaker:block_dust>]).duration(16).EUt(10).buildAndRegister();
macerator.recipeBuilder().inputs([<minecraft:netherrack>]).outputs([<ore:dustNetherrack>.firstItem]).duration(16).EUt(10).buildAndRegister();

macerator.findRecipe(8, [<minecraft:end_stone>], [null]).remove();
macerator.recipeBuilder().inputs([<ore:endstone>.firstItem]).outputs([<ore:dustEndstone>.firstItem]).duration(16).EUt(10).buildAndRegister();

//Copper Furnace
recipes.remove(<morefurnaces:furnaceblock:5>);
recipes.addShaped(<morefurnaces:furnaceblock:5>, [
[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
[<ore:ingotCopper>, <morefurnaces:furnaceblock>, <ore:ingotCopper>],
[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]]);

//Silver Furnace
recipes.remove(<morefurnaces:furnaceblock:6>);
recipes.addShaped(<morefurnaces:furnaceblock:6>, [
	[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>],
	[<ore:ingotSilver>, <morefurnaces:furnaceblock:5>, <ore:ingotSilver>],
	[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>]]);

//Gold Furnace
recipes.remove(<morefurnaces:furnaceblock:1>);
recipes.addShaped(<morefurnaces:furnaceblock:1>, [
	[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],
	[<ore:ingotGold>, <morefurnaces:furnaceblock:6>, <ore:ingotGold>],
	[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]]);

//Diamond Furnace
recipes.remove(<morefurnaces:furnaceblock:2>);
recipes.addShaped(<morefurnaces:furnaceblock:2>, [
	[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
	[<minecraft:diamond>, <morefurnaces:furnaceblock:1>, <minecraft:diamond>],
	[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]]);

//Obsidian Furnace
recipes.remove(<morefurnaces:furnaceblock:3>);
recipes.addShaped(<morefurnaces:furnaceblock:3>, [
	[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>],
	[<morefurnaces:furnaceblock:2>, <minecraft:obsidian>, <morefurnaces:furnaceblock:2>],
	[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);

<morefurnaces:furnaceblock>.addTooltip(format.red("If you pick up this item while it has fuel in the fuel slot, the fuel will be destroyed."));
<morefurnaces:furnaceblock>.addTooltip(format.red("Remove all fuel you wish to keep from the fuel slots before breaking this with a pick."));
<morefurnaces:furnaceblock:1>.addTooltip(format.red("If you pick up this item while it has fuel in the fuel slot, the fuel will be destroyed."));
<morefurnaces:furnaceblock:1>.addTooltip(format.red("Remove all fuel you wish to keep from the fuel slots before breaking this with a pick."));
<morefurnaces:furnaceblock:2>.addTooltip(format.red("If you pick up this item while it has fuel in the fuel slot, the fuel will be destroyed."));
<morefurnaces:furnaceblock:2>.addTooltip(format.red("Remove all fuel you wish to keep from the fuel slots before breaking this with a pick."));
<morefurnaces:furnaceblock:3>.addTooltip(format.red("If you pick up this item while it has fuel in the fuel slot, the fuel will be destroyed."));
<morefurnaces:furnaceblock:3>.addTooltip(format.red("Remove all fuel you wish to keep from the fuel slots before breaking this with a pick."));
<morefurnaces:furnaceblock:5>.addTooltip(format.red("If you pick up this item while it has fuel in the fuel slot, the fuel will be destroyed."));
<morefurnaces:furnaceblock:5>.addTooltip(format.red("Remove all fuel you wish to keep from the fuel slots before breaking this with a pick."));
<morefurnaces:furnaceblock:6>.addTooltip(format.red("If you pick up this item while it has fuel in the fuel slot, the fuel will be destroyed."));
<morefurnaces:furnaceblock:7>.addTooltip(format.red("If you pick up this item while it has fuel in the fuel slot, the fuel will be destroyed."));
<morefurnaces:furnaceblock:6>.addTooltip(format.red("Remove all fuel you wish to keep from the fuel slots before breaking this with a pick."));
<morefurnaces:furnaceblock:7>.addTooltip(format.red("Remove all fuel you wish to keep from the fuel slots before breaking this with a pick."));

recipes.remove(<ore:cableGtSingleConductiveIron>.firstItem);
recipes.addShapeless(<ore:cableGtSingleConductiveIron>.firstItem,[<ore:wireGTSingleConductiveIron>,<ore:plateRubber>]);

recipes.addShapeless(<metaitem:battery.re.lv.cadmium>,[<metaitem:battery.hull.lv>,<ore:dustCadmium>,<ore:dustCadmium>]);	//Small Cadmium
recipes.addShapeless(<metaitem:battery.re.lv.sodium>,[<metaitem:battery.hull.lv>,<ore:dustSodium>,<ore:dustSodium>]);	//Small Sodium
recipes.addShapeless(<metaitem:battery.re.lv.lithium>,[<metaitem:battery.hull.lv>,<ore:dustLithium>,<ore:dustLithium>]);	//Small Lithium

// Small Battery Hull
recipes.remove(<metaitem:battery.hull.lv>);
recipes.addShaped(<metaitem:battery.hull.lv>, [
	[<ore:cableGtSingleRedAlloy>], 
	[<ore:plateTin>], 
	[<ore:plateTin>]]);

// Add Corrected Small Battery Hull recipe to Assembler
assembler.findRecipe(1, [<gregtech:meta_item_1:12091>, <ore:cableGtSingleTin>.firstItem],[<liquid:plastic>*144]).remove(); // ??
assembler.recipeBuilder()
	.inputs([<ore:plateTin>, <ore:cableGtSingleRedAlloy>])
	.fluidInputs([<liquid:plastic>*144])	
	.outputs([<metaitem:battery.hull.lv>])
	.duration(800).EUt(1).buildAndRegister();

// Correct the Macerating recipe for Small Battery Hull
macerator.findRecipe(8, [<metaitem:battery.hull.lv>], [null]).remove();
macerator.recipeBuilder()
	.inputs(<metaitem:battery.hull.lv>)
	.outputs(<ore:dustTin>.firstItem)
	.duration(30).EUt(8).buildAndRegister();


recipes.removeByRecipeName("gregtech:electric_motor/electric_motor_lv_steel");

recipes.remove(<gregtech:machine:210>);
recipes.addShaped(<gregtech:machine:210>, [
	[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
	[<metaitem:electric.piston.lv>, <meta_tile_entity:gregtech:hull.lv>, <metaitem:electric.piston.lv>],
	[<ore:cableGtSingleTin>, <ore:plateIron>, <ore:cableGtSingleTin>]]);

furnace.addRecipe(<ore:dustSodium>.firstItem, <ore:dustsalt>, 0.0);
furnace.addRecipe(<ore:ingotCopper>.firstItem,<ore:oreCopper>);
furnace.addRecipe(<ore:ingotCopper>.firstItem,<gregtech:ore_copper_0:0>);
furnace.addRecipe(<ore:ingotCopper>.firstItem,<gregtech:ore_copper_0:1>);
furnace.addRecipe(<ore:ingotCopper>.firstItem,<gregtech:ore_copper_0:2>);
furnace.addRecipe(<ore:ingotCopper>.firstItem,<gregtech:ore_copper_0:3>);
furnace.addRecipe(<ore:ingotCopper>.firstItem, <gregtech:meta_item_1:2100>, 0.0);

furnace.remove(<minecraft:iron_nugget> * 3, <ore:dustImpurePyrite>.firstItem);
furnace.remove(<minecraft:iron_nugget> * 3, <ore:dustPyrite>.firstItem);
furnace.addRecipe(<minecraft:iron_ingot>, <ore:dustPyrite>.firstItem, 0.0);
furnace.addRecipe(<minecraft:iron_ingot>, <ore:dustImpurePyrite>.firstItem, 0.0);

wiremill.recipeBuilder().inputs([<enderio:item_alloy_ingot:5>]).outputs([<contenttweaker:pulsatingwire> * 2]).duration(40).EUt(16).buildAndRegister();
wiremill.recipeBuilder().inputs([<extendedcrafting:material:32>]).outputs([<ore:wireGtSingleOmnium>.firstItem * 2]).duration(100).EUt(50000).buildAndRegister();

centrifuge.findRecipe(30, [<ore:dustBlackSteel>.firstItem * 5], [null]).remove();
electrolyzer.findRecipe(90, [<ore:dustGalena>.firstItem * 8], [null]).remove(); #??
electrolyzer.recipeBuilder().inputs([<ore:dustGalena> * 8]).outputs([<ore:dustLead>.firstItem * 3,<ore:dustSilver>.firstItem * 3, <ore:dustSulfur>.firstItem * 2]).duration(500).EUt(32).buildAndRegister();
electrolyzer.recipeBuilder().inputs([<ore:dustEnderPearl>.firstItem]).outputs([<forestry:crafting_material>]).duration(200).EUt(1000).buildAndRegister();
electrolyzer.findRecipe(60, [<ore:dustEnderPearl>.firstItem * 10], [null]).remove();


autoclave.findRecipe(24, [<ore:dustLapis>.firstItem], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<ore:dustCertusQuartz>.firstItem], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<ore:dustNetherQuartz>.firstItem], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<ore:dustMonazite>.firstItem], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<ore:dustCinnabar>.firstItem], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<ore:dustQuartzite>.firstItem], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<ore:dustSodalite>.firstItem], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<ore:dustLazurite>.firstItem], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<ore:dustApatite>.firstItem], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<ore:dustLapis>.firstItem], [<liquid:distilled_water> * 200]).remove();
autoclave.findRecipe(24, [<ore:dustCertusQuartz>.firstItem], [<liquid:distilled_water> * 200]).remove();
autoclave.findRecipe(24, [<ore:dustNetherQuartz>.firstItem], [<liquid:distilled_water> * 200]).remove();
autoclave.findRecipe(24, [<ore:dustMonazite>.firstItem], [<liquid:distilled_water> * 200]).remove();
autoclave.findRecipe(24, [<ore:dustCinnabar>.firstItem], [<liquid:distilled_water> * 200]).remove();
autoclave.findRecipe(24, [<ore:dustQuartzite>.firstItem], [<liquid:distilled_water> * 200]).remove();
autoclave.findRecipe(24, [<ore:dustSodalite>.firstItem], [<liquid:distilled_water> * 200]).remove();
autoclave.findRecipe(24, [<ore:dustLazurite>.firstItem], [<liquid:distilled_water> * 200]).remove();
autoclave.findRecipe(24, [<ore:dustApatite>.firstItem], [<liquid:distilled_water> * 200]).remove();
autoclave.recipeBuilder().inputs([<ore:dustLapis>]).fluidInputs([<liquid:water> * 100]).outputs([<minecraft:dye:4>]).duration(40).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustNetherQuartz>]).fluidInputs([<liquid:water> * 100]).outputs([<minecraft:quartz>]).duration(40).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustDiamond>]).fluidInputs([<liquid:water> * 100]).outputs([<minecraft:diamond>]).duration(200).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustEmerald>]).fluidInputs([<liquid:water> * 100]).outputs([<minecraft:emerald>]).duration(300).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustCertusQuartz>]).fluidInputs([<liquid:water> * 100]).outputs([<ore:gemCertusQuartz>.firstItem]).duration(100).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustCoal>]).fluidInputs([<liquid:water> * 100]).outputs([<minecraft:coal>]).duration(20).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustApatite>]).fluidInputs([<liquid:water> * 100]).outputs([<ore:gemApatite>.firstItem]).duration(20).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustCinnabar>]).fluidInputs([<liquid:water> * 100]).outputs([<ore:gemCinnabar>.firstItem]).duration(200).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustMonazite>]).fluidInputs([<liquid:water> * 100]).outputs([<ore:gemMonazite>.firstItem]).duration(200).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustSodalite>]).fluidInputs([<liquid:water> * 100]).outputs([<ore:gemSodalite>.firstItem]).duration(80).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustLazurite>]).fluidInputs([<liquid:water> * 100]).outputs([<ore:gemLazurite>.firstItem]).duration(80).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustQuartzite>]).fluidInputs([<liquid:water> * 100]).outputs([<ore:gemQuartzite>.firstItem]).duration(40).EUt(16).buildAndRegister();

	mods.jei.JEI.removeAndHide(<ore:gemFlawedAlmandine>);
	mods.jei.JEI.removeAndHide(
	<ore:gemFlawedBlueTopaz>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedCertusQuartz>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedRuby>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedSapphire>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedSodalite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedTanzanite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedTopaz>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedNetherQuartz>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedQuartzite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedJasper>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedGlass>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedLignite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedOlivine>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedOpal>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedAmethyst>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedLapis>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedApatite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedGarnetRed>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedGarnetYellow>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedVinteum>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedMonazite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedSkystone>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedCinnabar>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedCoal>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedEmerald>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedDiamond>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedGreenSapphire>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedRutile>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedLazurite>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedAlmandine>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedBlueTopaz>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedCertusQuartz>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedRuby>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedSapphire>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedSodalite>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedTanzanite>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedTopaz>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedNetherQuartz>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedQuartzite>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedJasper>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedGlass>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedLignite>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedOlivine>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedOpal>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedAmethyst>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedLapis>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedApatite>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedGarnetRed>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedGarnetYellow>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedVinteum>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedMonazite>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedSkystone>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedCinnabar>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedCoal>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedEmerald>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedDiamond>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedGreenSapphire>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedRutile>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedLazurite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessAlmandine>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessBlueTopaz>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessCertusQuartz>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessSapphire>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessSodalite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessTanzanite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessTopaz>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessNetherQuartz>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessQuartzite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessJasper>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessGlass>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessLignite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessOlivine>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessOpal>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessAmethyst>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessApatite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessGarnetRed>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessGarnetYellow>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessVinteum>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessMonazite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessSkystone>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessCinnabar>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessCoal>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessGreenSapphire>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessRutile>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessLazurite>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteAlmandine>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteBlueTopaz>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteCertusQuartz>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteSapphire>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteSodalite>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteTanzanite>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteTopaz>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteNetherQuartz>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteQuartzite>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteJasper>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteGlass>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteLignite>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteOlivine>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteOpal>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteAmethyst>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteApatite>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteGarnetRed>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteGarnetYellow>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteVinteum>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteMonazite>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteSkystone>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteCinnabar>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteCoal>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteGreenSapphire>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteRutile>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteLazurite>);

mods.jei.JEI.removeAndHide(<ore:gemFlawedCoke>);
mods.jei.JEI.removeAndHide(<ore:gemChippedCoke>);
mods.jei.JEI.removeAndHide(<ore:gemFlawlessLapis>);
mods.jei.JEI.removeAndHide(<ore:gemFlawlessCoke>);
mods.jei.JEI.removeAndHide(<ore:gemExquisiteLapis>);
mods.jei.JEI.removeAndHide(<ore:gemExquisiteCoke>);
mods.jei.JEI.removeAndHide(<gregtech:meta_item_1:8209>); // Glass drill??

furnace.setFuel(<ore:ingotGraphite>, 1200);
furnace.setFuel(<ore:dustGraphite>, 1200);
furnace.setFuel(<ore:dustCarbon>, 1200);




compressor.recipeBuilder().inputs(<ore:ingotAluminium>).outputs(<ore:plateAluminium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotAmericium>).outputs(<ore:plateAmericium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotAntimony>).outputs(<ore:plateAntimony>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotBeryllium>).outputs(<ore:plateBeryllium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotChrome>).outputs(<ore:plateChrome>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotCobalt>).outputs(<ore:plateCobalt>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotCopper>).outputs(<ore:plateCopper>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotErbium>).outputs(<ore:plateErbium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotEuropium>).outputs(<ore:plateEuropium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotGallium>).outputs(<ore:plateGallium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotGold>).outputs(<ore:plateGold>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotIridium>).outputs(<gregtech:meta_item_1:12032>).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotIron>).outputs(<ore:plateElectricalSteel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotLead>).outputs(<ore:plateLead>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotLithium>).outputs(<ore:plateLithium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotManganese>).outputs(<ore:plateManganese>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotNeodymium>).outputs(<ore:plateNeodymium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotNickel>).outputs(<ore:plateNickel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotNiobium>).outputs(<ore:plateNiobium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotOsmium>).outputs(<ore:plateOsmium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotPalladium>).outputs(<ore:platePalladium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotPlutonium>).outputs(<ore:platePlutonium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotPlatinum>).outputs(<ore:platePlatinum>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotPlutonium241>).outputs(<ore:platePlutonium241>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotPotassium>).outputs(<ore:platePotassium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotSilicon>).outputs(<ore:plateSilicon>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotPotassium>).outputs(<ore:platePotassium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotPraseodymium>).outputs(<ore:platePraseodymium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotPromethium>).outputs(<ore:platePromethium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotRubidium>).outputs(<ore:plateRubidium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotSamarium>).outputs(<ore:plateSamarium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotSilver>).outputs(<ore:plateSilver>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotSodium>).outputs(<ore:plateSodium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotStrontium>).outputs(<ore:plateStrontium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTantalum>).outputs(<ore:plateTantalum>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTellurium>).outputs(<ore:plateTellurium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTerbium>).outputs(<ore:plateTerbium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotThorium>).outputs(<ore:plateThorium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotThulium>).outputs(<ore:plateThulium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTin>).outputs(<ore:plateTin>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotThulium>).outputs(<ore:plateThulium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotVanadium>).outputs(<ore:plateVanadium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotYttrium>).outputs(<ore:plateYttrium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTitanium>).outputs(<ore:plateTitanium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotUranium>).outputs(<ore:plateUranium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotZinc>).outputs(<ore:plateZinc>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotAnnealedCopper>).outputs(<ore:plateAnnealedCopper>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotBrass>).outputs(<ore:plateBrass>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotBronze>).outputs(<ore:plateBronze>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotCupronickel>).outputs(<ore:plateCupronickel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotElectrum>).outputs(<ore:plateElectrum>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotInvar>).outputs(<ore:plateInvar>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotBatteryAlloy>).outputs(<ore:plateBatteryAlloy>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotEpoxid>).outputs(<ore:plateEpoxid>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<minecraft:diamond>).outputs(<ore:plateDiamond>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<minecraft:emerald>).outputs(<ore:plateEmerald>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotMagnalium>).outputs(<ore:plateMagnalium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotSolderingAlloy>).outputs(<ore:plateSolderingAlloy>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotStainlessSteel>).outputs(<ore:plateStainlessSteel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotSteel>).outputs(<ore:plateSteel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotGraphite>).outputs(<ore:plateGraphite>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotOsmiridium>).outputs(<ore:plateOsmiridium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTungstenSteel>).outputs(<ore:plateTungstenSteel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTungsten>).outputs(<ore:plateTungsten>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTungstenCarbide>).outputs(<ore:plateTungstenCarbide>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotConductiveIron>).outputs(<ore:plateConductiveIron>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotEnergeticAlloy>).outputs(<ore:plateEnergeticAlloy>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotVibrantAlloy>).outputs(<ore:plateVibrantAlloy>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotDarkSteel>).outputs(<ore:plateDarkSteel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotPulsatingIron>).outputs(<ore:platePulsatingIron>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotElectricalSteel>).outputs(<ore:plateElectricalSteel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotLumium>).outputs(<ore:plateLumium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotSignalum>).outputs(<ore:plateSignalum>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotEnderium>).outputs(<ore:plateEnderium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotEndSteel>).outputs(<ore:plateEndSteel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotManyullyn>).outputs(<ore:plateManyullyn>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotArdite>).outputs(<ore:plateArdite>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotReinforcedEpoxyResin>).outputs(<ore:plateReinforcedEpoxyResin>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotBlackSteel>).outputs(<ore:plateBlackSteel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotYttriumBariumCuprate>).outputs(<ore:plateYttriumBariumCuprate>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotWroughtIron>).outputs(<ore:plateWroughtIron>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTinAlloy>).outputs(<ore:plateTinAlloy>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotRedAlloy>).outputs(<ore:plateRedAlloy>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotCobaltBrass>).outputs(<ore:plateCobaltBrass>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotElectrumFlux>).outputs(<ore:plateElectrumFlux>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotNeutronium>).outputs(<ore:plateNeutronium>.firstItem).duration(100).EUt(30000).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotInfinity>).outputs(<ore:plateInfinity>.firstItem).duration(100).EUt(30000).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotDraconium>).outputs(<ore:plateDraconium>.firstItem).duration(100).EUt(3000).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotDraconiumAwakened>).outputs(<ore:plateDraconiumAwakened>.firstItem).duration(100).EUt(8000).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotCrystalMatrix>).outputs(<ore:plateCrystalMatrix>.firstItem).duration(100).EUt(8000).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotScandium>).outputs(<ore:plateScandium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemAlmandine>).outputs(<ore:plateAlmandine>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemBlueTopaz>).outputs(<ore:plateBlueTopaz>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemGreenSapphire>).outputs(<ore:plateGreenSapphire>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemRutile>).outputs(<ore:plateRutile>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotKanthal>).outputs(<ore:plateKanthal>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotNiobiumNitride>).outputs(<ore:plateNiobiumNitride>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotNichrome>).outputs(<ore:plateNichrome>.firstItem).duration(100).EUt(10).buildAndRegister();



recipes.removeByRecipeName("gregtech:tin_cable_4");
recipes.removeByRecipeName("gregtech:tin_cable_2");
recipes.removeByRecipeName("gregtech:red_alloy_cable_4");
recipes.removeByRecipeName("gregtech:red_alloy_cable_2");
recipes.removeByRecipeName("gregtech:conductive_iron_cable_2");
recipes.removeByRecipeName("gregtech:conductive_iron_cable_4");
recipes.removeByRecipeName("gregtech:block_decompress_clay");
recipes.removeByRecipeName("gregtech:gravel_to_flint");



recipes.remove(<ore:gearAluminium>.firstItem);
recipes.remove(<ore:gearCopper>.firstItem);
recipes.remove(<ore:gearGold>.firstItem);
recipes.remove(<ore:gearIridium>.firstItem);
recipes.remove(<ore:gearIron>.firstItem);
recipes.remove(<ore:gearLead>.firstItem);
recipes.remove(<ore:gearOsmium>.firstItem);
recipes.remove(<ore:gearPlatinum>.firstItem);
recipes.remove(<ore:gearSilver>.firstItem);
recipes.remove(<ore:gearTin>.firstItem);
recipes.remove(<ore:gearTitanium>.firstItem);
recipes.remove(<ore:gearBrass>.firstItem);
recipes.remove(<ore:gearBronze>.firstItem);
recipes.remove(<ore:gearInvar>.firstItem);
recipes.remove(<ore:gearElectrum>.firstItem);
recipes.remove(<ore:gearSteel>.firstItem);

recipes.remove(<thermalfoundation:fertilizer>);
recipes.remove(<thermalfoundation:fertilizer:1>);
recipes.addShapeless(<thermalfoundation:fertilizer> * 16, [<ore:dustWood>, <ore:dustWood>, <ore:dustCharcoal>, <ore:dustSaltpeter>,<ore:gemApatite>,<ore:gemApatite>]);
recipes.addShapeless(<thermalfoundation:fertilizer> * 16, [<ore:dustWood>, <ore:dustWood>, <ore:dustCoal>, <ore:dustSaltpeter>,<ore:gemApatite>,<ore:gemApatite>]);

recipes.remove(<meta_tile_entity:gregtech:extruder.mv>); 
recipes.remove(<meta_tile_entity:gregtech:extruder.hv>);
recipes.remove(<meta_tile_entity:gregtech:extruder.ev>);


recipes.addShaped(<meta_tile_entity:gregtech:extruder.mv>, [[<ore:wireGtQuadrupleCupronickel>, <ore:wireGtQuadrupleCupronickel>, gt.getCirc("MV")],
	[<metaitem:electric.piston.mv>, <meta_tile_entity:gregtech:hull.mv>, <ore:pipeMediumSteel>],
	[<ore:wireGtQuadrupleCupronickel>, <ore:wireGtQuadrupleCupronickel>, gt.getCirc("MV")]]);

recipes.addShaped(<meta_tile_entity:gregtech:extruder.hv>, [
	[<ore:wireGtQuadrupleKanthal>, <ore:wireGtQuadrupleKanthal>, gt.getCirc("HV")],
	[<metaitem:electric.piston.hv>, <meta_tile_entity:gregtech:hull.hv>, <ore:pipeMediumStainlessSteel>],
	[<ore:wireGtQuadrupleKanthal>, <ore:wireGtQuadrupleKanthal>, gt.getCirc("HV")]]);

recipes.addShaped(<meta_tile_entity:gregtech:extruder.ev>, [
	[<ore:wireGtQuadrupleNichrome>, <ore:wireGtQuadrupleNichrome>, gt.getCirc("EV")],
	[<metaitem:electric.piston.ev>, <meta_tile_entity:gregtech:hull.ev>, <ore:pipeMediumTitanium>],
	[<ore:wireGtQuadrupleNichrome>, <ore:wireGtQuadrupleNichrome>, gt.getCirc("EV")]]);

//conductive iron cables by hand
recipes.addShapeless(<ore:cableGtDoubleConductiveIron>.firstItem, [<ore:cableGtSingleConductiveIron>,<ore:cableGtSingleConductiveIron>]);
recipes.addShapeless(<ore:cableGtQuadrupleConductiveIron>.firstItem, [<ore:cableGtDoubleConductiveIron>,<ore:cableGtDoubleConductiveIron>]);
recipes.addShapeless(<ore:cableGtOctalConductiveIron>.firstItem, [<ore:cableGtQuadrupleConductiveIron>,<ore:cableGtQuadrupleConductiveIron>]);
recipes.addShapeless(<ore:cableGtHexConductiveIron>.firstItem, [<ore:cableGtOctalConductiveIron>,<ore:cableGtOctalConductiveIron>]);

recipes.addShapeless(<ore:cableGtOctalConductiveIron>.firstItem * 2, [<ore:cableGtHexConductiveIron>]);
recipes.addShapeless(<ore:cableGtQuadrupleConductiveIron>.firstItem * 2, [<ore:cableGtOctalConductiveIron>]);
recipes.addShapeless(<ore:cableGtDoubleConductiveIron>.firstItem * 2, [<ore:cableGtQuadrupleConductiveIron>]);
recipes.addShapeless(<ore:cableGtSingleConductiveIron>.firstItem * 2, [<ore:cableGtDoubleConductiveIron>]);


recipes.addShapeless(<ore:dustConductiveIron>.firstItem, [<ore:dustIron>,<minecraft:redstone>]);
recipes.addShapeless(<minecraft:flint>, [gt.mortar, <minecraft:gravel:*>, <minecraft:gravel:*>]);

furnace.addRecipe(<minecraft:iron_nugget> * 3, <ore:dustVanadiumMagnetite>, 0.0);
furnace.addRecipe(<minecraft:iron_nugget> * 2, <ore:dustImpureVanadiumMagnetite>, 0.0);

furnace.remove(<ore:ingotConductiveIron>.firstItem);
furnace.addRecipe(<enderio:item_alloy_ingot:4>, <ore:dustConductiveIron>, 0.0);

recipes.addShaped(<ore:gearIron>.firstItem, [[<ore:stickIron>, <ore:plateIron>, <ore:stickIron>],[<ore:plateIron>, gt.file, <ore:plateIron>], [<ore:stickIron>, <ore:plateIron>, <ore:stickIron>]]);

//Fix Light Gray Spray Can being uncraftable
assembler.findRecipe(8, [<metaitem:spray.empty>, <metaitem:dye.silver>], [null]).remove();
assembler.recipeBuilder()
	.inputs(<metaitem:spray.empty>, <ore:dyeLightGray>)
	.outputs(<metaitem:spray.can.dyes.silver>)
	.duration(200).EUt(8).buildAndRegister();

//Sponge Recipe
recipes.addShaped(<minecraft:sponge>, 
	[[<metaitem:plant_ball>,<metaitem:plant_ball>,<metaitem:plant_ball>],
	[<metaitem:plant_ball>,<inspirations:mulch>,<metaitem:plant_ball>],
	[<metaitem:plant_ball>,<metaitem:plant_ball>,<metaitem:plant_ball>]]);

