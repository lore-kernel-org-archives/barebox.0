Delivery-date: Sat, 21 Jan 2023 15:46:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJF8j-0012ke-SU
	for lore@lore.pengutronix.de; Sat, 21 Jan 2023 15:46:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJF8h-0000Lr-2d
	for lore@pengutronix.de; Sat, 21 Jan 2023 15:46:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OlKyNvT8K1xSCdN2fdFSXEBJvur8By4Sy8HwEEEK9XY=; b=sxzelKJOspZb/JjiYYf+wEL9iY
	UIfBW7lOLWCHfzBzAC5gi5yO1XFL7sHCgyWqaN6fJnGqIik9snFF2ZJ1T2shr8R7gOubit0ZD4U0n
	CLmL9ebhybERoa55ZqoVKHz7wsmybZUsCSZs+k1dZyN3PASw6/BeOoFRHV+BqR+E1Ck48BQD6gr8i
	ryUKpVUzNg3mpJa3f6zoJyGKXecxSheSY9H0jIVFh83pkhv5I15y//F8FySiwOy84qKsn7IZW7dSj
	ha62BoxxSK3evMTynZXvdvKYestbKlbDa5k4wSOD6E3rOjY+AfOP/A8HDOo0eSdtTqievN6KKQFGe
	s3E8hoGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJF75-00DyGu-U7; Sat, 21 Jan 2023 14:45:00 +0000
