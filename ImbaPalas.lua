
local spells = {
	[498] = 12, -- Divine Protection
	[642] = 12, -- Divine Shield
	[1022] = 6, -- Hand of Protection (Rank 1)
	[5599] = 8, -- Hand of Protection (Rank 2)
	[10278] = 10, -- Hand of Protection (Rank 3)
}
local f = CreateFrame("Frame")
f:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
f:SetScript("OnEvent", function(_, _, _, eventtype, _, _, _, _, _, _, _, _, _, spellid)
	if eventtype == "SPELL_AURA_APPLIED" and spells[spellid] then
		PlaySoundFile("Interface\\Addons\\ImbaPalas\\Starman_"..spells[spellid]..".mp3")
	end
end)
