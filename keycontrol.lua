local GUI = {}
GUI.Time = 0
local ESXMenuIsOpen = false

--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
	while true do
		Wait(0)

--------------------------------------------------------------------------------------------
-- TP MARCKER
--------------------------------------------------------------------------------------------

		if (IsControlPressed(1, Config.TPMarker.clavier1) and IsControlPressed(1, Config.TPMarker.clavier2) and (GetGameTimer() - GUI.Time) > 150) then
			TriggerEvent('ESX:closeAllSubMenu')
			TriggerEvent('ESX:closeAllMenu')
			TriggerEvent('ESX:goTpMarcker')
			GUI.Time  = GetGameTimer()
		end

--------------------------------------- MANETTE
		if Config.general.manettes then
			if (IsControlPressed(2, Config.TPMarker.manette1) and IsControlPressed(2, Config.TPMarker.manette2) and (GetGameTimer() - GUI.Time) > 150) then
				TriggerEvent('ESX:closeAllSubMenu')
				TriggerEvent('ESX:closeAllMenu')
				TriggerEvent('ESX:goTpMarcker')
				GUI.Time  = GetGameTimer()
			end
		end
--------------------------------------------------------------------------------------------
-- Menu personnel -> esx_menupessoal
--------------------------------------------------------------------------------------------

		if (IsControlPressed(1, Config.esx_menupessoal.clavier) and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'menu_perso') and (GetGameTimer() - GUI.Time) > 150) then
			TriggerEvent('ESX:closeAllSubMenu')
			TriggerEvent('ESX:closeAllMenu')
			TriggerEvent('ESX:openesx_menupessoalnnel')
			GUI.Time  = GetGameTimer()
		end

		if (IsControlPressed(1, Config.esx_menupessoal.clavier) and ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'menu_perso') and (GetGameTimer() - GUI.Time) > 150) then
			TriggerEvent('ESX:closeAllSubMenu')
			TriggerEvent('ESX:closeAllMenu')
			GUI.Time  = GetGameTimer()
		end

--------------------------------------- MANETTE

		if Config.general.manettes then
			if (IsControlPressed(2, Config.esx_menupessoal.manette1) and IsControlPressed(0, Config.esx_menupessoal.manette2) and not ESX.UI.Menu.IsOpen('default',  GetCurrentResourceName(), 'menu_perso') and (GetGameTimer() - GUI.Time) > 150) then
				TriggerEvent('ESX:closeAllSubMenu')
				TriggerEvent('ESX:closeAllMenu')
				TriggerEvent('ESX:openesx_menupessoalnnel')
				GUI.Time  = GetGameTimer()
			end

			if (IsControlPressed(2, Config.esx_menupessoal.manette1) and IsControlPressed(0, Config.esx_menupessoal.manette2) and ESX.UI.Menu.IsOpen('default',  GetCurrentResourceName(), 'menu_perso') and (GetGameTimer() - GUI.Time) > 150) then
				TriggerEvent('ESX:closeAllSubMenu')
				TriggerEvent('ESX:closeAllMenu')
				GUI.Time  = GetGameTimer()
			end
		end

--------------------------------------------------------------------------------------------
-- Menu police -> esx_policejob
--------------------------------------------------------------------------------------------

		if (IsControlPressed(1, Config.menujob.clavier) and PlayerData.job ~= nil and PlayerData.job.name == 'police' and not ESX.UI.Menu.IsOpen('default', 'esx_policejob', 'police_actions') and (GetGameTimer() - GUI.Time) > 150) then
			TriggerEvent('ESX:closeAllSubMenu')
			TriggerEvent('ESX:closeAllMenu')
			TriggerEvent('ESX:openMenuPolice')
			GUI.Time = GetGameTimer()
		end

  	if (IsControlPressed(1, Config.menujob.clavier) and PlayerData.job ~= nil and PlayerData.job.name == 'police' and ESX.UI.Menu.IsOpen('default', 'esx_policejob', 'police_actions') and (GetGameTimer() - GUI.Time) > 150) then
			TriggerEvent('ESX:closeAllSubMenu')
			TriggerEvent('ESX:closeAllMenu')
			GUI.Time = GetGameTimer()
		end

