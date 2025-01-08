Delivery-date: Wed, 08 Jan 2025 16:25:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXve-000n6e-0D
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 16:25:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXvd-0004SU-HW
	for lore@pengutronix.de; Wed, 08 Jan 2025 16:25:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cN3Jy0ZwQhSx1ncIvey/L91+BFAXrm5htyu9jQtw9lc=; b=bjHAYF5nHWxR+o7YSinDMoOO1Q
	XwJ5G06jx95bI2lzEGqNxa8xjDqYqQYuxxoQ2ml+9Bvyys+cc73PvERZO+KbtkO5/a/KB3CrZa1IY
	fuzfiQMvx2mK4VF9PRE+qbiD3Un4GAZwDRJXfGIG68p5Wxt5kRs//zj9SfolSPwn5b5RPZD2hIsze
	pT/EQHaTzjxQbG9EXl7k080pLXMGwd52tMg1DUvA3JIoWRfQVmCdPh3D4N3aJpIKJoLTl0DCFulml
	EultYjrqkraADnYC0CbEg8bkfiF3aF7GZGyBmqt7re+SlJHOzIOE+x63YPKN6M3rst4TrrVcxe20j
	0pbBesNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXvB-00000008xF5-43ZP;
	Wed, 08 Jan 2025 15:24:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXv8-00000008xCf-0Bnx
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 15:24:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVXui-0003vv-TK; Wed, 08 Jan 2025 16:24:08 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVXuh-007Xmy-2x;
	Wed, 08 Jan 2025 16:24:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVXui-001Mmj-20;
	Wed, 08 Jan 2025 16:24:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 08 Jan 2025 16:24:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250108-k3-i2c-v1-3-cf088462217b@pengutronix.de>
References: <20250108-k3-i2c-v1-0-cf088462217b@pengutronix.de>
In-Reply-To: <20250108-k3-i2c-v1-0-cf088462217b@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736349848; l=8447;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=dYj5tFEmMSPu1qjH1ytYisr4QlLltHHMYnn5bzH7/6U=;
 b=oAQq5C4gZYmTjKggRsvuZS6d7dWIaUaGaNuO9ipkWn1k/w/LwGJ3WJTcSPl55UOwWUSjpfXfM
 CpZefBmB5vxDy5w6yTpSuUK6KBjiukI70bzGJPSJRwoBEHJTt2Y4BYR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_072434_242640_BC797391 
X-CRM114-Status: GOOD (  19.96  )
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
Subject: [PATCH 3/3] regulator: add tps65219 regulator support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for the regulators on the tps65219 PMIC. This driver
is based on the corresponding Linux driver, but limited to the barebox
regulator capabilities.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/Kconfig              |   4 +
 drivers/regulator/Makefile             |   1 +
 drivers/regulator/tps65219-regulator.c | 187 +++++++++++++++++++++++++++++++++
 3 files changed, 192 insertions(+)

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 54f27e1824..3374a511f8 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -58,6 +58,10 @@ config REGULATOR_STPMIC1
 	  an application processor as well as to external system
 	  peripherals such as DDR, Flash memories and system devices.
 
+config REGULATOR_TPS65219
+	tristate "TI TPS65219 Regulators"
+	depends on MFD_TPS65219
+
 config REGULATOR_ANATOP
 	tristate "Freescale i.MX on-chip ANATOP LDO regulators"
 	depends on MFD_SYSCON
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index 54ab6ef650..a6f5b5b734 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -11,3 +11,4 @@ obj-$(CONFIG_REGULATOR_STM32_PWR) += stm32-pwr.o
 obj-$(CONFIG_REGULATOR_STM32_VREFBUF) += stm32-vrefbuf.o
 obj-$(CONFIG_REGULATOR_ARM_SCMI) += scmi-regulator.o
 obj-$(CONFIG_REGULATOR_RK808)   += rk808-regulator.o
