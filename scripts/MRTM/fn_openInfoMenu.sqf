/*
	Author: MrThomasM

	Description: Opens the info screen.
*/

if (isNull (findDisplay 7000)) then {
	closeDialog 1;
	createDialog "MRTM_infoMenu";
};
disableSerialization;


private _color = [profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843],profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019],profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862],profilenamespace getvariable ['GUI_BCG_RGB_A',0.7]] call BIS_fnc_colorRGBAtoHTML;
private _settings = actionKeysNames "user2";
private _groups = actionKeysNames "user3";
private _emotes = actionKeysNames "user4";
((findDisplay 7000) displayCtrl 7102) ctrlSetStructuredText composeText [
	parseText format ["<t color='%1' underline='1'>%2</t>", _color, "Capturing values:" splitString " " joinString toString [160]], lineBreak,
	"If the asset isn't mentioned it has 0 capturing power. The crew of a vehicle does not add up to the vehicle's capping power. So a prowler with 4 people inside still only counts for 1.", lineBreak,
	"Infantry - 1 Point", lineBreak,
	"Quad bike - 1 Point", lineBreak,
	"Prowler/Quilin Unarmed - 1 Point", lineBreak,
	"Hunter/Ifrit Unarmed - 1 Point", lineBreak,
	"Logistics trucks - 1 Point", lineBreak,
	"Prowler/Quilin/Offroad AT - 1 Point", lineBreak,
	"Prowler/Quilin/Offroad HMG - 1 Point", lineBreak,
	"Hunter/Ifrit HMG/GMG - 2 Points", lineBreak,
	"Gorgon/Marshall/Panther - 3 Points", lineBreak,
	"Cheetah/Tigris - 4 Points", lineBreak,
	"Rhino MGS (UP) - 4 Points", lineBreak,
	"Slammer (UP) - 4 Points", lineBreak,
	"Sochor/Scorcher - 4 Points", lineBreak,
	"Zamak/Sandstorm - 4 Points", lineBreak,
	"", lineBreak,
	"Strider HMG/GMG - 3 Points", lineBreak,
	"Nyx (all variants) - 4 Points", lineBreak,
	"Kuma/Gorgon/Mora - 5 Points", lineBreak,
	parseText format ["<t color='%1' underline='1'>%2</t>", _color, "Keybinds:" splitString " " joinString toString [160]], lineBreak,
	"Go to you arma settings to use the keybinds: Configure >> Controls >> Custom Controls >> ...", lineBreak,
	parseText format ["Settings keybind, Use Action 2: %1", _settings], lineBreak,
	parseText format ["Groups keybind, Use Action 3: %1", _groups], lineBreak,
	parseText format ["Emotes keybind, Use Action 4: %1", _emotes], lineBreak
];