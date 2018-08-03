local f = CreateFrame("Frame", "Wolrd Of Soundpad", UIParent);

f:RegisterEvent("PLAYER_LOGIN");
f:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED");
f:SetScript("OnEvent", function (self, event, ...)
	if (event == "PLAYER_LOGIN") then
		PlaySoundFile("Interface\\AddOns\\worldOfSoundpad\\sounds\\alarm.mp3");
	end
	if (event == "UNIT_SPELLCAST_SUCCEEDED") then
		local caster, spell = select(1, ...), select(3, ...);
		print(caster, spell);
		if (spell == 79140) then
			PlaySoundFile("Interface\\AddOns\\worldOfSoundpad\\sounds\\ownage.mp3");
		end
	end
end)
