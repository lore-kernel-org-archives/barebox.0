Delivery-date: Tue, 09 Jan 2024 17:17:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmm-00AUJo-1h
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 17:17:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmj-0000PP-Cx
	for lore@pengutronix.de; Tue, 09 Jan 2024 17:17:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8lTpIHqVkH/s5Y10jfUtU8M4uIYMxYgiU7qP7XZzHAM=; b=VkNsnKr731TFki8VdQymoTiLkr
	HZyfoOl/viK+tGGsdOH0Z064+/iZxNwd0Nxw/ouEplhWVXDTzjfPVypytJFt1l7ZPeZyOmGssXEHv
	iCUUW6kx1QHql/vB0wpxJ0D14rnZfXXH/uW3cgz/JppkqvgfLMIDDkQqnEqmQ9NOYC3Ng0xBu2+mn
	IBVJZ/HI1TQkEJszq4CUF2uE3eZ4bQprKDRFrXsKnh5eSX36s9MRQel4eeYAK0D/f4mEkuGnLRVlL
	FR7slyjjTRAHSmbVmTZU5vHR9y/XV/pt55ZtS/ZFnvs0/y4ki8clu1YR/2ECNiHEA14xgK9owQ6nP
	3maMAkJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElY-008nsz-0O;
	Tue, 09 Jan 2024 16:15:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElJ-008nik-2B
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 16:15:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElF-0007l4-0H; Tue, 09 Jan 2024 17:15:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-001WCK-Fi; Tue, 09 Jan 2024 17:15:28 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-00E7PI-1N;
	Tue, 09 Jan 2024 17:15:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 17:15:08 +0100
Message-Id: <20240109161527.3237581-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109161527.3237581-1-s.hauer@pengutronix.de>
References: <20240109161527.3237581-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_081533_924200_41EB14AD 
X-CRM114-Status: GOOD (  20.02  )
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
Subject: [PATCH v2 02/21] ARM: Layerscape: consolidate initcalls into one
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For Layerscape we have multiple initcalls in the arch directory.
Consolidate these into one initcall which detects the SoC type once
and calls the appropriate init functions. This makes it easier to
add future init steps and also we reduce the number of string
comparisons.
For added value also cpu_is_ls10xx() functions are added which might
become in handy later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/boot.c              | 13 ++--
 arch/arm/mach-layerscape/icid.c              |  9 +--
 arch/arm/mach-layerscape/ls102xa_stream_id.c |  8 +-
 arch/arm/mach-layerscape/pblimage.c          |  6 +-
 arch/arm/mach-layerscape/restart.c           |  8 +-
 arch/arm/mach-layerscape/soc.c               | 77 ++++++++++++++++++++
 include/mach/layerscape/layerscape.h         | 31 ++++++++
 7 files changed, 120 insertions(+), 32 deletions(-)

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
index 2d9a2b4629..b4c9dd5828 100644
--- a/arch/arm/mach-layerscape/soc.c
+++ b/arch/arm/mach-layerscape/soc.c
@@ -1,7 +1,13 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <soc/fsl/scfg.h>
 #include <io.h>
+#include <init.h>
+#include <memory.h>
 #include <linux/bug.h>
+#include <mach/layerscape/layerscape.h>
+#include <of.h>
+
+int __layerscape_soc_type;
 
 static enum scfg_endianess scfg_endianess = SCFG_ENDIANESS_INVALID;
 
@@ -54,3 +60,74 @@ void scfg_init(enum scfg_endianess endianess)
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
+	if (!cpu_is_ls1021a())
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
+	if (!cpu_is_ls1028a())
+		return -EINVAL;
+
+	layerscape_register_pbl_image_handler();
+
+	return 0;
+}
+
+static int ls1046a_init(void)
+{
+	if (!cpu_is_ls1046a())
+		return -EINVAL;
+
+	ls1046a_bootsource_init();
+	ls1046a_setup_icids();
+	layerscape_register_pbl_image_handler();
+
+	return 0;
+}
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
index ceb7b983f6..ca1710d7bc 100644
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
@@ -41,4 +45,31 @@ struct dram_regions_info {
         struct dram_region_info region[NUM_DRAM_REGIONS];
 };
 
+void ls1021a_bootsource_init(void);
+void ls1046a_bootsource_init(void);
+void layerscape_register_pbl_image_handler(void);
+void ls102xa_smmu_stream_id_init(void);
+void ls1021a_restart_register_feature(void);
+void ls1046a_setup_icids(void);
+
+extern int __layerscape_soc_type;
+
+static inline bool cpu_is_ls1021a(void)
+{
+	return IS_ENABLED(CONFIG_ARCH_LS1021) &&
+		__layerscape_soc_type == LAYERSCAPE_SOC_LS1021A;
+}
+
+static inline bool cpu_is_ls1028a(void)
+{
+	return IS_ENABLED(CONFIG_ARCH_LS1028) &&
+		__layerscape_soc_type == LAYERSCAPE_SOC_LS1028A;
+}
+
+static inline bool cpu_is_ls1046a(void)
+{
+	return IS_ENABLED(CONFIG_ARCH_LS1046) &&
+		__layerscape_soc_type == LAYERSCAPE_SOC_LS1046A;
+}
+
 #endif /* __MACH_LAYERSCAPE_H */
-- 
2.39.2



