Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XgHOk-0006mH-CT
 for barebox@lists.infradead.org; Mon, 20 Oct 2014 18:09:39 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 75F6B26C2002
 for <barebox@lists.infradead.org>; Mon, 20 Oct 2014 20:08:40 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 20 Oct 2014 20:15:30 +0200
Message-Id: <1413828930-12536-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1413828930-12536-1-git-send-email-dev@lynxeye.de>
References: <1413828930-12536-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/2] tegra: pmc: add support for reset src detection
To: barebox@lists.infradead.org

Also activate in defconfig.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/configs/tegra_v7_defconfig            |  1 +
 arch/arm/mach-tegra/include/mach/tegra20-pmc.h |  9 +++++++
 arch/arm/mach-tegra/tegra20-pmc.c              | 33 +++++++++++++++++++++++++-
 3 files changed, 42 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/tegra_v7_defconfig b/arch/arm/configs/tegra_v7_defconfig
index 22f5765..3ad67be 100644
--- a/arch/arm/configs/tegra_v7_defconfig
+++ b/arch/arm/configs/tegra_v7_defconfig
@@ -16,6 +16,7 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_BLSPEC=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_RESET_SOURCE=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/mach-tegra/include/mach/tegra20-pmc.h b/arch/arm/mach-tegra/include/mach/tegra20-pmc.h
index 30ac065..c379544 100644
--- a/arch/arm/mach-tegra/include/mach/tegra20-pmc.h
+++ b/arch/arm/mach-tegra/include/mach/tegra20-pmc.h
@@ -71,3 +71,12 @@
 #define PMC_PARTID_C0NC			15
 
 #define PMC_SCRATCH(i)			(0x050 + 0x4*i)
+
+#define PMC_RST_STATUS			0x1b4
+#define PMC_RST_STATUS_RST_SRC_SHIFT	0
+#define PMC_RST_STATUS_RST_SRC_MASK	(0x7 << PMC_RST_STATUS_RST_SRC_SHIFT)
+#define PMC_RST_STATUS_RST_SRC_POR	0
+#define PMC_RST_STATUS_RST_SRC_WATCHDOG	1
+#define PMC_RST_STATUS_RST_SRC_SENSOR	2
+#define PMC_RST_STATUS_RST_SRC_SW_MAIN	3
+#define PMC_RST_STATUS_RST_SRC_LP0	4
diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
index d868094..434a7eb 100644
--- a/arch/arm/mach-tegra/tegra20-pmc.c
+++ b/arch/arm/mach-tegra/tegra20-pmc.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ * Copyright (C) 2013-2014 Lucas Stach <l.stach@pengutronix.de>
  *
  * This program is free software; you can redistribute it and/or modify it
  * under the terms and conditions of the GNU General Public License,
@@ -24,6 +24,7 @@
 #include <init.h>
 #include <io.h>
 #include <linux/err.h>
+#include <reset_source.h>
 
 #include <mach/tegra20-pmc.h>
 
@@ -38,6 +39,33 @@ void __noreturn reset_cpu(ulong addr)
 }
 EXPORT_SYMBOL(reset_cpu);
 
+static void tegra20_pmc_detect_reset_cause(void)
+{
+	u32 reg = readl(pmc_base + PMC_RST_STATUS);
+
+	switch ((reg & PMC_RST_STATUS_RST_SRC_MASK) >>
+	         PMC_RST_STATUS_RST_SRC_SHIFT) {
+	case PMC_RST_STATUS_RST_SRC_POR:
+		reset_source_set(RESET_POR);
+		break;
+	case PMC_RST_STATUS_RST_SRC_WATCHDOG:
+		reset_source_set(RESET_WDG);
+		break;
+	case PMC_RST_STATUS_RST_SRC_LP0:
+		reset_source_set(RESET_WKE);
+		break;
+	case PMC_RST_STATUS_RST_SRC_SW_MAIN:
+		reset_source_set(RESET_RST);
+		break;
+	case PMC_RST_STATUS_RST_SRC_SENSOR:
+		reset_source_set(RESET_THERM);
+		break;
+	default:
+		reset_source_set(RESET_UKWN);
+		break;
+	}
+}
+
 static int tegra20_pmc_probe(struct device_d *dev)
 {
 	pmc_base = dev_request_mem_region(dev, 0);
@@ -46,6 +74,9 @@ static int tegra20_pmc_probe(struct device_d *dev)
 		return PTR_ERR(pmc_base);
 	}
 
+	if (IS_ENABLED(CONFIG_RESET_SOURCE))
+		tegra20_pmc_detect_reset_cause();
+
 	return 0;
 }
 
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
