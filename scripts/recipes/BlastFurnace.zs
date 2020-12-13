import mods.gregtech.recipe.RecipeMap;

//Removed From Furnace Smelting
furnace.remove(<ore:ingotIridium>);
furnace.remove(<ore:ingotTungsten>);
furnace.remove(<ore:ingotBlackSteel>);
furnace.remove(<ore:ingotUranium>);
furnace.remove(<ore:ingotAluminium>);
furnace.remove(<thermalfoundation:material:132>);
furnace.remove(<thermalfoundation:ore:4>);
furnace.remove(<ore:gemQuartzBlack>);
furnace.remove(<ore:ingotDraconium>);
furnace.remove(<ore:ingotMithril>);
furnace.remove(<appliedenergistics2:material:5>);
furnace.remove(<thermalfoundation:material:167>, <gregtech:meta_item_1:2963>); #enderium
furnace.remove(<thermalfoundation:material:166>, <gregtech:meta_item_1:2506>); #lumium
furnace.remove(<thermalfoundation:material:165>, <gregtech:meta_item_1:2507>); #signalum

//  Tier 0										Steel, Silicon
//	Tier 1	[1000 temp]		120		Copper		Black Steel, Annealed Copper
//	Tier 2	[1500 temp]		120		Copper		Aluminium, Kanthal, Energetic Alloy, Neodymium
//	Tier 3	[1700 temp]		120		Copper		Stainless Steel, Nickel Zinc Ferrite, Ilmenite, Silicon Boule, Vibrant Alloy, Red Steel, Nickel Zinc Ferrite, Palladium, Modularium
//	Tier 4	[2100 temp]		480		Kanthal		Titanium, Nichrome, Yttrium
//	Tier 5	[2700 temp]		480		Kanthal		Tungstencarbide, Tungstensteel, Glowstone Doped Boule
//	Tier 6	[3000 temp]		480		Nichrome	Tungsten, Niobium
//	Tier 7	[3600 temp]		480		Nichrome	Vanadium, 
//	Tier 8	[4000 temp]		2000	TunSteel	Signalum, Vanadium-Gallium
//	Tier 9	[4500 temp]		2000	TunSteel	Lumium, HSSG, Iridium, Niobium-Titanium
//	Tier 10	[5000 temp]		8000	HSSG		HSSE, Osmium, Crystal Chips
//	Tier 11	[5400 temp]		8000	HSSG		Naquadah, Naquadah Doped Boule
//	Tier 12	[6000 temp]		8000	Naq			Osmiridium, 
//	Tier 13	[6400 temp]		8000	Naq			Enderium, 
//	Tier 14	[6800 temp]		32000	Naq			Draconium
//	Tier 15	[7200 temp]		32000	Naq			Naquadah Alloy, 
//	Tier 16	[8000 temp]		32000	NaqAlloy	HSSS, 
//	Tier 17	[8600 temp]		32000	NaqAlloy	Dark Soularium,  
//	Tier 18	[8800 temp]		130000	NaqAlloy	
//	Tier 19	[9000 temp]		250000	SuperCon	 
//	Tier 20	[9700 temp]		500000	Fusion		Neutronium Nugget, 

//Steel [tier 0]
blast_furnace.findRecipe(120, [<ore:dustSteel>.firstItem], [null]).remove();	
blast_furnace.findRecipe(120, [<minecraft:iron_ingot>], [<liquid:oxygen> * 1000]).remove();	
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:10140>], [<liquid:oxygen> * 1000]).remove();	
blast_furnace.findRecipe(120, [<ore:ingotWroughtIron>.firstItem], [<liquid:oxygen> * 1000]).remove();	

//Silcon [tier 0]
blast_furnace.findRecipe(120, [<ore:dustSilicon>.firstItem, gt.getCirc(0)], [null]).remove();	
furnace.addRecipe(<ore:ingotSilicon>.firstItem, <ore:dustSilicon>.firstItem, 0.0);

//Black Steel [tier 1]
blast_furnace.findRecipe(120, [<ore:dustBlackSteel>.firstItem], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:dustBlackSteel>]).outputs([<ore:ingotBlackSteel>.firstItem]).property("temperature", 1000).duration(200).EUt(120).buildAndRegister();

//Annealed Copper [tier 1]
blast_furnace.findRecipe(120, [<ore:dustCopper>.firstItem], [<liquid:oxygen> * 1000]).remove();	
blast_furnace.findRecipe(120, [<ore:ingotCopper>.firstItem], [<liquid:oxygen> * 1000]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:ingotCopper>]).fluidInputs([<liquid:oxygen> * 1000]).outputs([<ore:ingotAnnealedCopper>.firstItem]).property("temperature", 1000).duration(200).EUt(120).buildAndRegister();

