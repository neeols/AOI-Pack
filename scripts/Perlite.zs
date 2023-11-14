#priority 500
 
import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.IBlockEvent;
import crafttweaker.world.IWorld;
import crafttweaker.util.IRandom;

events.onBlockHarvestDrops(function (event as BlockHarvestDropsEvent) {
	if ("minecraft:obsidian".matches(event.block.definition.id)) {
		if (event.silkTouch) {
			event.drops = [<minecraft:obsidian>];
		} else {
			event.addItem(<minecraft:obsidian>);
			event.addItem(<gregtech:meta_dust:2001>); // perlite dust
		}
	}  
});