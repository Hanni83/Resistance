waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

_rscLayer = "statusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["statusBar","PLAIN"];
systemChat format["[Résistance] Chargement des paramètres ...", _rscLayer];
[] spawn {
sleep 5;
_counter = 180;
_timeSinceLastUpdate = 0;
while {true} do
{
sleep 1;
_counter = _counter - 1;
((uiNamespace getVariable "statusBar")displayCtrl 1000)ctrlSetText format["Resistance | FPS: %1 | Cops: %2 | Civs: %3 | Medics: %4 | Argent: %5 | Banque: %6 | GRIDREF: %7", round diag_fps, west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits,[life_cash] call life_fnc_numberText,[life_atmcash] call life_fnc_numberText,mapGridPosition player, _counter];
};
};;