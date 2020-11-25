/*
   === XTones recipe changes ===
 */
recipes.remove(<xtones:lamp_flat>);
recipes.addShaped(<xtones:lamp_flat>, [
	[null, null, null],
	[<ore:ingotSteel>, <minecraft:glowstone>, <ore:ingotSteel>],
	[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]]);
<xtones:lamp_flat>.addTooltip(format.yellow("Requires a redstone signal to light."));