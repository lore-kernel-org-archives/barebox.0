Delivery-date: Sat, 21 Jan 2023 15:46:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJF8l-0012lI-HY
	for lore@lore.pengutronix.de; Sat, 21 Jan 2023 15:46:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJF8i-0000MT-QD
	for lore@pengutronix.de; Sat, 21 Jan 2023 15:46:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3i0K9UmiFL5A/q69pv1RmD5fQuoP/v4wF6r3BLE+eHI=; b=wmWggD2sCHGUpYczSo8NZ7qaZe
	PkQHgOpiVMosmC25FipQILiZ4U0l8OiHiRNwSLitIXaSkSsfszMMdFgHgSqZ8c0sWy2Xb2an7xWEL
	6bwV/grw26u+tSUCP5LzZk6WX6AR8qXeusiJMtpGBJR8x27eI7SWIvqTB3KkHHPMJWWCaICNnD/mP
	aBGeKIvyVVTSZKVXphSDfg8luCHxiZdgcCj9UBTFqyXHy6tUbB6R4z31hawFQY29McF+ef0hVakB2
	BcqISWZj17bYrNzbJ8NsbBfSjXfOsG+7nYUUsIhTozPgCELI8L7dldWbFfF6CyUND/Qi7q61FM35P
	+0Pfa/5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJF7H-00DyMn-HQ; Sat, 21 Jan 2023 14:45:11 +0000
