import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI.removeAndHide as rh;
import mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput as ncAlloyRm;
import scripts.process.solution;

#modloaded enderio

# Cheaper decorations
var casing = <teslacorelib:machine_case>|<actuallyadditions:block_misc:9>|<mekanism:basicblock:8>|<nuclearcraft:part:10>;
var constructionAlloyOrIron = <ore:ingotConstructionAlloy> | <ore:ingotIron>;
recipes.remove(<enderio:item_material:2>);
recipes.addShaped("Cheaper Chassis Parts", 
<enderio:item_material:2> * 16, [
[constructionAlloyOrIron, constructionAlloyOrIron, constructionAlloyOrIron], 
[constructionAlloyOrIron, casing, constructionAlloyOrIron], 
[constructionAlloyOrIron, constructionAlloyOrIron, constructionAlloyOrIron]]);


# Electrical Steel
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:96>, <nuclearcraft:gem:6>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:160>, <nuclearcraft:gem:6>);

for silicon in <ore:itemSilicon>.items {
	for steel in <ore:ingotSteel>.items {
		mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot>, silicon, steel, 10000);
	}
	for steel in <ore:dustSteel>.items {
		mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot>, silicon, steel, 10000);
	}
}

# Impulse Hopper
	recipes.remove(<enderio:block_impulse_hopper>);
	recipes.addShaped("enderio_impulse_hopper_custom", 
	<enderio:block_impulse_hopper>, 
	[[<ore:ingotElectricalSteel>, <minecraft:hopper>, <ore:ingotElectricalSteel>], 
	[<ore:gearEnergized>, <ic2:resource:12>, <ore:gearEnergized>], 
	[<ore:ingotElectricalSteel>, <ore:ingotRedstoneAlloy>, <ore:ingotElectricalSteel>]]);

# Advanced Item Filter
	recipes.remove(<enderio:item_advanced_item_filter>);
	recipes.addShapedMirrored("Advanced Item Filter", 
	<enderio:item_advanced_item_filter>, 
	[[<ore:blockRedstone>, <ore:paper>, <ore:blockRedstone>],
	[<ore:paper>, <enderio:block_enderman_skull>, <ore:paper>], 
	[<ore:blockRedstone>, <ore:paper>, <ore:blockRedstone>]]);

# Painting Machine
	recipes.remove(<enderio:block_painter>);
	recipes.addShaped("Ender IO Painting Machine", <enderio:block_painter>, 
	[[<ore:gemQuartz>, gemDiamondRat, <ore:gemQuartz>], 
	[<ore:gearIronInfinity>, <nuclearcraft:part:10>, <ore:gearIronInfinity>], 
	[<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>]]);

# Fused Quartz (before Alloy Smelter)
	mods.nuclearcraft.alloy_furnace.addRecipe(<minecraft:quartz> * 4, <minecraft:quartz_block>, <enderio:block_fused_quartz> * 2);

