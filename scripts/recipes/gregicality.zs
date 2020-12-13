
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import mods.gtadditions.recipe.Utils;
import mods.gregtech.recipe.RecipeMap;

// easier Coil recipe
recipes.addShaped(<gregtech:wire_coil:0>, [
    [<ore:wireGtDoubleCupronickel>, <ore:wireGtDoubleCupronickel>, <ore:wireGtDoubleCupronickel>],
    [<ore:wireGtDoubleCupronickel>, gt.wrench, <ore:wireGtDoubleCupronickel>],
    [<ore:wireGtDoubleCupronickel>, <ore:wireGtDoubleCupronickel>, <ore:wireGtDoubleCupronickel>],
]);

// MV Superconductor For Refinded Computer
gt.removeByOutput(gt.mixer, [<ore:dustMvSuperconductorBase>.firstItem]);
gt.removeByOutput(gt.large_mixer as RecipeMap, [<ore:dustMvSuperconductorBase>.firstItem]);
gt.large_mixer.recipeBuilder()
    .inputs([<ore:dustCadmium> * 4, <ore:dustMagnesium>, <ore:dustVibrantAlloy> * 4])
    .fluidInputs([<liquid:oxygen> * 3000])
    .outputs([<ore:dustMvSuperconductorBase>.firstItem * 12])
    .EUt(120).duration(sec(60))
    .dupeForSmall()
    .buildAndRegister();

// HV Superconductor For Micro Computer
gt.removeByOutput(gt.mixer, [<ore:dustHvSuperconductorBase>.firstItem]);
gt.removeByOutput(gt.large_mixer as RecipeMap, [<ore:dustHvSuperconductorBase>.firstItem]);
gt.large_mixer.recipeBuilder()
    .inputs([<ore:dustCopper> * 7, <ore:dustBarium> * 6, <ore:dustTitanium>, <ore:dustEndSteel> * 16])
    .fluidInputs([<liquid:oxygen> * 10000])
    .outputs([<ore:dustHvSuperconductorBase>.firstItem * 40])
    .EUt(120).duration(sec(120))
    .dupeForSmall()
    .buildAndRegister();

// EV Superconductor for Nano Computer
gt.removeByOutput(gt.mixer, [<ore:dustEvSuperconductorBase>.firstItem]);
gt.removeByOutput(gt.large_mixer as RecipeMap, [<ore:dustEvSuperconductorBase>.firstItem]);
gt.large_mixer.recipeBuilder()
    .inputs([<ore:dustPlatinum> * 3, <ore:dustUraniumRadioactive>, <ore:dustLumium> * 4])
    .outputs([<ore:dustEvSuperconductorBase>.firstItem * 8])
    .EUt(480).duration(sec(40))
    .dupeForSmall()
    .buildAndRegister();

// IV Superconductor for Quantum Computer
gt.removeByOutput(gt.mixer, [<ore:dustIvSuperconductorBase>.firstItem]);
gt.removeByOutput(gt.large_mixer as RecipeMap, [<ore:dustIvSuperconductorBase>.firstItem]);
gt.large_mixer.recipeBuilder()
    .inputs([<ore:dustIndium> * 3, <ore:dustVanadium>, <ore:dustSignalum> * 4])
    .outputs([<ore:dustIvSuperconductorBase>.firstItem * 8])
    .EUt(480).duration(sec(40))
    .dupeForSmall()
    .buildAndRegister();


// LuV Superconductor for Crystal
gt.removeByOutput(gt.mixer, [<ore:dustLuvSuperconductorBase>.firstItem]);
gt.removeByOutput(gt.large_mixer as RecipeMap, [<ore:dustLuvSuperconductorBase>.firstItem]);
gt.large_mixer.recipeBuilder()
    .inputs([<ore:dustIndium> * 4, <ore:dustBarium> * 2, <ore:dustTitanium>, <ore:dustEnderium> * 12])
    .fluidInputs([<liquid:oxygen> * 10000])
    .outputs([<ore:dustLuvSuperconductorBase>.firstItem * 29])
    .dupeForSmall()
    .EUt(1920).duration(sec(120))
    .buildAndRegister();

// ZPM Superconductor for Crystal
gt.removeByOutput(gt.mixer, [<ore:dustZpmSuperconductorBase>.firstItem]);
gt.removeByOutput(gt.large_mixer as RecipeMap, [<ore:dustZpmSuperconductorBase>.firstItem]);
gt.large_mixer.recipeBuilder()
    .inputs([<ore:dustIndium> * 2, <ore:dustPalladium> * 6, <ore:dustOsmium>, <ore:dustNaquadah> * 4, <ore:dustDraconium> * 7])
    .outputs([<ore:dustZpmSuperconductorBase>.firstItem * 20])
    .EUt(1920).duration(sec(40))
    .buildAndRegister();
