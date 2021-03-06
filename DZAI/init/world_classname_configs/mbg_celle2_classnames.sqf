/*
	Celle Loot Configuration
	
	Last updated:
	
*/

private ["_modname","_newItems"];
_modname = toLower format ["%1",DZAI_modName];

//Removed bandit skins: ["HazmatVest_Black_DZC","HazmatVest_Yellow_DZC","HazmatVest_Olive_DZC","Hazmat_Black_DZC","Hazmat_Red_DZC","Hazmat_Yellow_DZC","Hazmat_Olive_DZC","Skin_HazmatVest_Red_DZC"];
//Invalid entries removed from DZAI_Rifles3: ["RH_mp7RFX","RH_m60e4eotech"]
//Removed skin loot: "Skin_Hazmat_Black_DZC","Skin_Hazmat_Red_DZC","Skin_Hazmat_Yellow_DZC","Skin_Hazmat_Olive_DZC","Skin_HazmatVest_Yellow_DZC","Skin_HazmatVest_Olive_DZC"

DZAI_skinItemChance = 0.15;		//Chance to add random item from DZAI_SkinLoot table.

//Remove classnames
DZAI_BanditTypes = DZAI_BanditTypes - ["Camo1_DZ","Sniper1_DZ","Bandit1_DZ"];
DZAI_Pistols0 = DZAI_Pistols0 - ["Makarov"];
DZAI_Rifles1 = DZAI_Rifles1 - ["AK_74","AKS_74_kobra","AKS_74_U","AK_47_M"];
DZAI_Rifles2 = DZAI_Rifles2 - ["AK_74","AKS_74_kobra","AKS_74_U","AK_47_M","M240_DZ","M107_DZ"];
DZAI_Rifles3 = DZAI_Rifles3 - ["M107_DZ"];
DZAI_Backpacks0 = DZAI_Backpacks0 - ["DZ_Czech_Vest_Puch"];
DZAI_Backpacks1 = DZAI_Backpacks1 - ["DZ_Czech_Vest_Puch"];

//Add classnames
_newItems = ["Sniper1_DZC","Sniper2_DZC","Sniper3_DZC","Clan_Officer1_DZC","Clan_Officer2_DZC","Clan_Officer3_DZC","Clan_Delta1","Clan_Delta2","Clan_Delta3_DZC","Clan_UN_Helmet_DZC","Clan_UN_Cap_DZC","Clan_GER_DZC","Clan_GER_Hvy_DZC","Clan_Terror_DZC","Clan_Terror2_DZC","Clan_nobackpack_INS1_DZC","Clan_nobackpack_INS2_DZC","Clan_nobackpack_INS3_DZC","Clan_nobackpack_suit_DZC","Snow_Trooper1_DZC","Snow_Trooper2_DZC","Soldier1_DZC","Soldier2_DZC","Soldier3_DZC","Soldier1_SF_DZC","Soldier2_SF_DZC","Soldier3_SF_DZC","BAF_Officer1_DZC","BAF_Officer2_DZC","BAF_Officer3_DZC","CZ_Officer1_DZC","CZ_Officer2_DZC","CZ_Officer3_DZC","GER_Officer1_DZC","CZ_Heavy1_DZC","CZ_Heavy2_DZC","CZ_Heavy3_DZC","BAF_Heavy1_DZC","BAF_Heavy2_DZC","BAF_Heavy3_DZC","US_Heavy1_DZC","US_Heavy2_DZC","CIV_Pilot1_DZC","US_Pilot1_DZC","CZ_Pilot1_DZC","CZ_Pilot2_DZC","CZ_Pilot3_DZC","BAF_Pilot1_DZC","BAF_Pilot2_DZC","BAF_Pilot3_DZC","Doctor_DZC","Civ_Soldier_DZC","Cameraman_DZC","EuroMan01_DZC","EuroMan02_DZC","Storm_Trooper1_DZC","Storm_Trooper2_DZC","Storm_Trooper3_DZC","Storm_Trooper4_DZC","PrivateSec1_DZC","PrivateSec2_DZC","PrivateSec3_DZC","Asano_DZC","Camo1_DZC","Camo2_DZC","Camo3_DZC","Soldier1_STD_DZC","Soldier2_STD_DZC","Soldier3_STD_DZC","Soldier1_GL_DZC","Soldier2_GL_DZC","Soldier3_GL_DZC","Soldier1_AT_DZC","Soldier2_AT_DZC","Soldier3_AT_DZC","Soldier1_SL_DZC","Soldier2_SL_DZC","Soldier3_SL_DZC"];
for "_i" from 0 to ((count _newItems) - 1) do {DZAI_BanditTypes set [(count DZAI_BanditTypes),(_newItems select _i)];};

