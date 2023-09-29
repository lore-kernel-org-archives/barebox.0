Delivery-date: Fri, 29 Sep 2023 10:58:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qm9Ko-00G5mE-0z
	for lore@lore.pengutronix.de; Fri, 29 Sep 2023 10:58:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qm9Kl-0002Vs-Ej
	for lore@pengutronix.de; Fri, 29 Sep 2023 10:58:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jwNYR84yxFyCBTmczkw9qCsB2zvMHrn0SwxAVQP3tzo=; b=XxfIK9iNuIlqTaezm7jwB6dnVC
	8o8Fx+i5/ygvFEQc2C++2B0m1O+U5A00jyyHRi5+XycidN7z0dHZcJwZ2x1YfUJqYd/Jkitu/+DXB
	anWliVBTVkmdQhHhUzhZBvjC9CvJXSs+vwlJDxFw/sJ5FQzWgr27ta0JTM+kxV17/7ANdpCs+ICa1
	biuHYCYuh6aEgpeDnp2qwXP6m1QYuS7ld3bPm7FBQMOEDRiUJkmo925lv/eZ3hEIvVnrcfn+RaEmT
	S/vVwth/q/J5GiNIPJMej/t37+FFghjYWr8HoJrSTf+sEqRP1OtnN8UwPdYA2IRiAnxp/6r7V2XnZ
	908bJZVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qm9JV-007QBW-2J;
	Fri, 29 Sep 2023 08:57:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qm9JS-007QAq-0s
	for barebox@lists.infradead.org;
	Fri, 29 Sep 2023 08:57:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <has@pengutronix.de>)
	id 1qm9JR-0002AU-0L; Fri, 29 Sep 2023 10:57:29 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <has@pengutronix.de>)
	id 1qm9JQ-009lw2-K7; Fri, 29 Sep 2023 10:57:28 +0200
Received: from has by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <has@pengutronix.de>)
	id 1qm9JQ-007xeZ-BO; Fri, 29 Sep 2023 10:57:28 +0200
From: Holger Assmann <h.assmann@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Holger Assmann <h.assmann@pengutronix.de>
Date: Fri, 29 Sep 2023 10:57:26 +0200
Message-Id: <20230929085726.1897008-1-h.assmann@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230929_015730_303900_90D0C51B 
X-CRM114-Status: GOOD (  17.28  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] mfd: regulator: initial support for pca9450
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PCA9450 PMIC by NXP can be communicated with via I2C; this driver uses
that do determine the reset source that caused the PMIC to perform its
latest power cycle.

Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
---

Changes v1 -> v2:

1. removed unnecessary whitespaces
2. code re-arrangement

---
 drivers/mfd/Kconfig   |   7 +++
 drivers/mfd/Makefile  |   1 +
 drivers/mfd/pca9450.c | 107 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 115 insertions(+)
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
index 0000000000..929c4f68da
--- /dev/null
+++ b/drivers/mfd/pca9450.c
@@ -0,0 +1,107 @@
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
+#define REASON_SW_RST		0x20
+#define REASON_WDOG		0x40
+#define REASON_PWON		0x80
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
+
+	if (ret)
+		return ret;
+
+	switch (reg) {
+	case REASON_PWON:
+		dev_dbg(dev, "Power ON triggered by PMIC_ON_REQ.\n");
+		type = RESET_POR;
+		break;
+	case REASON_WDOG:
+		dev_dbg(dev, "Detected cold reset by WDOGB pin\n");
+		type = RESET_WDG;
+		break;
+	case REASON_SW_RST:
+		dev_dbg(dev, "Detected cold reset by SW_RST\n");
+		type = RESET_RST;
+		break;
+	case REASON_PMIC_RST:
+		dev_dbg(dev, "Detected cold reset by PMIC_RST_B\n");
+		type = RESET_EXT;
+		break;
+	default:
+		dev_warn(dev, "Could not determine reset reason.\n");
+		type = RESET_UKWN;
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
+
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



