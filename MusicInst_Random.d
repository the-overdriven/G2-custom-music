/* Randomizes tracks within a single music zone. */

META
{
    Parser = Game
    MergeMode = TRUE
};

/* returns a random number from a range defined in [CUSTOM_MUSIC](zone name)_random + 1 */
func int getRandomForZone(var string musicZone) {
    var int randomRange; 
    var string optionName; optionName = Str_format("%s_random", musicZone);
    randomRange = Hlp_ReadOptionInt("Gothic", "[CUSTOM_MUSIC]", optionName, 0);

    // Hlp_MessageBox(Str_format("randomRange for zone %s: %i", musicZone, randomRange));

    if (randomRange == 0)
    {
        return 0;
    };

    var int rnd; rnd = Hlp_Random(randomRange);

    // Hlp_MessageBox(Str_format("random number for zone %s: %i", musicZone, rnd));

    return rnd + 1;
};

/* writes to [CUSTOM_MUSIC](zone name) random .mp3 filename */
func void randomizeMusic(var string musicZone) {
    var int randomForZone; randomForZone = getRandomForZone(musicZone);

    // Hlp_MessageBox(Str_format("randomForZone %s: %i", musicZone, randomForZone));

    if (randomForZone == 0) {
        return;
    };

    Hlp_WriteOptionString("Gothic", "[CUSTOM_MUSIC]", musicZone, Str_format("%s_%i.mp3", musicZone, randomForZone));
};

func void randomizeAllZones() {
    randomizeMusic("SYS_Menu");

    randomizeMusic("adw_day_std");
    randomizeMusic("awc_day_std");
    randomizeMusic("adt_day_std");
    randomizeMusic("bdt_day_std");
    randomizeMusic("bib_day_std");
    randomizeMusic("can_day_std");
    randomizeMusic("cry_day_std");
    randomizeMusic("gol_day_std");
    randomizeMusic("gho_day_std");
    randomizeMusic("mi1_day_std");
    randomizeMusic("mi2_day_std");
    randomizeMusic("po1_day_std");
    randomizeMusic("pir_day_std");
    randomizeMusic("rav_day_std");
    randomizeMusic("sho_day_std");
    randomizeMusic("swp_day_std");
    randomizeMusic("sto_day_std");
    randomizeMusic("owd_day_std");
    randomizeMusic("owd_ngt_std");
    randomizeMusic("ins_day_std");
    randomizeMusic("ban_day_std");
    randomizeMusic("fri_day_std");
    randomizeMusic("dlc_day_std");
    randomizeMusic("kas_day_std");
    randomizeMusic("leu_day_std");
    randomizeMusic("lob_day_std");
    randomizeMusic("may_day_std");
    randomizeMusic("moi_day_std");
    randomizeMusic("moi_ngt_std");
    randomizeMusic("mod_ngt_std");
    randomizeMusic("mod_day_std");
    randomizeMusic("moo_day_std");
    randomizeMusic("owp_day_std");
    randomizeMusic("pie_day_std");
    randomizeMusic("tal_day_std");
    randomizeMusic("woo_day_std");
    randomizeMusic("tpl_day_std");
    randomizeMusic("tpl_ngt_std");
    randomizeMusic("kat_day_std");
    randomizeMusic("kat_ngt_std");
    randomizeMusic("spl_day_std");
    randomizeMusic("spl_ngt_std");
    randomizeMusic("psi_day_std");
    randomizeMusic("psi_ngt_std");
    randomizeMusic("frm_day_std");
    randomizeMusic("frm_ngt_std");
    randomizeMusic("olm_day_std");
    randomizeMusic("olm_ngt_std");
    randomizeMusic("ogy_day_std");
    randomizeMusic("ogy_ngt_std");
    randomizeMusic("or_day_std");
    randomizeMusic("or_ngt_std");
    randomizeMusic("orc_day_std");
    randomizeMusic("orc_ngt_std");
    randomizeMusic("foc_day_std");
    randomizeMusic("foc_ngt_std");
    randomizeMusic("nco_day_std");
    randomizeMusic("nco_ngt_std");
    randomizeMusic("nci_day_std");
    randomizeMusic("nci_ngt_std");
    randomizeMusic("ow_day_std");
    randomizeMusic("ow_ngt_std");
    randomizeMusic("fin_day_std");
    randomizeMusic("dez_day_std");
    randomizeMusic("dez_ngt_std");
    randomizeMusic("ocz_day_std");
    randomizeMusic("ocz_ngt_std");
    randomizeMusic("ocn_day_std");
    randomizeMusic("ocn_ngt_std");
    randomizeMusic("lci_day_std");
    randomizeMusic("cpa_day_std");
    randomizeMusic("cph_day_std");
    randomizeMusic("cpu_day_std");
    randomizeMusic("dsr_day_std");
    randomizeMusic("dsd_day_std");
    randomizeMusic("dsw_day_std");
    randomizeMusic("dsu_day_std");
    randomizeMusic("cpf_day_std");
    randomizeMusic("cpm_day_std");
    randomizeMusic("dso_day_std");
    randomizeMusic("has_day_std");
    randomizeMusic("dsp_day_std");
    randomizeMusic("dsp_ngt_std");
    randomizeMusic("hum_day_std");
    randomizeMusic("nwp_day_std");
    randomizeMusic("kct_day_std");
    randomizeMusic("oap_day_std");
    randomizeMusic("lws_day_std");
    randomizeMusic("sqt_day_std");
    randomizeMusic("snm_day_std");
    randomizeMusic("rfi_day_std");
    randomizeMusic("kho_day_std");
    randomizeMusic("dsg_day_std");
    randomizeMusic("nrd_day_std");
    randomizeMusic("nrd_ngt_std");
    randomizeMusic("ims_day_std");
    randomizeMusic("ims_ngt_std");
    randomizeMusic("dsh_day_std");
    randomizeMusic("dsh_ngt_std");
    randomizeMusic("dsm_day_std");
    randomizeMusic("dsm_ngt_std");
    randomizeMusic("dst_day_std");
    randomizeMusic("owb_day_std");
    randomizeMusic("men_day_std");
    randomizeMusic("men_ngt_std");
    randomizeMusic("xar_day_std");
    randomizeMusic("xar_ngt_std");
    randomizeMusic("hrs_day_std");
    randomizeMusic("hrs_ngt_std");
    randomizeMusic("psc_day_std");
    randomizeMusic("psc_ngt_std");
    randomizeMusic("def_day_std");
    randomizeMusic("def_ngt_std");
    randomizeMusic("rch_day_std");
    randomizeMusic("cos_day_std");
    randomizeMusic("thf_day_std"); 
};

func event GameInit() {
    randomizeAllZones();
};
