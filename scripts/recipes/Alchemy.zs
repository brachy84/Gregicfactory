import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import crafttweaker.item.IItemStack;
import mods.inspirations.Cauldron;  


//Wooden Gear
recipes.remove(<enderio:item_material:9>);
recipes.addShaped(<enderio:item_material:9>, [[null,<minecraft:stick>,null],
	[<minecraft:stick>,null,<minecraft:stick>],
	[null,<minecraft:stick>,null]]);

//Wooden Shears
recipes.remove(<thermalfoundation:tool.shears_wood>);
recipes.addShaped(<thermalfoundation:tool.shears_wood>, [[null,<minecraft:stick>,null],
	[<minecraft:stick>,null,<minecraft:stick>],
	[<enderio:item_material:9>,<minecraft:stick>,null]]);

//Rubber Tree
recipes.addShapeless(<gregtech:sapling>, [<ore:treeSapling>,<metaitem:rubber_drop>]);

//Fertilizer 
recipes.remove(<forestry:fertilizer_compound>);
recipes.addShaped(<forestry:fertilizer_compound> * 8, [[<minecraft:sand>,<ore:gemApatite>,<minecraft:sand>]]);


recipes.remove(<dimensionaledibles:overworld_cake>);
recipes.remove(<dimensionaledibles:nether_cake>);
recipes.remove(<dimensionaledibles:end_cake>);
recipes.remove(<dimensionaledibles:custom_cake>);
recipes.remove(<minecraft:cake>);
recipes.remove(<enderio:item_material:70>);

//Cake Base
recipes.addShaped(<enderio:item_material:70>, [[<minecraft:sugar>, <minecraft:milk_bucket> | <ceramics:clay_bucket:1>, <minecraft:sugar>], [<actuallyadditions:item_misc:4> | <actuallyadditions:item_misc:9>, <actuallyadditions:item_misc:4> | <actuallyadditions:item_misc:9>, <actuallyadditions:item_misc:4> | <actuallyadditions:item_misc:9>]]);

//Cake
recipes.addShaped(<minecraft:cake>, [[<minecraft:milk_bucket> | <ceramics:clay_bucket:1>, <minecraft:milk_bucket> | <ceramics:clay_bucket:1>, <minecraft:milk_bucket> | <ceramics:clay_bucket:1>], [<minecraft:sugar>, <ore:egg>, <minecraft:sugar>], [<actuallyadditions:item_misc:4>,<actuallyadditions:item_misc:4>,<actuallyadditions:item_misc:4>]]);

//Overworld Cake
recipes.addShaped(<dimensionaledibles:overworld_cake>, [[<minecraft:redstone>, <ore:dustGold>, <minecraft:redstone>], [<ore:treeSapling>, <enderio:item_material:70>, <ore:treeSapling>],[<thermalfoundation:material:816>,<minecraft:diamond>,<thermalfoundation:material:816>]]);
<dimensionaledibles:overworld_cake>.addTooltip(format.darkAqua(format.italic("Refill using Oak Saplings.")));

//Nether Cake
recipes.addShaped(<dimensionaledibles:nether_cake>, [[<ore:dustNetherrack>,<ore:dustNetherrack>,<ore:dustNetherrack>], [<minecraft:obsidian>, <enderio:item_material:70>, <minecraft:obsidian>],[<minecraft:soul_sand>,<minecraft:soul_sand>,<minecraft:soul_sand>]]);
<dimensionaledibles:nether_cake>.addTooltip(format.darkAqua(format.italic("Refill using Obsidian.")));

//End Cake
recipes.addShaped(<dimensionaledibles:end_cake>, [[<ore:dustEndstone>,<ore:dustEndstone>,<ore:dustEndstone>], [<minecraft:ender_eye>, <enderio:item_material:70>, <minecraft:ender_eye>],[<ore:plateBlackSteel>,<ore:plateBlackSteel>,<ore:plateBlackSteel>]]);
<dimensionaledibles:end_cake>.addTooltip(format.darkAqua(format.italic("Refill using Eyes of Ender.")));

//Voidworld Cake
recipes.addShaped(<dimensionaledibles:custom_cake>.withTag({dimID: 119, cakeName: "Void World"}), [[<actuallyadditions:item_crystal>,<actuallyadditions:item_crystal:1>,<actuallyadditions:item_crystal:4>], [<forestry:crafting_material>, <enderio:item_material:70>, <forestry:crafting_material>],[<ore:plateAluminium>,<ore:plateAluminium>,<ore:plateAluminium>]]);
<dimensionaledibles:custom_cake>.withTag({dimID: 119, cakeName: "Void World"}).addTooltip(format.darkAqua(format.italic("Refill using Pulsating Dust.")));

mods.jei.JEI.addItem(<dimensionaledibles:custom_cake>.withTag({dimID: 119, cakeName: "Void World"}));



