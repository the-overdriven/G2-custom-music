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
	file 		 = Hlp_ReadOptionString("Gothic", "[CUSTOM_MUSIC]", "SYS_Menu", "gamestart.sgt");
	transType	 = TRANSITION_TYPE_NONE;
	transSubType = TRANSITION_SUB_TYPE_IMMEDIATE;	
	ReverbMix	 = -12;
	ReverbTime	 = 8500;
};

func string getMusicTrackFromConfig(var string musicZone, var string defaultMusic) {
	var string musicTrack; musicTrack = Hlp_ReadOptionString("Gothic", "[CUSTOM_MUSIC]", musicZone, defaultMusic);

	return musicTrack;
};

// vanilla base
instance owd_day_std(c_musictheme_standard) { test owd_day_std_old { file = getMusicTrackFromConfig("owd_day_std", "owd_daystd.sgt"); }; };
instance owd_ngt_std(c_musictheme_standard) { test owd_ngt_std_old { file = getMusicTrackFromConfig("owd_ngt_std", "owd_daystd.sgt"); }; };
instance ins_day_std(c_musictheme_standard) { test ins_day_std_old { file = getMusicTrackFromConfig("ins_day_std", "di_daystd.sgt"); }; };
instance fri_day_std(c_musictheme_standard) { test fri_day_std_old { file = getMusicTrackFromConfig("fri_day_std", "fri_daystd.sgt"); }; };
instance dlc_day_std(c_musictheme_standard) { test dlc_day_std_old { file = getMusicTrackFromConfig("dlc_day_std", "dlc_daystd.sgt"); }; };
instance kas_day_std(c_musictheme_standard) { test kas_day_std_old { file = getMusicTrackFromConfig("kas_day_std", "kas_daystd.sgt"); }; };
instance leu_day_std(c_musictheme_standard) { test leu_day_std_old { file = getMusicTrackFromConfig("leu_day_std", "LEU_DAYSTD.sgt"); }; };
instance lob_day_std(c_musictheme_standard) { test lob_day_std_old { file = getMusicTrackFromConfig("lob_day_std", "lob_daystd.sgt"); }; };
instance may_day_std(c_musictheme_standard) { test may_day_std_old { file = getMusicTrackFromConfig("may_day_std", "may_daystd.sgt"); }; };
instance moi_day_std(c_musictheme_standard) { test moi_day_std_old { file = getMusicTrackFromConfig("moi_day_std", "mi_daystd.sgt"); }; };
instance moo_day_std(c_musictheme_standard) { test moo_day_std_old { file = getMusicTrackFromConfig("moo_day_std", "mo_daystd.sgt"); }; };
instance owp_day_std(c_musictheme_standard) { test owp_day_std_old { file = getMusicTrackFromConfig("owp_day_std", "owp_daystd.sgt"); }; };
instance pie_day_std(c_musictheme_standard) { test pie_day_std_old { file = getMusicTrackFromConfig("pie_day_std", "pie_daystd.sgt"); }; };
instance tal_day_std(c_musictheme_standard) { test tal_day_std_old { file = getMusicTrackFromConfig("tal_day_std", "DarkSagaThickWood.sgt"); }; };
instance woo_day_std(c_musictheme_standard) { test woo_day_std_old { file = getMusicTrackFromConfig("woo_day_std", "woo_daystd.sgt"); }; };
instance tav_day_std(c_musictheme_standard) { file = getMusicTrackFromConfig("tav_day_std", "NW_TAVERN.MP3"); }; // was unused

