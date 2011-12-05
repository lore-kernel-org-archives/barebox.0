Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo1.mail-out.ovh.net ([178.32.119.250]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RXaO8-0000om-4B
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 15:23:29 +0000
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 5F376FFB44A
 for <barebox@lists.infradead.org>; Mon,  5 Dec 2011 16:23:33 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  5 Dec 2011 16:19:01 +0100
Message-Id: <1323098343-31863-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111205151439.GC9192@game.jcrosoft.org>
References: <20111205151439.GC9192@game.jcrosoft.org>
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
Subject: [PATCH 2/4] imx-esdhc: add support of card detect
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-imx/devices.c                    |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx25.h |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx35.h |    6 ++--
 arch/arm/mach-imx/include/mach/devices-imx51.h |    4 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h |    6 ++--
 arch/arm/mach-imx/include/mach/devices.h       |    3 +-
 arch/arm/mach-imx/include/mach/esdhc.h         |   43 ++++++++++++++++++++++++
 drivers/mci/imx-esdhc.c                        |   37 ++++++++++++++++++++
 8 files changed, 92 insertions(+), 11 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/esdhc.h

diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index 5b062f5..6cd50f3 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -48,7 +48,7 @@ struct device_d *imx_add_mmc(void *base, int id, void *pdata)
 	return imx_add_device("imx-mmc", id, base, 0x1000, pdata);
 }
 
