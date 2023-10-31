import gregtech.api.metatileentity.multiblock.CleanroomType
import net.minecraft.item.ItemStack
import net.minecraft.item.Item

lcr = recipemap('large_chemical_reactor')
ebf = recipemap('electric_blast_furnace')
pbf = recipemap('primitive_blast_furnace')
chemical_reactor = recipemap('chemical_reactor')
fluid_solidifier = recipemap('fluid_solidifier')
forge_hammer = recipemap('forge_hammer')
canner = recipemap('canner')
compressor = recipemap('compressor')
assembler = recipemap('assembler')

canner.recipeBuilder()
    .inputs(item('minecraft:glass_bottle'))
    .fluidInputs(fluid('beer') * 100)
    .outputs(item('gregtechfoodoption:gtfo_meta_item', 220))
    .duration(30)
    .EUt(12)
    .buildAndRegister()

compressor.recipeBuilder()
    .inputs(item('modpack:cokeclaymixture') * 3)
    .outputs(item('gregtech:meta_item_1', 350) * 3)
    .duration(80)
    .EUt(4)
    .buildAndRegister()    

pbf.recipeBuilder() // steel
    .inputs(item('gregtech:meta_dust', 324))
    .outputs(item('gregtech:meta_ingot', 324))
    .duration(1800)
    .buildAndRegister()

crafting.addShapeless('cokeclaymixture', item('modpack:cokeclaymixture') * 3, 
[item('minecraft:clay_ball'), 
item('minecraft:clay_ball'), 
item('minecraft:clay_ball'),
item('minecraft:sand'),
item('minecraft:sand'),
item('minecraft:sand'),
item('minecraft:sand'),
item('minecraft:sand'),
item('minecraft:sand')])