Delivery-date: Tue, 09 Jan 2024 10:20:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8Hi-00A6Gx-09
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 10:20:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8Hh-0001sp-0S
	for lore@pengutronix.de; Tue, 09 Jan 2024 10:20:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UgGR34tm8s6+mTUbH6/WMQRWnyz4YbJff9JggaoVSiQ=; b=k9O+/qmvx7Pn3NI4m441YiGpaE
	jxHd5JnSwbHMZKqIKBdd19qqH21oFZx7/fhs52TYltYxxQYHKiciNh6/yKGWUsz6lu+yeX9wkTo5B
	oUf7lQl1E5iB5igYJ7pH6UV9WOrcU1eIOKlUoseNt96Drnkr4tDDEAUhZLtn9+c0VsuSAKZkKzfIN
	7Qju9mesrCT00Ju86WOYaKLuWoHsR7kPjaDwuysUdtBUH8nAs1YI0C2gpuv+anCNuQIIm3McJJmNM
	zirCG/ukWRedexwzSBL7OVxkatZIf0biKhxOs2KSsut7u2qeDu/356MoNpIkin0mMhl0c7gUPQRyB
	X8r8fncA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8Db-007SNU-0y;
	Tue, 09 Jan 2024 09:16:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8DS-007SIj-0e
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 09:16:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8DP-0000Ok-0R; Tue, 09 Jan 2024 10:16:07 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8DO-001RWV-GF; Tue, 09 Jan 2024 10:16:06 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8DO-001A8l-1N;
	Tue, 09 Jan 2024 10:16:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 10:15:54 +0100
Message-Id: <20240109091603.235589-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109091603.235589-1-s.hauer@pengutronix.de>
References: <20240109091603.235589-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_011610_393451_05EB84AF 
X-CRM114-Status: GOOD (  19.83  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/10] ARM: Layerscape: consolidate initcalls into one
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For Layerscape we have multiple initcalls in the arch directory.
Consolidate these into one initcall which detects the SoC type once
and calls the appropriate init functions. This makes it easier to
add future init steps and also we reduce the number of string
comparisons.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/boot.c              | 13 ++--
 arch/arm/mach-layerscape/icid.c              |  9 +--
 arch/arm/mach-layerscape/ls102xa_stream_id.c |  8 +-
 arch/arm/mach-layerscape/pblimage.c          |  6 +-
 arch/arm/mach-layerscape/restart.c           |  8 +-
 arch/arm/mach-layerscape/soc.c               | 77 ++++++++++++++++++++
 include/mach/layerscape/layerscape.h         | 11 +++
 7 files changed, 100 insertions(+), 32 deletions(-)

diff --git a/arch/arm/mach-layerscape/boot.c b/arch/arm/mach-layerscape/boot.c
index da61763bd5..26a7a1434a 100644
--- a/arch/arm/mach-layerscape/boot.c
+++ b/arch/arm/mach-layerscape/boot.c
@@ -32,13 +32,12 @@ enum bootsource ls1021a_bootsource_get(void)
 	return ls1046a_bootsource_get();
 }
 
-static int layerscape_bootsource_init(void)
+void ls1021a_bootsource_init(void)
 {
-	if (of_machine_is_compatible("fsl,ls1046a"))
-		bootsource_set_raw(ls1046a_bootsource_get(), BOOTSOURCE_INSTANCE_UNKNOWN);
-	if (of_machine_is_compatible("fsl,ls1021a"))
-		bootsource_set_raw(ls1021a_bootsource_get(), BOOTSOURCE_INSTANCE_UNKNOWN);
+	bootsource_set_raw(ls1021a_bootsource_get(), BOOTSOURCE_INSTANCE_UNKNOWN);
+}
 
-	return 0;
+void ls1046a_bootsource_init(void)
+{
+	bootsource_set_raw(ls1046a_bootsource_get(), BOOTSOURCE_INSTANCE_UNKNOWN);
 }
