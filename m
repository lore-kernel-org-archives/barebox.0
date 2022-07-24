Delivery-date: Sun, 24 Jul 2022 21:02:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFgs4-002Hl6-Rf
	for lore@lore.pengutronix.de; Sun, 24 Jul 2022 21:02:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFgrz-0004q0-Df
	for lore@pengutronix.de; Sun, 24 Jul 2022 21:02:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kIuYVPFA0NRkfM6bAwut3MnIXZjlKQWY5UL/+aCyrp0=; b=NSaVdFCd9EIIsoHy83RlMg3Rmf
	Tcm1DFWGWQwukMTXLXFyFHgiXCTBeYj+oekUHDdQkClalJCAviKNdO0vPJzqLKF6or+a6dzZpLiIx
	eYSzB91Jh1HcpWinNDUXTsDqBJ8JSADajILLOP6ODa2HtyYtXP085rZwsp3FLvlGPfMmOsTv/s/0H
	y4xgsbfWNpTsvKVWMKNhEhmaxQA3w/8QR6qqyXQXVzEK4TeUZ5sPY+fewvrf/tSIDVYLbiL+cwusK
	dNMPmQ6DfhDDeArNWgW/Nx+TXbZqD7+uewtVtxelZmbb+dgcVccdseFWTFs8ZzwDGewHUYibWfElA
	CeYziMBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFgqI-008rY1-0s; Sun, 24 Jul 2022 19:00:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFgpp-008r4C-Br
	for barebox@lists.infradead.org; Sun, 24 Jul 2022 19:00:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oFgpo-00045T-3P; Sun, 24 Jul 2022 21:00:12 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFgpn-002y0J-8k; Sun, 24 Jul 2022 21:00:11 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFgpm-0094AE-30; Sun, 24 Jul 2022 21:00:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 24 Jul 2022 21:00:06 +0200
Message-Id: <20220724190006.2160802-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220724190006.2160802-1-a.fatoum@pengutronix.de>
References: <20220724190006.2160802-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220724_120014_045274_784B4A83 
X-CRM114-Status: GOOD (  26.10  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 6/6] regulator: add Rockchip rk808 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This driver provides control of following power management ICs by
Rockchip: RK805, RK809, RK817, RK808 and RK818 as well as a power-off
handler in the MFD driver.

The other MFD cells are exported as well, but no drivers are added for
them here. The code is based on an older version of the Linux driver,
with less abstractions that are not yet synced to barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v3 -> v4:
  - no change
v2 -> v3:
  - no change
v1 -> v2:
  - no change
---
 drivers/mfd/Kconfig                 |   9 +
 drivers/mfd/Makefile                |   1 +
 drivers/mfd/rk808.c                 | 395 ++++++++++++
 drivers/regulator/Kconfig           |  11 +
 drivers/regulator/Makefile          |   1 +
 drivers/regulator/rk808-regulator.c | 963 ++++++++++++++++++++++++++++
 include/linux/mfd/rk808.h           | 721 +++++++++++++++++++++
 7 files changed, 2101 insertions(+)
 create mode 100644 drivers/mfd/rk808.c
 create mode 100644 drivers/regulator/rk808-regulator.c
 create mode 100644 include/linux/mfd/rk808.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 9d4a82a9bbb4..6c6b65dacf71 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -108,4 +108,13 @@ config MFD_ATMEL_FLEXCOM
 	  by the probe function of this MFD driver according to a device tree
 	  property.
 
+config MFD_RK808
+	tristate "Rockchip RK805/RK808/RK809/RK817/RK818 Power Management Chip"
+	depends on I2C && OFDEVICE
+	help
+	  If you say yes here you get support for the RK805, RK808, RK809,
+	  RK817 and RK818 Power Management chips.
+	  This driver provides common support for accessing the device
+	  through I2C interface.
+
 endmenu
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 2b988bdc9a3d..7b5d0398d155 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -21,3 +21,4 @@ obj-$(CONFIG_FINTEK_SUPERIO)	+= fintek-superio.o
 obj-$(CONFIG_SMSC_SUPERIO)	+= smsc-superio.o
 obj-$(CONFIG_MFD_STM32_TIMERS)	+= stm32-timers.o
 obj-$(CONFIG_MFD_ATMEL_FLEXCOM)	+= atmel-flexcom.o
