"Midnight at the Animal Shelter" by Mirta Vukovic

Release along with an interpreter.

The power-is-on is a truth state that varies. The power-is-on is false.
The Kiwi-is-talking is a truth state that varies. The Kiwi-is-talking is false.

The Reception is a room.
The description is "The main lobby. Dragec the guard is slumped in his chair. Exit is north, Animal Ward east, and Staff Office south."

The Yard is a room.
The description is "Fresh air! You have successfully saved the shelter!"

The Animal Ward is a room. It is east of the Reception.
The description is "A large room with enclosures. To the south is a wooden closet door."

The Janitor's Closet is a room.
The description is "A small, dark supply closet where Nevenka was trapped."

The Staff Office is a room. It is south of the Reception.
The description is "A cluttered office. A ladder leads up to the attic. Kiwi the parrot is perched on a shelf."

The Attic is a room. It is above the Staff Office.
The description is "A dusty space containing the main electrical fusebox."

The exit door is a door.
It is north of the Reception and south of the Yard.
It is closed and locked.

The closet door is a door.
It is south of the Animal Ward and north of the Janitor's Closet.
It is closed and locked.


The flashlight is in the Reception.
The squeaky toy is in the Reception.

The dog blanket is in the Staff Office.
The cat food is in the Staff Office.
The coffee mug is in the Staff Office.
The dog treat is in the Staff Office.
The fuse is in the Staff Office.

The Master Key is a thing.
Dragec carries the Master Key.

The exit key is a thing.


Dragec is a man in the Reception.
Dragec can be asleep or awake. Dragec is asleep.

Nevenka is a woman in the Janitor's Closet.
Nevenka can be trapped or rescued. Nevenka is trapped.

Nara is an animal in the Animal Ward.
Nara can be calm or nervous. Nara is nervous.
The description of Nara is "A small, shivering dog. She looks terrified of the dark."

Ref is an animal in the Animal Ward.
Ref can be relaxed or restless. Ref is restless.
The description of Ref is "A large German Shorthaired Pointer, pacing anxiously."

Rex is an animal in the Animal Ward.
Rex can be barking or quiet. Rex is barking.
The description of Rex is "A loud German Shepherd barking at shadows."

Zumi is an animal in the Animal Ward.
Zumi can be running or still. Zumi is running.
The description of Zumi is "A tiny poodle spinning in frantic circles."

Rea is an animal in the Staff Office.
Rea can be fed or hungry. Rea is hungry.
The description of Rea is "A sleek office cat staring at an empty bowl."

Kiwi is an animal in the Staff Office.
The description of Kiwi is "A colorful parrot who seems eager to talk."


Rousing is an action applying to one visible thing.
Understand "wake [someone]" or "wake up [someone]" or "rouse [someone]" as rousing.

Petting is an action applying to one visible thing.
Understand "pet [someone]" or "pet [something]" as petting.

Feeding is an action applying to one thing.
Understand "feed [someone]" or "feed [something]" as feeding.

Talking-to is an action applying to one visible thing.
Understand "talk to [someone]" or "speak to [someone]" or "listen to [someone]" as talking-to.

Scratching is an action applying to one visible thing.
Understand "scratch [someone]" or "scratch [something]" as scratching.


Instead of giving the coffee mug to Dragec:
	now Dragec is awake;
	move the Master Key to the player;
	say "The smell of coffee wakes Dragec up. 'Thanks! Take my Master Key.'";
	remove the coffee mug from play.

Instead of rousing Dragec:
	say "He seems to need coffee."

Instead of scratching Kiwi:
	now Kiwi-is-talking is true;
	say "You scratch Kiwi under the chin. She whispers: 'Nevenka is in the closet! Kick the door!'"

Instead of talking-to Kiwi:
	if Kiwi-is-talking is false:
		say "Kiwi tilts her head. She seems to want some affection first.";
	otherwise:
		say "'Kick the door!' Kiwi squawks again."

Instead of giving the dog blanket to Nara:
	now Nara is calm;
	move the exit key to the player;
	say "Nara calms down. A key falls from her collar!";
	remove the dog blanket from play.

Instead of petting Nara:
	if Nara is nervous:
		say "She's shivering. Maybe she needs a blanket.";
	otherwise:
		say "Nara wags her tail happily."

Instead of giving the squeaky toy to Zumi:
	now Zumi is still;
	say "Zumi stops running and plays with the toy.";
	remove the squeaky toy from play.

Instead of petting Zumi:
	if Zumi is running:
		say "Too fast to pet!";
	otherwise:
		say "Zumi is busy with her toy."

Instead of giving the dog treat to Rex:
	now Rex is quiet;
	say "Rex happily eats the treat and stops barking.";
	remove the dog treat from play.

Instead of petting Rex:
	if Rex is barking:
		say "He's barking too much to be petted.";
	otherwise:
		say "Rex nudges your hand."

Instead of petting Ref:
	now Ref is relaxed;
	say "Ref relaxes and wags his tail."

Instead of feeding Rea:
	if player carries the cat food:
		now Rea is fed;
		say "Rea eats happily.";
		remove the cat food from play;
	otherwise:
		say "You have no food."


The fusebox is a container in the Attic.
It is fixed in place and open.
Understand "fuse box" or "box" as the fusebox.

Instead of inserting the fuse into the fusebox:
	now the power-is-on is true;
	move the fuse to the fusebox;
	say "The power hums back to life!"


Instead of opening the closet door:
	if Kiwi-is-talking is false:
		say "The door is jammed. Maybe someone knows how to open it.";
	otherwise if player does not carry the Master Key:
		say "You need a key.";
	otherwise:
		now Nevenka is rescued;
		move Nevenka to the Animal Ward;
		now the closet door is open;
		say "You kick the door while turning the key. Nevenka is free!"

Instead of opening the exit door:
	if power-is-on is false:
		say "The shelter is still without power.";
	otherwise if Nara is nervous or Rea is hungry or Zumi is running or Nevenka is trapped or Dragec is asleep or Rex is barking or Ref is restless:
		say "Someone still needs help!";
	otherwise if player does not carry the exit key:
		say "You need the exit key.";
	otherwise:
		end the story finally saying "You saved the shelter! Mission accomplished."


When play begins:
	say "Midnight surge! Restore the power and help everyone before you can leave."
