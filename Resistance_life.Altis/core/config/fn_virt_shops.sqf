/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Marché Civil",["water","rabbit","redgull","tbacon","lockpick","pickaxe","fuelF","storagesmall","storagebig","figue","charbon","olive","raisin","jusraisin","biere"]]};
	case "rebel": {["Marché Rebelle",["water","rabbit","redgull","tbacon","lockpick","pickaxe","fuelF","boltcutter","blastingcharge","figue","olive","raisin","jusraisin","fence_cut"]]};
	case "gang": {["Marché de Gang", ["water","rabbit","redgull","tbacon","lockpick","pickaxe","fuelF","blastingcharge","boltcutter","figue","olive","raisin","jusraisin","fence_cut"]]};
	case "wongs": {["Restaurant Chinois",["turtlesoup","turtle"]]};
	case "restaurant": {["Restaurant",["coffee","donuts","huileolive","biere"]]};
	case "heroin": {["Dealer de Drogue",["cocainep","heroinp","marijuana","speedball","mdma","mescaline"]]};
	case "tabac": {["Marchand de Tabac",["cigarette","cigare"]]};
	case "fishmarket": {["Marché aux poissons",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "metaux": {["Marchand de Metaux",["iron_r","copper_r","acier","acierino"]]};
	case "bijoux": {["Bijoutier",["diamondc","rubistaille","barreor","or_ag"]]};
	case "cop": {["Marché Policier",["donuts","coffee","spikeStrip","water","rabbit","redgull","fuelF","defusekit","barricade","barrier","gpstracker"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
	case "brasserie": {["Brasseur",["biere","champagne","vin"]]};
	case "caviar": {["Marchand de Caviar",["caviar"]]};
	case "meddealer": {["Medecin Dealer",["morphine"]]};
	case "potier": {["Potier",["poterie"]]};
};