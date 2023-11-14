import gregtech.api.unification.material.event.PostMaterialEvent
import gregtech.api.unification.material.event.MaterialEvent
import gregtech.api.unification.material.Material
import gregtech.api.unification.Elements
import gregtech.api.unification.material.properties.ToolProperty
import gregtech.api.unification.material.properties.BlastProperty
import gregtech.api.fluids.fluidType.FluidType

//28501-29000

event_manager.listen { MaterialEvent event ->
    new Material.Builder(28501, resource("modpack","limestone"))
        .dust()
        .color(0xdcd8c7)
        .components(material('calcium') * 1, material('carbon') * 1, material('oxygen') * 3)
        .build()

    new Material.Builder(28502, resource("modpack","burnedlimestone"))
        .dust()
        .color(0x999171)
        .components(material('calcium') * 1, material('oxygen') * 1)
        .build()

    new Material.Builder(28503, resource("modpack","firecement"))
        .dust()
        .color(0x957469)
        .components()
        .build()
}

event_manager.listen { PostMaterialEvent event ->
    def firecement = material('firecement')
    firecement.setFormula("(SiO2)3(CaO)", true) // set formula
}