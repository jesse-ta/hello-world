function get_sets()

	send_command('input /macro book 3; wait.1 ; input /macro set 1 ; wait 1')
--augmented gear
	Belenus_TP ={ name="Belenus's cape", augments={'Agi+20','Rng. Acc.+20 Rng. Atk. +25','"Store TP"+10'}}
	
--precast sets
	sets.precast = {}
	sets.JA = {}
	sets.precast.RA = {}
	sets.JA.Barrage = {ammo="Adlivun arrow",
		head="Arcadian beret +1",neck="Ocachi gorget",lear="Dedition earring",rear="Enervating earring",
		body="Pursuer's doublet",hands="Orion bracers +1",lring="Rajas Ring",rring="Apate Ring",
		back=Belenus_TP,waist="Kwahu kachina belt",legs="Adhemar kecks",feet="Meg. Jambeaux +1"}

--midcast sets	
    sets.midcast = {}
	sets.midcast.RA = {ammo="Adlivun arrow",
		head="Arcadian beret +1",neck="Ocachi gorget",lear="Dedition earring",rear="Enervating earring",
		body="Pursuer's doublet",hands="Adhemar wristbands",lring="Rajas Ring",rring="Apate Ring",
		back=Belenus_TP,waist="Kwahu kachina belt",legs="Adhemar kecks",feet="Meg. Jambeaux +1"}
	
--aftercast sets
    sets.aftercast = {}
	sets.idle = {}
	
--WS sets
	sets.WS = {}
	sets.WS.Jishnu = {}
	sets.WS.Namas = {}
	
end
 
function precast(spell)
    if spell.type == 'Weaponskill' then
		if spell.name == "Jishnu's Radiance" then
			equip(sets.WS.Jishnu)
		elseif spell.name == "Namas Arrow" then
			equip(sets.WS.Namas)
		end
	elseif spell.name == 'Ranged' then
		equip(sets.precast.RA)
	elseif spell.name == 'Barrage' then
		equip(sets.JA.Barrage)
	end	
		
end
 
function midcast(spell)
    if spell.name == 'Ranged' then
		if buffactive.Barrage then
			equip(sets.JA.Barrage)
		else
			equip(sets.midcast.RA)
		end
	end
end
 
function aftercast(spell)
    if player.status == 'Engaged' then
		equip(sets.aftercast)
	else
		equip(sets.idle)
	end
end