_newItems = ["RH_m1911","RH_m1911old","RH_m9","RH_p226","RH_p226s","RH_vz61","RH_python","RH_mk2","RH_tt33","RH_ppk","RH_bull","RH_m93r","RH_anac","RH_mk22","RH_mk22v","RH_m9","RH_g19t","RH_Deagles","RH_pp2000p","RH_tec9","RH_muzi"];
for "_i" from 0 to ((count _newItems) - 1) do {DZAI_Pistols0 set [(count DZAI_Pistols0),(_newItems select _i)];};

_newItems = ["RH_mac10p","RH_python","RH_usp","RH_uspm","RH_Deagleg","RH_Deaglemzb","RH_anacg","RH_bull","RH_Deaglem","RH_Deaglemz","RH_m9sd","RH_mp7p"];
for "_i" from 0 to ((count _newItems) - 1) do {DZAI_Pistols1 set [(count DZAI_Pistols1),(_newItems select _i)];};

_newItems = ["RH_mp7p","RH_mp5kp","RH_uspm","RH_usp","RH_uspsd","RH_mk22sd","RH_mk22vsd","RH_browninghp","RH_p226s"];
for "_i" from 0 to ((count _newItems) - 1) do {DZAI_Pistols2 set [(count DZAI_Pistols2),(_newItems select _i)];};

_newItems = ["RH_m9c","RH_m9csd","RH_g17sd","RH_g18","RH_m1911sd","RH_g19t"];
for "_i" from 0 to ((count _newItems) - 1) do {DZAI_Pistols3 set [(count DZAI_Pistols3),(_newItems select _i)];};

_newItems = ["RH_m14ebr","RH_mk14","RH_m4cmk","RH_m4cmkaim"];
for "_i" from 0 to ((count _newItems) - 1) do {DZAI_Rifles0 set [(count DZAI_Rifles0),(_newItems select _i)];};

_newItems = ["RH_uzisd","RH_uzig","RH_mp7","RH_m4c","RH_m4cs","RH_m4cmk","RH_m4caim","RH_m4cacog","RH_m4ceotech","RH_m4ct","RH_m4ctsd","RH_m4cgl","RH_m4ctsdgleotech","RH_m4ctsdeotech","RH_P90","RH_P90i","RH_P90aim","RH_P90eot","RH_P90sd","RH_p90isd","RH_p90sdaim","RH_p90sdeot","RH_UMP","RH_umpaim","RH_umpeot","RH_umpRFX","RH_umpsd","RH_umpsdaim","RH_umpsdeot","RH_umpsdRFX","RH_HK53","RH_HK53aim","RH_HK53RFX","RH_mp5sd6","RH_mp5sd6eot","RH_mp5sd6aim","RH_mp5sd6RFX","RH_m14ebr","RH_m14ebrsp","RH_m14ebrgc","RH_m14ebr_sd","RH_m14ebrsp_sd","RH_m14ebrgc_sd"];
for "_i" from 0 to ((count _newItems) - 1) do {DZAI_Rifles1 set [(count DZAI_Rifles1),(_newItems select _i)];};

_newItems = ["RH_mp7aim","RH_mp7eot","RH_mp7sd","RH_mp7sdaim","RH_mp7sdeot","RH_mp7","G36K","MG36","RH_mp5a4","RH_mp5a4aim","RH_mp5a4eot","RH_mp5a4RFX","RH_mp5a5","RH_mp5a5aim","RH_mp5a5eot","RH_mp5a5RFX","RH_mp5a5eodaim","RH_mp5a5eodeot","RH_mp5a5eodRFX","RH_mp5kpdw","RH_mp5kpdwaim","RH_mp5kpdweot","RH_mp5kpdwRFX","RH_M4CEOTECH","RH_M4CAIM","RH_M4CS","RH_M4CSAIM","RH_M4CMKAIM","RH_PDR","RH_pdraim","RH_pdreot","RH_P90","RH_P90i","RH_P90aim","RH_P90eot","RH_HK53","RH_HK53aim","RH_HK53RFX","RH_m4cmk","RH_M60E4","RH_MK43","RH_mp5sd6RFX","RH_P90sd","RH_p90isd","RH_p90sdaim","RH_p90sdeot","RH_fmg9","RH_uzi","RH_uzisd","RH_tmpeot","RH_tmpsd","RH_tmpsdaim","RH_tmpsdeot","RH_M4C","RH_M4CSAIM","RH_M4CSACOG","RH_M4CSEOTECH","RH_M4CT","RH_M4CT_F","RH_M14EBR","RH_M14EBRSP","RH_M14EBRGC","RH_M4CTSD","RH_M4CTSD_F","RH_mk21a5","RH_mk21a5sd","RH_mk14","RH_mk14aim","RH_mk14eotech","RH_mk14sd","RH_mk14sdaim","RH_mk14sdeotech","RH_m4cmkacog","RH_m4cmkeotech","RH_HK53eot"];
for "_i" from 0 to ((count _newItems) - 1) do {DZAI_Rifles2 set [(count DZAI_Rifles2),(_newItems select _i)];};