Received: from out0.migadu.com ([2001:41d0:2:267::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJF7C-00DyKp-5I
	for barebox@lists.infradead.org; Sat, 21 Jan 2023 14:45:07 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674312304;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3i0K9UmiFL5A/q69pv1RmD5fQuoP/v4wF6r3BLE+eHI=;
	b=oj2APTyvk0NV+QFo2Z2CWVIcegvaaedgGgMUJ3Sk/mKhB/7zAvWzyUFqCV4LP9Fvpcnkf8
	WPZC6JMrQ63sAEkvf3b4aZqgaDaZGBNgJeyXGC9rLl0p9oe4niQez/Pwu45YSlG/t/wPUH
	InHF+Axl6t5rCP7+5UxXTwlWnO6JzcGP+cx2iduSBBQ1ioqFWaZ/bPsau/eJAqIZ5Vw0K3
	wI7D02Ex83wGxTWbtmzJhrxAWIYyFn0QqVVh1WlojiYqhONKBMDbDBlYxPbb3vka2AuinT
	AXjAVab5qJbaRTV5feSk7pJ8W71ngMdYCz7AkDlhdOED3g3V3Uzyr3qcGHF2Tw==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Sun, 22 Jan 2023 01:44:27 +1100
Message-Id: <20230121144429.3524905-6-contact@jookia.org>
In-Reply-To: <20230121144429.3524905-1-contact@jookia.org>
References: <20230121144429.3524905-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230121_064506_530854_FEE38D5E 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 5/7] ddr_dimms: Move ddr*_dimm_params to common
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This code is no longer specific to the any board.

Signed-off-by: John Watts <contact@jookia.org>
---
 common/Makefile                                |  4 ++++
 {drivers/ddr/fsl => common}/ddr1_dimm_params.c |  0
 {drivers/ddr/fsl => common}/ddr2_dimm_params.c |  0
 {drivers/ddr/fsl => common}/ddr3_dimm_params.c |  0
 {drivers/ddr/fsl => common}/ddr4_dimm_params.c |  0
 drivers/ddr/fsl/Makefile                       |  4 ----
 drivers/ddr/fsl/fsl_ddr.h                      | 12 ------------
 include/ddr_dimms.h                            | 13 +++++++++++++
 8 files changed, 17 insertions(+), 16 deletions(-)
 rename {drivers/ddr/fsl => common}/ddr1_dimm_params.c (100%)
 rename {drivers/ddr/fsl => common}/ddr2_dimm_params.c (100%)
 rename {drivers/ddr/fsl => common}/ddr3_dimm_params.c (100%)
 rename {drivers/ddr/fsl => common}/ddr4_dimm_params.c (100%)

diff --git a/common/Makefile b/common/Makefile
index 25f5653f90..7131f15cc8 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -33,6 +33,10 @@ obj-$(CONFIG_CONSOLE_FULL)	+= console.o
 obj-$(CONFIG_CONSOLE_SIMPLE)	+= console_simple.o
 obj-y				+= console_countdown.o
 obj-pbl-$(CONFIG_DDR_SPD)	+= ddr_spd.o
+obj-pbl-$(CONFIG_DDR_SPD)	+= ddr1_dimm_params.o
+obj-pbl-$(CONFIG_DDR_SPD)	+= ddr2_dimm_params.o
+obj-pbl-$(CONFIG_DDR_SPD)	+= ddr3_dimm_params.o
+obj-pbl-$(CONFIG_DDR_SPD)	+= ddr4_dimm_params.o
 obj-$(CONFIG_ENV_HANDLING)	+= environment.o envfs-core.o
 obj-$(CONFIG_DEFAULT_ENVIRONMENT) += envfs-core.o
 obj-$(CONFIG_ENVIRONMENT_VARIABLES) += env.o
diff --git a/drivers/ddr/fsl/ddr1_dimm_params.c b/common/ddr1_dimm_params.c
similarity index 100%
rename from drivers/ddr/fsl/ddr1_dimm_params.c
rename to common/ddr1_dimm_params.c
diff --git a/drivers/ddr/fsl/ddr2_dimm_params.c b/common/ddr2_dimm_params.c
similarity index 100%
rename from drivers/ddr/fsl/ddr2_dimm_params.c
rename to common/ddr2_dimm_params.c
diff --git a/drivers/ddr/fsl/ddr3_dimm_params.c b/common/ddr3_dimm_params.c
similarity index 100%
rename from drivers/ddr/fsl/ddr3_dimm_params.c
rename to common/ddr3_dimm_params.c
diff --git a/drivers/ddr/fsl/ddr4_dimm_params.c b/common/ddr4_dimm_params.c
similarity index 100%
rename from drivers/ddr/fsl/ddr4_dimm_params.c
rename to common/ddr4_dimm_params.c
diff --git a/drivers/ddr/fsl/Makefile b/drivers/ddr/fsl/Makefile
index 394ae55383..787b4453f3 100644
--- a/drivers/ddr/fsl/Makefile
+++ b/drivers/ddr/fsl/Makefile
@@ -4,9 +4,5 @@
 
 pbl-y += main.o util.o ctrl_regs.o options.o lc_common_dimm_params.o
 
-pbl-y += ddr1_dimm_params.o
-pbl-y += ddr2_dimm_params.o
-pbl-y += ddr3_dimm_params.o
-pbl-y += ddr4_dimm_params.o
 obj-y += arm_ddr_gen3.o
 pbl-y += fsl_ddr_gen4.o
diff --git a/drivers/ddr/fsl/fsl_ddr.h b/drivers/ddr/fsl/fsl_ddr.h
index 87edd10ac1..e95cea1657 100644
--- a/drivers/ddr/fsl/fsl_ddr.h
+++ b/drivers/ddr/fsl/fsl_ddr.h
@@ -204,18 +204,6 @@ struct fsl_ddr_controller;
 
 u32 fsl_ddr_get_version(struct fsl_ddr_controller *c);
 
-unsigned int ddr1_compute_dimm_parameters(unsigned int mclk_ps,
-					  const struct ddr1_spd_eeprom *spd,
-					  struct dimm_params *pdimm);
-unsigned int ddr2_compute_dimm_parameters(unsigned int mclk_ps,
-					  const struct ddr2_spd_eeprom *spd,
-					  struct dimm_params *pdimm);
-unsigned int ddr3_compute_dimm_parameters(unsigned int mclk_ps,
-					  const struct ddr3_spd_eeprom *spd,
-					  struct dimm_params *pdimm);
-unsigned int ddr4_compute_dimm_parameters(unsigned int mclk_ps,
-					  const struct ddr4_spd_eeprom *spd,
-					  struct dimm_params *pdimm);
 void fsl_ddr_set_intl3r(const unsigned int granule_size);
 
 unsigned int compute_fsl_memctl_config_regs(struct fsl_ddr_controller *c);
diff --git a/include/ddr_dimms.h b/include/ddr_dimms.h
index ea5ec85b82..f44c46447a 100644
--- a/include/ddr_dimms.h
+++ b/include/ddr_dimms.h
@@ -100,4 +100,17 @@ struct dimm_params {
 	unsigned int dq_mapping_ors; /* DDR4 */
 };
 
+unsigned int ddr1_compute_dimm_parameters(unsigned int mclk_ps,
+					  const struct ddr1_spd_eeprom *spd,
+					  struct dimm_params *pdimm);
+unsigned int ddr2_compute_dimm_parameters(unsigned int mclk_ps,
+					  const struct ddr2_spd_eeprom *spd,
+					  struct dimm_params *pdimm);
+unsigned int ddr3_compute_dimm_parameters(unsigned int mclk_ps,
+					  const struct ddr3_spd_eeprom *spd,
+					  struct dimm_params *pdimm);
+unsigned int ddr4_compute_dimm_parameters(unsigned int mclk_ps,
+					  const struct ddr4_spd_eeprom *spd,
+					  struct dimm_params *pdimm);
+
 #endif /* _DDR_DIMMS_H_ */
-- 
2.39.0



