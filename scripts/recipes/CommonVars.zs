#priority 999
// preprocessor directive to load this file first so others have access to the definitions

/**
 * Global definitions for commonly referenced values.
 * This avoids any inconsistencies that may arise from different definitions in different files.
 */

import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.recipes.IRecipeAction;

global alloy            as RecipeMap = RecipeMap.getByName("alloy_smelter");
global assembler        as RecipeMap = RecipeMap.getByName("assembler");
global assembly_line    as RecipeMap = RecipeMap.getByName("assembly_line");
global attractor        as RecipeMap = RecipeMap.getByName("attractor");
global autoclave        as RecipeMap = RecipeMap.getByName("autoclave");
global blast_furnace    as RecipeMap = RecipeMap.getByName("blast_furnace");
global brewer           as RecipeMap = RecipeMap.getByName("brewer");
global canner           as RecipeMap = RecipeMap.getByName("canner");
global centrifuge       as RecipeMap = RecipeMap.getByName("centrifuge");
global chemical_bath    as RecipeMap = RecipeMap.getByName("chemical_bath");
global chemreactor      as RecipeMap = RecipeMap.getByName("chemical_reactor");
global circuit_assembler as RecipeMap = RecipeMap.getByName("circuit_assembler");
global compressor       as RecipeMap = RecipeMap.getByName("compressor");
global distillery       as RecipeMap = RecipeMap.getByName("distillery");
global electrolyzer     as RecipeMap = RecipeMap.getByName("electrolyzer");
global engraver         as RecipeMap = RecipeMap.getByName("laser_engraver");
global extractor        as RecipeMap = RecipeMap.getByName("extractor");
global extruder         as RecipeMap = RecipeMap.getByName("extruder");
global fermenter        as RecipeMap = RecipeMap.getByName("fermenter");
global fluid_canner     as RecipeMap = RecipeMap.getByName("fluid_canner");
global fluid_extractor  as RecipeMap = RecipeMap.getByName("fluid_extractor");
global fluidextractor   as RecipeMap = RecipeMap.getByName("fluid_extractor");
global forming          as RecipeMap = RecipeMap.getByName("forming_press");
global freezer          as RecipeMap = RecipeMap.getByName("vacuum_freezer");
global fusion_reactor   as RecipeMap = RecipeMap.getByName("fusion_reactor");
global hammer           as RecipeMap = RecipeMap.getByName("forge_hammer");
global implosion        as RecipeMap = RecipeMap.getByName("implosion_compressor");
global lathe            as RecipeMap = RecipeMap.getByName("lathe");
global macerator        as RecipeMap = RecipeMap.getByName("macerator");
global mixer            as RecipeMap = RecipeMap.getByName("mixer");
global pyro             as RecipeMap = RecipeMap.getByName("pyro");
global reactor          as RecipeMap = RecipeMap.getByName("chemical_reactor");
global saw              as RecipeMap = RecipeMap.getByName("cutting_saw");
global sifter           as RecipeMap = RecipeMap.getByName("sifter");
global solidifier       as RecipeMap = RecipeMap.getByName("fluid_solidifier");
global thermal_sep      as RecipeMap = RecipeMap.getByName("thermal_centrifuge");
global tower            as RecipeMap = RecipeMap.getByName("distillation_tower");
global wiremill         as RecipeMap = RecipeMap.getByName("wiremill");

/* CofH Core Items - recipe ingredient defs */

// Portable tanks
global basictank      as IItemStack = <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Level: 0 as byte});
global hardenedtank   as IItemStack = <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Level: 1 as byte});
global reinforcedtank as IItemStack = <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Level: 2 as byte});
global signalumtank   as IItemStack = <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Level: 3 as byte});
global resonanttank   as IItemStack = <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Level: 4 as byte});

// Energy Cells
global basiccell      as IItemStack = <thermalexpansion:cell>.withTag({Creative: 0 as byte, Level: 0 as byte});
global hardenedcell   as IItemStack = <thermalexpansion:cell>.withTag({Creative: 0 as byte, Level: 1 as byte});
global reinforcedcell as IItemStack = <thermalexpansion:cell>.withTag({Creative: 0 as byte, Level: 2 as byte});
global signalumcell   as IItemStack = <thermalexpansion:cell>.withTag({Creative: 0 as byte, Level: 3 as byte});
global resonantcell   as IItemStack = <thermalexpansion:cell>.withTag({Creative: 0 as byte, Level: 4 as byte});

