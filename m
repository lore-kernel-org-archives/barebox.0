Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og111.obsmtp.com ([64.18.0.22])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiSbS-0006oz-DG
 for barebox@lists.infradead.org; Fri, 31 May 2013 16:55:02 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 31 May 2013 17:53:59 +0100
Message-Id: <1370019244-7873-4-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1370019244-7873-1-git-send-email-renaud.barbier@ge.com>
References: <1370019244-7873-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 3/8] ppc 8xxx: dimm parameters calculation
To: barebox@lists.infradead.org

These files are imported from U-Boot as is.

These files provide the DIMM characteristic calculation functions
needed by SPD initialisation for DDR1, DDR2 and DDR3 memory types.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/ddr-8xxx/ddr1_dimm_params.c |  343 ++++++++++++++++++++++++++++++++++
 arch/ppc/ddr-8xxx/ddr2_dimm_params.c |  342 +++++++++++++++++++++++++++++++++
 arch/ppc/ddr-8xxx/ddr3_dimm_params.c |  336 +++++++++++++++++++++++++++++++++
 3 files changed, 1021 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/ddr-8xxx/ddr1_dimm_params.c
 create mode 100644 arch/ppc/ddr-8xxx/ddr2_dimm_params.c
 create mode 100644 arch/ppc/ddr-8xxx/ddr3_dimm_params.c

