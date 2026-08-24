Delivery-date: Mon, 24 Aug 2026 17:10:18 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyWJV-006jnV-36
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 17:10:18 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D43312010F4
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 17:10:13 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=PDTUEdHs;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RDD6i/Q08Wm6u4EUwN2upw3CVay92ltaSLa/vtJxXQM=; b=PDTUEdHstMjdAGKKDsi9BX+0vX
	N1aZX83A7bJtjc8bPZcxgfyxKKu+eQS7rtHLLq99lsPeP1fmOmh3zvk7cmZS5mx59wX6gEMRAFDvP
	fsDvnCLPWh41TIHClFooi5WwhuXdHzlm7F36dgOVcoMn78rapUv/82Cx/3sj2pJSdqmF5PmqLfLL9
	pIymrSx6AEA2lNE+7j2lYJnMgaDDCbt+KgZFA3fSY0DmLDVRP126+auXWE9sOy76Np/rpQooWR/Wi
	KFlPFAVngv2CNDIlRpjaK2l1HNKfS6OhL78lryBYMOvW1dUxvZ6Uls+2/0Uuq+8Sb1m7JDArIgYvb
	Kac53BqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyWHO-0000000Grqg-0C4c;
	Mon, 24 Aug 2026 15:08:06 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyWHJ-0000000Grof-2eoM
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 15:08:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 581432003DE;
	Mon, 24 Aug 2026 17:07:54 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wyWHC-0037uX-0f;
	Mon, 24 Aug 2026 17:07:54 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wyWHC-0000000HAgD-0Xw8;
	Mon, 24 Aug 2026 17:07:54 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 24 Aug 2026 17:07:48 +0200
Subject: [PATCH] regulator: pca9450: add pmic driver
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260824-feature-pca9450-pmic-v1-1-8db9945555ce@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAENejGoC/yXMQQrCMBBG4auUWTsQw9RWryIu4vinHcEaklaE0
 rsbdfkt3lupIBsKnZqVMl5W7DlV7HcN6RimAWy3avLOH1zvhSPCvGRw0nCU1nF6mHJU34lDG0W
 Uapoyor1/2/Pl77Jc79D5+6Jt+wCGFKdleAAAAA==