_newItems = ["RH_mp5sd6","RH_mp5sd6eot","RH_mp5sd6aim","RH_mp5sd6RFX","BAF_L85A2_UGL_Holo","BAF_L86A2_ACOG","RH_M60E4","RH_M60E4_EOTECH","M16A4_ACG_GL","RH_SCARL_AIM","RH_SCARLB_AIM","M4SPR","RH_M14EBRSP","M40A3","RH_SCARL_MK4","G36K","RH_ump","RH_xm8dc","G36a_CAMO","RH_mp7sdeot","RH_MK43","RH_ak102","RH_ScarAkeotech","RH_ScarAkaim","RH_ScarAk","AK_107_pso","RPK_74","SVD","RH_mp5a5eod","RH_HK53eot"];
for "_i" from 0 to ((count _newItems) - 1) do {DZAI_Rifles3 set [(count DZAI_Rifles3),(_newItems select _i)];};

_newItems = ["FoodCanGriff","FoodCanBadguy","FoodCanBoneboy","FoodCanCorn","FoodCanCurgon","FoodCanDemon","FoodCanFraggleos","FoodCanHerpy","FoodCanOrlok","FoodCanPowell","FoodCanTylers","ItemSodaMtngreen","ItemSodaR4z0r","ItemSodaClays","ItemSodaSmasht","ItemSodaDrwaste","ItemSodaLemonade","ItemSodaLvg","ItemSodaMzly","ItemSodaRabbit"];
for "_i" from 0 to ((count _newItems) - 1) do {DZAI_Edibles set [(count DZAI_Edibles),(_newItems select _i)];};

DZAI_SkinLoot = ["Skin_Survivor2_DZ","Skin_EuroMan01_DZC","Skin_EuroMan02_DZC","Skin_Cameraman_DZC","Skin_Storm_Trooper1_DZC","Skin_Storm_Trooper2_DZC","Skin_Storm_Trooper3_DZC","Skin_Storm_Trooper4_DZC","Skin_Civ_Soldier_DZC","Skin_Doctor_DZC","Skin_BAF_Officer1_DZC","Skin_BAF_Officer2_DZC","Skin_BAF_Officer3_DZC","Skin_CZ_Officer1_DZC","Skin_CZ_Officer2_DZC","Skin_CZ_Officer3_DZC","Skin_GER_Officer1_DZC","Skin_Sniper1_DZC","Skin_Camo1_DZC","Skin_Camo2_DZC","Skin_Camo3_DZC","Skin_Sniper3_DZC","Skin_Snow_Trooper2_DZC","Skin_Hazmat_Red_DZC","Skin_Storm_Trooper1_DZC","Skin_Soldier1_STD_DZC","Skin_Soldier2_STD_DZC","Skin_Soldier3_STD_DZC","Skin_Soldier1_GL_DZC","Skin_Soldier2_GL_DZC","Skin_Soldier3_GL_DZC","Skin_Soldier1_AT_DZC","Skin_Soldier2_AT_DZC","Skin_Soldier3_AT_DZC","Skin_Soldier1_SL_DZC","Skin_Soldier2_SL_DZC","Skin_Soldier3_SL_DZC","Skin_CIV_Pilot1_DZC","Skin_Soldier1_DZC","Skin_Soldier2_DZC","Skin_Soldier3_DZC","Skin_Soldier2_DZC","Skin_Soldier1_SF_DZC","Skin_Soldier2_SF_DZC","Skin_Soldier3_SF_DZC","Skin_Soldier2_SF_DZC","Skin_Soldier3_SF_DZC","Skin_BAF_Pilot1_DZC","Skin_BAF_Pilot2_DZC","Skin_BAF_Pilot3_DZC","Skin_BAF_Heavy1_DZC","Skin_BAF_Heavy3_DZC","Skin_Soldier3_STD_DZC","Skin_Soldier1_STD_DZC","Skin_Soldier2_STD_DZC","Skin_US_Pilot1_DZC","Skin_US_Heavy1_DZC","Skin_US_Heavy2_DZC","Skin_Snow_Trooper1_DZC","Skin_CZ_Pilot1_DZC","Skin_CZ_Pilot2_DZC","Skin_CZ_Pilot3_DZC","Skin_CZ_Heavy1_DZC","Skin_CZ_Heavy2_DZC","Skin_CZ_Heavy3_DZC"];

for "_i" from 0 to ((count DZAI_Pistols0) - 1) do {DZAI_Rifles0 set [(count DZAI_Rifles0),(DZAI_Pistols0 select _i)];};

diag_log "Celle loot tables loaded.";