// Compressed capacitors
global compressedoctadiccap       as IItemStack = <contenttweaker:compressedoctadiccapacitor>.withTag({display: {Name: "Compressed Octadic RF Capacitor", Lore: ["This is what is known as a Compressed Octadic Capacitor.", "Or, you could just call this an Octadic Capacitor Two.", "Can be inserted into EnderIO machines.", "Level: 4"]}, eiocap: {level: 4 as float}});
global doublecompressedoctadiccap as IItemStack = <contenttweaker:doublecompressedoctadiccapacitor>.withTag({display: {Name: "Double Compressed Octadic RF Capacitor", Lore: ["AND THIS IS TO GO EVEN FURTHER BEYOND!", "Can be inserted into EnderIO machines.", "Level: 9.001", "Just kidding, it's only 5."]}, eiocap: {level: 5 as float}});

// EIO Jetpacks
global conductiveironjetpack  as IItemStack = <simplyjetpacks:itemjetpack:1>.withTag({Energy: 0, JetpackParticleType: 0});
global electricalsteeljetpack as IItemStack = <simplyjetpacks:itemjetpack:2>.withTag({Energy: 0, JetpackParticleType: 0});
global energeticjetpack       as IItemStack = <simplyjetpacks:itemjetpack:3>.withTag({Energy: 0, JetpackParticleType: 0});
global vibrantjetpack         as IItemStack = <simplyjetpacks:itemjetpack:4>.withTag({Energy: 0, JetpackParticleType: 0});
global armoredconductiveironjetpack  as IItemStack = <simplyjetpacks:itemjetpack:5>.withTag({Energy: 0, JetpackParticleType: 0});
global armoredelectricalsteeljetpack as IItemStack = <simplyjetpacks:itemjetpack:6>.withTag({Energy: 0, JetpackParticleType: 0});
global armoredenergeticjetpack       as IItemStack = <simplyjetpacks:itemjetpack:7>.withTag({Energy: 0, JetpackParticleType: 0});
global armoredvibrantjetpack         as IItemStack = <simplyjetpacks:itemjetpack:8>.withTag({Energy: 0, JetpackParticleType: 0});
global darksoulariumjetplate  as IItemStack = <simplyjetpacks:itemjetpack:9>.withTag({Energy: 0, JetpackParticleType: 0});

// TE Jetpacks
global leadstonejetpack       as IItemStack  = <simplyjetpacks:itemjetpack:10>.withTag({Energy: 0, JetpackParticleType: 0});
global hardenedjetpack        as IItemStack  = <simplyjetpacks:itemjetpack:11>.withTag({Energy: 0, JetpackParticleType: 0});
global reinforcedjetpack      as IItemStack  = <simplyjetpacks:itemjetpack:12>.withTag({Energy: 0, JetpackParticleType: 0});
global resonantjetpack        as IItemStack  = <simplyjetpacks:itemjetpack:13>.withTag({Energy: 0, JetpackParticleType: 0});
global armoredleadstonejetpack  as IItemStack  = <simplyjetpacks:itemjetpack:14>.withTag({Energy: 0, JetpackParticleType: 0});
global armoredhardenedjetpack   as IItemStack  = <simplyjetpacks:itemjetpack:15>.withTag({Energy: 0, JetpackParticleType: 0});
global armoredreinforcedjetpack as IItemStack  = <simplyjetpacks:itemjetpack:16>.withTag({Energy: 0, JetpackParticleType: 0});
global armoredresonantjetpack   as IItemStack  = <simplyjetpacks:itemjetpack:17>.withTag({Energy: 0, JetpackParticleType: 0});
global fluxinfusedjetplate    as IItemStack  = <simplyjetpacks:itemjetpack:18>.withTag({Energy: 0, JetpackParticleType: 0});

