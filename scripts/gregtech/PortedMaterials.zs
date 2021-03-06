#loader gregtech
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.MaterialCasting;

var materialList = MaterialRegistry.getAllMaterials();

val conductiveIron = MaterialRegistry.createIngotMaterial(500, "conductive_iron", 0xf7b29b, "shiny", 2);
conductiveIron.addFlags(["GENERATE_PLATE","GENERATE_GEAR"]);

val energeticAlloy = MaterialRegistry.createIngotMaterial(501, "energetic_alloy", 0xf49507, "shiny", 2);
energeticAlloy.addFlags(["GENERATE_PLATE","GENERATE_GEAR"]);

val vibrantAlloy = MaterialRegistry.createIngotMaterial(502, "vibrant_alloy", 0xa4ff70, "shiny", 2);
vibrantAlloy.addFlags(["GENERATE_PLATE","GENERATE_GEAR"]);

val pulsatingIron = MaterialRegistry.createIngotMaterial(503, "pulsating_iron", 0x6ae26e, "shiny", 2);
pulsatingIron.addFlags(["GENERATE_PLATE","GENERATE_GEAR"]);

val darkSteel = MaterialRegistry.createIngotMaterial(504, "dark_steel", 0x414751, "dull", 2);
darkSteel.addFlags(["GENERATE_PLATE","GENERATE_ROD"]);

val electricalSteel = MaterialRegistry.createIngotMaterial(505, "electrical_steel", 0xb2c0c1, "shiny", 2);
electricalSteel.addFlags(["GENERATE_PLATE","GENERATE_GEAR"]);


val lumium = MaterialRegistry.createIngotMaterial(506, "lumium", 0xf6ff99, "shiny", 2);
lumium.addFlags(["GENERATE_ROD"]);

val signalum = MaterialRegistry.createIngotMaterial(507, "signalum", 0xce4b00, "shiny", 2);
signalum.addFlags(["GENERATE_ROD"]);
/*
val enderium = MaterialRegistry.createIngotMaterial(508, "enderium", 0x1f6b62, "shiny", 2);
enderium.addFlags(["GENERATE_ROD"]);
*/

val endSteel = MaterialRegistry.createIngotMaterial(512, "end_steel", 0xe0efbd, "shiny", 2);
endSteel.addFlags(["GENERATE_PLATE","GENERATE_GEAR"]);

val ardite = MaterialRegistry.createIngotMaterial(513, "ardite", 0xad2f05, "dull", 2);
ardite.addFlags(["GENERATE_PLATE"]);

val manyullyn = MaterialRegistry.createIngotMaterial(514, "manyullyn", 0x9949cc, "dull", 2);
manyullyn.addFlags(["GENERATE_PLATE"]);

val omnium = MaterialRegistry.createIngotMaterial(509, "omnium", 0x84053e, "shiny", 2);

val draconium = MaterialRegistry.createIngotMaterial(510, "draconium", 0xbe49ed, "dull", 2);


conductiveIron.setCableProperties(32, 1, 0);
energeticAlloy.setCableProperties(128, 1, 0);
vibrantAlloy.setCableProperties(512, 1, 0);
endSteel.setCableProperties(2048, 1, 0);
lumium.setCableProperties(8192, 1, 0);
signalum.setCableProperties(32768, 1, 0);
MaterialCasting.toIngot(<material:enderium>).setCableProperties(131072, 1, 0);
draconium.setCableProperties(524288, 1, 0);
omnium.setCableProperties(2147483647, 1, 0);