--------------------------------------- MANETTE

		if Config.general.manettes then
			if (IsControlPressed(2, Config.menujob.manette1) and IsControlPressed(2, Config.menujob.manette2) and PlayerData.job ~= nil and PlayerData.job.name == 'police' and not ESX.UI.Menu.IsOpen('default', 'esx_policejob', 'police_actions') and (GetGameTimer() - GUI.Time) > 150) then
				TriggerEvent('ESX:closeAllSubMenu')
				TriggerEvent('ESX:closeAllMenu')
				TriggerEvent('ESX:openMenuPolice')
				GUI.Time  = GetGameTimer()
			end

			if (IsControlPressed(2, Config.menujob.manette1) and IsControlPressed(2, Config.menujob.manette2) and PlayerData.job ~= nil and PlayerData.job.name == 'police' and ESX.UI.Menu.IsOpen('default', 'esx_policejob', 'police_actions') and (GetGameTimer() - GUI.Time) > 150) then
				TriggerEvent('ESX:closeAllSubMenu')
				TriggerEvent('ESX:closeAllMenu')
				GUI.Time  = GetGameTimer()
			end
		end

--------------------------------------------------------------------------------------------
-- Menu ambulance -> esx_ambulancejob
--------------------------------------------------------------------------------------------

		if (IsControlPressed(1, Config.menujob.clavier) and PlayerData.job ~= nil and PlayerData.job.name == 'ambulance' and not ESX.UI.Menu.IsOpen('default', 'esx_ambulancejob', 'mobile_ambulance_actions') and (GetGameTimer() - GUI.Time) > 150) then
			TriggerEvent('ESX:closeAllSubMenu')
			TriggerEvent('ESX:closeAllMenu')
			TriggerEvent('ESX:openMenuAmbulance')
			GUI.Time = GetGameTimer()
		end

		if (IsControlPressed(1, Config.menujob.clavier) and PlayerData.job ~= nil and PlayerData.job.name == 'ambulance' and ESX.UI.Menu.IsOpen('default', 'esx_ambulancejob', 'mobile_ambulance_actions') and (GetGameTimer() - GUI.Time) > 150) then
			TriggerEvent('ESX:closeAllSubMenu')
			TriggerEvent('ESX:closeAllMenu')
			GUI.Time = GetGameTimer()
		end

--------------------------------------- MANETTE

		if Config.general.manettes then
			if (IsControlPressed(2, Config.menujob.manette1) and IsControlPressed(2, Config.menujob.manette2) and PlayerData.job ~= nil and PlayerData.job.name == 'ambulance' and not ESX.UI.Menu.IsOpen('default', 'esx_ambulancejob', 'mobile_ambulance_actions') and (GetGameTimer() - GUI.Time) > 150) then
				TriggerEvent('ESX:closeAllSubMenu')
				TriggerEvent('ESX:closeAllMenu')
				TriggerEvent('ESX:openMenuAmbulance')
				GUI.Time  = GetGameTimer()
			end

			if (IsControlPressed(2, Config.menujob.manette1) and IsControlPressed(2, Config.menujob.manette2) and PlayerData.job ~= nil and PlayerData.job.name == 'ambulance' and ESX.UI.Menu.IsOpen('default', 'esx_ambulancejob', 'mobile_ambulance_actions') and (GetGameTimer() - GUI.Time) > 150) then
				TriggerEvent('ESX:closeAllSubMenu')
				TriggerEvent('ESX:closeAllMenu')
				GUI.Time  = GetGameTimer()
			end
		end

