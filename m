Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og110.obsmtp.com ([64.18.0.20])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrtcX-0002LN-Rg
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 17:35:08 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 26 Jun 2013 18:33:43 +0100
Message-Id: <1372268027-15271-5-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 4/8] ppc 8xxx: DIMM parameters calculation
To: barebox@lists.infradead.org

This code calculates the DIMM characteritics i.e DIMM
organization parameters and timings for DDR2 memory based on
SPD data.

It also provides a function to find out the lowest common DIMM
parameters to be used for all DIMMs.

This code is based on the equivalent files in directory
arch/powerpc/cpu/mpc8xxx/ddr from U-Boot version git-a71d45d.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/ddr-8xxx/ddr2_dimm_params.c      |  303 +++++++++++++++++++++++++++++
 arch/ppc/ddr-8xxx/lc_common_dimm_params.c |  214 ++++++++++++++++++++
 2 files changed, 517 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/ddr-8xxx/ddr2_dimm_params.c
 create mode 100644 arch/ppc/ddr-8xxx/lc_common_dimm_params.c

diff --git a/arch/ppc/ddr-8xxx/ddr2_dimm_params.c b/arch/ppc/ddr-8xxx/ddr2_dimm_params.c
new file mode 100644
index 0000000..b36a888
--- /dev/null
+++ b/arch/ppc/ddr-8xxx/ddr2_dimm_params.c
@@ -0,0 +1,303 @@
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
+#include "ddr.h"
+/*
+ * Calculate the Density of each Physical Rank.
+ * Returned size is in bytes.
+ *
+ * Table comes from Byte 31 of JEDEC SPD Spec.
+ *
+ *		DDR II
+ *	Bit	Size	Size
+ *	---	-----
+ *	7 high	512MB
+ *	6	256MB
+ *	5	128MB
+ *	4	 16GB
+ *	3	  8GB
+ *	2	  4GB
+ *	1	  2GB
+ *	0 low	  1GB
+ *
+ * Reorder Table to be linear by stripping the bottom
+ * 2 or 5 bits off and shifting them up to the top.
+ *
+ */
+static uint64_t compute_ranksize(uint32_t mem_type, unsigned char row_dens)
+{
+	uint64_t bsize;
+
+	bsize = ((row_dens >> 5) | ((row_dens & 31) << 3));
+	bsize <<= 27ULL;
+
+	return bsize;
+}
+
+/*
+ * Convert a two-nibble BCD value into a cycle time.
+ * While the spec calls for nano-seconds, picos are returned.
+ */
+static uint32_t convert_bcd_tenths_to_cycle_time_ps(uint32_t spd_val)
+{
+	uint32_t tenths_ps[16] = {
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
+		250,
+		330,
+		660,
+		750,
+		0,
+		0
+	};
+	uint32_t whole_ns = (spd_val & 0xF0) >> 4;
+	uint32_t tenth_ns = spd_val & 0x0F;
+	uint32_t ps = (whole_ns * 1000) + tenths_ps[tenth_ns];
+
+	return ps;
+}
+
+static uint32_t convert_bcd_hundredths_to_cycle_time_ps(uint32_t spd_val)
+{
+	uint32_t tenth_ns = (spd_val & 0xF0) >> 4;
+	uint32_t hundredth_ns = spd_val & 0x0F;
+	uint32_t ps = (tenth_ns * 100) + (hundredth_ns * 10);
+
+	return ps;
+}
+
+static uint32_t byte40_table_ps[8] = {
+	0,
+	250,
+	330,
+	500,
+	660,
+	750,
+	0,
+	0
+};
+
+static uint32_t
+compute_trfc_ps_from_spd(unsigned char trctrfc_ext, unsigned char trfc)
+{
+	uint32_t trfc_ps;
+
+	trfc_ps = (((trctrfc_ext & 0x1) * 256) + trfc) * 1000;
+	trfc_ps += byte40_table_ps[(trctrfc_ext >> 1) & 0x7];
+
+	return trfc_ps;
+}
+
+static uint32_t
+compute_trc_ps_from_spd(unsigned char trctrfc_ext, unsigned char trc)
+{
+	uint32_t trc_ps;
+
+	trc_ps = (trc * 1000);
+	trc_ps += byte40_table_ps[(trctrfc_ext >> 4) & 0x7];
+
+	return trc_ps;
+}
+
+/*
+ * Determine Refresh Rate.
+ * Table from SPD Spec, Byte 12, converted to picoseconds and
+ * filled in with "default" normal values.
+ */
+static uint32_t determine_refresh_rate_ps(const uint32_t spd_refresh)
+{
+	uint32_t refresh_time_ps[8] = {
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
+ * CAS latency given the DRAM clock period. The SPD only
+ * defines at most 3 CAS latencies. Typically the slower in
+ * frequency the DIMM runs at, the shorter its CAS latency can.
+ * be. If the DIMM is operating at a sufficiently low frequency,
+ * it may be able to run at a CAS latency shorter than the
+ * shortest SPD-defined CAS latency.
+ *
+ * If a CAS latency is not found, 0 is returned.
+ *
+ * Do this by finding in the standard speed table the longest
+ * tCKmin that doesn't exceed the value of mclk_ps (tCK).
+ *
+ * An assumption made is that the SDRAM device allows the
+ * CL to be programmed for a value that is lower than those
+ * advertised by the SPD. This is not always the case,
+ * as those modes not defined in the SPD are optional.
+ *
+ * CAS latency de-rating based upon values JEDEC Standard No. 79-2C
+ * Table 40, "DDR2 SDRAM standard speed bins and tCK, tRCD, tRP, tRAS,
+ * and tRC for corresponding bin"
+ *
+ * ordinal 2, ddr2_speed_bins[1] contains tCK for CL=3
+ * Not certain if any good value exists for CL=2
+ */
+			  /* CL2  CL3   CL4   CL5   CL6   CL7 */
+uint16_t ddr2_speed_bins[] = { 0, 5000, 3750, 3000, 2500, 1875 };
+
+uint32_t compute_derated_DDR2_CAS_latency(uint32_t mclk_ps)
+{
+	const uint32_t num_speed_bins = ARRAY_SIZE(ddr2_speed_bins);
+	uint32_t lowest_tCKmin_found = 0, lowest_tCKmin_CL = 0, i, x;
+
+	for (i = 0; i < num_speed_bins; i++) {
+		x = ddr2_speed_bins[i];
+		if (x && (x <= mclk_ps) && (x >= lowest_tCKmin_found)) {
+			lowest_tCKmin_found = x;
+			lowest_tCKmin_CL = i + 2;
+		}
+	}
+
+	return lowest_tCKmin_CL;
+}
+
+/*
+ * compute_dimm_parameters for DDR2 SPD
+ *
+ * Compute DIMM parameters based upon the SPD information in SPD.
+ * Writes the results to the dimm_params_s structure pointed by pdimm.
+ */
+uint32_t
+compute_dimm_parameters(const generic_spd_eeprom_t *spdin,
+		struct dimm_params_s *pdimm)
+{
+	const struct ddr2_spd_eeprom_s *spd = spdin;
+	uint32_t retval;
+
+	if (!spd->mem_type) {
+		memset(pdimm, 0, sizeof(struct dimm_params_s));
+		goto error;
+	}
+
+	if (spd->mem_type != SPD_MEMTYPE_DDR2)
+		goto error;
+
+	retval = ddr2_spd_checksum_pass(spd);
+	if (retval)
+		goto spd_err;
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
+		goto error;
+	}
+
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
+	    = convert_bcd_tenths_to_cycle_time_ps(spd->clk_cycle);
+	pdimm->tCKmin_X_minus_1_ps
+	    = convert_bcd_tenths_to_cycle_time_ps(spd->clk_cycle2);
+	pdimm->tCKmin_X_minus_2_ps
+	    = convert_bcd_tenths_to_cycle_time_ps(spd->clk_cycle3);
+	pdimm->tCKmax_ps = convert_bcd_tenths_to_cycle_time_ps(spd->tckmax);
+
+	/*
+	 * Compute CAS latencies defined by SPD
+	 * The SPD caslat_X should have at least 1 and at most 3 bits set.
+	 *
+	 * If cas_lat after masking is 0, the __ilog2 function returns
+	 * 255 into the variable. This behavior is abused once.
+	 */
+	pdimm->caslat_X = __ilog2(spd->cas_lat);
+	pdimm->caslat_X_minus_1 = __ilog2(spd->cas_lat
+					  & ~(1 << pdimm->caslat_X));
+	pdimm->caslat_X_minus_2 = __ilog2(spd->cas_lat & ~(1 << pdimm->caslat_X)
+					  & ~(1 << pdimm->caslat_X_minus_1));
+	pdimm->caslat_lowest_derated
+	    = compute_derated_DDR2_CAS_latency(get_memory_clk_period_ps());
+	pdimm->tRCD_ps = spd->trcd * 250;
+	pdimm->tRP_ps = spd->trp * 250;
+	pdimm->tRAS_ps = spd->tras * 1000;
+	pdimm->tWR_ps = spd->twr * 250;
+	pdimm->tWTR_ps = spd->twtr * 250;
+	pdimm->tRFC_ps = compute_trfc_ps_from_spd(spd->trctrfc_ext, spd->trfc);
+	pdimm->tRRD_ps = spd->trrd * 250;
+	pdimm->tRC_ps = compute_trc_ps_from_spd(spd->trctrfc_ext, spd->trc);
+	pdimm->refresh_rate_ps = determine_refresh_rate_ps(spd->refresh);
+	pdimm->tIS_ps = convert_bcd_hundredths_to_cycle_time_ps(spd->ca_setup);
+	pdimm->tIH_ps = convert_bcd_hundredths_to_cycle_time_ps(spd->ca_hold);
+	pdimm->tDS_ps
+	    = convert_bcd_hundredths_to_cycle_time_ps(spd->data_setup);
+	pdimm->tDH_ps = convert_bcd_hundredths_to_cycle_time_ps(spd->data_hold);
+	pdimm->tRTP_ps = spd->trtp * 250;
+	pdimm->tDQSQ_max_ps = spd->tdqsq * 10;
+	pdimm->tQHS_ps = spd->tqhs * 10;
+
+	return 0;
+error:
+	return 1;
+spd_err:
+	return 2;
+}
diff --git a/arch/ppc/ddr-8xxx/lc_common_dimm_params.c b/arch/ppc/ddr-8xxx/lc_common_dimm_params.c
new file mode 100644
index 0000000..a1addb0
--- /dev/null
+++ b/arch/ppc/ddr-8xxx/lc_common_dimm_params.c
@@ -0,0 +1,214 @@
+/*
+ * Copyright 2008-2012 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * Version 2 as published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <config.h>
+#include <asm/fsl_ddr_sdram.h>
+
+#include "ddr.h"
+
+static unsigned int common_burst_length(
+		const struct dimm_params_s *dimm_params,
+		const unsigned int number_of_dimms)
+{
+	unsigned int i, temp;
+
+	temp = 0xff;
+	for (i = 0; i < number_of_dimms; i++)
+		if (dimm_params[i].n_ranks)
+			temp &= dimm_params[i].burst_lengths_bitmask;
+
+	return temp;
+}
+
+/* Compute a CAS latency suitable for all DIMMs */
+static unsigned int compute_lowest_caslat(
+		const struct dimm_params_s *dimm_params,
+		const unsigned int number_of_dimms)
+{
+	uint32_t temp1, temp2, i, not_ok, lowest_good_caslat,
+		 tCKmin_X_minus_1_ps, tCKmin_X_minus_2_ps;
+	const unsigned int mclk_ps = get_memory_clk_period_ps();
+
+	/*
+	 * Step 1: find CAS latency common to all DIMMs using bitwise
+	 * operation.
+	 */
+	temp1 = 0xFF;
+	for (i = 0; i < number_of_dimms; i++)
+		if (dimm_params[i].n_ranks) {
+			temp2 = 0;
+			temp2 |= 1 << dimm_params[i].caslat_X;
+			temp2 |= 1 << dimm_params[i].caslat_X_minus_1;
+			temp2 |= 1 << dimm_params[i].caslat_X_minus_2;
+			/*
+			 * FIXME: If there was no entry for X-2 (X-1) in
+			 * the SPD, then caslat_X_minus_2
+			 * (caslat_X_minus_1) contains either 255 or
+			 * 0xFFFFFFFF because that's what the __ilog2
+			 * function returns for an input of 0.
+			 * On 32-bit PowerPC, left shift counts with bit
+			 * 26 set (that the value of 255 or 0xFFFFFFFF
+			 * will have), cause the destination register to
+			 * be 0. That is why this works.
+			 */
+			temp1 &= temp2;
+		}
+
+	/*
+	 * Step 2: check each common CAS latency against tCK of each
+	 * DIMM's SPD.
+	 */
+	lowest_good_caslat = 0;
+	temp2 = 0;
+	while (temp1) {
+		not_ok = 0;
+		temp2 = __ilog2(temp1);
+
+		for (i = 0; i < number_of_dimms; i++) {
+			if (!dimm_params[i].n_ranks)
+				continue;
+
+			if (dimm_params[i].caslat_X == temp2) {
+				if (mclk_ps >= dimm_params[i].tCKmin_X_ps)
+					continue;
+				else
+					not_ok++;
+			}
+
+			if (dimm_params[i].caslat_X_minus_1 == temp2) {
+				tCKmin_X_minus_1_ps =
+					dimm_params[i].tCKmin_X_minus_1_ps;
+				if (mclk_ps >= tCKmin_X_minus_1_ps)
+					continue;
+				else
+					not_ok++;
+			}
+
+			if (dimm_params[i].caslat_X_minus_2 == temp2) {
+				tCKmin_X_minus_2_ps
+					= dimm_params[i].tCKmin_X_minus_2_ps;
+				if (mclk_ps >= tCKmin_X_minus_2_ps)
+					continue;
+				else
+					not_ok++;
+			}
+		}
+
+		if (!not_ok)
+			lowest_good_caslat = temp2;
+
+		temp1 &= ~(1 << temp2);
+	}
+	return lowest_good_caslat;
+}
+
+/*
+ * compute_lowest_common_dimm_parameters()
+ *
+ * Determine the worst-case DIMM timing parameters from the set of DIMMs
+ * whose parameters have been computed into the array pointed to
+ * by dimm_params.
+ */
+unsigned int
+compute_lowest_common_dimm_parameters(const struct dimm_params_s *dimm,
+				      struct common_timing_params_s *out,
+				      const unsigned int number_of_dimms)
+{
+	const uint32_t mclk_ps = get_memory_clk_period_ps();
+	uint32_t temp1, i;
+	struct common_timing_params_s tmp = {0};
+
+	tmp.tCKmax_ps = 0xFFFFFFFF;
+	temp1 = 0;
+	for (i = 0; i < number_of_dimms; i++) {
+		if (dimm[i].n_ranks == 0) {
+			temp1++;
+			continue;
+		}
+
+		/*
+		 * Find minimum tCKmax_ps to find fastest slow speed,
+		 * i.e., this is the slowest the whole system can go.
+		 */
+		tmp.tCKmax_ps = min(tmp.tCKmax_ps, dimm[i].tCKmax_ps);
+
+		/* Find maximum value to determine slowest speed, delay, etc */
+		tmp.tCKmin_X_ps = max(tmp.tCKmin_X_ps, dimm[i].tCKmin_X_ps);
+		tmp.tCKmax_max_ps = max(tmp.tCKmax_max_ps, dimm[i].tCKmax_ps);
+		tmp.tRCD_ps = max(tmp.tRCD_ps, dimm[i].tRCD_ps);
+		tmp.tRP_ps = max(tmp.tRP_ps, dimm[i].tRP_ps);
+		tmp.tRAS_ps = max(tmp.tRAS_ps, dimm[i].tRAS_ps);
+		tmp.tWR_ps = max(tmp.tWR_ps, dimm[i].tWR_ps);
+		tmp.tWTR_ps = max(tmp.tWTR_ps, dimm[i].tWTR_ps);
+		tmp.tRFC_ps = max(tmp.tRFC_ps, dimm[i].tRFC_ps);
+		tmp.tRRD_ps = max(tmp.tRRD_ps, dimm[i].tRRD_ps);
+		tmp.tRC_ps = max(tmp.tRC_ps, dimm[i].tRC_ps);
+		tmp.tIS_ps = max(tmp.tIS_ps, dimm[i].tIS_ps);
+		tmp.tIH_ps = max(tmp.tIH_ps, dimm[i].tIH_ps);
+		tmp.tDS_ps = max(tmp.tDS_ps, dimm[i].tDS_ps);
+		tmp.tDH_ps = max(tmp.tDH_ps, dimm[i].tDH_ps);
+		tmp.tRTP_ps = max(tmp.tRTP_ps, dimm[i].tRTP_ps);
+		tmp.tQHS_ps = max(tmp.tQHS_ps, dimm[i].tQHS_ps);
+		tmp.refresh_rate_ps = max(tmp.refresh_rate_ps,
+				dimm[i].refresh_rate_ps);
+		/* Find maximum tDQSQ_max_ps to find slowest timing. */
+		tmp.tDQSQ_max_ps = max(tmp.tDQSQ_max_ps, dimm[i].tDQSQ_max_ps);
+	}
+	tmp.ndimms_present = number_of_dimms - temp1;
+
+	if (temp1 == number_of_dimms)
+		return 0;
+
+	temp1 = common_burst_length(dimm, number_of_dimms);
+	tmp.all_DIMMs_burst_lengths_bitmask = temp1;
+	tmp.all_DIMMs_registered = 0;
+
+	tmp.lowest_common_SPD_caslat = compute_lowest_caslat(dimm,
+			number_of_dimms);
+	/*
+	 * Compute a common 'de-rated' CAS latency.
+	 *
+	 * The strategy here is to find the *highest* de-rated cas latency
+	 * with the assumption that all of the DIMMs will support a de-rated
+	 * CAS latency higher than or equal to their lowest de-rated value.
+	 */
+	temp1 = 0;
+	for (i = 0; i < number_of_dimms; i++)
+		temp1 = max(temp1, dimm[i].caslat_lowest_derated);
+	tmp.highest_common_derated_caslat = temp1;
+
+	temp1 = 1;
+	for (i = 0; i < number_of_dimms; i++)
+		if (dimm[i].n_ranks &&
+		    !(dimm[i].edc_config & EDC_ECC)) {
+			temp1 = 0;
+			break;
+		}
+	tmp.all_DIMMs_ECC_capable = temp1;
+
+	if (mclk_ps > tmp.tCKmax_max_ps)
+		return 1;
+
+	/*
+	 * AL must be less or equal to tRCD. Typically, AL would
+	 * be AL = tRCD - 1;
+	 *
+	 * When ODT read or write is enabled the sum of CAS latency +
+	 * additive latency must be at least 3 cycles.
+	 *
+	 */
+	if ((tmp.lowest_common_SPD_caslat < 4) && (picos_to_mclk(tmp.tRCD_ps) >
+				tmp.lowest_common_SPD_caslat))
+		tmp.additive_latency = picos_to_mclk(tmp.tRCD_ps) -
+			tmp.lowest_common_SPD_caslat;
+
+	memcpy(out, &tmp, sizeof(struct common_timing_params_s));
+
+	return 0;
+}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
