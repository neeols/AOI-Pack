import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import scripts.CommonVars.makeShaped as makeShaped;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.mods.IMod;
import crafttweaker.oredict.IOreDict;

// Hiding from JEI loops

var mod as IMod;
var modItems as IItemStack[];

mod = loadedMods["appliedenergistics2"];
if(!isNull(mod)) {
    modItems = mod.items;

    for item in modItems {
        if(item.displayName has "Cable Facade") {

            if(item.displayName has "Block of Neutronium") {

                item.addTooltip(format.darkAqua("Facades can be crafted from most blocks, but are hidden from JEI to reduce clutter"));
            }
            else {
                mods.jei.JEI.hide(item); 
            }
        }

        if(item.displayName has "Paint Ball") {
            if(item.displayName has "Paint Ball - White") {

                item.addTooltip(format.darkAqua("ball"));
            }
            else {
                mods.jei.JEI.hide(item); 
            }
        }
    }
}

mod = loadedMods["aeadditions"];
if(!isNull(mod)) {
    modItems = mod.items;

    for item in modItems {
        if(item.displayName has "ME Fluid Pattern") {
            mods.jei.JEI.hide(item); 
        }
    }
}

mod = loadedMods["forestry"];
if(!isNull(mod)) {
    modItems = mod.items;

    for item in modItems {
        if(item.displayName has "Can") {
            mods.jei.JEI.removeAndHide(item);
            recipes.remove(item);
        }

        if(item.displayName has "Capsule") {
            mods.jei.JEI.removeAndHide(item);
            recipes.remove(item);
        }
    }
}

// oredicts

val uselessIngots = [0,1,2,3,4,5,6,7,8] as int[]; // metadata

var variants = [
    //enderio
    "block_alloy", 
	"item_alloy_nugget", 
	"item_alloy_ingot",
	"item_alloy_ball",
    //endergy
    "block_alloy_endergy",
    "item_alloy_endergy_nugget",
    "item_alloy_endergy_ingot",
    "item_alloy_endergy_ball",
] as string[];

var oredicts = [
	<ore:blockPulsatingIron>,
	<ore:ingotPulsatingIron>,
	<ore:nuggetPulsatingIron>,
	<ore:blockConductiveIron>,
	<ore:ingotConductiveIron>,
	<ore:nuggetConductiveIron>,
	<ore:blockEnergeticAlloy>,
	<ore:ingotEnergeticAlloy>,
	<ore:nuggetEnergeticAlloy>,
	<ore:blockVibrantAlloy>,
	<ore:ingotVibrantAlloy>,
	<ore:nuggetVibrantAlloy>,
	<ore:blockSoularium>,
	<ore:ingotSoularium>,
	<ore:nuggetSoularium>,
	<ore:blockDarkSteel>,
	<ore:ingotDarkSteel>,
	<ore:nuggetDarkSteel>,
	<ore:blockElectricalSteel>,
	<ore:ingotElectricalSteel>,
	<ore:nuggetElectricalSteel>,
	<ore:blockRedstoneAlloy>,
	<ore:ingotRedstoneAlloy>,
	<ore:nuggetRedstoneAlloy>,
	<ore:blockEndSteel>,
	<ore:ingotEndSteel>,
	<ore:nuggetEndSteel>,
    <ore:blockCrudeSteel>,
	<ore:ingotCrudeSteel>,
	<ore:nuggetCrudeSteel>,
	<ore:blockCrystallineAlloy>,
	<ore:ingotCrystallineAlloy>,
	<ore:nuggetCrystallineAlloy>,
    <ore:blockMelodicAlloy>,
	<ore:ingotMelodicAlloy>,
	<ore:nuggetMelodicAlloy>,
	<ore:blockStellarAlloy>,
	<ore:ingotStellarAlloy>,
	<ore:nuggetStellarAlloy>,
	<ore:blockCrystallinePinkSlime>,
	<ore:ingotCrystallinePinkSlime>,
	<ore:nuggetCrystallinePinkSlime>,
    <ore:blockEnergeticSilver>,
	<ore:ingotEnergeticSilver>,
	<ore:nuggetEnergeticSilver>,
	<ore:blockVividAlloy>,
	<ore:ingotVividAlloy>,
	<ore:nuggetVividAlloy>,
] as IOreDictEntry[];