--------------------------------------------------------------------------------------------
-- Menu Mecano -> esx_mecanojob
--------------------------------------------------------------------------------------------

		if (IsControlPressed(1, Config.menujob.clavier) and PlayerData.job ~= nil and PlayerData.job.name == 'mecano' and not ESX.UI.Menu.IsOpen('default', 'esx_mecanojob', 'MecanoActions') and (GetGameTimer() - GUI.Time) > 150) then
			TriggerEvent('ESX:closeAllSubMenu')
			TriggerEvent('ESX:closeAllMenu')
			TriggerEvent('ESX:openMenuMecano')
			GUI.Time = GetGameTimer()
		end

  	if (IsControlPressed(1, Config.menujob.clavier) and PlayerData.job ~= nil and PlayerData.job.name == 'mecano' and ESX.UI.Menu.IsOpen('default', 'esx_mecanojob', 'MecanoActions') and (GetGameTimer() - GUI.Time) > 150) then
			TriggerEvent('ESX:closeAllSubMenu')
			TriggerEvent('ESX:closeAllMenu')
			GUI.Time = GetGameTimer()
		end

--------------------------------------- MANETTE

		if Config.general.manettes then
			if (IsControlPressed(2, Config.menujob.manette1) and IsControlPressed(2, Config.menujob.manette2) and PlayerData.job ~= nil and PlayerData.job.name == 'mecano' and not ESX.UI.Menu.IsOpen('default', 'esx_mecanojob', 'MecanoActions') and (GetGameTimer() - GUI.Time) > 150) then
				TriggerEvent('ESX:closeAllSubMenu')
				TriggerEvent('ESX:closeAllMenu')
				TriggerEvent('ESX:openMenuMecano')
				GUI.Time  = GetGameTimer()
			end

			if (IsControlPressed(2, Config.menujob.manette1) and IsControlPressed(2, Config.menujob.manette2) and PlayerData.job ~= nil and PlayerData.job.name == 'mecano' and ESX.UI.Menu.IsOpen('default', 'esx_mecanojob', 'MecanoActions') and (GetGameTimer() - GUI.Time) > 150) then
				TriggerEvent('ESX:closeAllSubMenu')
				TriggerEvent('ESX:closeAllMenu')
				GUI.Time  = GetGameTimer()
			end
		end

--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
	end
end)

RegisterNetEvent('ESX:closeAllSubMenu')
AddEventHandler('ESX:closeAllSubMenu', function()
	TriggerEvent('ESX:closeMenuAmbulance')
	TriggerEvent('ESX:closeMenuPolice')
	TriggerEvent('ESX:closeMenuMecano')
	TriggerEvent('ESX:closeMenuInventaire')
	TriggerEvent('ESX:closeesx_menupessoalnnel')
end)

RegisterNetEvent('ESX:closeAllMenu')
AddEventHandler('ESX:closeAllMenu', function()
	ESX.UI.Menu.CloseAll()
end)

--------------------------------------------------------------------------------------------
-- Fermeture des Menu
--------------------------------------------------------------------------------------------
-- Menu Perso
RegisterNetEvent('ESX:closeesx_menupessoalnnel')
AddEventHandler('ESX:closeesx_menupessoalnnel', function()

	if ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_moi') then
		ESX.UI.Menu.Close('default', GetCurrentResourceName(), 'esx_menupessoal_moi')

	elseif ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_actions') then
		if ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_actions_Salute') then
			ESX.UI.Menu.Close('default', GetCurrentResourceName(), 'esx_menupessoal_actions_Salute')
		elseif ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_actions_Humor') then
			ESX.UI.Menu.Close('default', GetCurrentResourceName(), 'esx_menupessoal_actions_Humor')
		elseif ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_actions_Travail') then
			ESX.UI.Menu.Close('default', GetCurrentResourceName(), 'esx_menupessoal_actions_Travail')
		elseif ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_actions_Festives') then
			ESX.UI.Menu.Close('default', GetCurrentResourceName(), 'esx_menupessoal_actions_Festives')
		elseif ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_actions_Others') then
			ESX.UI.Menu.Close('default', GetCurrentResourceName(), 'esx_menupessoal_actions_Others')
		end
		ESX.UI.Menu.Close('default', GetCurrentResourceName(), 'esx_menupessoal_actions')

	elseif ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_vehicule') then
		ESX.UI.Menu.Close('default', GetCurrentResourceName(), 'esx_menupessoal_vehicule')

	elseif ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_gpsrapide') then
		ESX.UI.Menu.Close('default', GetCurrentResourceName(), 'esx_menupessoal_gpsrapide')

	elseif ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_grade') then
		ESX.UI.Menu.Close('default', GetCurrentResourceName(), 'esx_menupessoal_grade')

	elseif ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_modo') then
		ESX.UI.Menu.Close('default', GetCurrentResourceName(), 'esx_menupessoal_modo')

	end
end)

