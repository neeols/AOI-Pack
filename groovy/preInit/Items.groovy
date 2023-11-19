import net.minecraft.item.EnumRarity
import net.minecraft.item.ItemStack
import net.minecraft.init.MobEffects
import net.minecraft.potion.PotionEffect
import net.minecraft.potion.Potion
import net.minecraft.item.Item
import static Util.createItem
import static Util.createBlock

def creativeTab = content.createCreativeTab("modpack.creative_tab", item("minecraft:sand"))
content.setDefaultCreativeTab(creativeTab)

createItem("cokeclaymixture")
createItem("steammotor")
createItem("steampiston")

createBlock("refractorycement")
createBlock("refractorycementbricks")