//HSLA - unused
//blast_furnace.recipeBuilder().inputs([<ore:ingotSteel>]).fluidInputs([<liquid:oxygen> * 1000]).outputs([<nuclearcraft:alloy:15>]).property("temperature", 1000).duration(200).EUt(120).buildAndRegister();


//Kanthal [tier 2]
blast_furnace.findRecipe(120, [<ore:dustKanthal>.firstItem], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:dustKanthal>]).outputs([<ore:ingotHotKanthal>.firstItem]).property("temperature", 1500).duration(200).EUt(120).buildAndRegister();

//Aluminium [tier 2]
blast_furnace.findRecipe(120, [<ore:dustAluminium>.firstItem], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:dustAluminium>]).outputs([<ore:ingotAluminium>.firstItem]).property("temperature", 1500).duration(400).EUt(120).buildAndRegister();

//Neodymium [tier 2]
blast_furnace.findRecipe(120, [<ore:dustNeodymium>.firstItem], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:dustNeodymium>]).outputs([<ore:ingotNeodymium>.firstItem]).property("temperature", 1500).duration(400).EUt(120).buildAndRegister();

//Energetic Alloy [tier 2]
blast_furnace.recipeBuilder().inputs([<ore:ingotGold>,<nuclearcraft:compound:2>]).outputs([<enderio:item_alloy_ingot:1>]).property("temperature", 1500).duration(400).EUt(120).buildAndRegister();

//Energetic Silver [tier 2]
blast_furnace.recipeBuilder().inputs([<ore:ingotSilver>,<nuclearcraft:compound:2>]).outputs([<enderio:item_alloy_endergy_ingot:5>]).property("temperature", 1500).duration(400).EUt(120).buildAndRegister();

//Vibrant Alloy [tier 3]
blast_furnace.recipeBuilder().inputs([<enderio:item_alloy_ingot:1>,<minecraft:ender_pearl>]).outputs([<enderio:item_alloy_ingot:2>]).property("temperature", 1700).duration(600).EUt(120).buildAndRegister();

//Silicon Boule [tier 3]
//blast_furnace.findRecipe(120, [<ore:dustSilicon>.firstItem * 32, <ore:dustTinyGallium>.firstItem, gt.getCirc(1)], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:dustSilicon> * 32, <ore:dustTinyGallium>]).outputs([<metaitem:boule.silicon>]).property("temperature", 1700).duration(6000).EUt(120).buildAndRegister();

//Red Steel [tier 3]
blast_furnace.findRecipe(120, [<ore:dustRedSteel>.firstItem], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:dustRedSteel>]).outputs([<ore:ingotRedSteel>.firstItem]).property("temperature", 1700).duration(600).EUt(120).buildAndRegister();

//Nickel Zinc Ferrite [tier 3]
furnace.addRecipe(<ore:ingotNickelZincFerrite>.firstItem, <ore:dustNickelZincFerrite>, 0.0);
blast_furnace.findRecipe(120, [<ore:dustFerriteMixture>.firstItem], [<liquid:oxygen> * 2000]).remove();	
blast_furnace.findRecipe(120, [<ore:dustNickelZincFerrite>.firstItem], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:dustFerriteMixture>]).fluidInputs([<liquid:oxygen> * 2000]).outputs([<ore:ingotNickelZincFerrite>.firstItem]).property("temperature", 1700).duration(600).EUt(120).buildAndRegister();

//Stainless Steel [tier 3]
blast_furnace.findRecipe(120, [<ore:dustStainlessSteel>.firstItem], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:dustStainlessSteel>]).outputs([<ore:ingotStainlessSteel>.firstItem]).property("temperature", 1700).duration(600).EUt(120).buildAndRegister();

//Ilmenite [tier 3]
blast_furnace.findRecipe(500, [<ore:dustIlmenite>.firstItem,<ore:dustCarbon>.firstItem], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:dustIlmenite>,<ore:dustCarbon>]).outputs([<ore:nuggetWroughtIron>.firstItem * 4, <ore:dustTinyRutile>.firstItem * 5]).property("temperature", 1700).duration(600).EUt(120).buildAndRegister();

//Palladium [tier 3]
blast_furnace.findRecipe(120, [<ore:dustPalladium>.firstItem], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:dustPalladium>]).outputs([<ore:ingotPalladium>.firstItem]).property("temperature", 1700).duration(600).EUt(120).buildAndRegister();