-coredevice_initcall(layerscape_bootsource_init);
diff --git a/arch/arm/mach-layerscape/icid.c b/arch/arm/mach-layerscape/icid.c
index d1d623416a..f5188fc91e 100644
--- a/arch/arm/mach-layerscape/icid.c
+++ b/arch/arm/mach-layerscape/icid.c
@@ -7,6 +7,7 @@
 #include <soc/fsl/immap_lsch2.h>
 #include <soc/fsl/fsl_qbman.h>
 #include <soc/fsl/fsl_fman.h>
+#include <mach/layerscape/layerscape.h>
 
 /*
  * Stream IDs on Chassis-2 (for example ls1043a, ls1046a, ls1012) devices
@@ -530,14 +531,11 @@ static int icid_of_fixup(struct device_node *root, void *context)
 	return 0;
 }
 
-static int layerscape_setup_icids(void)
+void ls1046a_setup_icids(void)
 {
 	int i;
 	struct ccsr_fman *fm = (void *)LSCH2_FM1_ADDR;
 
-	if (!of_machine_is_compatible("fsl,ls1046a"))
-		return 0;
-
 	/* setup general icid offsets */
 	for (i = 0; i < ARRAY_SIZE(icid_tbl_ls1046a); i++) {
 		struct icid_id_table *icid = &icid_tbl_ls1046a[i];
@@ -556,7 +554,4 @@ static int layerscape_setup_icids(void)
 	setup_qbman_portals();
 
 	of_register_fixup(icid_of_fixup, NULL);
-
-	return 0;
 }
-coredevice_initcall(layerscape_setup_icids);
diff --git a/arch/arm/mach-layerscape/ls102xa_stream_id.c b/arch/arm/mach-layerscape/ls102xa_stream_id.c
index c47c463b48..60723ce2e7 100644
--- a/arch/arm/mach-layerscape/ls102xa_stream_id.c
+++ b/arch/arm/mach-layerscape/ls102xa_stream_id.c
@@ -43,13 +43,7 @@ ls102xa_config_smmu_stream_id(struct smmu_stream_id *id, uint32_t num)
 	}
 }
 
-static int ls102xa_smmu_stream_id_init(void)
+void ls102xa_smmu_stream_id_init(void)
 {
-	if (!of_machine_is_compatible("fsl,ls1021a"))
-		return 0;
-
 	ls102xa_config_smmu_stream_id(dev_stream_id, ARRAY_SIZE(dev_stream_id));
-
-	return 0;
 }
-mmu_initcall(ls102xa_smmu_stream_id_init);
diff --git a/arch/arm/mach-layerscape/pblimage.c b/arch/arm/mach-layerscape/pblimage.c
index 26345af276..5a525f0933 100644
--- a/arch/arm/mach-layerscape/pblimage.c
+++ b/arch/arm/mach-layerscape/pblimage.c
@@ -7,6 +7,7 @@
 #include <init.h>
 #include <memory.h>
 #include <linux/sizes.h>
+#include <mach/layerscape/layerscape.h>
 
 #define BAREBOX_STAGE2_OFFSET	SZ_128K
 
@@ -50,11 +51,8 @@ static struct image_handler image_handler_layerscape_qspi_pbl_image = {
 	.filetype = filetype_layerscape_qspi_image,
 };
 
-static int layerscape_register_pbl_image_handler(void)
+void layerscape_register_pbl_image_handler(void)
 {
 	register_image_handler(&image_handler_layerscape_pbl_image);
 	register_image_handler(&image_handler_layerscape_qspi_pbl_image);
-
-	return 0;
 }
-late_initcall(layerscape_register_pbl_image_handler);
diff --git a/arch/arm/mach-layerscape/restart.c b/arch/arm/mach-layerscape/restart.c
index e8bd041ebf..a6daa9b677 100644
--- a/arch/arm/mach-layerscape/restart.c
+++ b/arch/arm/mach-layerscape/restart.c
@@ -18,13 +18,7 @@ static void ls102xa_restart(struct restart_handler *rst)
 	hang();
 }
 
-static int restart_register_feature(void)
+void ls1021a_restart_register_feature(void)
 {
-	if (!of_machine_is_compatible("fsl,ls1021a"))
-		return 0;
-
 	restart_handler_register_fn("soc-reset", ls102xa_restart);
-
-	return 0;
 }
-coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-layerscape/soc.c b/arch/arm/mach-layerscape/soc.c
index 2d9a2b4629..4d4ef05d4b 100644
--- a/arch/arm/mach-layerscape/soc.c
+++ b/arch/arm/mach-layerscape/soc.c
@@ -1,7 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <soc/fsl/scfg.h>
 #include <io.h>
+#include <init.h>
+#include <memory.h>
 #include <linux/bug.h>
+#include <mach/layerscape/layerscape.h>
+#include <of.h>
 
 static enum scfg_endianess scfg_endianess = SCFG_ENDIANESS_INVALID;
 
@@ -54,3 +58,76 @@ void scfg_init(enum scfg_endianess endianess)
 {
 	scfg_endianess = endianess;
 }
+
+static int layerscape_soc_from_dt(void)
+{
+	if (of_machine_is_compatible("fsl,ls1021a"))
+		return LAYERSCAPE_SOC_LS1021A;
+	if (of_machine_is_compatible("fsl,ls1028a"))
+		return LAYERSCAPE_SOC_LS1028A;
+	if (of_machine_is_compatible("fsl,ls1046a"))
+		return LAYERSCAPE_SOC_LS1046A;
+
+	return 0;
+}
+
+static int ls1021a_init(void)
+{
+	if (!IS_ENABLED(CONFIG_ARCH_LS1021))
+		return -EINVAL;
+
+	ls1021a_bootsource_init();
+	ls102xa_smmu_stream_id_init();
+	layerscape_register_pbl_image_handler();
+	ls1021a_restart_register_feature();
+
+	return 0;
+}
+
+static int ls1028a_init(void)
+{
+	if (!IS_ENABLED(CONFIG_ARCH_LS1028))
+		return -EINVAL;
+
+	layerscape_register_pbl_image_handler();
+
+	return 0;
+}
+
+static int ls1046a_init(void)
+{
+	if (!IS_ENABLED(CONFIG_ARCH_LS1046))
+		return -EINVAL;
+
+	ls1046a_bootsource_init();
+	ls1046a_setup_icids();
+	layerscape_register_pbl_image_handler();
+
+	return 0;
+}
+
+static int __layerscape_soc_type;
+
+static int layerscape_init(void)
+{
+	struct device_node *root;
+
+	root = of_get_root_node();
+	if (root) {
+		__layerscape_soc_type = layerscape_soc_from_dt();
+		if (!__layerscape_soc_type)
+			return 0;
+	}
+
+	switch (__layerscape_soc_type) {
+	case LAYERSCAPE_SOC_LS1021A:
+		return ls1021a_init();
+	case LAYERSCAPE_SOC_LS1028A:
+		return ls1028a_init();
+	case LAYERSCAPE_SOC_LS1046A:
+		return ls1046a_init();
+	}
+
+	return 0;
+}
+postcore_initcall(layerscape_init);
diff --git a/include/mach/layerscape/layerscape.h b/include/mach/layerscape/layerscape.h
index ceb7b983f6..a048b7ef9e 100644
--- a/include/mach/layerscape/layerscape.h
+++ b/include/mach/layerscape/layerscape.h
@@ -19,6 +19,10 @@
 enum bootsource ls1046a_bootsource_get(void);
 enum bootsource ls1021a_bootsource_get(void);
 
+#define LAYERSCAPE_SOC_LS1021A		1021
+#define LAYERSCAPE_SOC_LS1028A		1028
+#define LAYERSCAPE_SOC_LS1046A		1046
+
 #ifdef CONFIG_ARCH_LAYERSCAPE_PPA
 int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size);
 #else
@@ -41,4 +45,11 @@ struct dram_regions_info {
         struct dram_region_info region[NUM_DRAM_REGIONS];
 };
 
+void ls1021a_bootsource_init(void);
+void ls1046a_bootsource_init(void);
+void layerscape_register_pbl_image_handler(void);
+void ls102xa_smmu_stream_id_init(void);
+void ls1021a_restart_register_feature(void);
+void ls1046a_setup_icids(void);
+
 #endif /* __MACH_LAYERSCAPE_H */
-- 
2.39.2