+obj-$(CONFIG_MFD_RK808)		+= rk808.o
diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
new file mode 100644
index 000000000000..1b5b9d3a1787
--- /dev/null
+++ b/drivers/mfd/rk808.c
@@ -0,0 +1,395 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * MFD core driver for Rockchip RK808/RK818
+ *
+ * Copyright (c) 2014, Fuzhou Rockchip Electronics Co., Ltd
+ *
+ * Author: Chris Zhong <zyw@rock-chips.com>
+ * Author: Zhang Qing <zhangqing@rock-chips.com>
+ *
+ * Copyright (C) 2016 PHYTEC Messtechnik GmbH
+ *
+ * Author: Wadim Egorov <w.egorov@phytec.de>
+ */
+
+#define pr_fmt(fmt) "rk808: " fmt
+
+#include <common.h>
+#include <i2c/i2c.h>
+#include <linux/mfd/rk808.h>
+#include <linux/mfd/core.h>
+#include <driver.h>
+#include <poweroff.h>
+#include <of.h>
+#include <regmap.h>
+
+struct rk808_reg_data {
+	int addr;
+	int mask;
+	int value;
+};
+
+static const struct regmap_config rk818_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = RK818_USB_CTRL_REG,
+};
+
+static const struct regmap_config rk805_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = RK805_OFF_SOURCE_REG,
+};
+
+static const struct regmap_config rk808_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = RK808_IO_POL_REG,
+};
+
+static const struct regmap_config rk817_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = RK817_GPIO_INT_CFG,
+};
+
+static const struct mfd_cell rk805s[] = {
+	{ .name = "rk808-clkout", },
+	{ .name = "rk808-regulator", },
+	{ .name = "rk805-pinctrl", },
+	{ .name = "rk808-rtc", },
+	{ .name = "rk805-pwrkey", },
+};
+
+static const struct mfd_cell rk808s[] = {
+	{ .name = "rk808-clkout", },
+	{ .name = "rk808-regulator", },
+	{ .name = "rk808-rtc", },
+};
+
+static const struct mfd_cell rk817s[] = {
+	{ .name = "rk808-clkout", },
+	{ .name = "rk808-regulator", },
+	{ .name = "rk805-pwrkey", },
+	{ .name = "rk808-rtc", },
+	{ .name = "rk817-codec", },
+};
+
+static const struct mfd_cell rk818s[] = {
+	{ .name = "rk808-clkout", },
+	{ .name = "rk808-regulator", },
+	{ .name = "rk808-rtc", },
+};
+
+static const struct rk808_reg_data rk805_pre_init_reg[] = {
+	{RK805_BUCK1_CONFIG_REG, RK805_BUCK1_2_ILMAX_MASK,
+				 RK805_BUCK1_2_ILMAX_4000MA},
+	{RK805_BUCK2_CONFIG_REG, RK805_BUCK1_2_ILMAX_MASK,
+				 RK805_BUCK1_2_ILMAX_4000MA},
+	{RK805_BUCK3_CONFIG_REG, RK805_BUCK3_4_ILMAX_MASK,
+				 RK805_BUCK3_ILMAX_3000MA},
+	{RK805_BUCK4_CONFIG_REG, RK805_BUCK3_4_ILMAX_MASK,
+				 RK805_BUCK4_ILMAX_3500MA},
+	{RK805_BUCK4_CONFIG_REG, BUCK_ILMIN_MASK, BUCK_ILMIN_400MA},
+	{RK805_THERMAL_REG, TEMP_HOTDIE_MSK, TEMP115C},
+};
+
+static const struct rk808_reg_data rk808_pre_init_reg[] = {
+	{ RK808_BUCK3_CONFIG_REG, BUCK_ILMIN_MASK,  BUCK_ILMIN_150MA },
+	{ RK808_BUCK4_CONFIG_REG, BUCK_ILMIN_MASK,  BUCK_ILMIN_200MA },
+	{ RK808_BOOST_CONFIG_REG, BOOST_ILMIN_MASK, BOOST_ILMIN_100MA },
+	{ RK808_BUCK1_CONFIG_REG, BUCK1_RATE_MASK,  BUCK_ILMIN_200MA },
+	{ RK808_BUCK2_CONFIG_REG, BUCK2_RATE_MASK,  BUCK_ILMIN_200MA },
+	{ RK808_DCDC_UV_ACT_REG,  BUCK_UV_ACT_MASK, BUCK_UV_ACT_DISABLE},
+	{ RK808_VB_MON_REG,       MASK_ALL,         VB_LO_ACT |
+						    VB_LO_SEL_3500MV },
+};
+
+static const struct rk808_reg_data rk817_pre_init_reg[] = {
+	{RK817_RTC_CTRL_REG, RTC_STOP, RTC_STOP},
+	/* Codec specific registers */
+	{ RK817_CODEC_DTOP_VUCTL, MASK_ALL, 0x03 },
+	{ RK817_CODEC_DTOP_VUCTIME, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DTOP_LPT_SRST, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DTOP_DIGEN_CLKE, MASK_ALL, 0x00 },
+	/* from vendor driver, CODEC_AREF_RTCFG0 not defined in data sheet */
+	{ RK817_CODEC_AREF_RTCFG0, MASK_ALL, 0x00 },
+	{ RK817_CODEC_AREF_RTCFG1, MASK_ALL, 0x06 },
+	{ RK817_CODEC_AADC_CFG0, MASK_ALL, 0xc8 },
+	/* from vendor driver, CODEC_AADC_CFG1 not defined in data sheet */
+	{ RK817_CODEC_AADC_CFG1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DADC_VOLL, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DADC_VOLR, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DADC_SR_ACL0, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DADC_ALC1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DADC_ALC2, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DADC_NG, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DADC_HPF, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DADC_RVOLL, MASK_ALL, 0xff },
+	{ RK817_CODEC_DADC_RVOLR, MASK_ALL, 0xff },
+	{ RK817_CODEC_AMIC_CFG0, MASK_ALL, 0x70 },
+	{ RK817_CODEC_AMIC_CFG1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DMIC_PGA_GAIN, MASK_ALL, 0x66 },
+	{ RK817_CODEC_DMIC_LMT1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DMIC_LMT2, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DMIC_NG1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DMIC_NG2, MASK_ALL, 0x00 },
+	/* from vendor driver, CODEC_ADAC_CFG0 not defined in data sheet */
+	{ RK817_CODEC_ADAC_CFG0, MASK_ALL, 0x00 },
+	{ RK817_CODEC_ADAC_CFG1, MASK_ALL, 0x07 },
+	{ RK817_CODEC_DDAC_POPD_DACST, MASK_ALL, 0x82 },
+	{ RK817_CODEC_DDAC_VOLL, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_VOLR, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_SR_LMT0, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_LMT1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_LMT2, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_MUTE_MIXCTL, MASK_ALL, 0xa0 },
+	{ RK817_CODEC_DDAC_RVOLL, MASK_ALL, 0xff },
+	{ RK817_CODEC_DADC_RVOLR, MASK_ALL, 0xff },
+	{ RK817_CODEC_AMIC_CFG0, MASK_ALL, 0x70 },
+	{ RK817_CODEC_AMIC_CFG1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DMIC_PGA_GAIN, MASK_ALL, 0x66 },
+	{ RK817_CODEC_DMIC_LMT1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DMIC_LMT2, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DMIC_NG1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DMIC_NG2, MASK_ALL, 0x00 },
+	/* from vendor driver, CODEC_ADAC_CFG0 not defined in data sheet */
+	{ RK817_CODEC_ADAC_CFG0, MASK_ALL, 0x00 },
+	{ RK817_CODEC_ADAC_CFG1, MASK_ALL, 0x07 },
+	{ RK817_CODEC_DDAC_POPD_DACST, MASK_ALL, 0x82 },
+	{ RK817_CODEC_DDAC_VOLL, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_VOLR, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_SR_LMT0, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_LMT1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_LMT2, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_MUTE_MIXCTL, MASK_ALL, 0xa0 },
+	{ RK817_CODEC_DDAC_RVOLL, MASK_ALL, 0xff },
+	{ RK817_CODEC_DDAC_RVOLR, MASK_ALL, 0xff },
+	{ RK817_CODEC_AHP_ANTI0, MASK_ALL, 0x00 },
+	{ RK817_CODEC_AHP_ANTI1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_AHP_CFG0, MASK_ALL, 0xe0 },
+	{ RK817_CODEC_AHP_CFG1, MASK_ALL, 0x1f },
+	{ RK817_CODEC_AHP_CP, MASK_ALL, 0x09 },
+	{ RK817_CODEC_ACLASSD_CFG1, MASK_ALL, 0x69 },
+	{ RK817_CODEC_ACLASSD_CFG2, MASK_ALL, 0x44 },
+	{ RK817_CODEC_APLL_CFG0, MASK_ALL, 0x04 },
+	{ RK817_CODEC_APLL_CFG1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_APLL_CFG2, MASK_ALL, 0x30 },
+	{ RK817_CODEC_APLL_CFG3, MASK_ALL, 0x19 },
+	{ RK817_CODEC_APLL_CFG4, MASK_ALL, 0x65 },
+	{ RK817_CODEC_APLL_CFG5, MASK_ALL, 0x01 },
+	{ RK817_CODEC_DI2S_CKM, MASK_ALL, 0x01 },
+	{ RK817_CODEC_DI2S_RSD, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DI2S_RXCR1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DI2S_RXCR2, MASK_ALL, 0x17 },
+	{ RK817_CODEC_DI2S_RXCMD_TSD, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DI2S_TXCR1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DI2S_TXCR2, MASK_ALL, 0x17 },
+	{ RK817_CODEC_DI2S_TXCR3_TXCMD, MASK_ALL, 0x00 },
+	{RK817_GPIO_INT_CFG, RK817_INT_POL_MSK, RK817_INT_POL_L},
+	{RK817_SYS_CFG(1), RK817_HOTDIE_TEMP_MSK | RK817_TSD_TEMP_MSK,
+					   RK817_HOTDIE_105 | RK817_TSD_140},
+};
+
+static const struct rk808_reg_data rk818_pre_init_reg[] = {
+	/* improve efficiency */
+	{ RK818_BUCK2_CONFIG_REG, BUCK2_RATE_MASK,  BUCK_ILMIN_250MA },
+	{ RK818_BUCK4_CONFIG_REG, BUCK_ILMIN_MASK,  BUCK_ILMIN_250MA },
+	{ RK818_BOOST_CONFIG_REG, BOOST_ILMIN_MASK, BOOST_ILMIN_100MA },
+	{ RK818_USB_CTRL_REG,	  RK818_USB_ILIM_SEL_MASK,
+						    RK818_USB_ILMIN_2000MA },
+	/* close charger when usb lower then 3.4V */
+	{ RK818_USB_CTRL_REG,	  RK818_USB_CHG_SD_VSEL_MASK,
+						    (0x7 << 4) },
+	/* no action when vref */
+	{ RK818_H5V_EN_REG,	  BIT(1),	    RK818_REF_RDY_CTRL },
+	/* enable HDMI 5V */
+	{ RK818_H5V_EN_REG,	  BIT(0),	    RK818_H5V_EN },
+	{ RK808_VB_MON_REG,	  MASK_ALL,	    VB_LO_ACT |
+						    VB_LO_SEL_3500MV },
+};
+
+static void rk808_poweroff(struct poweroff_handler *handler)
+{
+	struct rk808 *rk808 = container_of(handler, struct rk808, poweroff);
+	int ret;
+	unsigned int reg, bit;
+
+	switch (rk808->variant) {
+	case RK805_ID:
+		reg = RK805_DEV_CTRL_REG;
+		bit = DEV_OFF;
+		break;
+	case RK808_ID:
+		reg = RK808_DEVCTRL_REG,
+		bit = DEV_OFF_RST;
+		break;
+	case RK817_ID:
+		reg = RK817_SYS_CFG(3);
+		bit = DEV_OFF;
+		break;
+	case RK818_ID:
+		reg = RK818_DEVCTRL_REG;
+		bit = DEV_OFF;
+		break;
+	default:
+		return;
+	}
+
+	shutdown_barebox();
+
+	ret = regmap_update_bits(rk808->regmap, reg, bit, bit);
+	if (ret)
+		pr_err("Failed to shutdown device!\n");
+
+	mdelay(1000);
+	hang();
+}
+
+static int rk808_probe(struct device_d *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct device_node *np = dev->device_node;
+	struct rk808 *rk808;
+	const struct rk808_reg_data *pre_init_reg;
+	const struct mfd_cell *cells;
+	int nr_pre_init_regs;
+	int nr_cells;
+	int msb, lsb;
+	unsigned char pmic_id_msb, pmic_id_lsb;
+	int ret;
+	int i;
+
+	rk808 = kzalloc(sizeof(*rk808), GFP_KERNEL);
+	if (!rk808)
+		return -ENOMEM;
+
+	dev->priv = rk808;
+
+	if (of_device_is_compatible(np, "rockchip,rk817") ||
+	    of_device_is_compatible(np, "rockchip,rk809")) {
+		pmic_id_msb = RK817_ID_MSB;
+		pmic_id_lsb = RK817_ID_LSB;
+	} else {
+		pmic_id_msb = RK808_ID_MSB;
+		pmic_id_lsb = RK808_ID_LSB;
+	}
+
+	/* Read chip variant */
+	msb = i2c_smbus_read_byte_data(client, pmic_id_msb);
+	if (msb < 0) {
+		dev_err(dev, "failed to read the chip id at 0x%x\n",
+			RK808_ID_MSB);
+		return msb;
+	}
+
+	lsb = i2c_smbus_read_byte_data(client, pmic_id_lsb);
+	if (lsb < 0) {
+		dev_err(dev, "failed to read the chip id at 0x%x\n",
+			RK808_ID_LSB);
+		return lsb;
+	}
+
+	rk808->variant = ((msb << 8) | lsb) & RK8XX_ID_MSK;
+	dev_info(dev, "chip id: 0x%x\n", (unsigned int)rk808->variant);
+
+	switch (rk808->variant) {
+	case RK805_ID:
+		rk808->regmap_cfg = &rk805_regmap_config;
+		pre_init_reg = rk805_pre_init_reg;
+		nr_pre_init_regs = ARRAY_SIZE(rk805_pre_init_reg);
+		cells = rk805s;
+		nr_cells = ARRAY_SIZE(rk805s);
+		break;
+	case RK808_ID:
+		rk808->regmap_cfg = &rk808_regmap_config;
+		pre_init_reg = rk808_pre_init_reg;
+		nr_pre_init_regs = ARRAY_SIZE(rk808_pre_init_reg);
+		cells = rk808s;
+		nr_cells = ARRAY_SIZE(rk808s);
+		break;
+	case RK818_ID:
+		rk808->regmap_cfg = &rk818_regmap_config;
+		pre_init_reg = rk818_pre_init_reg;
+		nr_pre_init_regs = ARRAY_SIZE(rk818_pre_init_reg);
+		cells = rk818s;
+		nr_cells = ARRAY_SIZE(rk818s);
+		break;
+	case RK809_ID:
+	case RK817_ID:
+		rk808->regmap_cfg = &rk817_regmap_config;
+		pre_init_reg = rk817_pre_init_reg;
+		nr_pre_init_regs = ARRAY_SIZE(rk817_pre_init_reg);
+		cells = rk817s;
+		nr_cells = ARRAY_SIZE(rk817s);
+		break;
+	default:
+		dev_err(dev, "Unsupported RK8XX ID %lu\n",
+			rk808->variant);
+		return -EINVAL;
+	}
+
+	rk808->i2c = client;
+	i2c_set_clientdata(client, rk808);
+
+	rk808->regmap = regmap_init_i2c_smbus(client, rk808->regmap_cfg);
+	if (IS_ERR(rk808->regmap)) {
+		dev_err(dev, "regmap initialization failed\n");
+		return PTR_ERR(rk808->regmap);
+	}
+
+	ret = regmap_register_cdev(rk808->regmap, NULL);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < nr_pre_init_regs; i++) {
+		ret = regmap_update_bits(rk808->regmap,
+					pre_init_reg[i].addr,
+					pre_init_reg[i].mask,
+					pre_init_reg[i].value);
+		if (ret) {
+			dev_err(dev,
+				"0x%x write err\n",
+				pre_init_reg[i].addr);
+			return ret;
+		}
+	}
+
+	ret = mfd_add_devices(dev, cells, nr_cells);
+	if (ret) {
+		dev_err(dev, "failed to add MFD devices %d\n", ret);
+		return ret;
+	}
+
+	rk808->poweroff.name = "stpmic1-poweroff";
+	rk808->poweroff.poweroff = rk808_poweroff;
+	rk808->poweroff.priority = 200;
+
+	if (of_property_read_bool(np, "rockchip,system-power-controller"))
+		rk808->poweroff.priority += 100;
+
+	poweroff_handler_register(&rk808->poweroff);
+	return 0;
+}
+
+static const struct of_device_id rk808_of_match[] = {
+	{ .compatible = "rockchip,rk805" },
+	{ .compatible = "rockchip,rk808" },
+	{ .compatible = "rockchip,rk809" },
+	{ .compatible = "rockchip,rk817" },
+	{ .compatible = "rockchip,rk818" },
+	{ },
+};
+
+static struct driver_d rk808_i2c_driver = {
+	.name = "rk808",
+	.of_compatible = rk808_of_match,
+	.probe    = rk808_probe,
+};
+coredevice_i2c_driver(rk808_i2c_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Chris Zhong <zyw@rock-chips.com>");
+MODULE_AUTHOR("Zhang Qing <zhangqing@rock-chips.com>");
+MODULE_AUTHOR("Wadim Egorov <w.egorov@phytec.de>");
+MODULE_DESCRIPTION("RK808/RK818 PMIC driver");
diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 38a47b7bc2ed..56abe3896e3b 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -55,6 +55,7 @@ config REGULATOR_ANATOP
 	  regulators. It is recommended that this option be
 	  enabled on i.MX6 platform.
 
+
 config REGULATOR_ARM_SCMI
 	tristate "SCMI based regulator driver"
 	depends on ARM_SCMI_PROTOCOL && OFDEVICE
@@ -64,4 +65,14 @@ config REGULATOR_ARM_SCMI
 	  This driver uses SCMI Message Protocol driver to interact with the
 	  firmware providing the device Voltage functionality.
 
+config REGULATOR_RK808
+	tristate "Rockchip RK805/RK808/RK809/RK817/RK818 Power regulators"
+	depends on MFD_RK808
+	help
+	  Select this option to enable the power regulator of ROCKCHIP
+	  PMIC RK805,RK809&RK817,RK808 and RK818.
+	  This driver supports the control of different power rails of device
+	  through regulator interface. The device supports multiple DCDC/LDO
+	  outputs which can be controlled by i2c communication.
+
 endif
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index 5eaa657ad162..95e42719d174 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -9,3 +9,4 @@ obj-$(CONFIG_REGULATOR_ANATOP) += anatop-regulator.o
 obj-$(CONFIG_REGULATOR_STM32_PWR) += stm32-pwr.o
 obj-$(CONFIG_REGULATOR_STM32_VREFBUF) += stm32-vrefbuf.o
 obj-$(CONFIG_REGULATOR_ARM_SCMI) += scmi-regulator.o
+obj-$(CONFIG_REGULATOR_RK808)   += rk808-regulator.o
diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
new file mode 100644
index 000000000000..39eadbd3ebe5
--- /dev/null
+++ b/drivers/regulator/rk808-regulator.c
@@ -0,0 +1,963 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Regulator driver for Rockchip RK808
+ *
+ * Copyright (c) 2014, Fuzhou Rockchip Electronics Co., Ltd
+ *
+ * Author: Chris Zhong <zyw@rock-chips.com>
+ * Author: Zhang Qing <zhangqing@rock-chips.com>
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <gpio.h>
+#include <init.h>
+#include <i2c/i2c.h>
+#include <of_device.h>
+#include <regmap.h>
+#include <linux/regulator/of_regulator.h>
+#include <regulator.h>
+#include <linux/mfd/rk808.h>
+
+/* Field Definitions */
+#define RK808_BUCK_VSEL_MASK	0x3f
+#define RK808_BUCK4_VSEL_MASK	0xf
+#define RK808_LDO_VSEL_MASK	0x1f
+
+#define RK809_BUCK5_VSEL_MASK		0x7
+
+#define RK817_LDO_VSEL_MASK		0x7f
+#define RK817_BOOST_VSEL_MASK		0x7
+#define RK817_BUCK_VSEL_MASK		0x7f
+
+#define RK818_BUCK_VSEL_MASK		0x3f
+#define RK818_BUCK4_VSEL_MASK		0x1f
+#define RK818_LDO_VSEL_MASK		0x1f
+#define RK818_LDO3_ON_VSEL_MASK		0xf
+#define RK818_BOOST_ON_VSEL_MASK	0xe0
+
+#define ENABLE_MASK(id)			(BIT(id) | BIT(4 + (id)))
+#define DISABLE_VAL(id)			(BIT(4 + (id)))
+
+#define RK817_BOOST_DESC(_supply_name, _min, _max, _step, _vreg,\
+	_vmask, _ereg, _emask, _enval, _disval, _etime)		\
+	{{							\
+		.supply_name	= (_supply_name),			\
+		.n_voltages	= (((_max) - (_min)) / (_step) + 1),	\
+		.min_uV		= (_min) * 1000,			\
+		.uV_step	= (_step) * 1000,			\
+		.vsel_reg	= (_vreg),				\
+		.vsel_mask	= (_vmask),				\
+		.enable_reg	= (_ereg),				\
+		.enable_mask	= (_emask),				\
+		.enable_val     = (_enval),				\
+		.disable_val     = (_disval),				\
+		.off_on_delay	= (_etime),				\
+		.ops		= &rk817_boost_ops,			\
+	}}
+
+#define RK8XX_DESC_COM(_supply_name, _min, _max, _step, _vreg,	\
+	_vmask, _ereg, _emask, _enval, _disval, _etime, _ops)		\
+	{{								\
+		.supply_name	= (_supply_name),			\
+		.n_voltages	= (((_max) - (_min)) / (_step) + 1),	\
+		.min_uV		= (_min) * 1000,			\
+		.uV_step	= (_step) * 1000,			\
+		.vsel_reg	= (_vreg),				\
+		.vsel_mask	= (_vmask),				\
+		.enable_reg	= (_ereg),				\
+		.enable_mask	= (_emask),				\
+		.enable_val     = (_enval),				\
+		.disable_val     = (_disval),				\
+		.off_on_delay	= (_etime),				\
+		.ops		= _ops,			\
+	}}
+
+#define RK805_DESC(_supply_name, _min, _max, _step, _vreg,	\
+	_vmask, _ereg, _emask, _etime)					\
+	RK8XX_DESC_COM(_supply_name, _min, _max, _step, _vreg,	\
+	_vmask, _ereg, _emask, 0, 0, _etime, &rk808_reg_ops)
+
+#define RK8XX_DESC(_supply_name, _min, _max, _step, _vreg,	\
+	_vmask, _ereg, _emask, _etime)					\
+	RK8XX_DESC_COM(_supply_name, _min, _max, _step, _vreg,	\
+	_vmask, _ereg, _emask, 0, 0, _etime, &rk808_reg_ops)
+
+#define RK817_DESC(_supply_name, _min, _max, _step, _vreg,	\
+	_vmask, _ereg, _emask, _disval, _etime)				\
+	RK8XX_DESC_COM(_supply_name, _min, _max, _step, _vreg,	\
+	_vmask, _ereg, _emask, _emask, _disval, _etime, &rk817_reg_ops)
+
+#define RKXX_DESC_SWITCH_COM(_supply_name,_ereg, _emask,	\
+	_enval, _disval, _ops)						\
+	{{								\
+		.supply_name	= (_supply_name),			\
+		.enable_reg	= (_ereg),				\
+		.enable_mask	= (_emask),				\
+		.enable_val     = (_enval),				\
+		.disable_val     = (_disval),				\
+		.ops		= _ops					\
+	}}
+
+#define RK817_DESC_SWITCH(_supply_name, _ereg, _emask,		\
+	_disval)							\
+	RKXX_DESC_SWITCH_COM(_supply_name, _ereg, _emask,	\
+	_emask, _disval, &rk817_switch_ops)
+
+#define RK8XX_DESC_SWITCH(_supply_name, _ereg, _emask)		\
+	RKXX_DESC_SWITCH_COM(_supply_name, _ereg, _emask,	\
+	0, 0, &rk808_switch_ops)
+
+static const struct regulator_linear_range rk808_ldo3_voltage_ranges[] = {
+	REGULATOR_LINEAR_RANGE(800000, 0, 13, 100000),
+	REGULATOR_LINEAR_RANGE(2500000, 15, 15, 0),
+};
+
+#define RK809_BUCK5_SEL_CNT		(8)
+
+static const struct regulator_linear_range rk809_buck5_voltage_ranges[] = {
+	REGULATOR_LINEAR_RANGE(1500000, 0, 0, 0),
+	REGULATOR_LINEAR_RANGE(1800000, 1, 3, 200000),
+	REGULATOR_LINEAR_RANGE(2800000, 4, 5, 200000),
+	REGULATOR_LINEAR_RANGE(3300000, 6, 7, 300000),
+};
+
+#define RK817_BUCK1_MIN0 500000
+#define RK817_BUCK1_MAX0 1500000
+
+#define RK817_BUCK1_MIN1 1600000
+#define RK817_BUCK1_MAX1 2400000
+
+#define RK817_BUCK3_MAX1 3400000
+
+#define RK817_BUCK1_STP0 12500
+#define RK817_BUCK1_STP1 100000
+
+#define RK817_BUCK1_SEL0 ((RK817_BUCK1_MAX0 - RK817_BUCK1_MIN0) /\
+						  RK817_BUCK1_STP0)
+#define RK817_BUCK1_SEL1 ((RK817_BUCK1_MAX1 - RK817_BUCK1_MIN1) /\
+						  RK817_BUCK1_STP1)
+
+#define RK817_BUCK3_SEL1 ((RK817_BUCK3_MAX1 - RK817_BUCK1_MIN1) /\
+						  RK817_BUCK1_STP1)
+
+#define RK817_BUCK1_SEL_CNT (RK817_BUCK1_SEL0 + RK817_BUCK1_SEL1 + 1)
+#define RK817_BUCK3_SEL_CNT (RK817_BUCK1_SEL0 + RK817_BUCK3_SEL1 + 1)
+
+static const struct regulator_linear_range rk817_buck1_voltage_ranges[] = {
+	REGULATOR_LINEAR_RANGE(RK817_BUCK1_MIN0, 0,
+			       RK817_BUCK1_SEL0, RK817_BUCK1_STP0),
+	REGULATOR_LINEAR_RANGE(RK817_BUCK1_MIN1, RK817_BUCK1_SEL0 + 1,
+			       RK817_BUCK1_SEL_CNT, RK817_BUCK1_STP1),
+};
+
+static const struct regulator_linear_range rk817_buck3_voltage_ranges[] = {
+	REGULATOR_LINEAR_RANGE(RK817_BUCK1_MIN0, 0,
+			       RK817_BUCK1_SEL0, RK817_BUCK1_STP0),
+	REGULATOR_LINEAR_RANGE(RK817_BUCK1_MIN1, RK817_BUCK1_SEL0 + 1,
+			       RK817_BUCK3_SEL_CNT, RK817_BUCK1_STP1),
+};
+
+struct rk_regulator_cfg {
+	struct regulator_desc desc;
+	struct regulator_dev rdev;
+};
+
+static int rk8xx_is_enabled_wmsk_regmap(struct regulator_dev *rdev)
+{
+	unsigned int val;
+	int ret;
+
+	ret = regmap_read(rdev->regmap, rdev->desc->enable_reg, &val);
+	if (ret != 0)
+		return ret;
+
+	/* add write mask bit */
+	val |= (rdev->desc->enable_mask & 0xf0);
+	val &= rdev->desc->enable_mask;
+
+	if (rdev->desc->enable_is_inverted) {
+		if (rdev->desc->enable_val)
+			return val != rdev->desc->enable_val;
+		return (val == 0);
+	}
+	if (rdev->desc->enable_val)
+		return val == rdev->desc->enable_val;
+	return val != 0;
+}
+
+static struct regulator_ops rk808_buck1_2_ops = {
+	.list_voltage		= regulator_list_voltage_linear,
+	.map_voltage		= regulator_map_voltage_linear,
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= regulator_is_enabled_regmap,
+};
+
+static struct regulator_ops rk808_reg_ops = {
+	.list_voltage		= regulator_list_voltage_linear,
+	.map_voltage		= regulator_map_voltage_linear,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= regulator_is_enabled_regmap,
+};
+
+static struct regulator_ops rk808_reg_ops_ranges = {
+	.list_voltage		= regulator_list_voltage_linear_range,
+	.map_voltage		= regulator_map_voltage_linear_range,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= regulator_is_enabled_regmap,
+};
+
+static struct regulator_ops rk808_switch_ops = {
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= regulator_is_enabled_regmap,
+};
+
+static const struct regulator_linear_range rk805_buck_1_2_voltage_ranges[] = {
+	REGULATOR_LINEAR_RANGE(712500, 0, 59, 12500),
+	REGULATOR_LINEAR_RANGE(1800000, 60, 62, 200000),
+	REGULATOR_LINEAR_RANGE(2300000, 63, 63, 0),
+};
+
+static const struct regulator_ops rk809_buck5_ops_range = {
+	.list_voltage		= regulator_list_voltage_linear_range,
+	.map_voltage		= regulator_map_voltage_linear_range,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= rk8xx_is_enabled_wmsk_regmap,
+};
+
+static const struct regulator_ops rk817_reg_ops = {
+	.list_voltage		= regulator_list_voltage_linear,
+	.map_voltage		= regulator_map_voltage_linear,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= rk8xx_is_enabled_wmsk_regmap,
+};
+
+static const struct regulator_ops rk817_boost_ops = {
+	.list_voltage		= regulator_list_voltage_linear,
+	.map_voltage		= regulator_map_voltage_linear,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= rk8xx_is_enabled_wmsk_regmap,
+};
+
+static const struct regulator_ops rk817_buck_ops_range = {
+	.list_voltage		= regulator_list_voltage_linear_range,
+	.map_voltage		= regulator_map_voltage_linear_range,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= rk8xx_is_enabled_wmsk_regmap,
+};
+
+static const struct regulator_ops rk817_switch_ops = {
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= rk8xx_is_enabled_wmsk_regmap,
+};
+
+static struct rk_regulator_cfg rk805_reg[] = {
+	{{
+		/* .name = "DCDC_REG1", */
+		.supply_name = "vcc1",
+		.ops = &rk808_reg_ops_ranges,
+		.n_voltages = 64,
+		.linear_ranges = rk805_buck_1_2_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk805_buck_1_2_voltage_ranges),
+		.vsel_reg = RK805_BUCK1_ON_VSEL_REG,
+		.vsel_mask = RK818_BUCK_VSEL_MASK,
+		.enable_reg = RK805_DCDC_EN_REG,
+		.enable_mask = BIT(0),
+	}}, {{
+		/* .name = "DCDC_REG2", */
+		.supply_name = "vcc2",
+		.ops = &rk808_reg_ops_ranges,
+		.n_voltages = 64,
+		.linear_ranges = rk805_buck_1_2_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk805_buck_1_2_voltage_ranges),
+		.vsel_reg = RK805_BUCK2_ON_VSEL_REG,
+		.vsel_mask = RK818_BUCK_VSEL_MASK,
+		.enable_reg = RK805_DCDC_EN_REG,
+		.enable_mask = BIT(1),
+	}}, {{
+		/* .name = "DCDC_REG3", */
+		.supply_name = "vcc3",
+		.ops = &rk808_switch_ops,
+		.n_voltages = 1,
+		.enable_reg = RK805_DCDC_EN_REG,
+		.enable_mask = BIT(2),
+	}},
+
+	RK805_DESC(/* "DCDC_REG4", */ "vcc4", 800, 3400, 100,
+		RK805_BUCK4_ON_VSEL_REG, RK818_BUCK4_VSEL_MASK,
+		RK805_DCDC_EN_REG, BIT(3), 0),
+
+	RK805_DESC(/* "LDO_REG1", */ "vcc5", 800, 3400, 100,
+		RK805_LDO1_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK805_LDO_EN_REG,
+		BIT(0), 400),
+	RK805_DESC(/* "LDO_REG2", */ "vcc5", 800, 3400, 100,
+		RK805_LDO2_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK805_LDO_EN_REG,
+		BIT(1), 400),
+	RK805_DESC(/* "LDO_REG3", */ "vcc6", 800, 3400, 100,
+		RK805_LDO3_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK805_LDO_EN_REG,
+		BIT(2), 400),
+};
+static_assert(ARRAY_SIZE(rk805_reg) == RK805_NUM_REGULATORS);
+
+static struct rk_regulator_cfg rk808_reg[] = {
+	{{
+		/* .name = "DCDC_REG1", */
+		.supply_name = "vcc1",
+		.ops = &rk808_buck1_2_ops,
+		.min_uV = 712500,
+		.uV_step = 12500,
+		.n_voltages = 64,
+		.vsel_reg = RK808_BUCK1_ON_VSEL_REG,
+		.vsel_mask = RK808_BUCK_VSEL_MASK,
+		.enable_reg = RK808_DCDC_EN_REG,
+		.enable_mask = BIT(0),
+	}}, {{
+		/* .name = "DCDC_REG2", */
+		.supply_name = "vcc2",
+		.ops = &rk808_buck1_2_ops,
+		.min_uV = 712500,
+		.uV_step = 12500,
+		.n_voltages = 64,
+		.vsel_reg = RK808_BUCK2_ON_VSEL_REG,
+		.vsel_mask = RK808_BUCK_VSEL_MASK,
+		.enable_reg = RK808_DCDC_EN_REG,
+		.enable_mask = BIT(1),
+	}}, {{
+		/* .name = "DCDC_REG3", */
+		.supply_name = "vcc3",
+		.ops = &rk808_switch_ops,
+		.n_voltages = 1,
+		.enable_reg = RK808_DCDC_EN_REG,
+		.enable_mask = BIT(2),
+	}}, {{
+		/* .name = "DCDC_REG4", */
+		.supply_name = "vcc4",
+		.ops = &rk808_reg_ops,
+		.min_uV = 1800000,
+		.uV_step = 100000,
+		.n_voltages = 16,
+		.vsel_reg = RK808_BUCK4_ON_VSEL_REG,
+		.vsel_mask = RK808_BUCK4_VSEL_MASK,
+		.enable_reg = RK808_DCDC_EN_REG,
+		.enable_mask = BIT(3),
+	}}, {{
+		/* .name = "LDO_REG1", */
+		.supply_name = "vcc6",
+		.ops = &rk808_reg_ops,
+		.min_uV = 1800000,
+		.uV_step = 100000,
+		.n_voltages = 17,
+		.vsel_reg = RK808_LDO1_ON_VSEL_REG,
+		.vsel_mask = RK808_LDO_VSEL_MASK,
+		.enable_reg = RK808_LDO_EN_REG,
+		.enable_mask = BIT(0),
+		.off_on_delay = 400,
+	}}, {{
+		/* .name = "LDO_REG2", */
+		.supply_name = "vcc6",
+		.ops = &rk808_reg_ops,
+		.min_uV = 1800000,
+		.uV_step = 100000,
+		.n_voltages = 17,
+		.vsel_reg = RK808_LDO2_ON_VSEL_REG,
+		.vsel_mask = RK808_LDO_VSEL_MASK,
+		.enable_reg = RK808_LDO_EN_REG,
+		.enable_mask = BIT(1),
+		.off_on_delay = 400,
+	}}, {{
+		/* .name = "LDO_REG3", */
+		.supply_name = "vcc7",
+		.ops = &rk808_reg_ops_ranges,
+		.n_voltages = 16,
+		.linear_ranges = rk808_ldo3_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk808_ldo3_voltage_ranges),
+		.vsel_reg = RK808_LDO3_ON_VSEL_REG,
+		.vsel_mask = RK808_BUCK4_VSEL_MASK,
+		.enable_reg = RK808_LDO_EN_REG,
+		.enable_mask = BIT(2),
+		.off_on_delay = 400,
+	}}, {{
+		/* .name = "LDO_REG4", */
+		.supply_name = "vcc9",
+		.ops = &rk808_reg_ops,
+		.min_uV = 1800000,
+		.uV_step = 100000,
+		.n_voltages = 17,
+		.vsel_reg = RK808_LDO4_ON_VSEL_REG,
+		.vsel_mask = RK808_LDO_VSEL_MASK,
+		.enable_reg = RK808_LDO_EN_REG,
+		.enable_mask = BIT(3),
+		.off_on_delay = 400,
+	}}, {{
+		/* .name = "LDO_REG5", */
+		.supply_name = "vcc9",
+		.ops = &rk808_reg_ops,
+		.min_uV = 1800000,
+		.uV_step = 100000,
+		.n_voltages = 17,
+		.vsel_reg = RK808_LDO5_ON_VSEL_REG,
+		.vsel_mask = RK808_LDO_VSEL_MASK,
+		.enable_reg = RK808_LDO_EN_REG,
+		.enable_mask = BIT(4),
+		.off_on_delay = 400,
+	}}, {{
+		/* .name = "LDO_REG6", */
+		.supply_name = "vcc10",
+		.ops = &rk808_reg_ops,
+		.min_uV = 800000,
+		.uV_step = 100000,
+		.n_voltages = 18,
+		.vsel_reg = RK808_LDO6_ON_VSEL_REG,
+		.vsel_mask = RK808_LDO_VSEL_MASK,
+		.enable_reg = RK808_LDO_EN_REG,
+		.enable_mask = BIT(5),
+		.off_on_delay = 400,
+	}}, {{
+		/* .name = "LDO_REG7", */
+		.supply_name = "vcc7",
+		.ops = &rk808_reg_ops,
+		.min_uV = 800000,
+		.uV_step = 100000,
+		.n_voltages = 18,
+		.vsel_reg = RK808_LDO7_ON_VSEL_REG,
+		.vsel_mask = RK808_LDO_VSEL_MASK,
+		.enable_reg = RK808_LDO_EN_REG,
+		.enable_mask = BIT(6),
+		.off_on_delay = 400,
+	}}, {{
+		/* .name = "LDO_REG8", */
+		.supply_name = "vcc11",
+		.ops = &rk808_reg_ops,
+		.min_uV = 1800000,
+		.uV_step = 100000,
+		.n_voltages = 17,
+		.vsel_reg = RK808_LDO8_ON_VSEL_REG,
+		.vsel_mask = RK808_LDO_VSEL_MASK,
+		.enable_reg = RK808_LDO_EN_REG,
+		.enable_mask = BIT(7),
+		.off_on_delay = 400,
+	}}, {{
+		/* .name = "SWITCH_REG1", */
+		.supply_name = "vcc8",
+		.ops = &rk808_switch_ops,
+		.enable_reg = RK808_DCDC_EN_REG,
+		.enable_mask = BIT(5),
+	}}, {{
+		/* .name = "SWITCH_REG2", */
+		.supply_name = "vcc12",
+		.ops = &rk808_switch_ops,
+		.enable_reg = RK808_DCDC_EN_REG,
+		.enable_mask = BIT(6),
+	}},
+};
+static_assert(ARRAY_SIZE(rk808_reg) == RK808_NUM_REGULATORS);
+
+static struct rk_regulator_cfg rk809_reg[] = {
+	{{
+		/* .name = "DCDC_REG1", */
+		.supply_name = "vcc1",
+		.ops = &rk817_buck_ops_range,
+		.n_voltages = RK817_BUCK1_SEL_CNT + 1,
+		.linear_ranges = rk817_buck1_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk817_buck1_voltage_ranges),
+		.vsel_reg = RK817_BUCK1_ON_VSEL_REG,
+		.vsel_mask = RK817_BUCK_VSEL_MASK,
+		.enable_reg = RK817_POWER_EN_REG(0),
+		.enable_mask = ENABLE_MASK(RK817_ID_DCDC1),
+		.enable_val = ENABLE_MASK(RK817_ID_DCDC1),
+		.disable_val = DISABLE_VAL(RK817_ID_DCDC1),
+	}}, {{
+		/* .name = "DCDC_REG2", */
+		.supply_name = "vcc2",
+		.ops = &rk817_buck_ops_range,
+		.n_voltages = RK817_BUCK1_SEL_CNT + 1,
+		.linear_ranges = rk817_buck1_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk817_buck1_voltage_ranges),
+		.vsel_reg = RK817_BUCK2_ON_VSEL_REG,
+		.vsel_mask = RK817_BUCK_VSEL_MASK,
+		.enable_reg = RK817_POWER_EN_REG(0),
+		.enable_mask = ENABLE_MASK(RK817_ID_DCDC2),
+		.enable_val = ENABLE_MASK(RK817_ID_DCDC2),
+		.disable_val = DISABLE_VAL(RK817_ID_DCDC2),
+	}}, {{
+		/* .name = "DCDC_REG3", */
+		.supply_name = "vcc3",
+		.ops = &rk817_buck_ops_range,
+		.n_voltages = RK817_BUCK1_SEL_CNT + 1,
+		.linear_ranges = rk817_buck1_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk817_buck1_voltage_ranges),
+		.vsel_reg = RK817_BUCK3_ON_VSEL_REG,
+		.vsel_mask = RK817_BUCK_VSEL_MASK,
+		.enable_reg = RK817_POWER_EN_REG(0),
+		.enable_mask = ENABLE_MASK(RK817_ID_DCDC3),
+		.enable_val = ENABLE_MASK(RK817_ID_DCDC3),
+		.disable_val = DISABLE_VAL(RK817_ID_DCDC3),
+	}}, {{
+		/* .name = "DCDC_REG4", */
+		.supply_name = "vcc4",
+		.ops = &rk817_buck_ops_range,
+		.n_voltages = RK817_BUCK3_SEL_CNT + 1,
+		.linear_ranges = rk817_buck3_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk817_buck3_voltage_ranges),
+		.vsel_reg = RK817_BUCK4_ON_VSEL_REG,
+		.vsel_mask = RK817_BUCK_VSEL_MASK,
+		.enable_reg = RK817_POWER_EN_REG(0),
+		.enable_mask = ENABLE_MASK(RK817_ID_DCDC4),
+		.enable_val = ENABLE_MASK(RK817_ID_DCDC4),
+		.disable_val = DISABLE_VAL(RK817_ID_DCDC4),
+	}}, {{
+		/* .name = "DCDC_REG5", */
+		.supply_name = "vcc9",
+		.ops = &rk809_buck5_ops_range,
+		.n_voltages = RK809_BUCK5_SEL_CNT,
+		.linear_ranges = rk809_buck5_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk809_buck5_voltage_ranges),
+		.vsel_reg = RK809_BUCK5_CONFIG(0),
+		.vsel_mask = RK809_BUCK5_VSEL_MASK,
+		.enable_reg = RK817_POWER_EN_REG(3),
+		.enable_mask = ENABLE_MASK(1),
+		.enable_val = ENABLE_MASK(1),
+		.disable_val = DISABLE_VAL(1),
+	}},
+	RK817_DESC(/* "LDO_REG1", */ "vcc5", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(0), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(1), ENABLE_MASK(0),
+		   DISABLE_VAL(0), 400),
+	RK817_DESC(/* "LDO_REG2", */ "vcc5", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(1), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(1), ENABLE_MASK(1),
+		   DISABLE_VAL(1), 400),
+	RK817_DESC(/* "LDO_REG3", */ "vcc5", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(2), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(1), ENABLE_MASK(2),
+		   DISABLE_VAL(2), 400),
+	RK817_DESC(/* "LDO_REG4", */ "vcc6", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(3), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(1), ENABLE_MASK(3),
+		   DISABLE_VAL(3), 400),
+	RK817_DESC(/* "LDO_REG5", */ "vcc6", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(4), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(2), ENABLE_MASK(0),
+		   DISABLE_VAL(0), 400),
+	RK817_DESC(/* "LDO_REG6", */ "vcc6", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(5), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(2), ENABLE_MASK(1),
+		   DISABLE_VAL(1), 400),
+	RK817_DESC(/* "LDO_REG7", */ "vcc7", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(6), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(2), ENABLE_MASK(2),
+		   DISABLE_VAL(2), 400),
+	RK817_DESC(/* "LDO_REG8", */ "vcc7", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(7), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(2), ENABLE_MASK(3),
+		   DISABLE_VAL(3), 400),
+	RK817_DESC(/* "LDO_REG9", */ "vcc7", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(8), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(3), ENABLE_MASK(0),
+		   DISABLE_VAL(0), 400),
+	RK817_DESC_SWITCH(/* "SWITCH_REG1", */ "vcc9",
+			  RK817_POWER_EN_REG(3), ENABLE_MASK(2), DISABLE_VAL(2)),
+	RK817_DESC_SWITCH(/* "SWITCH_REG2", */ "vcc8",
+			  RK817_POWER_EN_REG(3), ENABLE_MASK(3), DISABLE_VAL(3)),
+};
+static_assert(ARRAY_SIZE(rk809_reg) == RK809_NUM_REGULATORS);
+
+static struct rk_regulator_cfg rk817_reg[] = {
+	{{
+		/* .name = "DCDC_REG1", */
+		.supply_name = "vcc1",
+		.ops = &rk817_buck_ops_range,
+		.n_voltages = RK817_BUCK1_SEL_CNT + 1,
+		.linear_ranges = rk817_buck1_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk817_buck1_voltage_ranges),
+		.vsel_reg = RK817_BUCK1_ON_VSEL_REG,
+		.vsel_mask = RK817_BUCK_VSEL_MASK,
+		.enable_reg = RK817_POWER_EN_REG(0),
+		.enable_mask = ENABLE_MASK(RK817_ID_DCDC1),
+		.enable_val = ENABLE_MASK(RK817_ID_DCDC1),
+		.disable_val = DISABLE_VAL(RK817_ID_DCDC1),
+	 }}, {{
+		/* .name = "DCDC_REG2", */
+		.supply_name = "vcc2",
+		.ops = &rk817_buck_ops_range,
+		.n_voltages = RK817_BUCK1_SEL_CNT + 1,
+		.linear_ranges = rk817_buck1_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk817_buck1_voltage_ranges),
+		.vsel_reg = RK817_BUCK2_ON_VSEL_REG,
+		.vsel_mask = RK817_BUCK_VSEL_MASK,
+		.enable_reg = RK817_POWER_EN_REG(0),
+		.enable_mask = ENABLE_MASK(RK817_ID_DCDC2),
+		.enable_val = ENABLE_MASK(RK817_ID_DCDC2),
+		.disable_val = DISABLE_VAL(RK817_ID_DCDC2),
+	 }}, {{
+		/* .name = "DCDC_REG3", */
+		.supply_name = "vcc3",
+		.ops = &rk817_buck_ops_range,
+		.n_voltages = RK817_BUCK1_SEL_CNT + 1,
+		.linear_ranges = rk817_buck1_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk817_buck1_voltage_ranges),
+		.vsel_reg = RK817_BUCK3_ON_VSEL_REG,
+		.vsel_mask = RK817_BUCK_VSEL_MASK,
+		.enable_reg = RK817_POWER_EN_REG(0),
+		.enable_mask = ENABLE_MASK(RK817_ID_DCDC3),
+		.enable_val = ENABLE_MASK(RK817_ID_DCDC3),
+		.disable_val = DISABLE_VAL(RK817_ID_DCDC3),
+	 }}, {{
+		/* .name = "DCDC_REG4", */
+		.supply_name = "vcc4",
+		.ops = &rk817_buck_ops_range,
+		.n_voltages = RK817_BUCK3_SEL_CNT + 1,
+		.linear_ranges = rk817_buck3_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk817_buck3_voltage_ranges),
+		.vsel_reg = RK817_BUCK4_ON_VSEL_REG,
+		.vsel_mask = RK817_BUCK_VSEL_MASK,
+		.enable_reg = RK817_POWER_EN_REG(0),
+		.enable_mask = ENABLE_MASK(RK817_ID_DCDC4),
+		.enable_val = ENABLE_MASK(RK817_ID_DCDC4),
+		.disable_val = DISABLE_VAL(RK817_ID_DCDC4),
+	}},
+	RK817_DESC(/* "LDO_REG1", */ "vcc5", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(0), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(1), ENABLE_MASK(0),
+		   DISABLE_VAL(0), 400),
+	RK817_DESC(/* "LDO_REG2", */ "vcc5", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(1), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(1), ENABLE_MASK(1),
+		   DISABLE_VAL(1), 400),
+	RK817_DESC(/* "LDO_REG3", */ "vcc5", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(2), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(1), ENABLE_MASK(2),
+		   DISABLE_VAL(2), 400),
+	RK817_DESC(/* "LDO_REG4", */ "vcc6", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(3), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(1), ENABLE_MASK(3),
+		   DISABLE_VAL(3), 400),
+	RK817_DESC(/* "LDO_REG5", */ "vcc6", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(4), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(2), ENABLE_MASK(0),
+		   DISABLE_VAL(0), 400),
+	RK817_DESC(/* "LDO_REG6", */ "vcc6", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(5), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(2), ENABLE_MASK(1),
+		   DISABLE_VAL(1), 400),
+	RK817_DESC(/* "LDO_REG7", */ "vcc7", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(6), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(2), ENABLE_MASK(2),
+		   DISABLE_VAL(2), 400),
+	RK817_DESC(/* "LDO_REG8", */ "vcc7", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(7), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(2), ENABLE_MASK(3),
+		   DISABLE_VAL(3), 400),
+	RK817_DESC(/* "LDO_REG9", */ "vcc7", 600, 3400, 25,
+		   RK817_LDO_ON_VSEL_REG(8), RK817_LDO_VSEL_MASK,
+		   RK817_POWER_EN_REG(3), ENABLE_MASK(0),
+		   DISABLE_VAL(0), 400),
+	RK817_BOOST_DESC(/* "BOOST", */ "vcc8", 4700, 5400, 100,
+			 RK817_BOOST_OTG_CFG, RK817_BOOST_VSEL_MASK,
+			 RK817_POWER_EN_REG(3), ENABLE_MASK(1), ENABLE_MASK(1),
+		   DISABLE_VAL(1), 400),
+	RK817_DESC_SWITCH(/* "OTG_SWITCH", */ "vcc9",
+			 RK817_POWER_EN_REG(3), ENABLE_MASK(2), DISABLE_VAL(2)),
+};
+static_assert(ARRAY_SIZE(rk817_reg) == RK817_NUM_REGULATORS);
+
+static struct rk_regulator_cfg rk818_reg[] = {
+	{{
+		/* .name = "DCDC_REG1", */
+		.supply_name = "vcc1",
+		.ops = &rk808_reg_ops,
+		.min_uV = 712500,
+		.uV_step = 12500,
+		.n_voltages = 64,
+		.vsel_reg = RK818_BUCK1_ON_VSEL_REG,
+		.vsel_mask = RK818_BUCK_VSEL_MASK,
+		.enable_reg = RK818_DCDC_EN_REG,
+		.enable_mask = BIT(0),
+	 }}, {{
+		/* .name = "DCDC_REG2", */
+		.supply_name = "vcc2",
+		.ops = &rk808_reg_ops,
+		.min_uV = 712500,
+		.uV_step = 12500,
+		.n_voltages = 64,
+		.vsel_reg = RK818_BUCK2_ON_VSEL_REG,
+		.vsel_mask = RK818_BUCK_VSEL_MASK,
+		.enable_reg = RK818_DCDC_EN_REG,
+		.enable_mask = BIT(1),
+	 }}, {{
+		/* .name = "DCDC_REG3", */
+		.supply_name = "vcc3",
+		.ops = &rk808_switch_ops,
+		.n_voltages = 1,
+		.enable_reg = RK818_DCDC_EN_REG,
+		.enable_mask = BIT(2),
+	}},
+	RK8XX_DESC(/* "DCDC_REG4", */ "vcc4", 1800, 3600, 100,
+		RK818_BUCK4_ON_VSEL_REG, RK818_BUCK4_VSEL_MASK,
+		RK818_DCDC_EN_REG, BIT(3), 0),
+	RK8XX_DESC(/* "DCDC_BOOST", */ "boost", 4700, 5400, 100,
+		RK818_BOOST_LDO9_ON_VSEL_REG, RK818_BOOST_ON_VSEL_MASK,
+		RK818_DCDC_EN_REG, BIT(4), 0),
+	RK8XX_DESC(/* "LDO_REG1", */ "vcc6", 1800, 3400, 100,
+		RK818_LDO1_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK818_LDO_EN_REG,
+		BIT(0), 400),
+	RK8XX_DESC(/* "LDO_REG2", */ "vcc6", 1800, 3400, 100,
+		RK818_LDO2_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK818_LDO_EN_REG,
+		BIT(1), 400),
+	{{
+		/* .name = "LDO_REG3", */
+		.supply_name = "vcc7",
+		.ops = &rk808_reg_ops_ranges,
+		.n_voltages = 16,
+		.linear_ranges = rk808_ldo3_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk808_ldo3_voltage_ranges),
+		.vsel_reg = RK818_LDO3_ON_VSEL_REG,
+		.vsel_mask = RK818_LDO3_ON_VSEL_MASK,
+		.enable_reg = RK818_LDO_EN_REG,
+		.enable_mask = BIT(2),
+		.off_on_delay = 400,
+	}},
+	RK8XX_DESC(/* "LDO_REG4", */ "vcc8", 1800, 3400, 100,
+		RK818_LDO4_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK818_LDO_EN_REG,
+		BIT(3), 400),
+	RK8XX_DESC(/* "LDO_REG5", */ "vcc7", 1800, 3400, 100,
+		RK818_LDO5_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK818_LDO_EN_REG,
+		BIT(4), 400),
+	RK8XX_DESC(/* "LDO_REG6", */ "vcc8", 800, 2500, 100,
+		RK818_LDO6_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK818_LDO_EN_REG,
+		BIT(5), 400),
+	RK8XX_DESC(/* "LDO_REG7", */ "vcc7", 800, 2500, 100,
+		RK818_LDO7_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK818_LDO_EN_REG,
+		BIT(6), 400),
+	RK8XX_DESC(/* "LDO_REG8", */ "vcc8", 1800, 3400, 100,
+		RK818_LDO8_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK818_LDO_EN_REG,
+		BIT(7), 400),
+	RK8XX_DESC(/* "LDO_REG9", */ "vcc9", 1800, 3400, 100,
+		RK818_BOOST_LDO9_ON_VSEL_REG, RK818_LDO_VSEL_MASK,
+		RK818_DCDC_EN_REG, BIT(5), 400),
+	RK8XX_DESC_SWITCH(/* "SWITCH_REG", */ "vcc9",
+			  RK818_DCDC_EN_REG, BIT(6)),
+	RK8XX_DESC_SWITCH(/* "HDMI_SWITCH", */ "h_5v",
+			  RK818_H5V_EN_REG, BIT(0)),
+	RK8XX_DESC_SWITCH(/* "OTG_SWITCH", */ "usb",
+			  RK818_DCDC_EN_REG, BIT(7)),
+};
+static_assert(ARRAY_SIZE(rk818_reg) == RK818_NUM_REGULATORS);
+
+static int rk808_regulator_register(struct rk808 *rk808, int id,
+				    struct of_regulator_match *match,
+				    struct rk_regulator_cfg *cfg)
+{
+	struct device_d *dev = &rk808->i2c->dev;
+	int ret;
+
+	if (!match->of_node) {
+		dev_dbg(dev, "Skip missing DTB regulator %s", match->name);
+		return 0;
+	}
+
+	cfg->rdev.desc = &cfg->desc;
+	cfg->rdev.dev = dev;
+	cfg->rdev.regmap = rk808->regmap;
+
+	ret = of_regulator_register(&cfg->rdev, match->of_node);
+	if (ret) {
+		dev_err(dev, "failed to register %s regulator\n", match->name);
+		return ret;
+	}
+
+	dev_dbg(dev, "registered %s\n", match->name);
+
+	return 0;
+}
+
+#define MATCH(variant, _name, _id) [RK##variant##_ID_##_id] = \
+	{ .name = #_name, .desc = &rk##variant##_reg[RK##variant##_ID_##_id].desc }
+
+static struct of_regulator_match rk805_reg_matches[] = {
+	MATCH(805, DCDC_REG1, DCDC1),
+	MATCH(805, DCDC_REG2, DCDC2),
+	MATCH(805, DCDC_REG3, DCDC3),
+	MATCH(805, DCDC_REG4, DCDC4),
+	MATCH(805, LDO_REG1, LDO1),
+	MATCH(805, LDO_REG2, LDO2),
+	MATCH(805, LDO_REG3, LDO3),
+};
+static_assert(ARRAY_SIZE(rk805_reg_matches) == RK805_NUM_REGULATORS);
+
+static struct of_regulator_match rk808_reg_matches[] = {
+	MATCH(808, DCDC_REG1, DCDC1),
+	MATCH(808, DCDC_REG2, DCDC2),
+	MATCH(808, DCDC_REG3, DCDC3),
+	MATCH(808, DCDC_REG4, DCDC4),
+	MATCH(808, LDO_REG1, LDO1),
+	MATCH(808, LDO_REG2, LDO2),
+	MATCH(808, LDO_REG3, LDO3),
+	MATCH(808, LDO_REG4, LDO4),
+	MATCH(808, LDO_REG5, LDO5),
+	MATCH(808, LDO_REG6, LDO6),
+	MATCH(808, LDO_REG7, LDO7),
+	MATCH(808, LDO_REG8, LDO8),
+	MATCH(808, SWITCH_REG1, SWITCH1),
+	MATCH(808, SWITCH_REG2, SWITCH2),
+};
+static_assert(ARRAY_SIZE(rk808_reg_matches) == RK808_NUM_REGULATORS);
+
+static struct of_regulator_match rk809_reg_matches[] = {
+	MATCH(809, DCDC_REG1, DCDC1),
+	MATCH(809, DCDC_REG2, DCDC2),
+	MATCH(809, DCDC_REG3, DCDC3),
+	MATCH(809, DCDC_REG4, DCDC4),
+	MATCH(809, LDO_REG1, LDO1),
+	MATCH(809, LDO_REG2, LDO2),
+	MATCH(809, LDO_REG3, LDO3),
+	MATCH(809, LDO_REG4, LDO4),
+	MATCH(809, LDO_REG5, LDO5),
+	MATCH(809, LDO_REG6, LDO6),
+	MATCH(809, LDO_REG7, LDO7),
+	MATCH(809, LDO_REG8, LDO8),
+	MATCH(809, LDO_REG9, LDO9),
+	MATCH(809, DCDC_REG5, DCDC5),
+	MATCH(809, SWITCH_REG1, SW1),
+	MATCH(809, SWITCH_REG2, SW2),
+};
+static_assert(ARRAY_SIZE(rk809_reg_matches) == RK809_NUM_REGULATORS);
+
+static struct of_regulator_match rk817_reg_matches[] = {
+	MATCH(817, DCDC_REG1, DCDC1),
+	MATCH(817, DCDC_REG2, DCDC2),
+	MATCH(817, DCDC_REG3, DCDC3),
+	MATCH(817, DCDC_REG4, DCDC4),
+	MATCH(817, LDO_REG1, LDO1),
+	MATCH(817, LDO_REG2, LDO2),
+	MATCH(817, LDO_REG3, LDO3),
+	MATCH(817, LDO_REG4, LDO4),
+	MATCH(817, LDO_REG5, LDO5),
+	MATCH(817, LDO_REG6, LDO6),
+	MATCH(817, LDO_REG7, LDO7),
+	MATCH(817, LDO_REG8, LDO8),
+	MATCH(817, LDO_REG9, LDO9),
+	MATCH(817, BOOST, BOOST),
+	MATCH(817, OTG_SWITCH, BOOST_OTG_SW),
+};
+static_assert(ARRAY_SIZE(rk817_reg_matches) == RK817_NUM_REGULATORS);
+
+static struct of_regulator_match rk818_reg_matches[] = {
+	MATCH(818, DCDC_REG1, DCDC1),
+	MATCH(818, DCDC_REG2, DCDC2),
+	MATCH(818, DCDC_REG3, DCDC3),
+	MATCH(818, DCDC_REG4, DCDC4),
+	MATCH(818, DCDC_BOOST, BOOST),
+	MATCH(818, LDO_REG1, LDO1),
+	MATCH(818, LDO_REG2, LDO2),
+	MATCH(818, LDO_REG3, LDO3),
+	MATCH(818, LDO_REG4, LDO4),
+	MATCH(818, LDO_REG5, LDO5),
+	MATCH(818, LDO_REG6, LDO6),
+	MATCH(818, LDO_REG7, LDO7),
+	MATCH(818, LDO_REG8, LDO8),
+	MATCH(818, LDO_REG9, LDO9),
+	MATCH(818, SWITCH_REG, SWITCH),
+	MATCH(818, HDMI_SWITCH, HDMI_SWITCH),
+	MATCH(818, OTG_SWITCH, OTG_SWITCH),
+};
+static_assert(ARRAY_SIZE(rk818_reg_matches) == RK818_NUM_REGULATORS);
+
+static int rk808_regulator_dt_parse(struct device_d *dev,
+				    struct of_regulator_match *matches,
+				    int nregulators)
+{
+	struct device_node *np = dev->device_node;
+
+	np = of_get_child_by_name(np, "regulators");
+	if (!np)
+		return -ENOENT;
+
+	return of_regulator_match(dev, np, matches, nregulators);
+}
+
+static int rk808_regulator_probe(struct device_d *dev)
+{
+	struct rk808 *rk808 = dev->parent->priv;
+	struct rk_regulator_cfg *regulators;
+	struct of_regulator_match *matches;
+	int ret, i, nregulators;
+
+	switch (rk808->variant) {
+	case RK805_ID:
+		regulators = rk805_reg;
+		matches = rk805_reg_matches;
+		nregulators = RK805_NUM_REGULATORS;
+		break;
+	case RK808_ID:
+		regulators = rk808_reg;
+		matches = rk808_reg_matches;
+		nregulators = RK809_NUM_REGULATORS;
+		break;
+	case RK809_ID:
+		regulators = rk809_reg;
+		matches = rk809_reg_matches;
+		nregulators = RK809_NUM_REGULATORS;
+		break;
+	case RK817_ID:
+		regulators = rk817_reg;
+		matches = rk817_reg_matches;
+		nregulators = RK817_NUM_REGULATORS;
+		break;
+	case RK818_ID:
+		regulators = rk818_reg;
+		matches = rk818_reg_matches;
+		nregulators = RK818_NUM_REGULATORS;
+		break;
+	default:
+		dev_err(dev, "unsupported RK8XX ID %lu\n", rk808->variant);
+		return -EINVAL;
+	}
+
+	ret = rk808_regulator_dt_parse(&rk808->i2c->dev, matches, nregulators);
+	if (ret < 0)
+		return ret;
+
+	/* Instantiate the regulators */
+	for (i = 0; i < nregulators; i++) {
+		ret = rk808_regulator_register(rk808, i, &matches[i],
+					       &regulators[i]);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
+static struct driver_d rk808_regulator_driver = {
+	.name = "rk808-regulator",
+	.probe = rk808_regulator_probe,
+};
+device_platform_driver(rk808_regulator_driver);
+
+MODULE_DESCRIPTION("regulator driver for the rk808 series PMICs");
+MODULE_AUTHOR("Chris Zhong<zyw@rock-chips.com>");
+MODULE_AUTHOR("Zhang Qing<zhangqing@rock-chips.com>");
+MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:rk808-regulator");
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
new file mode 100644
index 000000000000..d8e465f88527
--- /dev/null
+++ b/include/linux/mfd/rk808.h
@@ -0,0 +1,721 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Register definitions for Rockchip's RK808/RK818 PMIC
+ *
+ * Copyright (c) 2014, Fuzhou Rockchip Electronics Co., Ltd
+ *
+ * Author: Chris Zhong <zyw@rock-chips.com>
+ * Author: Zhang Qing <zhangqing@rock-chips.com>
+ *
+ * Copyright (C) 2016 PHYTEC Messtechnik GmbH
+ *
+ * Author: Wadim Egorov <w.egorov@phytec.de>
+ */
+
+#ifndef __LINUX_REGULATOR_RK808_H
+#define __LINUX_REGULATOR_RK808_H
+
+#include <linux/bitops.h>
+#include <poweroff.h>
+
+/*
+ * rk808 Global Register Map.
+ */
+
+#define RK808_DCDC1	0 /* (0+RK808_START) */
+#define RK808_LDO1	4 /* (4+RK808_START) */
+#define RK808_NUM_REGULATORS	14
+
+enum rk808_reg {
+	RK808_ID_DCDC1,
+	RK808_ID_DCDC2,
+	RK808_ID_DCDC3,
+	RK808_ID_DCDC4,
+	RK808_ID_LDO1,
+	RK808_ID_LDO2,
+	RK808_ID_LDO3,
+	RK808_ID_LDO4,
+	RK808_ID_LDO5,
+	RK808_ID_LDO6,
+	RK808_ID_LDO7,
+	RK808_ID_LDO8,
+	RK808_ID_SWITCH1,
+	RK808_ID_SWITCH2,
+};
+
+#define RK808_SECONDS_REG	0x00
+#define RK808_MINUTES_REG	0x01
+#define RK808_HOURS_REG		0x02
+#define RK808_DAYS_REG		0x03
+#define RK808_MONTHS_REG	0x04
+#define RK808_YEARS_REG		0x05
+#define RK808_WEEKS_REG		0x06
+#define RK808_ALARM_SECONDS_REG	0x08
+#define RK808_ALARM_MINUTES_REG	0x09
+#define RK808_ALARM_HOURS_REG	0x0a
+#define RK808_ALARM_DAYS_REG	0x0b
+#define RK808_ALARM_MONTHS_REG	0x0c
+#define RK808_ALARM_YEARS_REG	0x0d
+#define RK808_RTC_CTRL_REG	0x10
+#define RK808_RTC_STATUS_REG	0x11
+#define RK808_RTC_INT_REG	0x12
+#define RK808_RTC_COMP_LSB_REG	0x13
+#define RK808_RTC_COMP_MSB_REG	0x14
+#define RK808_ID_MSB		0x17
+#define RK808_ID_LSB		0x18
+#define RK808_CLK32OUT_REG	0x20
+#define RK808_VB_MON_REG	0x21
+#define RK808_THERMAL_REG	0x22
+#define RK808_DCDC_EN_REG	0x23
+#define RK808_LDO_EN_REG	0x24
+#define RK808_SLEEP_SET_OFF_REG1	0x25
+#define RK808_SLEEP_SET_OFF_REG2	0x26
+#define RK808_DCDC_UV_STS_REG	0x27
+#define RK808_DCDC_UV_ACT_REG	0x28
+#define RK808_LDO_UV_STS_REG	0x29
+#define RK808_LDO_UV_ACT_REG	0x2a
+#define RK808_DCDC_PG_REG	0x2b
+#define RK808_LDO_PG_REG	0x2c
+#define RK808_VOUT_MON_TDB_REG	0x2d
+#define RK808_BUCK1_CONFIG_REG		0x2e
+#define RK808_BUCK1_ON_VSEL_REG		0x2f
+#define RK808_BUCK1_SLP_VSEL_REG	0x30
+#define RK808_BUCK1_DVS_VSEL_REG	0x31
+#define RK808_BUCK2_CONFIG_REG		0x32
+#define RK808_BUCK2_ON_VSEL_REG		0x33
+#define RK808_BUCK2_SLP_VSEL_REG	0x34
+#define RK808_BUCK2_DVS_VSEL_REG	0x35
+#define RK808_BUCK3_CONFIG_REG		0x36
+#define RK808_BUCK4_CONFIG_REG		0x37
+#define RK808_BUCK4_ON_VSEL_REG		0x38
+#define RK808_BUCK4_SLP_VSEL_REG	0x39
+#define RK808_BOOST_CONFIG_REG		0x3a
+#define RK808_LDO1_ON_VSEL_REG		0x3b
+#define RK808_LDO1_SLP_VSEL_REG		0x3c
+#define RK808_LDO2_ON_VSEL_REG		0x3d
+#define RK808_LDO2_SLP_VSEL_REG		0x3e
+#define RK808_LDO3_ON_VSEL_REG		0x3f
+#define RK808_LDO3_SLP_VSEL_REG		0x40
+#define RK808_LDO4_ON_VSEL_REG		0x41
+#define RK808_LDO4_SLP_VSEL_REG		0x42
+#define RK808_LDO5_ON_VSEL_REG		0x43
+#define RK808_LDO5_SLP_VSEL_REG		0x44
+#define RK808_LDO6_ON_VSEL_REG		0x45
+#define RK808_LDO6_SLP_VSEL_REG		0x46
+#define RK808_LDO7_ON_VSEL_REG		0x47
+#define RK808_LDO7_SLP_VSEL_REG		0x48
+#define RK808_LDO8_ON_VSEL_REG		0x49
+#define RK808_LDO8_SLP_VSEL_REG		0x4a
+#define RK808_DEVCTRL_REG	0x4b
+#define RK808_INT_STS_REG1	0x4c
+#define RK808_INT_STS_MSK_REG1	0x4d
+#define RK808_INT_STS_REG2	0x4e
+#define RK808_INT_STS_MSK_REG2	0x4f
+#define RK808_IO_POL_REG	0x50
+
+/* RK818 */
+#define RK818_DCDC1			0
+#define RK818_LDO1			4
+#define RK818_NUM_REGULATORS		17
+
+enum rk818_reg {
+	RK818_ID_DCDC1,
+	RK818_ID_DCDC2,
+	RK818_ID_DCDC3,
+	RK818_ID_DCDC4,
+	RK818_ID_BOOST,
+	RK818_ID_LDO1,
+	RK818_ID_LDO2,
+	RK818_ID_LDO3,
+	RK818_ID_LDO4,
+	RK818_ID_LDO5,
+	RK818_ID_LDO6,
+	RK818_ID_LDO7,
+	RK818_ID_LDO8,
+	RK818_ID_LDO9,
+	RK818_ID_SWITCH,
+	RK818_ID_HDMI_SWITCH,
+	RK818_ID_OTG_SWITCH,
+};
+
+#define RK818_DCDC_EN_REG		0x23
+#define RK818_LDO_EN_REG		0x24
+#define RK818_SLEEP_SET_OFF_REG1	0x25
+#define RK818_SLEEP_SET_OFF_REG2	0x26
+#define RK818_DCDC_UV_STS_REG		0x27
+#define RK818_DCDC_UV_ACT_REG		0x28
+#define RK818_LDO_UV_STS_REG		0x29
+#define RK818_LDO_UV_ACT_REG		0x2a
+#define RK818_DCDC_PG_REG		0x2b
+#define RK818_LDO_PG_REG		0x2c
+#define RK818_VOUT_MON_TDB_REG		0x2d
+#define RK818_BUCK1_CONFIG_REG		0x2e
+#define RK818_BUCK1_ON_VSEL_REG		0x2f
+#define RK818_BUCK1_SLP_VSEL_REG	0x30
+#define RK818_BUCK2_CONFIG_REG		0x32
+#define RK818_BUCK2_ON_VSEL_REG		0x33
+#define RK818_BUCK2_SLP_VSEL_REG	0x34
+#define RK818_BUCK3_CONFIG_REG		0x36
+#define RK818_BUCK4_CONFIG_REG		0x37
+#define RK818_BUCK4_ON_VSEL_REG		0x38
+#define RK818_BUCK4_SLP_VSEL_REG	0x39
+#define RK818_BOOST_CONFIG_REG		0x3a
+#define RK818_LDO1_ON_VSEL_REG		0x3b
+#define RK818_LDO1_SLP_VSEL_REG		0x3c
+#define RK818_LDO2_ON_VSEL_REG		0x3d
+#define RK818_LDO2_SLP_VSEL_REG		0x3e
+#define RK818_LDO3_ON_VSEL_REG		0x3f
+#define RK818_LDO3_SLP_VSEL_REG		0x40
+#define RK818_LDO4_ON_VSEL_REG		0x41
+#define RK818_LDO4_SLP_VSEL_REG		0x42
+#define RK818_LDO5_ON_VSEL_REG		0x43
+#define RK818_LDO5_SLP_VSEL_REG		0x44
+#define RK818_LDO6_ON_VSEL_REG		0x45
+#define RK818_LDO6_SLP_VSEL_REG		0x46
+#define RK818_LDO7_ON_VSEL_REG		0x47
+#define RK818_LDO7_SLP_VSEL_REG		0x48
+#define RK818_LDO8_ON_VSEL_REG		0x49
+#define RK818_LDO8_SLP_VSEL_REG		0x4a
+#define RK818_BOOST_LDO9_ON_VSEL_REG	0x54
+#define RK818_BOOST_LDO9_SLP_VSEL_REG	0x55
+#define RK818_DEVCTRL_REG		0x4b
+#define RK818_INT_STS_REG1		0X4c
+#define RK818_INT_STS_MSK_REG1		0x4d
+#define RK818_INT_STS_REG2		0x4e
+#define RK818_INT_STS_MSK_REG2		0x4f
+#define RK818_IO_POL_REG		0x50
+#define RK818_H5V_EN_REG		0x52
+#define RK818_SLEEP_SET_OFF_REG3	0x53
+#define RK818_BOOST_LDO9_ON_VSEL_REG	0x54
+#define RK818_BOOST_LDO9_SLP_VSEL_REG	0x55
+#define RK818_BOOST_CTRL_REG		0x56
+#define RK818_DCDC_ILMAX		0x90
+#define RK818_USB_CTRL_REG		0xa1
+
+#define RK818_H5V_EN			BIT(0)
+#define RK818_REF_RDY_CTRL		BIT(1)
+#define RK818_USB_ILIM_SEL_MASK		0xf
+#define RK818_USB_ILMIN_2000MA		0x7
+#define RK818_USB_CHG_SD_VSEL_MASK	0x70
+
+/* RK805 */
+enum rk805_reg {
+	RK805_ID_DCDC1,
+	RK805_ID_DCDC2,
+	RK805_ID_DCDC3,
+	RK805_ID_DCDC4,
+	RK805_ID_LDO1,
+	RK805_ID_LDO2,
+	RK805_ID_LDO3,
+};
+
+/* CONFIG REGISTER */
+#define RK805_VB_MON_REG		0x21
+#define RK805_THERMAL_REG		0x22
+
+/* POWER CHANNELS ENABLE REGISTER */
+#define RK805_DCDC_EN_REG		0x23
+#define RK805_SLP_DCDC_EN_REG		0x25
+#define RK805_SLP_LDO_EN_REG		0x26
+#define RK805_LDO_EN_REG		0x27
+
+/* BUCK AND LDO CONFIG REGISTER */
+#define RK805_BUCK_LDO_SLP_LP_EN_REG	0x2A
+#define RK805_BUCK1_CONFIG_REG		0x2E
+#define RK805_BUCK1_ON_VSEL_REG		0x2F
+#define RK805_BUCK1_SLP_VSEL_REG	0x30
+#define RK805_BUCK2_CONFIG_REG		0x32
+#define RK805_BUCK2_ON_VSEL_REG		0x33
+#define RK805_BUCK2_SLP_VSEL_REG	0x34
+#define RK805_BUCK3_CONFIG_REG		0x36
+#define RK805_BUCK4_CONFIG_REG		0x37
+#define RK805_BUCK4_ON_VSEL_REG		0x38
+#define RK805_BUCK4_SLP_VSEL_REG	0x39
+#define RK805_LDO1_ON_VSEL_REG		0x3B
+#define RK805_LDO1_SLP_VSEL_REG		0x3C
+#define RK805_LDO2_ON_VSEL_REG		0x3D
+#define RK805_LDO2_SLP_VSEL_REG		0x3E
+#define RK805_LDO3_ON_VSEL_REG		0x3F
+#define RK805_LDO3_SLP_VSEL_REG		0x40
+
+/* INTERRUPT REGISTER */
+#define RK805_PWRON_LP_INT_TIME_REG	0x47
+#define RK805_PWRON_DB_REG		0x48
+#define RK805_DEV_CTRL_REG		0x4B
+#define RK805_INT_STS_REG		0x4C
+#define RK805_INT_STS_MSK_REG		0x4D
+#define RK805_GPIO_IO_POL_REG		0x50
+#define RK805_OUT_REG			0x52
+#define RK805_ON_SOURCE_REG		0xAE
+#define RK805_OFF_SOURCE_REG		0xAF
+
+#define RK805_NUM_REGULATORS		7
+
+#define RK805_PWRON_FALL_RISE_INT_EN	0x0
+#define RK805_PWRON_FALL_RISE_INT_MSK	0x81
+
+/* RK805 IRQ Definitions */
+#define RK805_IRQ_PWRON_RISE		0
+#define RK805_IRQ_VB_LOW		1
+#define RK805_IRQ_PWRON			2
+#define RK805_IRQ_PWRON_LP		3
+#define RK805_IRQ_HOTDIE		4
+#define RK805_IRQ_RTC_ALARM		5
+#define RK805_IRQ_RTC_PERIOD		6
+#define RK805_IRQ_PWRON_FALL		7
+
+#define RK805_IRQ_PWRON_RISE_MSK	BIT(0)
+#define RK805_IRQ_VB_LOW_MSK		BIT(1)
+#define RK805_IRQ_PWRON_MSK		BIT(2)
+#define RK805_IRQ_PWRON_LP_MSK		BIT(3)
+#define RK805_IRQ_HOTDIE_MSK		BIT(4)
+#define RK805_IRQ_RTC_ALARM_MSK		BIT(5)
+#define RK805_IRQ_RTC_PERIOD_MSK	BIT(6)
+#define RK805_IRQ_PWRON_FALL_MSK	BIT(7)
+
+#define RK805_PWR_RISE_INT_STATUS	BIT(0)
+#define RK805_VB_LOW_INT_STATUS		BIT(1)
+#define RK805_PWRON_INT_STATUS		BIT(2)
+#define RK805_PWRON_LP_INT_STATUS	BIT(3)
+#define RK805_HOTDIE_INT_STATUS		BIT(4)
+#define RK805_ALARM_INT_STATUS		BIT(5)
+#define RK805_PERIOD_INT_STATUS		BIT(6)
+#define RK805_PWR_FALL_INT_STATUS	BIT(7)
+
+#define RK805_BUCK1_2_ILMAX_MASK	(3 << 6)
+#define RK805_BUCK3_4_ILMAX_MASK        (3 << 3)
+#define RK805_RTC_PERIOD_INT_MASK	(1 << 6)
+#define RK805_RTC_ALARM_INT_MASK	(1 << 5)
+#define RK805_INT_ALARM_EN		(1 << 3)
+#define RK805_INT_TIMER_EN		(1 << 2)
+
+/* RK808 IRQ Definitions */
+#define RK808_IRQ_VOUT_LO	0
+#define RK808_IRQ_VB_LO		1
+#define RK808_IRQ_PWRON		2
+#define RK808_IRQ_PWRON_LP	3
+#define RK808_IRQ_HOTDIE	4
+#define RK808_IRQ_RTC_ALARM	5
+#define RK808_IRQ_RTC_PERIOD	6
+#define RK808_IRQ_PLUG_IN_INT	7
+#define RK808_IRQ_PLUG_OUT_INT	8
+#define RK808_NUM_IRQ		9
+
+#define RK808_IRQ_VOUT_LO_MSK		BIT(0)
+#define RK808_IRQ_VB_LO_MSK		BIT(1)
+#define RK808_IRQ_PWRON_MSK		BIT(2)
+#define RK808_IRQ_PWRON_LP_MSK		BIT(3)
+#define RK808_IRQ_HOTDIE_MSK		BIT(4)
+#define RK808_IRQ_RTC_ALARM_MSK		BIT(5)
+#define RK808_IRQ_RTC_PERIOD_MSK	BIT(6)
+#define RK808_IRQ_PLUG_IN_INT_MSK	BIT(0)
+#define RK808_IRQ_PLUG_OUT_INT_MSK	BIT(1)
+
+/* RK818 IRQ Definitions */
+#define RK818_IRQ_VOUT_LO	0
+#define RK818_IRQ_VB_LO		1
+#define RK818_IRQ_PWRON		2
+#define RK818_IRQ_PWRON_LP	3
+#define RK818_IRQ_HOTDIE	4
+#define RK818_IRQ_RTC_ALARM	5
+#define RK818_IRQ_RTC_PERIOD	6
+#define RK818_IRQ_USB_OV	7
+#define RK818_IRQ_PLUG_IN	8
+#define RK818_IRQ_PLUG_OUT	9
+#define RK818_IRQ_CHG_OK	10
+#define RK818_IRQ_CHG_TE	11
+#define RK818_IRQ_CHG_TS1	12
+#define RK818_IRQ_TS2		13
+#define RK818_IRQ_CHG_CVTLIM	14
+#define RK818_IRQ_DISCHG_ILIM	15
+
+#define RK818_IRQ_VOUT_LO_MSK		BIT(0)
+#define RK818_IRQ_VB_LO_MSK		BIT(1)
+#define RK818_IRQ_PWRON_MSK		BIT(2)
+#define RK818_IRQ_PWRON_LP_MSK		BIT(3)
+#define RK818_IRQ_HOTDIE_MSK		BIT(4)
+#define RK818_IRQ_RTC_ALARM_MSK		BIT(5)
+#define RK818_IRQ_RTC_PERIOD_MSK	BIT(6)
+#define RK818_IRQ_USB_OV_MSK		BIT(7)
+#define RK818_IRQ_PLUG_IN_MSK		BIT(0)
+#define RK818_IRQ_PLUG_OUT_MSK		BIT(1)
+#define RK818_IRQ_CHG_OK_MSK		BIT(2)
+#define RK818_IRQ_CHG_TE_MSK		BIT(3)
+#define RK818_IRQ_CHG_TS1_MSK		BIT(4)
+#define RK818_IRQ_TS2_MSK		BIT(5)
+#define RK818_IRQ_CHG_CVTLIM_MSK	BIT(6)
+#define RK818_IRQ_DISCHG_ILIM_MSK	BIT(7)
+
+#define RK818_NUM_IRQ		16
+
+#define RK808_VBAT_LOW_2V8	0x00
+#define RK808_VBAT_LOW_2V9	0x01
+#define RK808_VBAT_LOW_3V0	0x02
+#define RK808_VBAT_LOW_3V1	0x03
+#define RK808_VBAT_LOW_3V2	0x04
+#define RK808_VBAT_LOW_3V3	0x05
+#define RK808_VBAT_LOW_3V4	0x06
+#define RK808_VBAT_LOW_3V5	0x07
+#define VBAT_LOW_VOL_MASK	(0x07 << 0)
+#define EN_VABT_LOW_SHUT_DOWN	(0x00 << 4)
+#define EN_VBAT_LOW_IRQ		(0x1 << 4)
+#define VBAT_LOW_ACT_MASK	(0x1 << 4)
+
+#define BUCK_ILMIN_MASK		(7 << 0)
+#define BOOST_ILMIN_MASK	(7 << 0)
+#define BUCK1_RATE_MASK		(3 << 3)
+#define BUCK2_RATE_MASK		(3 << 3)
+#define MASK_ALL	0xff
+
+#define BUCK_UV_ACT_MASK	0x0f
+#define BUCK_UV_ACT_DISABLE	0
+
+#define SWITCH2_EN	BIT(6)
+#define SWITCH1_EN	BIT(5)
+#define DEV_OFF_RST	BIT(3)
+#define DEV_OFF		BIT(0)
+#define RTC_STOP	BIT(0)
+
+#define VB_LO_ACT		BIT(4)
+#define VB_LO_SEL_3500MV	(7 << 0)
+
+#define VOUT_LO_INT	BIT(0)
+#define CLK32KOUT2_EN	BIT(0)
+
+#define TEMP115C			0x0c
+#define TEMP_HOTDIE_MSK			0x0c
+#define SLP_SD_MSK			(0x3 << 2)
+#define SHUTDOWN_FUN			(0x2 << 2)
+#define SLEEP_FUN			(0x1 << 2)
+#define RK8XX_ID_MSK			0xfff0
+#define PWM_MODE_MSK			BIT(7)
+#define FPWM_MODE			BIT(7)
+#define AUTO_PWM_MODE			0
+
+enum rk817_reg_id {
+	RK817_ID_DCDC1 = 0,
+	RK817_ID_DCDC2,
+	RK817_ID_DCDC3,
+	RK817_ID_DCDC4,
+	RK817_ID_LDO1,
+	RK817_ID_LDO2,
+	RK817_ID_LDO3,
+	RK817_ID_LDO4,
+	RK817_ID_LDO5,
+	RK817_ID_LDO6,
+	RK817_ID_LDO7,
+	RK817_ID_LDO8,
+	RK817_ID_LDO9,
+	RK817_ID_BOOST,
+	RK817_ID_BOOST_OTG_SW,
+	RK817_NUM_REGULATORS
+};
+
+enum rk809_reg_id {
+	RK809_ID_DCDC1 = 0,
+	RK809_ID_DCDC2,
+	RK809_ID_DCDC3,
+	RK809_ID_DCDC4,
+	RK809_ID_LDO1,
+	RK809_ID_LDO2,
+	RK809_ID_LDO3,
+	RK809_ID_LDO4,
+	RK809_ID_LDO5,
+	RK809_ID_LDO6,
+	RK809_ID_LDO7,
+	RK809_ID_LDO8,
+	RK809_ID_LDO9,
+	RK809_ID_DCDC5,
+	RK809_ID_SW1,
+	RK809_ID_SW2,
+	RK809_NUM_REGULATORS
+};
+
+#define RK817_SECONDS_REG		0x00
+#define RK817_MINUTES_REG		0x01
+#define RK817_HOURS_REG			0x02
+#define RK817_DAYS_REG			0x03
+#define RK817_MONTHS_REG		0x04
+#define RK817_YEARS_REG			0x05
+#define RK817_WEEKS_REG			0x06
+#define RK817_ALARM_SECONDS_REG		0x07
+#define RK817_ALARM_MINUTES_REG		0x08
+#define RK817_ALARM_HOURS_REG		0x09
+#define RK817_ALARM_DAYS_REG		0x0a
+#define RK817_ALARM_MONTHS_REG		0x0b
+#define RK817_ALARM_YEARS_REG		0x0c
+#define RK817_RTC_CTRL_REG		0xd
+#define RK817_RTC_STATUS_REG		0xe
+#define RK817_RTC_INT_REG		0xf
+#define RK817_RTC_COMP_LSB_REG		0x10
+#define RK817_RTC_COMP_MSB_REG		0x11
+
+/* RK817 Codec Registers */
+#define RK817_CODEC_DTOP_VUCTL		0x12
+#define RK817_CODEC_DTOP_VUCTIME	0x13
+#define RK817_CODEC_DTOP_LPT_SRST	0x14
+#define RK817_CODEC_DTOP_DIGEN_CLKE	0x15
+#define RK817_CODEC_AREF_RTCFG0		0x16
+#define RK817_CODEC_AREF_RTCFG1		0x17
+#define RK817_CODEC_AADC_CFG0		0x18
+#define RK817_CODEC_AADC_CFG1		0x19
+#define RK817_CODEC_DADC_VOLL		0x1a
+#define RK817_CODEC_DADC_VOLR		0x1b
+#define RK817_CODEC_DADC_SR_ACL0	0x1e
+#define RK817_CODEC_DADC_ALC1		0x1f
+#define RK817_CODEC_DADC_ALC2		0x20
+#define RK817_CODEC_DADC_NG		0x21
+#define RK817_CODEC_DADC_HPF		0x22
+#define RK817_CODEC_DADC_RVOLL		0x23
+#define RK817_CODEC_DADC_RVOLR		0x24
+#define RK817_CODEC_AMIC_CFG0		0x27
+#define RK817_CODEC_AMIC_CFG1		0x28
+#define RK817_CODEC_DMIC_PGA_GAIN	0x29
+#define RK817_CODEC_DMIC_LMT1		0x2a
+#define RK817_CODEC_DMIC_LMT2		0x2b
+#define RK817_CODEC_DMIC_NG1		0x2c
+#define RK817_CODEC_DMIC_NG2		0x2d
+#define RK817_CODEC_ADAC_CFG0		0x2e
+#define RK817_CODEC_ADAC_CFG1		0x2f
+#define RK817_CODEC_DDAC_POPD_DACST	0x30
+#define RK817_CODEC_DDAC_VOLL		0x31
+#define RK817_CODEC_DDAC_VOLR		0x32
+#define RK817_CODEC_DDAC_SR_LMT0	0x35
+#define RK817_CODEC_DDAC_LMT1		0x36
+#define RK817_CODEC_DDAC_LMT2		0x37
+#define RK817_CODEC_DDAC_MUTE_MIXCTL	0x38
+#define RK817_CODEC_DDAC_RVOLL		0x39
+#define RK817_CODEC_DDAC_RVOLR		0x3a
+#define RK817_CODEC_AHP_ANTI0		0x3b
+#define RK817_CODEC_AHP_ANTI1		0x3c
+#define RK817_CODEC_AHP_CFG0		0x3d
+#define RK817_CODEC_AHP_CFG1		0x3e
+#define RK817_CODEC_AHP_CP		0x3f
+#define RK817_CODEC_ACLASSD_CFG1	0x40
+#define RK817_CODEC_ACLASSD_CFG2	0x41
+#define RK817_CODEC_APLL_CFG0		0x42
+#define RK817_CODEC_APLL_CFG1		0x43
+#define RK817_CODEC_APLL_CFG2		0x44
+#define RK817_CODEC_APLL_CFG3		0x45
+#define RK817_CODEC_APLL_CFG4		0x46
+#define RK817_CODEC_APLL_CFG5		0x47
+#define RK817_CODEC_DI2S_CKM		0x48
+#define RK817_CODEC_DI2S_RSD		0x49
+#define RK817_CODEC_DI2S_RXCR1		0x4a
+#define RK817_CODEC_DI2S_RXCR2		0x4b
+#define RK817_CODEC_DI2S_RXCMD_TSD	0x4c
+#define RK817_CODEC_DI2S_TXCR1		0x4d
+#define RK817_CODEC_DI2S_TXCR2		0x4e
+#define RK817_CODEC_DI2S_TXCR3_TXCMD	0x4f
+
+/* RK817_CODEC_DI2S_CKM */
+#define RK817_I2S_MODE_MASK		(0x1 << 0)
+#define RK817_I2S_MODE_MST		(0x1 << 0)
+#define RK817_I2S_MODE_SLV		(0x0 << 0)
+
+/* RK817_CODEC_DDAC_MUTE_MIXCTL */
+#define DACMT_MASK			(0x1 << 0)
+#define DACMT_ENABLE			(0x1 << 0)
+#define DACMT_DISABLE			(0x0 << 0)
+
+/* RK817_CODEC_DI2S_RXCR2 */
+#define VDW_RX_24BITS			(0x17)
+#define VDW_RX_16BITS			(0x0f)
+
+/* RK817_CODEC_DI2S_TXCR2 */
+#define VDW_TX_24BITS			(0x17)
+#define VDW_TX_16BITS			(0x0f)
+
+/* RK817_CODEC_AMIC_CFG0 */
+#define MIC_DIFF_MASK			(0x1 << 7)
+#define MIC_DIFF_DIS			(0x0 << 7)
+#define MIC_DIFF_EN			(0x1 << 7)
+
+#define RK817_POWER_EN_REG(i)		(0xb1 + (i))
+#define RK817_POWER_SLP_EN_REG(i)	(0xb5 + (i))
+
+#define RK817_POWER_CONFIG		(0xb9)
+
+#define RK817_BUCK_CONFIG_REG(i)	(0xba + (i) * 3)
+
+#define RK817_BUCK1_ON_VSEL_REG		0xBB
+#define RK817_BUCK1_SLP_VSEL_REG	0xBC
+
+#define RK817_BUCK2_CONFIG_REG		0xBD
+#define RK817_BUCK2_ON_VSEL_REG		0xBE
+#define RK817_BUCK2_SLP_VSEL_REG	0xBF
+
+#define RK817_BUCK3_CONFIG_REG		0xC0
+#define RK817_BUCK3_ON_VSEL_REG		0xC1
+#define RK817_BUCK3_SLP_VSEL_REG	0xC2
+
+#define RK817_BUCK4_CONFIG_REG		0xC3
+#define RK817_BUCK4_ON_VSEL_REG		0xC4
+#define RK817_BUCK4_SLP_VSEL_REG	0xC5
+
+#define RK817_LDO_ON_VSEL_REG(idx)	(0xcc + (idx) * 2)
+#define RK817_BOOST_OTG_CFG		(0xde)
+
+#define RK817_ID_MSB			0xed
+#define RK817_ID_LSB			0xee
+
+#define RK817_SYS_STS			0xf0
+#define RK817_SYS_CFG(i)		(0xf1 + (i))
+
+#define RK817_ON_SOURCE_REG		0xf5
+#define RK817_OFF_SOURCE_REG		0xf6
+
+/* INTERRUPT REGISTER */
+#define RK817_INT_STS_REG0		0xf8
+#define RK817_INT_STS_MSK_REG0		0xf9
+#define RK817_INT_STS_REG1		0xfa
+#define RK817_INT_STS_MSK_REG1		0xfb
+#define RK817_INT_STS_REG2		0xfc
+#define RK817_INT_STS_MSK_REG2		0xfd
+#define RK817_GPIO_INT_CFG		0xfe
+
+/* IRQ Definitions */
+#define RK817_IRQ_PWRON_FALL		0
+#define RK817_IRQ_PWRON_RISE		1
+#define RK817_IRQ_PWRON			2
+#define RK817_IRQ_PWMON_LP		3
+#define RK817_IRQ_HOTDIE		4
+#define RK817_IRQ_RTC_ALARM		5
+#define RK817_IRQ_RTC_PERIOD		6
+#define RK817_IRQ_VB_LO			7
+#define RK817_IRQ_PLUG_IN		8
+#define RK817_IRQ_PLUG_OUT		9
+#define RK817_IRQ_CHRG_TERM		10
+#define RK817_IRQ_CHRG_TIME		11
+#define RK817_IRQ_CHRG_TS		12
+#define RK817_IRQ_USB_OV		13
+#define RK817_IRQ_CHRG_IN_CLMP		14
+#define RK817_IRQ_BAT_DIS_ILIM		15
+#define RK817_IRQ_GATE_GPIO		16
+#define RK817_IRQ_TS_GPIO		17
+#define RK817_IRQ_CODEC_PD		18
+#define RK817_IRQ_CODEC_PO		19
+#define RK817_IRQ_CLASSD_MUTE_DONE	20
+#define RK817_IRQ_CLASSD_OCP		21
+#define RK817_IRQ_BAT_OVP               22
+#define RK817_IRQ_CHRG_BAT_HI		23
+#define RK817_IRQ_END			(RK817_IRQ_CHRG_BAT_HI + 1)
+
+/*
+ * rtc_ctrl 0xd
+ * same as 808, except bit4
+ */
+#define RK817_RTC_CTRL_RSV4		BIT(4)
+
+/* power config 0xb9 */
+#define RK817_BUCK3_FB_RES_MSK		BIT(6)
+#define RK817_BUCK3_FB_RES_INTER	BIT(6)
+#define RK817_BUCK3_FB_RES_EXT		0
+
+/* buck config 0xba */
+#define RK817_RAMP_RATE_OFFSET		6
+#define RK817_RAMP_RATE_MASK		(0x3 << RK817_RAMP_RATE_OFFSET)
+#define RK817_RAMP_RATE_3MV_PER_US	(0x0 << RK817_RAMP_RATE_OFFSET)
+#define RK817_RAMP_RATE_6_3MV_PER_US	(0x1 << RK817_RAMP_RATE_OFFSET)
+#define RK817_RAMP_RATE_12_5MV_PER_US	(0x2 << RK817_RAMP_RATE_OFFSET)
+#define RK817_RAMP_RATE_25MV_PER_US	(0x3 << RK817_RAMP_RATE_OFFSET)
+
+/* sys_cfg1 0xf2 */
+#define RK817_HOTDIE_TEMP_MSK		(0x3 << 4)
+#define RK817_HOTDIE_85			(0x0 << 4)
+#define RK817_HOTDIE_95			(0x1 << 4)
+#define RK817_HOTDIE_105		(0x2 << 4)
+#define RK817_HOTDIE_115		(0x3 << 4)
+
+#define RK817_TSD_TEMP_MSK		BIT(6)
+#define RK817_TSD_140			0
+#define RK817_TSD_160			BIT(6)
+
+#define RK817_CLK32KOUT2_EN		BIT(7)
+
+/* sys_cfg3 0xf4 */
+#define RK817_SLPPIN_FUNC_MSK		(0x3 << 3)
+#define SLPPIN_NULL_FUN			(0x0 << 3)
+#define SLPPIN_SLP_FUN			(0x1 << 3)
+#define SLPPIN_DN_FUN			(0x2 << 3)
+#define SLPPIN_RST_FUN			(0x3 << 3)
+
+#define RK817_RST_FUNC_MSK		(0x3 << 6)
+#define RK817_RST_FUNC_SFT		(6)
+#define RK817_RST_FUNC_CNT		(3)
+#define RK817_RST_FUNC_DEV		(0) /* reset the dev */
+#define RK817_RST_FUNC_REG		(0x1 << 6) /* reset the reg only */
+
+#define RK817_SLPPOL_MSK		BIT(5)
+#define RK817_SLPPOL_H			BIT(5)
+#define RK817_SLPPOL_L			(0)
+
+/* gpio&int 0xfe */
+#define RK817_INT_POL_MSK		BIT(1)
+#define RK817_INT_POL_H			BIT(1)
+#define RK817_INT_POL_L			0
+#define RK809_BUCK5_CONFIG(i)		(RK817_BOOST_OTG_CFG + (i) * 1)
+
+enum {
+	BUCK_ILMIN_50MA,
+	BUCK_ILMIN_100MA,
+	BUCK_ILMIN_150MA,
+	BUCK_ILMIN_200MA,
+	BUCK_ILMIN_250MA,
+	BUCK_ILMIN_300MA,
+	BUCK_ILMIN_350MA,
+	BUCK_ILMIN_400MA,
+};
+
+enum {
+	BOOST_ILMIN_75MA,
+	BOOST_ILMIN_100MA,
+	BOOST_ILMIN_125MA,
+	BOOST_ILMIN_150MA,
+	BOOST_ILMIN_175MA,
+	BOOST_ILMIN_200MA,
+	BOOST_ILMIN_225MA,
+	BOOST_ILMIN_250MA,
+};
+
+enum {
+	RK805_BUCK1_2_ILMAX_2500MA,
+	RK805_BUCK1_2_ILMAX_3000MA,
+	RK805_BUCK1_2_ILMAX_3500MA,
+	RK805_BUCK1_2_ILMAX_4000MA,
+};
+
+enum {
+	RK805_BUCK3_ILMAX_1500MA,
+	RK805_BUCK3_ILMAX_2000MA,
+	RK805_BUCK3_ILMAX_2500MA,
+	RK805_BUCK3_ILMAX_3000MA,
+};
+
+enum {
+	RK805_BUCK4_ILMAX_2000MA,
+	RK805_BUCK4_ILMAX_2500MA,
+	RK805_BUCK4_ILMAX_3000MA,
+	RK805_BUCK4_ILMAX_3500MA,
+};
+
+enum {
+	RK805_ID = 0x8050,
+	RK808_ID = 0x0000,
+	RK809_ID = 0x8090,
+	RK817_ID = 0x8170,
+	RK818_ID = 0x8180,
+};
+
+struct i2c_client;
+struct regmap;
+struct regmap_config;
+
+struct rk808 {
+	struct i2c_client		*i2c;
+	struct regmap			*regmap;
+	long				variant;
+	const struct regmap_config	*regmap_cfg;
+	struct poweroff_handler		poweroff;
+};
+#endif /* __LINUX_REGULATOR_RK808_H */
-- 
2.30.2