-struct device_d *imx_add_esdhc(void *base, int id, void *pdata)
+struct device_d *imx_add_esdhc(void *base, int id, struct esdhc_platform_data *pdata)
 {
 	return imx_add_device("imx-esdhc", id, base, 0x1000, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx25.h b/arch/arm/mach-imx/include/mach/devices-imx25.h
index eff5977..bd9dd0a 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx25.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx25.h
@@ -36,7 +36,7 @@ static inline struct device_d *imx25_add_fec(struct fec_platform_data *pdata)
 	return imx_add_fec((void *)IMX_FEC_BASE, pdata);
 }
 
-static inline struct device_d *imx25_add_mmc0(void *pdata)
+static inline struct device_d *imx25_add_mmc0(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc((void *)0x53fb4000, 0, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx35.h b/arch/arm/mach-imx/include/mach/devices-imx35.h
index 69f4b36..6c0d750 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx35.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx35.h
@@ -41,17 +41,17 @@ static inline struct device_d *imx35_add_fec(struct fec_platform_data *pdata)
 	return imx_add_fec((void *)IMX_FEC_BASE, pdata);
 }
 
-static inline struct device_d *imx35_add_mmc0(void *pdata)
+static inline struct device_d *imx35_add_mmc0(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc((void *)IMX_SDHC1_BASE, 0, pdata);
 }
 
-static inline struct device_d *imx35_add_mmc1(void *pdata)
+static inline struct device_d *imx35_add_mmc1(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc((void *)IMX_SDHC2_BASE, 1, pdata);
 }
 
-static inline struct device_d *imx35_add_mmc2(void *pdata)
+static inline struct device_d *imx35_add_mmc2(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc((void *)IMX_SDHC3_BASE, 2, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index 23410a9..d9bed8c 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -42,12 +42,12 @@ static inline struct device_d *imx51_add_fec(struct fec_platform_data *pdata)
 	return imx_add_fec((void *)MX51_MXC_FEC_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx51_add_mmc0(void *pdata)
+static inline struct device_d *imx51_add_mmc0(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc((void *)MX51_MMC_SDHC1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx51_add_mmc1(void *pdata)
+static inline struct device_d *imx51_add_mmc1(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc((void *)MX51_MMC_SDHC2_BASE_ADDR, 1, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index bc32048..bc01420 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -36,17 +36,17 @@ static inline struct device_d *imx53_add_fec(struct fec_platform_data *pdata)
 	return imx_add_fec((void *)MX53_FEC_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx53_add_mmc0(void *pdata)
+static inline struct device_d *imx53_add_mmc0(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc((void *)MX53_ESDHC1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx53_add_mmc1(void *pdata)
+static inline struct device_d *imx53_add_mmc1(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc((void *)MX53_ESDHC2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx53_add_mmc2(void *pdata)
+static inline struct device_d *imx53_add_mmc2(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc((void *)MX53_ESDHC3_BASE_ADDR, 2, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices.h b/arch/arm/mach-imx/include/mach/devices.h
index 7338ac5..f0f730a 100644
--- a/arch/arm/mach-imx/include/mach/devices.h
+++ b/arch/arm/mach-imx/include/mach/devices.h
@@ -5,6 +5,7 @@
 #include <mach/imx-nand.h>
 #include <mach/imxfb.h>
 #include <mach/imx-ipu-fb.h>
+#include <mach/esdhc.h>
 
 struct device_d *imx_add_fec(void *base, struct fec_platform_data *pdata);
 struct device_d *imx_add_spi(void *base, int id, struct spi_imx_master *pdata);
@@ -14,5 +15,5 @@ struct device_d *imx_add_nand(void *base, struct imx_nand_platform_data *pdata);
 struct device_d *imx_add_fb(void *base, struct imx_fb_platform_data *pdata);
 struct device_d *imx_add_ipufb(void *base, struct imx_ipu_fb_platform_data *pdata);
 struct device_d *imx_add_mmc(void *base, int id, void *pdata);
-struct device_d *imx_add_esdhc(void *base, int id, void *pdata);
+struct device_d *imx_add_esdhc(void *base, int id, struct esdhc_platform_data *pdata);
 
diff --git a/arch/arm/mach-imx/include/mach/esdhc.h b/arch/arm/mach-imx/include/mach/esdhc.h
new file mode 100644
index 0000000..aaf9748
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/esdhc.h
@@ -0,0 +1,43 @@
+/*
+ * Copyright 2010 Wolfram Sang <w.sang@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; version 2
+ * of the License.
+ */
+
+#ifndef __ASM_ARCH_IMX_ESDHC_H
+#define __ASM_ARCH_IMX_ESDHC_H
+
+enum wp_types {
+	ESDHC_WP_NONE,		/* no WP, neither controller nor gpio */
+	ESDHC_WP_CONTROLLER,	/* mmc controller internal WP */
+	ESDHC_WP_GPIO,		/* external gpio pin for WP */
+};
+
+enum cd_types {
+	ESDHC_CD_NONE,		/* no CD, neither controller nor gpio */
+	ESDHC_CD_CONTROLLER,	/* mmc controller internal CD */
+	ESDHC_CD_GPIO,		/* external gpio pin for CD */
+	ESDHC_CD_PERMANENT,	/* no CD, card permanently wired to host */
+};
+
+/**
+ * struct esdhc_platform_data - platform data for esdhc on i.MX
+ *
+ * ESDHC_WP(CD)_CONTROLLER type is not available on i.MX25/35.
+ *
+ * @wp_gpio:	gpio for write_protect
+ * @cd_gpio:	gpio for card_detect interrupt
+ * @wp_type:	type of write_protect method (see wp_types enum above)
+ * @cd_type:	type of card_detect method (see cd_types enum above)
+ */
+
+struct esdhc_platform_data {
+	unsigned int wp_gpio;
+	unsigned int cd_gpio;
+	enum wp_types wp_type;
+	enum cd_types cd_type;
+};
+#endif /* __ASM_ARCH_IMX_ESDHC_H */
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index a0e61f0..af9a1dd 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -36,6 +36,8 @@
 #include <asm/mmu.h>
 #include <mach/clock.h>
 #include <mach/generic.h>
+#include <mach/esdhc.h>
+#include <gpio.h>
 
 #include "imx-esdhc.h"
 
@@ -391,6 +393,31 @@ static void esdhc_set_ios(struct mci_host *mci, struct device_d *dev,
 
 }
 
+static int esdhc_card_detect(struct fsl_esdhc_host *host)
+{
+	struct fsl_esdhc *regs = host->regs;
+	struct esdhc_platform_data *pdata = host->dev->platform_data;
+	int ret;
+
+	if (!pdata)
+		return 1;
+
+	switch (pdata->cd_type) {
+	case ESDHC_CD_NONE:
+	case ESDHC_CD_PERMANENT:
+		return 1;
+	case ESDHC_CD_CONTROLLER:
+		return !(esdhc_read32(&regs->prsstat) & PRSSTAT_WPSPL);
+	case ESDHC_CD_GPIO:
+		ret = gpio_direction_input(pdata->cd_gpio);
+		if (ret)
+			return ret;
+		return gpio_get_value(pdata->cd_gpio) ? 0 : 1;
+	}
+
+	return 0;
+}
+
 static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
@@ -398,6 +425,16 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 	int timeout = 1000;
 	int ret = 0;
 
+	ret = esdhc_card_detect(host);
+
+	if (ret == 0)
+		return -ENODEV;
+
+	if (ret < 0)
+		return ret;
+
+	ret = 0;
+
 	/* Enable cache snooping */
 	if (host && !host->no_snoop)
 		esdhc_write32(&regs->scr, 0x00000040);
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
