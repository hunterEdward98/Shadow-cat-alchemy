# Shadow-cat-alchemy

INTRODUCTION

	Setting:

	In A Familiar's Job you are Ferox, the shadowy-feline familiar of Cervega, the Wizard.  As his loyal familiar you would do anything to help Cervega and that anything is usually slaying rats!  These alchemical abominations plague the walls of your lab and disrupt the Wizard's rituals every chance they get. 


	Objective:
	
	Hold the rats off long enough so that Cervega can complete his longevity ritual.  They will try to distract the Wizard and destroy your lab.  If Cervega is not able to complete the ritual within ten minutes YOU BOTH DIE!


	Game Play:

	A Familiar's Job is takes place in an alchemical laboratory.  Rats will spawn and seek out objectives to assault or candles to light with their flaming eyes.  Stop them with your sharp claws and deadly pounce!  

	Beware the light!  As a creature of shadow you are weaker the brighter your surroundings, but the inverse is also true.


TECHNICAL

	This game is designed to be release on Windows PC.

	Software Tools:
Gamemaker Studio:
Korg DS-10: for music
Apache Open Office: text


CONCEPTS

	Genres:  Single-player, Arcade, beat-em-up

	Overview:

	The player controls a Shadow-cat as it chases rats around a  magical laboratory.  Meanwhile a Wizard will be visiting one of 5 stations within the laboratory.  The Wizard will need to visit 30 stations within the ten minutes of the round to compete the ritual and win the game.  Otherwise the Wizard will die which means his familiar will fade into oblivion.  (This means the Wizard can't spend more than an average of 20 seconds at each station.)

	Rats will oppose your efforts by destroying the stations in specific ways.  They will also thwart the player by increasing the light level.  The Shadow-cat will fade from existence if the light level gets too high, but on the way the brighter the lab gets the slower and weaker the cat becomes.  


	Theme: (Shadow + Alchemy)

	A Familiar's Job references the themes in rather literal ways.  The setting is an alchemical laboratory and the game's objective is completing an alchemy ritual.  As for shadow it is the stuff the main character is made out of.  Beyond that shadow, and its absence, are a critical game mechanic that dictates the vitality of the main character.


GAME MECHANICS

	Primary Mechanics:

	The Shadow-cat has 4 actions; Pounce, Stalk, Slash and Hack.

	Pounce:  Left clicking will cause the Shadow-cat to leap to the clicked area (or as close as it can, light level dependent) and do damage to any rats in the immediate area.  This is the main method of movement and attack.

	Stalk: The WASD keys will allow the Shadow-cat to move in a linear manner, albeit much slower.  This will also be Stealth-mode, making it more likely the rats will not notice the Shadow-cat (also light level dependent).  The Shadow-cat will kill any rat it pounces or slashes if it is undetected.

	Slash:  Right clicking will trigger a claw attack.  This attack has a limited range and is 50% as damaging compared to Pounce, but is also a much faster attack.

	Hack: Spacebar will trigger the Shadow-cat's ranged attack.  It will function to trap rats in a hairball, but it's primary use is to put out the candles and lower the light level.


	Enemy Mechanics:

	The Rats have 4 actions: Scamper, Bite, Flaming Eyes and Destroy.

	Scamper: The Rats moves in a zig-zag pattern with lots of pauses and random speeds. This only lasts until the rat detects an objective (Any non-rat game object).  At that point it will b-line for the game object and use Destroy if it is a laboratory feature, Bite it if is the Wizard or the Shadow-cat and Flaming Eyes if it is a candle.

	Bite:  The Rat chomps (melee range) on the Shadow-cat or the Wizard.  
If the Wizard is bit he jumps away from his current objective.
If the Shadow-cat is bit it cannot take actions for .5 seconds(???).

	Flaming Eyes:  The Rat's eyes glow for ~2 seconds before a small fireball blasts towards the targeted candle.  If the Shadow-cat is hit its movement speed is reduced by 90% for 3 seconds.

	Destroy:  The Rat ruins whatever Lab Feature it has reached.  The animation is specific to the Lab Feature.  The more damage a feature has taken the longer each action of the ritual will take at that feature.


	Environmental Mechanics:

	Light Levels:  
1. None:  0 Candles. 
Pounce range at max / full-screen.
Movement speed +200%
All attacks are critical hits / instant-kills.
You only see the eyes of the Shadow-cat and the rats. 
2. Dim:	1-3 Candles.
Pounce range +25% / half-screen.
Movement speed +50%
3. Even:	4-6  Candles.
Default pounce range and movement speed.
4. Bright:	7-9  Candles.
Pounce range -50%
Movement speed -100%
5. Blinding:  Game Over!

	Rat Holes:  Spawn points for, you guessed it, the rats.


	Laboratory Features:

	There are 5 features in the laboratory.  These functions as the Wizard's objectives for the ritual.  The Wizard and the Rats have specific animations at each feature that define how they interact with it.

	The Cauldron: The Lab's centerpiece. 
The Wizard will STIR the Cauldron. 
The Rat will JUMP into the Cauldron, contaminating it. 

	The Bookshelf: Where all The Wizard's Grimoires are at. 
The Wizard will READ at the Bookshelf.  
The Rat will GNAW on the Grimoires, destroying them. 

	The Potion Shelf: A stack of shelves brimming with colorful potions. 
The Wizard will BREW at the Potion Shelf.  
The Rat will SMASH items in the Potion Shelf. 

	The Mushroom Garden: The Lab's centerpiece. 
The Wizard will PICK ingredients from the Garden. 
The Rat will DEVOUR ingredients in the Garden. 

	The Magic Circles: Ornate and arcane symbols arranged in circles.
The Wizard will CHANNEL magical energy at the Magic Circles. 
The Rat will DESECRATE the Magic Circles. 
	

ART
	A Familiar's Job will use pixel graphics throughout.  

	The color scheme will be rather dark to reflect a dingy secret laboratory but also to reflect the importance of shadow as the cat's natural environment.  As the lighting level increases the color palette will get more desaturated until the white screen of death.

AUDIO

GAME EXPERIENCE

	UI:
	
	Beyond the opening screen there will be no menus.  Only a key guide for the Shadow-cat's action list.  Other views will be a Victory and Defeat screen.

	Controls:

	Mouse and Keyboard.


DEVELOPMENT SCHEDULE

	We'll get there!


STRETCH GOALS

The Wizard can create a stock of potions at the alchemy table and will do so using ingredients from the garden.
The Shadow-cat can use these potions to power up in various ways.
Each station in the laboratory has its own unique game element.
There are different rituals which will have different effects on gameplay.
Shadows of game elements will be worked into the Shadow-cat's movement.