//Chrome [tier 3]
blast_furnace.findRecipe(120, [<ore:dustChrome>.firstItem], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:dustChrome>]).outputs([<ore:ingotChrome>.firstItem]).property("temperature", 1700).duration(600).EUt(120).buildAndRegister();

//Modularium [tier 3]
//recipes.remove(<modularmachinery:itemmodularium>);
//blast_furnace.recipeBuilder().inputs([<ore:dustSteel>,<nuclearcraft:compound:2>]).fluidInputs([<liquid:deuterium>*50]).outputs([<modularmachinery:itemmodularium>]).property("temperature", 1700).duration(600).EUt(120).buildAndRegister();
//blast_furnace.recipeBuilder().inputs([<ore:ingotSteel>,<nuclearcraft:compound:2>]).fluidInputs([<liquid:deuterium>*50]).outputs([<modularmachinery:itemmodularium>]).property("temperature", 1700).duration(600).EUt(120).buildAndRegister();

//Nichrome [tier 4]
blast_furnace.findRecipe(480, [<ore:ingotNickel>.firstItem * 4,<ore:ingotChrome>.firstItem], [null]).remove();
blast_furnace.findRecipe(120, [<ore:dustNichrome>.firstItem], [null]).remove();	
furnace.addRecipe(<ore:ingotNichrome>.firstItem, <ore:dustNichrome>, 0.0);
blast_furnace.recipeBuilder().inputs([<ore:ingotNickel> * 4,<ore:ingotChrome>]).outputs([<ore:ingotHotNichrome>.firstItem * 5]).property("temperature", 2100).duration(800).EUt(480).buildAndRegister();

//Titanium [tier 4]
blast_furnace.findRecipe(480, [<ore:dustMagnesium>.firstItem * 2], [<liquid:titanium_tetrachloride> * 1000]).remove();
blast_furnace.findRecipe(120, [<ore:dustTitanium>.firstItem], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:dustMagnesium> * 2]).fluidInputs([<liquid:titanium_tetrachloride> * 1000]).outputs([<ore:ingotHotTitanium>.firstItem,<ore:dustMagnesiumChloride>.firstItem * 6]).property("temperature", 2100).duration(800).EUt(480).buildAndRegister();

//Yttrium [tier 4]
blast_furnace.findRecipe(120, [<ore:dustYttrium>.firstItem], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:dustYttrium>]).outputs([<ore:ingotYttrium>.firstItem]).property("temperature", 2100).duration(800).EUt(480).buildAndRegister();

//Tungstencarbide [tier 5]
blast_furnace.findRecipe(120, [<ore:dustTungstenCarbide>.firstItem], [null]).remove();	
blast_furnace.findRecipe(480, [<ore:ingotTungsten>.firstItem,<ore:dustCarbon>.firstItem], [null]).remove();
blast_furnace.recipeBuilder().inputs([<ore:ingotTungsten>,<ore:dustCarbon>]).outputs([<ore:ingotHotTungstenCarbide>.firstItem]).property("temperature", 2700).duration(500).EUt(480).buildAndRegister();	
furnace.addRecipe(<ore:ingotTungstenCarbide>.firstItem, <ore:dustTungstenCarbide>, 0.0);

//Tungstensteel [tier 5]
blast_furnace.findRecipe(120, [<ore:dustTungstenSteel>.firstItem], [null]).remove();	
blast_furnace.findRecipe(480, [<ore:ingotTungsten>.firstItem,<ore:ingotSteel>.firstItem], [null]).remove();
furnace.addRecipe(<ore:ingotTungstenSteel>.firstItem, <ore:dustTungstenSteel>, 0.0);
blast_furnace.recipeBuilder().inputs([<ore:ingotTungsten>,<ore:ingotSteel>]).outputs([<ore:ingotHotTungstenSteel>.firstItem * 2]).property("temperature", 2700).duration(1000).EUt(480).buildAndRegister();	

//Glowstone Doped Silicon Boule [tier 5]
blast_furnace.findRecipe(480, [<ore:dustSilicon>.firstItem * 64, <minecraft:glowstone_dust> * 8, gt.getCirc(1)], [<liquid:nitrogen> * 8000]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:dustSilicon> * 64, <minecraft:glowstone_dust> * 8]).fluidInputs([<liquid:argon> * 8000]).outputs([<metaitem:boule.glowstone>]).property("temperature", 2700).duration(3000).EUt(480).buildAndRegister();

