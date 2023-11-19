//bro the guy needs to fucking update mbt


import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.functions.IRunOverclockingLogicFunction;
import mods.gregtech.recipe.IRecipeLogic;
import mods.gregtech.recipe.IRecipe;
import mods.gregtech.multiblock.Multiblock;

import scripts.CommonVars.makeShaped as makeShaped;

val primitive_alloy_smelter = Builder.start("mbt:primitive_alloy_smelter")
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("AAA", "CCC", "CCC")
            .aisle("AAA", "C C", "C C")
            .aisle("AAA", "CSC", "CCC")
            .where('S', controller.self())
            .where('C', <metastate:modpack:refractorycementbricks>)
            .where(' ', CTPredicate.getAir())
            .where("A", CTPredicate.states(<metastate:modpack:refractorycement>) 
            | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(3)
            | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1))
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(
        FactoryRecipeMap.start("primitive_alloy_smelter")
            .minInputs(1)
            .maxInputs(5)
            .minOutputs(1)
            .maxOutputs(1)
            .build())
    .withBaseTexture(<metastate:modpack:refractorycement>)
    .buildAndRegister() as Multiblock;

primitive_alloy_smelter.hasMufflerMechanics = false;
primitive_alloy_smelter.hasMaintenanceMechanics = false;
//primitive_alloy_smelter.noEnergy = true;

recipes.addShaped("primitive_alloy_smelter", <metaitem:mbt:primitive_alloy_smelter>, [
    [<gregtech:meta_plate:51>, <modpack:refractorycement>, <gregtech:meta_plate:51>],
    [<modpack:refractorycement>, <ore:craftingToolWrench>, <modpack:refractorycement>],
    [<gregtech:meta_plate:51>, <modpack:refractorycement>, <gregtech:meta_plate:51>]
]);
/*
primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(300)
    .inputs(<gregtech:meta_ingot:25> * 1, <minecraft:redstone> * 4, <minecraft:coal> * 1)
    .outputs(<gregtech:meta_ingot:2517> * 1) // red alloy
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(300)
    .inputs(<gregtech:meta_dust:25> * 1, <minecraft:redstone> * 4, <minecraft:coal> * 1)
    .outputs(<gregtech:meta_ingot:2517> * 1) // red alloy
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(300)
    .inputs(<gregtech:meta_ingot:25> * 3, <gregtech:meta_ingot:112> * 1, <minecraft:coal> * 1)
    .outputs(<gregtech:meta_ingot:260> * 1) // bronze
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(300)
    .inputs(<gregtech:meta_dust:25> * 3, <gregtech:meta_ingot:112> * 1, <minecraft:coal> * 1)
    .outputs(<gregtech:meta_ingot:260> * 1) // bronze
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(300)
    .inputs(<gregtech:meta_ingot:25> * 3, <gregtech:meta_dust:112> * 1, <minecraft:coal> * 1)
    .outputs(<gregtech:meta_ingot:260> * 1) // bronze
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(300)
    .inputs(<gregtech:meta_dust:25> * 3, <gregtech:meta_dust:112> * 1, <minecraft:coal> * 1)
    .outputs(<gregtech:meta_ingot:260> * 1) // bronze
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(600)
    .inputs(<minecraft:iron_ingot> * 1, <gregtech:meta_gem:319> * 1)
    .outputs(<gregtech:meta_ingot:335> * 1) // wrought iron
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(600)
    .inputs(<gregtech:meta_dust:51> * 1, <gregtech:meta_gem:319> * 1)
    .outputs(<gregtech:meta_ingot:335> * 1) // wrought iron
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(600)
    .inputs(<gregtech:meta_ingot:335> * 1, <gregtech:meta_gem:319> * 1)
    .outputs(<gregtech:meta_ingot:22015> * 1) // crude steel
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(600)
    .inputs(<gregtech:meta_dust:335> * 1, <gregtech:meta_gem:319> * 1)
    .outputs(<gregtech:meta_ingot:22015> * 1) // crude steel
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(600)
    .inputs(<minecraft:iron_ingot> * 1, <gregtech:meta_dust:319> * 1)
    .outputs(<gregtech:meta_ingot:335> * 1) // wrought iron
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(600)
    .inputs(<gregtech:meta_dust:51> * 1, <gregtech:meta_dust:319> * 1)
    .outputs(<gregtech:meta_ingot:335> * 1) // wrought iron
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(600)
    .inputs(<gregtech:meta_ingot:335> * 1, <gregtech:meta_dust:319> * 1)
    .outputs(<gregtech:meta_ingot:22015> * 1) // crude steel
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(600)
    .inputs(<gregtech:meta_dust:335> * 1, <gregtech:meta_dust:319> * 1)
    .outputs(<gregtech:meta_ingot:22015> * 1) // crude steel
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(300)
    .inputs(<gregtech:meta_dust:25> * 6, <gregtech:meta_dust:112> * 2, <gregtech:meta_dust:55> * 1, <minecraft:coal> * 1)
    .outputs(<gregtech:meta_ingot:2037> * 1) // potin
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(300)
    .inputs(<gregtech:meta_ingot:25> * 6, <gregtech:meta_ingot:112> * 2, <gregtech:meta_ingot:55> * 1, <minecraft:coal> * 1)
    .outputs(<gregtech:meta_ingot:2037> * 1) // potin
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(300)
    .inputs(<gregtech:meta_ingot:25> * 6, <gregtech:meta_ingot:112> * 2, <gregtech:meta_dust:55> * 1, <minecraft:coal> * 1)
    .outputs(<gregtech:meta_ingot:2037> * 1) // potin
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(300)
    .inputs(<gregtech:meta_ingot:25> * 6, <gregtech:meta_dust:112> * 2, <gregtech:meta_dust:55> * 1, <minecraft:coal> * 1)
    .outputs(<gregtech:meta_ingot:2037> * 1) // potin
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(300)
    .inputs(<gregtech:meta_dust:25> * 6, <gregtech:meta_ingot:112> * 2, <gregtech:meta_dust:55> * 1, <minecraft:coal> * 1)
    .outputs(<gregtech:meta_ingot:2037> * 1) // potin
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(300)
    .inputs(<gregtech:meta_dust:25> * 6, <gregtech:meta_ingot:112> * 2, <gregtech:meta_ingot:55> * 1, <minecraft:coal> * 1)
    .outputs(<gregtech:meta_ingot:2037> * 1) // potin
    .buildAndRegister();

primitive_alloy_smelter.recipeMap
    .recipeBuilder()
    .duration(300)
    .inputs(<gregtech:meta_dust:25> * 6, <gregtech:meta_dust:112> * 2, <gregtech:meta_ingot:55> * 1, <minecraft:coal> * 1)
    .outputs(<gregtech:meta_ingot:2037> * 1) // potin
    .buildAndRegister();*/

// no eu recipes dont work with mbt