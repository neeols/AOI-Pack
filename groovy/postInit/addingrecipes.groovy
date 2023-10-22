import gregtech.api.metatileentity.multiblock.CleanroomType
import net.minecraft.item.ItemStack
import net.minecraft.item.Item

lcr = recipemap('large_chemical_reactor')
ebf = recipemap('electric_blast_furnace')
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