//Tungsten [tier 6]
blast_furnace.findRecipe(120, [<ore:dustTungsten>.firstItem], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:dustTungsten>]).outputs([<ore:ingotHotTungsten>.firstItem]).property("temperature", 3000).duration(600).EUt(480).buildAndRegister();	

//Niobium [tier 6]
blast_furnace.findRecipe(120, [<ore:dustNiobium>.firstItem], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:dustNiobium>]).outputs([<ore:ingotHotNiobium>.firstItem]).property("temperature", 3000).duration(600).EUt(480).buildAndRegister();	

//Signalum [tier 8]
recipes.remove(<thermalfoundation:material:101>);
recipes.addShapeless(<thermalfoundation:material:101> * 4, [  // Mixer Recipe ???????????
	<ore:dustAnnealedCopper>,<ore:dustAnnealedCopper>,<ore:dustAnnealedCopper>,
	<ore:dustAnnealedCopper>,<ore:dustArdite>,<ore:dustArdite>,
	<ore:dustRedAlloy>,<ore:dustRedAlloy>,<thermalfoundation:material:893>]);
blast_furnace.recipeBuilder().inputs([<thermalfoundation:material:101>]).fluidInputs([<liquid:mana>*250]).outputs([<thermalfoundation:material:165>]).property("temperature", 4000).duration(12800).EUt(120).buildAndRegister();

//Vanadium-Gallium [tier 8]
blast_furnace.findRecipe(480, [<ore:ingotVanadium>.firstItem * 3, <ore:ingotGallium>.firstItem], [null]).remove();
blast_furnace.findRecipe(120, [<ore:dustVanadiumGallium>.firstItem], [null]).remove();
furnace.addRecipe(<ore:ingotVanadiumGallium>.firstItem, <ore:dustVanadiumGallium>, 0.0);		
blast_furnace.recipeBuilder().inputs([<ore:ingotVanadium> * 3, <ore:ingotGallium>]).outputs([<ore:ingotHotVanadiumGallium>.firstItem * 4]).property("temperature", 4000).duration(10000).EUt(120).buildAndRegister();
	
//Lumium [tier 9]
recipes.remove(<thermalfoundation:material:102>);
blast_furnace.recipeBuilder().inputs([<thermalfoundation:material:102>]).fluidInputs([<liquid:mana>*250]).outputs([<thermalfoundation:material:166>]).property("temperature", 4500).duration(14400).EUt(120).buildAndRegister();
recipes.addShapeless(<thermalfoundation:material:102> * 4, [ // Mixer Recipe??
	<ore:dustTinAlloy>, <ore:dustTinAlloy>, <ore:dustTinAlloy>, 
	<ore:dustTinAlloy>, <ore:dustSterlingSilver>, <ore:dustSterlingSilver>,
	<extendedcrafting:material:7>,<extendedcrafting:material:7>,<thermalfoundation:material:894>]);

//Niobium-Titanium [tier 9]
blast_furnace.findRecipe(480, [<ore:ingotNiobium>.firstItem,<ore:ingotTitanium>.firstItem], [null]).remove();
blast_furnace.findRecipe(120, [<ore:dustNiobiumTitanium>.firstItem], [null]).remove();	
furnace.addRecipe(<ore:ingotNiobiumTitanium>.firstItem, <ore:dustNiobiumTitanium>, 0.0);
blast_furnace.recipeBuilder().inputs([<ore:ingotNiobium>,<ore:ingotTitanium>]).outputs([<ore:ingotHotNiobiumTitanium>.firstItem * 2]).property("temperature", 4500).duration(7000).EUt(120).buildAndRegister();	

//Naquadah [tier 11] // Use Gregicality Ore processing
blast_furnace.findRecipe(120, [<ore:dustNaquadah>.firstItem], [null]).remove();	
freezer.findRecipe(120, [<ore:ingotHotNaquadah>.firstItem], [null]).remove();
mods.jei.JEI.removeAndHide(<ore:ingotHotNaquadah>.firstItem);	
furnace.addRecipe(<ore:ingotNaquadah>.firstItem, <ore:ingotNaquadah>, 0.0);

//Enriched Naquadah
//FIXME: [ERROR] Invalid amount of recipe inputs. Actual: 7. Should be between 1 and 3 inclusive. // blast_furnace.recipeBuilder().inputs([<ore:ingotNaquadah>,<enderio:item_material:20>,<enderio:item_material:37>,<enderio:item_material:36>,<enderio:item_material:35>,<enderio:item_material:34>,<contenttweaker:grainsofinnocence>]).fluidInputs([<liquid:ender_distillation> * 1000]).outputs([<ore:dustNaquadahEnriched>]).property("temperature", 5400).duration(3600).EUt(120).buildAndRegister();

