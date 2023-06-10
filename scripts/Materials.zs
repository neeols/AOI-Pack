#loader gregtech

import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;

// enderio

var pulsating_iron = MaterialBuilder(22001, "pulsating_iron") //Pulsating Iron
    .ingot()
    .color(0xCEFFC2)
    .flags(["generate_plate", "generate_foil", "generate_fine_wire"])
    .iconSet("shiny")
    .cableProperties(8, 2, 0, true)
    .build();

var conductive_iron = MaterialBuilder(22002, "conductive_iron") //Conductive Iron
    .ingot()
    .color(0xFFD4D4)
    .flags(["generate_plate", "generate_foil", "generate_fine_wire"])
    .iconSet("shiny")
    .cableProperties(32, 2, 0, true)
    .build();

var energetic_alloy = MaterialBuilder(22003, "energetic_alloy") //Energetic Alloy
    .ingot()
    .color(0xFF970F)
    .flags(["generate_plate", "generate_foil", "generate_fine_wire"])
    .iconSet("shiny")
    .cableProperties(128, 2, 0, true)
    .build();

var vibrant_alloy = MaterialBuilder(22004, "vibrant_alloy") //Vibrant Alloy
    .ingot()
    .color(0x8CFF6A)
    .flags(["generate_plate", "generate_foil", "generate_fine_wire"])
    .iconSet("shiny")
    .cableProperties(512, 2, 0, true)
    .build();

var soularium = MaterialBuilder(22005, "soularium") //Soularium
    .ingot()
    .color(0xBFBFA1)
    .flags(["generate_plate", "generate_foil", "generate_fine_wire"])
    .iconSet("dull")
    .build();

var electrical_steel = MaterialBuilder(22006, "electrical_steel") //Electrical Steel
    .ingot()
    .color(0x665E5E)
    .flags(["generate_plate"])
    .iconSet("metallic")
    .build();

var dark_steel = MaterialBuilder(22007, "dark_steel") //Dark Steel
    .ingot()
    .color(0x333333)
    .flags(["generate_plate"])
    .components([<material:steel> * 1, <material:obsidian> * 1])
    .iconSet("metallic")
    .build();

var redstone_alloy = MaterialBuilder(22008, "redstone_alloy") //Redstone 
    .ingot()
    .color(0x6F2227)
    .components([<material:redstone> * 1, <material:silicon> * 1])
    .iconSet("shiny")
    .build();

var end_steel = MaterialBuilder(22009, "end_steel") //Redstone 
    .ingot()
    .color(0x7A7A61)
    .components([<material:steel> * 1, <material:obsidian> * 1])
    .iconSet("metallic")
    .cableProperties(2048, 2, 0, true)
    .build();
