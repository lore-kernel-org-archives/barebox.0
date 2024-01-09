Delivery-date: Tue, 09 Jan 2024 17:17:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmm-00AUKB-2q
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 17:17:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEml-0000RE-98
	for lore@pengutronix.de; Tue, 09 Jan 2024 17:17:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xESDzEDKYIy6/ogY1eSAQO+zYK2YqGa078bKDhl20m8=; b=PhDP7RXRnv3pgKD8hpmDmRuvgT
	6RyjEqK46XZVnjZRblrpF+xPYh42Bi6yDnTGycCKX5m/h0shisIru7id+pYJMtZPK8wFv8b7YG1TM
	dx8jIiAQKyGS2xN0/YSr3lB3b2vWjRksszC33uBDuvxwKyDFaqaJHx5dAkFgwbnT/mXvDpKXomgjk
	dmgrA04pwKY8r+yS/UB4QqbbhPq9/8bHGGbEI/UmFr5TrzGL6QfaEnAWymzzEJpNJHvF0oAQf3m8V
	BBGpqZ9eh/fs8KwpnQ7dfsY76zREh4o+CGV+bBArpIBqTUjANTMUQm9oQkhrH1E7skn2aXnpAxMYm
	R0peGV1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElT-008nrB-2y;
	Tue, 09 Jan 2024 16:15:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElJ-008nij-2B
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 16:15:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElF-0007l5-13; Tue, 09 Jan 2024 17:15:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-001WCL-GT; Tue, 09 Jan 2024 17:15:28 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-00E7PS-1R;
	Tue, 09 Jan 2024 17:15:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 17:15:09 +0100
Message-Id: <20240109161527.3237581-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109161527.3237581-1-s.hauer@pengutronix.de>
References: <20240109161527.3237581-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_081533_728740_6311A1A4 
X-CRM114-Status: GOOD (  15.39  )
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
Subject: [PATCH v2 03/21] ARM: Layerscape: LS1028a: reserve DDR region for TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On LS1028a the TF-A is placed in DDR, so we have to reserve the region
in order to keep Linux away from it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/soc.c       | 22 ++++++++++++++++++++++
 drivers/mci/imx-esdhc-pbl.c          |  3 ++-
 include/mach/layerscape/layerscape.h |  8 ++++++++
 3 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-layerscape/soc.c b/arch/arm/mach-layerscape/soc.c
index b4c9dd5828..8507a66ff6 100644
--- a/arch/arm/mach-layerscape/soc.c
+++ b/arch/arm/mach-layerscape/soc.c
@@ -4,6 +4,7 @@
 #include <init.h>
 #include <memory.h>
 #include <linux/bug.h>
+#include <linux/printk.h>
 #include <mach/layerscape/layerscape.h>
 #include <of.h>
 
@@ -96,6 +97,27 @@ static int ls1028a_init(void)
 	return 0;
 }
 
+static int ls1028a_reserve_tfa(void)
+{
+	resource_size_t tfa_start = LS1028A_TFA_RESERVED_START;
+	resource_size_t tfa_size = LS1028A_TFA_RESERVED_SIZE;
+	struct resource *res;
+
+	if (!cpu_is_ls1028a())
+		return 0;
+
+	res = reserve_sdram_region("tfa", tfa_start, tfa_size);
+	if (!res) {
+		pr_err("Cannot request SDRAM region %pa - %pa\n", &tfa_start, &tfa_size);
+                return -EINVAL;
+	}
+
+	of_register_fixup(of_fixup_reserved_memory, res);
+
+	return 0;
+}
+mmu_initcall(ls1028a_reserve_tfa);
+
 static int ls1046a_init(void)
 {
 	if (!cpu_is_ls1046a())
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 2c74d101e4..2d071eaca8 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -21,6 +21,7 @@
 #endif
 #ifdef CONFIG_ARCH_LAYERSCAPE
 #include <mach/layerscape/xload.h>
+#include <mach/layerscape/layerscape.h>
 #endif
 #include "sdhci.h"
 #include "imx-esdhc.h"
@@ -387,7 +388,7 @@ static int ls1028a_esdhc_start_image(void __iomem *base, struct dram_regions_inf
 		.socdata = &data,
 	};
 	void *sdram = (void *)0x80000000;
-	void (*bl31)(void) = (void *)0xfbe00000;
+	void (*bl31)(void) = (void *)LS1028A_TFA_RESERVED_START;
 	size_t bl31_size;
 	void *bl31_image;
 	struct bl2_to_bl31_params_mem_v2 *params;
diff --git a/include/mach/layerscape/layerscape.h b/include/mach/layerscape/layerscape.h
index ca1710d7bc..3dacfcb29f 100644
--- a/include/mach/layerscape/layerscape.h
+++ b/include/mach/layerscape/layerscape.h
@@ -3,6 +3,8 @@
 #ifndef __MACH_LAYERSCAPE_H
 #define __MACH_LAYERSCAPE_H
 
+#include <linux/sizes.h>
+
 #define LS1046A_DDR_SDRAM_BASE		0x80000000
 #define LS1046A_DDR_FREQ		2100000000
 
@@ -16,6 +18,12 @@
 #define LS1028A_SP_SHARED_DRAM_SIZE	SZ_2M
 #define LS1028A_TZC400_BASE		0x01100000
 
+#define LS1028A_TFA_SIZE		SZ_64M
+#define LS1028A_TFA_SHRD		SZ_2M
+#define LS1028A_TFA_RESERVED_SIZE	(LS1028A_TFA_SIZE + LS1028A_TFA_SHRD)
+#define LS1028A_TFA_RESERVED_START	(0x100000000 - LS1028A_TFA_RESERVED_SIZE)
+#define LS1028A_TFA_START		(0x100000000 - LS1028A_TFA_SIZE)
+
 enum bootsource ls1046a_bootsource_get(void);
 enum bootsource ls1021a_bootsource_get(void);
 
-- 
2.39.2



