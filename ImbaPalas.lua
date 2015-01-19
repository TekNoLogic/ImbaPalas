
local spells = {
	[498] = 10, -- Divine Protection
	[642] = 8, -- Divine Shield
	[1022] = 10, -- Hand of Protection
}
local f = CreateFrame("Frame")
f:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
f:SetScript("OnEvent", function(_, _, _, eventtype, _, _, _, _, _, _, _, _, _, spellid)
	if eventtype == "SPELL_AURA_APPLIED" and spells[spellid] then
		PlaySoundFile("Interface\\Addons\\ImbaPalas\\Starman_"..spells[spellid]..".mp3")
	end
end)
