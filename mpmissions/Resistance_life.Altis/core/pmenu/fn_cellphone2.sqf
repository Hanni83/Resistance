

/*
File: fn_cellphone2.sqf
Author: Timo
 
Description:
With no radio cant use Cellphone
*/
 
 
if("ItemRadio" in assignedItems player) then {
createDialog "Life_my_smartphone"; // or /** Life_my_smartphone **\ if you use the SQL Based Smartphone   By Silex ( http://www.altislife...sed-smartphone/ )
}else{
 
hint parseText format ["<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>Pas de Smartphone</t><br/><br/>
<t size='0.90 'font='puristaLight' align='left'>Vous devez avoir avoir un Smartphone (Radio) pour utiliser ce bouton. Vous pouvez acheter le Smartphone dans un magasin</t><br/>"];
};
