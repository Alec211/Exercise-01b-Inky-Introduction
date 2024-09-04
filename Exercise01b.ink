/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 * Knot structure
 * Recurring choices
 * Conditionals in descriptions
 * Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance of a cave. {not torch_pickup: There is a torch on the floor.} {not dagger_pickup: There is a small dagger behind a rock.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup
* [Pick up the dagger] -> dagger_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see a thing.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel and begin tasting metal in the air and the air goes stale.
+ [Continue down the west tunnel] -> west_tunnel_trap
+ [Go Back] -> cave_mouth
-> END

== west_tunnel_trap ==
You wandered too far into the west tunnel and ran into a spike trap. You have perished and your body waits for another unfortunate adventurer.
-> END

== torch_pickup ==
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== dagger_pickup ==
You now have a small dagger. It might come in handy.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off the thousands of coins in the room. When dragging your eyes across the landscape of gold, you notice a set of red eyes looking directly at you.
* {dagger_pickup} [Grab Dagger] -> fight_ready
* [Throw your torch at the unknown animal] -> animal_attacked
+ [Go Back] -> east_tunnel
-> END

== fight_ready ==
You equip the dagger, ready for any monsters that come your way.
+ [Go Back] -> east_tunnel_lit
-> END

== animal_attacked ==
Your torch lands right under the beast which is now revealed to be a snake. It almost instantaneously catches on fire and slowly burns. After the chaos dies down, you walk over to the now lifeless corpse and see a crack in the wall with light shining through.
* [Break through the wall with a nearby chest.] -> pond_room
* [Ignore Crack In The Wall] -> east_tunnel_lit
-> END

== pond_room ==
You enter a room where the water level sits just below your ankles. It is surprisingly quite bright and a torch isn't needed anymore. You notice three different paths that lie ahead. Each path has an animal etched into the stone above their doorways. These animals include a Lion, Wolf, and Dragon. What will you do?
* [Toss the torch aside] -> discard_torch
* [Hold onto the torch] -> keep_torch
* [Walk through the doorway with the Lion] -> lion_path
* [Walk through the doorway with the Wolf] -> wolf_path
* [Walk through the doorway with the Dragon] -> dragon_path
+ [Go Back] -> east_tunnel_lit
-> END

== discard_torch ==
You toss your torch aside. Hopefully, you didn't need that!
-> END

== keep_torch ==
You remain holding the torch.
-> END

== lion_path ==
You walk along the path with the lion and stumble upon a room full of fungus. When you take a closer look, it seems that all of these mushrooms are lion's mane and edible.
* [Go Back] -> pond_room
-> END

== wolf_path ==
You carefully move through the wolf's path and see the bones of dead adventurers scattered throughout the room. You stumble onto a pressure plate that drops down a log covered in spikes. You manage to narrowly avoid it, living to see another day.
+ [Go Back] -> pond_room
-> END

== dragon_path ==
You see a red gemstone embedded in a dragon statue. You dig your fingers behind the gemstone and rip it out. The dragon statue fills the room with fire, killing you instantly. Greed gets another adventurer killed.
-> END

== illness ==
You ate the lion's mane mushrooms, not knowing that one of them was a parasitic mushroom that disguised itself. For the next hour as you traverse the cave, you are stumbling and trying to stay awake.
+ [Continue] -> pond_room
-> END
