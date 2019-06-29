# esx_menupessoal

- Menu pessoal para ESX
- Um menu simples que inclui inventário, faturas, telefone, emoticons, gerenciamento de veículo leve e um menu de administração
- Também permite maior compatibilidade do controlador.
- Para abrir o menu pessoal, faça F5 ou X + Seta para cima no joystick
- Para abrir o menu de negócios, faça F6 ou X + Seta para baixo no joystick
- Para admin / owner, obtenha o TP no marcador no mapa: Shift + E
- Funções adicionais levantam as mãos, agacham e apontam os dedos.
- Para levantar as mãos do teclado: LEFTCTRL
- Para levantar as mãos com o joystick: Seta para a direita + X
- Para agachar no teclado: Ctrl esquerda
- Para agachar com o joystick: Esquerda joystick
- Para apontar os dedos do teclado: B
- Para apontar com o joystick: clique no joystick direito
- Se necessário, altere os pontos de GPS. Em arquivo config.lua

## NECESSÁRIO
- https://github.com/ESX-Brasil/es_extended
- https://github.com/ESX-Brasil/esx_phone
- https://github.com/ESX-Brasil/esx_billing
- https://github.com/ESX-Brasil/esx_policejob
- https://github.com/ESX-Brasil/esx_ambulancejob
- https://github.com/ESX-Brasil/esx_mechanicjob

## INSTALAÇÃO
Copie a pasta "esx_menupessoal" em resources
Adicione "start esx_menupessoal" no seu server.cfg depois de todo o outro começo, este script deve ser iniciado por último.

## Linhas para editar em outros scripts
__####################__
__Em es_extended :__
__####################__
Edite es_extended/client/main.lua comente as seguintes linhas:
```lua
-- Menu interactions
Citizen.CreateThread(function()
	while true do
		Wait(0)

		if IsControlPressed(0, Keys["F2"]) and not ESX.UI.Menu.IsOpen('default', 'es_extended', 'inventory') and (GetGameTimer() - GUI.Time) > 150 then
			ESX.ShowInventory()
			GUI.Time  = GetGameTimer()
		end
	end
end)
```
e as linhas:
```lua
-- Pause menu disable HUD display
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(300)

		if IsPauseMenuActive() and not IsPaused then
			IsPaused = true
			TriggerEvent('es:setMoneyDisplay', 0.0)
			ESX.UI.HUD.SetDisplay(0.0)
		elseif not IsPauseMenuActive() and IsPaused then
			IsPaused = false
			TriggerEvent('es:setMoneyDisplay', 1.0)
			ESX.UI.HUD.SetDisplay(1.0)
		end
	end
end)
```
em seguida, adicione essas linhas no final do script:
```lua
---------------------------------------------------------------------------------------------------------
--ESX : menu de Gestão
---------------------------------------------------------------------------------------------------------

RegisterNetEvent('ESX:openMenuInventaire')
AddEventHandler('ESX:openMenuInventaire', function()
	ESX.ShowInventory()
end)
```
__####################__
__Em esx_phone :__
__####################__
Edite esx_phone/client/main.lua comente as seguintes linhas:
```lua
    else

      if IsControlPressed(0, Keys['F1']) and (GetGameTimer() - GUI.Time) > 150 then

        if not ESX.UI.Menu.IsOpen('phone', GetCurrentResourceName(), 'main') then
        	ESX.UI.Menu.CloseAll()
        	ESX.UI.Menu.Open('phone', GetCurrentResourceName(), 'main')
        end

        GUI.Time = GetGameTimer()

      end
```
em seguida, adicione essas linhas no final do script:
```lua
---------------------------------------------------------------------------------------------------------
--ESX : menu de Gestão
---------------------------------------------------------------------------------------------------------

RegisterNetEvent('ESX:openMenuTelephone')
AddEventHandler('ESX:openMenuTelephone', function()
	ESX.UI.Menu.Open('phone', GetCurrentResourceName(), 'main')
end)
```
__####################__
__Em esx_billing :__
__####################__
Edite esx_billing/client/main.lua comente as seguintes linhas:
```lua
--Key controls
Citizen.CreateThread(function()
	while true do

  	Wait(0)

  	if IsControlPressed(0, Keys["F7"]) and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'billing') and (GetGameTimer() - GUI.Time) > 150 then
  		ShowBillsMenu()
	  	GUI.Time  = GetGameTimer()
    end

  end
end)
```
em seguida, adicione essas linhas no final do script:
```lua
---------------------------------------------------------------------------------------------------------
--ESX : menu de Gestão
---------------------------------------------------------------------------------------------------------

RegisterNetEvent('ESX:openMenuFactures')
AddEventHandler('ESX:openMenuFactures', function()
  	ShowBillsMenu()
end)
```
__####################__
__Em esx_policejob :__
__####################__
Edite esx_policejob/client/main.lua comente as seguintes linhas:
```lua
		if IsControlPressed(0,  Keys['F6']) and PlayerData.job ~= nil and PlayerData.job.name == 'police' and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'police_actions') and (GetGameTimer() - GUI.Time) > 150 then
			OpenPoliceActionsMenu()
			GUI.Time = GetGameTimer()
		end
```
em seguida, adicione essas linhas no final do script:
```lua
---------------------------------------------------------------------------------------------------------
--ESX : menu de Gestão
---------------------------------------------------------------------------------------------------------

RegisterNetEvent('ESX:openMenuPolice')
AddEventHandler('ESX:openMenuPolice', function()
	OpenPoliceActionsMenu()
end)
```
__####################__
__Em esx_ambulancejob :__
__####################__
Edite esx_ambulancejob/client/main.lua comente as seguintes linhas:
```lua
		if IsControlPressed(0,  Keys['F6']) and PlayerData.job ~= nil and PlayerData.job.name == 'ambulance' and (GetGameTimer() - GUI.Time) > 150 then
			OpenMobileAmbulanceActionsMenu()
			GUI.Time = GetGameTimer()
		end
```
em seguida, adicione essas linhas no final do script:
```lua
---------------------------------------------------------------------------------------------------------
--ESX : menu de Gestão
---------------------------------------------------------------------------------------------------------

RegisterNetEvent('ESX:openMenuAmbulance')
AddEventHandler('ESX:openMenuAmbulance', function()
	OpenMobileAmbulanceActionsMenu()
end)
```
__####################__
__Em esx_mecanojob :__
__####################__
Edite esx_mecanojob/client/main.lua comente as seguintes linhas:
```lua
	if IsControlJustReleased(0, Keys['F6']) and PlayerData.job ~= nil and PlayerData.job.name == 'mecano' then
            OpenMobileMecanoActionsMenu()
        end
```
em seguida, adicione essas linhas no final do script:
```lua
---------------------------------------------------------------------------------------------------------
--ESX : menu de Gestão
---------------------------------------------------------------------------------------------------------

RegisterNetEvent('ESX:openMenuMecano')
AddEventHandler('ESX:openMenuMecano', function()
	OpenMobileMecanoActionsMenu()
end)
```
## Aviso: este script é otimizável e pode ser atualizado a qualquer momento.