// vanilla Night of the Raven
instance adw_day_std(c_musictheme_standard) { test adw_day_std_old { file = getMusicTrackFromConfig("adw_day_std", "adw_day_std.sgt"); }; };
instance awc_day_std(c_musictheme_standard) { test awc_day_std_old { file = getMusicTrackFromConfig("awc_day_std", "awc_day_std.sgt"); }; };
instance adt_day_std(c_musictheme_standard) { test adt_day_std_old { file = getMusicTrackFromConfig("adt_day_std", "adt_day_std.sgt"); }; };
instance bdt_day_std(c_musictheme_standard) { test bdt_day_std_old { file = getMusicTrackFromConfig("bdt_day_std", "bdt_day_std.sgt"); }; };
instance bib_day_std(c_musictheme_standard) { test bib_day_std_old { file = getMusicTrackFromConfig("bib_day_std", "bib_day_std.sgt"); }; };
instance can_day_std(c_musictheme_standard) { test can_day_std_old { file = getMusicTrackFromConfig("can_day_std", "can_day_std.sgt"); }; };
instance cry_day_std(c_musictheme_standard) { test cry_day_std_old { file = getMusicTrackFromConfig("cry_day_std", "awc_day_std.sgt"); }; };
instance gol_day_std(c_musictheme_standard) { test gol_day_std_old { file = getMusicTrackFromConfig("gol_day_std", "bib_day_std.sgt"); }; };
instance gho_day_std(c_musictheme_standard) { test gho_day_std_old { file = getMusicTrackFromConfig("gho_day_std", "bib_day_std.sgt"); }; };
instance mi1_day_std(c_musictheme_standard) { test mi1_day_std_old { file = getMusicTrackFromConfig("mi1_day_std", "bib_day_std.sgt"); }; };
instance mi2_day_std(c_musictheme_standard) { test mi2_day_std_old { file = getMusicTrackFromConfig("mi2_day_std", "bib_day_std.sgt"); }; };
instance po1_day_std(c_musictheme_standard) { test po1_day_std_old { file = getMusicTrackFromConfig("po1_day_std", "bib_day_std.sgt"); }; };
instance rav_day_std(c_musictheme_standard) { test rav_day_std_old { file = getMusicTrackFromConfig("rav_day_std", "bdt_day_std.sgt"); }; };
instance sho_day_std(c_musictheme_standard) { test sho_day_std_old { file = getMusicTrackFromConfig("sho_day_std", "sho_day_std.sgt"); }; };
instance swp_day_std(c_musictheme_standard) { test swp_day_std_old { file = getMusicTrackFromConfig("swp_day_std", "swp_day_std.sgt"); }; };
instance sto_day_std(c_musictheme_standard) { test sto_day_std_old { file = getMusicTrackFromConfig("sto_day_std", "sto_day_std.sgt"); }; };

// exist in vanilla and NB (but some changed tracks or renamed zones in NB compared to original game), original defaults
instance kho_day_std(c_musictheme_standard) { test kho_day_std_old { file = getMusicTrackFromConfig("kho_day_std", "kh_daystd.sgt"); }; };
instance xar_day_std(c_musictheme_standard) { test xar_day_std_old { file = getMusicTrackFromConfig("xar_day_std", "xt_daystd.sgt"); }; };
instance def_day_std(c_musictheme_standard) { test def_day_std_old { file = getMusicTrackFromConfig("def_day_std", "nw_daystd_A0.sgt"); }; };
instance def_ngt_std(c_musictheme_standard) { test def_ngt_std_old { file = getMusicTrackFromConfig("def_ngt_std", "nw_daystd_A0.sgt"); }; };
instance pir_day_std(c_musictheme_standard) { test pir_day_std_old { file = getMusicTrackFromConfig("pir_day_std", "pir_day_std.sgt"); }; };
instance ban_day_std(c_musictheme_standard) { test ban_day_std_old { file = getMusicTrackFromConfig("ban_day_std", "Gamemenu.sgt"); }; };
instance mod_ngt_std(c_musictheme_standard) { test mod_ngt_std_old { file = getMusicTrackFromConfig("mod_ngt_std", "MI_DayStd.sgt"); }; };
instance mod_day_std(c_musictheme_standard) { test mod_day_std_old { file = getMusicTrackFromConfig("mod_day_std", "MI_DayStd.sgt"); }; };
instance nwp_day_std(c_musictheme_standard) { test nwp_day_std_old { file = getMusicTrackFromConfig("nwp_day_std", "MI_DayStd.sgt"); }; };
instance ow_day_std(c_musictheme_standard) { test ow_day_std_old { file = getMusicTrackFromConfig("ow_day_std", "ow_day_std.sgt"); }; };
instance ow_ngt_std(c_musictheme_standard) { test ow_ngt_std_old { file = getMusicTrackFromConfig("ow_ngt_std", "ow_day_std.sgt"); }; };

