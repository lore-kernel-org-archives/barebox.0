Delivery-date: Thu, 11 Jun 2026 13:21:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXdTn-004gTK-1x
	for lore@lore.pengutronix.de;
	Thu, 11 Jun 2026 13:21:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXdTm-0006wm-6b
	for lore@pengutronix.de; Thu, 11 Jun 2026 13:21:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3wDBHm0cLrlILLu/0scAvbZKOQp6bu8hwyO+Mhk0xx0=; b=UIppbFhhwt6rhBy5KGbULytOlf
	SmMtmGca5XjFktO4bk7HHAcdKl1nVJv/CEXUg10Ruo74qPlSwKeS6ozxtYIneduAM/1/PmxNHHXlv
	fMs/RJohZO0JrgGrPYesWqge3O9Fn7kwEHzQHLKCIrIoOwO6ZVCYpSquRnQsczN+26WF9O278iiET
	QJwZ5IYSL3H6C0b5ipDvNzdEvoCVIMkuZa4Ycmo/VYunQupLl2+sErhBcevpRNvlV05QWRMTcXn5k
	/uoJHo0dG/8vUgYRAjo2FWqvIUbq/oqku6WuJqDkmtDSukCQDJ4BFSh4WgoKbDhYagRGj+LeCZY1d
	YxORVIDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdTP-00000009IdE-33FL;
	Thu, 11 Jun 2026 11:21:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdTK-00000009IZr-3IJP
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 11:21:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wXdTH-0006lf-V2
	for barebox@lists.infradead.org; Thu, 11 Jun 2026 13:21:15 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wXdTH-002Cuo-2u
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 13:21:15 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jun 2026 13:21:10 +0200
Message-ID: <20260611112115.670073-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_042119_123802_5E7C4B4F 
X-CRM114-Status: GOOD (  21.19  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] mfd: rn5t568: rename to rn5t618
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For unclear reasons the driver is based on the Linux rn5t618 driver,
but has been added to Barebox under a different name. To avoid
confusion sync the name with the Linux driver.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mfd/Kconfig                  |   6 +-
 drivers/mfd/Makefile                 |   2 +-
 drivers/mfd/{rn5t568.c => rn5t618.c} |  76 +++++++--------
 drivers/watchdog/Kconfig             |   2 +-
 include/mfd/rn5t568.h                | 134 ---------------------------
 include/mfd/rn5t618.h                | 134 +++++++++++++++++++++++++++
 6 files changed, 177 insertions(+), 177 deletions(-)
 rename drivers/mfd/{rn5t568.c => rn5t618.c} (53%)
 delete mode 100644 include/mfd/rn5t568.h
 create mode 100644 include/mfd/rn5t618.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 22b57eee1669..305a79baca46 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -81,12 +81,12 @@ config MFD_PCA9450
 	help
 	  Select this to support communication with the PCA9450 PMIC.
 
-config MFD_RN568PMIC
+config MFD_RN5T618
 	depends on I2C
 	select REGMAP_I2C
-	bool "Ricoh RN5T568 MFD driver"
+	bool "Ricoh RN5T567/618 MFD driver"
 	help
-	  Select this to support communication with the Ricoh RN5T568 PMIC.
+	  Select this to support communication with the Ricoh RN5T567/618 PMIC.
 
 config MFD_SUPERIO
 	bool
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 9d27b0bc336a..ae36d40d51be 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -15,7 +15,7 @@ obj-$(CONFIG_MFD_TWL4030)	+= twl4030.o
 obj-$(CONFIG_MFD_TWL6030)	+= twl6030.o
 obj-$(CONFIG_RAVE_SP_CORE)	+= rave-sp.o
 obj-$(CONFIG_MFD_STPMIC1)	+= stpmic1.o
-obj-$(CONFIG_MFD_RN568PMIC)	+= rn5t568.o
+obj-$(CONFIG_MFD_RN5T618)	+= rn5t618.o
 obj-$(CONFIG_MFD_SUPERIO)	+= superio.o
 obj-$(CONFIG_FINTEK_SUPERIO)	+= fintek-superio.o
 obj-$(CONFIG_SMSC_SUPERIO)	+= smsc-superio.o
diff --git a/drivers/mfd/rn5t568.c b/drivers/mfd/rn5t618.c
similarity index 53%
rename from drivers/mfd/rn5t568.c
rename to drivers/mfd/rn5t618.c
index 5a0cec464a07..3af3e6e3e039 100644
--- a/drivers/mfd/rn5t568.c
+++ b/drivers/mfd/rn5t618.c
@@ -16,29 +16,29 @@
 #include <linux/regmap.h>
 #include <reset_source.h>
 #include <restart.h>
