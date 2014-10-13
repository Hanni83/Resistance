/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],
	
	["vin", 1400, 0, 1750, 4, 2,
		[
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["champagne",1],
			["cigarette",1],
			["poterie",1],
            ["cigarette",1],
            ["cigare",1],
            ["acier",1],
            ["acierino",1],
            ["biere",1],
            ["rubistaille",1],
            ["barreor",1]
		]
	],
	
	["iron_r", 1800, 0, 2300, 4, 4,  
		[ 
			["diamondc",1],
			["copper_r",1],
			["champagne",1],
			["cigarette",1],
			["poterie",1],
            ["cigarette",1],
            ["cigare",1],
            ["acier",1],
            ["acierino",1],
            ["biere",1],
            ["rubistaille",1],
            ["barreor",1],
            ["vin",1]
		] 
	],
	
	["diamondc", 2100, 0, 2500, 4, 2, 
		[ 
			["iron_r",1],
			["copper_r",1],
			["champagne",1],
			["cigarette",1],
			["poterie",1],
            ["cigarette",1],
            ["cigare",1],
            ["acier",1],
            ["acierino",1],
            ["biere",1],
            ["rubistaille",1],
            ["barreor",1],
            ["vin",1]
		] 
	],
	
	["copper_r", 1400, 0, 2000, 4, 4,
		[ 
			["diamondc",1],
			["iron_r",1],
			["champagne",1],
			["cigarette",1],
			["poterie",1],
            ["cigarette",1],
            ["cigare",1],
            ["acier",1],
            ["acierino",1],
            ["biere",1],
            ["rubistaille",1],
            ["barreor",1],
            ["vin",1]
		] 
	],
	
	["champagne", 3200, 0, 3750, 4, 3,
		[ 
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["cigarette",1],
			["poterie",1],
            ["cigarette",1],
            ["cigare",1],
            ["acier",1],
            ["acierino",1],
            ["biere",1],
            ["rubistaille",1],
            ["barreor",1],
            ["vin",1]
		] 
	],
	
	["poterie", 950, 0, 1250, 4, 3,
		[ 
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["champagne",1],
			["cigarette",1],
            ["cigarette",1],
            ["cigare",1],
            ["acier",1],
            ["acierino",1],
            ["biere",1],
            ["rubistaille",1],
            ["barreor",1],
            ["vin",1]
		] 
	],
	
	["cigarette", 1300, 0, 1700, 4, 3,
		[ 
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["champagne",1],
			["cigarette",1],
			["poterie",1],
            ["cigare",1],
            ["acier",1],
            ["acierino",1],
            ["biere",1],
            ["rubistaille",1],
            ["barreor",1],
            ["vin",1]
		] 
	],
    
    ["cigare", 1800, 0, 2300, 4, 3,
		[ 
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["champagne",1],
			["cigarette",1],
			["poterie",1],
            ["cigarette",1],
            ["acier",1],
            ["acierino",1],
            ["biere",1],
            ["rubistaille",1],
            ["barreor",1],
            ["vin",1]
		] 
	],
    
    ["acier", 2700, 0, 3200, 4, 3,
		[ 
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["champagne",1],
			["cigarette",1],
			["poterie",1],
            ["cigarette",1],
            ["cigare",1],
            ["acierino",1],
            ["biere",1],
            ["rubistaille",1],
            ["barreor",1],
            ["vin",1]
		] 
	],
    
    ["acierino", 7500, 0, 9500, 4, 3,
		[ 
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["champagne",1],
			["cigarette",1],
			["poterie",1],
            ["cigarette",1],
            ["cigare",1],
            ["acier",1],
            ["biere",1],
            ["rubistaille",1],
            ["barreor",1],
            ["vin",1]
		] 
	],
    
    ["biere", 2100, 0, 2600, 4, 3,
		[ 
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["champagne",1],
			["cigarette",1],
			["poterie",1],
            ["cigarette",1],
            ["cigare",1],
            ["acier",1],
            ["acierino",1],
            ["rubistaille",1],
            ["barreor",1],
            ["vin",1]
		] 
	],
    
    ["rubistaille", 1800, 0, 2200, 4, 3,
		[ 
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["champagne",1],
			["cigarette",1],
			["poterie",1],
            ["cigarette",1],
            ["cigare",1],
            ["acier",1],
            ["acierino",1],
            ["biere",1],
            ["barreor",1],
            ["vin",1]
		] 
	],
    
    ["barreor", 2800, 0, 3300, 4, 3,
		[ 
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["champagne",1],
			["cigarette",1],
			["poterie",1],
            ["cigarette",1],
            ["cigare",1],
            ["acier",1],
            ["acierino",1],
            ["biere",1],
            ["rubistaille",1],
            ["vin",1]
		] 
	],
/////////////////////////Illégal
	
	["turtle", 17000, 0, 19000, 4, 4,  
		[ 
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1],
            ["mescaline",1],
            ["mdma",1],
            ["speedball",1]
		] 
	],

	["marijuana", 2000, 0, 2500, 4, 4,   
		[ 
			["cocainep",1],
			["heroinp",1],
            ["mescaline",1],
            ["mdma",1],
            ["speedball",1],
            ["turtle",1]
		] 
	],
	
	["cocainep", 5000, 0, 5500, 4, 4,   
		[ 
			["marijuana",1],
			["heroinp",1],
            ["mescaline",1],
            ["mdma",1],
            ["speedball",1],
            ["turtle",1]
		] 
	],

	["heroinp", 4600, 0, 5000, 4, 4,   
		[ 
			["marijuana",1], 
			["cocainep",1],
            ["mescaline",1],
            ["mdma",1],
            ["speedball",1],
            ["turtle",1]
		] 
	],
    
    ["mescaline", 2400, 0, 3000, 4, 4,   
		[ 
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1],
            ["mdma",1],
            ["speedball",1],
            ["turtle",1]
		] 
	],
    
    ["mdma", 3000, 0, 3500, 4, 4,   
		[ 
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1],
            ["mescaline",1],
            ["speedball",1],
            ["turtle",1]
		] 
	],
    
    ["speedball", 24000, 0, 25500, 4, 4,   
		[ 
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1],
            ["mescaline",1],
            ["mdma",1],
            ["turtle",1]
		] 
	]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

//SYNC PRICES WITH SERVER IF EMPTY
if(isNil("life_market_prices")) then
{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Prix du marché généré !";
};