// exist in vanilla and NB (but some changed tracks or renamed zones in NB compared to original game), NB defaults
// instance kho_day_std(c_musictheme_standard) { test kho_day_std_old { file = getMusicTrackFromConfig("kho_day_std", "kh_daystd.sgt"); }; };
// instance xar_day_std(c_musictheme_standard) { test xar_day_std_old { file = getMusicTrackFromConfig("xar_day_std", "xt_daystd.sgt"); }; };
// instance def_day_std(c_musictheme_standard) { test def_day_std_old { file = getMusicTrackFromConfig("def_day_std", "nw_daystd_A0.sgt"); }; };
// instance def_ngt_std(c_musictheme_standard) { test def_ngt_std_old { file = getMusicTrackFromConfig("def_ngt_std", "nw_daystd_A0.sgt"); }; };
// instance pir_day_std(c_musictheme_standard) { test pir_day_std_old { file = getMusicTrackFromConfig("pir_day_std", "PirCamp.sgt"); }; };
// instance ban_day_std(c_musictheme_standard) { test ban_day_std_old { file = getMusicTrackFromConfig("ban_day_std", "Gamemenu.sgt"); }; };
// instance mod_ngt_std(c_musictheme_standard) { test mod_ngt_std_old { file = getMusicTrackFromConfig("mod_ngt_std", "ban_daystd.sgt"); }; };
// instance mod_day_std(c_musictheme_standard) { test mod_day_std_old { file = getMusicTrackFromConfig("mod_day_std", "ban_daystd.sgt"); }; };
// instance nwp_day_std(c_musictheme_standard) { test nwp_day_std_old { file = getMusicTrackFromConfig("nwp_day_std", "Keeper_library.sgt"); }; };
// instance ow_day_std(c_musictheme_standard) { test ow_day_std_old { file = getMusicTrackFromConfig("ow_day_std", "ow_day_std.sgt"); }; };
// instance ow_ngt_std(c_musictheme_standard) { test ow_ngt_std_old { file = getMusicTrackFromConfig("ow_ngt_std", "ow_day_std.sgt"); }; };

// NB exclusive
instance xar_ngt_std(c_musictheme_standard) { test xar_ngt_std_old { file = getMusicTrackFromConfig("xar_ngt_std", "xt_daystd.sgt"); }; };
instance moi_ngt_std(c_musictheme_standard) { test moi_ngt_std_old { file = getMusicTrackFromConfig("moi_ngt_std", "mi_daystd.sgt"); }; };
instance tpl_day_std(c_musictheme_def) { test tpl_day_std_old { file = getMusicTrackFromConfig("tpl_day_std", "ogy_day_std.sgt"); }; };
instance tpl_ngt_std(c_musictheme_def) { test tpl_ngt_std_old { file = getMusicTrackFromConfig("tpl_ngt_std", "ogy_day_std.sgt"); }; };
instance kat_day_std(c_musictheme_def) { test kat_day_std_old { file = getMusicTrackFromConfig("kat_day_std", "ogy_day_std.sgt"); }; };
instance kat_ngt_std(c_musictheme_def) { test kat_ngt_std_old { file = getMusicTrackFromConfig("kat_ngt_std", "ogy_day_std.sgt"); }; };
instance spl_day_std(c_musictheme_def) { test spl_day_std_old { file = getMusicTrackFromConfig("spl_day_std", "ogy_day_std.sgt"); }; };
instance spl_ngt_std(c_musictheme_def) { test spl_ngt_std_old { file = getMusicTrackFromConfig("spl_ngt_std", "ogy_day_std.sgt"); }; };
instance psi_day_std(c_musictheme_def) { test psi_day_std_old { file = getMusicTrackFromConfig("psi_day_std", "psi_day_std.sgt"); }; };
instance psi_ngt_std(c_musictheme_def) { test psi_ngt_std_old { file = getMusicTrackFromConfig("psi_ngt_std", "psi_ngt_std.sgt"); }; };
instance frm_day_std(c_musictheme_def) { test frm_day_std_old { file = getMusicTrackFromConfig("frm_day_std", "olm_day_std.sgt"); }; };
instance frm_ngt_std(c_musictheme_def) { test frm_ngt_std_old { file = getMusicTrackFromConfig("frm_ngt_std", "olm_day_std.sgt"); }; };
instance olm_day_std(c_musictheme_def) { test olm_day_std_old { file = getMusicTrackFromConfig("olm_day_std", "olm_day_std.sgt"); }; };
instance olm_ngt_std(c_musictheme_def) { test olm_ngt_std_old { file = getMusicTrackFromConfig("olm_ngt_std", "olm_day_std.sgt"); }; };
instance ogy_day_std(C_MUSICTHEME_DEF) { test ogy_day_std_old { file = getMusicTrackFromConfig("ogy_day_std", "ogy_day_std.sgt"); }; };
instance ogy_ngt_std(C_MUSICTHEME_DEF) { test ogy_ngt_std_old { file = getMusicTrackFromConfig("ogy_ngt_std", "ogy_day_std.sgt"); }; };
instance or_day_std(C_MUSICTHEME_DEF) { test or_day_std_old { file = getMusicTrackFromConfig("or_day_std", "ban_day_std.sgt"); }; };
instance or_ngt_std(C_MUSICTHEME_DEF) { test or_ngt_std_old { file = getMusicTrackFromConfig("or_ngt_std", "cam_ngt_std.sgt"); }; };
instance orc_day_std(C_MUSICTHEME_DEF) { test orc_day_std_old { file = getMusicTrackFromConfig("orc_day_std", "orc_day_std.sgt"); }; };
instance orc_ngt_std(C_MUSICTHEME_DEF) { test orc_ngt_std_old { file = getMusicTrackFromConfig("orc_ngt_std", "orc_day_std.sgt"); }; };
instance foc_day_std(C_MUSICTHEME_DEF) { test foc_day_std_old { file = getMusicTrackFromConfig("foc_day_std", "FOC_day_std.sgt"); }; };
instance foc_ngt_std(C_MUSICTHEME_DEF) { test foc_ngt_std_old { file = getMusicTrackFromConfig("foc_ngt_std", "FOC_day_std.sgt"); }; };
instance nco_day_std(C_MUSICTHEME_DEF) { test nco_day_std_old { file = getMusicTrackFromConfig("nco_day_std", "cam_day_std.sgt"); }; };
instance nco_ngt_std(C_MUSICTHEME_DEF) { test nco_ngt_std_old { file = getMusicTrackFromConfig("nco_ngt_std", "cam_ngt_std.sgt"); }; };
instance nci_day_std(C_MUSICTHEME_DEF) { test nci_day_std_old { file = getMusicTrackFromConfig("nci_day_std", "nci_day_std.sgt"); }; };
instance nci_ngt_std(C_MUSICTHEME_DEF) { test nci_ngt_std_old { file = getMusicTrackFromConfig("nci_ngt_std", "nci_day_std.sgt"); }; };

