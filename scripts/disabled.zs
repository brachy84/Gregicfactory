#priority 1000

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val disabledItems as IItemStack[] = [
    <meta_tile_entity:gtadditions:convert_gteu.lv.1>,
    <meta_tile_entity:gtadditions:convert_forge.lv.1>,
    <meta_tile_entity:gtadditions:convert_gteu.lv.9>,
    <meta_tile_entity:gtadditions:convert_forge.lv.9>,
    <meta_tile_entity:gtadditions:convert_gteu.mv.1>,
    <meta_tile_entity:gtadditions:convert_forge.mv.1>,
    <meta_tile_entity:gtadditions:convert_gteu.mv.9>,
    <meta_tile_entity:gtadditions:convert_forge.mv.9>,
    <meta_tile_entity:gtadditions:convert_gteu.hv.1>,
    <meta_tile_entity:gtadditions:convert_forge.hv.1>,
    <meta_tile_entity:gtadditions:convert_gteu.hv.9>,
    <meta_tile_entity:gtadditions:convert_forge.hv.9>,
    <meta_tile_entity:gtadditions:convert_gteu.ev.1>,
    <meta_tile_entity:gtadditions:convert_forge.ev.1>,
    <meta_tile_entity:gtadditions:convert_gteu.ev.9>,
    <meta_tile_entity:gtadditions:convert_forge.ev.9>,
    <meta_tile_entity:gtadditions:convert_gteu.iv.1>,
    <meta_tile_entity:gtadditions:convert_forge.iv.1>,
    <meta_tile_entity:gtadditions:convert_gteu.iv.9>,
    <meta_tile_entity:gtadditions:convert_forge.iv.9>,
    <meta_tile_entity:gtadditions:convert_gteu.luv.1>,
    <meta_tile_entity:gtadditions:convert_forge.luv.1>,
    <meta_tile_entity:gtadditions:convert_gteu.luv.9>,
    <meta_tile_entity:gtadditions:convert_forge.luv.9>,
    <meta_tile_entity:gtadditions:convert_gteu.zpm.1>,
    <meta_tile_entity:gtadditions:convert_forge.zpm.1>,
    <meta_tile_entity:gtadditions:convert_gteu.zpm.9>,
    <meta_tile_entity:gtadditions:convert_forge.zpm.9>,
    <meta_tile_entity:gtadditions:convert_gteu.uv.1>,
    <meta_tile_entity:gtadditions:convert_forge.uv.1>,
    <meta_tile_entity:gtadditions:convert_gteu.uv.9>,
    <meta_tile_entity:gtadditions:convert_forge.uv.9>
];

for item in disabledItems {
    mods.jei.JEI.removeAndHide(item);
}