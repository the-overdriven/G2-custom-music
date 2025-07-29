META
{ 
	Parser = Music 
	MergeMode = TRUE 
};

// Custom Music
// https://github.com/the-overdriven/G2-custom-music
// Allows configuring custom music (.mp3 or .sgt) in Gothic.ini.

INSTANCE SYS_Menu(C_MUSICTHEME_DEF)
{
	file 	     = Hlp_ReadOptionString("Gothic", "[CUSTOM_MUSIC]", "SYS_Menu", "gamestart.sgt");
	transType    = TRANSITION_TYPE_NONE;
	transSubType = TRANSITION_SUB_TYPE_IMMEDIATE;
	ReverbMix    = -12;
	ReverbTime   = 8500;
};

func string getMusicTrackFromConfig(var string musicZone, var string defaultTrack) {
	var string musicTrack; musicTrack = Hlp_ReadOptionString("Gothic", "[CUSTOM_MUSIC]", musicZone, defaultTrack);

	return musicTrack;
};

// vanilla base
instance kho_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("kho_day_std", "kh_daystd.sgt"); }; // Khorinis day
instance kho_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("kho_ngt_std", "kh_daystd.sgt"); }; // Khorinis night
instance owd_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("owd_day_std", "owd_daystd.sgt"); }; // Old World day
instance owd_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("owd_ngt_std", "owd_daystd.sgt"); }; // Old World night
instance fri_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("fri_day_std", "fri_daystd.sgt"); }; // Cemetery day
instance fri_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("fri_day_std", "fri_daystd.sgt"); }; // Cemetery night
instance dlc_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("dlc_day_std", "dlc_daystd.sgt"); }; // Dragon Location (OW)
instance dlc_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("dlc_ngt_std", "dlc_daystd.sgt"); }; // Dragon Location (OW)
instance kas_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("kas_day_std", "kas_daystd.sgt"); }; // Barracks
instance kas_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("kas_ngt_std", "kas_daystd.sgt"); }; // Barracks
instance leu_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("leu_day_std", "LEU_DAYSTD.sgt"); }; // Lighthouse
instance leu_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("leu_ngt_std", "LEU_DAYSTD.sgt"); }; // Lighthouse
instance lob_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("lob_day_std", "lob_daystd.sgt"); }; // Lobart's Farm
instance lob_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("lob_ngt_std", "lob_daystd.sgt"); }; // Lobart's Farm
instance ban_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("ban_day_std", "Gamemenu.sgt"); }; // Dexter
instance may_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("may_day_std", "may_daystd.sgt"); }; // pyramids
instance moi_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("moi_day_std", "mi_daystd.sgt"); }; // Monastery inner
instance moo_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("moo_day_std", "mo_daystd.sgt"); }; // Monastery outer
instance owp_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("owp_day_std", "owp_daystd.sgt"); }; // passage to OW (in NW)
instance owp_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("owp_ngt_std", "owp_daystd.sgt"); }; // passage to OW (in NW)
instance pie_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("pie_day_std", "pie_daystd.sgt"); }; // paladin ship
instance pie_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("pie_ngt_std", "pie_daystd.sgt"); }; // paladin ship
instance woo_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("woo_day_std", "woo_daystd.sgt"); }; // Lester's forest
instance ins_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("ins_day_std", "di_daystd.sgt"); }; // Dragon Island
instance tav_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("tav_day_std", "NW_TAVERN.MP3"); }; // was unused

