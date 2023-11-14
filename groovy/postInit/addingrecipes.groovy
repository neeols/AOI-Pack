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

crafting.addShapeless('limestonedust', item('gregtech:meta_dust', 28501),
[item('chisel:limestone2', 7), 
ore('craftingToolMortar')])

furnace.add(item('gregtech:meta_dust', 28501), item('gregtech:meta_dust', 28502)) // burned limestone

crafting.addShapeless('firecement', item('gregtech:meta_dust:28503'),
[item('gregtech:meta_dust', 28502), 
item('gregtech:meta_dust', 2525),
item('gregtech:meta_dust', 2525),
item('minecraft:sand')])

crafting.shapedBuilder()
        .name('refractorycement')
        .output(item('modpack:refractorycement') * 5)
        .matrix('   ',
                'ACA',
                'ABA')
        .key('A', ore('dustPerlite'))
        .key('B', item('gregtech:meta_dust', 28503))
        .key('C', item('minecraft:water_bucket'))
        .register()

crafting.shapedBuilder()
        .name('refractorycementbricks')
        .output(item('modpack:refractorycementbricks') * 4)
        .matrix('AA ',
                'AA ',
                '   ')
        .key('A', item('modpack:refractorycement'))
        .register()