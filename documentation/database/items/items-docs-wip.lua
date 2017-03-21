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

--"opened"
