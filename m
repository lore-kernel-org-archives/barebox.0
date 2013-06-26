Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og118.obsmtp.com ([64.18.0.160])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrtcX-0002Lg-7c
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 17:35:07 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 26 Jun 2013 18:33:44 +0100
Message-Id: <1372268027-15271-6-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1372157137-7602-1-git-send-email-renaud.barbier@ge.com>
References: <1372157137-7602-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 5/8] ppc 8xxx: DDR utility and memory options
To: barebox@lists.infradead.org

This commit adds functions to calculate clock cycles, configure the
LAW registers and populate board memory options.

This code is based on the equivalent files in directory
arch/powerpc/cpu/mpc8xxx/ddr from U-Boot version git-a71d45d.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/ddr-8xxx/options.c |  111 +++++++++++++++++++++++++++++++++++++++++++
 arch/ppc/ddr-8xxx/util.c    |  100 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 211 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/ddr-8xxx/options.c
 create mode 100644 arch/ppc/ddr-8xxx/util.c

diff --git a/arch/ppc/ddr-8xxx/options.c b/arch/ppc/ddr-8xxx/options.c
new file mode 100644
index 0000000..22b621f
--- /dev/null
+++ b/arch/ppc/ddr-8xxx/options.c
@@ -0,0 +1,111 @@
+/*
+ * Copyright 2008, 2010-2012 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms of the GNU General Public License as published by the Free
+ * Software Foundation; either version 2 of the License, or (at your option)
+ * any later version.
+ */
+
+#include <common.h>
+#include <asm/fsl_ddr_sdram.h>
+#include "ddr.h"
+
+uint32_t populate_memctl_options(int all_DIMMs_registered,
+		struct memctl_options_s *popts,
+		struct dimm_params_s *pdimm)
+{
+	const struct ddr_board_info_s *binfo = popts->board_info;
+	uint32_t i;
+
+	for (i = 0; i < binfo->cs_per_ctrl; i++) {
+		popts->cs_local_opts[i].odt_rd_cfg = FSL_DDR_ODT_NEVER;
+		popts->cs_local_opts[i].odt_wr_cfg = FSL_DDR_ODT_ALL;
+		popts->cs_local_opts[i].odt_rtt_norm = DDR2_RTT_50_OHM;
+		popts->cs_local_opts[i].odt_rtt_wr = DDR2_RTT_OFF;
+		popts->cs_local_opts[i].auto_precharge = 0;
+	}
+
+	/* Memory Organization Parameters */
+	popts->registered_dimm_en = all_DIMMs_registered;
+	popts->ECC_mode = 0;		  /* 0 = disabled, 1 = enabled */
+	popts->ECC_init_using_memctl = 1; /* 0 = use DMA, 1 = use memctl */
+
+	/* Choose DQS config - 1 for DDR2 */
+	popts->DQS_config = 1;
+
+	/* Choose self-refresh during sleep. */
+	popts->self_refresh_in_sleep = 1;
+
+	/* Choose dynamic power management mode. */
+	popts->dynamic_power = 0;
+
+	/*
+	 * check first dimm for primary sdram width
+	 * assuming all dimms are similar
+	 * 0 = 64-bit, 1 = 32-bit, 2 = 16-bit
+	 */
+	if (pdimm->n_ranks != 0) {
+		if ((pdimm->data_width >= 64) && (pdimm->data_width <= 72))
+			popts->data_bus_width = 0;
+		else if ((pdimm->data_width >= 32) ||
+			(pdimm->data_width <= 40))
+			popts->data_bus_width = 1;
+		else
+			panic("data width %u is invalid!\n",
+					pdimm->data_width);
+	}
+
+	/* Must be a burst length of 4 for DD2 */
+	popts->burst_length = DDR_BL4;
+	/* Decide whether to use the computed de-rated latency */
+	popts->use_derated_caslat = 0;
+
+	/*
+	 * 2T_EN setting
+	 *
+	 * Factors to consider for 2T_EN:
+	 *	- number of DIMMs installed
+	 *	- number of components, number of active ranks
+	 *	- how much time you want to spend playing around
+	 */
+	popts->twoT_en = 0;
+
+	/*
+	 * Default BSTTOPRE precharge interval
+	 *
+	 * Set the parameter to 0 for global auto precharge in
+	 * the board options function.
+	 */
+	popts->bstopre = 0x100;
+
+	/* Minimum CKE pulse width -- tCKE(MIN) */
+	popts->tCKE_clock_pulse_width_ps
+		= mclk_to_picos(FSL_DDR_MIN_TCKE_PULSE_WIDTH_DDR);
+
+	/*
+	 * Window for four activates -- tFAW
+	 *
+	 * Set according to specification for the memory used.
+	 * The default value below would work for x4/x8 wide memory.
+	 *
+	 */
+	popts->tFAW_window_four_activates_ps = 37500;
+
+	/*
+	 * Default powerdown exit timings.
+	 * Set according to specifications for the memory used in
+	 * the board options function.
+	 */
+	popts->txard = 3;
+	popts->txp = 3;
+	popts->taxpd = 11;
+
+	/* Default value for load mode cycle time */
+	popts->tmrd = 2;
+
+	/* Specific board override parameters. */
+	fsl_ddr_board_options(popts, pdimm);
+
+	return 0;
+}
diff --git a/arch/ppc/ddr-8xxx/util.c b/arch/ppc/ddr-8xxx/util.c
new file mode 100644
index 0000000..626b5f3
--- /dev/null
+++ b/arch/ppc/ddr-8xxx/util.c
@@ -0,0 +1,100 @@
+/*
+ * Copyright 2008-2012 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * Version 2 as published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <asm/fsl_law.h>
+#include <asm-generic/div64.h>
+#include <mach/clock.h>
+#include "ddr.h"
+
+#define ULL_2E12 2000000000000ULL
+#define UL_5POW12 244140625UL
+#define UL_2POW13 (1UL << 13)
+#define ULL_8FS 0xFFFFFFFFULL
+
+/*
+ * Round up mclk_ps to nearest 1 ps in memory controller code
+ * if the error is 0.5ps or more.
+ *
+ * If an imprecise data rate is too high due to rounding error
+ * propagation, compute a suitably rounded mclk_ps to compute
+ * a working memory controller configuration.
+ */
+uint32_t get_memory_clk_period_ps(void)
+{
+	uint32_t result, data_rate = fsl_get_ddr_freq(0);
+	/* Round to nearest 10ps, being careful about 64-bit multiply/divide */
+	uint64_t rem, mclk_ps = ULL_2E12;
+
+	/* Now perform the big divide, the result fits in 32-bits */
+	rem = do_div(mclk_ps, data_rate);
+	if (rem >= (data_rate >> 1))
+		result = mclk_ps + 1;
+	else
+		result = mclk_ps;
+
+	return result;
+}
+
+/* Convert picoseconds into DRAM clock cycles (rounding up if needed). */
+uint32_t picos_to_mclk(uint32_t picos)
+{
+	uint64_t clks, clks_rem;
+	uint32_t data_rate = fsl_get_ddr_freq(0);
+
+	if (!picos)
+		return 0;
+
+	/* First multiply the time by the data rate (32x32 => 64) */
+	clks = picos * (uint64_t)data_rate;
+	/*
+	 * Now divide by 5^12 and track the 32-bit remainder, then divide
+	 * by 2*(2^12) using shifts (and updating the remainder).
+	 */
+	clks_rem = do_div(clks, UL_5POW12);
+	clks_rem += (clks & (UL_2POW13 - 1)) * UL_5POW12;
+	clks >>= 13;
+
+	/* If we had a remainder greater than the 1ps error, then round up */
+	if (clks_rem > data_rate)
+		clks++;
+
+	if (clks > ULL_8FS)
+		clks = ULL_8FS;
+
+	return (uint32_t)clks;
+}
+
+uint32_t mclk_to_picos(unsigned int mclk)
+{
+	return get_memory_clk_period_ps() * mclk;
+}
+
+int fsl_ddr_set_lawbar(
+		const struct common_timing_params_s *params,
+		uint32_t law_memctl)
+{
+	uint64_t base = params->base_address;
+	uint64_t size = params->total_mem;
+
+	if (!params->ndimms_present)
+		goto out;
+
+	if (base >= MAX_MEM_MAPPED)
+		goto error;
+
+	if ((base + size) >= MAX_MEM_MAPPED)
+		size = MAX_MEM_MAPPED - base;
+
+	if (fsl_set_ddr_laws(base, size, law_memctl) < 0)
+		goto error;
+out:
+	return 0;
+error:
+	return 1;
+}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
