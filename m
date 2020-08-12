Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5lep-0006Vy-8J
 for barebox@lists.infradead.org; Wed, 12 Aug 2020 07:58:49 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 12 Aug 2020 09:58:34 +0200
Message-Id: <20200812075833.22334-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: Layerscape: TQMLS1046a: remove ddr calc code
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

The Layerscape DDR code has two entry points, one which calculates the
DDRC register values from the DDR timings and one which directly sets
precomputed values. The TQMLS1046a has soldered RAM and does not require
the dynamic calculation code which currently isn't used. Remove it.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/boards/tqmls1046a/lowlevel.c | 145 --------------------------
 1 file changed, 145 deletions(-)

diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index f79f491ecc..99dcf1eff7 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -14,152 +14,8 @@
 #include <mach/xload.h>
 #include <mach/layerscape.h>
 
-struct board_specific_parameters {
-	u32 n_ranks;
-	u32 datarate_mhz_high;
-	u32 rank_gb;
-	u32 clk_adjust;
-	u32 wrlvl_start;
-	u32 wrlvl_ctl_2;
-	u32 wrlvl_ctl_3;
-};
-
-/*
- * These tables contain all valid speeds we want to override with board
- * specific parameters. datarate_mhz_high values need to be in ascending order
- * for each n_ranks group.
- */
-static const struct board_specific_parameters udimm0[] = {
-	/*
-	 * memory controller 0
-	 *   num|  hi| rank|  clk| wrlvl |   wrlvl   |  wrlvl | cpo  |wrdata|2T
-	 * ranks| mhz| GB  |adjst| start |   ctl2    |  ctl3  |      |delay |
-	 */
-	{1,  2100, 0, 8,     9, 0x09080806, 0x07060606,},
-	{}
-};
-
-static const struct board_specific_parameters *udimms[] = {
-	udimm0,
-};
-
-static void ddr_board_options(memctl_options_t *popts,
-			      struct dimm_params *pdimm,
-			      struct fsl_ddr_controller *c)
-{
-	const struct board_specific_parameters *pbsp, *pbsp_highest = NULL;
-	unsigned long ddr_freq;
-
-	if (!pdimm->n_ranks)
-		return;
-
-	pbsp = udimms[0];
-
-	/*
-	 * Get clk_adjust, wrlvl_start, wrlvl_ctl, according to the board ddr
-	 * freqency and n_banks specified in board_specific_parameters table.
-	 */
-	ddr_freq = c->ddr_freq / 1000000;
-	while (pbsp->datarate_mhz_high) {
-		if (pbsp->n_ranks == pdimm->n_ranks) {
-			if (ddr_freq <= pbsp->datarate_mhz_high) {
-				popts->clk_adjust = pbsp->clk_adjust;
-				popts->wrlvl_start = pbsp->wrlvl_start;
-				popts->wrlvl_ctl_2 = pbsp->wrlvl_ctl_2;
-				popts->wrlvl_ctl_3 = pbsp->wrlvl_ctl_3;
-				goto found;
-			}
-			pbsp_highest = pbsp;
-		}
-		pbsp++;
-	}
-
-	if (pbsp_highest) {
-		printf("Error: board specific timing not found for %lu MT/s\n",
-		       ddr_freq);
-		printf("Trying to use the highest speed (%u) parameters\n",
-		       pbsp_highest->datarate_mhz_high);
-		popts->clk_adjust = pbsp_highest->clk_adjust;
-		popts->wrlvl_start = pbsp_highest->wrlvl_start;
-		popts->wrlvl_ctl_2 = pbsp->wrlvl_ctl_2;
-		popts->wrlvl_ctl_3 = pbsp->wrlvl_ctl_3;
-	} else {
-		panic("DIMM is not supported by this board");
-	}
-found:
-	debug("Found timing match: n_ranks %d, data rate %d, rank_gb %d\n",
-	      pbsp->n_ranks, pbsp->datarate_mhz_high, pbsp->rank_gb);
-
-	popts->data_bus_width = 0;	/* 64-bit data bus */
-	popts->bstopre = 0;		/* enable auto precharge */
-
-	/*
-	 * Factors to consider for half-strength driver enable:
-	 *	- number of DIMMs installed
-	 */
-	popts->half_strength_driver_enable = 0;
-	/*
-	 * Write leveling override
-	 */
-	popts->wrlvl_override = 1;
-	popts->wrlvl_sample = 0xf;
-
-	/*
-	 * Rtt and Rtt_WR override
-	 */
-	popts->rtt_override = 0;
-
-	/* Enable ZQ calibration */
-	popts->zq_en = 1;
-
-	popts->ddr_cdr1 = DDR_CDR1_DHC_EN | DDR_CDR1_ODT(DDR4_CDR_ODT_60ohm);
-	popts->ddr_cdr2 = DDR_CDR2_ODT(DDR4_CDR_ODT_60ohm) |
-			  DDR_CDR2_VREF_TRAIN_EN | DDR_CDR2_VREF_RANGE_2;
-
-	/* optimize cpo for erratum A-009942 */
-	popts->cpo_sample = 0x48;
-}
-
-static struct dimm_params dimm_params[] = {
-	{
-		.n_ranks = 1,
-		.rank_density = 2147483648u,
-		.capacity = 2147483648u,
-		.primary_sdram_width = 64,
-		.ec_sdram_width = 8,
-		.registered_dimm = 0,
-		.mirrored_dimm = 0,
-		.n_row_addr = 15,
-		.n_col_addr = 10,
-		.bank_addr_bits = 2,
-		.bank_group_bits = 0,
-		.edc_config = 2,
-		.burst_lengths_bitmask = 0x0c,
-
-		.tckmin_x_ps = 833,
-		.tckmax_ps = 1900,
-		.caslat_x = 0x000DFA00, //
-		.taa_ps = 13320,
-		.trcd_ps = 13320,
-		.trp_ps = 13320,
-		.tras_ps = 32000,
-		.trc_ps = 45320,
-		.trfc1_ps = 260000,
-		.trfc2_ps = 160000,
-		.trfc4_ps = 110000,
-		.tfaw_ps = 21000,
-		.trrds_ps = 3300,
-		.trrdl_ps = 4900,
-		.tccdl_ps = 5000,
-		.trfc_slr_ps = 3500000,
-		.refresh_rate_ps = 7800000,
-	},
-};
-
 static struct fsl_ddr_controller ddrc[] = {
 	{
-		.dimm_slots_per_ctrl = ARRAY_SIZE(dimm_params),
-		.dimm_params = dimm_params,
 		.memctl_opts.ddrtype = SDRAM_TYPE_DDR4,
 		.base = IOMEM(LSCH2_DDR_ADDR),
 		.ddr_freq = LS1046A_DDR_FREQ,
@@ -169,7 +25,6 @@ static struct fsl_ddr_controller ddrc[] = {
 		.erratum_A009801 = 1,
 		.erratum_A009942 = 1,
 		.chip_selects_per_ctrl = 4,
-		.board_options = ddr_board_options,
 		.fsl_ddr_config_reg = {
 	.cs[0].bnds         = 0x0000007F,
 	.cs[0].config       = 0x80010312,
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