Received: from out0.migadu.com ([2001:41d0:2:267::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJF70-00DyFz-CH
	for barebox@lists.infradead.org; Sat, 21 Jan 2023 14:44:56 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674312292;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OlKyNvT8K1xSCdN2fdFSXEBJvur8By4Sy8HwEEEK9XY=;
	b=yzrJWN0AY5eM5lCtTNWSx99bXTV1XIFaGsK+RvLfqLavE9AWZQktBsq1LFDgMo7c0FUo43
	D+b/FWjybn9pSxFLHA5UlDWAfPF4h7mWO9cX4gLzNOywqNuowVJHB2pee6s2VbhQRf0Pl8
	8rV8BY3gf08QC6wiEtlIYMvJviR1WNaYlIDegIHJgUxR10rXUiFIa/4o9UWMqjB1oYyu8V
	QX9yHppo7Adcj0v8wc5VagRMx5VLOPivBuIEABmOeWqcJMISI1qM1K3546CEboDZEdilAZ
	zmGwphH7OqTo7i3U73VsYTbR+ozLZnwAEBivN6/3dz7FwspsYcERrEYuc0AoUg==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Sun, 22 Jan 2023 01:44:25 +1100
Message-Id: <20230121144429.3524905-4-contact@jookia.org>
In-Reply-To: <20230121144429.3524905-1-contact@jookia.org>
References: <20230121144429.3524905-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230121_064454_745635_74871ED1 
X-CRM114-Status: GOOD (  15.38  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/7] ddr_dimms: Move FSL dimm_params to include/ddr_dimms.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is in preparation for use for generic SPD calculations.

Signed-off-by: John Watts <contact@jookia.org>
---
 include/ddr_dimms.h             | 101 ++++++++++++++++++++++++++++++++
 include/soc/fsl/fsl_ddr_sdram.h |  92 +----------------------------
 2 files changed, 102 insertions(+), 91 deletions(-)
 create mode 100644 include/ddr_dimms.h

diff --git a/include/ddr_dimms.h b/include/ddr_dimms.h
new file mode 100644
index 0000000000..3ec6209ae1
--- /dev/null
+++ b/include/ddr_dimms.h
@@ -0,0 +1,101 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright 2008-2016 Freescale Semiconductor, Inc.
+ * Copyright 2017-2018 NXP Semiconductor
+ */
+
+#ifndef _DDR_DIMMS_H_
+#define _DDR_DIMMS_H_
+
+/* Parameters for a DDR dimm computed from the SPD */
+struct dimm_params {
+
+	/* DIMM organization parameters */
+	char mpart[19];		/* guaranteed null terminated */
+
+	unsigned int n_ranks;
+	unsigned int die_density;
+	unsigned long long rank_density;
+	unsigned long long capacity;
+	unsigned int data_width;
+	unsigned int primary_sdram_width;
+	unsigned int ec_sdram_width;
+	unsigned int registered_dimm;
+	unsigned int package_3ds;	/* number of dies in 3DS DIMM */
+	unsigned int device_width;	/* x4, x8, x16 components */
+
+	/* SDRAM device parameters */
+	unsigned int n_row_addr;
+	unsigned int n_col_addr;
+	unsigned int edc_config;	/* 0 = none, 1 = parity, 2 = ECC */
+	unsigned int bank_addr_bits; /* DDR4 */
+	unsigned int bank_group_bits; /* DDR4 */
+	unsigned int n_banks_per_sdram_device; /* !DDR4 */
+	unsigned int burst_lengths_bitmask;	/* BL=4 bit 2, BL=8 = bit 3 */
+
+	/* used in computing base address of DIMMs */
+	unsigned long long base_address;
+	/* mirrored DIMMs */
+	unsigned int mirrored_dimm;	/* only for ddr3 */
+
+	/* DIMM timing parameters */
+
+	int mtb_ps;	/* medium timebase ps */
+	int ftb_10th_ps; /* fine timebase, in 1/10 ps */
+	int taa_ps;	/* minimum CAS latency time */
+	int tfaw_ps;	/* four active window delay */
+
+	/*
+	 * SDRAM clock periods
+	 * The range for these are 1000-10000 so a short should be sufficient
+	 */
+	int tckmin_x_ps;
+	int tckmin_x_minus_1_ps;
+	int tckmin_x_minus_2_ps;
+	int tckmax_ps;
+
+	/* SPD-defined CAS latencies */
+	unsigned int caslat_x;
+	unsigned int caslat_x_minus_1;
+	unsigned int caslat_x_minus_2;
+
+	unsigned int caslat_lowest_derated;	/* Derated CAS latency */
+
+	/* basic timing parameters */
+	int trcd_ps;
+	int trp_ps;
+	int tras_ps;
+
+	int trfc1_ps; /* DDR4 */
+	int trfc2_ps; /* DDR4 */
+	int trfc4_ps; /* DDR4 */
+	int trrds_ps; /* DDR4 */
+	int trrdl_ps; /* DDR4 */
+	int tccdl_ps; /* DDR4 */
+	int trfc_slr_ps; /* DDR4 */
+	int twr_ps;	/* !DDR4, maximum = 63750 ps */
+	int trfc_ps;	/* max = 255 ns + 256 ns + .75 ns
+				       = 511750 ps */
+	int trrd_ps;	/* !DDR4, maximum = 63750 ps */
+	int twtr_ps;	/* !DDR4, maximum = 63750 ps */
+	int trtp_ps;	/* !DDR4, byte 38, spd->trtp */
+
+	int trc_ps;	/* maximum = 254 ns + .75 ns = 254750 ps */
+
+	int refresh_rate_ps;
+	int extended_op_srt;
+
+	int tis_ps;	/* DDR1, DDR2, byte 32, spd->ca_setup */
+	int tih_ps;	/* DDR1, DDR2, byte 33, spd->ca_hold */
+	int tds_ps;	/* DDR1, DDR2, byte 34, spd->data_setup */
+	int tdh_ps;	/* DDR1, DDR2, byte 35, spd->data_hold */
+	int tdqsq_max_ps;	/* DDR1, DDR2, byte 44, spd->tdqsq */
+	int tqhs_ps;	/* DDR1, DDR2, byte 45, spd->tqhs */
+
+	/* DDR3 & DDR4 RDIMM */
+	unsigned char rcw[16];	/* Register Control Word 0-15 */
+	unsigned int dq_mapping[18]; /* DDR4 */
+	unsigned int dq_mapping_ors; /* DDR4 */
+};
+
+#endif /* _DDR_DIMMS_H_ */
diff --git a/include/soc/fsl/fsl_ddr_sdram.h b/include/soc/fsl/fsl_ddr_sdram.h
index 80508ef5d5..23f0816599 100644
--- a/include/soc/fsl/fsl_ddr_sdram.h
+++ b/include/soc/fsl/fsl_ddr_sdram.h
@@ -8,6 +8,7 @@
 #define FSL_DDR_MEMCTL_H
 
 #include <ddr_spd.h>
+#include <ddr_dimms.h>
 #include <soc/fsl/fsl_immap.h>
 
 struct common_timing_params {
@@ -418,97 +419,6 @@ typedef struct memctl_options_s {
 #define EDC_ECC		2
 #define EDC_AC_PARITY	4
 
-/* Parameters for a DDR dimm computed from the SPD */
-struct dimm_params {
-
-	/* DIMM organization parameters */
-	char mpart[19];		/* guaranteed null terminated */
-
-	unsigned int n_ranks;
-	unsigned int die_density;
-	unsigned long long rank_density;
-	unsigned long long capacity;
-	unsigned int data_width;
-	unsigned int primary_sdram_width;
-	unsigned int ec_sdram_width;
-	unsigned int registered_dimm;
-	unsigned int package_3ds;	/* number of dies in 3DS DIMM */
-	unsigned int device_width;	/* x4, x8, x16 components */
-
-	/* SDRAM device parameters */
-	unsigned int n_row_addr;
-	unsigned int n_col_addr;
-	unsigned int edc_config;	/* 0 = none, 1 = parity, 2 = ECC */
-	unsigned int bank_addr_bits; /* DDR4 */
-	unsigned int bank_group_bits; /* DDR4 */
-	unsigned int n_banks_per_sdram_device; /* !DDR4 */
-	unsigned int burst_lengths_bitmask;	/* BL=4 bit 2, BL=8 = bit 3 */
-
-	/* used in computing base address of DIMMs */
-	unsigned long long base_address;
-	/* mirrored DIMMs */
-	unsigned int mirrored_dimm;	/* only for ddr3 */
-
-	/* DIMM timing parameters */
-
-	int mtb_ps;	/* medium timebase ps */
-	int ftb_10th_ps; /* fine timebase, in 1/10 ps */
-	int taa_ps;	/* minimum CAS latency time */
-	int tfaw_ps;	/* four active window delay */
-
-	/*
-	 * SDRAM clock periods
-	 * The range for these are 1000-10000 so a short should be sufficient
-	 */
-	int tckmin_x_ps;
-	int tckmin_x_minus_1_ps;
-	int tckmin_x_minus_2_ps;
-	int tckmax_ps;
-
-	/* SPD-defined CAS latencies */
-	unsigned int caslat_x;
-	unsigned int caslat_x_minus_1;
-	unsigned int caslat_x_minus_2;
-
-	unsigned int caslat_lowest_derated;	/* Derated CAS latency */
-
-	/* basic timing parameters */
-	int trcd_ps;
-	int trp_ps;
-	int tras_ps;
-
-	int trfc1_ps; /* DDR4 */
-	int trfc2_ps; /* DDR4 */
-	int trfc4_ps; /* DDR4 */
-	int trrds_ps; /* DDR4 */
-	int trrdl_ps; /* DDR4 */
-	int tccdl_ps; /* DDR4 */
-	int trfc_slr_ps; /* DDR4 */
-	int twr_ps;	/* !DDR4, maximum = 63750 ps */
-	int trfc_ps;	/* max = 255 ns + 256 ns + .75 ns
-				       = 511750 ps */
-	int trrd_ps;	/* !DDR4, maximum = 63750 ps */
-	int twtr_ps;	/* !DDR4, maximum = 63750 ps */
-	int trtp_ps;	/* !DDR4, byte 38, spd->trtp */
-
-	int trc_ps;	/* maximum = 254 ns + .75 ns = 254750 ps */
-
-	int refresh_rate_ps;
-	int extended_op_srt;
-
-	int tis_ps;	/* DDR1, DDR2, byte 32, spd->ca_setup */
-	int tih_ps;	/* DDR1, DDR2, byte 33, spd->ca_hold */
-	int tds_ps;	/* DDR1, DDR2, byte 34, spd->data_setup */
-	int tdh_ps;	/* DDR1, DDR2, byte 35, spd->data_hold */
-	int tdqsq_max_ps;	/* DDR1, DDR2, byte 44, spd->tdqsq */
-	int tqhs_ps;	/* DDR1, DDR2, byte 45, spd->tqhs */
-
-	/* DDR3 & DDR4 RDIMM */
-	unsigned char rcw[16];	/* Register Control Word 0-15 */
-	unsigned int dq_mapping[18]; /* DDR4 */
-	unsigned int dq_mapping_ors; /* DDR4 */
-};
-
 struct fsl_ddr_controller {
 	int num;
 	unsigned long ddr_freq;
-- 
2.39.0



