Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og104.obsmtp.com ([64.18.0.178])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOA6b-0001d6-LP
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 18:11:51 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 13 Mar 2014 18:10:00 +0000
Message-Id: <1394734204-8181-4-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1394734204-8181-1-git-send-email-renaud.barbier@ge.com>
References: <1394734204-8181-1-git-send-email-renaud.barbier@ge.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/6] ppc: mpc8xxx: add DDR3 support
To: barebox@lists.infradead.org

Add DDR3 support into the MPC8xxx DDR driver.

To avoid confusion, the function set_ddr_sdram_mode is renamed
set_ddr2_sdram_mode.

Checking for errors is simplified in the DDR2 DIMM parameters
computation to be consistent with DDR3.

This code is derived from the files found in directory drivers/ddr/fsl
from U-Boot version git-be937b5.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/ddr-8xxx/Makefile                         |   4 +-
 arch/ppc/ddr-8xxx/common_timing_params.h           |   2 +
 arch/ppc/ddr-8xxx/ctrl_regs.c                      | 429 +++++++++++++++++++--
 arch/ppc/ddr-8xxx/ddr.h                            |  15 +-
 arch/ppc/ddr-8xxx/ddr2_dimm_params.c               |   9 +-
 arch/ppc/ddr-8xxx/ddr3_dimm_params.c               | 193 +++++++++
 .../ppc/ddr-8xxx/{ddr2_setctrl.c => ddr_setctrl.c} |  44 ++-
 arch/ppc/ddr-8xxx/lc_common_dimm_params.c          | 103 +++--
 arch/ppc/ddr-8xxx/main.c                           |  12 +-
 arch/ppc/ddr-8xxx/options.c                        |  58 ++-
 arch/ppc/include/asm/fsl_ddr_dimm_params.h         |   9 +
 arch/ppc/include/asm/fsl_ddr_sdram.h               |  35 +-
 12 files changed, 813 insertions(+), 100 deletions(-)
 create mode 100644 arch/ppc/ddr-8xxx/ddr3_dimm_params.c
 rename arch/ppc/ddr-8xxx/{ddr2_setctrl.c => ddr_setctrl.c} (53%)

diff --git a/arch/ppc/ddr-8xxx/Makefile b/arch/ppc/ddr-8xxx/Makefile
index 54cb7ce..43ae3a4 100644
--- a/arch/ppc/ddr-8xxx/Makefile
+++ b/arch/ppc/ddr-8xxx/Makefile
@@ -1,2 +1,4 @@
 obj-y	+=  	main.o util.o ctrl_regs.o options.o lc_common_dimm_params.o
