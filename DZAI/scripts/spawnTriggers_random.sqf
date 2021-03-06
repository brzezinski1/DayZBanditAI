/*
	spawnTriggers_random

	Usage: 
	Description: 
	
	Last updated: 7:40 PM 6/10/2013
*/
private ["_numTriggers","_trigOnAct","_triggerRadius","_patrolRadius"];
if (!isServer) exitWith {};

_numTriggers = _this select 0;							//Number of triggers to create

if (_numTriggers == 0) exitWith {};						// Exit script if there is nothing to spawn

_triggerRadius = 600;
_patrolRadius = 300;

_trigOnAct = format["[%1,thisTrigger,thisList] call fnc_spawnBandits_random_NR",_patrolRadius];

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Spawning %1 dynamic trigger spawns in 60 seconds (spawnTriggers_random).",_numTriggers];};

sleep 60;

for "_i" from 1 to _numTriggers do {
	private ["_trigger","_trigPos"];
	_trigPos = [(getMarkerPos DZAI_centerMarker),random(DZAI_centerSize),random(360),false,[1,500]] call SHK_pos;
	_trigger = createTrigger ["EmptyDetector",_trigPos];
	_trigger setTriggerArea [_triggerRadius, _triggerRadius, 0, false];
	_trigger setTriggerActivation ["ANY", "PRESENT", true];
	_trigger setTriggerTimeout [5, 10, 30, true];
	_trigger setTriggerStatements ["{isPlayer _x} count thisList > 0;",_trigOnAct, "[thisTrigger] spawn fnc_despawnBandits_NR;"];
	if (DZAI_debugMarkers == 1) then {													//Adjust to debugLevel > 1
		private ["_markername","_marker"];
		_markername = format["trigger_%1",_trigger];
		_marker = createMarker[_markername,_trigPos];
		_marker setMarkerShape "ELLIPSE";
		_marker setMarkerType "Flag";
		_marker setMarkerBrush "SOLID";
		_marker setMarkerSize [_triggerRadius, _triggerRadius];
		_marker setMarkerColor "ColorYellow";
		_marker setMarkerAlpha 0.8;		//Dark yellow = Trigger in ready state.
	};
	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Dynamic trigger %1 of %2 spawned at %3 (spawnTriggers_random). Next trigger spawning in %4 seconds.",_i,_numTriggers,_trigPos,DZAI_dynSpawnDelay];};
	DZAI_curDynTrigs = DZAI_curDynTrigs + 1;
	DZAI_dynTriggerArray set [(count DZAI_dynTriggerArray),_trigger];
	sleep DZAI_dynSpawnDelay;
};
[] execVM '\z\addons\dayz_server\DZAI\scripts\dynTrigger_manager.sqf';
