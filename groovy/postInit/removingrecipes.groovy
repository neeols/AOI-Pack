// Sulfuric Acid * 1000
mods.gregtech.large_chemical_reactor.removeByInput(480, [metaitem('dustSulfur'), metaitem('circuit.integrated').withNbt(["Configuration": 24])], [fluid('water') * 4000])
// Sulfuric Acid * 1000
mods.gregtech.chemical_reactor.removeByInput(7, null, [fluid('sulfur_trioxide') * 1000, fluid('water') * 1000])
// Sulfuric Acid * 1000
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('hydrogen_sulfide') * 1000, fluid('oxygen') * 4000])
// Sulfur Dioxide * 1000
mods.gregtech.chemical_reactor.removeByInput(7, [metaitem('dustSulfur'), metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('oxygen') * 2000])
// White Wine * 2000
mods.gregtech.fermenter.removeByInput(4, null, [fluid('gtfo_macerated_white_grapes') * 8000])
// Red Wine * 8000
mods.gregtech.fermenter.removeByInput(2, null, [fluid('gtfo_alcoholic_red_grape_juice') * 8000])
// Bio Chaff * 1
mods.gregtech.compressor.removeByInput(24, null, [fluid('gtfo_fermented_red_grapes_must') * 1000])
// Fermented Red Grapes Must * 8000
mods.gregtech.fermenter.removeByInput(8, null, [fluid('gtfo_red_grapes_must') * 8000])
// Plant Ball * 1
mods.gregtech.compressor.removeByInput(16, [item('gregtechfoodoption:gtfo_meta_item', 124) * 8], null)
// Beer * 1
mods.gregtech.canner.removeByInput(12, [item('minecraft:glass_bottle')], [fluid('gtfo_poor_quality_beer') * 100])
// Vodka * 2000
mods.gregtech.fermenter.removeByInput(8, null, [fluid('gtfo_potato_juice') * 2000])