// vanilla Night of the Raven
instance adw_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("adw_day_std", "adw_day_std.sgt"); }; // AddonWorld (default)
instance awc_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("awc_day_std", "awc_day_std.sgt"); }; // AddonWorld Entrance Temple
instance adt_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("adt_day_std", "adt_day_std.sgt"); }; // Adanos Temple
instance bdt_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("bdt_day_std", "bdt_day_std.sgt"); }; // Bandit Camp
instance bdt_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("bdt_ngt_std", "bdt_day_std.sgt"); }; // Bandit Camp
instance bib_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("bib_day_std", "bib_day_std.sgt"); }; // Canyon Library
instance can_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("can_day_std", "can_day_std.sgt"); }; // Canyon
instance can_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("can_ngt_std", "can_day_std.sgt"); }; // Canyon
instance cry_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("cry_day_std", "awc_day_std.sgt"); }; // Crystal Cave
instance gol_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("gol_day_std", "bib_day_std.sgt"); }; // Gold Mine
instance gho_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("gho_day_std", "bib_day_std.sgt"); }; // Ghost Crypt
instance mi1_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("mi1_day_std", "bib_day_std.sgt"); }; // Canyon Mine 1
instance mi2_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("mi2_day_std", "bib_day_std.sgt"); }; // Canyon Mine 2
instance po1_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("po1_day_std", "bib_day_std.sgt"); }; // Entrance Dungeon
instance rav_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("rav_day_std", "bdt_day_std.sgt"); }; // Raven
instance sho_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("sho_day_std", "sho_day_std.sgt"); }; // Showdown
instance swp_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("swp_day_std", "swp_day_std.sgt"); }; // Swamps
instance sto_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("sto_day_std", "sto_day_std.sgt"); }; // Stone Plates

// exist in unmodded game and NB (but some changed tracks or renamed zones in NB compared to original game), original defaults
instance xar_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("xar_day_std", "xt_daystd.sgt"); }; // Xardas
instance xar_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("xar_ngt_std", "xt_daystd.sgt"); }; // Xardas
instance def_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("def_day_std", "nw_daystd_A0.sgt"); }; // default day
instance def_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("def_ngt_std", "nw_daystd_A0.sgt"); }; // default night
instance pir_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("pir_day_std", "pir_day_std.sgt"); }; // pirate camp  (NB renamed zone and changed)
instance mod_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("mod_ngt_std", "MI_DayStd.sgt"); }; // Monastery (NB renamed zone and changed)
instance mod_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("mod_day_std", "MI_DayStd.sgt"); }; // Monastery (NB renamed zone and changed)
instance nwp_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("nwp_day_std", "MI_DayStd.sgt"); }; // pyramides (NB renamed zone and changed)
instance ow_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("ow_day_std", "ow_day_std.sgt"); }; // Old World day (NB renamed zone)
instance ow_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("ow_ngt_std", "ow_day_std.sgt"); }; // Old World night (NB renamed zone)
instance tal_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("tal_day_std", "woo_daystd.sgt"); }; // Lester's forest (NB renamed zone)

// exist in unmodded game and NB (but some changed tracks or renamed zones in NB compared to original game), NB defaults
// instance kho_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("kho_day_std", "kh_daystd.sgt"); };
// instance xar_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("xar_day_std", "xt_daystd.sgt"); };
// instance def_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("def_day_std", "nw_daystd_A0.sgt"); };
// instance def_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("def_ngt_std", "nw_daystd_A0.sgt"); };
// instance pir_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("pir_day_std", "PirCamp.sgt"); };
// instance mod_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("mod_ngt_std", "ban_daystd.sgt"); };
// instance mod_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("mod_day_std", "ban_daystd.sgt"); };
// instance nwp_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("nwp_day_std", "Keeper_library.sgt"); };
// instance ow_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("ow_day_std", "ow_day_std.sgt"); };
// instance ow_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("ow_ngt_std", "ow_day_std.sgt"); };
// instance tal_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("tal_day_std", "DarkSagaThickWood.sgt"); };

// leftovers from G1
instance orc_day_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("orc_day_std", "orc_day_std.sgt"); };
instance ogy_day_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("ogy_day_std", "ogy_day_std.sgt"); };
instance olm_day_std(c_musictheme_def) { file = getMusicTrackFromConfig("olm_day_std", "olm_day_std.sgt"); };
instance nci_day_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("nci_day_std", "nci_day_std.sgt"); };

