ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('ESX:getUsergroup', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local group = xPlayer.getGroup()
	cb(group)
end)

function getMaximumGrade(jobname)
	local result = MySQL.Sync.fetchAll("SELECT grade FROM job_grades WHERE job_name=@jobname ORDER BY `grade` DESC ;", {
		['@jobname'] = jobname
	})
	if result[1] ~= nil then
		return result[1].grade
	end
	return nil
end

--Admin Menu

RegisterServerEvent("AdminMenu:giveCash")
AddEventHandler("AdminMenu:giveCash", function(money)

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local total = money

	xPlayer.addMoney((total))
	local item = ' $ dinheiro!'
	local message = 'Você está dando '
	TriggerClientEvent('esx:showNotification', _source, message.." "..total.." "..item)

end)

RegisterServerEvent("AdminMenu:giveBank")
AddEventHandler("AdminMenu:giveBank", function(money)

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local total = money

	xPlayer.addAccountMoney('bank', total)
	local item = '$ no banco.'
	local message = 'Você foi concedido '
	TriggerClientEvent('esx:showNotification', _source, message.." "..total.." "..item)

end)

RegisterServerEvent("AdminMenu:giveDirtyMoney")
AddEventHandler("AdminMenu:giveDirtyMoney", function(money)

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local total = money

	xPlayer.addAccountMoney('black_money', total)
	local item = ' $ dinheiro sujo.'
	local message = 'Você foi concedido '
	TriggerClientEvent('esx:showNotification', _source, message.." "..total.." "..item)

end)

--Grade Menu
RegisterServerEvent('ESX:promouvoirplayer')
AddEventHandler('ESX:promouvoirplayer', function(target)

	local _source = source

	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local targetXPlayer = ESX.GetPlayerFromId(target)
	local maximumgrade = tonumber(getMaximumGrade(sourceXPlayer.job.name)) -1

	if(targetXPlayer.job.grade == maximumgrade)then
		TriggerClientEvent('esx:showNotification', _source, "Você deve solicitar uma autorização do ~r~Governo~s~.")
	else
		if(sourceXPlayer.job.name == targetXPlayer.job.name)then

			local grade = tonumber(targetXPlayer.job.grade) + 1
			local job = targetXPlayer.job.name

			targetXPlayer.setJob(job, grade)

			TriggerClientEvent('esx:showNotification', _source, "Você foi ~g~promovido "..targetXPlayer.name.."~s~.")
			TriggerClientEvent('esx:showNotification', target,	"Você foi ~g~promovido por ".. sourceXPlayer.name.."~s~.")

		else
			TriggerClientEvent('esx:showNotification', _source, "Você não tem ~r~permissão~s~.")

		end

	end

end)

RegisterServerEvent('ESX:destituerplayer')
AddEventHandler('ESX:destituerplayer', function(target)

	local _source = source

	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local targetXPlayer = ESX.GetPlayerFromId(target)

	if(targetXPlayer.job.grade == 0)then
		TriggerClientEvent('esx:showNotification', _source, "Você não pode mais ~r~tentar novamente~s~.")
	else
		if(sourceXPlayer.job.name == targetXPlayer.job.name)then

			local grade = tonumber(targetXPlayer.job.grade) - 1
			local job = targetXPlayer.job.name

			targetXPlayer.setJob(job, grade)

			TriggerClientEvent('esx:showNotification', _source, "Você foi ~r~rebaixado "..targetXPlayer.name.."~s~.")
			TriggerClientEvent('esx:showNotification', target,	"Você foi ~r~rebaixado por ".. sourceXPlayer.name.."~s~.")

		else
			TriggerClientEvent('esx:showNotification', _source, "Você não tem ~r~permissão~s~.")

		end

	end

end)

RegisterServerEvent('ESX:recruterplayer')
AddEventHandler('ESX:recruterplayer', function(target, job, grade)

	local _source = source

	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local targetXPlayer = ESX.GetPlayerFromId(target)

		targetXPlayer.setJob(job, grade)

		TriggerClientEvent('esx:showNotification', _source, "Você ~g~recrutou"..targetXPlayer.name.."~s~.")
		TriggerClientEvent('esx:showNotification', target,	"Você foi ~g~contratado por ".. sourceXPlayer.name.."~s~.")

end)

RegisterServerEvent('ESX:virerplayer')
AddEventHandler('ESX:virerplayer', function(target)

	local _source = source

	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local targetXPlayer = ESX.GetPlayerFromId(target)
	local job = "unemployed"
	local grade = "0"

	if(sourceXPlayer.job.name == targetXPlayer.job.name)then
		targetXPlayer.setJob(job, grade)

		TriggerClientEvent('esx:showNotification', _source, "Você ~r~demitiu "..targetXPlayer.name.."~s~.")
		TriggerClientEvent('esx:showNotification', target,	"Você foi ~g~transferido por ".. sourceXPlayer.name.."~s~.")
	else

		TriggerClientEvent('esx:showNotification', _source, "Você não tem ~r~permissão~s~.")

	end

end)