var oreDictEntry as IOreDictEntry;

for metadata in uselessIngots {
    for variant in variants {
        var item = itemUtils.getItem("enderio:" + variant, metadata) as IItemStack;
        if (!isNull(item)) {
			
            recipes.remove(item);
            rh(item);

			for oredict in oredicts {
				oreDictEntry = oredict;
				oreDictEntry.remove(item);
			}
        }
    }
}

// Clean up random stuff added by AE2 and EIO

mods.jei.JEI.hideCategory("appliedenergistics2.grinder");
recipes.remove(<appliedenergistics2:grindstone>);
rh(<appliedenergistics2:grindstone>);
recipes.remove(<appliedenergistics2:vibration_chamber>);
rh(<appliedenergistics2:vibration_chamber>);
recipes.remove(<aeadditions:vibrantchamberfluid>);
rh(<aeadditions:vibrantchamberfluid>);

oreDictEntry = <ore:dustEnder>;
oreDictEntry.remove(<appliedenergistics2:material:46>);
rh(<appliedenergistics2:material:46>);
recipes.remove(<appliedenergistics2:material:46>);

oreDictEntry = <ore:dustEnderPearl>;
oreDictEntry.remove(<appliedenergistics2:material:46>);

rh(<enderio:item_material:28>);
recipes.remove(<enderio:item_material:28>);

oreDictEntry = <ore:dustObsidian>;
oreDictEntry.remove(<enderio:item_material:29>);
rh(<enderio:item_material:29>);
recipes.remove(<enderio:item_material:29>);

oreDictEntry = <ore:dustCopper>;
oreDictEntry.remove(<enderio:item_material:26>);
rh(<enderio:item_material:26>);
recipes.remove(<enderio:item_material:26>);

oreDictEntry = <ore:itemSilicon>;
oreDictEntry.remove(<enderio:item_material:5>);
rh(<enderio:item_material:5>);
furnace.remove(<appliedenergistics2:material:5>);
furnace.addRecipe(<appliedenergistics2:material:5> * 1, <gregtech:meta_dust:214>); // c. quartz dust -> silicon
furnace.addRecipe(<appliedenergistics2:material:5> * 1, <gregtech:meta_dust:340>); // quartzite dust -> silicon
furnace.addRecipe(<appliedenergistics2:material:5> * 1, <gregtech:meta_dust:339>); // nether quartz dust -> silicon

oreDictEntry = <ore:dustNetherQuartz>;
oreDictEntry.remove(<enderio:item_material:33>);
oreDictEntry.remove(<appliedenergistics2:material:3>);
rh(<appliedenergistics2:material:3>);
rh(<enderio:item_material:33>);
recipes.remove(<enderio:item_material:33>);
recipes.remove(<appliedenergistics2:material:3>);

oreDictEntry = <ore:dustCertusQuartz>;
oreDictEntry.remove(<appliedenergistics2:material:2>);
rh(<appliedenergistics2:material:2>);
recipes.remove(<appliedenergistics2:material:2>);

oreDictEntry = <ore:dustLapis>;
oreDictEntry.remove(<enderio:item_material:32>);
rh(<enderio:item_material:32>);
recipes.remove(<enderio:item_material:32>);

oreDictEntry = <ore:dustCobalt>;
oreDictEntry.remove(<enderio:item_material:31>);
rh(<enderio:item_material:31>);
recipes.remove(<enderio:item_material:31>);

