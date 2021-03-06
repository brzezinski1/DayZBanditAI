activateAddons [
];

activateAddons [];
initAmbientLife;

_this = createCenter west;
_center_0 = _this;

_group_0 = createGroup _center_0;

_unit_2 = objNull;
if (true) then
{
  _this = _group_0 createUnit ["Survivor3_DZ", [3048.4041, 5551.1494, 0], [], 0, "CAN_COLLIDE"];
  _unit_2 = _this;
  _this setUnitAbility 0.60000002;
  if (true) then {_group_0 selectLeader _this;};
  if (true) then {selectPlayer _this;};
};

_this = createTrigger ["EmptyDetector", [2873.4944, 4976.3965]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Nango";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [4,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_0 = _this;

_this = createTrigger ["EmptyDetector", [3416.9648, 4627.6279]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Road";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_3 = _this;

_this = createTrigger ["EmptyDetector", [3674.8208, 4226.9893]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "ZargabadW";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_5 = _this;

_this = createTrigger ["EmptyDetector", [4262.1069, 4128.3735]];
_this setTriggerArea [300, 300, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "ZargabadCenter";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [4,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_9 = _this;

_this = createTrigger ["EmptyDetector", [4152.8892, 3578.9033, 2.7623634]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Yarum";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_11 = _this;

_this = createTrigger ["EmptyDetector", [3937.438, 2765.1133]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Barracks";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,2,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_13 = _this;

_this = createTrigger ["EmptyDetector", [3512.5876, 1975.5415, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Shahbaz";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_15 = _this;

_this = createTrigger ["EmptyDetector", [4174.6782, 4694.23]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "ZargabadN";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_17 = _this;

_this = createTrigger ["EmptyDetector", [4880.3423, 4551.333]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "The Villa";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_19 = _this;

_this = createTrigger ["EmptyDetector", [4902.1299, 6153.4834, 0]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Military Base";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [4,2,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_21 = _this;

_this = createTrigger ["EmptyDetector", [3968.9099, 6074.7681]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Hazar Bagh";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_23 = _this;

_this = createTrigger ["EmptyDetector", [1965.295, 4659.1294]];
_this setTriggerArea [325, 325, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Azizyt";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [4,2,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_25 = _this;

_this = createTrigger ["EmptyDetector", [4731.5024, 3923.0283]];
_this setTriggerArea [300, 300, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", false];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "ZargabadE";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,300,thisTrigger] call fnc_spawnBandits_bldgs;", ""];
_trigger_27 = _this;

processInitCommands;
runInitScript;
finishMissionInit;