X-Change-ID: 20260824-feature-pca9450-pmic-fc2740e5f44c
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_080802_338024_F62877CE 
X-CRM114-Status: GOOD (  20.99  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Extend the existing mfd driver for the pca9450 pmic to provide
    proper regulator capabilties. The driver is based on the linux kernel driver
    and was modified for barebox. Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
    --- drivers/mfd/pca9450.c | 48 +- drivers/regulator/Kconfig | 7 + drivers/regulator/Makefile
    | 1 + drivers/regulator/pca9450-regulator.c | 87 [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: cse97ffr9yymhfa7p1p8jinpmmpctbg7
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: D43312010F4

Extend the existing mfd driver for the pca9450 pmic to provide proper
regulator capabilties. The driver is based on the linux kernel driver
and was modified for barebox.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/mfd/pca9450.c                 |  48 +-
 drivers/regulator/Kconfig             |   7 +
 drivers/regulator/Makefile            |   1 +
 drivers/regulator/pca9450-regulator.c | 871 ++++++++++++++++++++++++++++++++++
 include/mfd/pca9450.h                 | 230 +++++++++
 5 files changed, 1147 insertions(+), 10 deletions(-)

diff --git a/drivers/mfd/pca9450.c b/drivers/mfd/pca9450.c
index 5d5d3d8e01..523071bf12 100644
--- a/drivers/mfd/pca9450.c
+++ b/drivers/mfd/pca9450.c
@@ -8,6 +8,7 @@
 #include <errno.h>
 #include <i2c/i2c.h>
 #include <init.h>
+#include <linux/mfd/core.h>
 #include <mfd/pca9450.h>
 #include <of.h>
 #include <regmap.h>
@@ -24,6 +25,10 @@ static const struct regmap_config pca9450_regmap_i2c_config = {
 	.max_register = 0x2E,
 };
 
+static const struct mfd_cell pca9450_cells[] = {
+	{ .name = "pca9450-regulator", },
+};
+
 static int pca9450_get_reset_source(struct device *dev, struct regmap *map)
 {
 	enum reset_src_type type;
@@ -82,22 +87,34 @@ int pca9450_register_init_callback(void(*callback)(struct regmap *map))
 
 static int __init pca9450_probe(struct device *dev)
 {
+	struct pca9450 *pca9450;
 	struct regmap *regmap;
 	int reg;
 	int ret;
 
+	pca9450 = devm_kzalloc(dev, sizeof(*pca9450), GFP_KERNEL);
+	if (!pca9450)
+		return -ENOMEM;
+
+	pca9450->dev = dev;
+	pca9450->type = (enum pca9450_chip_type)(uintptr_t)device_get_match_data(dev);
+
 	regmap = regmap_init_i2c(to_i2c_client(dev), &pca9450_regmap_i2c_config);
-	if (IS_ERR(regmap))
-		return PTR_ERR(regmap);
+	if (IS_ERR(regmap)) {
+		ret = PTR_ERR(regmap);
+		goto free;
+	}
+
+	pca9450->regmap = regmap;
 
 	ret = regmap_register_cdev(regmap, NULL);
 	if (ret)
-		return ret;
+		goto free;
 
 	ret = regmap_read(regmap, PCA9450_REG_DEV_ID, &reg);
 	if (ret) {
 		dev_err(dev, "Unable to read PMIC Chip ID\n");
-		return ret;
+		goto free;
 	}
 
 	/* Chip ID defined in bits [7:4] */
@@ -117,16 +134,27 @@ static int __init pca9450_probe(struct device *dev)
 		pca9450_init_callback(regmap);
 	pca9450_map = regmap;
 
-	pca9450_get_reset_source(dev,regmap);
+	dev->priv = pca9450;
 
-	return of_platform_populate(dev->of_node, NULL, dev);
+	pca9450_get_reset_source(dev, regmap);
+
+	ret = mfd_add_devices(dev, pca9450_cells, ARRAY_SIZE(pca9450_cells));
+	if (ret)
+		goto free;
+
+	return 0;
+
+free:
+	free(pca9450);
+	return ret;
 }
 
 static __maybe_unused struct of_device_id pca9450_dt_ids[] = {
-	{ .compatible = "nxp,pca9450a" },
-	{ .compatible = "nxp,pca9450b" },
-	{ .compatible = "nxp,pca9450c" },
-	{ .compatible = "nxp,pca9451a" },
+	{ .compatible = "nxp,pca9450a", .data = (void *)PCA9450_TYPE_PCA9450A, },
+	{ .compatible = "nxp,pca9450b", .data = (void *)PCA9450_TYPE_PCA9450BC, },
+	{ .compatible = "nxp,pca9450c", .data = (void *)PCA9450_TYPE_PCA9450BC, },
+	{ .compatible = "nxp,pca9451a", .data = (void *)PCA9450_TYPE_PCA9451A, },
+	{ .compatible = "nxp,pca9452", .data = (void *)PCA9450_TYPE_PCA9452, },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, pca9450_dt_ids);
diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 3374a511f8..9b1a3fec98 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -90,4 +90,11 @@ config REGULATOR_RK808
 	  through regulator interface. The device supports multiple DCDC/LDO
 	  outputs which can be controlled by i2c communication.
 
+config REGULATOR_PCA9450
+	tristate "NXP PCA9450A/PCA9450B/PCA9450C regulator driver"
+	depends on MFD_PCA9450
+	help
+	  Say y here to support the NXP PCA9450A/PCA9450B/PCA9450C PMIC
+	  regulator driver.
+
 endif
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index a6f5b5b734..3569c1778c 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -12,3 +12,4 @@ obj-$(CONFIG_REGULATOR_STM32_VREFBUF) += stm32-vrefbuf.o
 obj-$(CONFIG_REGULATOR_ARM_SCMI) += scmi-regulator.o
 obj-$(CONFIG_REGULATOR_RK808)   += rk808-regulator.o
 obj-$(CONFIG_REGULATOR_TPS65219) += tps65219-regulator.o
+obj-$(CONFIG_REGULATOR_PCA9450)	+= pca9450-regulator.o
diff --git a/drivers/regulator/pca9450-regulator.c b/drivers/regulator/pca9450-regulator.c
new file mode 100644
index 0000000000..9f2d9f6f88
--- /dev/null
+++ b/drivers/regulator/pca9450-regulator.c
@@ -0,0 +1,871 @@
+// SPDX-License-Identifier: GPL-2.0
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/regulator/pca9450-regulator.c?id=fbef4191b4961c125585c715407e693f7d0024a9
+
+/*
+ * Copyright 2020 NXP.
+ * NXP PCA9450 pmic driver
+ */
+
+#include <i2c/i2c.h>
+#include <mfd/pca9450.h>
+#include <regulator.h>
+
+static const struct regulator_ops pca9450_dvs_buck_regulator_ops = {
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+	.list_voltage = regulator_list_voltage_linear_range,
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+	.get_voltage_sel = regulator_get_voltage_sel_regmap,
+};
+
+static const struct regulator_ops pca9450_buck_regulator_ops = {
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+	.list_voltage = regulator_list_voltage_linear_range,
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+	.get_voltage_sel = regulator_get_voltage_sel_regmap,
+};
+
+static const struct regulator_ops pca9450_ldo_regulator_ops = {
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+	.list_voltage = regulator_list_voltage_linear_range,
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+	.get_voltage_sel = regulator_get_voltage_sel_regmap,
+};
+
+static unsigned int pca9450_ldo5_get_reg_voltage_sel(struct regulator_dev *rdev)
+{
+	struct pca9450 *pca9450 = dev_get_drvdata(rdev->dev);
+
+	if (pca9450->sd_vsel_fixed_low)
+		return PCA9450_LDO5CTRL_L;
+
+	if (pca9450->sd_vsel_gpio && !gpiod_get_value(pca9450->sd_vsel_gpio))
+		return PCA9450_LDO5CTRL_L;
+
+	return rdev->desc->vsel_reg;
+}
+
+static int pca9450_ldo5_get_voltage_sel_regmap(struct regulator_dev *rdev)
+{
+	unsigned int val;
+	int ret;
+
+	ret = regmap_read(rdev->regmap, pca9450_ldo5_get_reg_voltage_sel(rdev), &val);
+	if (ret != 0)
+		return ret;
+
+	val &= rdev->desc->vsel_mask;
+	val >>= ffs(rdev->desc->vsel_mask) - 1;
+
+	return val;
+}
+
+static int pca9450_ldo5_set_voltage_sel_regmap(struct regulator_dev *rdev, unsigned int sel)
+{
+	int ret;
+
+	sel <<= ffs(rdev->desc->vsel_mask) - 1;
+
+	ret = regmap_update_bits(rdev->regmap, pca9450_ldo5_get_reg_voltage_sel(rdev),
+				  rdev->desc->vsel_mask, sel);
+	if (ret)
+		return ret;
+
+	if (rdev->desc->apply_bit)
+		ret = regmap_update_bits(rdev->regmap, rdev->desc->apply_reg,
+					 rdev->desc->apply_bit,
+					 rdev->desc->apply_bit);
+	return ret;
+}
+
+static const struct regulator_ops pca9450_ldo5_regulator_ops = {
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+	.list_voltage = regulator_list_voltage_linear_range,
+	.set_voltage_sel = pca9450_ldo5_set_voltage_sel_regmap,
+	.get_voltage_sel = pca9450_ldo5_get_voltage_sel_regmap,
+};
+
+/*
+ * BUCK1/2/3
+ * 0.60 to 2.1875V (12.5mV step)
+ */
+static const struct regulator_linear_range pca9450_dvs_buck_volts[] = {
+	REGULATOR_LINEAR_RANGE(600000,  0x00, 0x7F, 12500),
+};
+
+/*
+ * BUCK1/3
+ * 0.65 to 2.2375V (12.5mV step)
+ */
+static const struct regulator_linear_range pca9451a_dvs_buck_volts[] = {
+	REGULATOR_LINEAR_RANGE(650000, 0x00, 0x7F, 12500),
+};
+
+/*
+ * BUCK4/5/6
+ * 0.6V to 3.4V (25mV step)
+ */
+static const struct regulator_linear_range pca9450_buck_volts[] = {
+	REGULATOR_LINEAR_RANGE(600000, 0x00, 0x70, 25000),
+	REGULATOR_LINEAR_RANGE(3400000, 0x71, 0x7F, 0),
+};
+
+/*
+ * LDO1
+ * 1.6 to 3.3V ()
+ */
+static const struct regulator_linear_range pca9450_ldo1_volts[] = {
+	REGULATOR_LINEAR_RANGE(1600000, 0x00, 0x03, 100000),
+	REGULATOR_LINEAR_RANGE(3000000, 0x04, 0x07, 100000),
+};
+
+/*
+ * LDO2
+ * 0.8 to 1.15V (50mV step)
+ */
+static const struct regulator_linear_range pca9450_ldo2_volts[] = {
+	REGULATOR_LINEAR_RANGE(800000, 0x00, 0x07, 50000),
+};
+
+/*
+ * LDO3/4
+ * 0.8 to 3.3V (100mV step)
+ */
+static const struct regulator_linear_range pca9450_ldo34_volts[] = {
+	REGULATOR_LINEAR_RANGE(800000, 0x00, 0x19, 100000),
+	REGULATOR_LINEAR_RANGE(3300000, 0x1A, 0x1F, 0),
+};
+
+/*
+ * LDO5
+ * 1.8 to 3.3V (100mV step)
+ */
+static const struct regulator_linear_range pca9450_ldo5_volts[] = {
+	REGULATOR_LINEAR_RANGE(1800000,  0x00, 0x0F, 100000),
+};
+
+static struct regulator_desc pca9450a_regulators[] = {
+	{
+		.name = "buck1",
+		.supply_name = "inb13",
+		.of_match = of_match_ptr("BUCK1"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_BUCK1,
+		.ops = &pca9450_dvs_buck_regulator_ops,
+		.n_voltages = PCA9450_BUCK1_VOLTAGE_NUM,
+		.linear_ranges = pca9450_dvs_buck_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_dvs_buck_volts),
+		.vsel_reg = PCA9450_BUCK1OUT_DVS0,
+		.vsel_mask = BUCK1OUT_DVS0_MASK,
+		.enable_reg = PCA9450_BUCK1CTRL,
+		.enable_mask = BUCK1_ENMODE_MASK,
+		.enable_val = BUCK_ENMODE_ONREQ,
+	},
+	{
+		.name = "buck2",
+		.supply_name = "inb26",
+		.of_match = of_match_ptr("BUCK2"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_BUCK2,
+		.ops = &pca9450_dvs_buck_regulator_ops,
+		.n_voltages = PCA9450_BUCK2_VOLTAGE_NUM,
+		.linear_ranges = pca9450_dvs_buck_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_dvs_buck_volts),
+		.vsel_reg = PCA9450_BUCK2OUT_DVS0,
+		.vsel_mask = BUCK2OUT_DVS0_MASK,
+		.enable_reg = PCA9450_BUCK2CTRL,
+		.enable_mask = BUCK2_ENMODE_MASK,
+		.enable_val = BUCK_ENMODE_ONREQ_STBYREQ,
+	},
+	{
+		.name = "buck3",
+		.supply_name = "inb13",
+		.of_match = of_match_ptr("BUCK3"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_BUCK3,
+		.ops = &pca9450_dvs_buck_regulator_ops,
+		.n_voltages = PCA9450_BUCK3_VOLTAGE_NUM,
+		.linear_ranges = pca9450_dvs_buck_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_dvs_buck_volts),
+		.vsel_reg = PCA9450_BUCK3OUT_DVS0,
+		.vsel_mask = BUCK3OUT_DVS0_MASK,
+		.enable_reg = PCA9450_BUCK3CTRL,
+		.enable_mask = BUCK3_ENMODE_MASK,
+		.enable_val = BUCK_ENMODE_ONREQ,
+	},
+	{
+		.name = "buck4",
+		.supply_name = "inb45",
+		.of_match = of_match_ptr("BUCK4"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_BUCK4,
+		.ops = &pca9450_buck_regulator_ops,
+		.n_voltages = PCA9450_BUCK4_VOLTAGE_NUM,
+		.linear_ranges = pca9450_buck_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_buck_volts),
+		.vsel_reg = PCA9450_BUCK4OUT,
+		.vsel_mask = BUCK4OUT_MASK,
+		.enable_reg = PCA9450_BUCK4CTRL,
+		.enable_mask = BUCK4_ENMODE_MASK,
+		.enable_val = BUCK_ENMODE_ONREQ,
+	},
+	{
+		.name = "buck5",
+		.supply_name = "inb45",
+		.of_match = of_match_ptr("BUCK5"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_BUCK5,
+		.ops = &pca9450_buck_regulator_ops,
+		.n_voltages = PCA9450_BUCK5_VOLTAGE_NUM,
+		.linear_ranges = pca9450_buck_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_buck_volts),
+		.vsel_reg = PCA9450_BUCK5OUT,
+		.vsel_mask = BUCK5OUT_MASK,
+		.enable_reg = PCA9450_BUCK5CTRL,
+		.enable_mask = BUCK5_ENMODE_MASK,
+		.enable_val = BUCK_ENMODE_ONREQ,
+	},
+	{
+		.name = "buck6",
+		.supply_name = "inb26",
+		.of_match = of_match_ptr("BUCK6"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_BUCK6,
+		.ops = &pca9450_buck_regulator_ops,
+		.n_voltages = PCA9450_BUCK6_VOLTAGE_NUM,
+		.linear_ranges = pca9450_buck_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_buck_volts),
+		.vsel_reg = PCA9450_BUCK6OUT,
+		.vsel_mask = BUCK6OUT_MASK,
+		.enable_reg = PCA9450_BUCK6CTRL,
+		.enable_mask = BUCK6_ENMODE_MASK,
+		.enable_val = BUCK_ENMODE_ONREQ,
+	},
+	{
+		.name = "ldo1",
+		.supply_name = "inl1",
+		.of_match = of_match_ptr("LDO1"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_LDO1,
+		.ops = &pca9450_ldo_regulator_ops,
+		.n_voltages = PCA9450_LDO1_VOLTAGE_NUM,
+		.linear_ranges = pca9450_ldo1_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_ldo1_volts),
+		.vsel_reg = PCA9450_LDO1CTRL,
+		.vsel_mask = LDO1OUT_MASK,
+		.enable_reg = PCA9450_LDO1CTRL,
+		.enable_mask = LDO1_EN_MASK,
+	},
+	{
+		.name = "ldo2",
+		.supply_name = "inl1",
+		.of_match = of_match_ptr("LDO2"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_LDO2,
+		.ops = &pca9450_ldo_regulator_ops,
+		.n_voltages = PCA9450_LDO2_VOLTAGE_NUM,
+		.linear_ranges = pca9450_ldo2_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_ldo2_volts),
+		.vsel_reg = PCA9450_LDO2CTRL,
+		.vsel_mask = LDO2OUT_MASK,
+		.enable_reg = PCA9450_LDO2CTRL,
+		.enable_mask = LDO2_EN_MASK,
+	},
+	{
+		.name = "ldo3",
+		.supply_name = "inl1",
+		.of_match = of_match_ptr("LDO3"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_LDO3,
+		.ops = &pca9450_ldo_regulator_ops,
+		.n_voltages = PCA9450_LDO3_VOLTAGE_NUM,
+		.linear_ranges = pca9450_ldo34_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_ldo34_volts),
+		.vsel_reg = PCA9450_LDO3CTRL,
+		.vsel_mask = LDO3OUT_MASK,
+		.enable_reg = PCA9450_LDO3CTRL,
+		.enable_mask = LDO3_EN_MASK,
+	},
+	{
+		.name = "ldo4",
+		.supply_name = "inl1",
+		.of_match = of_match_ptr("LDO4"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_LDO4,
+		.ops = &pca9450_ldo_regulator_ops,
+		.n_voltages = PCA9450_LDO4_VOLTAGE_NUM,
+		.linear_ranges = pca9450_ldo34_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_ldo34_volts),
+		.vsel_reg = PCA9450_LDO4CTRL,
+		.vsel_mask = LDO4OUT_MASK,
+		.enable_reg = PCA9450_LDO4CTRL,
+		.enable_mask = LDO4_EN_MASK,
+	},
+	{
+		.name = "ldo5",
+		.supply_name = "inl1",
+		.of_match = of_match_ptr("LDO5"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_LDO5,
+		.ops = &pca9450_ldo5_regulator_ops,
+		.n_voltages = PCA9450_LDO5_VOLTAGE_NUM,
+		.linear_ranges = pca9450_ldo5_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_ldo5_volts),
+		.vsel_reg = PCA9450_LDO5CTRL_H,
+		.vsel_mask = LDO5HOUT_MASK,
+		.enable_reg = PCA9450_LDO5CTRL_L,
+		.enable_mask = LDO5H_EN_MASK,
+	},
+};
+
+/*
+ * Buck3 removed on PCA9450B and connected with Buck1 internal for dual phase
+ * on PCA9450C as no Buck3.
+ */
+static struct regulator_desc pca9450bc_regulators[] = {
+	{
+		.name = "buck1",
+		.supply_name = "inb13",
+		.of_match = of_match_ptr("BUCK1"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_BUCK1,
+		.ops = &pca9450_dvs_buck_regulator_ops,
+		.n_voltages = PCA9450_BUCK1_VOLTAGE_NUM,
+		.linear_ranges = pca9450_dvs_buck_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_dvs_buck_volts),
+		.vsel_reg = PCA9450_BUCK1OUT_DVS0,
+		.vsel_mask = BUCK1OUT_DVS0_MASK,
+		.enable_reg = PCA9450_BUCK1CTRL,
+		.enable_mask = BUCK1_ENMODE_MASK,
+		.enable_val = BUCK_ENMODE_ONREQ,
+	},
+	{
+		.name = "buck2",
+		.supply_name = "inb26",
+		.of_match = of_match_ptr("BUCK2"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_BUCK2,
+		.ops = &pca9450_dvs_buck_regulator_ops,
+		.n_voltages = PCA9450_BUCK2_VOLTAGE_NUM,
+		.linear_ranges = pca9450_dvs_buck_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_dvs_buck_volts),
+		.vsel_reg = PCA9450_BUCK2OUT_DVS0,
+		.vsel_mask = BUCK2OUT_DVS0_MASK,
+		.enable_reg = PCA9450_BUCK2CTRL,
+		.enable_mask = BUCK2_ENMODE_MASK,
+		.enable_val = BUCK_ENMODE_ONREQ_STBYREQ,
+	},
+	{
+		.name = "buck4",
+		.supply_name = "inb45",
+		.of_match = of_match_ptr("BUCK4"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_BUCK4,
+		.ops = &pca9450_buck_regulator_ops,
+		.n_voltages = PCA9450_BUCK4_VOLTAGE_NUM,
+		.linear_ranges = pca9450_buck_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_buck_volts),
+		.vsel_reg = PCA9450_BUCK4OUT,
+		.vsel_mask = BUCK4OUT_MASK,
+		.enable_reg = PCA9450_BUCK4CTRL,
+		.enable_mask = BUCK4_ENMODE_MASK,
+		.enable_val = BUCK_ENMODE_ONREQ,
+	},
+	{
+		.name = "buck5",
+		.supply_name = "inb45",
+		.of_match = of_match_ptr("BUCK5"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_BUCK5,
+		.ops = &pca9450_buck_regulator_ops,
+		.n_voltages = PCA9450_BUCK5_VOLTAGE_NUM,
+		.linear_ranges = pca9450_buck_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_buck_volts),
+		.vsel_reg = PCA9450_BUCK5OUT,
+		.vsel_mask = BUCK5OUT_MASK,
+		.enable_reg = PCA9450_BUCK5CTRL,
+		.enable_mask = BUCK5_ENMODE_MASK,
+		.enable_val = BUCK_ENMODE_ONREQ,
+	},
+	{
+		.name = "buck6",
+		.supply_name = "inb26",
+		.of_match = of_match_ptr("BUCK6"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_BUCK6,
+		.ops = &pca9450_buck_regulator_ops,
+		.n_voltages = PCA9450_BUCK6_VOLTAGE_NUM,
+		.linear_ranges = pca9450_buck_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_buck_volts),
+		.vsel_reg = PCA9450_BUCK6OUT,
+		.vsel_mask = BUCK6OUT_MASK,
+		.enable_reg = PCA9450_BUCK6CTRL,
+		.enable_mask = BUCK6_ENMODE_MASK,
+		.enable_val = BUCK_ENMODE_ONREQ,
+	},
+	{
+		.name = "ldo1",
+		.supply_name = "inl1",
+		.of_match = of_match_ptr("LDO1"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_LDO1,
+		.ops = &pca9450_ldo_regulator_ops,
+		.n_voltages = PCA9450_LDO1_VOLTAGE_NUM,
+		.linear_ranges = pca9450_ldo1_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_ldo1_volts),
+		.vsel_reg = PCA9450_LDO1CTRL,
+		.vsel_mask = LDO1OUT_MASK,
+		.enable_reg = PCA9450_LDO1CTRL,
+		.enable_mask = LDO1_EN_MASK,
+	},
+	{
+		.name = "ldo2",
+		.supply_name = "inl1",
+		.of_match = of_match_ptr("LDO2"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_LDO2,
+		.ops = &pca9450_ldo_regulator_ops,
+		.n_voltages = PCA9450_LDO2_VOLTAGE_NUM,
+		.linear_ranges = pca9450_ldo2_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_ldo2_volts),
+		.vsel_reg = PCA9450_LDO2CTRL,
+		.vsel_mask = LDO2OUT_MASK,
+		.enable_reg = PCA9450_LDO2CTRL,
+		.enable_mask = LDO2_EN_MASK,
+	},
+	{
+		.name = "ldo3",
+		.supply_name = "inl1",
+		.of_match = of_match_ptr("LDO3"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_LDO3,
+		.ops = &pca9450_ldo_regulator_ops,
+		.n_voltages = PCA9450_LDO3_VOLTAGE_NUM,
+		.linear_ranges = pca9450_ldo34_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_ldo34_volts),
+		.vsel_reg = PCA9450_LDO3CTRL,
+		.vsel_mask = LDO3OUT_MASK,
+		.enable_reg = PCA9450_LDO3CTRL,
+		.enable_mask = LDO3_EN_MASK,
+	},
+	{
+		.name = "ldo4",
+		.supply_name = "inl1",
+		.of_match = of_match_ptr("LDO4"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_LDO4,
+		.ops = &pca9450_ldo_regulator_ops,
+		.n_voltages = PCA9450_LDO4_VOLTAGE_NUM,
+		.linear_ranges = pca9450_ldo34_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_ldo34_volts),
+		.vsel_reg = PCA9450_LDO4CTRL,
+		.vsel_mask = LDO4OUT_MASK,
+		.enable_reg = PCA9450_LDO4CTRL,
+		.enable_mask = LDO4_EN_MASK,
+	},
+	{
+		.name = "ldo5",
+		.supply_name = "inl1",
+		.of_match = of_match_ptr("LDO5"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_LDO5,
+		.ops = &pca9450_ldo5_regulator_ops,
+		.n_voltages = PCA9450_LDO5_VOLTAGE_NUM,
+		.linear_ranges = pca9450_ldo5_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_ldo5_volts),
+		.vsel_reg = PCA9450_LDO5CTRL_H,
+		.vsel_mask = LDO5HOUT_MASK,
+		.enable_reg = PCA9450_LDO5CTRL_L,
+		.enable_mask = LDO5H_EN_MASK,
+	},
+};
+
+static struct regulator_desc pca9451a_regulators[] = {
+	{
+		.name = "buck1",
+		.supply_name = "inb13",
+		.of_match = of_match_ptr("BUCK1"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_BUCK1,
+		.ops = &pca9450_dvs_buck_regulator_ops,
+		.n_voltages = PCA9450_BUCK1_VOLTAGE_NUM,
+		.linear_ranges = pca9451a_dvs_buck_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9451a_dvs_buck_volts),
+		.vsel_reg = PCA9450_BUCK1OUT_DVS0,
+		.vsel_mask = BUCK1OUT_DVS0_MASK,
+		.enable_reg = PCA9450_BUCK1CTRL,
+		.enable_mask = BUCK1_ENMODE_MASK,
+		.enable_val = BUCK_ENMODE_ONREQ,
+	},
+	{
+		.name = "buck2",
+		.supply_name = "inb26",
+		.of_match = of_match_ptr("BUCK2"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_BUCK2,
+		.ops = &pca9450_dvs_buck_regulator_ops,
+		.n_voltages = PCA9450_BUCK2_VOLTAGE_NUM,
+		.linear_ranges = pca9450_dvs_buck_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_dvs_buck_volts),
+		.vsel_reg = PCA9450_BUCK2OUT_DVS0,
+		.vsel_mask = BUCK2OUT_DVS0_MASK,
+		.enable_reg = PCA9450_BUCK2CTRL,
+		.enable_mask = BUCK2_ENMODE_MASK,
+		.enable_val = BUCK_ENMODE_ONREQ_STBYREQ,
+	},
+	{
+		.name = "buck4",
+		.supply_name = "inb45",
+		.of_match = of_match_ptr("BUCK4"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_BUCK4,
+		.ops = &pca9450_buck_regulator_ops,
+		.n_voltages = PCA9450_BUCK4_VOLTAGE_NUM,
+		.linear_ranges = pca9450_buck_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_buck_volts),
+		.vsel_reg = PCA9450_BUCK4OUT,
+		.vsel_mask = BUCK4OUT_MASK,
+		.enable_reg = PCA9450_BUCK4CTRL,
+		.enable_mask = BUCK4_ENMODE_MASK,
+		.enable_val = BUCK_ENMODE_ONREQ,
+	},
+	{
+		.name = "buck5",
+		.supply_name = "inb45",
+		.of_match = of_match_ptr("BUCK5"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_BUCK5,
+		.ops = &pca9450_buck_regulator_ops,
+		.n_voltages = PCA9450_BUCK5_VOLTAGE_NUM,
+		.linear_ranges = pca9450_buck_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_buck_volts),
+		.vsel_reg = PCA9450_BUCK5OUT,
+		.vsel_mask = BUCK5OUT_MASK,
+		.enable_reg = PCA9450_BUCK5CTRL,
+		.enable_mask = BUCK5_ENMODE_MASK,
+		.enable_val = BUCK_ENMODE_ONREQ,
+	},
+	{
+		.name = "buck6",
+		.supply_name = "inb26",
+		.of_match = of_match_ptr("BUCK6"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_BUCK6,
+		.ops = &pca9450_buck_regulator_ops,
+		.n_voltages = PCA9450_BUCK6_VOLTAGE_NUM,
+		.linear_ranges = pca9450_buck_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_buck_volts),
+		.vsel_reg = PCA9450_BUCK6OUT,
+		.vsel_mask = BUCK6OUT_MASK,
+		.enable_reg = PCA9450_BUCK6CTRL,
+		.enable_mask = BUCK6_ENMODE_MASK,
+		.enable_val = BUCK_ENMODE_ONREQ,
+	},
+	{
+		.name = "ldo1",
+		.supply_name = "inl1",
+		.of_match = of_match_ptr("LDO1"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_LDO1,
+		.ops = &pca9450_ldo_regulator_ops,
+		.n_voltages = PCA9450_LDO1_VOLTAGE_NUM,
+		.linear_ranges = pca9450_ldo1_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_ldo1_volts),
+		.vsel_reg = PCA9450_LDO1CTRL,
+		.vsel_mask = LDO1OUT_MASK,
+		.enable_reg = PCA9450_LDO1CTRL,
+		.enable_mask = LDO1_EN_MASK,
+	},
+	{
+		.name = "ldo3",
+		.supply_name = "inl1",
+		.of_match = of_match_ptr("LDO3"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_LDO3,
+		.ops = &pca9450_ldo_regulator_ops,
+		.n_voltages = PCA9450_LDO3_VOLTAGE_NUM,
+		.linear_ranges = pca9450_ldo34_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_ldo34_volts),
+		.vsel_reg = PCA9450_LDO3CTRL,
+		.vsel_mask = LDO3OUT_MASK,
+		.enable_reg = PCA9450_LDO3CTRL,
+		.enable_mask = LDO3_EN_MASK,
+	},
+	{
+		.name = "ldo4",
+		.supply_name = "inl1",
+		.of_match = of_match_ptr("LDO4"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_LDO4,
+		.ops = &pca9450_ldo_regulator_ops,
+		.n_voltages = PCA9450_LDO4_VOLTAGE_NUM,
+		.linear_ranges = pca9450_ldo34_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_ldo34_volts),
+		.vsel_reg = PCA9450_LDO4CTRL,
+		.vsel_mask = LDO4OUT_MASK,
+		.enable_reg = PCA9450_LDO4CTRL,
+		.enable_mask = LDO4_EN_MASK,
+	},
+	{
+		.name = "ldo5",
+		.supply_name = "inl1",
+		.of_match = of_match_ptr("LDO5"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = PCA9450_LDO5,
+		.ops = &pca9450_ldo5_regulator_ops,
+		.n_voltages = PCA9450_LDO5_VOLTAGE_NUM,
+		.linear_ranges = pca9450_ldo5_volts,
+		.n_linear_ranges = ARRAY_SIZE(pca9450_ldo5_volts),
+		.vsel_reg = PCA9450_LDO5CTRL_H,
+		.vsel_mask = LDO5HOUT_MASK,
+		.enable_reg = PCA9450_LDO5CTRL_L,
+		.enable_mask = LDO5H_EN_MASK,
+	},
+};
+
+static int pca9450_of_init(struct pca9450 *pca9450)
+{
+	struct i2c_client *i2c = container_of(pca9450->dev, struct i2c_client, dev);
+	int ret;
+	unsigned int val;
+	unsigned int rstb_deb_ctrl;
+	unsigned int t_on_deb, t_off_deb;
+	unsigned int t_on_step, t_off_step;
+	unsigned int t_restart;
+
+	ret = of_property_read_u32(i2c->dev.of_node, "npx,pmic-rst-b-debounce-ms", &val);
+	if (ret == -EINVAL)
+		rstb_deb_ctrl = T_PMIC_RST_DEB_50MS;
+	else if (ret)
+		return ret;
+	else {
+		switch (val) {
+		case 10: rstb_deb_ctrl = T_PMIC_RST_DEB_10MS; break;
+		case 50: rstb_deb_ctrl = T_PMIC_RST_DEB_50MS; break;
+		case 100: rstb_deb_ctrl = T_PMIC_RST_DEB_100MS; break;
+		case 500: rstb_deb_ctrl = T_PMIC_RST_DEB_500MS; break;
+		case 1000: rstb_deb_ctrl = T_PMIC_RST_DEB_1S; break;
+		case 2000: rstb_deb_ctrl = T_PMIC_RST_DEB_2S; break;
+		case 4000: rstb_deb_ctrl = T_PMIC_RST_DEB_4S; break;
+		case 8000: rstb_deb_ctrl = T_PMIC_RST_DEB_8S; break;
+		default: return -EINVAL;
+		}
+	}
+	ret = regmap_update_bits(pca9450->regmap, PCA9450_RESET_CTRL,
+				 T_PMIC_RST_DEB_MASK, rstb_deb_ctrl);
+	if (ret)
+		return dev_err_probe(&i2c->dev, ret, "Failed to set PMIC_RST_B debounce time\n");
+
+	ret = of_property_read_u32(i2c->dev.of_node, "nxp,pmic-on-req-on-debounce-us", &val);
+	if (ret == -EINVAL)
+		t_on_deb = T_ON_DEB_20MS;
+	else if (ret)
+		return ret;
+	else {
+		switch (val) {
+		case 120: t_on_deb = T_ON_DEB_120US; break;
+		case 20000: t_on_deb = T_ON_DEB_20MS; break;
+		case 100000: t_on_deb = T_ON_DEB_100MS; break;
+		case 750000: t_on_deb = T_ON_DEB_750MS; break;
+		default: return -EINVAL;
+		}
+	}
+
+	ret = of_property_read_u32(i2c->dev.of_node, "nxp,pmic-on-req-off-debounce-us", &val);
+	if (ret == -EINVAL)
+		t_off_deb = pca9450->default_t_off_deb;
+	else if (ret)
+		return ret;
+	else {
+		switch (val) {
+		case 120: t_off_deb = T_OFF_DEB_120US; break;
+		case 2000: t_off_deb = T_OFF_DEB_2MS; break;
+		default: return -EINVAL;
+		}
+	}
+
+	ret = of_property_read_u32(i2c->dev.of_node, "nxp,power-on-step-ms", &val);
+	if (ret == -EINVAL)
+		t_on_step = T_ON_STEP_2MS;
+	else if (ret)
+		return ret;
+	else {
+		switch (val) {
+		case 1: t_on_step = T_ON_STEP_1MS; break;
+		case 2: t_on_step = T_ON_STEP_2MS; break;
+		case 4: t_on_step = T_ON_STEP_4MS; break;
+		case 8: t_on_step = T_ON_STEP_8MS; break;
+		default: return -EINVAL;
+		}
+	}
+
+	ret = of_property_read_u32(i2c->dev.of_node, "nxp,power-down-step-ms", &val);
+	if (ret == -EINVAL)
+		t_off_step = T_OFF_STEP_8MS;
+	else if (ret)
+		return ret;
+	else {
+		switch (val) {
+		case 2: t_off_step = T_OFF_STEP_2MS; break;
+		case 4: t_off_step = T_OFF_STEP_4MS; break;
+		case 8: t_off_step = T_OFF_STEP_8MS; break;
+		case 16: t_off_step = T_OFF_STEP_16MS; break;
+		default: return -EINVAL;
+		}
+	}
+
+	ret = of_property_read_u32(i2c->dev.of_node, "nxp,restart-ms", &val);
+	if (ret == -EINVAL)
+		t_restart = T_RESTART_250MS;
+	else if (ret)
+		return ret;
+	else {
+		switch (val) {
+		case 250: t_restart = T_RESTART_250MS; break;
+		case 500: t_restart = T_RESTART_500MS; break;
+		default: return -EINVAL;
+		}
+	}
+
+	ret = regmap_update_bits(pca9450->regmap, PCA9450_PWR_CTRL,
+				 T_ON_DEB_MASK | T_OFF_DEB_MASK | T_ON_STEP_MASK |
+				 T_OFF_STEP_MASK | T_RESTART_MASK,
+				 t_on_deb | t_off_deb | t_on_step |
+				 t_off_step | t_restart);
+	if (ret)
+		return dev_err_probe(&i2c->dev, ret,
+				     "Failed to set PWR_CTRL debounce configuration\n");
+
+	if (of_property_read_bool(i2c->dev.of_node, "nxp,i2c-lt-enable")) {
+		/* Enable I2C Level Translator */
+		ret = regmap_update_bits(pca9450->regmap, PCA9450_CONFIG2,
+					 I2C_LT_MASK, I2C_LT_ON_STANDBY_RUN);
+		if (ret)
+			return dev_err_probe(&i2c->dev, ret,
+					     "Failed to enable I2C level translator\n");
+	}
+
+	return 0;
+}
+
+static int pca9450_regulator_probe(struct device *dev)
+{
+	struct pca9450 *pca9450 = dev->parent->priv;
+	enum pca9450_chip_type type = pca9450->type;
+	const struct regulator_desc *regulator_desc;
+	struct regulator_config config = { };
+	struct regulator_dev *ldo5 = NULL;
+	unsigned int device_id, i;
+	const char *type_name;
+	int ret;
+
+	switch (type) {
+	case PCA9450_TYPE_PCA9450A:
+		regulator_desc = pca9450a_regulators;
+		pca9450->rcnt = ARRAY_SIZE(pca9450a_regulators);
+		pca9450->default_t_off_deb = T_OFF_DEB_120US;
+		type_name = "pca9450a";
+		break;
+	case PCA9450_TYPE_PCA9450BC:
+		regulator_desc = pca9450bc_regulators;
+		pca9450->rcnt = ARRAY_SIZE(pca9450bc_regulators);
+		pca9450->default_t_off_deb = T_OFF_DEB_120US;
+		type_name = "pca9450bc";
+		break;
+	case PCA9450_TYPE_PCA9451A:
+		regulator_desc = pca9451a_regulators;
+		pca9450->rcnt = ARRAY_SIZE(pca9451a_regulators);
+		pca9450->default_t_off_deb = T_OFF_DEB_2MS;
+		type_name = "pca9451a";
+		break;
+	case PCA9450_TYPE_PCA9452:
+		regulator_desc = pca9451a_regulators;
+		pca9450->rcnt = ARRAY_SIZE(pca9451a_regulators);
+		pca9450->default_t_off_deb = T_OFF_DEB_2MS;
+		type_name = "pca9452";
+		break;
+	default:
+		dev_err(pca9450->dev, "Unknown device type");
+		return -EINVAL;
+	}
+
+	ret = regmap_read(pca9450->regmap, PCA9450_REG_DEV_ID, &device_id);
+	if (ret)
+		return dev_err_probe(pca9450->dev, ret, "Read device id error\n");
+
+	/* Check your board and dts for match the right pmic */
+	if (((device_id >> 4) != 0x1 && type == PCA9450_TYPE_PCA9450A) ||
+	    ((device_id >> 4) != 0x3 && type == PCA9450_TYPE_PCA9450BC) ||
+	    ((device_id >> 4) != 0x9 && type == PCA9450_TYPE_PCA9451A) ||
+	    ((device_id >> 4) != 0x9 && type == PCA9450_TYPE_PCA9452))
+		return dev_err_probe(pca9450->dev, -EINVAL,
+				     "Device id(%x) mismatched\n", device_id >> 4);
+
+	for (i = 0; i < pca9450->rcnt; i++) {
+		const struct regulator_desc *desc = &regulator_desc[i];
+		struct regulator_dev *rdev;
+
+		if (type == PCA9450_TYPE_PCA9451A && !strcmp(desc->name, "ldo3"))
+			continue;
+
+		config.regmap = pca9450->regmap;
+		config.dev = pca9450->dev;
+		config.driver_data = pca9450;
+
+		rdev = regulator_register(pca9450->dev, desc, &config);
+		if (!rdev)
+			return dev_err_probe(pca9450->dev, -EINVAL,
+					     "Failed to register regulator(%s)\n", desc->name);
+
+		if (!strcmp(desc->name, "ldo5"))
+			ldo5 = rdev;
+	}
+
+	/* Clear PRESET_EN bit in BUCK123_DVS to use DVS registers */
+	ret = regmap_clear_bits(pca9450->regmap, PCA9450_BUCK123_DVS,
+				BUCK123_PRESET_EN);
+	if (ret)
+		return dev_err_probe(pca9450->dev, ret,  "Failed to clear PRESET_EN bit\n");
+
+	ret = pca9450_of_init(pca9450);
+	if (ret)
+		return dev_err_probe(pca9450->dev, ret, "Unable to parse OF data\n");
+
+	/*
+	 * For LDO5 we need to be able to check the status of the SD_VSEL input in
+	 * order to know which control register is used. Most boards connect SD_VSEL
+	 * to the VSELECT signal, so we can use the GPIO that is internally routed
+	 * to this signal (if SION bit is set in IOMUX).
+	 */
+	pca9450->sd_vsel_gpio = dev_gpiod_get_index(ldo5->dev, ldo5->node,
+						    "sd-vsel", 0, GPIOD_IN, NULL);
+	if (gpiod_not_found(pca9450->sd_vsel_gpio))
+		pca9450->sd_vsel_gpio = NULL;
+	else if (IS_ERR(pca9450->sd_vsel_gpio))
+		return dev_err_probe(pca9450->dev, PTR_ERR(pca9450->sd_vsel_gpio),
+				     "Failed to get SD_VSEL GPIO\n");
+
+	pca9450->sd_vsel_fixed_low =
+		of_property_read_bool(ldo5->dev->of_node, "nxp,sd-vsel-fixed-low");
+
+	dev_info(pca9450->dev, "%s probed.\n", type_name);
+
+	return 0;
+}
+
+static struct driver pca9450_regulator_driver = {
+	.name = "pca9450-regulator",
+	.probe = pca9450_regulator_probe,
+};
+coredevice_platform_driver(pca9450_regulator_driver);
+
+MODULE_AUTHOR("Robin Gong <yibin.gong@nxp.com>");
+MODULE_DESCRIPTION("NXP PCA9450 Power Management IC driver");
+MODULE_LICENSE("GPL");
diff --git a/include/mfd/pca9450.h b/include/mfd/pca9450.h
index af10e40985..02d38557d2 100644
--- a/include/mfd/pca9450.h
+++ b/include/mfd/pca9450.h
@@ -6,8 +6,28 @@
 #ifndef PCA9450_H_
 #define PCA9450_H_
 
+#include <linux/device.h>
+#include <linux/gpio/consumer.h>
 #include <linux/regmap.h>
 
+enum pca9450_chip_type {
+	PCA9450_TYPE_PCA9450A = 0,
+	PCA9450_TYPE_PCA9450BC,
+	PCA9450_TYPE_PCA9451A,
+	PCA9450_TYPE_PCA9452,
+	PCA9450_TYPE_AMOUNT,
+};
+
+struct pca9450 {
+	struct device *dev;
+	struct regmap *regmap;
+	enum pca9450_chip_type type;
+	unsigned int rcnt;
+	struct gpio_desc *sd_vsel_gpio;
+	bool sd_vsel_fixed_low;
+	int default_t_off_deb;
+};
+
 enum {
 	PCA9450_REG_DEV_ID      = 0x00,
 	PCA9450_INT1            = 0x01,
@@ -54,6 +74,216 @@ enum {
 	PCA9450_REG_NUM,
 };
 
+enum {
+	PCA9450_BUCK1 = 0,
+	PCA9450_BUCK2,
+	PCA9450_BUCK3,
+	PCA9450_BUCK4,
+	PCA9450_BUCK5,
+	PCA9450_BUCK6,
+	PCA9450_LDO1,
+	PCA9450_LDO2,
+	PCA9450_LDO3,
+	PCA9450_LDO4,
+	PCA9450_LDO5,
+	PCA9450_REGULATOR_CNT,
+};
+
+enum {
+	PCA9450_DVS_LEVEL_RUN = 0,
+	PCA9450_DVS_LEVEL_STANDBY,
+	PCA9450_DVS_LEVEL_MAX,
+};
+
+#define PCA9450_BUCK1_VOLTAGE_NUM	0x80
+#define PCA9450_BUCK2_VOLTAGE_NUM	0x80
+#define PCA9450_BUCK3_VOLTAGE_NUM	0x80
+#define PCA9450_BUCK4_VOLTAGE_NUM	0x80
+
+#define PCA9450_BUCK5_VOLTAGE_NUM	0x80
+#define PCA9450_BUCK6_VOLTAGE_NUM	0x80
+
+#define PCA9450_LDO1_VOLTAGE_NUM	0x08
+#define PCA9450_LDO2_VOLTAGE_NUM	0x08
+#define PCA9450_LDO3_VOLTAGE_NUM	0x20
+#define PCA9450_LDO4_VOLTAGE_NUM	0x20
+#define PCA9450_LDO5_VOLTAGE_NUM	0x10
+
+/* PCA9450 BUCK ENMODE bits */
+#define BUCK_ENMODE_OFF			0x00
+#define BUCK_ENMODE_ONREQ		0x01
+#define BUCK_ENMODE_ONREQ_STBYREQ	0x02
+#define BUCK_ENMODE_ON			0x03
+
+/* PCA9450_REG_BUCK1_CTRL bits */
+#define BUCK1_RAMP_MASK			0xC0
+#define BUCK1_RAMP_25MV			0x0
+#define BUCK1_RAMP_12P5MV		0x1
+#define BUCK1_RAMP_6P25MV		0x2
+#define BUCK1_RAMP_3P125MV		0x3
+#define BUCK1_DVS_CTRL			0x10
+#define BUCK1_AD			0x08
+#define BUCK1_FPWM			0x04
+#define BUCK1_ENMODE_MASK		0x03
+
+/* PCA9450_REG_BUCK2_CTRL bits */
+#define BUCK2_RAMP_MASK			0xC0
+#define BUCK2_RAMP_25MV			0x0
+#define BUCK2_RAMP_12P5MV		0x1
+#define BUCK2_RAMP_6P25MV		0x2
+#define BUCK2_RAMP_3P125MV		0x3
+#define BUCK2_DVS_CTRL			0x10
+#define BUCK2_AD			0x08
+#define BUCK2_FPWM			0x04
+#define BUCK2_ENMODE_MASK		0x03
+
+/* PCA9450_REG_BUCK3_CTRL bits */
+#define BUCK3_RAMP_MASK			0xC0
+#define BUCK3_RAMP_25MV			0x0
+#define BUCK3_RAMP_12P5MV		0x1
+#define BUCK3_RAMP_6P25MV		0x2
+#define BUCK3_RAMP_3P125MV		0x3
+#define BUCK3_DVS_CTRL			0x10
+#define BUCK3_AD			0x08
+#define BUCK3_FPWM			0x04
+#define BUCK3_ENMODE_MASK		0x03
+
+/* PCA9450_REG_BUCK4_CTRL bits */
+#define BUCK4_AD			0x08
+#define BUCK4_FPWM			0x04
+#define BUCK4_ENMODE_MASK		0x03
+
+/* PCA9450_REG_BUCK5_CTRL bits */
+#define BUCK5_AD			0x08
+#define BUCK5_FPWM			0x04
+#define BUCK5_ENMODE_MASK		0x03
+
+/* PCA9450_REG_BUCK6_CTRL bits */
+#define BUCK6_AD			0x08
+#define BUCK6_FPWM			0x04
+#define BUCK6_ENMODE_MASK		0x03
+
+/* PCA9450_REG_BUCK123_PRESET_EN bit */
+#define BUCK123_PRESET_EN		0x80
+
+/* PCA9450_BUCK1OUT_DVS0 bits */
+#define BUCK1OUT_DVS0_MASK		0x7F
+#define BUCK1OUT_DVS0_DEFAULT		0x14
+
+/* PCA9450_BUCK1OUT_DVS1 bits */
+#define BUCK1OUT_DVS1_MASK		0x7F
+#define BUCK1OUT_DVS1_DEFAULT		0x14
+
+/* PCA9450_BUCK2OUT_DVS0 bits */
+#define BUCK2OUT_DVS0_MASK		0x7F
+#define BUCK2OUT_DVS0_DEFAULT		0x14
+
+/* PCA9450_BUCK2OUT_DVS1 bits */
+#define BUCK2OUT_DVS1_MASK		0x7F
+#define BUCK2OUT_DVS1_DEFAULT		0x14
+
+/* PCA9450_BUCK3OUT_DVS0 bits */
+#define BUCK3OUT_DVS0_MASK		0x7F
+#define BUCK3OUT_DVS0_DEFAULT		0x14
+
+/* PCA9450_BUCK3OUT_DVS1 bits */
+#define BUCK3OUT_DVS1_MASK		0x7F
+#define BUCK3OUT_DVS1_DEFAULT		0x14
+
+/* PCA9450_REG_BUCK4OUT bits */
+#define BUCK4OUT_MASK			0x7F
+#define BUCK4OUT_DEFAULT		0x6C
+
+/* PCA9450_REG_BUCK5OUT bits */
+#define BUCK5OUT_MASK			0x7F
+#define BUCK5OUT_DEFAULT		0x30
+
+/* PCA9450_REG_BUCK6OUT bits */
+#define BUCK6OUT_MASK			0x7F
+#define BUCK6OUT_DEFAULT		0x14
+
+/* PCA9450_REG_LDO1_VOLT bits */
+#define LDO1_EN_MASK			0xC0
+#define LDO1OUT_MASK			0x07
+
+/* PCA9450_REG_LDO2_VOLT bits */
+#define LDO2_EN_MASK			0xC0
+#define LDO2OUT_MASK			0x07
+
+/* PCA9450_REG_LDO3_VOLT bits */
+#define LDO3_EN_MASK			0xC0
+#define LDO3OUT_MASK			0x1F
+
+/* PCA9450_REG_LDO4_VOLT bits */
+#define LDO4_EN_MASK			0xC0
+#define LDO4OUT_MASK			0x1F
+
+/* PCA9450_REG_LDO5_VOLT bits */
+#define LDO5L_EN_MASK			0xC0
+#define LDO5LOUT_MASK			0x0F
+
+#define LDO5H_EN_MASK			0xC0
+#define LDO5HOUT_MASK			0x0F
+
+/* PCA9450_REG_IRQ bits */
+#define IRQ_PWRON			0x80
+#define IRQ_WDOGB			0x40
+#define IRQ_RSVD			0x20
+#define IRQ_VR_FLT1			0x10
+#define IRQ_VR_FLT2			0x08
+#define IRQ_LOWVSYS			0x04
+#define IRQ_THERM_105			0x02
+#define IRQ_THERM_125			0x01
+
+/* PCA9450_REG_PWRCTRL bits */
+#define T_ON_DEB_MASK			0xC0
+#define T_ON_DEB_120US			(0 << 6)
+#define T_ON_DEB_20MS			(1 << 6)
+#define T_ON_DEB_100MS			(2 << 6)
+#define T_ON_DEB_750MS			(3 << 6)
+#define T_OFF_DEB_MASK			0x20
+#define T_OFF_DEB_120US			(0 << 5)
+#define T_OFF_DEB_2MS			(1 << 5)
+#define T_ON_STEP_MASK			0x18
+#define T_ON_STEP_1MS			(0 << 3)
+#define T_ON_STEP_2MS			(1 << 3)
+#define T_ON_STEP_4MS			(2 << 3)
+#define T_ON_STEP_8MS			(3 << 3)
+#define T_OFF_STEP_MASK			0x06
+#define T_OFF_STEP_2MS			(0 << 1)
+#define T_OFF_STEP_4MS			(1 << 1)
+#define T_OFF_STEP_8MS			(2 << 1)
+#define T_OFF_STEP_16MS			(3 << 1)
+#define T_RESTART_MASK			0x01
+#define T_RESTART_250MS			0
+#define T_RESTART_500MS			1
+
+/* PCA9450_REG_RESET_CTRL bits */
+#define WDOG_B_CFG_MASK			0xC0
+#define WDOG_B_CFG_NONE			0x00
+#define WDOG_B_CFG_WARM			0x40
+#define WDOG_B_CFG_COLD_LDO12		0x80
+#define WDOG_B_CFG_COLD			0xC0
+#define T_PMIC_RST_DEB_MASK		0x07
+#define T_PMIC_RST_DEB_10MS		0x00
+#define T_PMIC_RST_DEB_50MS		0x01
+#define T_PMIC_RST_DEB_100MS		0x02
+#define T_PMIC_RST_DEB_500MS		0x03
+#define T_PMIC_RST_DEB_1S		0x04
+#define T_PMIC_RST_DEB_2S		0x05
+#define T_PMIC_RST_DEB_4S		0x06
+#define T_PMIC_RST_DEB_8S		0x07
+
+/* PCA9450_REG_CONFIG2 bits */
+#define I2C_LT_MASK			0x03
+#define I2C_LT_FORCE_DISABLE		0x00
+#define I2C_LT_ON_STANDBY_RUN		0x01
+#define I2C_LT_ON_RUN			0x02
+#define I2C_LT_FORCE_ENABLE		0x03
+
+/* PCA9450_REG_SW_RST command */
+#define SW_RST_COMMAND			0x14
+
 #ifdef CONFIG_MFD_PCA9450
 
 int pca9450_register_init_callback(void(*callback)(struct regmap *map));

---
base-commit: 504c7918417a29aad8313fe532329558cd984053
change-id: 20260824-feature-pca9450-pmic-fc2740e5f44c

Best regards,
--  
Stefan Kerkmann <s.kerkmann@pengutronix.de>



