Delivery-date: Wed, 08 Jan 2025 16:24:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXvI-000n5E-1W
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 16:24:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXvH-0004FC-Jy
	for lore@pengutronix.de; Wed, 08 Jan 2025 16:24:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8xQNGT5KZQRWWnlMJ66RtvDeOJmSQ7XMBN7ZDeQCwL0=; b=3d7Pfjxwcc7AiNY0pNIuKdACgk
	nzEDEe6PHsaBFvL3PfUoZ+iv3Lyzt7+uNMb43WEz0N2r0CUvQuCXsKHUUWQYHPE6re7H+DpJ6hg3B
	eKPh7CaRklwH0lWA3O1376pCicRLhDgmKIpe++otB00UvAKIWrJByO7857ghmrGo2r0ZX61hutx6S
	uFBn3r8w9wH3VK0lzhlG45t2iIXZMxTID6eGND6DfjfOmSOKsdx0NuBxqhhKXHada1chzVygMqxrN
	ByK1/5k2Yx1guyMTbxeubOKvrl+ujyy/biquD3y00r2PK/ut1FBrFiLDnPDsFNDRZr8uxsmqO8zqk
	j7OLQnSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXum-00000008x0C-3wvJ;
	Wed, 08 Jan 2025 15:24:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXuk-00000008wz4-0N88
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 15:24:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVXui-0003vx-Sd; Wed, 08 Jan 2025 16:24:08 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVXuh-007Xmx-2x;
	Wed, 08 Jan 2025 16:24:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVXui-001Mmj-1z;
	Wed, 08 Jan 2025 16:24:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 08 Jan 2025 16:24:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250108-k3-i2c-v1-2-cf088462217b@pengutronix.de>
References: <20250108-k3-i2c-v1-0-cf088462217b@pengutronix.de>
In-Reply-To: <20250108-k3-i2c-v1-0-cf088462217b@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736349848; l=16241;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=BiN62q0zA3NRIYpuI+fj8LlRXqOeX15HUscMU/fIdaU=;
 b=eiTIt0xxb6FFGdjl9idgq/OMPXJjlvXiGFzhBDRl6k4Is5F02fY2bjQ7/D15GWr9MaKtO0ooV
 BQKBTmNbp42CzsdJn/Md0Be28RWh3IzMveVENI94PifXG0JA78K1fKU
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_072410_441321_E02713FB 
X-CRM114-Status: GOOD (  19.23  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] mfd: add tps65219 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The tps65219 is a PMIC IC from Texas instruments. This patch adds basic
mfd support for this chip based on the corresponding Linux driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/Kconfig          |   5 +
 drivers/mfd/Makefile         |   1 +
 drivers/mfd/tps65219.c       |  82 +++++++++++
 include/linux/mfd/tps65219.h | 339 +++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 427 insertions(+)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index dabe71dbdc..471f85cd63 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -41,6 +41,11 @@ config MFD_SYSCON
 	help
 	  Select this option to enable accessing system control registers
 
+config MFD_TPS65219
+	bool "TPS65219 driver"
+	depends on I2C
+	select REGMAP_I2C
+
 config MFD_TWLCORE
 	bool
 
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 00f3eacf3c..88480f7064 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -26,3 +26,4 @@ obj-$(CONFIG_MFD_AXP20X_I2C)	+= axp20x-i2c.o axp20x.o
 obj-$(CONFIG_MFD_ATMEL_SMC)	+= atmel-smc.o
 obj-$(CONFIG_MFD_ROHM_BD718XX)	+= rohm-bd718x7.o
 obj-$(CONFIG_MFD_PCA9450)	+= pca9450.o
