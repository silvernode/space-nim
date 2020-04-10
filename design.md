# Space Nim Design Doc  

The purpose of this document is to plan and detail the goals, features, scope and overall design of the game. 

# 1. Game Mechanics
> ## 1.1. Concept  

In space Nim, the primary focus is trading commodities and exploring space to find items which can be traded. Space stations are the places where the player can trade items in exchange for credits (currency). 

> ## 1.2. Space Travel  

Traveling in space is limited to exploration and between stations. Exploration is based on random numbers that determine what items are encountered and the amount of those items. If the option to explore is selected, this will trigger a function that rolls a dice to determine what item the player is found. The player then shown how many turns they can use to gather the discovered item. The player can choose to use all available turns, a portion of available turns, or skip the turns entirely to continue exploration. 

> ## 1.3. Trading 

Trading will happen between space stations which will have different prices for goods based on supply and demand. Stations will also have services that the player can use such as exploration enhancements that increase chances of finding valuable items in space while exploring.  


> ## 1.4. Stations  

Each station will have a number of goods and each good will have a quantity. If a player purchases a good, the quantity of that good decreases. If the quantity reaches zero, then the station will list that good as in demand. The player can see which stations are in demand for a particular item by pressing information key (I). 

> ## 1.5. Player

A player is constructed using the 'Character' type, which has the following properties:  

* Name
* Location
* State
* Credits
* Ship

**Name:** Player name (string), ex. "John"  
**Location:** Current location of player (string), ex. "Solo Station"  
**State:** Current condition of player (string), ex. "Mining"  
**Credits:** Amount of money player has (int)  
**Ship:** Current ship player has (Ship), ex.  Yolen  

The *name* property can be set when starting the game while other properties are dependant on progression and set based on interaction with the game word. 


# 2. Gameplay  

The game starts with choosing the name of the player character. From there, the player will be given a ship which will be described on the screen (name, stats), on the same screen, the player will be choose a station from a list as the starting location. Once a station is chosen, the screen will show menu options for that that station. The player can choose to buy, sell, or leave. The buy menu shows the station goods and their quantities, and the sell menu will show goods in the players inventory that they player can sell to the station. If the player chooses to leave the station, they will be shown the travel screen which will list explore, and stations. If the player selects explore, they are taken to a screen that starts and automatic process of finding items which can be sold at stations. If the player selects stations, a list of nearby stations will be shown relative to the players' x,y location.

Exploration also has the chance to encounter an enemy which the player will battle. The combat screen will be interactive in much of the same way combat works in Pokemon games. The Ship of the player will have different turrets which can be selected during combat. If the player wins the battle, items may be dropped from the enemy. If the player loses combat, then one random item in the ship inventory will be discarded and the player will be taken to the nearest space station. 


