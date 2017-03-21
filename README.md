# QuesTBC
A very humble fork of the Questie Addon, created by Aero, Schaka, Logonz, Dyaxler, and more.

# Why a separate repository and not a fork?
This addon, firstly, will work solely with TBC. That is so we can better understand the formats and such. The slash command will be retitled /questbc so that you can use the old-world and outland version concurrently.

# Credits to the fantastic original authors
I am --in no way-- the author of this fantastic addon. Those credits go to: Aero, Schaka, Logonz, Dyaxler, and more.
The original repository can be found at: https://github.com/AeroScripts/QuestieDev

I am making this addon with love, to spread the wonder of open source, and enjoy what open source allows us as developers. This addon is not made with any ill intent towards the original developers, if you want to thank anyone for the Questie or QuesTBC addon - thank them, not me.

# What do I need you to do?
At this stage, I am just reverse engineering the addon so that I can understand the data structures currently being used.
An example of how the documentation is formatted:

First and foremost, fork this project. Start working on some documentation, and when you're done, send a pull request.
Put the documentation inside ./documentation/whichDB.lua - where whichDB is one of: addendum, events, finishers, items, monsters, objects, zone.

Don't do 'items', because that's what I am currently doing.

Then:
1) Create a new LUA document
2) Use -- (comment) to talk about something
3) Use ---- (n-comment) where n is the depth, to talk about the comment above it.
4) Format the documentation as such:

```lua
--QuestieItems is an associative array which stores all items Questie has knowledge of.
QuestieItems = { };
--What follows is all possible entries in 'QuestieItems'

--"locations" is an indexed array of up to length 5, each element containing an array with x,y,z and ???
--locations is always followed by another element called "locationCount" which is a count of the locations.
QuestieItems = {
  ["Presencia de Voren'thal"] = {
    ["locations"] = {
      [1] = {59.0, 0.3003, 0.1519, 100.0}, --it stores 5 locations - even if there is more
      [5] = {52.0, 0.926, 0.5837, 3.0},    --if it only has 5, then its 1,5,3,4,2
      [3] = {60.0, 0.4575, 0.8267, 45.0},  --if it only has 4, then its 1,3,4,2
      [4] = {60.0, 0.6708, 0.5628, 45.0},  --if it only has 3, then its 1,3,2
      [2] = {60.0, 0.5938, 0.6078, 92.0}   --if it only has 2, then its 1,2
    },
    ["locationCount"] = 5
  }
}

--"drop" is an associative array, which contains an n length array of each mob to drop it, and those elements store an integer refering to the items position on that mobs loot table. 
QuestieItems = {
	["Snickerfang Jowl"] = {
		["drop"] = {
		["Starving Snickerfang"] = 5, --The Jowl drops off Snickerfang, it's his 5th item on his loot table.
		["Snickerfang Hyena"] = 9 --The Jowl drops off Hyena, it's his 9th item on his loot table.
		}
  	},
}
```

After that, just send a pull request once you've documented a database!

After each database is documented, I will build a program in C++ or C# that will extract the respective data (for that db, e.g. items, monsters, etc.), and put it in the format we just documented.
Then, I will run a validator to ensure that the output is correct.


Once everything is together, we can test it, then fix lua errors.
We'll test it e.g. with just 1 quest, probably the first quest in Elwynn.


Anyway, I CANT DO THIS ALONE. This is a big addon. I'll need help.
If you want to help, send me a message, or just fork this project!