instance fin_day_std(C_MUSICTHEME_STANDARD) { test fin_day_std_old { file = getMusicTrackFromConfig("fin_day_std", "FIN_DayStd.sgt"); }; };
instance dez_day_std(C_MUSICTHEME_STANDARD) { test dez_day_std_old { file = getMusicTrackFromConfig("dez_day_std", "ow_day_std.sgt"); }; };
instance dez_ngt_std(C_MUSICTHEME_STANDARD) { test dez_ngt_std_old { file = getMusicTrackFromConfig("dez_ngt_std", "cam_ngt_std.sgt"); }; };
instance ocz_day_std(C_MUSICTHEME_STANDARD) { test ocz_day_std_old { file = getMusicTrackFromConfig("ocz_day_std", "oc_day_std.sgt"); }; };
instance ocz_ngt_std(C_MUSICTHEME_STANDARD) { test ocz_ngt_std_old { file = getMusicTrackFromConfig("ocz_ngt_std", "cam_ngt_std.sgt"); }; };
instance ocn_day_std(C_MUSICTHEME_STANDARD) { test ocn_day_std_old { file = getMusicTrackFromConfig("ocn_day_std", "OCN_Day_Std.sgt"); }; };
instance ocn_ngt_std(C_MUSICTHEME_STANDARD) { test ocn_ngt_std_old { file = getMusicTrackFromConfig("ocn_ngt_std", "OCN_Day_Std.sgt"); }; };
instance lci_day_std(C_MUSICTHEME_STANDARD) { test lci_day_std_old { file = getMusicTrackFromConfig("lci_day_std", "LCI_DAYSTD.sgt"); }; };
instance cpa_day_std(C_MUSICTHEME_STANDARD) { test cpa_day_std_old { file = getMusicTrackFromConfig("cpa_day_std", "CPA_DayStd.sgt"); }; };
instance cph_day_std(C_MUSICTHEME_STANDARD) { test cph_day_std_old { file = getMusicTrackFromConfig("cph_day_std", "CPH_DayStd.sgt"); }; };
instance cpu_day_std(C_MUSICTHEME_STANDARD) { test cpu_day_std_old { file = getMusicTrackFromConfig("cpu_day_std", "CPU_DayStd.sgt"); }; };
instance dsr_day_std(C_MUSICTHEME_STANDARD) { test dsr_day_std_old { file = getMusicTrackFromConfig("dsr_day_std", "DarkSagaAncientRuins.sgt"); }; };
instance dsd_day_std(C_MUSICTHEME_STANDARD) { test dsd_day_std_old { file = getMusicTrackFromConfig("dsd_day_std", "DarkSagaDeathland.sgt"); }; };
instance dsw_day_std(C_MUSICTHEME_STANDARD) { test dsw_day_std_old { file = getMusicTrackFromConfig("dsw_day_std", "DarkSagaThickWood.sgt"); }; };
instance dsu_day_std(C_MUSICTHEME_STANDARD) { test dsu_day_std_old { file = getMusicTrackFromConfig("dsu_day_std", "DarkSagaUnderground.sgt"); }; };
instance cpf_day_std(C_MUSICTHEME_STANDARD) { test cpf_day_std_old { file = getMusicTrackFromConfig("cpf_day_std", "CPF_Day_fgt.sgt"); }; };
instance cpm_day_std(C_MUSICTHEME_STANDARD) { test cpm_day_std_old { file = getMusicTrackFromConfig("cpm_day_std", "CPM_DayStd.sgt"); }; };
instance dso_day_std(C_MUSICTHEME_STANDARD) { test dso_day_std_old { file = getMusicTrackFromConfig("dso_day_std", "DarkSagaOrksCamp.sgt"); }; };
instance has_day_std(C_MUSICTHEME_STANDARD) { test has_day_std_old { file = getMusicTrackFromConfig("has_day_std", "CTD_Day_Std.sgt"); }; };
instance dsp_day_std(C_MUSICTHEME_STANDARD) { test dsp_day_std_old { file = getMusicTrackFromConfig("dsp_day_std", "DarkSagaPirateCamp.sgt"); }; };
instance dsp_ngt_std(C_MUSICTHEME_STANDARD) { test dsp_ngt_std_old { file = getMusicTrackFromConfig("dsp_ngt_std", "DarkSagaBackground.sgt"); }; };
instance hum_day_std(C_MUSICTHEME_STANDARD) { test hum_day_std_old { file = getMusicTrackFromConfig("hum_day_std", "Hummers.sgt"); }; };
instance kct_day_std(C_MUSICTHEME_STANDARD) { test kct_day_std_old { file = getMusicTrackFromConfig("kct_day_std", "Kurshok_citadel.sgt"); }; };
instance oap_day_std(C_MUSICTHEME_STANDARD) { test oap_day_std_old { file = getMusicTrackFromConfig("oap_day_std", "OnarAndPlato.sgt"); }; };
instance lws_day_std(C_MUSICTHEME_STANDARD) { test lws_day_std_old { file = getMusicTrackFromConfig("lws_day_std", "GTH_Day_Std.sgt"); }; };
instance sqt_day_std(C_MUSICTHEME_STANDARD) { test sqt_day_std_old { file = getMusicTrackFromConfig("sqt_day_std", "south_quarter.sgt"); }; };
instance snm_day_std(C_MUSICTHEME_STANDARD) { test snm_day_std_old { file = getMusicTrackFromConfig("snm_day_std", "stonemarket.sgt"); }; };
instance rfi_day_std(C_MUSICTHEME_STANDARD) { test rfi_day_std_old { file = getMusicTrackFromConfig("rfi_day_std", "TownAndNear.sgt"); }; };
instance dsg_day_std(C_MUSICTHEME_STANDARD) { test dsg_day_std_old { file = getMusicTrackFromConfig("dsg_day_std", "di_daystd.sgt"); }; };
instance nrd_day_std(C_MUSICTHEME_DEF) { test nrd_day_std_old { file = getMusicTrackFromConfig("nrd_day_std", "Dungeon_snd_01.sgt"); }; };
instance nrd_ngt_std(C_MUSICTHEME_DEF) { test nrd_ngt_std_old { file = getMusicTrackFromConfig("nrd_ngt_std", "Dungeon_snd_01.sgt"); }; };
instance ims_day_std(C_MUSICTHEME_DEF) { test ims_day_std_old { file = getMusicTrackFromConfig("ims_day_std", "OrcMountains.sgt"); }; };
instance ims_ngt_std(C_MUSICTHEME_DEF) { test ims_ngt_std_old { file = getMusicTrackFromConfig("ims_ngt_std", "OrcMountains.sgt"); }; };
instance dsh_day_std(C_MUSICTHEME_DEF) { test dsh_day_std_old { file = getMusicTrackFromConfig("dsh_day_std", "DarkSagaHuntsmanCamp.sgt"); }; };
instance dsh_ngt_std(C_MUSICTHEME_DEF) { test dsh_ngt_std_old { file = getMusicTrackFromConfig("dsh_ngt_std", "DarkSagaHuntsmanCamp.sgt"); }; };
instance dsm_day_std(C_MUSICTHEME_DEF) { test dsm_day_std_old { file = getMusicTrackFromConfig("dsm_day_std", "DarkSagaMenu.sgt"); }; };
instance dsm_ngt_std(C_MUSICTHEME_DEF) { test dsm_ngt_std_old { file = getMusicTrackFromConfig("dsm_ngt_std", "DarkSagaMenu.sgt"); }; };
instance dst_day_std(C_MUSICTHEME_STANDARD) { test dst_day_std_old { file = getMusicTrackFromConfig("dst_day_std", "IN_VENGARD.sgt"); }; };
instance owb_day_std(C_MUSICTHEME_STANDARD) { test owb_day_std_old { file = getMusicTrackFromConfig("owb_day_std", "DarkSagaTempleOfTheSkull.sgt"); }; };
instance men_day_std(c_musictheme_standard) { test men_day_std_old { file = getMusicTrackFromConfig("men_day_std", "mi_daystd.sgt"); }; };
instance men_ngt_std(c_musictheme_standard) { test men_ngt_std_old { file = getMusicTrackFromConfig("men_ngt_std", "mi_daystd.sgt"); }; };
instance hrs_day_std(c_musictheme_standard) { test hrs_day_std_old { file = getMusicTrackFromConfig("hrs_day_std", "nw_daystd_A0.sgt"); }; };
instance hrs_ngt_std(c_musictheme_standard) { test hrs_ngt_std_old { file = getMusicTrackFromConfig("hrs_ngt_std", "nw_daystd_A0.sgt"); }; };
instance psc_day_std(c_musictheme_def) { test psc_day_std_old { file = getMusicTrackFromConfig("psc_day_std", "men_LoA_Menu.sgt"); }; };
instance psc_ngt_std(c_musictheme_def) { test psc_ngt_std_old { file = getMusicTrackFromConfig("psc_ngt_std", "men_LoA_Menu.sgt"); }; };
instance rch_day_std(c_musictheme_standard) { test rch_day_std_old { file = getMusicTrackFromConfig("rch_day_std", "MEN_DAY_Std.sgt"); }; };
instance cos_day_std(c_musictheme_standard) { test cos_day_std_old { file = getMusicTrackFromConfig("cos_day_std", "DarkSagaOldLighthouse.sgt"); }; };
instance thf_day_std(c_musictheme_standard) { test thf_day_std_old { file = getMusicTrackFromConfig("thf_day_std", "PC_Day_Std.sgt"); }; };

