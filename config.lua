Config = {}

Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

-- GERAL
Config.general = {
	manettes = true
}
-- GPS RÁPIDO
Config.poleemploi = {x = -259.0, y = -974.6, z = 31.2}
Config.comico = {x = 430.9, y = -980.2, z = 31.7}
Config.hopital = {x = 1150.1, y = -1508.1, z = 34.692}
Config.concessionnaire = {x = -44.3, y = -1109.7, z = 26.4}

-- Abra o menu pessoal
Config.esx_menupessoal = {
	clavier = Keys["F5"],
	manette1 = Keys["SPACE"],
	manette2 = Keys["TOP"]
}
-- Abra o menu do trabalho
Config.menujob = {
	clavier = Keys["F6"],
	manette1 = Keys["SPACE"],
	manette2 = Keys["DOWN"]
}
-- TP no marcador
Config.TPMarker = {
	clavier1 = Keys["LEFTSHIFT"],
	clavier2 = Keys["E"],
	manette1 = Keys["LEFTSHIFT"],
	manette2 = Keys["E"]
}
-- Levante as mãos
Config.handsUP = {
	clavier = Keys["~"],
	manette1 = Keys["RIGHT"],
	manette2 = Keys["F2"]
}
-- Apontar um dedo
Config.pointing = {
	clavier = Keys["B"],
	manette = Keys["B"]
}
-- S'acroupir
Config.agachar-se = {
	clavier = Keys["LEFTCTRL"],
	manette = Keys["LEFTCTRL"]
}