oreDictEntry = <ore:dustCoal>;
oreDictEntry.remove(<enderio:item_material:23>);
rh(<enderio:item_material:23>);
recipes.remove(<enderio:item_material:23>);

oreDictEntry = <ore:dustWheat>;
oreDictEntry.remove(<appliedenergistics2:material:4>);
oreDictEntry.remove(<enderio:item_material:21>);
rh(<enderio:item_material:21>);
rh(<appliedenergistics2:material:4>);
recipes.remove(<enderio:item_material:21>);
recipes.remove(<appliedenergistics2:material:4>);

oreDictEntry = <ore:dustTin>;
oreDictEntry.remove(<enderio:item_material:27>);
rh(<enderio:item_material:27>);

oreDictEntry = <ore:dustGold>;
oreDictEntry.remove(<appliedenergistics2:material:51>);
oreDictEntry.remove(<enderio:item_material:25>);
rh(<enderio:item_material:25>);
rh(<appliedenergistics2:material:51>);
recipes.remove(<enderio:item_material:25>);
recipes.remove(<appliedenergistics2:material:51>);

oreDictEntry = <ore:dustIron>;
oreDictEntry.remove(<appliedenergistics2:material:49>);
oreDictEntry.remove(<enderio:item_material:24>);
rh(<enderio:item_material:24>);
rh(<appliedenergistics2:material:49>);
recipes.remove(<enderio:item_material:24>);
recipes.remove(<appliedenergistics2:material:49>);

oreDictEntry = <ore:gearWood>; // remove EIO and AE2 wood gears
oreDictEntry.remove(<appliedenergistics2:material:40>);
oreDictEntry.remove(<enderio:item_material:9>);
rh(<enderio:item_material:9>);
rh(<appliedenergistics2:material:40>);
recipes.remove(<enderio:item_material:9>);
recipes.remove(<appliedenergistics2:material:40>);

oreDictEntry = <ore:gearStone>;  // remove EIO stone gear
oreDictEntry.remove(<enderio:item_material:10>);
rh(<enderio:item_material:10>);
recipes.remove(<enderio:item_material:10>);

rh(<enderio:item_material:30>); // Ardite dust (whatever that is)

mods.jei.JEI.hide(<base:wrench>);

<appliedenergistics2:part:469>.addTooltip(format.green(format.italic("Made by right-clicking ME P2P Tunnel with an energy conduit.")));
mods.jei.JEI.addItem(<appliedenergistics2:part:469>);
<appliedenergistics2:part:463>.addTooltip(format.green(format.italic("Made by right-clicking ME P2P Tunnel with a bucket.")));
mods.jei.JEI.addItem(<appliedenergistics2:part:463>);
<appliedenergistics2:part:462>.addTooltip(format.green(format.italic("Made by right-clicking ME P2P Tunnel with a chest.")));
mods.jei.JEI.addItem(<appliedenergistics2:part:462>);
<appliedenergistics2:part:467>.addTooltip(format.green(format.italic("Made by right-clicking ME P2P Tunnel with a torch.")));
mods.jei.JEI.addItem(<appliedenergistics2:part:467>);
<appliedenergistics2:part:461>.addTooltip(format.green(format.italic("Made by right-clicking ME P2P Tunnel with redstone dust.")));
mods.jei.JEI.addItem(<appliedenergistics2:part:461>);
<appliedenergistics2:part:470>.addTooltip(format.green(format.italic("Made by right-clicking ME P2P Tunnel with a GregTech wire or cable.")));
mods.jei.JEI.addItem(<appliedenergistics2:part:470>);

recipes.removeByRecipeName("appliedenergistics2:network/blocks/controller");
makeShaped("me_controller", <appliedenergistics2:controller>,
	["PFP",
	 "FAF",
	 "PFP"],
	{ F : <ore:crystalPureFluix>,
	  P : <ore:plateDarkSteel>,
	  A : <appliedenergistics2:energy_acceptor>});