Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R1zvM-00017e-1h
	for barebox@lists.infradead.org; Fri, 09 Sep 2011 12:11:13 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id 80FE3BF0E8
	for <barebox@lists.infradead.org>;
	Fri,  9 Sep 2011 14:15:12 +0200 (CEST)
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Fri, 9 Sep 2011 14:10:54 +0200
Message-Id: <1315570256-28614-2-git-send-email-J.Kilb@phytec.de>
In-Reply-To: <1315570256-28614-1-git-send-email-J.Kilb@phytec.de>
References: <1315570256-28614-1-git-send-email-J.Kilb@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Add omap_hsmmc platform data.
To: barebox@lists.infradead.org
Cc: Juergen Kilb <J.Kilb@phytec.de>

Add platform data to specify maximum frequency of hsmmc interface
which can be restricted due to external level shifters.

Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---
 arch/arm/mach-omap/include/mach/omap_hsmmc.h |   28 ++++++++++++++++++++++++++
 drivers/mci/omap_hsmmc.c                     |   10 ++++++++-
 2 files changed, 37 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/mach-omap/include/mach/omap_hsmmc.h

diff --git a/arch/arm/mach-omap/include/mach/omap_hsmmc.h b/arch/arm/mach-omap/include/mach/omap_hsmmc.h
new file mode 100644
index 0000000..a15f8e6
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/omap_hsmmc.h
@@ -0,0 +1,28 @@
+/**
+ * @file
+ * @brief This file contains exported structure for OMAP hsmmc
+ *
+ * FileName: include/asm-arm/arch-omap/omap_hsmmc.h
+ *
+ * OMAP3 and OMAP4 has a MMC/SD controller embedded.
+ * This file provides the platform data structure required to
+ * addapt to platform specialities.
+ */
+/*
+ * (C) Copyright 2011
+ * Phytec Messtechnik GmbH, <www.phytec.de>
+ * Juergen Kilb <j.kilb@phytec.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#ifndef __ASM_OMAP_HSMMC_H
+#define  __ASM_OMAP_HSMMC_H
+
+/** omapmmc platform data structure */
+struct omap_hsmmc_platform_data {
+	unsigned f_max;         /* host interface upper limit */
+};
+#endif /* __ASM_OMAP_HSMMC_H */
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 5fdf445..bf8d4a9 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -31,6 +31,8 @@
 #include <errno.h>
 #include <asm/io.h>
 
+#include <mach/omap_hsmmc.h>
+
 struct hsmmc {
 	unsigned char res1[0x10];
 	unsigned int sysconfig;		/* 0x10 */
@@ -549,6 +551,7 @@ static void mmc_set_ios(struct mci_host *mci, struct device_d *dev,
 static int omap_mmc_probe(struct device_d *dev)
 {
 	struct omap_hsmmc *hsmmc;
+	struct omap_hsmmc_platform_data *pdata;
 
 	hsmmc = xzalloc(sizeof(*hsmmc));
 
@@ -564,7 +567,12 @@ static int omap_mmc_probe(struct device_d *dev)
 	hsmmc->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 
 	hsmmc->mci.f_min = 400000;
-	hsmmc->mci.f_max = 52000000;
+
+	pdata = (struct omap_hsmmc_platform_data *)dev->platform_data;
+	if (pdata->f_max)
+		hsmmc->mci.f_max = pdata->f_max;
+	else
+		hsmmc->mci.f_max = 52000000;
 
 	mci_register(&hsmmc->mci);
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
