Delivery-date: Mon, 30 Jan 2023 18:30:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMXzN-007qNu-FL
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 18:30:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMXzJ-0005Kv-JP
	for lore@pengutronix.de; Mon, 30 Jan 2023 18:30:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KK2Nor9OB/Pp/9LfqCbcqlNzUohnaRZFrpiqghAm8BQ=; b=jEicpm/DwY7ynq0yPtbRhsG4nG
	nj5KYC54ubzHdWv8n7c5ESwJA2Np+2MT2b98a2sIsx/quLF/kTbeHOT+KFgPeFScBMiPdeEnWB9Do
	UomfDt4bTw6QDgWYL4otNURpxjVksh4uqKHoeud5/WzREMp53wbMMIXIhHQsWHJXV5KFpvkpQGg7e
	khfAoytYMr2Ieu0uKDvrXVoQHntaw/p81YA8Mwqa+BM6Ij07qoB02xgR3AZjJG1fGUnTrgQkOqRby
	sCher91njSg+YFSvbnXOM27lW51FT+3XOZxQQd3ZBtsyASa/pLXiYEJBo5H4kTPf4MAgOPs0ts6nv
	MlrwZVsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXxl-004YOZ-PO; Mon, 30 Jan 2023 17:29:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXsb-004ViG-CG
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 17:23:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pMXsU-0003HU-Js
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 18:23:34 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pMOOx-001PlH-8G; Mon, 30 Jan 2023 08:16:26 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pMOOv-0008sl-Dr; Mon, 30 Jan 2023 08:16:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 30 Jan 2023 08:16:22 +0100
Message-Id: <20230130071622.34094-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_092341_632236_32A3969B 
X-CRM114-Status: GOOD (  23.69  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mfd: add regmap driver for rohm-bd718x7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Rohm BD71837 is a PMIC for i.MX8MM, which is used on most boards
supported by barebox. So far, we didn't need to change PMIC
configuration after the initial setup in PBL, but to support future
debugging and development, let's port the Linux MFD driver sans the
regulators, so we get a regmap for interacting with the device.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/Kconfig        |  13 ++++
 drivers/mfd/Makefile       |   1 +
 drivers/mfd/rohm-bd718x7.c | 140 +++++++++++++++++++++++++++++++++++++
 include/mfd/bd71837.h      |   3 +
 4 files changed, 157 insertions(+)
 create mode 100644 drivers/mfd/rohm-bd718x7.c

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index f1f7e27fadfe..39a40c2a3fb5 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -129,6 +129,19 @@ config MFD_AXP20X_I2C
 	  management ICs (PMICs) controlled with I2C.
 	  This driver currently only provide a character device in /dev.
 
+config MFD_ROHM_BD718XX
+	tristate "ROHM BD71837 Power Management IC"
+	depends on I2C=y
+	depends on OFDEVICE
+	select REGMAP_I2C
+	help
+	  Select this option to get support for the ROHM BD71837
+	  Power Management ICs. BD71837 is designed to power processors like
+	  NXP i.MX8. It contains 8 BUCK outputs and 7 LDOs, voltage monitoring
+	  and emergency shut down as well as 32,768KHz clock output.
+
+	  This driver currently only provide a character device in /dev.
+
 config MFD_ATMEL_SMC
 	bool
 	select MFD_SYSCON
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index b89ddab5947d..f19bf5365533 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -24,3 +24,4 @@ obj-$(CONFIG_MFD_ATMEL_FLEXCOM)	+= atmel-flexcom.o
 obj-$(CONFIG_MFD_RK808)		+= rk808.o
 obj-$(CONFIG_MFD_AXP20X_I2C)	+= axp20x-i2c.o axp20x.o
 obj-$(CONFIG_MFD_ATMEL_SMC)	+= atmel-smc.o
+obj-$(CONFIG_MFD_ROHM_BD718XX)	+= rohm-bd718x7.o
diff --git a/drivers/mfd/rohm-bd718x7.c b/drivers/mfd/rohm-bd718x7.c
new file mode 100644
index 000000000000..20c572b6d766
--- /dev/null
+++ b/drivers/mfd/rohm-bd718x7.c
@@ -0,0 +1,140 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+//
+// Copyright (C) 2018 ROHM Semiconductors
+//
+// ROHM BD71837MWV and BD71847MWV PMIC driver
+//
+// Datasheet for BD71837MWV available from
+// https://www.rohm.com/datasheet/BD71837MWV/bd71837mwv-e
+
+#include <common.h>
+#include <i2c/i2c.h>
+#include <mfd/bd71837.h>
+#include <linux/mfd/core.h>
+#include <driver.h>
+#include <poweroff.h>
+#include <of.h>
+#include <regmap.h>
+
+static struct mfd_cell bd71837_mfd_cells[] = {
+	{ .name = "gpio-keys", },
+	{ .name = "bd71837-clk", },
+	{ .name = "bd71837-pmic", },
+};
+
+static struct mfd_cell bd71847_mfd_cells[] = {
+	{ .name = "gpio-keys", },
+	{ .name = "bd71847-clk", },
+	{ .name = "bd71847-pmic", },
+};
+
+static const struct regmap_config bd718xx_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = BD718XX_MAX_REGISTER - 1,
+};
+
+static int bd718xx_init_press_duration(struct regmap *regmap,
+				       struct device *dev)
+{
+	u32 short_press_ms, long_press_ms;
+	u32 short_press_value, long_press_value;
+	int ret;
+
+	ret = of_property_read_u32(dev->of_node, "rohm,short-press-ms",
+				   &short_press_ms);
+	if (!ret) {
+		short_press_value = min(15u, (short_press_ms + 250) / 500);
+		ret = regmap_update_bits(regmap, BD718XX_PWRONCONFIG0,
+					 BD718XX_PWRBTN_PRESS_DURATION_MASK,
+					 short_press_value);
+		if (ret) {
+			dev_err(dev, "Failed to init pwron short press\n");
+			return ret;
+		}
+	}
+
+	ret = of_property_read_u32(dev->of_node, "rohm,long-press-ms",
+				   &long_press_ms);
+	if (!ret) {
+		long_press_value = min(15u, (long_press_ms + 500) / 1000);
+		ret = regmap_update_bits(regmap, BD718XX_PWRONCONFIG1,
+					 BD718XX_PWRBTN_PRESS_DURATION_MASK,
+					 long_press_value);
+		if (ret) {
+			dev_err(dev, "Failed to init pwron long press\n");
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static int bd718xx_i2c_probe(struct device *dev)
+{
+	struct i2c_client *i2c = to_i2c_client(dev);
+	struct regmap *regmap;
+	int ret;
+	unsigned int chip_type;
+	struct mfd_cell *mfd;
+	int cells;
+
+	chip_type = (unsigned int)(uintptr_t)device_get_match_data(dev);
+	switch (chip_type) {
+	case ROHM_CHIP_TYPE_BD71837:
+		mfd = bd71837_mfd_cells;
+		cells = ARRAY_SIZE(bd71837_mfd_cells);
+		break;
+	case ROHM_CHIP_TYPE_BD71847:
+		mfd = bd71847_mfd_cells;
+		cells = ARRAY_SIZE(bd71847_mfd_cells);
+		break;
+	default:
+		dev_err(dev, "Unknown device type");
+		return -EINVAL;
+	}
+
+	regmap = regmap_init_i2c(i2c, &bd718xx_regmap_config);
+	if (IS_ERR(regmap)) {
+		dev_err(dev, "regmap initialization failed\n");
+		return PTR_ERR(regmap);
+	}
+
+	ret = bd718xx_init_press_duration(regmap, dev);
+	if (ret)
+		return ret;
+
+	ret = mfd_add_devices(dev, mfd, cells);
+	if (ret)
+		dev_err(dev, "Failed to create subdevices\n");
+
+	return regmap_register_cdev(regmap, NULL);
+}
+
+static const struct of_device_id bd718xx_of_match[] = {
+	{
+		.compatible = "rohm,bd71837",
+		.data = (void *)ROHM_CHIP_TYPE_BD71837,
+	},
+	{
+		.compatible = "rohm,bd71847",
+		.data = (void *)ROHM_CHIP_TYPE_BD71847,
+	},
+	{
+		.compatible = "rohm,bd71850",
+		.data = (void *)ROHM_CHIP_TYPE_BD71847,
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, bd718xx_of_match);
+
+static struct driver bd718xx_i2c_driver = {
+	.name = "rohm-bd718x7",
+	.of_match_table = bd718xx_of_match,
+	.probe = bd718xx_i2c_probe,
+};
+coredevice_i2c_driver(bd718xx_i2c_driver);
+
+MODULE_AUTHOR("Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>");
+MODULE_DESCRIPTION("ROHM BD71837/BD71847 Power Management IC driver");
+MODULE_LICENSE("GPL");
diff --git a/include/mfd/bd71837.h b/include/mfd/bd71837.h
index 75e07e1de31e..4e285a647a92 100644
--- a/include/mfd/bd71837.h
+++ b/include/mfd/bd71837.h
@@ -100,4 +100,7 @@ enum {
 #define BD71847_LDO5_RANGE_MASK		0x20
 #define BD71837_LDO7_MASK		0x0f
 
+#define BD718XX_PWRBTN_PRESS_DURATION_MASK 0xF
+
+
 #endif
-- 
2.30.2