+obj-$(CONFIG_MFD_TPS65219)	+= tps65219.o
diff --git a/drivers/mfd/tps65219.c b/drivers/mfd/tps65219.c
new file mode 100644
index 0000000000..11f2e1798b
--- /dev/null
+++ b/drivers/mfd/tps65219.c
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * MFD core driver for TI TPS65219
+ */
+
+#define pr_fmt(fmt) "tps65219: " fmt
+
+#include <i2c/i2c.h>
+#include <linux/mfd/core.h>
+#include <driver.h>
+#include <of.h>
+#include <linux/regmap.h>
+#include <linux/mfd/tps65219.h>
+#include <linux/device.h>
+
+static const struct mfd_cell tps65219_cells[] = {
+	{ .name = "tps65219-regulator", },
+	{ .name = "tps65219-gpio", },
+};
+
+static const struct mfd_cell tps65219_pwrbutton_cell = {
+	.name = "tps65219-pwrbutton",
+};
+
+static const struct regmap_config tps65219_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = TPS65219_REG_FACTORY_CONFIG_2,
+};
+
+static int tps65219_probe(struct device *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct tps65219 *tps;
+	unsigned int chipid;
+	bool pwr_button;
+	int ret;
+
+	tps = devm_kzalloc(&client->dev, sizeof(*tps), GFP_KERNEL);
+	if (!tps)
+		return -ENOMEM;
+
+	i2c_set_clientdata(client, tps);
+
+	tps->dev = &client->dev;
+
+	tps->regmap = regmap_init_i2c(client, &tps65219_regmap_config);
+	if (IS_ERR(tps->regmap))
+		return dev_err_probe(tps->dev, PTR_ERR(tps->regmap), "Failed to allocate register map\n");
+
+	ret = regmap_read(tps->regmap, TPS65219_REG_TI_DEV_ID, &chipid);
+	if (ret)
+		return dev_err_probe(tps->dev, ret, "Failed to read device ID\n");
+
+	dev->priv = tps;
+
+	ret = mfd_add_devices(tps->dev, tps65219_cells, ARRAY_SIZE(tps65219_cells));
+	if (ret)
+		return dev_err_probe(tps->dev, ret, "Failed to add child devices\n");
+
+	pwr_button = of_property_read_bool(tps->dev->of_node, "ti,power-button");
+	if (pwr_button) {
+		ret = mfd_add_devices(tps->dev, &tps65219_pwrbutton_cell, 1);
+		if (ret)
+			return dev_err_probe(tps->dev, ret, "Failed to add power-button\n");
+	}
+
+	return 0;
+}
+
+static const struct of_device_id tps65219_of_match[] = {
+	{ .compatible = "ti,tps65219" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, tps65219_of_match);
+
+static __maybe_unused struct driver tps65219_i2c_driver = {
+	.name = "tps65219",
+	.of_compatible = tps65219_of_match,
+	.probe    = tps65219_probe,
+};
+coredevice_i2c_driver(tps65219_i2c_driver);
diff --git a/include/linux/mfd/tps65219.h b/include/linux/mfd/tps65219.h
new file mode 100644
index 0000000000..ab14eff54d
--- /dev/null
+++ b/include/linux/mfd/tps65219.h
@@ -0,0 +1,339 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Functions to access TPS65219 Power Management IC.
+ *
+ * Copyright (C) 2022 BayLibre Incorporated - https://www.baylibre.com/
+ */
+
+#ifndef MFD_TPS65219_H
+#define MFD_TPS65219_H
+
+#include <linux/bitops.h>
+
+struct regmap;
+
+#define TPS65219_1V35					1350000
+#define TPS65219_1V8					1800000
+
+/* TPS chip id list */
+#define TPS65219					0xF0
+
+/* I2C ID for TPS65219 part */
+#define TPS65219_I2C_ID					0x24
+
+/* All register addresses */
+#define TPS65219_REG_TI_DEV_ID				0x00
+#define TPS65219_REG_NVM_ID				0x01
+#define TPS65219_REG_ENABLE_CTRL			0x02
+#define TPS65219_REG_BUCKS_CONFIG			0x03
+#define TPS65219_REG_LDO4_VOUT				0x04
+#define TPS65219_REG_LDO3_VOUT				0x05
+#define TPS65219_REG_LDO2_VOUT				0x06
+#define TPS65219_REG_LDO1_VOUT				0x07
+#define TPS65219_REG_BUCK3_VOUT				0x8
+#define TPS65219_REG_BUCK2_VOUT				0x9
+#define TPS65219_REG_BUCK1_VOUT				0xA
+#define TPS65219_REG_LDO4_SEQUENCE_SLOT			0xB
+#define TPS65219_REG_LDO3_SEQUENCE_SLOT			0xC
+#define TPS65219_REG_LDO2_SEQUENCE_SLOT			0xD
+#define TPS65219_REG_LDO1_SEQUENCE_SLOT			0xE
+#define TPS65219_REG_BUCK3_SEQUENCE_SLOT		0xF
+#define TPS65219_REG_BUCK2_SEQUENCE_SLOT		0x10
+#define TPS65219_REG_BUCK1_SEQUENCE_SLOT		0x11
+#define TPS65219_REG_nRST_SEQUENCE_SLOT			0x12
+#define TPS65219_REG_GPIO_SEQUENCE_SLOT			0x13
+#define TPS65219_REG_GPO2_SEQUENCE_SLOT			0x14
+#define TPS65219_REG_GPO1_SEQUENCE_SLOT			0x15
+#define TPS65219_REG_POWER_UP_SLOT_DURATION_1		0x16
+#define TPS65219_REG_POWER_UP_SLOT_DURATION_2		0x17
+#define TPS65219_REG_POWER_UP_SLOT_DURATION_3		0x18
+#define TPS65219_REG_POWER_UP_SLOT_DURATION_4		0x19
+#define TPS65219_REG_POWER_DOWN_SLOT_DURATION_1		0x1A
+#define TPS65219_REG_POWER_DOWN_SLOT_DURATION_2		0x1B
+#define TPS65219_REG_POWER_DOWN_SLOT_DURATION_3		0x1C
+#define TPS65219_REG_POWER_DOWN_SLOT_DURATION_4		0x1D
+#define TPS65219_REG_GENERAL_CONFIG			0x1E
+#define TPS65219_REG_MFP_1_CONFIG			0x1F
+#define TPS65219_REG_MFP_2_CONFIG			0x20
+#define TPS65219_REG_STBY_1_CONFIG			0x21
+#define TPS65219_REG_STBY_2_CONFIG			0x22
+#define TPS65219_REG_OC_DEGL_CONFIG			0x23
+/* 'sub irq' MASK registers */
+#define TPS65219_REG_INT_MASK_UV			0x24
+#define TPS65219_REG_MASK_CONFIG			0x25
+
+#define TPS65219_REG_I2C_ADDRESS_REG			0x26
+#define TPS65219_REG_USER_GENERAL_NVM_STORAGE		0x27
+#define TPS65219_REG_MANUFACTURING_VER			0x28
+#define TPS65219_REG_MFP_CTRL				0x29
+#define TPS65219_REG_DISCHARGE_CONFIG			0x2A
+/* main irq registers */
+#define TPS65219_REG_INT_SOURCE				0x2B
+/* 'sub irq' registers */
+#define TPS65219_REG_INT_LDO_3_4			0x2C
+#define TPS65219_REG_INT_LDO_1_2			0x2D
+#define TPS65219_REG_INT_BUCK_3				0x2E
+#define TPS65219_REG_INT_BUCK_1_2			0x2F
+#define TPS65219_REG_INT_SYSTEM				0x30
+#define TPS65219_REG_INT_RV				0x31
+#define TPS65219_REG_INT_TIMEOUT_RV_SD			0x32
+#define TPS65219_REG_INT_PB				0x33
+
+#define TPS65219_REG_INT_LDO_3_4_POS			0
+#define TPS65219_REG_INT_LDO_1_2_POS			1
+#define TPS65219_REG_INT_BUCK_3_POS			2
+#define TPS65219_REG_INT_BUCK_1_2_POS			3
+#define TPS65219_REG_INT_SYS_POS			4
+#define TPS65219_REG_INT_RV_POS				5
+#define TPS65219_REG_INT_TO_RV_POS			6
+#define TPS65219_REG_INT_PB_POS				7
+
+#define TPS65219_REG_USER_NVM_CMD			0x34
+#define TPS65219_REG_POWER_UP_STATUS			0x35
+#define TPS65219_REG_SPARE_2				0x36
+#define TPS65219_REG_SPARE_3				0x37
+#define TPS65219_REG_FACTORY_CONFIG_2			0x41
+
+/* Register field definitions */
+#define TPS65219_DEVID_REV_MASK				GENMASK(7, 0)
+#define TPS65219_BUCKS_LDOS_VOUT_VSET_MASK		GENMASK(5, 0)
+#define TPS65219_BUCKS_UV_THR_SEL_MASK			BIT(6)
+#define TPS65219_BUCKS_BW_SEL_MASK			BIT(7)
+#define LDO_BYP_SHIFT					6
+#define TPS65219_LDOS_BYP_CONFIG_MASK			BIT(LDO_BYP_SHIFT)
+#define TPS65219_LDOS_LSW_CONFIG_MASK			BIT(7)
+/* Regulators enable control */
+#define TPS65219_ENABLE_BUCK1_EN_MASK			BIT(0)
+#define TPS65219_ENABLE_BUCK2_EN_MASK			BIT(1)
+#define TPS65219_ENABLE_BUCK3_EN_MASK			BIT(2)
+#define TPS65219_ENABLE_LDO1_EN_MASK			BIT(3)
+#define TPS65219_ENABLE_LDO2_EN_MASK			BIT(4)
+#define TPS65219_ENABLE_LDO3_EN_MASK			BIT(5)
+#define TPS65219_ENABLE_LDO4_EN_MASK			BIT(6)
+/* power ON-OFF sequence slot */
+#define TPS65219_BUCKS_LDOS_SEQUENCE_OFF_SLOT_MASK	GENMASK(3, 0)
+#define TPS65219_BUCKS_LDOS_SEQUENCE_ON_SLOT_MASK	GENMASK(7, 4)
+/* TODO: Not needed, same mapping as TPS65219_ENABLE_REGNAME_EN, factorize */
+#define TPS65219_STBY1_BUCK1_STBY_EN_MASK		BIT(0)
+#define TPS65219_STBY1_BUCK2_STBY_EN_MASK		BIT(1)
+#define TPS65219_STBY1_BUCK3_STBY_EN_MASK		BIT(2)
+#define TPS65219_STBY1_LDO1_STBY_EN_MASK		BIT(3)
+#define TPS65219_STBY1_LDO2_STBY_EN_MASK		BIT(4)
+#define TPS65219_STBY1_LDO3_STBY_EN_MASK		BIT(5)
+#define TPS65219_STBY1_LDO4_STBY_EN_MASK		BIT(6)
+/* STBY_2 config */
+#define TPS65219_STBY2_GPO1_STBY_EN_MASK		BIT(0)
+#define TPS65219_STBY2_GPO2_STBY_EN_MASK		BIT(1)
+#define TPS65219_STBY2_GPIO_STBY_EN_MASK		BIT(2)
+/* MFP Control */
+#define TPS65219_MFP_I2C_OFF_REQ_MASK			BIT(0)
+#define TPS65219_MFP_STBY_I2C_CTRL_MASK			BIT(1)
+#define TPS65219_MFP_COLD_RESET_I2C_CTRL_MASK		BIT(2)
+#define TPS65219_MFP_WARM_RESET_I2C_CTRL_MASK		BIT(3)
+#define TPS65219_MFP_GPIO_STATUS_MASK			BIT(4)
+/* MFP_1 Config */
+#define TPS65219_MFP_1_VSEL_DDR_SEL_MASK		BIT(0)
+#define TPS65219_MFP_1_VSEL_SD_POL_MASK			BIT(1)
+#define TPS65219_MFP_1_VSEL_RAIL_MASK			BIT(2)
+/* MFP_2 Config */
+#define TPS65219_MFP_2_MODE_STBY_MASK			GENMASK(1, 0)
+#define TPS65219_MFP_2_MODE_RESET_MASK			BIT(2)
+#define TPS65219_MFP_2_EN_PB_VSENSE_DEGL_MASK		BIT(3)
+#define TPS65219_MFP_2_EN_PB_VSENSE_MASK		GENMASK(5, 4)
+#define TPS65219_MFP_2_WARM_COLD_RESET_MASK		BIT(6)
+#define TPS65219_MFP_2_PU_ON_FSD_MASK			BIT(7)
+#define TPS65219_MFP_2_EN				0
+#define TPS65219_MFP_2_PB				BIT(4)
+#define TPS65219_MFP_2_VSENSE				BIT(5)
+/* MASK_UV Config */
+#define TPS65219_REG_MASK_UV_LDO1_UV_MASK		BIT(0)
+#define TPS65219_REG_MASK_UV_LDO2_UV_MASK		BIT(1)
+#define TPS65219_REG_MASK_UV_LDO3_UV_MASK		BIT(2)
+#define TPS65219_REG_MASK_UV_LDO4_UV_MASK		BIT(3)
+#define TPS65219_REG_MASK_UV_BUCK1_UV_MASK		BIT(4)
+#define TPS65219_REG_MASK_UV_BUCK2_UV_MASK		BIT(5)
+#define TPS65219_REG_MASK_UV_BUCK3_UV_MASK		BIT(6)
+#define TPS65219_REG_MASK_UV_RETRY_MASK			BIT(7)
+/* MASK Config */
+// SENSOR_N_WARM_MASK already defined in Thermal
+#define TPS65219_REG_MASK_INT_FOR_RV_MASK		BIT(4)
+#define TPS65219_REG_MASK_EFFECT_MASK			GENMASK(2, 1)
+#define TPS65219_REG_MASK_INT_FOR_PB_MASK		BIT(7)
+/* UnderVoltage - Short to GND - OverCurrent*/
+/* LDO3-4 */
+#define TPS65219_INT_LDO3_SCG_MASK			BIT(0)
+#define TPS65219_INT_LDO3_OC_MASK			BIT(1)
+#define TPS65219_INT_LDO3_UV_MASK			BIT(2)
+#define TPS65219_INT_LDO4_SCG_MASK			BIT(3)
+#define TPS65219_INT_LDO4_OC_MASK			BIT(4)
+#define TPS65219_INT_LDO4_UV_MASK			BIT(5)
+/* LDO1-2 */
+#define TPS65219_INT_LDO1_SCG_MASK			BIT(0)
+#define TPS65219_INT_LDO1_OC_MASK			BIT(1)
+#define TPS65219_INT_LDO1_UV_MASK			BIT(2)
+#define TPS65219_INT_LDO2_SCG_MASK			BIT(3)
+#define TPS65219_INT_LDO2_OC_MASK			BIT(4)
+#define TPS65219_INT_LDO2_UV_MASK			BIT(5)
+/* BUCK3 */
+#define TPS65219_INT_BUCK3_SCG_MASK			BIT(0)
+#define TPS65219_INT_BUCK3_OC_MASK			BIT(1)
+#define TPS65219_INT_BUCK3_NEG_OC_MASK			BIT(2)
+#define TPS65219_INT_BUCK3_UV_MASK			BIT(3)
+/* BUCK1-2 */
+#define TPS65219_INT_BUCK1_SCG_MASK			BIT(0)
+#define TPS65219_INT_BUCK1_OC_MASK			BIT(1)
+#define TPS65219_INT_BUCK1_NEG_OC_MASK			BIT(2)
+#define TPS65219_INT_BUCK1_UV_MASK			BIT(3)
+#define TPS65219_INT_BUCK2_SCG_MASK			BIT(4)
+#define TPS65219_INT_BUCK2_OC_MASK			BIT(5)
+#define TPS65219_INT_BUCK2_NEG_OC_MASK			BIT(6)
+#define TPS65219_INT_BUCK2_UV_MASK			BIT(7)
+/* Thermal Sensor  */
+#define TPS65219_INT_SENSOR_3_WARM_MASK			BIT(0)
+#define TPS65219_INT_SENSOR_2_WARM_MASK			BIT(1)
+#define TPS65219_INT_SENSOR_1_WARM_MASK			BIT(2)
+#define TPS65219_INT_SENSOR_0_WARM_MASK			BIT(3)
+#define TPS65219_INT_SENSOR_3_HOT_MASK			BIT(4)
+#define TPS65219_INT_SENSOR_2_HOT_MASK			BIT(5)
+#define TPS65219_INT_SENSOR_1_HOT_MASK			BIT(6)
+#define TPS65219_INT_SENSOR_0_HOT_MASK			BIT(7)
+/* Residual Voltage */
+#define TPS65219_INT_BUCK1_RV_MASK			BIT(0)
+#define TPS65219_INT_BUCK2_RV_MASK			BIT(1)
+#define TPS65219_INT_BUCK3_RV_MASK			BIT(2)
+#define TPS65219_INT_LDO1_RV_MASK			BIT(3)
+#define TPS65219_INT_LDO2_RV_MASK			BIT(4)
+#define TPS65219_INT_LDO3_RV_MASK			BIT(5)
+#define TPS65219_INT_LDO4_RV_MASK			BIT(6)
+/* Residual Voltage ShutDown */
+#define TPS65219_INT_BUCK1_RV_SD_MASK			BIT(0)
+#define TPS65219_INT_BUCK2_RV_SD_MASK			BIT(1)
+#define TPS65219_INT_BUCK3_RV_SD_MASK			BIT(2)
+#define TPS65219_INT_LDO1_RV_SD_MASK			BIT(3)
+#define TPS65219_INT_LDO2_RV_SD_MASK			BIT(4)
+#define TPS65219_INT_LDO3_RV_SD_MASK			BIT(5)
+#define TPS65219_INT_LDO4_RV_SD_MASK			BIT(6)
+#define TPS65219_INT_TIMEOUT_MASK			BIT(7)
+/* Power Button */
+#define TPS65219_INT_PB_FALLING_EDGE_DETECT_MASK	BIT(0)
+#define TPS65219_INT_PB_RISING_EDGE_DETECT_MASK		BIT(1)
+#define TPS65219_INT_PB_REAL_TIME_STATUS_MASK		BIT(2)
+
+#define TPS65219_PB_POS					7
+#define TPS65219_TO_RV_POS				6
+#define TPS65219_RV_POS					5
+#define TPS65219_SYS_POS				4
+#define TPS65219_BUCK_1_2_POS				3
+#define TPS65219_BUCK_3_POS				2
+#define TPS65219_LDO_1_2_POS				1
+#define TPS65219_LDO_3_4_POS				0
+
+/* IRQs */
+enum {
+	/* LDO3-4 register IRQs */
+	TPS65219_INT_LDO3_SCG,
+	TPS65219_INT_LDO3_OC,
+	TPS65219_INT_LDO3_UV,
+	TPS65219_INT_LDO4_SCG,
+	TPS65219_INT_LDO4_OC,
+	TPS65219_INT_LDO4_UV,
+	/* LDO1-2 */
+	TPS65219_INT_LDO1_SCG,
+	TPS65219_INT_LDO1_OC,
+	TPS65219_INT_LDO1_UV,
+	TPS65219_INT_LDO2_SCG,
+	TPS65219_INT_LDO2_OC,
+	TPS65219_INT_LDO2_UV,
+	/* BUCK3 */
+	TPS65219_INT_BUCK3_SCG,
+	TPS65219_INT_BUCK3_OC,
+	TPS65219_INT_BUCK3_NEG_OC,
+	TPS65219_INT_BUCK3_UV,
+	/* BUCK1-2 */
+	TPS65219_INT_BUCK1_SCG,
+	TPS65219_INT_BUCK1_OC,
+	TPS65219_INT_BUCK1_NEG_OC,
+	TPS65219_INT_BUCK1_UV,
+	TPS65219_INT_BUCK2_SCG,
+	TPS65219_INT_BUCK2_OC,
+	TPS65219_INT_BUCK2_NEG_OC,
+	TPS65219_INT_BUCK2_UV,
+	/* Thermal Sensor  */
+	TPS65219_INT_SENSOR_3_WARM,
+	TPS65219_INT_SENSOR_2_WARM,
+	TPS65219_INT_SENSOR_1_WARM,
+	TPS65219_INT_SENSOR_0_WARM,
+	TPS65219_INT_SENSOR_3_HOT,
+	TPS65219_INT_SENSOR_2_HOT,
+	TPS65219_INT_SENSOR_1_HOT,
+	TPS65219_INT_SENSOR_0_HOT,
+	/* Residual Voltage */
+	TPS65219_INT_BUCK1_RV,
+	TPS65219_INT_BUCK2_RV,
+	TPS65219_INT_BUCK3_RV,
+	TPS65219_INT_LDO1_RV,
+	TPS65219_INT_LDO2_RV,
+	TPS65219_INT_LDO3_RV,
+	TPS65219_INT_LDO4_RV,
+	/* Residual Voltage ShutDown */
+	TPS65219_INT_BUCK1_RV_SD,
+	TPS65219_INT_BUCK2_RV_SD,
+	TPS65219_INT_BUCK3_RV_SD,
+	TPS65219_INT_LDO1_RV_SD,
+	TPS65219_INT_LDO2_RV_SD,
+	TPS65219_INT_LDO3_RV_SD,
+	TPS65219_INT_LDO4_RV_SD,
+	TPS65219_INT_TIMEOUT,
+	/* Power Button */
+	TPS65219_INT_PB_FALLING_EDGE_DETECT,
+	TPS65219_INT_PB_RISING_EDGE_DETECT,
+};
+
+enum tps65219_regulator_id {
+	/* DCDC's */
+	TPS65219_BUCK_1,
+	TPS65219_BUCK_2,
+	TPS65219_BUCK_3,
+	/* LDOs */
+	TPS65219_LDO_1,
+	TPS65219_LDO_2,
+	TPS65219_LDO_3,
+	TPS65219_LDO_4,
+};
+
+/* Number of step-down converters available */
+#define TPS65219_NUM_DCDC		3
+/* Number of LDO voltage regulators available */
+#define TPS65219_NUM_LDO		4
+/* Number of total regulators available */
+#define TPS65219_NUM_REGULATOR		(TPS65219_NUM_DCDC + TPS65219_NUM_LDO)
+
+/* Define the TPS65219 IRQ numbers */
+enum tps65219_irqs {
+	/* INT source registers */
+	TPS65219_TO_RV_SD_SET_IRQ,
+	TPS65219_RV_SET_IRQ,
+	TPS65219_SYS_SET_IRQ,
+	TPS65219_BUCK_1_2_SET_IRQ,
+	TPS65219_BUCK_3_SET_IRQ,
+	TPS65219_LDO_1_2_SET_IRQ,
+	TPS65219_LDO_3_4_SET_IRQ,
+	TPS65219_PB_SET_IRQ,
+};
+
+/**
+ * struct tps65219 - tps65219 sub-driver chip access routines
+ *
+ * Device data may be used to access the TPS65219 chip
+ *
+ * @dev: MFD device
+ * @regmap: Regmap for accessing the device registers
+ * @irq_data: Regmap irq data used for the irq chip
+ * @nb: notifier block for the restart handler
+ */
+struct tps65219 {
+	struct device *dev;
+	struct regmap *regmap;
+};
+
+#endif /* MFD_TPS65219_H */

-- 
2.39.5



