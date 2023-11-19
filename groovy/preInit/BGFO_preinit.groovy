import net.minecraft.item.EnumRarity
import net.minecraft.item.ItemStack
import net.minecraft.init.MobEffects
import net.minecraft.potion.PotionEffect
import net.minecraft.potion.Potion
import net.minecraft.item.Item
import static Util.createItem
import static Util.createBlock

def creativeTab = content.createCreativeTab("modpack.bgfo", item("minecraft:sand"))

createItem("shapebar")
createItem("shapechips")

String [] foods = [
    "methchocolatechipcookie",
    "methcookie",
    "methtoast",
    "methjuice",
    "methshake",
    "methbar",
    "methchip"
]

//    MobEffects.STRENGTH,
//    MobEffects.NAUSEA,
//    MobEffects.SPEED,
//    MobEffects.HASTE

for (String foodName : foods) {
    Item food;

    switch(foodName) {
        case "methchocolatechipcookie":
                                   //int healAmount, float saturation, CreativeTabs creativeTab
            food = new ItemDrug(2, 1, creativeTab).setRarity(EnumRarity.EPIC)

            food.addPotionEffect(MobEffects.SPEED, 400, 3)
            food.addPotionEffect(MobEffects.NAUSEA, 100, 1)
            food.addPotionEffect(MobEffects.HASTE, 300, 3)
            food.addPotionEffect(MobEffects.STRENGTH, 400, 4)
            food.setSyringe(false)
        break

        case "methcookie":
                                   //int healAmount, float saturation, CreativeTabs creativeTab
            food = new ItemDrug(2, 1, creativeTab).setRarity(EnumRarity.EPIC)

            food.addPotionEffect(MobEffects.SPEED, 400, 3)
            food.addPotionEffect(MobEffects.NAUSEA, 100, 1)
            food.addPotionEffect(MobEffects.HASTE, 300, 3)
            food.addPotionEffect(MobEffects.STRENGTH, 400, 4)
            food.setSyringe(false)
        break

        case "methtoast":
                                   //int healAmount, float saturation, CreativeTabs creativeTab
            food = new ItemDrug(2, 1, creativeTab).setRarity(EnumRarity.EPIC)

            food.addPotionEffect(MobEffects.SPEED, 400, 3)
            food.addPotionEffect(MobEffects.NAUSEA, 100, 1)
            food.addPotionEffect(MobEffects.HASTE, 300, 3)
            food.addPotionEffect(MobEffects.STRENGTH, 400, 4)
            food.setSyringe(false)
        break

        case "methjuice":
                                   //int healAmount, float saturation, CreativeTabs creativeTab
            food = new ItemDrug(2, 1, creativeTab).setRarity(EnumRarity.EPIC)

            food.addPotionEffect(MobEffects.SPEED, 400, 3)
            food.addPotionEffect(MobEffects.NAUSEA, 100, 1)
            food.addPotionEffect(MobEffects.HASTE, 300, 3)
            food.addPotionEffect(MobEffects.STRENGTH, 400, 4)
            food.setSyringe(false)
        break

        case "methshake":
                                   //int healAmount, float saturation, CreativeTabs creativeTab
            food = new ItemDrug(2, 1, creativeTab).setRarity(EnumRarity.EPIC)

            food.addPotionEffect(MobEffects.SPEED, 400, 3)
            food.addPotionEffect(MobEffects.NAUSEA, 100, 1)
            food.addPotionEffect(MobEffects.HASTE, 300, 3)
            food.addPotionEffect(MobEffects.STRENGTH, 400, 4)
            food.setSyringe(false)
        break

        case "methbar":
                                   //int healAmount, float saturation, CreativeTabs creativeTab
            food = new ItemDrug(2, 1, creativeTab).setRarity(EnumRarity.EPIC)

            food.addPotionEffect(MobEffects.SPEED, 400, 3)
            food.addPotionEffect(MobEffects.NAUSEA, 100, 1)
            food.addPotionEffect(MobEffects.HASTE, 300, 3)
            food.addPotionEffect(MobEffects.STRENGTH, 400, 4)
            food.setSyringe(false)
        break

        case "methchip":
                                   //int healAmount, float saturation, CreativeTabs creativeTab
            food = new ItemDrug(2, 1, creativeTab).setRarity(EnumRarity.EPIC)

            food.addPotionEffect(MobEffects.SPEED, 400, 3)
            food.addPotionEffect(MobEffects.NAUSEA, 100, 1)
            food.addPotionEffect(MobEffects.HASTE, 300, 3)
            food.addPotionEffect(MobEffects.STRENGTH, 400, 4)
            food.setSyringe(false)
        break
    }

    content.registerItem(foodName, food)
}