diff --git a/arch/ppc/ddr-8xxx/ddr1_dimm_params.c b/arch/ppc/ddr-8xxx/ddr1_dimm_params.c
new file mode 100644
index 0000000..376be2f
--- /dev/null
+++ b/arch/ppc/ddr-8xxx/ddr1_dimm_params.c
@@ -0,0 +1,343 @@
+/*
+ * Copyright 2008 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * Version 2 as published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <asm/fsl_ddr_sdram.h>
+
+#include "ddr.h"
+
+/*
+ * Calculate the Density of each Physical Rank.
+ * Returned size is in bytes.
+ *
+ * Study these table from Byte 31 of JEDEC SPD Spec.
+ *
+ *		DDR I	DDR II
+ *	Bit	Size	Size
+ *	---	-----	------
+ *	7 high	512MB	512MB
+ *	6	256MB	256MB
+ *	5	128MB	128MB
+ *	4	 64MB	 16GB
+ *	3	 32MB	  8GB
+ *	2	 16MB	  4GB
+ *	1	  2GB	  2GB
+ *	0 low	  1GB	  1GB
+ *
+ * Reorder Table to be linear by stripping the bottom
+ * 2 or 5 bits off and shifting them up to the top.
+ */
+
+static unsigned long long
+compute_ranksize(unsigned int mem_type, unsigned char row_dens)
+{
+	unsigned long long bsize;
+
+	/* Bottom 2 bits up to the top. */
+	bsize = ((row_dens >> 2) | ((row_dens & 3) << 6));
+	bsize <<= 24ULL;
+	debug("DDR: DDR I rank density = 0x%16llx\n", bsize);
+
+	return bsize;
+}
+
+/*
+ * Convert a two-nibble BCD value into a cycle time.
+ * While the spec calls for nano-seconds, picos are returned.
+ *
+ * This implements the tables for bytes 9, 23 and 25 for both
+ * DDR I and II.  No allowance for distinguishing the invalid
+ * fields absent for DDR I yet present in DDR II is made.
+ * (That is, cycle times of .25, .33, .66 and .75 ns are
+ * allowed for both DDR II and I.)
+ */
+static unsigned int
+convert_bcd_tenths_to_cycle_time_ps(unsigned int spd_val)
+{
+	/* Table look up the lower nibble, allow DDR I & II. */
+	unsigned int tenths_ps[16] = {
+		0,
+		100,
+		200,
+		300,
+		400,
+		500,
+		600,
+		700,
+		800,
+		900,
+		250,	/* This and the next 3 entries valid ... */
+		330,	/* ...  only for tCK calculations. */
+		660,
+		750,
+		0,	/* undefined */
+		0	/* undefined */
+	};
+
+	unsigned int whole_ns = (spd_val & 0xF0) >> 4;
+	unsigned int tenth_ns = spd_val & 0x0F;
+	unsigned int ps = whole_ns * 1000 + tenths_ps[tenth_ns];
+
+	return ps;
+}
+
+static unsigned int
+convert_bcd_hundredths_to_cycle_time_ps(unsigned int spd_val)
+{
+	unsigned int tenth_ns = (spd_val & 0xF0) >> 4;
+	unsigned int hundredth_ns = spd_val & 0x0F;
+	unsigned int ps = tenth_ns * 100 + hundredth_ns * 10;
+
+	return ps;
+}
+
+static unsigned int byte40_table_ps[8] = {
+	0,
+	250,
+	330,
+	500,
+	660,
+	750,
+	0,	/* supposed to be RFC, but not sure what that means */
+	0	/* Undefined */
+};
+
+static unsigned int
+compute_trfc_ps_from_spd(unsigned char trctrfc_ext, unsigned char trfc)
+{
+	unsigned int trfc_ps;
+
+	trfc_ps = (((trctrfc_ext & 0x1) * 256) + trfc) * 1000
+		+ byte40_table_ps[(trctrfc_ext >> 1) & 0x7];
+
+	return trfc_ps;
+}
+
+static unsigned int
+compute_trc_ps_from_spd(unsigned char trctrfc_ext, unsigned char trc)
+{
+	unsigned int trc_ps;
+
+	trc_ps = trc * 1000 + byte40_table_ps[(trctrfc_ext >> 4) & 0x7];
+
+	return trc_ps;
+}
+
+/*
+ * tCKmax from DDR I SPD Byte 43
+ *
+ * Bits 7:2 == whole ns
+ * Bits 1:0 == quarter ns
+ *    00    == 0.00 ns
+ *    01    == 0.25 ns
+ *    10    == 0.50 ns
+ *    11    == 0.75 ns
+ *
+ * Returns picoseconds.
+ */
+static unsigned int
+compute_tckmax_from_spd_ps(unsigned int byte43)
+{
+	return (byte43 >> 2) * 1000 + (byte43 & 0x3) * 250;
+}
+
+/*
+ * Determine Refresh Rate.  Ignore self refresh bit on DDR I.
+ * Table from SPD Spec, Byte 12, converted to picoseconds and
+ * filled in with "default" normal values.
+ */
+static unsigned int
+determine_refresh_rate_ps(const unsigned int spd_refresh)
+{
+	unsigned int refresh_time_ps[8] = {
+		15625000,	/* 0 Normal    1.00x */
+		3900000,	/* 1 Reduced    .25x */
+		7800000,	/* 2 Extended   .50x */
+		31300000,	/* 3 Extended  2.00x */
+		62500000,	/* 4 Extended  4.00x */
+		125000000,	/* 5 Extended  8.00x */
+		15625000,	/* 6 Normal    1.00x  filler */
+		15625000,	/* 7 Normal    1.00x  filler */
+	};
+
+	return refresh_time_ps[spd_refresh & 0x7];
+}
+
+/*
+ * The purpose of this function is to compute a suitable
+ * CAS latency given the DRAM clock period.  The SPD only
+ * defines at most 3 CAS latencies.  Typically the slower in
+ * frequency the DIMM runs at, the shorter its CAS latency can be.
+ * If the DIMM is operating at a sufficiently low frequency,
+ * it may be able to run at a CAS latency shorter than the
+ * shortest SPD-defined CAS latency.
+ *
+ * If a CAS latency is not found, 0 is returned.
+ *
+ * Do this by finding in the standard speed bin table the longest
+ * tCKmin that doesn't exceed the value of mclk_ps (tCK).
+ *
+ * An assumption made is that the SDRAM device allows the
+ * CL to be programmed for a value that is lower than those
+ * advertised by the SPD.  This is not always the case,
+ * as those modes not defined in the SPD are optional.
+ *
+ * CAS latency de-rating based upon values JEDEC Standard No. 79-E
+ * Table 11.
+ *
+ * ordinal 2, ddr1_speed_bins[1] contains tCK for CL=2
+ */
+				  /*   CL2.0 CL2.5 CL3.0  */
+unsigned short ddr1_speed_bins[] = {0, 7500, 6000, 5000 };
+
+unsigned int
+compute_derated_DDR1_CAS_latency(unsigned int mclk_ps)
+{
+	const unsigned int num_speed_bins = ARRAY_SIZE(ddr1_speed_bins);
+	unsigned int lowest_tCKmin_found = 0;
+	unsigned int lowest_tCKmin_CL = 0;
+	unsigned int i;
+
+	debug("mclk_ps = %u\n", mclk_ps);
+
+	for (i = 0; i < num_speed_bins; i++) {
+		unsigned int x = ddr1_speed_bins[i];
+		debug("i=%u, x = %u, lowest_tCKmin_found = %u\n",
+		      i, x, lowest_tCKmin_found);
+		if (x && lowest_tCKmin_found <= x && x <= mclk_ps) {
+			lowest_tCKmin_found = x;
+			lowest_tCKmin_CL = i + 1;
+		}
+	}
+
+	debug("lowest_tCKmin_CL = %u\n", lowest_tCKmin_CL);
+
+	return lowest_tCKmin_CL;
+}
+
+/*
+ * ddr_compute_dimm_parameters for DDR1 SPD
+ *
+ * Compute DIMM parameters based upon the SPD information in spd.
+ * Writes the results to the dimm_params_t structure pointed by pdimm.
+ *
+ * FIXME: use #define for the retvals
+ */
+unsigned int
+ddr_compute_dimm_parameters(const ddr1_spd_eeprom_t *spd,
+			     dimm_params_t *pdimm,
+			     unsigned int dimm_number)
+{
+	unsigned int retval;
+
+	if (spd->mem_type) {
+		if (spd->mem_type != SPD_MEMTYPE_DDR) {
+			printf("DIMM %u: is not a DDR1 SPD.\n", dimm_number);
+			return 1;
+		}
+	} else {
+		memset(pdimm, 0, sizeof(dimm_params_t));
+		return 1;
+	}
+
+	retval = ddr1_spd_check(spd);
+	if (retval) {
+		printf("DIMM %u: failed checksum\n", dimm_number);
+		return 2;
+	}
+
+	/*
+	 * The part name in ASCII in the SPD EEPROM is not null terminated.
+	 * Guarantee null termination here by presetting all bytes to 0
+	 * and copying the part name in ASCII from the SPD onto it
+	 */
+	memset(pdimm->mpart, 0, sizeof(pdimm->mpart));
+	memcpy(pdimm->mpart, spd->mpart, sizeof(pdimm->mpart) - 1);
+
+	/* DIMM organization parameters */
+	pdimm->n_ranks = spd->nrows;
+	pdimm->rank_density = compute_ranksize(spd->mem_type, spd->bank_dens);
+	pdimm->capacity = pdimm->n_ranks * pdimm->rank_density;
+	pdimm->data_width = spd->dataw_lsb;
+	pdimm->primary_sdram_width = spd->primw;
+	pdimm->ec_sdram_width = spd->ecw;
+
+	/*
+	 * FIXME: Need to determine registered_dimm status.
+	 *     1 == register buffered
+	 *     0 == unbuffered
+	 */
+	pdimm->registered_dimm = 0;	/* unbuffered */
+
+	/* SDRAM device parameters */
+	pdimm->n_row_addr = spd->nrow_addr;
+	pdimm->n_col_addr = spd->ncol_addr;
+	pdimm->n_banks_per_sdram_device = spd->nbanks;
+	pdimm->edc_config = spd->config;
+	pdimm->burst_lengths_bitmask = spd->burstl;
+	pdimm->row_density = spd->bank_dens;
+
+	/*
+	 * Calculate the Maximum Data Rate based on the Minimum Cycle time.
+	 * The SPD clk_cycle field (tCKmin) is measured in tenths of
+	 * nanoseconds and represented as BCD.
+	 */
+	pdimm->tCKmin_X_ps
+		= convert_bcd_tenths_to_cycle_time_ps(spd->clk_cycle);
+	pdimm->tCKmin_X_minus_1_ps
+		= convert_bcd_tenths_to_cycle_time_ps(spd->clk_cycle2);
+	pdimm->tCKmin_X_minus_2_ps
+		= convert_bcd_tenths_to_cycle_time_ps(spd->clk_cycle3);
+
+	pdimm->tCKmax_ps = compute_tckmax_from_spd_ps(spd->tckmax);
+
+	/*
+	 * Compute CAS latencies defined by SPD
+	 * The SPD caslat_X should have at least 1 and at most 3 bits set.
+	 *
+	 * If cas_lat after masking is 0, the __ilog2 function returns
+	 * 255 into the variable.   This behavior is abused once.
+	 */
+	pdimm->caslat_X  = __ilog2(spd->cas_lat);
+	pdimm->caslat_X_minus_1 = __ilog2(spd->cas_lat
+					  & ~(1 << pdimm->caslat_X));
+	pdimm->caslat_X_minus_2 = __ilog2(spd->cas_lat
+					  & ~(1 << pdimm->caslat_X)
+					  & ~(1 << pdimm->caslat_X_minus_1));
+
+	/* Compute CAS latencies below that defined by SPD */
+	pdimm->caslat_lowest_derated
+		= compute_derated_DDR1_CAS_latency(get_memory_clk_period_ps());
+
+	/* Compute timing parameters */
+	pdimm->tRCD_ps = spd->trcd * 250;
+	pdimm->tRP_ps = spd->trp * 250;
+	pdimm->tRAS_ps = spd->tras * 1000;
+
+	pdimm->tWR_ps = mclk_to_picos(3);
+	pdimm->tWTR_ps = mclk_to_picos(1);
+	pdimm->tRFC_ps = compute_trfc_ps_from_spd(0, spd->trfc);
+
+	pdimm->tRRD_ps = spd->trrd * 250;
+	pdimm->tRC_ps = compute_trc_ps_from_spd(0, spd->trc);
+
+	pdimm->refresh_rate_ps = determine_refresh_rate_ps(spd->refresh);
+
+	pdimm->tIS_ps = convert_bcd_hundredths_to_cycle_time_ps(spd->ca_setup);
+	pdimm->tIH_ps = convert_bcd_hundredths_to_cycle_time_ps(spd->ca_hold);
+	pdimm->tDS_ps
+		= convert_bcd_hundredths_to_cycle_time_ps(spd->data_setup);
+	pdimm->tDH_ps
+		= convert_bcd_hundredths_to_cycle_time_ps(spd->data_hold);
+
+	pdimm->tRTP_ps = mclk_to_picos(2);	/* By the book. */
+	pdimm->tDQSQ_max_ps = spd->tdqsq * 10;
+	pdimm->tQHS_ps = spd->tqhs * 10;
+
+	return 0;
+}
diff --git a/arch/ppc/ddr-8xxx/ddr2_dimm_params.c b/arch/ppc/ddr-8xxx/ddr2_dimm_params.c
new file mode 100644
index 0000000..f637f3d
--- /dev/null
+++ b/arch/ppc/ddr-8xxx/ddr2_dimm_params.c
@@ -0,0 +1,342 @@
+/*
+ * Copyright 2008 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * Version 2 as published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <asm/fsl_ddr_sdram.h>
+
+#include "ddr.h"
+/*
+ * Calculate the Density of each Physical Rank.
+ * Returned size is in bytes.
+ *
+ * Study these table from Byte 31 of JEDEC SPD Spec.
+ *
+ *		DDR I	DDR II
+ *	Bit	Size	Size
+ *	---	-----	------
+ *	7 high	512MB	512MB
+ *	6	256MB	256MB
+ *	5	128MB	128MB
+ *	4	 64MB	 16GB
+ *	3	 32MB	  8GB
+ *	2	 16MB	  4GB
+ *	1	  2GB	  2GB
+ *	0 low	  1GB	  1GB
+ *
+ * Reorder Table to be linear by stripping the bottom
+ * 2 or 5 bits off and shifting them up to the top.
+ *
+ */
+static unsigned long long
+compute_ranksize(unsigned int mem_type, unsigned char row_dens)
+{
+	unsigned long long bsize;
+
+	/* Bottom 5 bits up to the top. */
+	bsize = ((row_dens >> 5) | ((row_dens & 31) << 3));
+	bsize <<= 27ULL;
+	debug("DDR: DDR II rank density = 0x%16llx\n", bsize);
+
+	return bsize;
+}
+
+/*
+ * Convert a two-nibble BCD value into a cycle time.
+ * While the spec calls for nano-seconds, picos are returned.
+ *
+ * This implements the tables for bytes 9, 23 and 25 for both
+ * DDR I and II.  No allowance for distinguishing the invalid
+ * fields absent for DDR I yet present in DDR II is made.
+ * (That is, cycle times of .25, .33, .66 and .75 ns are
+ * allowed for both DDR II and I.)
+ */
+static unsigned int
+convert_bcd_tenths_to_cycle_time_ps(unsigned int spd_val)
+{
+	/* Table look up the lower nibble, allow DDR I & II. */
+	unsigned int tenths_ps[16] = {
+		0,
+		100,
+		200,
+		300,
+		400,
+		500,
+		600,
+		700,
+		800,
+		900,
+		250,	/* This and the next 3 entries valid ... */
+		330,	/* ...  only for tCK calculations. */
+		660,
+		750,
+		0,	/* undefined */
+		0	/* undefined */
+	};
+
+	unsigned int whole_ns = (spd_val & 0xF0) >> 4;
+	unsigned int tenth_ns = spd_val & 0x0F;
+	unsigned int ps = whole_ns * 1000 + tenths_ps[tenth_ns];
+
+	return ps;
+}
+
+static unsigned int
+convert_bcd_hundredths_to_cycle_time_ps(unsigned int spd_val)
+{
+	unsigned int tenth_ns = (spd_val & 0xF0) >> 4;
+	unsigned int hundredth_ns = spd_val & 0x0F;
+	unsigned int ps = tenth_ns * 100 + hundredth_ns * 10;
+
+	return ps;
+}
+
+static unsigned int byte40_table_ps[8] = {
+	0,
+	250,
+	330,
+	500,
+	660,
+	750,
+	0,	/* supposed to be RFC, but not sure what that means */
+	0	/* Undefined */
+};
+
+static unsigned int
+compute_trfc_ps_from_spd(unsigned char trctrfc_ext, unsigned char trfc)
+{
+	unsigned int trfc_ps;
+
+	trfc_ps = (((trctrfc_ext & 0x1) * 256) + trfc) * 1000
+		+ byte40_table_ps[(trctrfc_ext >> 1) & 0x7];
+
+	return trfc_ps;
+}
+
+static unsigned int
+compute_trc_ps_from_spd(unsigned char trctrfc_ext, unsigned char trc)
+{
+	unsigned int trc_ps;
+
+	trc_ps = trc * 1000 + byte40_table_ps[(trctrfc_ext >> 4) & 0x7];
+
+	return trc_ps;
+}
+
+/*
+ * Determine Refresh Rate.  Ignore self refresh bit on DDR I.
+ * Table from SPD Spec, Byte 12, converted to picoseconds and
+ * filled in with "default" normal values.
+ */
+static unsigned int
+determine_refresh_rate_ps(const unsigned int spd_refresh)
+{
+	unsigned int refresh_time_ps[8] = {
+		15625000,	/* 0 Normal    1.00x */
+		3900000,	/* 1 Reduced    .25x */
+		7800000,	/* 2 Extended   .50x */
+		31300000,	/* 3 Extended  2.00x */
+		62500000,	/* 4 Extended  4.00x */
+		125000000,	/* 5 Extended  8.00x */
+		15625000,	/* 6 Normal    1.00x  filler */
+		15625000,	/* 7 Normal    1.00x  filler */
+	};
+
+	return refresh_time_ps[spd_refresh & 0x7];
+}
+
+/*
+ * The purpose of this function is to compute a suitable
+ * CAS latency given the DRAM clock period.  The SPD only
+ * defines at most 3 CAS latencies.  Typically the slower in
+ * frequency the DIMM runs at, the shorter its CAS latency can.
+ * be.  If the DIMM is operating at a sufficiently low frequency,
+ * it may be able to run at a CAS latency shorter than the
+ * shortest SPD-defined CAS latency.
+ *
+ * If a CAS latency is not found, 0 is returned.
+ *
+ * Do this by finding in the standard speed bin table the longest
+ * tCKmin that doesn't exceed the value of mclk_ps (tCK).
+ *
+ * An assumption made is that the SDRAM device allows the
+ * CL to be programmed for a value that is lower than those
+ * advertised by the SPD.  This is not always the case,
+ * as those modes not defined in the SPD are optional.
+ *
+ * CAS latency de-rating based upon values JEDEC Standard No. 79-2C
+ * Table 40, "DDR2 SDRAM stanadard speed bins and tCK, tRCD, tRP, tRAS,
+ * and tRC for corresponding bin"
+ *
+ * ordinal 2, ddr2_speed_bins[1] contains tCK for CL=3
+ * Not certain if any good value exists for CL=2
+ */
+				 /* CL2   CL3   CL4   CL5   CL6  CL7*/
+unsigned short ddr2_speed_bins[] = {   0, 5000, 3750, 3000, 2500, 1875 };
+
+unsigned int
+compute_derated_DDR2_CAS_latency(unsigned int mclk_ps)
+{
+	const unsigned int num_speed_bins = ARRAY_SIZE(ddr2_speed_bins);
+	unsigned int lowest_tCKmin_found = 0;
+	unsigned int lowest_tCKmin_CL = 0;
+	unsigned int i;
+
+	debug("mclk_ps = %u\n", mclk_ps);
+
+	for (i = 0; i < num_speed_bins; i++) {
+		unsigned int x = ddr2_speed_bins[i];
+		debug("i=%u, x = %u, lowest_tCKmin_found = %u\n",
+		      i, x, lowest_tCKmin_found);
+		if (x && x <= mclk_ps && x >= lowest_tCKmin_found ) {
+			lowest_tCKmin_found = x;
+			lowest_tCKmin_CL = i + 2;
+		}
+	}
+
+	debug("lowest_tCKmin_CL = %u\n", lowest_tCKmin_CL);
+
+	return lowest_tCKmin_CL;
+}
+
+/*
+ * ddr_compute_dimm_parameters for DDR2 SPD
+ *
+ * Compute DIMM parameters based upon the SPD information in spd.
+ * Writes the results to the dimm_params_t structure pointed by pdimm.
+ *
+ * FIXME: use #define for the retvals
+ */
+unsigned int
+ddr_compute_dimm_parameters(const ddr2_spd_eeprom_t *spd,
+			     dimm_params_t *pdimm,
+			     unsigned int dimm_number)
+{
+	unsigned int retval;
+
+	if (spd->mem_type) {
+		if (spd->mem_type != SPD_MEMTYPE_DDR2) {
+			printf("DIMM %u: is not a DDR2 SPD.\n", dimm_number);
+			return 1;
+		}
+	} else {
+		memset(pdimm, 0, sizeof(dimm_params_t));
+		return 1;
+	}
+
+	retval = ddr2_spd_check(spd);
+	if (retval) {
+		printf("DIMM %u: failed checksum\n", dimm_number);
+		return 2;
+	}
+
+	/*
+	 * The part name in ASCII in the SPD EEPROM is not null terminated.
+	 * Guarantee null termination here by presetting all bytes to 0
+	 * and copying the part name in ASCII from the SPD onto it
+	 */
+	memset(pdimm->mpart, 0, sizeof(pdimm->mpart));
+	memcpy(pdimm->mpart, spd->mpart, sizeof(pdimm->mpart) - 1);
+
+	/* DIMM organization parameters */
+	pdimm->n_ranks = (spd->mod_ranks & 0x7) + 1;
+	pdimm->rank_density = compute_ranksize(spd->mem_type, spd->rank_dens);
+	pdimm->capacity = pdimm->n_ranks * pdimm->rank_density;
+	pdimm->data_width = spd->dataw;
+	pdimm->primary_sdram_width = spd->primw;
+	pdimm->ec_sdram_width = spd->ecw;
+
+	/* These are all the types defined by the JEDEC DDR2 SPD 1.3 spec */
+	switch (spd->dimm_type) {
+	case DDR2_SPD_DIMMTYPE_RDIMM:
+	case DDR2_SPD_DIMMTYPE_72B_SO_RDIMM:
+	case DDR2_SPD_DIMMTYPE_MINI_RDIMM:
+		/* Registered/buffered DIMMs */
+		pdimm->registered_dimm = 1;
+		break;
+
+	case DDR2_SPD_DIMMTYPE_UDIMM:
+	case DDR2_SPD_DIMMTYPE_SO_DIMM:
+	case DDR2_SPD_DIMMTYPE_MICRO_DIMM:
+	case DDR2_SPD_DIMMTYPE_MINI_UDIMM:
+		/* Unbuffered DIMMs */
+		pdimm->registered_dimm = 0;
+		break;
+
+	case DDR2_SPD_DIMMTYPE_72B_SO_CDIMM:
+	default:
+		printf("unknown dimm_type 0x%02X\n", spd->dimm_type);
+		return 1;
+	}
+
+	/* SDRAM device parameters */
+	pdimm->n_row_addr = spd->nrow_addr;
+	pdimm->n_col_addr = spd->ncol_addr;
+	pdimm->n_banks_per_sdram_device = spd->nbanks;
+	pdimm->edc_config = spd->config;
+	pdimm->burst_lengths_bitmask = spd->burstl;
+	pdimm->row_density = spd->rank_dens;
+
+	/*
+	 * Calculate the Maximum Data Rate based on the Minimum Cycle time.
+	 * The SPD clk_cycle field (tCKmin) is measured in tenths of
+	 * nanoseconds and represented as BCD.
+	 */
+	pdimm->tCKmin_X_ps
+		= convert_bcd_tenths_to_cycle_time_ps(spd->clk_cycle);
+	pdimm->tCKmin_X_minus_1_ps
+		= convert_bcd_tenths_to_cycle_time_ps(spd->clk_cycle2);
+	pdimm->tCKmin_X_minus_2_ps
+		= convert_bcd_tenths_to_cycle_time_ps(spd->clk_cycle3);
+
+	pdimm->tCKmax_ps = convert_bcd_tenths_to_cycle_time_ps(spd->tckmax);
+
+	/*
+	 * Compute CAS latencies defined by SPD
+	 * The SPD caslat_X should have at least 1 and at most 3 bits set.
+	 *
+	 * If cas_lat after masking is 0, the __ilog2 function returns
+	 * 255 into the variable.   This behavior is abused once.
+	 */
+	pdimm->caslat_X  = __ilog2(spd->cas_lat);
+	pdimm->caslat_X_minus_1 = __ilog2(spd->cas_lat
+					  & ~(1 << pdimm->caslat_X));
+	pdimm->caslat_X_minus_2 = __ilog2(spd->cas_lat
+					  & ~(1 << pdimm->caslat_X)
+					  & ~(1 << pdimm->caslat_X_minus_1));
+
+	/* Compute CAS latencies below that defined by SPD */
+	pdimm->caslat_lowest_derated
+		= compute_derated_DDR2_CAS_latency(get_memory_clk_period_ps());
+
+	/* Compute timing parameters */
+	pdimm->tRCD_ps = spd->trcd * 250;
+	pdimm->tRP_ps = spd->trp * 250;
+	pdimm->tRAS_ps = spd->tras * 1000;
+
+	pdimm->tWR_ps = spd->twr * 250;
+	pdimm->tWTR_ps = spd->twtr * 250;
+	pdimm->tRFC_ps = compute_trfc_ps_from_spd(spd->trctrfc_ext, spd->trfc);
+
+	pdimm->tRRD_ps = spd->trrd * 250;
+	pdimm->tRC_ps = compute_trc_ps_from_spd(spd->trctrfc_ext, spd->trc);
+
+	pdimm->refresh_rate_ps = determine_refresh_rate_ps(spd->refresh);
+
+	pdimm->tIS_ps = convert_bcd_hundredths_to_cycle_time_ps(spd->ca_setup);
+	pdimm->tIH_ps = convert_bcd_hundredths_to_cycle_time_ps(spd->ca_hold);
+	pdimm->tDS_ps
+		= convert_bcd_hundredths_to_cycle_time_ps(spd->data_setup);
+	pdimm->tDH_ps
+		= convert_bcd_hundredths_to_cycle_time_ps(spd->data_hold);
+
+	pdimm->tRTP_ps = spd->trtp * 250;
+	pdimm->tDQSQ_max_ps = spd->tdqsq * 10;
+	pdimm->tQHS_ps = spd->tqhs * 10;
+
+	return 0;
+}
diff --git a/arch/ppc/ddr-8xxx/ddr3_dimm_params.c b/arch/ppc/ddr-8xxx/ddr3_dimm_params.c
new file mode 100644
index 0000000..3e7c269
--- /dev/null
+++ b/arch/ppc/ddr-8xxx/ddr3_dimm_params.c
@@ -0,0 +1,336 @@
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
+
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
+ * 	bit[2:0]	primary bus width
+ *	000		8bits
+ * 	001		16bits
+ * 	010		32bits
+ * 	011		64bits
+ *
+ * SPD byte7 - module organiztion
+ * 	bit[2:0]	sdram device width
+ * 	000		4bits
+ * 	001		8bits
+ * 	010		16bits
+ * 	011		32bits
+ *
+ */
+static unsigned long long
+compute_ranksize(const ddr3_spd_eeprom_t *spd)
+{
+	unsigned long long bsize;
+
+	int nbit_sdram_cap_bsize = 0;
+	int nbit_primary_bus_width = 0;
+	int nbit_sdram_width = 0;
+
+	if ((spd->density_banks & 0xf) < 7)
+		nbit_sdram_cap_bsize = (spd->density_banks & 0xf) + 28;
+	if ((spd->bus_width & 0x7) < 4)
+		nbit_primary_bus_width = (spd->bus_width & 0x7) + 3;
+	if ((spd->organization & 0x7) < 4)
+		nbit_sdram_width = (spd->organization & 0x7) + 2;
+
+	bsize = 1ULL << (nbit_sdram_cap_bsize - 3
+		    + nbit_primary_bus_width - nbit_sdram_width);
+
+	debug("DDR: DDR III rank density = 0x%16llx\n", bsize);
+
+	return bsize;
+}
+
+/*
+ * ddr_compute_dimm_parameters for DDR3 SPD
+ *
+ * Compute DIMM parameters based upon the SPD information in spd.
+ * Writes the results to the dimm_params_t structure pointed by pdimm.
+ *
+ */
+unsigned int
+ddr_compute_dimm_parameters(const ddr3_spd_eeprom_t *spd,
+			     dimm_params_t *pdimm,
+			     unsigned int dimm_number)
+{
+	unsigned int retval;
+	unsigned int mtb_ps;
+	int ftb_10th_ps;
+	int i;
+
+	if (spd->mem_type) {
+		if (spd->mem_type != SPD_MEMTYPE_DDR3) {
+			printf("DIMM %u: is not a DDR3 SPD.\n", dimm_number);
+			return 1;
+		}
+	} else {
+		memset(pdimm, 0, sizeof(dimm_params_t));
+		return 1;
+	}
+
+	retval = ddr3_spd_check(spd);
+	if (retval) {
+		printf("DIMM %u: failed checksum\n", dimm_number);
+		return 2;
+	}
+
+	/*
+	 * The part name in ASCII in the SPD EEPROM is not null terminated.
+	 * Guarantee null termination here by presetting all bytes to 0
+	 * and copying the part name in ASCII from the SPD onto it
+	 */
+	memset(pdimm->mpart, 0, sizeof(pdimm->mpart));
+	if ((spd->info_size_crc & 0xF) > 1)
+		memcpy(pdimm->mpart, spd->mpart, sizeof(pdimm->mpart) - 1);
+
+	/* DIMM organization parameters */
+	pdimm->n_ranks = ((spd->organization >> 3) & 0x7) + 1;
+	pdimm->rank_density = compute_ranksize(spd);
+	pdimm->capacity = pdimm->n_ranks * pdimm->rank_density;
+	pdimm->primary_sdram_width = 1 << (3 + (spd->bus_width & 0x7));
+	if ((spd->bus_width >> 3) & 0x3)
+		pdimm->ec_sdram_width = 8;
+	else
+		pdimm->ec_sdram_width = 0;
+	pdimm->data_width = pdimm->primary_sdram_width
+			  + pdimm->ec_sdram_width;
+
+	/* These are the types defined by the JEDEC DDR3 SPD spec */
+	pdimm->mirrored_dimm = 0;
+	pdimm->registered_dimm = 0;
+	switch (spd->module_type & DDR3_SPD_MODULETYPE_MASK) {
+	case DDR3_SPD_MODULETYPE_RDIMM:
+	case DDR3_SPD_MODULETYPE_MINI_RDIMM:
+	case DDR3_SPD_MODULETYPE_72B_SO_RDIMM:
+		/* Registered/buffered DIMMs */
+		pdimm->registered_dimm = 1;
+		for (i = 0; i < 16; i += 2) {
+			u8 rcw = spd->mod_section.registered.rcw[i/2];
+			pdimm->rcw[i]   = (rcw >> 0) & 0x0F;
+			pdimm->rcw[i+1] = (rcw >> 4) & 0x0F;
+		}
+		break;
+
+	case DDR3_SPD_MODULETYPE_UDIMM:
+	case DDR3_SPD_MODULETYPE_SO_DIMM:
+	case DDR3_SPD_MODULETYPE_MICRO_DIMM:
+	case DDR3_SPD_MODULETYPE_MINI_UDIMM:
+	case DDR3_SPD_MODULETYPE_MINI_CDIMM:
+	case DDR3_SPD_MODULETYPE_72B_SO_UDIMM:
+	case DDR3_SPD_MODULETYPE_72B_SO_CDIMM:
+	case DDR3_SPD_MODULETYPE_LRDIMM:
+	case DDR3_SPD_MODULETYPE_16B_SO_DIMM:
+	case DDR3_SPD_MODULETYPE_32B_SO_DIMM:
+		/* Unbuffered DIMMs */
+		if (spd->mod_section.unbuffered.addr_mapping & 0x1)
+			pdimm->mirrored_dimm = 1;
+		break;
+
+	default:
+		printf("unknown module_type 0x%02X\n", spd->module_type);
+		return 1;
+	}
+
+	/* SDRAM device parameters */
+	pdimm->n_row_addr = ((spd->addressing >> 3) & 0x7) + 12;
+	pdimm->n_col_addr = (spd->addressing & 0x7) + 9;
+	pdimm->n_banks_per_sdram_device = 8 << ((spd->density_banks >> 4) & 0x7);
+
+	/*
+	 * The SPD spec has not the ECC bit,
+	 * We consider the DIMM as ECC capability
+	 * when the extension bus exist
+	 */
+	if (pdimm->ec_sdram_width)
+		pdimm->edc_config = 0x02;
+	else
+		pdimm->edc_config = 0x00;
+
+	/*
+	 * The SPD spec has not the burst length byte
+	 * but DDR3 spec has nature BL8 and BC4,
+	 * BL8 -bit3, BC4 -bit2
+	 */
+	pdimm->burst_lengths_bitmask = 0x0c;
+	pdimm->row_density = __ilog2(pdimm->rank_density);
+
+	/* MTB - medium timebase
+	 * The unit in the SPD spec is ns,
+	 * We convert it to ps.
+	 * eg: MTB = 0.125ns (125ps)
+	 */
+	mtb_ps = (spd->mtb_dividend * 1000) /spd->mtb_divisor;
+	pdimm->mtb_ps = mtb_ps;
+
+	/*
+	 * FTB - fine timebase
+	 * use 1/10th of ps as our unit to avoid floating point
+	 * eg, 10 for 1ps, 25 for 2.5ps, 50 for 5ps
+	 */
+	ftb_10th_ps =
+		((spd->ftb_div & 0xf0) >> 4) * 10 / (spd->ftb_div & 0x0f);
+	pdimm->ftb_10th_ps = ftb_10th_ps;
+	/*
+	 * sdram minimum cycle time
+	 * we assume the MTB is 0.125ns
+	 * eg:
+	 * tCK_min=15 MTB (1.875ns) ->DDR3-1066
+	 *        =12 MTB (1.5ns) ->DDR3-1333
+	 *        =10 MTB (1.25ns) ->DDR3-1600
+	 */
+	pdimm->tCKmin_X_ps = spd->tCK_min * mtb_ps +
+		(spd->fine_tCK_min * ftb_10th_ps) / 10;
+
+	/*
+	 * CAS latency supported
+	 * bit4 - CL4
+	 * bit5 - CL5
+	 * bit18 - CL18
+	 */
+	pdimm->caslat_X  = ((spd->caslat_msb << 8) | spd->caslat_lsb) << 4;
+
+	/*
+	 * min CAS latency time
+	 * eg: tAA_min =
+	 * DDR3-800D	100 MTB (12.5ns)
+	 * DDR3-1066F	105 MTB (13.125ns)
+	 * DDR3-1333H	108 MTB (13.5ns)
+	 * DDR3-1600H	90 MTB (11.25ns)
+	 */
+	pdimm->tAA_ps = spd->tAA_min * mtb_ps +
+		(spd->fine_tAA_min * ftb_10th_ps) / 10;
+
+	/*
+	 * min write recovery time
+	 * eg:
+	 * tWR_min = 120 MTB (15ns) -> all speed grades.
+	 */
+	pdimm->tWR_ps = spd->tWR_min * mtb_ps;
+
+	/*
+	 * min RAS to CAS delay time
+	 * eg: tRCD_min =
+	 * DDR3-800	100 MTB (12.5ns)
+	 * DDR3-1066F	105 MTB (13.125ns)
+	 * DDR3-1333H	108 MTB (13.5ns)
+	 * DDR3-1600H	90 MTB (11.25)
+	 */
+	pdimm->tRCD_ps = spd->tRCD_min * mtb_ps +
+		(spd->fine_tRCD_min * ftb_10th_ps) / 10;
+
+	/*
+	 * min row active to row active delay time
+	 * eg: tRRD_min =
+	 * DDR3-800(1KB page)	80 MTB (10ns)
+	 * DDR3-1333(1KB page)	48 MTB (6ns)
+	 */
+	pdimm->tRRD_ps = spd->tRRD_min * mtb_ps;
+
+	/*
+	 * min row precharge delay time
+	 * eg: tRP_min =
+	 * DDR3-800D	100 MTB (12.5ns)
+	 * DDR3-1066F	105 MTB (13.125ns)
+	 * DDR3-1333H	108 MTB (13.5ns)
+	 * DDR3-1600H	90 MTB (11.25ns)
+	 */
+	pdimm->tRP_ps = spd->tRP_min * mtb_ps +
+		(spd->fine_tRP_min * ftb_10th_ps) / 10;
+
+	/* min active to precharge delay time
+	 * eg: tRAS_min =
+	 * DDR3-800D	300 MTB (37.5ns)
+	 * DDR3-1066F	300 MTB (37.5ns)
+	 * DDR3-1333H	288 MTB (36ns)
+	 * DDR3-1600H	280 MTB (35ns)
+	 */
+	pdimm->tRAS_ps = (((spd->tRAS_tRC_ext & 0xf) << 8) | spd->tRAS_min_lsb)
+			* mtb_ps;
+	/*
+	 * min active to actice/refresh delay time
+	 * eg: tRC_min =
+	 * DDR3-800D	400 MTB (50ns)
+	 * DDR3-1066F	405 MTB (50.625ns)
+	 * DDR3-1333H	396 MTB (49.5ns)
+	 * DDR3-1600H	370 MTB (46.25ns)
+	 */
+	pdimm->tRC_ps = (((spd->tRAS_tRC_ext & 0xf0) << 4) | spd->tRC_min_lsb)
+			* mtb_ps + (spd->fine_tRC_min * ftb_10th_ps) / 10;
+	/*
+	 * min refresh recovery delay time
+	 * eg: tRFC_min =
+	 * 512Mb	720 MTB (90ns)
+	 * 1Gb		880 MTB (110ns)
+	 * 2Gb		1280 MTB (160ns)
+	 */
+	pdimm->tRFC_ps = ((spd->tRFC_min_msb << 8) | spd->tRFC_min_lsb)
+			* mtb_ps;
+	/*
+	 * min internal write to read command delay time
+	 * eg: tWTR_min = 40 MTB (7.5ns) - all speed bins.
+	 * tWRT is at least 4 mclk independent of operating freq.
+	 */
+	pdimm->tWTR_ps = spd->tWTR_min * mtb_ps;
+
+	/*
+	 * min internal read to precharge command delay time
+	 * eg: tRTP_min = 40 MTB (7.5ns) - all speed bins.
+	 * tRTP is at least 4 mclk independent of operating freq.
+	 */
+	pdimm->tRTP_ps = spd->tRTP_min * mtb_ps;
+
+	/*
+	 * Average periodic refresh interval
+	 * tREFI = 7.8 us at normal temperature range
+	 *       = 3.9 us at ext temperature range
+	 */
+	pdimm->refresh_rate_ps = 7800000;
+
+	/*
+	 * min four active window delay time
+	 * eg: tFAW_min =
+	 * DDR3-800(1KB page)	320 MTB (40ns)
+	 * DDR3-1066(1KB page)	300 MTB (37.5ns)
+	 * DDR3-1333(1KB page)	240 MTB (30ns)
+	 * DDR3-1600(1KB page)	240 MTB (30ns)
+	 */
+	pdimm->tFAW_ps = (((spd->tFAW_msb & 0xf) << 8) | spd->tFAW_min)
+			* mtb_ps;
+
+	return 0;
+}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