-- Inventaire
RegisterNetEvent('ESX:closeMenuInventaire')
AddEventHandler('ESX:closeMenuInventaire', function()
	if ESX.UI.Menu.IsOpen('default', 'es_extended', 'inventory') then
		ESX.UI.Menu.Close('default', 'es_extended', 'inventory')

	elseif ESX.UI.Menu.IsOpen('default', 'es_extended', 'inventory_item') then
		ESX.UI.Menu.Close('default', 'es_extended', 'inventory_item')

	elseif ESX.UI.Menu.IsOpen('default', 'es_extended', 'inventory_item_count_give') then
		ESX.UI.Menu.Close('default', 'es_extended', 'inventory_item_count_give')

	elseif ESX.UI.Menu.IsOpen('default', 'es_extended', 'inventory_item_count_remove') then
		ESX.UI.Menu.Close('default', 'es_extended', 'inventory_item_count_remove')
	end
end)

-- Telephone
RegisterNetEvent('ESX:closeMenuTelephone')
AddEventHandler('ESX:closeMenuTelephone', function()
	TriggerEvent('ESX:closeAllMenu')
end)

-- Factures
RegisterNetEvent('ESX:closeMenuFactures')
AddEventHandler('ESX:closeMenuFactures', function()
	TriggerEvent('ESX:closeAllMenu')
end)

-- Police
RegisterNetEvent('ESX:closeMenuPolice')
AddEventHandler('ESX:closeMenuPolice', function()
	if ESX.UI.Menu.IsOpen('default', 'esx_policejob', 'citizen_interaction') then
		ESX.UI.Menu.Close('default', 'esx_policejob', 'citizen_interaction')

	elseif ESX.UI.Menu.IsOpen('default', 'esx_policejob', 'vehicle_interaction') then
		ESX.UI.Menu.Close('default', 'esx_policejob', 'vehicle_interaction')

	elseif ESX.UI.Menu.IsOpen('default', 'esx_policejob', 'object_spawner') then
		ESX.UI.Menu.Close('default', 'esx_policejob', 'object_spawner')
	end
end)

-- Ambulance
RegisterNetEvent('ESX:closeMenuAmbulance')
AddEventHandler('ESX:closeMenuAmbulance', function()
	if ESX.UI.Menu.IsOpen('default', 'esx_ambulancejob', 'citizen_interaction') then
		ESX.UI.Menu.Close('default', 'esx_ambulancejob', 'citizen_interaction')
	end
end)

-- Mecano
RegisterNetEvent('ESX:closeMenuMecano')
AddEventHandler('ESX:closeMenuMecano', function()
	if ESX.UI.Menu.IsOpen('default', 'esx_mechanicjob', 'citizen_interaction') then
		ESX.UI.Menu.Close('default', 'esx_mechanicjob', 'citizen_interaction')
	end
end)