//Naquadah Doped Boule [tier 11]
blast_furnace.findRecipe(1920, [<ore:blockSilicon>.firstItem * 9, <ore:ingotNaquadah>.firstItem, gt.getCirc(1)], [<liquid:argon> * 8000]).remove();	
blast_furnace.recipeBuilder().inputs([<ore:blockSilicon> * 9, <ore:ingotNaquadah>]).fluidInputs([<liquid:argon> * 16000]).outputs([<metaitem:boule.naquadah>]).property("temperature", 5400).duration(1440).EUt(8000).buildAndRegister();
	
//Osiridium [tier 12]		DISABLED IN FAVOR OF VANILLA RECIPE
//blast_furnace.findRecipe(1920, [<gregtech:meta_item_1:10032> * 3, <gregtech:meta_item_1:10047>], [<liquid:helium>*1000]).remove();
blast_furnace.findRecipe(120, [<ore:dustOsmiridium>.firstItem], [null]).remove();		
furnace.addRecipe(<ore:ingotOsmiridium>.firstItem, <ore:dustOsmiridium>, 0.0);
//blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:10032> * 3, <gregtech:meta_item_1:10047>]).fluidInputs([<liquid:helium>*1000]).outputs([<gregtech:meta_item_1:11207> * 4]).property("temperature", 6000).duration(4400).EUt(8000).buildAndRegister();	
	
//Enderium [tier 13]
recipes.remove(<thermalfoundation:material:103>);
recipes.addShapeless(<thermalfoundation:material:103> * 4, [ // Mixer Recipe ?????????????????????
	<ore:dustLead>,<ore:dustLead>,<ore:dustLead>,
	<ore:dustLead>,<ore:dustPlatinum>,<ore:dustPlatinum>,
	<ore:dustBlueSteel>,<ore:dustOsmium>,<thermalfoundation:material:895>]);
blast_furnace.recipeBuilder().inputs([<thermalfoundation:material:103>]).fluidInputs([<liquid:mana>*250]).outputs([<thermalfoundation:material:167>]).property("temperature", 6400).duration(20800).EUt(120).buildAndRegister();

//Draconium [tier 14]
blast_furnace.recipeBuilder().inputs([<draconicevolution:draconium_dust>]).fluidInputs([<liquid:nitro_fuel>*2000]).outputs(<contenttweaker:hotdraconiumingot>).property("temperature", 6800).duration(10000).EUt(120).buildAndRegister();
blast_furnace.recipeBuilder().inputs([<armorplus:material:3> * 4]).fluidInputs([<liquid:nitro_fuel>*8000]).outputs([<contenttweaker:hotdraconiumingot> * 2]).property("temperature", 6800).duration(20000).EUt(120).buildAndRegister();

//Naquadah Alloy [tier 15]		DISABLED IN FAVOR OF VANILLA RECIPE
blast_furnace.findRecipe(120, [<ore:dustNaquadahAlloy>.firstItem], [null]).remove();		
furnace.addRecipe(<ore:ingotNaquadahAlloy>.firstItem, <ore:dustNaquadahAlloy>, 0.0);

//Dark Soularium [tier 18]
blast_furnace.recipeBuilder().inputs([<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:7>]).fluidInputs([<liquid:tritium>*1000]).outputs([<simplyjetpacks:metaitemmods:3>]).property("temperature", 8600).duration(1200).EUt(32000).buildAndRegister();

//Fluxed Electrum
blast_furnace.recipeBuilder().inputs([<redstonearsenal:material>]).outputs([<redstonearsenal:material:32>]).property("temperature", 1000).duration(300).EUt(120).buildAndRegister();



//EnderIO Alloys
alloy.recipeBuilder().inputs([<minecraft:iron_ingot>,<minecraft:redstone>]).outputs([<enderio:item_alloy_ingot:4>]).duration(150).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<minecraft:iron_ingot>,<forestry:crafting_material>]).outputs([<enderio:item_alloy_ingot:5>]).duration(150).EUt(16).buildAndRegister();


//Removed
blast_furnace.findRecipe(120, [<ore:dustNaquadria>.firstItem], [null]).remove();		//Naquadriah
furnace.addRecipe(<ore:ingotNaquadria>.firstItem, <ore:dustNaquadria>, 0.0);