/* // this looks like L'Hiver, ignore for now
instance sal_day_std(c_musictheme_standard) { test sal_day_std_old { file = getMusicTrackFromConfig("sal_day_std", "bad_day_std.sgt"); }; };
instance cam_day_std(c_musictheme_standard) { test cam_day_std_old { file = getMusicTrackFromConfig("cam_day_std", "bad_day_std.sgt"); }; };
instance cam_ngt_std(c_musictheme_standard) { test cam_ngt_std_old { file = getMusicTrackFromConfig("cam_ngt_std", "bad_day_std.sgt"); }; };
instance lhf_day_std(c_musictheme_standard) { test lhf_day_std_old { file = getMusicTrackFromConfig("lhf_day_std", "bad_day_std.sgt"); }; };
instance oc_day_std(c_musictheme_standard) { test oc_day_std_old { file = getMusicTrackFromConfig("oc_day_std", "bad_day_std.sgt"); }; };
instance oc_ngt_std(c_musictheme_standard) { test oc_ngt_std_old { file = getMusicTrackFromConfig("oc_ngt_std", "bad_day_std.sgt"); }; };
instance nc_day_std(c_musictheme_standard) { test nc_day_std_old { file = getMusicTrackFromConfig("nc_day_std", "bad_day_std.sgt"); }; };
instance nc_ngt_std(c_musictheme_standard) { test nc_ngt_std_old { file = getMusicTrackFromConfig("nc_ngt_std", "bad_day_std.sgt"); }; };
instance ork_day_std(c_musictheme_standard) { test ork_day_std_old { file = getMusicTrackFromConfig("ork_day_std", "bad_day_std.sgt"); }; };
*/