-#include <mfd/rn5t568.h>
+#include <mfd/rn5t618.h>
 
-struct rn5t568 {
+struct rn5t618 {
 	struct restart_handler restart;
 	struct regmap *regmap;
 };
 
-static void rn5t568_restart(struct restart_handler *rst,
+static void rn5t618_restart(struct restart_handler *rst,
 			    unsigned long flags)
 {
-	struct rn5t568 *rn5t568 = container_of(rst, struct rn5t568, restart);
+	struct rn5t618 *rn5t618 = container_of(rst, struct rn5t618, restart);
 
-	regmap_write(rn5t568->regmap, RN5T568_SLPCNT, RN5T568_SLPCNT_SWPPWROFF);
+	regmap_write(rn5t618->regmap, RN5T618_SLPCNT, RN5T618_SLPCNT_SWPPWROFF);
 }
 
-static int rn5t568_reset_reason_detect(struct device *dev,
+static int rn5t618_reset_reason_detect(struct device *dev,
 				       struct regmap *regmap)
 {
 	enum reset_src_type type;
 	unsigned int reg;
 	int ret;
 
-	ret = regmap_read(regmap, RN5T568_PONHIS, &reg);
+	ret = regmap_read(regmap, RN5T618_PONHIS, &reg);
 	if (ret)
 		return ret;
 
@@ -49,32 +49,32 @@ static int rn5t568_reset_reason_detect(struct device *dev,
 		return 0;
 	}
 
-	if (reg & (RN5T568_PONHIS_ON_EXTINPON | RN5T568_PONHIS_ON_PWRONPON)) {
+	if (reg & (RN5T618_PONHIS_ON_EXTINPON | RN5T618_PONHIS_ON_PWRONPON)) {
 		type = RESET_POR;
-	} else if (!(reg & RN5T568_PONHIS_ON_REPWRPON)) {
+	} else if (!(reg & RN5T618_PONHIS_ON_REPWRPON)) {
 		return -EINVAL;
 	} else {
-		ret = regmap_read(regmap, RN5T568_POFFHIS, &reg);
+		ret = regmap_read(regmap, RN5T618_POFFHIS, &reg);
 		if (ret)
 			return ret;
 
 		dev_dbg(dev, "Power-off history: %x\n", reg);
 
-		if (reg & RN5T568_POFFHIS_PWRONPOFF)
+		if (reg & RN5T618_POFFHIS_PWRONPOFF)
 			type = RESET_POR;
-		else if (reg & RN5T568_POFFHIS_TSHUTPOFF)
+		else if (reg & RN5T618_POFFHIS_TSHUTPOFF)
 			type = RESET_THERM;
-		else if (reg & RN5T568_POFFHIS_VINDETPOFF)
+		else if (reg & RN5T618_POFFHIS_VINDETPOFF)
 			type = RESET_BROWNOUT;
-		else if (reg & RN5T568_POFFHIS_IODETPOFF)
+		else if (reg & RN5T618_POFFHIS_IODETPOFF)
 			type = RESET_UKWN;
-		else if (reg & RN5T568_POFFHIS_CPUPOFF)
+		else if (reg & RN5T618_POFFHIS_CPUPOFF)
 			type = RESET_RST;
-		else if (reg & RN5T568_POFFHIS_WDGPOFF)
+		else if (reg & RN5T618_POFFHIS_WDGPOFF)
 			type = RESET_WDG;
-		else if (reg & RN5T568_POFFHIS_DCLIMPOFF)
+		else if (reg & RN5T618_POFFHIS_DCLIMPOFF)
 			type = RESET_BROWNOUT;
-		else if (reg & RN5T568_POFFHIS_N_OEPOFF)
+		else if (reg & RN5T618_POFFHIS_N_OEPOFF)
 			type = RESET_EXT;
 		else
 			return -EINVAL;
@@ -84,20 +84,20 @@ static int rn5t568_reset_reason_detect(struct device *dev,
 	return 0;
 }
 
-static const struct regmap_config rn5t568_regmap_config = {
+static const struct regmap_config rn5t618_regmap_config = {
 	.reg_bits	= 8,
 	.val_bits	= 8,
-	.max_register	= RN5T568_MAX_REG,
+	.max_register	= RN5T618_MAX_REG,
 };
 
-static int __init rn5t568_i2c_probe(struct device *dev)
+static int __init rn5t618_i2c_probe(struct device *dev)
 {
-	struct rn5t568 *pmic_instance;
+	struct rn5t618 *pmic_instance;
 	unsigned char reg[2];
 	int ret;
 
-	pmic_instance = xzalloc(sizeof(struct rn5t568));
-	pmic_instance->regmap = regmap_init_i2c(to_i2c_client(dev), &rn5t568_regmap_config);
+	pmic_instance = xzalloc(sizeof(struct rn5t618));
+	pmic_instance->regmap = regmap_init_i2c(to_i2c_client(dev), &rn5t618_regmap_config);
 	if (IS_ERR(pmic_instance->regmap))
 		return PTR_ERR(pmic_instance->regmap);
 
@@ -105,41 +105,41 @@ static int __init rn5t568_i2c_probe(struct device *dev)
 	if (ret)
 		return ret;
 
-	ret = regmap_bulk_read(pmic_instance->regmap, RN5T568_LSIVER, &reg, 2);
+	ret = regmap_bulk_read(pmic_instance->regmap, RN5T618_LSIVER, &reg, 2);
 	if (ret) {
 		dev_err(dev, "Failed to read PMIC version via I2C\n");
 		return ret;
 	}
 
-	dev_info(dev, "Found NMD RN5T568 LSI %x, OTP: %x\n", reg[0], reg[1]);
+	dev_info(dev, "Found NMD RN5T567/618 LSI %x, OTP: %x\n", reg[0], reg[1]);
 
 	/* Settings used to trigger software reset and by a watchdog trigger */
-	regmap_write(pmic_instance->regmap, RN5T568_REPCNT, RN5T568_REPCNT_OFF_RESETO_16MS |
-		     RN5T568_REPCNT_OFF_REPWRTIM_1000MS | RN5T568_REPCNT_OFF_REPWRON);
+	regmap_write(pmic_instance->regmap, RN5T618_REPCNT, RN5T618_REPCNT_OFF_RESETO_16MS |
+		     RN5T618_REPCNT_OFF_REPWRTIM_1000MS | RN5T618_REPCNT_OFF_REPWRON);
 
 	pmic_instance->restart.of_node = dev->of_node;
-	pmic_instance->restart.name = "RN5T568";
-	pmic_instance->restart.restart = &rn5t568_restart;
+	pmic_instance->restart.name = "RN5T618";
+	pmic_instance->restart.restart = &rn5t618_restart;
 	restart_handler_register(&pmic_instance->restart);
 	dev_dbg(dev, "RN5t: Restart handler with priority %d registered\n", pmic_instance->restart.priority);
 
-	ret = rn5t568_reset_reason_detect(dev, pmic_instance->regmap);
+	ret = rn5t618_reset_reason_detect(dev, pmic_instance->regmap);
 	if (ret)
 		dev_warn(dev, "Failed to query reset reason\n");
 
 	return of_platform_populate(dev->of_node, NULL, dev);
 }
 
-static __maybe_unused const struct of_device_id rn5t568_of_match[] = {
+static __maybe_unused const struct of_device_id rn5t618_of_match[] = {
 	{ .compatible = "ricoh,rn5t568", .data = NULL, },
 	{ }
 };
-MODULE_DEVICE_TABLE(of, rn5t568_of_match);
+MODULE_DEVICE_TABLE(of, rn5t618_of_match);
 
-static struct driver rn5t568_i2c_driver = {
-	.name		= "rn5t568-i2c",
-	.probe		= rn5t568_i2c_probe,
-	.of_compatible	= DRV_OF_COMPAT(rn5t568_of_match),
+static struct driver rn5t618_i2c_driver = {
+	.name		= "rn5t618-i2c",
+	.probe		= rn5t618_i2c_probe,
+	.of_compatible	= DRV_OF_COMPAT(rn5t618_of_match),
 };
 
-coredevice_i2c_driver(rn5t568_i2c_driver);
+coredevice_i2c_driver(rn5t618_i2c_driver);
diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index c962e8f22e5a..97a305c164dc 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -128,7 +128,7 @@ config STPMIC1_WATCHDOG
 
 config RN568_WATCHDOG
 	bool "Ricoh RN5t568 PMIC based Watchdog"
-	depends on MFD_RN568PMIC
+	depends on MFD_RN5T618
 	help
 	  Enable to support system control via the PMIC based watchdog.
 
diff --git a/include/mfd/rn5t568.h b/include/mfd/rn5t568.h
deleted file mode 100644
index 04b6c832a5d5..000000000000
--- a/include/mfd/rn5t568.h
+++ /dev/null
@@ -1,134 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
- * Copyright (C) 2016 Toradex AG
- */
-
-#ifndef __MFD_RN5T568_H
-#define __MFD_RN5T568_H
-
-#include <linux/bits.h>
-
-/* RN5T568 registers */
-enum {
-	RN5T568_LSIVER		= 0x00,
-	RN5T568_OTPVER		= 0x01,
-	RN5T568_IODAC		= 0x02,
-	RN5T568_VINDAC		= 0x03,
-	RN5T568_OUT32KEN	= 0x05,
-
-	RN5T568_CPUCNT		= 0x06,
-
-	RN5T568_PSWR		= 0x07,
-	RN5T568_PONHIS		= 0x09,
-	RN5T568_POFFHIS		= 0x0A,
-	RN5T568_WATCHDOG	= 0x0B,
-	RN5T568_WATCHDOGCNT	= 0x0C,
-	RN5T568_PWRFUNC		= 0x0D,
-	RN5T568_SLPCNT		= 0x0E,
-	RN5T568_REPCNT		= 0x0F,
-	RN5T568_PWRONTIMSET	= 0x10,
-	RN5T568_NOETIMSETCNT	= 0x11,
-	RN5T568_PWRIREN		= 0x12,
-	RN5T568_PWRIRQ		= 0x13,
-	RN5T568_PWRMON		= 0x14,
-	RN5T568_PWRIRSEL	= 0x15,
-
-	RN5T568_DC1_SLOT	= 0x16,
-	RN5T568_DC2_SLOT	= 0x17,
-	RN5T568_DC3_SLOT	= 0x18,
-	RN5T568_DC4_SLOT	= 0x19,
-
-	RN5T568_LDO1_SLOT	= 0x1B,
-	RN5T568_LDO2_SLOT	= 0x1C,
-	RN5T568_LDO3_SLOT	= 0x1D,
-	RN5T568_LDO4_SLOT	= 0x1E,
-	RN5T568_LDO5_SLOT	= 0x1F,
-
-	RN5T568_PSO0_SLOT	= 0x25,
-	RN5T568_PSO1_SLOT	= 0x26,
-	RN5T568_PSO2_SLOT	= 0x27,
-	RN5T568_PSO3_SLOT	= 0x28,
-
-	RN5T568_LDORTC1_SLOT	= 0x2A,
-
-	RN5T568_DC1CTL		= 0x2C,
-	RN5T568_DC1CTL2		= 0x2D,
-	RN5T568_DC2CTL		= 0x2E,
-	RN5T568_DC2CTL2		= 0x2F,
-	RN5T568_DC3CTL		= 0x30,
-	RN5T568_DC3CTL2		= 0x31,
-	RN5T568_DC4CTL		= 0x32,
-	RN5T568_DC4CTL2		= 0x33,
-
-	RN5T568_DC1DAC		= 0x36,
-	RN5T568_DC2DAC		= 0x37,
-	RN5T568_DC3DAC		= 0x38,
-	RN5T568_DC4DAC		= 0x39,
-
-	RN5T568_DC1DAC_SLP	= 0x3B,
-	RN5T568_DC2DAC_SLP	= 0x3C,
-	RN5T568_DC3DAC_SLP	= 0x3D,
-	RN5T568_DC4DAC_SLP	= 0x3E,
-
-	RN5T568_DCIREN		= 0x40,
-	RN5T568_DCIRQ		= 0x41,
-	RN5T568_DCIRMON		= 0x42,
-
-	RN5T568_LDOEN1		= 0x44,
-	RN5T568_LDOEN2		= 0x45,
-	RN5T568_LDODIS1		= 0x46,
-
-	RN5T568_LDO1DAC		= 0x4C,
-	RN5T568_LDO2DAC		= 0x4D,
-	RN5T568_LDO3DAC		= 0x4E,
-	RN5T568_LDO4DAC		= 0x4F,
-	RN5T568_LDO5DAC		= 0x50,
-
-	RN5T568_LDORTC1DAC	= 0x56,
-	RN5T568_LDORTC2DAC	= 0x57,
-
-	RN5T568_LDO1DAC_SLP	= 0x58,
-	RN5T568_LDO2DAC_SLP	= 0x59,
-	RN5T568_LDO3DAC_SLP	= 0x5A,
-	RN5T568_LDO4DAC_SLP	= 0x5B,
-	RN5T568_LDO5DAC_SLP	= 0x5C,
-
-	RN5T568_IOSEL		= 0x90,
-	RN5T568_IOOUT		= 0x91,
-	RN5T568_GPEDGE1		= 0x92,
-	RN5T568_EN_GPIR		= 0x94,
-	RN5T568_IR_GPR		= 0x95,
-	RN5T568_IR_GPF		= 0x96,
-	RN5T568_MON_IOIN	= 0x97,
-	RN5T568_GPLED_FUNC	= 0x98,
-	RN5T568_INTPOL		= 0x9C,
-	RN5T568_INTEN		= 0x9D,
-	RN5T568_INTMON		= 0x9E,
-
-	RN5T568_PREVINDAC	= 0xB0,
-	RN5T568_OVTEMP		= 0xBC,
-
-	RN5T568_MAX_REG		= 0xBC,
-};
-
-#define RN5T568_PONHIS_ON_EXTINPON		BIT(3)
-#define RN5T568_PONHIS_ON_REPWRPON		BIT(1)
-#define RN5T568_PONHIS_ON_PWRONPON		BIT(0)
-
-#define RN5T568_POFFHIS_N_OEPOFF		BIT(7)
-#define RN5T568_POFFHIS_DCLIMPOFF		BIT(6)
-#define RN5T568_POFFHIS_WDGPOFF			BIT(5)
-#define RN5T568_POFFHIS_CPUPOFF			BIT(4)
-#define RN5T568_POFFHIS_IODETPOFF		BIT(3)
-#define RN5T568_POFFHIS_VINDETPOFF		BIT(2)
-#define RN5T568_POFFHIS_TSHUTPOFF		BIT(1)
-#define RN5T568_POFFHIS_PWRONPOFF		BIT(0)
-
-#define RN5T568_SLPCNT_SWPPWROFF		BIT(0)
-
-#define RN5T568_REPCNT_OFF_RESETO_16MS		0x30
-#define RN5T568_REPCNT_OFF_REPWRTIM_1000MS	0x06
-#define RN5T568_REPCNT_OFF_REPWRON		BIT(0)
-
-#endif
diff --git a/include/mfd/rn5t618.h b/include/mfd/rn5t618.h
new file mode 100644
index 000000000000..196ae00fb5b1
--- /dev/null
+++ b/include/mfd/rn5t618.h
@@ -0,0 +1,134 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
+ * Copyright (C) 2016 Toradex AG
+ */
+
+#ifndef __MFD_RN5T618_H
+#define __MFD_RN5T618_H
+
+#include <linux/bits.h>
+
+/* RN5T618 registers */
+enum {
+	RN5T618_LSIVER		= 0x00,
+	RN5T618_OTPVER		= 0x01,
+	RN5T618_IODAC		= 0x02,
+	RN5T618_VINDAC		= 0x03,
+	RN5T618_OUT32KEN	= 0x05,
+
+	RN5T618_CPUCNT		= 0x06,
+
+	RN5T618_PSWR		= 0x07,
+	RN5T618_PONHIS		= 0x09,
+	RN5T618_POFFHIS		= 0x0A,
+	RN5T618_WATCHDOG	= 0x0B,
+	RN5T618_WATCHDOGCNT	= 0x0C,
+	RN5T618_PWRFUNC		= 0x0D,
+	RN5T618_SLPCNT		= 0x0E,
+	RN5T618_REPCNT		= 0x0F,
+	RN5T618_PWRONTIMSET	= 0x10,
+	RN5T618_NOETIMSETCNT	= 0x11,
+	RN5T618_PWRIREN		= 0x12,
+	RN5T618_PWRIRQ		= 0x13,
+	RN5T618_PWRMON		= 0x14,
+	RN5T618_PWRIRSEL	= 0x15,
+
+	RN5T618_DC1_SLOT	= 0x16,
+	RN5T618_DC2_SLOT	= 0x17,
+	RN5T618_DC3_SLOT	= 0x18,
+	RN5T618_DC4_SLOT	= 0x19,
+
+	RN5T618_LDO1_SLOT	= 0x1B,
+	RN5T618_LDO2_SLOT	= 0x1C,
+	RN5T618_LDO3_SLOT	= 0x1D,
+	RN5T618_LDO4_SLOT	= 0x1E,
+	RN5T618_LDO5_SLOT	= 0x1F,
+
+	RN5T618_PSO0_SLOT	= 0x25,
+	RN5T618_PSO1_SLOT	= 0x26,
+	RN5T618_PSO2_SLOT	= 0x27,
+	RN5T618_PSO3_SLOT	= 0x28,
+
+	RN5T618_LDORTC1_SLOT	= 0x2A,
+
+	RN5T618_DC1CTL		= 0x2C,
+	RN5T618_DC1CTL2		= 0x2D,
+	RN5T618_DC2CTL		= 0x2E,
+	RN5T618_DC2CTL2		= 0x2F,
+	RN5T618_DC3CTL		= 0x30,
+	RN5T618_DC3CTL2		= 0x31,
+	RN5T618_DC4CTL		= 0x32,
+	RN5T618_DC4CTL2		= 0x33,
+
+	RN5T618_DC1DAC		= 0x36,
+	RN5T618_DC2DAC		= 0x37,
+	RN5T618_DC3DAC		= 0x38,
+	RN5T618_DC4DAC		= 0x39,
+
+	RN5T618_DC1DAC_SLP	= 0x3B,
+	RN5T618_DC2DAC_SLP	= 0x3C,
+	RN5T618_DC3DAC_SLP	= 0x3D,
+	RN5T618_DC4DAC_SLP	= 0x3E,
+
+	RN5T618_DCIREN		= 0x40,
+	RN5T618_DCIRQ		= 0x41,
+	RN5T618_DCIRMON		= 0x42,
+
+	RN5T618_LDOEN1		= 0x44,
+	RN5T618_LDOEN2		= 0x45,
+	RN5T618_LDODIS1		= 0x46,
+
+	RN5T618_LDO1DAC		= 0x4C,
+	RN5T618_LDO2DAC		= 0x4D,
+	RN5T618_LDO3DAC		= 0x4E,
+	RN5T618_LDO4DAC		= 0x4F,
+	RN5T618_LDO5DAC		= 0x50,
+
+	RN5T618_LDORTC1DAC	= 0x56,
+	RN5T618_LDORTC2DAC	= 0x57,
+
+	RN5T618_LDO1DAC_SLP	= 0x58,
+	RN5T618_LDO2DAC_SLP	= 0x59,
+	RN5T618_LDO3DAC_SLP	= 0x5A,
+	RN5T618_LDO4DAC_SLP	= 0x5B,
+	RN5T618_LDO5DAC_SLP	= 0x5C,
+
+	RN5T618_IOSEL		= 0x90,
+	RN5T618_IOOUT		= 0x91,
+	RN5T618_GPEDGE1		= 0x92,
+	RN5T618_EN_GPIR		= 0x94,
+	RN5T618_IR_GPR		= 0x95,
+	RN5T618_IR_GPF		= 0x96,
+	RN5T618_MON_IOIN	= 0x97,
+	RN5T618_GPLED_FUNC	= 0x98,
+	RN5T618_INTPOL		= 0x9C,
+	RN5T618_INTEN		= 0x9D,
+	RN5T618_INTMON		= 0x9E,
+
+	RN5T618_PREVINDAC	= 0xB0,
+	RN5T618_OVTEMP		= 0xBC,
+
+	RN5T618_MAX_REG		= 0xBC,
+};
+
+#define RN5T618_PONHIS_ON_EXTINPON		BIT(3)
+#define RN5T618_PONHIS_ON_REPWRPON		BIT(1)
+#define RN5T618_PONHIS_ON_PWRONPON		BIT(0)
+
+#define RN5T618_POFFHIS_N_OEPOFF		BIT(7)
+#define RN5T618_POFFHIS_DCLIMPOFF		BIT(6)
+#define RN5T618_POFFHIS_WDGPOFF			BIT(5)
+#define RN5T618_POFFHIS_CPUPOFF			BIT(4)
+#define RN5T618_POFFHIS_IODETPOFF		BIT(3)
+#define RN5T618_POFFHIS_VINDETPOFF		BIT(2)
+#define RN5T618_POFFHIS_TSHUTPOFF		BIT(1)
+#define RN5T618_POFFHIS_PWRONPOFF		BIT(0)
+
+#define RN5T618_SLPCNT_SWPPWROFF		BIT(0)
+
+#define RN5T618_REPCNT_OFF_RESETO_16MS		0x30
+#define RN5T618_REPCNT_OFF_REPWRTIM_1000MS	0x06
+#define RN5T618_REPCNT_OFF_REPWRON		BIT(0)
+
+#endif

base-commit: 6c70fb327d486376c1f2e37dfff2212cb9eebb1b
-- 
2.47.3