--------------------------------------------------------------------------------------------
-- Pause menu Cache L'HUD et ferme les menu
--------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if (IsPauseMenuActive() or IsControlPressed(1, Keys["TAB"])) and not IsPaused then
			IsPaused = true
			TriggerEvent('ESX:closeAllSubMenu')
			TriggerEvent('ESX:closeAllMenu')
			ESXMenuIsOpen = false
			TriggerEvent('es:setMoneyDisplay', 0.0)
			ESX.UI.HUD.SetDisplay(0.0)
		elseif not (IsPauseMenuActive() or IsControlPressed(1, Keys["TAB"])) and IsPaused then
			IsPaused = false
			ESXMenuIsOpen = false
			TriggerEvent('es:setMoneyDisplay', 1.0)
			ESX.UI.HUD.SetDisplay(1.0)
		end
	end
end)

Citizen.CreateThread(function()
	while true do

		Wait(0)

		if (ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'menu_perso')) or
		(ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_moi')) or
		(ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_actions')) or
		(ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_actions_Salute')) or
		(ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_actions_Humor')) or
		(ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_actions_Travail')) or
		(ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_actions_Festives')) or
		(ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_actions_Others')) or
		(ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_vehicule')) or
		(ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_vehicule_ouvrirportes')) or
		(ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_vehicule_fermerportes')) or
		(ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_gpsrapide')) or
		(ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_grade')) or
		(ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'esx_menupessoal_modo')) or

		(ESX.UI.Menu.IsOpen('default', 'es_extended', 'inventory')) or
		(ESX.UI.Menu.IsOpen('default', 'es_extended', 'inventory_item')) or
		(ESX.UI.Menu.IsOpen('default', 'es_extended', 'inventory_item_count_give')) or
		(ESX.UI.Menu.IsOpen('default', 'es_extended', 'inventory_item_count_remove')) or

		(ESX.UI.Menu.IsOpen('default', 'esx_phone', 'main')) or

		(ESX.UI.Menu.IsOpen('default', 'esx_billing', 'billing')) or

		(ESX.UI.Menu.IsOpen('default', 'esx_policejob', 'police_actions')) or
		(ESX.UI.Menu.IsOpen('default', 'esx_policejob', 'citizen_interaction')) or
		(ESX.UI.Menu.IsOpen('default', 'esx_policejob', 'vehicle_interaction')) or
		(ESX.UI.Menu.IsOpen('default', 'esx_policejob', 'object_spawner')) or

		(ESX.UI.Menu.IsOpen('default', 'esx_ambulancejob', 'mobile_ambulance_actions')) or
		(ESX.UI.Menu.IsOpen('default', 'esx_ambulancejob', 'citizen_interaction')) or

		(ESX.UI.Menu.IsOpen('default', 'esx_mechanicjob', 'MecanoActions')) or
		(ESX.UI.Menu.IsOpen('default', 'esx_mechanicjob', 'citizen_interaction')) or
		(ESX.UI.Menu.IsOpen('default', 'esx_shops', 'shop'))
		then

			ESXMenuIsOpen = true

		else

			ESXMenuIsOpen = false

		end

		if ESXMenuIsOpen then
			local ply = GetPlayerPed(-1)
			local active = true
			------------------------------------------------------------------------ TOUCHES CLAVIER
			--DisableControlAction(0, Keys["ESC"], active) -- ESC - 322
			--DisableControlAction(0, Keys["²"], active) -- ² - 243
			--DisableControlAction(0, Keys["TAB"], active) -- TAB - 37
			--DisableControlAction(0, Keys["LEFTCTRL"], active) -- LEFTCTRL - 36
			--DisableControlAction(0, Keys["RIGHTCTRL"], active) -- RIGHTCTRL - 70
			--DisableControlAction(0, Keys["SPACE"], active) -- SPACE - 22
			--DisableControlAction(0, Keys["="], active) -- = - 83
			--DisableControlAction(0, Keys["LEFTSHIFT"], active) -- LEFTSHIFT - 21
			--DisableControlAction(0, Keys["RIGHTSHIFT"], active) -- RIGHTSHIFT - NON IDENTIFIER
			--DisableControlAction(0, Keys["LEFTALT"], active) -- LEFTALT - 19
			--DisableControlAction(0, Keys["RIGHTALT"], active) -- RIGHTALT - NON IDENTIFIER
			--DisableControlAction(0, Keys["CAPS"], active) -- CAPS - 137
			--DisableControlAction(0, Keys[")"], active) -- ) - 84
			--DisableControlAction(0, Keys["BACKSPACE"], active) -- BACKSPACE - 177
			--DisableControlAction(0, Keys["^"], active) -- ^ - 39
			--DisableControlAction(0, Keys["$"], active) -- $ - 40
			--DisableControlAction(0, Keys["ENTER"], active) -- ENTER - 18
			--DisableControlAction(0, Keys["ù"], active) -- ù - NON IDENTIFIER
			--DisableControlAction(0, Keys["*"], active) -- * - NON IDENTIFIER
			--DisableControlAction(0, Keys[","], active) -- , - 82
			--DisableControlAction(0, Keys[";"], active) -- ; - 81
			--DisableControlAction(0, Keys[":"], active) -- : - NON IDENTIFIER
			--DisableControlAction(0, Keys["!"], active) -- ! - NON IDENTIFIER

			--DisableControlAction(0, Keys["NENTER"], active) -- NENTER - 201
			--DisableControlAction(0, Keys["N1"], active) -- N1 - NON IDENTIFIER
			--DisableControlAction(0, Keys["N2"], active) -- N2 - NON IDENTIFIER
			--DisableControlAction(0, Keys["N3"], active) -- N3 - NON IDENTIFIER
			--DisableControlAction(0, Keys["N4"], active) -- N4 - 108
			--DisableControlAction(0, Keys["N5"], active) -- N5 - 60
			--DisableControlAction(0, Keys["N6"], active) -- N6 - 107
			--DisableControlAction(0, Keys["N7"], active) -- N7 - 117
			--DisableControlAction(0, Keys["N8"], active) -- N8 - 61
			--DisableControlAction(0, Keys["N9"], active) -- N9 - 118
			--DisableControlAction(0, Keys["N0"], active) -- N0 - NON IDENTIFIER
			--DisableControlAction(0, Keys["N+"], active) -- N+ - 96
			--DisableControlAction(0, Keys["N-"], active) -- N- - 97

			--DisableControlAction(0, Keys["HOME"], active) -- HOME - 213
			--DisableControlAction(0, Keys["PAGEUP"], active) -- PAGEUP - 10
			--DisableControlAction(0, Keys["PAGEDOWN"], active) -- PAGEDOWN - 11
			--DisableControlAction(0, Keys["DELETE"], active) -- DELETE - 178

			--DisableControlAction(0, Keys["LEFT"], active) -- LEFT - 174
			--DisableControlAction(0, Keys["RIGHT"], active) -- RIGHT - 175
			--DisableControlAction(0, Keys["TOP"], active) -- TOP - 27
			--DisableControlAction(0, Keys["DOWN"], active) -- DOWN - 173

			--DisableControlAction(0, Keys["F1"], active) -- F1 - 288
			--DisableControlAction(0, Keys["F2"], active) -- F2 - 289
			--DisableControlAction(0, Keys["F3"], active) -- F3 - 170
			--DisableControlAction(0, Keys["F4"], active) -- F4 - NON IDENTIFIER
			--DisableControlAction(0, Keys["F5"], active) -- F5 - 166
			--DisableControlAction(0, Keys["F6"], active) -- F6 - 167
			--DisableControlAction(0, Keys["F7"], active) -- F7 - 168
			--DisableControlAction(0, Keys["F8"], active) -- F8 - 169
			--DisableControlAction(0, Keys["F9"], active) -- F9 - 56
			--DisableControlAction(0, Keys["F10"], active) -- F10 - 57
			--DisableControlAction(0, Keys["F11"], active) -- F11 - NON IDENTIFIER
			--DisableControlAction(0, Keys["F12"], active) -- F12 - NON IDENTIFIER

			--DisableControlAction(0, Keys["1"], active) -- 1 - 157
			--DisableControlAction(0, Keys["2"], active) -- 2 - 158
			--DisableControlAction(0, Keys["3"], active) -- 3 - 160
			--DisableControlAction(0, Keys["4"], active) -- 4 - 164
			--DisableControlAction(0, Keys["5"], active) -- 5 - 165
			--DisableControlAction(0, Keys["6"], active) -- 6 - 159
			--DisableControlAction(0, Keys["7"], active) -- 7 - 161
			--DisableControlAction(0, Keys["8"], active) -- 8 - 162
			--DisableControlAction(0, Keys["9"], active) -- 9 - 163
			--DisableControlAction(0, Keys["0"], active) -- 0 - NON IDENTIFIER

			--DisableControlAction(0, Keys["A"], active) -- A - 34
			--DisableControlAction(0, Keys["B"], active) -- B - 29
			--DisableControlAction(0, Keys["C"], active) -- C - 26
			--DisableControlAction(0, Keys["D"], active) -- D - 9
			--DisableControlAction(0, Keys["E"] active) -- E - 38
			--DisableControlAction(0, Keys["F"], active) -- F - 23
			--DisableControlAction(0, Keys["G"], active) -- G - 47
			--DisableControlAction(0, Keys["H"], active) -- H - 74
			--DisableControlAction(0, Keys["I"], active) -- I - NON IDENTIFIER
			--DisableControlAction(0, Keys["J"], active) -- J - NON IDENTIFIER
			--DisableControlAction(0, Keys["K"], active) -- K - 311
			--DisableControlAction(0, Keys["L"], active) -- L - 182
			--DisableControlAction(0, Keys["M"], active) -- M - 244
			--DisableControlAction(0, Keys["N"], active) -- N - 249
			--DisableControlAction(0, Keys["O"], active) -- O - NON IDENTIFIER
			--DisableControlAction(0, Keys["P"], active) -- P - 199
			--DisableControlAction(0, Keys["Q"], active) -- Q - 44
			--DisableControlAction(0, Keys["R"], active) -- R - 45
			--DisableControlAction(0, Keys["S"], active) -- S - 8
			--DisableControlAction(0, Keys["T"], active) -- T - 245
			--DisableControlAction(0, Keys["U"], active) -- U - 303
			--DisableControlAction(0, Keys["V"], active) -- V - 0
			--DisableControlAction(0, Keys["W"], active) -- W - 32
			--DisableControlAction(0, Keys["X"], active) -- X - 73
			--DisableControlAction(0, Keys["Y"], active) -- Y - 246
			--DisableControlAction(0, Keys["Z"], active) -- Z - 20

			------------------------------------------------------------------------ FONCTION ACTION GTA -- codes here: https://pastebin.com/guYd0ht4
			DisablePlayerFiring(ply, active) -- desactive armes a feu
			--DisableControlAction(0, 1, active) -- mouvement camera horizontale
			--DisableControlAction(0, 2, active) -- mouvement camera verticale
			--DisableControlAction(0, 30,  active) -- Mouvement personnage horizontale
			--DisableControlAction(0, 31,  active) -- Mouvement personnage verticale
			DisableControlAction(0, 24, active) -- attaque
			DisableControlAction(0, 142, active) -- attaque de melee
			--DisableControlAction(0, 106, active) -- VehicleMouseControlOverride

			DisableControlAction(0, 12, active) -- Selection d'arme roue
			DisableControlAction(0, 14, active) -- Selection d'arme suivante roue
			DisableControlAction(0, 15, active) -- Selection d'arme precedente roue
			DisableControlAction(0, 16, active) -- Selection d'arme suivante
			DisableControlAction(0, 17, active) -- Selection d'arme precedente
			DisableControlAction(0, 140, active) -- coup de poing
			DisableControlAction(0, 80, active) -- Camera aleatoire en voiture
			DisableControlAction(0, 73, active) -- Camera aleatoire en voiture
		end
			break
	end
end)