# Clear Glass (before Alloy Smelter)
	recipes.addShaped("Quite Clear Glass", 
	<enderio:block_fused_glass> * 8, 
	[[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
	[<ore:blockGlass>, null, <ore:blockGlass>], 
	[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);

# Power Buffer
	recipes.remove(<enderio:block_buffer:1>);
	recipes.addShapedMirrored("Power Buffer", 
	<enderio:block_buffer:1>, 
	[[<ore:ingotIron>, <ore:ingotElectricalSteel>, <ore:ingotIron>],
	[<ore:ingotElectricalSteel>, <enderio:item_basic_capacitor>, <ore:ingotElectricalSteel>], 
	[<ore:ingotIron>, <ore:ingotElectricalSteel>, <ore:ingotIron>]]);

# Solar Panels
	# Tier 2
	recipes.remove(<enderio:block_solar_panel:1>);
	recipes.addShapedMirrored("EnderIO Solar Panel1", 
	<enderio:block_solar_panel:1>, 
	[[<ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>],
	[<enderio:block_solar_panel>, <enderio:block_solar_panel>, <enderio:block_solar_panel>], 
	[<enderio:item_basic_capacitor>, <ore:fusedQuartz>, <enderio:item_basic_capacitor>]]);
	# Tier 3
	recipes.remove(<enderio:block_solar_panel:2>);
	recipes.addShaped("EnderIO Solar Panel2", 
	<enderio:block_solar_panel:2>, 
	[[<ore:ingotPulsatingIron>, <ore:ingotPulsatingIron>, <ore:ingotPulsatingIron>],
	[<enderio:block_solar_panel:1>, <enderio:block_solar_panel:1>, <enderio:block_solar_panel:1>],
	[<enderio:item_basic_capacitor:1>, <ore:enlightenedFusedQuartz>, <enderio:item_basic_capacitor:1>]]);
	# Tier 4
	recipes.remove(<enderio:block_solar_panel:3>);
	recipes.addShaped("EnderIO Solar Panel3", 
	<enderio:block_solar_panel:3>, 
	[[<ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>],
	[<enderio:block_solar_panel:2>, <enderio:block_solar_panel:2>, <enderio:block_solar_panel:2>],
	[<enderio:item_basic_capacitor:2>, <ore:darkFusedQuartz>, <enderio:item_basic_capacitor:2>]]);

# Dimensional Transceiver
	recipes.remove(<enderio:block_transceiver>);
	recipes.addShapedMirrored("Ender IO Dimensional Transceiver", 
	<enderio:block_transceiver>, 
	[[<ore:blockElectricalSteel>, <ore:skullEnderResonator>, <ore:blockElectricalSteel>],
	[<enderio:item_basic_capacitor:2>, <mekanism:machineblock3>, <enderio:item_basic_capacitor:2>], 
	[<ore:blockElectricalSteel>, <ore:itemEnderCrystal>, <ore:blockElectricalSteel>]]);

# Enchanter
	recipes.remove(<enderio:block_enchanter>);
	recipes.addShapedMirrored("EnderIO Enchanter", 
	<enderio:block_enchanter>, 
	[[<ore:blockMagicalWood>, <ore:blockMagicalWood>, <ore:blockMagicalWood>],
	[<rftools:infused_diamond>, <thermalexpansion:machine:13>.withTag({}), <rftools:infused_diamond>], 
	[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>]]);

# Dialing Device
	recipes.remove(<enderio:block_dialing_device>);
	recipes.addShapedMirrored("EnderIO Dialing Device", 
	<enderio:block_dialing_device>, 
	[[null, <rftools:dialing_device>, null],
	[<ore:ingotDarkSteel>, <ore:skullEnderResonator>, <ore:ingotDarkSteel>], 
	[<ore:ingotDarkSteel>, <enderio:item_basic_capacitor:2>, <ore:ingotDarkSteel>]]);

# Energized Bimetal gear
	recipes.remove(<enderio:item_material:12>);
	mods.immersiveengineering.MetalPress.addRecipe(<enderio:item_material:12>, <enderio:item_alloy_ingot:1>, <immersiveengineering:mold:1>, 16000, 4);
	mods.thermalexpansion.Compactor.addGearRecipe(<enderio:item_material:12>, <enderio:item_alloy_ingot:1> * 4, 16000);

# Vibrant Bimetal gear
	recipes.remove(<enderio:item_material:13>);
	mods.immersiveengineering.MetalPress.addRecipe(<enderio:item_material:13>, <enderio:item_alloy_ingot:2>, <immersiveengineering:mold:1>, 16000, 4);
	mods.thermalexpansion.Compactor.addGearRecipe(<enderio:item_material:13>, <enderio:item_alloy_ingot:2> * 4, 16000);

# Dark Bimetel gear
	recipes.remove(<enderio:item_material:73>);
	mods.immersiveengineering.MetalPress.addRecipe(<enderio:item_material:73>, <enderio:item_alloy_ingot:6>, <immersiveengineering:mold:1>, 16000, 4);
	mods.thermalexpansion.Compactor.addGearRecipe(<enderio:item_material:73>, <enderio:item_alloy_ingot:6> * 4, 16000);
	
# Simple Machine Chassis
	recipes.remove(<enderio:item_material>);
	recipes.addShapedMirrored("Simple Machine Chassis", 
	<enderio:item_material>, 
	[[<ore:plateTitaniumAluminide>, <ore:gearIronInfinity>, <ore:plateTitaniumAluminide>],
	[<enderio:block_dark_iron_bars>, <thermalexpansion:frame:129>, <enderio:block_dark_iron_bars>], 
	[<ore:plateTitaniumAluminide>, <ore:gearIronInfinity>, <ore:plateTitaniumAluminide>]]);

# Machine Chassis
	recipes.remove(<enderio:item_material:1>);
	recipes.addShapedMirrored("Machine Chassis", 
	<enderio:item_material:1>, 
	[[<enderio:block_reinforced_obsidian>, <ore:dyeMachine>, <enderio:block_reinforced_obsidian>],
	[<ore:dyeMachine>, <enderio:item_material>, <ore:dyeMachine>], 
	[<enderio:block_reinforced_obsidian>, <ore:dyeMachine>, <enderio:block_reinforced_obsidian>]]);

# Basic Capacitor
	recipes.remove(<enderio:item_basic_capacitor>);
	recipes.addShapedMirrored("Basic Capacitor", 
	<enderio:item_basic_capacitor> * 2, 
	[[null, <immersiveengineering:metal_device1:8>, null],
	[<ore:dustBedrock>, <immersiveengineering:metal_device0:2>, <ore:dustBedrock>], 
	[null, <immersiveengineering:metal_device1:8>, null]]);

# Double-Layer Capacitor
	recipes.remove(<enderio:item_basic_capacitor:1>);
	recipes.addShapedMirrored("Double-Layer Capacitor", 
	<enderio:item_basic_capacitor:1>, 
	[[null, <ore:ingotEnergeticAlloy>, null],
	[<enderio:item_basic_capacitor>, <ore:dustCoke>, <enderio:item_basic_capacitor>], 
	[null, <ore:ingotEnergeticAlloy>, null]]);

# Octadic Capacitor
	recipes.remove(<enderio:item_basic_capacitor:2>);
	recipes.addShapedMirrored("Octadic Capacitor", 
	<enderio:item_basic_capacitor:2>, 
	[[<ore:ingotFerroboron>, <ore:ingotVibrantAlloy>, <ore:ingotFerroboron>],
	[<enderio:item_basic_capacitor:1>, <draconicevolution:draconium_block:1>, <enderio:item_basic_capacitor:1>], 
	[<ore:ingotFerroboron>, <ore:ingotVibrantAlloy>, <ore:ingotFerroboron>]]);

# Combustion Generator
	recipes.remove(<enderio:block_combustion_generator>);
	recipes.addShapedMirrored("Combustion Generator", 
	<enderio:block_combustion_generator>, 
	[[<ore:ingotElectricalSteel>, <minecraft:furnace>, <enderio:item_alloy_ingot>],
	[<enderio:block_tank>, <ic2:resource:13>, <enderio:block_tank>], 
	[<ore:gearEnergized>, <ore:craftingPiston>, <ore:gearEnergized>]]);

# Farming Station
	recipes.remove(<enderio:block_farm_station>);
	recipes.addShapedMirrored("Farming Station1", 
	<enderio:block_farm_station>, 
	[[<ore:ingotElectricalSteel>, <twilightforest:ironwood_hoe>.anyDamage(), <ore:ingotElectricalSteel>],
	[<ore:ingotElectricalSteel>, <enderio:item_material:1>, <ore:ingotElectricalSteel>], 
	[<ore:gearVibrant>, <twilightforest:ironwood_axe>.anyDamage(), <ore:gearVibrant>]]);
	
	recipes.addShapedMirrored("Farming Station2", 
	<enderio:block_farm_station>, 
	[[<ore:ingotElectricalSteel>, <twilightforest:steeleaf_hoe>.anyDamage(), <ore:ingotElectricalSteel>],
	[<ore:ingotElectricalSteel>, <enderio:item_material:1>, <ore:ingotElectricalSteel>], 
	[<ore:gearVibrant>, <twilightforest:steeleaf_axe>.anyDamage(), <ore:gearVibrant>]]);

# The Vat
	recipes.remove(<enderio:block_vat>);
	recipes.addShapedMirrored("The Vat",
	<enderio:block_vat>,
	[[<ore:ingotElectricalSteel>, <minecraft:cauldron>, <ore:ingotElectricalSteel>],
	[<enderio:block_tank>, <thermalexpansion:machine:7>, <enderio:block_tank>],
	 [<ore:ingotElectricalSteel>, <minecraft:cauldron>, <ore:ingotElectricalSteel>]]);

# Crafter simplify
	recipes.remove(<enderio:block_simple_crafter>);
	recipes.addShaped(<enderio:block_simple_crafter>, [
		[<ore:itemSilicon>, <ore:itemSilicon>, <ore:itemSilicon>], 
		[<ore:ingotConstructionAlloy> | <ore:ingotIron>, <ic2:te:88>, <ore:ingotConstructionAlloy> | <ore:ingotIron>], 
		[<ore:gearStone>, <ore:workbench>, <ore:gearStone>]]);

	recipes.remove(<enderio:block_crafter>);
	recipes.addShaped(<enderio:block_crafter>, [
		[<ore:itemSilicon>, <ore:itemSilicon>, <ore:itemSilicon>],
		[<ore:ingotConstructionAlloy> | <ore:ingotIron>, <ic2:te:89>, <ore:ingotConstructionAlloy> | <ore:ingotIron>], 
		[<ore:gearIronInfinity>, <ore:workbench>, <ore:gearIronInfinity>]]);

# Power Monitor simplify
	recipes.remove(<enderio:block_power_monitor>);
	recipes.addShaped(<enderio:block_power_monitor>, [
		[<ore:ingotElectricalSteel>, <enderio:item_conduit_probe>, <ore:ingotElectricalSteel>], 
		[<ore:ingotElectricalSteel>, <nuclearcraft:part:10> | <teslacorelib:machine_case> | <actuallyadditions:block_misc:9> | <mekanism:basicblock:8>, <ore:ingotElectricalSteel>], 
		[<ore:ingotElectricalSteel>, <enderio:item_power_conduit>, <ore:ingotElectricalSteel>]]);

# Removals
	rh(<enderio:item_material:30>);
	rh(<enderio:item_material:31>);
	
	
# Lava Heat Exchanger
var machineCaseVariant = <nuclearcraft:part:10> | <teslacorelib:machine_case> | <actuallyadditions:block_misc:9> | <mekanism:basicblock:8>;
recipes.remove(<enderio:block_lava_generator>);
recipes.addShaped(<enderio:block_lava_generator>, [
	[<ore:ingotBrickNetherGlazed>, <ore:ingotBrickNetherGlazed>, <ore:ingotBrickNetherGlazed>], 
	[<ore:ingotBrickNetherGlazed>, machineCaseVariant, <ore:ingotBrickNetherGlazed>], 
	[<ore:ingotBrickNetherGlazed>, <enderio:block_tank>, <ore:ingotBrickNetherGlazed>]]);

# Nethercotta
mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_material:72>, <ore:ingotBrickNether>,
	<immersiveengineering:material:7>, 20*4, 2560, [<ore:cropNetherWart>*4, <ore:clay>*6], "Alloying");

# Remake binder
recipes.remove(<enderio:item_material:22> * 8);
makeEx(<enderio:item_material:22> * 12, [
	[<ore:dust>, <ore:materialWoolEnergetic>, <ore:dust>],
	[<ore:dustClay>, <liquid:sand> * 1000, <ore:dustClay>],
	[<ore:dust>, <ore:materialWoolEnergetic>, <ore:dust>]]);

# Simplifi Niard
recipes.remove(<enderio:block_niard>);
recipes.addShaped(<enderio:block_niard>, [
	[<immersiveengineering:metal_device1:6>, <enderio:block_tank>, <immersiveengineering:metal_device1:6>],
	[<ore:craftingPiston>, <ore:chassis>, <ore:craftingPiston>],
	[<ore:ingotIron>, <ore:barsIron>, <ore:ingotIron>]]);

# Compat of nano glowstone
scripts.process.crush(<enderio:item_material:76>, <enderio:block_holy_fog>, "except: sagMill", 
	[<enderio:block_holy_fog>, <minecraft:clay_ball>, <minecraft:glowstone_dust>], [0.6f, 0.1f, 0.1f]);

# Compunent for nano-glowstone compat
scripts.process.alloy([<minecraft:glowstone_dust>, <minecraft:clay_ball>], <enderio:item_material:76> * 2, "except: alloySmelter");

# Harder Vibrant Alloy
mods.thermalexpansion.InductionSmelter.removeRecipe(<enderio:item_alloy_ingot:1>, <minecraft:ender_pearl>);
scripts.process.alloy([<ore:ingotEnergeticAlloy>, <extendedcrafting:material:49>], <enderio:item_alloy_ingot:2> * 2, "ONLY: induction STRICT: alloySmelter");

# Remove alloy recipes made in High Oven
ncAlloyRm(<enderio:item_alloy_ingot>);
ncAlloyRm(<enderio:item_alloy_ingot:1>);
ncAlloyRm(<enderio:item_alloy_ingot:2>);
ncAlloyRm(<enderio:item_alloy_ingot:3>);
ncAlloyRm(<enderio:item_alloy_ingot:4>); # conductive Iron
ncAlloyRm(<enderio:item_alloy_ingot:5>);
ncAlloyRm(<enderio:item_alloy_ingot:6>);
ncAlloyRm(<enderio:item_alloy_ingot:7>);
ncAlloyRm(<enderio:item_alloy_ingot:8>);
ncAlloyRm(<enderio:item_alloy_ingot:9>*3);



val db as IIngredient = <ore:dustBedrock>;

val fake_iron_variations = 
<thermalfoundation:material:1>   | <thermalfoundation:material:64>         | <thermalfoundation:material:65>  |
<thermalfoundation:material:66>  | <thermalfoundation:material:67>         | <thermalfoundation:material:68>  |
<thermalfoundation:material:69>  | <thermalfoundation:material:70>         | <thermalfoundation:material:71>  |
<thermalfoundation:material:72>  | <astralsorcery:itemcraftingcomponent:2> | <mekanism:dust:2>                |
<nuclearcraft:dust:3>            | <nuclearcraft:dust:5>                   | <nuclearcraft:dust:7>            |
<nuclearcraft:compound:2>        | <psi:material>                          | <thermalfoundation:material:96>  |
<thermalfoundation:material:97>  | <thermalfoundation:material:98>         | <thermalfoundation:material:99>  |
<thermalfoundation:material:100> | <thermalfoundation:material:101>        | <thermalfoundation:material:102> |
<thermalfoundation:material:103>;

# EnderIO simple alloys
solution([db, fake_iron_variations      			      ], [<liquid:iron>      *72 ], [<liquid:construction_alloy>*216], [0.5, 1,    2700], "only: highoven");
solution([db, <ore:dustObsidian> 							      ], [<liquid:steel>     *144], [<liquid:dark_steel>        *144], [0.5, 1,    5500], "only: highoven");
solution([db, <ore:dustEndstone>, <ore:dustObsidian>], [<liquid:dark_steel>*144], [<liquid:end_steel>         *144], [0.5, 1, 1, 5500], "only: highoven");

# Oxidisers on choose
val ox as IIngredient = <ore:dustCyanite> | <ore:itemSlagRich> | <ore:dustPsi>;

# EnderIO hard alloys
solution([db, <mysticalagriculture:crafting:28>, ox], [<liquid:gold>*144           ], [<liquid:soularium> *144       ], [0.5, 1, 0.25, 5100], "only: highoven");
solution([db, <ore:itemSilicon>                , ox], [<liquid:steel>*144          ], [<liquid:electrical_steel> *144], [0.5, 1, 0.25, 3000], "only: highoven");
solution([db, <ore:dustEnergetic>              , ox], [<liquid:gold>*144           ], [<liquid:energetic_alloy> *144 ], [0.5, 1, 0.25, 3600], "only: highoven");
solution([db, <extendedcrafting:material:49>   , ox], [<liquid:energetic_alloy>*144], [<liquid:vibrant_alloy> *144   ], [0.5, 1, 0.25, 5400], "only: highoven");
solution([db, <ore:dustRedstone>               , ox], [<liquid:tin>*144            ], [<liquid:redstone_alloy> *144  ], [0.5, 1, 0.25, 3600], "only: highoven");
solution([db, <ore:dustRedstone>               , ox], [<liquid:iron>*144           ], [<liquid:conductive_iron> *144 ], [0.5, 1, 0.25, 4200], "only: highoven");
solution([db, <ore:dustEnder>                  , ox], [<liquid:silver>*144         ], [<liquid:pulsating_iron> *144  ], [0.5, 1, 0.25, 5500], "only: highoven");

# Cheaper conduit facades
recipes.removeByRecipeName("enderio:conduit_facade_transparent");
val BDR = <ore:itemConduitBinder>;
recipes.addShaped(<enderio:item_conduit_facade:2> * 8, [
	[BDR, BDR, BDR],
	[BDR, <ore:fusedQuartz>, BDR],
	[BDR, BDR, BDR]]);

recipes.removeByRecipeName("enderio:conduit_facade");
recipes.addShaped(<enderio:item_conduit_facade> * 8, [
	[BDR, BDR, BDR],
	[BDR, null, BDR],
	[BDR, BDR, BDR]]);

# Nutritious stick craft
mods.inworldcrafting.FluidToItem.transform(<enderio:item_material:8>, <fluid:nutrient_distillation>, [<minecraft:stick>]);

# Remove enderium and enderium base recipes
mods.enderio.AlloySmelter.removeRecipe(<thermalfoundation:material:167>);
mods.enderio.AlloySmelter.removeRecipe(<enderio:item_material:39>);
rh(<enderio:item_material:39>);

# Avaritia Ender IO integration
#Infinity ball from all other balls and infinity catalyst
recipes.remove(<avaritiaio:grindingballinfinity> * 64);
val grindingBalls = [
<enderio:item_alloy_ball>,
<enderio:item_alloy_ball:1>,
<enderio:item_alloy_ball:2>,
<enderio:item_alloy_ball:3>,
<enderio:item_alloy_ball:4>,
<enderio:item_alloy_ball:5>,
<enderio:item_alloy_ball:6>,
<enderio:item_alloy_ball:7>,
<enderio:item_alloy_ball:8>,
<enderio:item_alloy_ball:9>,
<enderio:item_material:57>,
<enderio:item_material:58>,
<enderio:item_material:59>,
<enderio:item_alloy_endergy_ball:1>,
<enderio:item_alloy_endergy_ball:2>,
<enderio:item_alloy_endergy_ball:3>,
<enderio:item_alloy_endergy_ball:4>,
<avaritiaio:grindingballneutronium>,
] as IItemStack[];

mods.extendedcrafting.CombinationCrafting.addRecipe(<avaritiaio:grindingballinfinity> * 2, 2000000000, 20000000, <avaritia:resource:5>, grindingBalls);
mods.extendedcrafting.CombinationCrafting.addRecipe(<avaritiaio:grindingballinfinity> * 2, 2000000000, 20000000, <avaritiaio:grindingballinfinity>, grindingBalls);

# End Steel process
scripts.process.alloy([<ore:ingotDarkSteel>, <ore:obsidian>, <ore:endstone>], <ore:ingotEndSteel>.firstItem, "except: alloySmelter");