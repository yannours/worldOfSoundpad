local f = CreateFrame("Frame")

f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent",function(self,event,...)
	PlaySoundFile("Interface\\AddOns\\worldOfSoundpad\\sounds\\ownage.mp3")
	end)
