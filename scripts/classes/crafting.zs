#priority 3100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

zenClass Crafting {
    zenConstructor() {}

    //CRAFTING
    function process(map as IIngredient[][][IItemStack]) {
		for item, itemRecipes in map {
			for recipe in itemRecipes {
				recipes.addShapeless(item, recipe);
			}
		}
	}

    function process(map as IIngredient[][][][IItemStack], isMirrored as bool) {
		for item, itemRecipes in map {
			for recipe in itemRecipes {
				if (isMirrored) {
					recipes.addShapedMirrored(item, recipe);
				} else {
					recipes.addShaped(item, recipe);
				}
			}
		}
	}

    function removeRecipes(removals as IItemStack[]) {
		for toRemove in removals {
			recipes.remove(toRemove);
		}
	}
	function removeRecipes(removals as IItemStack[], nbt as bool) {
		for toRemove in removals {
			recipes.remove(toRemove, nbt);
		}
	}

    //FURNACE
    function removeFurnace(removals as IIngredient[]) {
		for toRemove in removals {
			furnace.remove(toRemove);
		}
	}
	function removeFurnace(removals as IIngredient[IIngredient]) {
		for input, output in removals {
			furnace.remove(input, output);
		}
	}

	/*
	Converts a text representation of a crafting grid recipe into an array of
	ingredients.

	Example:
	(3, [[null,null,null],
		[null,null,null],
		[null,null,null]], <minecraft:furnace>, ["AAA",
												"A A",
												"AAA"], { A : <minecraft:stone> })
	=>

	[[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
	[<minecraft:stone>,        null,       <minecraft:stone>],
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]
	*/
	function textToIngredients(ingredients as IIngredient[][],
							output as IItemStack,
							recipe as string[],
							replacements as IIngredient[string]) as IIngredient[][] {

		for i, str in recipe {
			for j in 0 .. str.length {
				var item = str[j];
				if " " != item { // blanks are nulls, ignore them
					ingredients[i][j] = replacements[item];
				}
			}
		}

		return ingredients;
	}

	/* Same as above, but for standard 3x3 shapeless recipes. */
	function makeShapeless3(name as string,
							output as IItemStack,
							recipe as string[],
							replacements as IIngredient[string]) {

		var ingredients = [null,null,null,
						null,null,null,
						null,null,null] as IIngredient[];

		for i, str in recipe {
			for j in 0 .. str.length {
				var item = str[j];
				if " " != item { // blanks are nulls, ignore them
					ingredients[str.length*i+j] = replacements[item];
				}
			}
		}

		recipes.addShapeless(name, output, ingredients);
	}

	function makeShaped(name as string,
						output as IItemStack,
						recipe as string[],
						replacements as IIngredient[string]) {

		var ingredients =
			[[null,null,null],
			[null,null,null],
			[null,null,null]] as IIngredient[][];

		recipes.addShaped(name, output,
			textToIngredients(ingredients, output, recipe, replacements));
	}

	function makeExtremeRecipe5(output as IItemStack,
								recipe as string[],
								replacements as IIngredient[string]) {

		var ingredients =
			[[null,null,null,null,null],
			[null,null,null,null,null],
			[null,null,null,null,null],
			[null,null,null,null,null],
			[null,null,null,null,null]] as IIngredient[][];

		mods.extendedcrafting.TableCrafting.addShaped(output,
			textToIngredients(ingredients, output, recipe, replacements));
	}

	function makeExtremeRecipe7(output as IItemStack,
								recipe as string[],
								replacements as IIngredient[string]) {

		var ingredients =
			[[null,null,null,null,null,null,null],
			[null,null,null,null,null,null,null],
			[null,null,null,null,null,null,null],
			[null,null,null,null,null,null,null],
			[null,null,null,null,null,null,null],
			[null,null,null,null,null,null,null],
			[null,null,null,null,null,null,null]] as IIngredient[][];

		mods.extendedcrafting.TableCrafting.addShaped(output,
			textToIngredients(ingredients, output, recipe, replacements));
	}

	function makeExtremeRecipe9(output as IItemStack,
								recipe as string[],
								replacements as IIngredient[string]) {

		var ingredients =
			[[null,null,null,null,null,null,null,null,null],
			[null,null,null,null,null,null,null,null,null],
			[null,null,null,null,null,null,null,null,null],
			[null,null,null,null,null,null,null,null,null],
			[null,null,null,null,null,null,null,null,null],
			[null,null,null,null,null,null,null,null,null],
			[null,null,null,null,null,null,null,null,null],
			[null,null,null,null,null,null,null,null,null],
			[null,null,null,null,null,null,null,null,null]] as IIngredient[][];

		mods.extendedcrafting.TableCrafting.addShaped(output,
			textToIngredients(ingredients, output, recipe, replacements));
	}

}