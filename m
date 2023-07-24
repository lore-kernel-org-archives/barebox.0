Delivery-date: Mon, 24 Jul 2023 09:54:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qNqP6-0081bH-JL
	for lore@lore.pengutronix.de; Mon, 24 Jul 2023 09:54:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qNqP4-0002F0-0c
	for lore@pengutronix.de; Mon, 24 Jul 2023 09:54:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9YbNvYy7mZ6L4M5z6PtFXFFfsTxRf96GxkBw61TeniI=; b=vxGBeh3EDYnhfa3O7e0DDSl/a+
	siW2WVDCME8jdSL9vWYTBeD3Cl65MftIb3xtNEhVKf0TzsNpLgjgw1I0hhz+o5ocYbBFtaaFv30nf
	GxPz77uiK6TH1mRla1oez9aJ3euAI9gahkMqhMej7kwNz1wNG7kkKonrU5VvpNvgqFaKCh89EX5k0
	N/my1hUIwe9FB5lEK86AF7ONQ8FFz/kfb2q9fqeTa/qrMmLEd9aTeyskns5UuJ0Zy6rBjP+v9WWBR
	kOJzowH0pbdJDlbxPLvWMenz6EGqfZvMEpP8ImhKWfKBYWEjFd7VgaSIT9SNqkbHmgr2e/zNqTazd
	B8TVR3tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNqNb-0038xW-1H;
	Mon, 24 Jul 2023 07:53:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNqNW-0038w1-2S
	for barebox@lists.infradead.org;
	Mon, 24 Jul 2023 07:53:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <has@pengutronix.de>)
	id 1qNqNQ-0001TB-G9; Mon, 24 Jul 2023 09:53:08 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <has@pengutronix.de>)
	id 1qNqNP-001hlC-Rj; Mon, 24 Jul 2023 09:53:07 +0200
Received: from has by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <has@pengutronix.de>)
	id 1qNqNP-007iuh-1g; Mon, 24 Jul 2023 09:53:07 +0200
From: Holger Assmann <h.assmann@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Holger Assmann <h.assmann@pengutronix.de>
Date: Mon, 24 Jul 2023 09:52:58 +0200
Message-Id: <20230724075258.1840671-1-h.assmann@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_005314_809965_DBAF9ABF 
X-CRM114-Status: GOOD (  17.70  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mfd: regulator: initial support for pca9450
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The PCA9450 PMIC by NXP can be communicated with via I2C; this driver uses
that do determine the reset source that caused the PMIC to perform its
latest power cycle.

Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
---
 drivers/mfd/Kconfig   |   7 +++
 drivers/mfd/Makefile  |   1 +
 drivers/mfd/pca9450.c | 106 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 114 insertions(+)
 create mode 100644 drivers/mfd/pca9450.c

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 39a40c2a3f..5189364c2c 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -69,6 +69,13 @@ config MFD_STPMIC1
 	help
 	  Select this to support communication with the STPMIC1.
 
+config MFD_PCA9450
+	depends on I2C
+	select REGMAP_I2C
+	bool "PCA9450 MFD driver"
+	help
+	  Select this to support communication with the PCA9450 PMIC.
+
 config MFD_RN568PMIC
 	depends on I2C
 	select REGMAP_I2C
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index f19bf53655..00f3eacf3c 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -25,3 +25,4 @@ obj-$(CONFIG_MFD_RK808)		+= rk808.o
 obj-$(CONFIG_MFD_AXP20X_I2C)	+= axp20x-i2c.o axp20x.o
 obj-$(CONFIG_MFD_ATMEL_SMC)	+= atmel-smc.o
 obj-$(CONFIG_MFD_ROHM_BD718XX)	+= rohm-bd718x7.o
+obj-$(CONFIG_MFD_PCA9450)	+= pca9450.o
diff --git a/drivers/mfd/pca9450.c b/drivers/mfd/pca9450.c
new file mode 100644
index 0000000000..3e4a63f398
--- /dev/null
+++ b/drivers/mfd/pca9450.c
@@ -0,0 +1,106 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2023 Holger Assmann, Pengutronix
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+#include <i2c/i2c.h>
+#include <init.h>
+#include <mfd/pca9450.h>
+#include <of.h>
+#include <regmap.h>
+#include <reset_source.h>
+
+#define REASON_PMIC_RST		0x10
+#define REASON_PWON		0x80
+#define REASON_SW_RST		0x20
+#define REASON_WDOG		0x40
+
+static const struct regmap_config pca9450_regmap_i2c_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = 0x2E,
+};
+
+static int pca9450_get_reset_source(struct device *dev, struct regmap *map)
+{
+	enum reset_src_type type;
+	int reg;
+	int ret;
+
+	ret = regmap_read(map, PCA9450_PWRON_STAT, &reg);
+	if (ret)
+		return ret;
+	
+	switch (reg) {
+		case REASON_PWON:
+			dev_dbg(dev, "Power ON triggered by PMIC_ON_REQ.\n");
+			type = RESET_POR;
+			break;
+		case REASON_WDOG:
+			dev_dbg(dev, "Detected cold reset by WDOGB pin\n");
+			type = RESET_WDG;
+			break;
+		case REASON_SW_RST:
+			dev_dbg(dev, "Detected cold reset by SW_RST\n");
+			type = RESET_RST;
+			break;
+		case REASON_PMIC_RST:
+			dev_dbg(dev, "Detected cold reset by PMIC_RST_B\n");
+			type = RESET_EXT;
+			break;
+		default:
+			dev_warn(dev, "Could not determine reset reason.\n");
+			type = RESET_UKWN;
+	}
+
+	reset_source_set_device(dev, type);
+
+	return 0;
+};
+	
+static int __init pca9450_probe(struct device *dev)
+{
+	struct regmap *regmap;
+	int reg;
+	int ret;
+
+	regmap = regmap_init_i2c(to_i2c_client(dev), &pca9450_regmap_i2c_config);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	ret = regmap_register_cdev(regmap, NULL);
+	if (ret)
+		return ret;
+
+	ret = regmap_read(regmap, PCA9450_REG_DEV_ID, &reg);
+	if (ret) {
+		dev_err(dev, "Unable to read PMIC Chip ID\n");
+		return ret;
+	}
+
+	/* Chip ID defined in bits [7:4] */
+	dev_info(dev, "PMIC Chip ID: 0x%x\n", (reg >> 4));
+
+	pca9450_get_reset_source(dev,regmap);
+
+	return of_platform_populate(dev->of_node, NULL, dev);
+}
+
+static __maybe_unused struct of_device_id pca9450_dt_ids[] = {
+	{ .compatible = "nxp,pca9450a" },
+	{ .compatible = "nxp,pca9450b" },
+	{ .compatible = "nxp,pca9450c" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, pca9450_dt_ids);
+
+static struct driver pca9450_i2c_driver = {
+	.name		= "pca9450-i2c",
+	.probe		= pca9450_probe,
+	.of_compatible	= DRV_OF_COMPAT(pca9450_dt_ids),
+};
+
+coredevice_i2c_driver(pca9450_i2c_driver);
-- 
2.39.2