+obj-$(CONFIG_REGULATOR_TPS65219) += tps65219-regulator.o
diff --git a/drivers/regulator/tps65219-regulator.c b/drivers/regulator/tps65219-regulator.c
new file mode 100644
index 0000000000..f70fd64c67
--- /dev/null
+++ b/drivers/regulator/tps65219-regulator.c
@@ -0,0 +1,187 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// tps65219-regulator.c
+//
+// Regulator driver for TPS65219 PMIC
+//
+// Copyright (C) 2022 BayLibre Incorporated - https://www.baylibre.com/
+//
+// This implementation derived from tps65218 authored by
+// "J Keerthy <j-keerthy@ti.com>"
+//
+#define DEBUG
+#include <linux/mfd/tps65219.h>
+#include <of_device.h>
+#include <linux/regmap.h>
+#include <linux/regulator/of_regulator.h>
+#include <regulator.h>
+#include <linux/device.h>
+
+struct tps65219_regulator_irq_type {
+	const char *irq_name;
+	const char *regulator_name;
+	const char *event_name;
+	unsigned long event;
+};
+
+#define TPS65219_REGULATOR(_name, _of, _id, _type, _ops, _n, _vr, _vm, _er, \
+			   _em, _cr, _cm, _lr, _nlr, _delay, _fuv, \
+			   _ct, _ncl, _bpm) \
+	{								\
+		.name			= _name,			\
+		.of_match		= _of,				\
+		.regulators_node	= of_match_ptr("regulators"),	\
+		.supply_name		= _of,				\
+		.id			= _id,				\
+		.ops			= &(_ops),			\
+		.n_voltages		= _n,				\
+		.vsel_reg		= _vr,				\
+		.vsel_mask		= _vm,				\
+		.enable_reg		= _er,				\
+		.enable_mask		= _em,				\
+		.volt_table		= NULL,				\
+		.linear_ranges		= _lr,				\
+		.n_linear_ranges	= _nlr,				\
+		.fixed_uV		= _fuv,				\
+	}								\
+
+static const struct regulator_linear_range bucks_ranges[] = {
+	REGULATOR_LINEAR_RANGE(600000, 0x0, 0x1f, 25000),
+	REGULATOR_LINEAR_RANGE(1400000, 0x20, 0x33, 100000),
+	REGULATOR_LINEAR_RANGE(3400000, 0x34, 0x3f, 0),
+};
+
+static const struct regulator_linear_range ldos_1_2_ranges[] = {
+	REGULATOR_LINEAR_RANGE(600000, 0x0, 0x37, 50000),
+	REGULATOR_LINEAR_RANGE(3400000, 0x38, 0x3f, 0),
+};
+
+static const struct regulator_linear_range ldos_3_4_ranges[] = {
+	REGULATOR_LINEAR_RANGE(1200000, 0x0, 0xC, 0),
+	REGULATOR_LINEAR_RANGE(1250000, 0xD, 0x35, 50000),
+	REGULATOR_LINEAR_RANGE(3300000, 0x36, 0x3F, 0),
+};
+
+/* Operations permitted on BUCK1/2/3 */
+static const struct regulator_ops tps65219_bucks_ops = {
+	.is_enabled		= regulator_is_enabled_regmap,
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.list_voltage		= regulator_list_voltage_linear_range,
+	.map_voltage		= regulator_map_voltage_linear_range,
+};
+
+/* Operations permitted on LDO1/2 */
+static const struct regulator_ops tps65219_ldos_1_2_ops = {
+	.is_enabled		= regulator_is_enabled_regmap,
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.list_voltage		= regulator_list_voltage_linear_range,
+	.map_voltage		= regulator_map_voltage_linear_range,
+};
+
+/* Operations permitted on LDO3/4 */
+static const struct regulator_ops tps65219_ldos_3_4_ops = {
+	.is_enabled		= regulator_is_enabled_regmap,
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.list_voltage		= regulator_list_voltage_linear_range,
+	.map_voltage		= regulator_map_voltage_linear_range,
+};
+
+static const struct regulator_desc regulators[] = {
+	TPS65219_REGULATOR("BUCK1", "buck1", TPS65219_BUCK_1,
+			   REGULATOR_VOLTAGE, tps65219_bucks_ops, 64,
+			   TPS65219_REG_BUCK1_VOUT,
+			   TPS65219_BUCKS_LDOS_VOUT_VSET_MASK,
+			   TPS65219_REG_ENABLE_CTRL,
+			   TPS65219_ENABLE_BUCK1_EN_MASK, 0, 0, bucks_ranges,
+			   3, 4000, 0, NULL, 0, 0),
+	TPS65219_REGULATOR("BUCK2", "buck2", TPS65219_BUCK_2,
+			   REGULATOR_VOLTAGE, tps65219_bucks_ops, 64,
+			   TPS65219_REG_BUCK2_VOUT,
+			   TPS65219_BUCKS_LDOS_VOUT_VSET_MASK,
+			   TPS65219_REG_ENABLE_CTRL,
+			   TPS65219_ENABLE_BUCK2_EN_MASK, 0, 0, bucks_ranges,
+			   3, 4000, 0, NULL, 0, 0),
+	TPS65219_REGULATOR("BUCK3", "buck3", TPS65219_BUCK_3,
+			   REGULATOR_VOLTAGE, tps65219_bucks_ops, 64,
+			   TPS65219_REG_BUCK3_VOUT,
+			   TPS65219_BUCKS_LDOS_VOUT_VSET_MASK,
+			   TPS65219_REG_ENABLE_CTRL,
+			   TPS65219_ENABLE_BUCK3_EN_MASK, 0, 0, bucks_ranges,
+			   3, 0, 0, NULL, 0, 0),
+	TPS65219_REGULATOR("LDO1", "ldo1", TPS65219_LDO_1,
+			   REGULATOR_VOLTAGE, tps65219_ldos_1_2_ops, 64,
+			   TPS65219_REG_LDO1_VOUT,
+			   TPS65219_BUCKS_LDOS_VOUT_VSET_MASK,
+			   TPS65219_REG_ENABLE_CTRL,
+			   TPS65219_ENABLE_LDO1_EN_MASK, 0, 0, ldos_1_2_ranges,
+			   2, 0, 0, NULL, 0, TPS65219_LDOS_BYP_CONFIG_MASK),
+	TPS65219_REGULATOR("LDO2", "ldo2", TPS65219_LDO_2,
+			   REGULATOR_VOLTAGE, tps65219_ldos_1_2_ops, 64,
+			   TPS65219_REG_LDO2_VOUT,
+			   TPS65219_BUCKS_LDOS_VOUT_VSET_MASK,
+			   TPS65219_REG_ENABLE_CTRL,
+			   TPS65219_ENABLE_LDO2_EN_MASK, 0, 0, ldos_1_2_ranges,
+			   2, 0, 0, NULL, 0, TPS65219_LDOS_BYP_CONFIG_MASK),
+	TPS65219_REGULATOR("LDO3", "ldo3", TPS65219_LDO_3,
+			   REGULATOR_VOLTAGE, tps65219_ldos_3_4_ops, 64,
+			   TPS65219_REG_LDO3_VOUT,
+			   TPS65219_BUCKS_LDOS_VOUT_VSET_MASK,
+			   TPS65219_REG_ENABLE_CTRL,
+			   TPS65219_ENABLE_LDO3_EN_MASK, 0, 0, ldos_3_4_ranges,
+			   3, 0, 0, NULL, 0, 0),
+	TPS65219_REGULATOR("LDO4", "ldo4", TPS65219_LDO_4,
+			   REGULATOR_VOLTAGE, tps65219_ldos_3_4_ops, 64,
+			   TPS65219_REG_LDO4_VOUT,
+			   TPS65219_BUCKS_LDOS_VOUT_VSET_MASK,
+			   TPS65219_REG_ENABLE_CTRL,
+			   TPS65219_ENABLE_LDO4_EN_MASK, 0, 0, ldos_3_4_ranges,
+			   3, 0, 0, NULL, 0, 0),
+};
+
+static int tps65219_regulator_probe(struct device *dev)
+{
+	struct tps65219 *tps = dev->parent->priv;
+	struct regulator_dev *rdev;
+	struct regulator_config config = { };
+	int i;
+	struct regulator_dev *rdevtbl[7];
+
+	config.dev = tps->dev;
+	config.driver_data = tps;
+	config.regmap = tps->regmap;
+
+	for (i = 0; i < ARRAY_SIZE(regulators); i++) {
+		dev_dbg(tps->dev, "%s regul i= %d START\n", __func__, i);
+		rdev = regulator_register(tps->dev, &regulators[i],
+					       &config);
+		if (IS_ERR(rdev)) {
+			dev_err(tps->dev, "failed to register %s regulator\n",
+				regulators[i].name);
+			return PTR_ERR(rdev);
+		}
+		rdevtbl[i] = rdev;
+		dev_dbg(tps->dev, "%s regul i= %d COMPLETED\n", __func__, i);
+	}
+
+	return 0;
+}
+
+static struct driver tps65219_regulator_driver = {
+	.name = "tps65219-regulator",
+	.probe = tps65219_regulator_probe,
+};
+coredevice_platform_driver(tps65219_regulator_driver);
+
+MODULE_AUTHOR("Jerome Neanne <j-neanne@baylibre.com>");
+MODULE_DESCRIPTION("TPS65219 voltage regulator driver");
+MODULE_ALIAS("platform:tps65219-pmic");
+MODULE_LICENSE("GPL");

-- 
2.39.5



