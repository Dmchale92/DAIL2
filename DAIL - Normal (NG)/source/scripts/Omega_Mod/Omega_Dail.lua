
dail = {}

function calldail
	math.randomseed(Time.Now());
	local DAILpop = math.random(1, 100);
		if DAILpop < 0 then
		local player = Game.GetLocalPlayer();
		player:GiveItem("DAIL/gift/oneshot_pot.dbr", 1, true);
	end
end