-obj-$(CONFIG_FSL_DDR2)	+= ddr2_dimm_params.o ddr2_setctrl.o
+obj-y	+=	ddr_setctrl.o
+obj-$(CONFIG_FSL_DDR2)	+= ddr2_dimm_params.o
+obj-$(CONFIG_FSL_DDR3)	+= ddr3_dimm_params.o
diff --git a/arch/ppc/ddr-8xxx/common_timing_params.h b/arch/ppc/ddr-8xxx/common_timing_params.h
index b262193..85a1e28 100644
--- a/arch/ppc/ddr-8xxx/common_timing_params.h
+++ b/arch/ppc/ddr-8xxx/common_timing_params.h
@@ -23,6 +23,7 @@ struct common_timing_params_s {
 	uint32_t tRRD_ps;	/* maximum = 63750 ps */
 	uint32_t tRC_ps;	/* maximum = 254 ns + .75 ns = 254750 ps */
 	uint32_t refresh_rate_ps;
+	uint32_t extended_op_srt;
 	uint32_t tIS_ps;	/* byte 32, spd->ca_setup */
 	uint32_t tIH_ps;	/* byte 33, spd->ca_hold */
 	uint32_t tDS_ps;	/* byte 34, spd->data_setup */
@@ -36,6 +37,7 @@ struct common_timing_params_s {
 	uint32_t additive_latency;
 	uint32_t all_DIMMs_burst_lengths_bitmask;
 	uint32_t all_DIMMs_registered;
+	uint32_t all_DIMMs_unbuffered;
 	uint32_t all_DIMMs_ECC_capable;
 	uint64_t total_mem;
 	uint64_t base_address;
diff --git a/arch/ppc/ddr-8xxx/ctrl_regs.c b/arch/ppc/ddr-8xxx/ctrl_regs.c
index 1abc826..e3d43ab 100644
--- a/arch/ppc/ddr-8xxx/ctrl_regs.c
+++ b/arch/ppc/ddr-8xxx/ctrl_regs.c
@@ -8,7 +8,7 @@
  */
 
 /*
- * Generic driver for Freescale DDR2 memory controller.
+ * Generic driver for Freescale DDR2/DDR3 memory controller.
  * Based on code from spd_sdram.c
  * Author: James Yang [at freescale.com]
  */
@@ -17,6 +17,33 @@
 #include <asm/fsl_ddr_sdram.h>
 #include "ddr.h"
 
+static uint32_t compute_cas_write_latency(void)
+{
+	uint32_t  cwl;
+	const uint32_t mclk_ps = get_memory_clk_period_ps();
+
+	if (mclk_ps >= 2500)
+		cwl = 5;
+	else if (mclk_ps >= 1875)
+		cwl = 6;
+	else if (mclk_ps >= 1500)
+		cwl = 7;
+	else if (mclk_ps >= 1250)
+		cwl = 8;
+	else if (mclk_ps >= 1070)
+		cwl = 9;
+	else if (mclk_ps >= 935)
+		cwl = 10;
+	else if (mclk_ps >= 833)
+		cwl = 11;
+	else if (mclk_ps >= 750)
+		cwl = 12;
+	else
+		cwl = 12;
+
+	return cwl;
+}
+
 static void set_csn_config(int dimm_number, int i,
 			   struct fsl_ddr_cfg_regs_s *ddr,
 			   const struct memctl_options_s *popts,
@@ -81,40 +108,91 @@ static void set_csn_config(int dimm_number, int i,
 }
 
 static void set_timing_cfg_0(struct fsl_ddr_cfg_regs_s *ddr,
-			     const struct memctl_options_s *popts)
+			     const struct memctl_options_s *popts,
+			     const struct dimm_params_s *dimm)
 {
-	uint32_t trwt_mclk = 0;
-
-	if (popts->trwt_override)
-		trwt_mclk = popts->trwt;
+	uint32_t trwt_mclk = 0, twrt_mclk = 0, act_pd_exit_mclk,
+		 pre_pd_exit_mclk, taxpd_mclk, tmrd_mclk, txp,
+		 data_rate = fsl_get_ddr_freq(0);
+
+	if (popts->sdram_type == SDRAM_TYPE_DDR2) {
+		act_pd_exit_mclk = popts->txard;
+		pre_pd_exit_mclk = popts->txp;
+		taxpd_mclk = popts->taxpd;
+		tmrd_mclk = popts->tmrd;
+	} else {
+		/*
+		 * tXARD is not part of the DDR3 specification, use the
+		 * parameter txp instead of it. That is:
+		 * txp=max(3nCK, 7.5ns).  As well, use tAXPD=1.
+		 */
+		txp = max_t(uint32_t, (get_memory_clk_period_ps() * 3), 7500);
+		data_rate = fsl_get_ddr_freq(0);
+		tmrd_mclk = 4;
+
+		/* for faster clock, need more time for data setup */
+		if (popts->trwt_override)
+			trwt_mclk = popts->trwt;
+		else if (data_rate / 1000000 > 1800)
+			trwt_mclk = 2;
+		else
+			trwt_mclk = 0;
+
+		if (data_rate / 1000000 > 1150)
+			twrt_mclk = 1;
+		else
+			twrt_mclk = 0;
+
+		taxpd_mclk = 1;
+		if (popts->dynamic_power == 0) {
+			act_pd_exit_mclk = 1;
+			pre_pd_exit_mclk = 1;
+		} else {
+			/* act_pd_exit_mclk = tXARD, see above */
+			act_pd_exit_mclk = picos_to_mclk(txp);
+			/* Mode register MR0[A12] is '1' - fast exit */
+			pre_pd_exit_mclk = act_pd_exit_mclk;
+		}
+	}
 
 	ddr->timing_cfg_0 = (((trwt_mclk & 0x3) << 30)
-			     | ((popts->txard & 0x7) << 20)
-			     | ((popts->txp & 0xF) << 16)
-			     | ((popts->taxpd & 0xf) << 8)
-			     | ((popts->tmrd & 0xf) << 0));
+			     | ((twrt_mclk & 0x3) << 28)
+			     | ((act_pd_exit_mclk & 0xf) << 20)
+			     | ((pre_pd_exit_mclk & 0xf) << 16)
+			     | ((taxpd_mclk & 0xf) << 8)
+			     | ((tmrd_mclk & 0x1f) << 0)
+			     );
 }
 
 static void set_timing_cfg_3(struct fsl_ddr_cfg_regs_s *ddr,
+			     const struct memctl_options_s *popts,
 			     const struct common_timing_params_s *dimm,
-			     uint32_t cas_latency)
+			     uint32_t cas_latency, uint32_t additive_latency)
 {
-	uint32_t ext_pretoact, ext_acttopre, ext_acttorw, ext_refrec;
+	uint32_t ext_pretoact, ext_acttopre, ext_acttorw, ext_refrec, ext_wrrec;
 
 	ext_pretoact = picos_to_mclk(dimm->tRP_ps) >> 4;
 	ext_acttopre = picos_to_mclk(dimm->tRAS_ps) >> 4;
 	ext_acttorw = picos_to_mclk(dimm->tRCD_ps) >> 4;
 	cas_latency = ((cas_latency << 1) - 1) >> 4;
+	additive_latency = additive_latency >> 4;
 	ext_refrec = (picos_to_mclk(dimm->tRFC_ps) - 8) >> 4;
+	/* ext_wrrec only deals with 16 clock and above, or 14 with OTF */
+	ext_wrrec = (picos_to_mclk(dimm->tWR_ps) +
+			(popts->otf_burst_chop_en ? 2 : 0)) >> 4;
 
 	ddr->timing_cfg_3 = (((ext_pretoact & 0x1) << 28)
-			     | ((ext_acttopre & 0x2) << 24)
+			     | ((ext_acttopre & 0x3) << 24)
 			     | ((ext_acttorw & 0x1) << 22)
 			     | ((ext_refrec & 0x1F) << 16)
-			     | ((cas_latency & 0x3) << 12));
+			     | ((cas_latency & 0x3) << 12)
+			     | ((additive_latency & 0x1) << 10)
+			     | ((ext_wrrec & 0x1) << 8)
+			     );
 }
 
 static void set_timing_cfg_1(struct fsl_ddr_cfg_regs_s *ddr,
+			     const struct memctl_options_s *popts,
 			     const struct common_timing_params_s *dimm,
 			     uint32_t cas_latency)
 {
@@ -152,10 +230,19 @@ static void set_timing_cfg_1(struct fsl_ddr_cfg_regs_s *ddr,
 	wrrec_mclk = picos_to_mclk(dimm->tWR_ps);
 	if (wrrec_mclk <= 16)
 		wrrec_mclk = wrrec_table[wrrec_mclk - 1];
+	if (popts->otf_burst_chop_en)
+		wrrec_mclk += 2;
 
 	wrtord_mclk = picos_to_mclk(dimm->tWTR_ps);
-	if (wrtord_mclk < 2)
-		wrtord_mclk = 2;
+	if (popts->sdram_type == SDRAM_TYPE_DDR2) {
+		wrtord_mclk = max_t(uint32_t, wrtord_mclk, 2);
+	} else {
+		wrtord_mclk = max_t(uint32_t, wrtord_mclk, 4);
+		acttoact_mclk = max_t(uint32_t, acttoact_mclk, 4);
+	}
+
+	if (popts->otf_burst_chop_en)
+		wrtord_mclk += 2;
 
 	ddr->timing_cfg_1 = (((pretoact_mclk & 0x0F) << 28)
 			     | ((acttopre_mclk & 0x0F) << 24)
@@ -176,11 +263,16 @@ static void set_timing_cfg_2(struct fsl_ddr_cfg_regs_s *ddr,
 
 	cpo = popts->cpo_override;
 	rd_to_pre = picos_to_mclk(dimm->tRTP_ps);
-	if (rd_to_pre < 2)
-		rd_to_pre = 2;
+	if (popts->sdram_type == SDRAM_TYPE_DDR2) {
+		cas_latency = cas_latency - 1;
+		rd_to_pre = max_t(uint32_t, rd_to_pre, 2);
+	} else {
+		cas_latency = compute_cas_write_latency();
+		rd_to_pre = max_t(uint32_t, rd_to_pre, 4);
+	}
 
-	if (additive_latency)
-		rd_to_pre += additive_latency;
+	if (popts->otf_burst_chop_en)
+		rd_to_pre += 2;
 
 	wr_data_delay = popts->write_data_delay;
 	cke_pls = picos_to_mclk(popts->tCKE_clock_pulse_width_ps);
@@ -188,7 +280,7 @@ static void set_timing_cfg_2(struct fsl_ddr_cfg_regs_s *ddr,
 
 	ddr->timing_cfg_2 = (((additive_latency & 0xf) << 28)
 			     | ((cpo & 0x1f) << 23)
-			     | (((cas_latency - 1) & 0xf) << 19)
+			     | ((cas_latency & 0xf) << 19)
 			     | ((rd_to_pre & 7) << 13)
 			     | ((wr_data_delay & 7) << 10)
 			     | ((cke_pls & 0x7) << 6)
@@ -199,7 +291,8 @@ static void set_ddr_sdram_cfg(struct fsl_ddr_cfg_regs_s *ddr,
 			      const struct memctl_options_s *popts,
 			      const struct common_timing_params_s *dimm)
 {
-	uint32_t mem_en, sren, ecc_en, sdram_type, dyn_pwr, dbw, twoT_en, hse;
+	uint32_t mem_en, sren, ecc_en, sdram_type, dyn_pwr, dbw, twoT_en, hse,
+		 threet_en, eight_be = 0;
 
 	mem_en = 1;
 	sren = popts->self_refresh_in_sleep;
@@ -208,15 +301,16 @@ static void set_ddr_sdram_cfg(struct fsl_ddr_cfg_regs_s *ddr,
 	else
 		ecc_en = 0;
 
-	if (popts->sdram_type)
-		sdram_type = popts->sdram_type;
-	else
-		sdram_type = FSL_SDRAM_TYPE;
-
+	sdram_type = popts->sdram_type;
 	twoT_en = popts->twoT_en;
 	dyn_pwr = popts->dynamic_power;
 	dbw = popts->data_bus_width;
 	hse = popts->half_strength_driver_enable;
+	threet_en = popts->threet_en;
+
+	if (sdram_type == SDRAM_TYPE_DDR3)
+		if ((popts->burst_length == DDR_BL8) || (dbw == 1))
+			eight_be = 1;
 
 	ddr->ddr_sdram_cfg = (((mem_en & 0x1) << 31)
 			      | ((sren & 0x1) << 30)
@@ -224,6 +318,8 @@ static void set_ddr_sdram_cfg(struct fsl_ddr_cfg_regs_s *ddr,
 			      | ((sdram_type & 0x7) << 24)
 			      | ((dyn_pwr & 0x1) << 21)
 			      | ((dbw & 0x3) << 19)
+			      | ((eight_be & 0x1) << 18)
+			      | ((threet_en & 0x1) << 16)
 			      | ((twoT_en & 0x1) << 15)
 			      | ((hse & 0x1) << 3));
 }
@@ -232,7 +328,8 @@ static void set_ddr_sdram_cfg_2(struct fsl_ddr_cfg_regs_s *ddr,
 				const struct memctl_options_s *popts)
 {
 	struct ddr_board_info_s *bi = popts->board_info;
-	uint32_t i, dll_rst_dis, dqs_cfg, odt_cfg = 0, num_pr, d_init = 0;
+	uint32_t i, dll_rst_dis, dqs_cfg, odt_cfg = 0, num_pr, d_init = 0,
+		 obc_cfg = 0, x4_en, md_en = 0, rcw_en = 0;
 
 	dll_rst_dis = popts->dll_rst_dis;
 	dqs_cfg = popts->DQS_config;
@@ -256,11 +353,48 @@ static void set_ddr_sdram_cfg_2(struct fsl_ddr_cfg_regs_s *ddr,
 		ddr->ddr_data_init = popts->data_init;
 	}
 
+	if (popts->sdram_type == SDRAM_TYPE_DDR3) {
+		obc_cfg = popts->otf_burst_chop_en;
+		md_en = popts->mirrored_dimm;
+	}
+
+	x4_en = popts->x4_en ? 1 : 0;
+
 	ddr->ddr_sdram_cfg_2 = (((dll_rst_dis & 0x1) << 29)
 				| ((dqs_cfg & 0x3) << 26)
 				| ((odt_cfg & 0x3) << 21)
 				| ((num_pr & 0xf) << 12)
-				| ((d_init & 0x1) << 4));
+				| (x4_en << 10)
+				| ((obc_cfg & 0x1) << 6)
+				| ((d_init & 0x1) << 4)
+				| ((rcw_en & 0x1) << 2)
+				| ((md_en & 0x1) << 0)
+				);
+}
+
+static void set_ddr_sdram_mode_2(struct fsl_ddr_cfg_regs_s *ddr,
+				const struct memctl_options_s *popts,
+				const struct common_timing_params_s *dimm)
+{
+	uint16_t esdmode2;
+	uint32_t rtt_wr, srt = 0, cwl;
+
+	cwl = compute_cas_write_latency() - 5;
+
+	if (popts->rtt_override)
+		rtt_wr = popts->rtt_wr_override_value;
+	else
+		rtt_wr = popts->cs_local_opts[0].odt_rtt_wr;
+
+	if (dimm->extended_op_srt)
+		srt = dimm->extended_op_srt;
+
+	esdmode2 = (((rtt_wr & 0x3) << 9)
+		    | ((srt & 0x1) << 7)
+		    | ((cwl & 0x7) << 3)
+		    );
+
+	ddr->ddr_sdram_mode_2 = (esdmode2 & 0xffff) << 16;
 }
 
 static void
@@ -277,12 +411,107 @@ set_ddr_sdram_interval(struct fsl_ddr_cfg_regs_s *ddr,
 	ddr->ddr_sdram_interval = (((refint & 0xFFFF) << 16)
 				   | ((bstopre & 0x3FFF) << 0));
 }
+void set_ddr3_sdram_mode(struct fsl_ddr_cfg_regs_s *ddr,
+			       const struct memctl_options_s *popts,
+			       const struct common_timing_params_s *dimm,
+			       uint32_t cas_latency, uint32_t additive_latency)
+{
+	uint16_t esdmode, sdmode;
+	/* Mode Register - MR1 */
+	uint32_t rtt, al;
+	/* Mode Register - MR0 */
+	uint32_t dll_on, wr = 0, dll_rst, mode, caslat = 4, bt, bl, wr_mclk;
+	/*
+	 * DDR_SDRAM_MODE doesn't support 9,11,13,15
+	 * Please refer JEDEC Standard No. 79-3E for Mode Register MR0
+	 * for this table
+	 */
+	static const u8 wr_table[] = {1, 2, 3, 4, 5, 5, 6, 6, 7, 7, 0, 0};
+	uint8_t cas_latency_table[] = { /* From 5 to 16 clocks */
+		0x2, 0x4, 0x6, 0x8, 0xa, 0xc, 0xe, 0x1, 0x3, 0x5, 0x7, 0x9,
+	};
+	const unsigned int mclk_ps = get_memory_clk_period_ps();
+
+	if (popts->rtt_override)
+		rtt = popts->rtt_override_value;
+	else
+		rtt = popts->cs_local_opts[0].odt_rtt_norm;
+
+	if (additive_latency == (cas_latency - 1))
+		al = 1;
+	else if (additive_latency == (cas_latency - 2))
+		al = 2;
+	else
+		al = 0;
+
+	/*
+	 * The esdmode value will also be used for writing
+	 * MR1 during write leveling for DDR3, although the
+	 * bits specifically related to the write leveling
+	 * scheme will be handled automatically by the DDR
+	 * controller. So wrlvl_en is set to 0 here.
+	 */
+	esdmode = (((rtt & 0x4) << 7)
+		   | ((rtt & 0x2) << 5)
+		   | ((al & 0x3) << 3)
+		   | ((rtt & 0x1) << 2)
+		   );
 
-static void set_ddr_sdram_mode(struct fsl_ddr_cfg_regs_s *ddr,
+	/*
+	 * DLL control for precharge PD
+	 * 0=slow exit DLL off (tXPDLL)
+	 * 1=fast exit DLL on (tXP)
+	 */
+	dll_on = 1;
+
+	wr_mclk = (dimm->tWR_ps + mclk_ps - 1) / mclk_ps;
+	if (wr_mclk <= 16)
+		wr = wr_table[wr_mclk - 5];
+
+	dll_rst = 0;	/* dll no reset */
+	mode = 0;	/* normal mode */
+
+	/* look up table to get the cas latency bits */
+	if (cas_latency >= 5 && cas_latency <= 16)
+		caslat = cas_latency_table[cas_latency - 5];
+
+	/* BT: Burst Type (0=Nibble Sequential, 1=Interleaved) */
+	bt = 0;
+
+	switch (popts->burst_length) {
+	case DDR_BL8:
+		bl = 0;
+		break;
+	case DDR_OTF:
+		bl = 1;
+		break;
+	case DDR_BC4:
+		bl = 2;
+		break;
+	default:
+		bl = 1;
+		break;
+	}
+
+	sdmode = (((dll_on & 0x1) << 12)
+		  | ((wr & 0x7) << 9)
+		  | ((dll_rst & 0x1) << 8)
+		  | ((mode & 0x1) << 7)
+		  | (((caslat >> 1) & 0x7) << 4)
+		  | ((bt & 0x1) << 3)
+		  | ((caslat & 1) << 2)
+		  | ((bl & 0x3) << 0)
+		  );
+
+	ddr->ddr_sdram_mode = (((esdmode & 0xffff) << 16)
+			       | ((sdmode & 0xffff) << 0)
+			       );
+}
+
+void set_ddr2_sdram_mode(struct fsl_ddr_cfg_regs_s *ddr,
 			       const struct memctl_options_s *popts,
 			       const struct common_timing_params_s *dimm,
-			       uint32_t cas_latency,
-			       uint32_t additive_latency)
+			       uint32_t cas_latency, uint32_t additive_latency)
 {
 	uint16_t esdmode, sdmode;
 	uint32_t dqs_en, rtt, al, wr, bl;
@@ -342,6 +571,19 @@ static void set_ddr_sdram_mode(struct fsl_ddr_cfg_regs_s *ddr,
 			       | ((sdmode & 0xFFFF) << 0));
 }
 
+void set_ddrx_sdram_mode(struct fsl_ddr_cfg_regs_s *ddr,
+			       const struct memctl_options_s *popts,
+			       const struct common_timing_params_s *dimm,
+			       uint32_t cas_latency, uint32_t additive_latency)
+{
+	if (popts->sdram_type == SDRAM_TYPE_DDR2)
+		set_ddr2_sdram_mode(ddr, popts, dimm, cas_latency,
+				additive_latency);
+	else
+		set_ddr3_sdram_mode(ddr, popts, dimm, cas_latency,
+				additive_latency);
+}
+
 uint32_t check_fsl_memctl_config_regs(const struct fsl_ddr_cfg_regs_s *ddr)
 {
 	/*
@@ -355,6 +597,98 @@ uint32_t check_fsl_memctl_config_regs(const struct fsl_ddr_cfg_regs_s *ddr)
 	return 0;
 }
 
+static void set_timing_cfg_4(struct fsl_ddr_cfg_regs_s *ddr,
+		const struct memctl_options_s *popts)
+{
+	uint32_t rrt = 0, wwt = 0, dll_lock = 1;
+
+	if (popts->burst_length != DDR_BL8)
+		rrt = wwt = 2;
+
+	ddr->timing_cfg_4 = (((rrt & 0xf) << 20)
+			     | ((wwt & 0xf) << 16)
+			     | (dll_lock & 0x3)
+			     );
+}
+
+static void set_timing_cfg_5(struct fsl_ddr_cfg_regs_s *ddr,
+				const struct memctl_options_s *popts,
+				uint32_t cas_latency)
+{
+	uint32_t rodt_on, rodt_off = 4, wodt_on = 1, wodt_off = 4;
+
+	/* rodt_on = timing_cfg_1[caslat] - timing_cfg_2[wrlat] + 1 */
+	rodt_on = cas_latency - ((ddr->timing_cfg_2 & 0x00780000) >> 19) + 1;
+
+	ddr->timing_cfg_5 = (((rodt_on & 0x1f) << 24)
+			     | ((rodt_off & 0x7) << 20)
+			     | ((wodt_on & 0x1f) << 12)
+			     | ((wodt_off & 0x7) << 8)
+			     );
+}
+
+static void set_ddr_zq_cntl(struct fsl_ddr_cfg_regs_s *ddr, uint32_t zq_en)
+{
+	uint32_t zqinit = 0, zqoper = 0, zqcs = 0;
+
+	if (zq_en) {
+		zqinit = 9;
+		zqoper = 8;
+		zqcs = 6;
+	}
+
+	ddr->ddr_zq_cntl = (((zq_en & 0x1) << 31)
+			    | ((zqinit & 0xf) << 24)
+			    | ((zqoper & 0xf) << 16)
+			    | ((zqcs & 0xf) << 8)
+			    );
+}
+
+static void set_ddr_wrlvl_cntl(struct fsl_ddr_cfg_regs_s *ddr,
+		uint32_t wrlvl_en, const struct memctl_options_s *popts)
+{
+	uint32_t wrlvl_mrd = 0, wrlvl_odten = 0, wrlvl_dqsen = 0,
+		 wrlvl_wlr = 0, wrlvl_start = 0, wrlvl_smpl = 0;
+
+	/* Enable write leveling for DDR3 due to fly-by topology */
+	if (wrlvl_en) {
+		wrlvl_mrd = 0x6;
+		wrlvl_odten = 0x7;
+		wrlvl_dqsen = 0x5;
+		/*
+		 * Write leveling sample time at least need 6 clocks
+		 * higher than tWLO to allow enough time for progagation
+		 * delay and sampling the prime data bits.
+		 */
+		wrlvl_smpl = 0xf;
+		/*
+		 * Write leveling repetition time. At least tWLO + 6 clocks
+		 * Set it to 64
+		 */
+		wrlvl_wlr = 0x6;
+		/*
+		 * Write leveling start time
+		 * The value use for the DQS_ADJUST for the first sample
+		 * when write leveling is enabled. It probably needs to be
+		 * overriden per platform.
+		 */
+		wrlvl_start = 0x8;
+		if (popts->wrlvl_override) {
+			wrlvl_smpl = popts->wrlvl_sample;
+			wrlvl_start = popts->wrlvl_start;
+		}
+	}
+
+	ddr->ddr_wrlvl_cntl = (((wrlvl_en & 0x1) << 31)
+			       | ((wrlvl_mrd & 0x7) << 24)
+			       | ((wrlvl_odten & 0x7) << 20)
+			       | ((wrlvl_dqsen & 0x7) << 16)
+			       | ((wrlvl_smpl & 0xf) << 12)
+			       | ((wrlvl_wlr & 0x7) << 8)
+			       | ((wrlvl_start & 0x1f) << 0)
+			       );
+}
+
 uint32_t
 compute_fsl_memctl_config_regs(const struct memctl_options_s *popts,
 			       struct fsl_ddr_cfg_regs_s *ddr,
@@ -364,7 +698,7 @@ compute_fsl_memctl_config_regs(const struct memctl_options_s *popts,
 {
 	struct ddr_board_info_s *binfo = popts->board_info;
 	uint32_t cas_latency, additive_latency, i, cs_per_dimm,
-		 dimm_number;
+		 dimm_number, zq_en, wrlvl_en, sr_it = 0;
 	uint64_t ea, sa, rank_density;
 
 	if (dimm == NULL)
@@ -383,6 +717,9 @@ compute_fsl_memctl_config_regs(const struct memctl_options_s *popts,
 	else
 		additive_latency = dimm->additive_latency;
 
+	if (popts->auto_self_refresh_en)
+		sr_it = popts->sr_it;
+
 	/* Chip Select Memory Bounds (CSn_BNDS) */
 	for (i = 0; i < binfo->cs_per_ctrl; i++) {
 		cs_per_dimm = binfo->cs_per_ctrl / binfo->dimm_slots_per_ctrl;
@@ -405,21 +742,37 @@ compute_fsl_memctl_config_regs(const struct memctl_options_s *popts,
 		sa >>= 24;
 		ea >>= 24;
 
-		ddr->cs[i].bnds = (((sa & 0xFFF) << 16) | ((ea & 0xFFF) << 0));
+		ddr->cs[i].bnds =
+			(((sa & 0xffff) << 16) | ((ea & 0xffff) << 0));
 		set_csn_config(dimm_number, i, ddr, popts, dimmp);
 	}
 
-	set_timing_cfg_0(ddr, popts);
-	set_timing_cfg_3(ddr, dimm, cas_latency);
-	set_timing_cfg_1(ddr, dimm, cas_latency);
+	set_timing_cfg_0(ddr, popts, dimmp);
+	set_timing_cfg_3(ddr, popts, dimm, cas_latency, additive_latency);
+	set_timing_cfg_1(ddr, popts, dimm, cas_latency);
 	set_timing_cfg_2(ddr, popts, dimm, cas_latency, additive_latency);
+
+	ddr->ddr_cdr1 = popts->ddr_cdr1;
+	ddr->ddr_cdr1 = popts->ddr_cdr2;
+
 	set_ddr_sdram_cfg(ddr, popts, dimm);
 	set_ddr_sdram_cfg_2(ddr, popts);
-	set_ddr_sdram_mode(ddr, popts, dimm, cas_latency, additive_latency);
+	set_ddrx_sdram_mode(ddr, popts, dimm, cas_latency, additive_latency);
+	if (popts->sdram_type == SDRAM_TYPE_DDR3) {
+		set_ddr_sdram_mode_2(ddr, popts, dimm);
+		set_timing_cfg_4(ddr, popts);
+		set_timing_cfg_5(ddr, popts, cas_latency);
+		zq_en = (popts->zq_en) ? 1 : 0;
+		set_ddr_zq_cntl(ddr, zq_en);
+		wrlvl_en = (popts->wrlvl_en) ? 1 : 0;
+		set_ddr_wrlvl_cntl(ddr, wrlvl_en, popts);
+	}
 	set_ddr_sdram_interval(ddr, popts, dimm);
 
 	ddr->ddr_data_init = popts->data_init;
 	ddr->ddr_sdram_clk_cntl = (popts->clk_adjust & 0xF) << 23;
 
+	ddr->ddr_sr_cntr = (sr_it & 0xf) << 16;
+
 	return check_fsl_memctl_config_regs(ddr);
 }
diff --git a/arch/ppc/ddr-8xxx/ddr.h b/arch/ppc/ddr-8xxx/ddr.h
index 6574500..2ef87f2 100644
--- a/arch/ppc/ddr-8xxx/ddr.h
+++ b/arch/ppc/ddr-8xxx/ddr.h
@@ -47,6 +47,17 @@ struct fsl_ddr_cfg_regs_s {
 	uint32_t ddr_sdram_clk_cntl;
 	uint32_t ddr_init_addr;
 	uint32_t ddr_init_ext_addr;
+	uint32_t timing_cfg_4;
+	uint32_t timing_cfg_5;
+	uint32_t ddr_zq_cntl;
+	uint32_t ddr_wrlvl_cntl;
+	uint32_t ddr_wrlvl_cntl_2;
+	uint32_t ddr_wrlvl_cntl_3;
+	uint32_t ddr_sr_cntr;
+	uint32_t ddr_sdram_rcw_1;
+	uint32_t ddr_sdram_rcw_2;
+	uint32_t ddr_cdr1;
+	uint32_t ddr_cdr2;
 	uint32_t err_disable;
 	uint32_t err_int_en;
 	uint32_t debug[32];
@@ -82,8 +93,8 @@ uint32_t compute_fsl_memctl_config_regs(
 uint32_t compute_dimm_parameters(
 		const generic_spd_eeprom_t *spdin,
 		struct dimm_params_s *pdimm);
-uint32_t compute_lowest_common_dimm_parameters(
-		const struct dimm_params_s *dimm_params,
+void compute_lowest_common_dimm_parameters(
+		const struct fsl_ddr_info_s *pinfo,
 		struct common_timing_params_s *outpdimm,
 		uint32_t number_of_dimms);
 uint32_t populate_memctl_options(
diff --git a/arch/ppc/ddr-8xxx/ddr2_dimm_params.c b/arch/ppc/ddr-8xxx/ddr2_dimm_params.c
index b36a888..cc7f3fa 100644
--- a/arch/ppc/ddr-8xxx/ddr2_dimm_params.c
+++ b/arch/ppc/ddr-8xxx/ddr2_dimm_params.c
@@ -193,17 +193,12 @@ compute_dimm_parameters(const generic_spd_eeprom_t *spdin,
 	const struct ddr2_spd_eeprom_s *spd = spdin;
 	uint32_t retval;
 
-	if (!spd->mem_type) {
-		memset(pdimm, 0, sizeof(struct dimm_params_s));
-		goto error;
-	}
-
 	if (spd->mem_type != SPD_MEMTYPE_DDR2)
 		goto error;
 
 	retval = ddr2_spd_checksum_pass(spd);
 	if (retval)
-		goto spd_err;
+		goto error;
 
 	/*
 	 * The part name in ASCII in the SPD EEPROM is not null terminated.
@@ -298,6 +293,4 @@ compute_dimm_parameters(const generic_spd_eeprom_t *spdin,
 	return 0;
 error:
 	return 1;
-spd_err:
-	return 2;
 }
diff --git a/arch/ppc/ddr-8xxx/ddr3_dimm_params.c b/arch/ppc/ddr-8xxx/ddr3_dimm_params.c
new file mode 100644
index 0000000..d510c5b
--- /dev/null
+++ b/arch/ppc/ddr-8xxx/ddr3_dimm_params.c
@@ -0,0 +1,193 @@
+/*
+ * Copyright 2008-2012 Freescale Semiconductor, Inc.
+ *	Dave Liu <daveliu@freescale.com>
+ *
+ * calculate the organization and timing parameter
+ * from ddr3 spd, please refer to the spec
+ * JEDEC standard No.21-C 4_01_02_11R18.pdf
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * Version 2 as published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <asm/fsl_ddr_sdram.h>
+#include "ddr.h"
+
+/*
+ * Calculate the Density of each Physical Rank.
+ * Returned size is in bytes.
+ *
+ * each rank size =
+ * sdram capacity(bit) / 8 * primary bus width / sdram width
+ *
+ * where: sdram capacity  = spd byte4[3:0]
+ *        primary bus width = spd byte8[2:0]
+ *        sdram width = spd byte7[2:0]
+ *
+ * SPD byte4 - sdram density and banks
+ *	bit[3:0]	size(bit)	size(byte)
+ *	0000		256Mb		32MB
+ *	0001		512Mb		64MB
+ *	0010		1Gb		128MB
+ *	0011		2Gb		256MB
+ *	0100		4Gb		512MB
+ *	0101		8Gb		1GB
+ *	0110		16Gb		2GB
+ *
+ * SPD byte8 - module memory bus width
+ *	bit[2:0]	primary bus width
+ *	000		8bits
+ *	001		16bits
+ *	010		32bits
+ *	011		64bits
+ *
+ * SPD byte7 - module organiztion
+ *	bit[2:0]	sdram device width
+ *	000		4bits
+ *	001		8bits
+ *	010		16bits
+ *	011		32bits
+ */
+static uint64_t compute_ranksize(const struct ddr3_spd_eeprom_s *spd)
+{
+	uint64_t bsize;
+	int sdram_cap_bsize = 0, prim_bus_width = 0, sdram_width = 0;
+
+	if ((spd->density_banks & 0xf) < 7)
+		sdram_cap_bsize = (spd->density_banks & 0xf) + 28;
+	if ((spd->bus_width & 0x7) < 4)
+		prim_bus_width = (spd->bus_width & 0x7) + 3;
+	if ((spd->organization & 0x7) < 4)
+		sdram_width = (spd->organization & 0x7) + 2;
+
+	bsize = 1ULL << (sdram_cap_bsize - 3 + prim_bus_width - sdram_width);
+
+	return bsize;
+}
+
+/*
+ * compute_dimm_parameters for DDR3 SPD
+ *
+ * Compute DIMM parameters based upon the SPD information in spd.
+ * Writes the results to the dimm_params_s structure pointed by pdimm.
+ *
+ */
+uint32_t
+compute_dimm_parameters(const generic_spd_eeprom_t *spdin,
+		struct dimm_params_s *pdimm)
+{
+	const struct ddr3_spd_eeprom_s *spd = spdin;
+	uint32_t retval, mtb_ps;
+	int ftb_tmp;
+
+	if (spd->mem_type != SPD_MEMTYPE_DDR3)
+		goto error;
+
+	retval = ddr3_spd_checksum_pass(spd);
+	if (retval)
+		goto error;
+
+	memset(pdimm->mpart, 0, sizeof(pdimm->mpart));
+	if ((spd->info_size_crc & 0xf) > 1)
+		memcpy(pdimm->mpart, spd->mpart, sizeof(pdimm->mpart) - 1);
+
+	/* DIMM organization parameters */
+	pdimm->n_ranks = ((spd->organization >> 3) & 0x7) + 1;
+	pdimm->rank_density = compute_ranksize(spd);
+	pdimm->capacity = pdimm->n_ranks * pdimm->rank_density;
+	pdimm->data_width = pdimm->primary_sdram_width + pdimm->ec_sdram_width;
+	pdimm->primary_sdram_width = 1 << (3 + (spd->bus_width & 0x7));
+	if ((spd->bus_width >> 3) & 0x3)
+		pdimm->ec_sdram_width = 8;
+	else
+		pdimm->ec_sdram_width = 0;
+	pdimm->device_width = 1 << ((spd->organization & 0x7) + 2);
+
+	/* These are the types defined by the JEDEC DDR3 SPD spec */
+	pdimm->mirrored_dimm = 0;
+	pdimm->registered_dimm = 0;
+	switch (spd->module_type & DDR3_SPD_MODULETYPE_MASK) {
+	case DDR3_SPD_MODULETYPE_UDIMM:
+		/* Unbuffered DIMMs */
+		if (spd->mod_section.unbuffered.addr_mapping & 0x1)
+			pdimm->mirrored_dimm = 1;
+		break;
+
+	default:
+		goto error;
+	}
+
+	/* SDRAM device parameters */
+	pdimm->n_row_addr = ((spd->addressing >> 3) & 0x7) + 12;
+	pdimm->n_col_addr = (spd->addressing & 0x7) + 9;
+	pdimm->n_banks_per_sdram_device =
+			8 << ((spd->density_banks >> 4) & 0x7);
+
+	/*
+	 * The SPD spec does not define an ECC bit. The DIMM is considered
+	 * to have ECC capability if the extension bus exists.
+	 */
+	if (pdimm->ec_sdram_width)
+		pdimm->edc_config = 0x02;
+	else
+		pdimm->edc_config = 0x00;
+
+	/*
+	 * The SPD spec does not define the burst length byte.
+	 * but the DDR3 spec defines BL8 and BC4, on bit 3 and
+	 * bit 2.
+	 */
+	pdimm->burst_lengths_bitmask = 0x0c;
+	pdimm->row_density = __ilog2(pdimm->rank_density);
+
+	mtb_ps = (spd->mtb_dividend * 1000) / spd->mtb_divisor;
+	pdimm->mtb_ps = mtb_ps;
+
+	ftb_tmp = spd->ftb_div & 0xf0;
+	pdimm->ftb_10th_ps = ((ftb_tmp >> 4) * 10) / ftb_tmp;
+
+	pdimm->tCKmin_X_ps = spd->tck_min * mtb_ps +
+		(spd->fine_tck_min * ftb_tmp) / 10;
+	pdimm->caslat_X  = ((spd->caslat_msb << 8) | spd->caslat_lsb) << 4;
+
+	pdimm->taa_ps = spd->taa_min * mtb_ps +
+		(spd->fine_taa_min * ftb_tmp) / 10;
+
+	pdimm->tRCD_ps = spd->trcd_min * mtb_ps +
+		(spd->fine_trcd_min * ftb_tmp) / 10;
+
+	pdimm->tRP_ps = spd->trp_min * mtb_ps +
+		(spd->fine_trp_min * ftb_tmp) / 10;
+	pdimm->tRAS_ps = (((spd->tras_trc_ext & 0xf) << 8) | spd->tras_min_lsb)
+			* mtb_ps;
+	pdimm->tWR_ps = spd->twr_min * mtb_ps;
+	pdimm->tWTR_ps = spd->twtr_min * mtb_ps;
+	pdimm->tRFC_ps = ((spd->trfc_min_msb << 8) | spd->trfc_min_lsb)
+			* mtb_ps;
+	pdimm->tRRD_ps = spd->trrd_min * mtb_ps;
+	pdimm->tRC_ps = (((spd->tras_trc_ext & 0xf0) << 4) | spd->trc_min_lsb);
+	pdimm->tRC_ps *= mtb_ps;
+	pdimm->tRC_ps += (spd->fine_trc_min * ftb_tmp) / 10;
+
+	pdimm->tRTP_ps = spd->trtp_min * mtb_ps;
+
+	/*
+	 * Average periodic refresh interval
+	 * tREFI = 7.8 us at normal temperature range
+	 *       = 3.9 us at ext temperature range
+	 */
+	pdimm->refresh_rate_ps = 7800000;
+	if ((spd->therm_ref_opt & 0x1) && !(spd->therm_ref_opt & 0x2)) {
+		pdimm->refresh_rate_ps = 3900000;
+		pdimm->extended_op_srt = 1;
+	}
+
+	pdimm->tfaw_ps = (((spd->tfaw_msb & 0xf) << 8) | spd->tfaw_min)
+			* mtb_ps;
+
+	return 0;
+error:
+	return 1;
+}
diff --git a/arch/ppc/ddr-8xxx/ddr2_setctrl.c b/arch/ppc/ddr-8xxx/ddr_setctrl.c
similarity index 53%
rename from arch/ppc/ddr-8xxx/ddr2_setctrl.c
rename to arch/ppc/ddr-8xxx/ddr_setctrl.c
index 14571b0..115fb42 100644
--- a/arch/ppc/ddr-8xxx/ddr2_setctrl.c
+++ b/arch/ppc/ddr-8xxx/ddr_setctrl.c
@@ -1,5 +1,5 @@
 /*
- * Copyright 2008 Freescale Semiconductor, Inc.
+ * Copyright 2008-2011 Freescale Semiconductor, Inc.
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License
@@ -10,12 +10,13 @@
 #include <config.h>
 #include <asm/io.h>
 #include <asm/fsl_ddr_sdram.h>
+#include <asm/processor.h>
 #include <mach/early_udelay.h>
 #include "ddr.h"
 
 int fsl_ddr_set_memctl_regs(const struct fsl_ddr_info_s *info)
 {
-	uint32_t i;
+	uint32_t i, temp_sdram_cfg;
 	void __iomem *ddr;
 	const struct fsl_ddr_cfg_regs_s *regs;
 
@@ -29,6 +30,9 @@ int fsl_ddr_set_memctl_regs(const struct fsl_ddr_info_s *info)
 		out_be32(ddr + DDR_OFF(CS0_BNDS) + (i << 3), regs->cs[i].bnds);
 		out_be32(ddr + DDR_OFF(CS0_CONFIG) + (i << 2),
 				regs->cs[i].config);
+		if (info->memctl_opts.sdram_type == SDRAM_TYPE_DDR3)
+			out_be32(ddr + DDR_OFF(CS0_CONFIG_2) + (i << 2),
+					regs->cs[i].config_2);
 	}
 
 	out_be32(ddr + DDR_OFF(TIMING_CFG_3), regs->timing_cfg_3);
@@ -45,12 +49,40 @@ int fsl_ddr_set_memctl_regs(const struct fsl_ddr_info_s *info)
 	out_be32(ddr + DDR_OFF(SDRAM_INIT_ADDR), regs->ddr_init_addr);
 	out_be32(ddr + DDR_OFF(SDRAM_INIT_ADDR_EXT), regs->ddr_init_ext_addr);
 
-	early_udelay(200);
-	asm volatile("sync;isync");
+	if (info->memctl_opts.sdram_type == SDRAM_TYPE_DDR3) {
+		out_be32(ddr + DDR_OFF(TIMING_CFG_4), regs->timing_cfg_4);
+		out_be32(ddr + DDR_OFF(TIMING_CFG_5), regs->timing_cfg_5);
+		out_be32(ddr + DDR_OFF(ZQ_CNTL), regs->ddr_zq_cntl);
+		out_be32(ddr + DDR_OFF(WRLVL_CNTL), regs->ddr_wrlvl_cntl);
+
+		if (regs->ddr_wrlvl_cntl_2)
+			out_be32(ddr + DDR_OFF(WRLVL_CNTL_2),
+					regs->ddr_wrlvl_cntl_2);
+		if (regs->ddr_wrlvl_cntl_3)
+			out_be32(ddr + DDR_OFF(WRLVL_CNTL_3),
+					regs->ddr_wrlvl_cntl_3);
+
+		out_be32(ddr + DDR_OFF(SR_CNTL), regs->ddr_sr_cntr);
+		out_be32(ddr + DDR_OFF(SDRAM_RCW_1), regs->ddr_sdram_rcw_1);
+		out_be32(ddr + DDR_OFF(SDRAM_RCW_2), regs->ddr_sdram_rcw_2);
+		out_be32(ddr + DDR_OFF(DDRCDR1), regs->ddr_cdr1);
+		out_be32(ddr + DDR_OFF(DDRCDR2), regs->ddr_cdr2);
+	}
 
-	out_be32(ddr + DDR_OFF(SDRAM_CFG), regs->ddr_sdram_cfg);
+	out_be32(ddr + DDR_OFF(ERR_DISABLE), regs->err_disable);
+	out_be32(ddr + DDR_OFF(ERR_INT_EN), regs->err_int_en);
+
+	temp_sdram_cfg = regs->ddr_sdram_cfg;
+	temp_sdram_cfg &= ~(SDRAM_CFG_MEM_EN);
+	out_be32(ddr + DDR_OFF(SDRAM_CFG), temp_sdram_cfg);
+
+	early_udelay(500);
+	/* Make sure all instructions are completed before enabling memory.*/
+	asm volatile("sync;isync");
+	temp_sdram_cfg = in_be32(ddr + DDR_OFF(SDRAM_CFG)) & ~SDRAM_CFG_BI;
+	out_be32(ddr + DDR_OFF(SDRAM_CFG), temp_sdram_cfg | SDRAM_CFG_MEM_EN);
+	asm volatile("sync;isync");
 
-	/* Poll DDR_SDRAM_CFG_2[D_INIT] bit until auto-data init is done.  */
 	while (in_be32(ddr + DDR_OFF(SDRAM_CFG_2)) & SDRAM_CFG2_D_INIT)
 		early_udelay(10000);
 
diff --git a/arch/ppc/ddr-8xxx/lc_common_dimm_params.c b/arch/ppc/ddr-8xxx/lc_common_dimm_params.c
index a1addb0..9d90fb7 100644
--- a/arch/ppc/ddr-8xxx/lc_common_dimm_params.c
+++ b/arch/ppc/ddr-8xxx/lc_common_dimm_params.c
@@ -12,6 +12,36 @@
 
 #include "ddr.h"
 
+static uint32_t
+compute_cas_latency_ddr3(const struct dimm_params_s *dimm_params,
+			 uint32_t number_of_dimms)
+{
+	uint32_t i, taamin_ps = 0, tckmin_x_ps = 0, common_caslat,
+		 caslat_actual, retry = 16;
+	const uint32_t mclk_ps = get_memory_clk_period_ps();
+
+	/* compute the common CAS latency supported between slots */
+	common_caslat = dimm_params[0].caslat_X;
+	for (i = 1; i < number_of_dimms; i++) {
+		if (dimm_params[i].n_ranks)
+			common_caslat &= dimm_params[i].caslat_X;
+	}
+
+	for (i = 0; i < number_of_dimms; i++) {
+		taamin_ps = max(taamin_ps, dimm_params[i].taa_ps);
+		tckmin_x_ps = max(tckmin_x_ps, dimm_params[i].tCKmin_X_ps);
+	}
+
+	caslat_actual = (taamin_ps + mclk_ps - 1) / mclk_ps;
+	/* check if the dimms support the CAS latency */
+	while (!(common_caslat & (1 << caslat_actual)) && retry > 0) {
+		caslat_actual++;
+		retry--;
+	}
+
+	return caslat_actual;
+}
+
 static unsigned int common_burst_length(
 		const struct dimm_params_s *dimm_params,
 		const unsigned int number_of_dimms)
@@ -22,7 +52,6 @@ static unsigned int common_burst_length(
 	for (i = 0; i < number_of_dimms; i++)
 		if (dimm_params[i].n_ranks)
 			temp &= dimm_params[i].burst_lengths_bitmask;
-
 	return temp;
 }
 
@@ -115,16 +144,17 @@ static unsigned int compute_lowest_caslat(
  * whose parameters have been computed into the array pointed to
  * by dimm_params.
  */
-unsigned int
-compute_lowest_common_dimm_parameters(const struct dimm_params_s *dimm,
+void compute_lowest_common_dimm_parameters(const struct fsl_ddr_info_s *pinfo,
 				      struct common_timing_params_s *out,
 				      const unsigned int number_of_dimms)
 {
-	const uint32_t mclk_ps = get_memory_clk_period_ps();
 	uint32_t temp1, i;
 	struct common_timing_params_s tmp = {0};
+	const struct dimm_params_s *dimm = pinfo->dimm_params;
+	const struct memctl_options_s *popts = &pinfo->memctl_opts;
 
 	tmp.tCKmax_ps = 0xFFFFFFFF;
+	tmp.extended_op_srt = 1;
 	temp1 = 0;
 	for (i = 0; i < number_of_dimms; i++) {
 		if (dimm[i].n_ranks == 0) {
@@ -157,58 +187,69 @@ compute_lowest_common_dimm_parameters(const struct dimm_params_s *dimm,
 		tmp.tQHS_ps = max(tmp.tQHS_ps, dimm[i].tQHS_ps);
 		tmp.refresh_rate_ps = max(tmp.refresh_rate_ps,
 				dimm[i].refresh_rate_ps);
+		tmp.extended_op_srt = min(tmp.extended_op_srt,
+					dimm[i].extended_op_srt);
 		/* Find maximum tDQSQ_max_ps to find slowest timing. */
 		tmp.tDQSQ_max_ps = max(tmp.tDQSQ_max_ps, dimm[i].tDQSQ_max_ps);
 	}
 	tmp.ndimms_present = number_of_dimms - temp1;
 
 	if (temp1 == number_of_dimms)
-		return 0;
+		return;
 
 	temp1 = common_burst_length(dimm, number_of_dimms);
 	tmp.all_DIMMs_burst_lengths_bitmask = temp1;
-	tmp.all_DIMMs_registered = 0;
 
-	tmp.lowest_common_SPD_caslat = compute_lowest_caslat(dimm,
-			number_of_dimms);
-	/*
-	 * Compute a common 'de-rated' CAS latency.
-	 *
-	 * The strategy here is to find the *highest* de-rated cas latency
-	 * with the assumption that all of the DIMMs will support a de-rated
-	 * CAS latency higher than or equal to their lowest de-rated value.
-	 */
-	temp1 = 0;
-	for (i = 0; i < number_of_dimms; i++)
-		temp1 = max(temp1, dimm[i].caslat_lowest_derated);
-	tmp.highest_common_derated_caslat = temp1;
+	/* Support only unbuffered DIMMs */
+	tmp.all_DIMMs_registered = 0;
+	tmp.all_DIMMs_unbuffered = 1;
+
+	if (popts->sdram_type == SDRAM_TYPE_DDR3) {
+		tmp.lowest_common_SPD_caslat = compute_cas_latency_ddr3(dimm,
+				number_of_dimms);
+	} else {
+		tmp.lowest_common_SPD_caslat = compute_lowest_caslat(dimm,
+				number_of_dimms);
+		/*
+		 * Compute a common 'de-rated' CAS latency.
+		 *
+		 * The strategy here is to find the *highest* de-rated cas
+		 * latency with the assumption that all of the DIMMs will
+		 * support a de-rated CAS latency higher than or equal to
+		 * their lowest de-rated value.
+		 */
+		temp1 = 0;
+		for (i = 0; i < number_of_dimms; i++)
+			temp1 = max(temp1, dimm[i].caslat_lowest_derated);
+		tmp.highest_common_derated_caslat = temp1;
+	}
 
 	temp1 = 1;
 	for (i = 0; i < number_of_dimms; i++)
-		if (dimm[i].n_ranks &&
-		    !(dimm[i].edc_config & EDC_ECC)) {
+		if (dimm[i].n_ranks && !(dimm[i].edc_config & EDC_ECC)) {
 			temp1 = 0;
 			break;
 		}
 	tmp.all_DIMMs_ECC_capable = temp1;
 
-	if (mclk_ps > tmp.tCKmax_max_ps)
-		return 1;
-
 	/*
 	 * AL must be less or equal to tRCD. Typically, AL would
 	 * be AL = tRCD - 1;
 	 *
 	 * When ODT read or write is enabled the sum of CAS latency +
 	 * additive latency must be at least 3 cycles.
-	 *
 	 */
-	if ((tmp.lowest_common_SPD_caslat < 4) && (picos_to_mclk(tmp.tRCD_ps) >
-				tmp.lowest_common_SPD_caslat))
-		tmp.additive_latency = picos_to_mclk(tmp.tRCD_ps) -
-			tmp.lowest_common_SPD_caslat;
+	tmp.additive_latency = 0;
+	if (popts->sdram_type == SDRAM_TYPE_DDR2) {
+		if ((tmp.lowest_common_SPD_caslat < 4) &&
+			(picos_to_mclk(tmp.tRCD_ps) >
+			tmp.lowest_common_SPD_caslat))
+			tmp.additive_latency = picos_to_mclk(tmp.tRCD_ps) -
+					tmp.lowest_common_SPD_caslat;
+
+		if (mclk_to_picos(tmp.additive_latency) > tmp.tRCD_ps)
+			tmp.additive_latency = picos_to_mclk(tmp.tRCD_ps);
+	}
 
 	memcpy(out, &tmp, sizeof(struct common_timing_params_s));
-
-	return 0;
 }
diff --git a/arch/ppc/ddr-8xxx/main.c b/arch/ppc/ddr-8xxx/main.c
index 6e4a02d..99b877b 100644
--- a/arch/ppc/ddr-8xxx/main.c
+++ b/arch/ppc/ddr-8xxx/main.c
@@ -15,6 +15,7 @@
 #include <common.h>
 #include <config.h>
 #include <asm/fsl_law.h>
+#include <asm/fsl_ddr_sdram.h>
 #include "ddr.h"
 
 static int get_spd(generic_spd_eeprom_t *spd,
@@ -143,6 +144,14 @@ static uint32_t compute_dimm_param(struct fsl_ddr_info_s *pinfo, uint32_t ndimm)
 	generic_spd_eeprom_t *spd;
 	uint32_t i, retval;
 
+	spd = &(pinfo->spd_installed_dimms[0]);
+	if (spd->mem_type == SPD_MEMTYPE_DDR3)
+		pinfo->memctl_opts.sdram_type = SDRAM_TYPE_DDR3;
+	else if (spd->mem_type == SPD_MEMTYPE_DDR2)
+		pinfo->memctl_opts.sdram_type = SDRAM_TYPE_DDR2;
+	else
+		return 1;
+
 	for (i = 0; i < ndimm; i++) {
 		spd = &(pinfo->spd_installed_dimms[i]);
 		pdimm = &(pinfo->dimm_params[i]);
@@ -185,8 +194,7 @@ uint64_t fsl_ddr_compute(struct fsl_ddr_info_s *pinfo)
 	 * STEP 3: Compute a common set of timing parameters
 	 * suitable for all of the DIMMs on each memory controller
 	 */
-	compute_lowest_common_dimm_parameters(pinfo->dimm_params,
-			timing_params, ndimm);
+	compute_lowest_common_dimm_parameters(pinfo, timing_params, ndimm);
 
 	/* STEP 4:  Gather configuration requirements from user */
 	populate_memctl_options(timing_params->all_DIMMs_registered,
diff --git a/arch/ppc/ddr-8xxx/options.c b/arch/ppc/ddr-8xxx/options.c
index 9ce2bc1..ccf5d5e 100644
--- a/arch/ppc/ddr-8xxx/options.c
+++ b/arch/ppc/ddr-8xxx/options.c
@@ -46,18 +46,42 @@ uint32_t populate_memctl_options(int all_DIMMs_registered,
 	 * 0 = 64-bit, 1 = 32-bit, 2 = 16-bit
 	 */
 	if (pdimm->n_ranks != 0) {
-		if ((pdimm->data_width >= 64) && (pdimm->data_width <= 72))
-			popts->data_bus_width = 0;
-		else if ((pdimm->data_width >= 32) &&
-			(pdimm->data_width <= 40))
-			popts->data_bus_width = 1;
-		else
-			panic("data width %u is invalid!\n",
-					pdimm->data_width);
+		if (popts->sdram_type == SDRAM_TYPE_DDR3) {
+			if (pdimm[0].primary_sdram_width == 64)
+				popts->data_bus_width = 0;
+			else if (pdimm[0].primary_sdram_width == 32)
+				popts->data_bus_width = 1;
+			else if (pdimm[0].primary_sdram_width == 16)
+				popts->data_bus_width = 2;
+			else
+				hang();
+		} else {
+			if ((pdimm->data_width >= 64) &&
+			      (pdimm->data_width <= 72))
+				popts->data_bus_width = 0;
+			else if ((pdimm->data_width >= 32) &&
+				(pdimm->data_width <= 40))
+				popts->data_bus_width = 1;
+			else
+				hang();
+		}
+	}
+
+	if (popts->sdram_type == SDRAM_TYPE_DDR3) {
+		if (popts->data_bus_width == 0) {
+			popts->otf_burst_chop_en = 1;
+			popts->burst_length = DDR_OTF;
+		} else {
+			/* 32-bit or 16-bit bus */
+			popts->otf_burst_chop_en = 0;
+			popts->burst_length = DDR_BL8;
+		}
+		popts->mirrored_dimm = pdimm[0].mirrored_dimm;
+	} else {
+		/* Must be a burst length of 4 for DDR2 */
+		popts->burst_length = DDR_BL4;
 	}
 
-	/* Must be a burst length of 4 for DD2 */
-	popts->burst_length = DDR_BL4;
 	/* Decide whether to use the computed de-rated latency */
 	popts->use_derated_caslat = 0;
 
@@ -70,6 +94,7 @@ uint32_t populate_memctl_options(int all_DIMMs_registered,
 	 *	- how much time you want to spend playing around
 	 */
 	popts->twoT_en = 0;
+	popts->threet_en = 0;
 
 	/*
 	 * Default BSTTOPRE precharge interval
@@ -90,7 +115,18 @@ uint32_t populate_memctl_options(int all_DIMMs_registered,
 	 * The default value below would work for x4/x8 wide memory.
 	 *
 	 */
-	popts->tFAW_window_four_activates_ps = 37500;
+	if (popts->sdram_type == SDRAM_TYPE_DDR2) {
+		popts->tFAW_window_four_activates_ps = 37500;
+	} else {
+		/*
+		 * Due to ddr3 dimm fly-by topology, enable write leveling
+		 * to meet the tQDSS under different loading.
+		 */
+		popts->tFAW_window_four_activates_ps = pdimm[0].tfaw_ps;
+		popts->wrlvl_en = 1;
+		popts->zq_en = 1;
+		popts->wrlvl_override = 0;
+	}
 
 	/*
 	 * Default powerdown exit timings.
diff --git a/arch/ppc/include/asm/fsl_ddr_dimm_params.h b/arch/ppc/include/asm/fsl_ddr_dimm_params.h
index 73c239b..9e6f6b4 100644
--- a/arch/ppc/include/asm/fsl_ddr_dimm_params.h
+++ b/arch/ppc/include/asm/fsl_ddr_dimm_params.h
@@ -21,6 +21,8 @@ struct dimm_params_s {
 	uint32_t primary_sdram_width;
 	uint32_t ec_sdram_width;
 	uint32_t registered_dimm;
+	uint32_t device_width;
+	/* SDRAM device parameters */
 	uint32_t n_row_addr;
 	uint32_t n_col_addr;
 	uint32_t edc_config;		/* 0 = none, 1 = parity, 2 = ECC */
@@ -28,6 +30,11 @@ struct dimm_params_s {
 	uint32_t burst_lengths_bitmask;	/* BL=4 bit 2, BL=8 = bit 3 */
 	uint32_t row_density;
 	uint64_t base_address;
+	uint32_t mirrored_dimm;
+	uint32_t mtb_ps;
+	uint32_t ftb_10th_ps;
+	uint32_t taa_ps;
+	uint32_t tfaw_ps;
 	/* SDRAM clock periods */
 	uint32_t tCKmin_X_ps;
 	uint32_t tCKmin_X_minus_1_ps;
@@ -48,6 +55,7 @@ struct dimm_params_s {
 	uint32_t tRRD_ps;	/* maximum = 63750 ps */
 	uint32_t tRC_ps;	/* maximum = 254 ns + .75 ns = 254750 ps */
 	uint32_t refresh_rate_ps;
+	uint32_t extended_op_srt;
 	uint32_t tIS_ps;	/* byte 32, spd->ca_setup */
 	uint32_t tIH_ps;	/* byte 33, spd->ca_hold */
 	uint32_t tDS_ps;	/* byte 34, spd->data_setup */
@@ -55,6 +63,7 @@ struct dimm_params_s {
 	uint32_t tRTP_ps;	/* byte 38, spd->trtp */
 	uint32_t tDQSQ_max_ps;	/* byte 44, spd->tdqsq */
 	uint32_t tQHS_ps;	/* byte 45, spd->tqhs */
+	uint32_t rcw[16];
 };
 
 #endif
diff --git a/arch/ppc/include/asm/fsl_ddr_sdram.h b/arch/ppc/include/asm/fsl_ddr_sdram.h
index 444bcbc..8d3bd71 100644
--- a/arch/ppc/include/asm/fsl_ddr_sdram.h
+++ b/arch/ppc/include/asm/fsl_ddr_sdram.h
@@ -19,17 +19,26 @@
 #define SDRAM_TYPE_DDR3    7
 
 #define DDR_BL4	4
+#define DDR_BC4	DDR_BL4
+#define DDR_OTF	6
 #define DDR_BL8	8
 
 #define DDR2_RTT_OFF		0
 #define DDR2_RTT_75_OHM		1
 #define DDR2_RTT_150_OHM	2
 #define DDR2_RTT_50_OHM		3
+#define DDR3_RTT_OFF		0
+#define DDR3_RTT_40_OHM		3
 
-#if defined(CONFIG_FSL_DDR2)
 #define FSL_DDR_MIN_TCKE_PULSE_WIDTH_DDR	(3)
+#if defined(CONFIG_FSL_DDR2)
 typedef struct ddr2_spd_eeprom_s generic_spd_eeprom_t;
 #define FSL_SDRAM_TYPE	SDRAM_TYPE_DDR2
+#elif defined(CONFIG_FSL_DDR3)
+typedef struct ddr3_spd_eeprom_s generic_spd_eeprom_t;
+#define FSL_SDRAM_TYPE	SDRAM_TYPE_DDR3
+#else
+#error "Undefined or unknown DDR type"
 #endif
 
 #define FSL_DDR_ODT_NEVER		0x0
@@ -121,6 +130,10 @@ struct memctl_options_s {
 	uint32_t dynamic_power;
 	uint32_t data_bus_width;
 	uint32_t burst_length;
+	uint32_t otf_burst_chop_en;
+	uint32_t mirrored_dimm;
+	uint32_t ap_en;
+	uint32_t x4_en;
 	/* Global Timing Parameters */
 	uint32_t cas_latency_override;
 	uint32_t cas_latency_override_value;
@@ -130,16 +143,36 @@ struct memctl_options_s {
 	uint32_t clk_adjust;
 	uint32_t cpo_override;
 	uint32_t write_data_delay;
+	/* Write leveling */
+	uint32_t wrlvl_override;
+	uint32_t wrlvl_sample;
+	uint32_t wrlvl_start;
+	uint32_t wrlvl_ctl_2;
+	uint32_t wrlvl_ctl_3;
 	uint32_t half_strength_driver_enable;
 	uint32_t twoT_en;
+	uint32_t threet_en;
 	uint32_t bstopre;
 	uint32_t tCKE_clock_pulse_width_ps;
 	uint32_t tFAW_window_four_activates_ps;
 	/* Rtt impedance */
 	uint32_t rtt_override;
 	uint32_t rtt_override_value;
+	uint32_t rtt_wr_override_value;
 	/* Automatic self refresh */
 	uint32_t auto_self_refresh_en;
+	uint32_t sr_it;
+	/* ZQ calibration */
+	uint32_t zq_en;
+	/* Write leveling */
+	uint32_t wrlvl_en;
+	/* RCW override for RDIMM */
+	uint32_t rcw_override;
+	uint32_t rcw_1;
+	uint32_t rcw_2;
+	/* control register 1 */
+	uint32_t ddr_cdr1;
+	uint32_t ddr_cdr2;
 	/* read-to-write turnaround */
 	uint32_t trwt_override;
 	uint32_t trwt;
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