// NB exclusive
test rx_boss_ghost_liker_immortalstage
{
instance xar_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("xar_ngt_std", "xt_daystd.sgt"); };
instance hrs_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("hrs_day_std", "nw_daystd_A0.sgt"); }; // NW default
instance hrs_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("hrs_ngt_std", "nw_daystd_A0.sgt"); }; // NW default
instance dsm_day_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("dsm_day_std", "DarkSagaMenu.sgt"); }; // Onar's Farm day
instance dsm_ngt_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("dsm_ngt_std", "DarkSagaMenu.sgt"); }; // Onar's Farm night
instance moi_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("moi_ngt_std", "mi_daystd.sgt"); };
instance tpl_day_std(c_musictheme_def) { file = getMusicTrackFromConfig("tpl_day_std", "ogy_day_std.sgt"); };
instance tpl_ngt_std(c_musictheme_def) { file = getMusicTrackFromConfig("tpl_ngt_std", "ogy_day_std.sgt"); };
instance kat_day_std(c_musictheme_def) { file = getMusicTrackFromConfig("kat_day_std", "ogy_day_std.sgt"); };
instance kat_ngt_std(c_musictheme_def) { file = getMusicTrackFromConfig("kat_ngt_std", "ogy_day_std.sgt"); };
instance spl_day_std(c_musictheme_def) { file = getMusicTrackFromConfig("spl_day_std", "ogy_day_std.sgt"); };
instance spl_ngt_std(c_musictheme_def) { file = getMusicTrackFromConfig("spl_ngt_std", "ogy_day_std.sgt"); };
instance psi_day_std(c_musictheme_def) { file = getMusicTrackFromConfig("psi_day_std", "psi_day_std.sgt"); };
instance psi_ngt_std(c_musictheme_def) { file = getMusicTrackFromConfig("psi_ngt_std", "psi_ngt_std.sgt"); };
instance frm_day_std(c_musictheme_def) { file = getMusicTrackFromConfig("frm_day_std", "olm_day_std.sgt"); };
instance frm_ngt_std(c_musictheme_def) { file = getMusicTrackFromConfig("frm_ngt_std", "olm_day_std.sgt"); };
instance olm_ngt_std(c_musictheme_def) { file = getMusicTrackFromConfig("olm_ngt_std", "olm_day_std.sgt"); };
instance ogy_ngt_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("ogy_ngt_std", "ogy_day_std.sgt"); };
instance or_day_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("or_day_std", "ban_day_std.sgt"); };
instance or_ngt_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("or_ngt_std", "cam_ngt_std.sgt"); };
instance orc_ngt_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("orc_ngt_std", "orc_day_std.sgt"); };
instance foc_day_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("foc_day_std", "FOC_day_std.sgt"); };
instance foc_ngt_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("foc_ngt_std", "FOC_day_std.sgt"); };
instance nco_day_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("nco_day_std", "cam_day_std.sgt"); };
instance nco_ngt_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("nco_ngt_std", "cam_ngt_std.sgt"); };
instance nci_ngt_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("nci_ngt_std", "nci_day_std.sgt"); };
instance fin_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("fin_day_std", "FIN_DayStd.sgt"); };
instance dez_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("dez_day_std", "ow_day_std.sgt"); };
instance dez_ngt_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("dez_ngt_std", "cam_ngt_std.sgt"); };
instance ocz_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("ocz_day_std", "oc_day_std.sgt"); };
instance ocz_ngt_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("ocz_ngt_std", "cam_ngt_std.sgt"); };
instance ocn_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("ocn_day_std", "OCN_Day_Std.sgt"); };
instance ocn_ngt_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("ocn_ngt_std", "OCN_Day_Std.sgt"); };
instance lci_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("lci_day_std", "LCI_DAYSTD.sgt"); };
instance cpa_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("cpa_day_std", "CPA_DayStd.sgt"); };
instance cph_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("cph_day_std", "CPH_DayStd.sgt"); };
instance cpu_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("cpu_day_std", "CPU_DayStd.sgt"); };
instance dsr_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("dsr_day_std", "DarkSagaAncientRuins.sgt"); };
instance dsd_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("dsd_day_std", "DarkSagaDeathland.sgt"); };
instance dsw_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("dsw_day_std", "DarkSagaThickWood.sgt"); };
instance dsu_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("dsu_day_std", "DarkSagaUnderground.sgt"); };
instance cpf_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("cpf_day_std", "CPF_Day_fgt.sgt"); };
instance cpm_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("cpm_day_std", "CPM_DayStd.sgt"); };
instance dso_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("dso_day_std", "DarkSagaOrksCamp.sgt"); };
instance has_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("has_day_std", "CTD_Day_Std.sgt"); };
instance dsp_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("dsp_day_std", "DarkSagaPirateCamp.sgt"); };
instance dsp_ngt_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("dsp_ngt_std", "DarkSagaBackground.sgt"); };
instance hum_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("hum_day_std", "Hummers.sgt"); };
instance kct_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("kct_day_std", "Kurshok_citadel.sgt"); };
instance oap_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("oap_day_std", "OnarAndPlato.sgt"); };
instance lws_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("lws_day_std", "GTH_Day_Std.sgt"); };
instance sqt_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("sqt_day_std", "south_quarter.sgt"); };
instance snm_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("snm_day_std", "stonemarket.sgt"); };
instance rfi_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("rfi_day_std", "TownAndNear.sgt"); };
instance dsg_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("dsg_day_std", "di_daystd.sgt"); };
instance nrd_day_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("nrd_day_std", "Dungeon_snd_01.sgt"); };
instance nrd_ngt_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("nrd_ngt_std", "Dungeon_snd_01.sgt"); };
instance ims_day_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("ims_day_std", "OrcMountains.sgt"); };
instance ims_ngt_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("ims_ngt_std", "OrcMountains.sgt"); };
instance dsh_day_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("dsh_day_std", "DarkSagaHuntsmanCamp.sgt"); };
instance dsh_ngt_std(C_MUSICTHEME_DEF) { file = getMusicTrackFromConfig("dsh_ngt_std", "DarkSagaHuntsmanCamp.sgt"); };
instance dst_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("dst_day_std", "IN_VENGARD.sgt"); };
instance owb_day_std(C_MUSICTHEME_STANDARD) { file = getMusicTrackFromConfig("owb_day_std", "DarkSagaTempleOfTheSkull.sgt"); };
instance men_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("men_day_std", "mi_daystd.sgt"); };
instance men_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("men_ngt_std", "mi_daystd.sgt"); };
instance psc_day_std(c_musictheme_def) { file = getMusicTrackFromConfig("psc_day_std", "men_LoA_Menu.sgt"); };
instance psc_ngt_std(c_musictheme_def) { file = getMusicTrackFromConfig("psc_ngt_std", "men_LoA_Menu.sgt"); };
instance rch_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("rch_day_std", "MEN_DAY_Std.sgt"); };
instance cos_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("cos_day_std", "DarkSagaOldLighthouse.sgt"); };
instance thf_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("thf_day_std", "PC_Day_Std.sgt"); };
};

/* // this looks like L'Hiver, ignore for now
instance sal_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("sal_day_std", "bad_day_std.sgt"); };
instance cam_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("cam_day_std", "bad_day_std.sgt"); };
instance cam_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("cam_ngt_std", "bad_day_std.sgt"); };
instance lhf_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("lhf_day_std", "bad_day_std.sgt"); };
instance oc_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("oc_day_std", "bad_day_std.sgt"); };
instance oc_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("oc_ngt_std", "bad_day_std.sgt"); };
instance nc_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("nc_day_std", "bad_day_std.sgt"); };
instance nc_ngt_std(c_musictheme_standard) { file = getMusicTrackFromConfig("nc_ngt_std", "bad_day_std.sgt"); };
instance ork_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("ork_day_std", "bad_day_std.sgt"); };
*/
