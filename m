Delivery-date: Mon, 01 Jul 2024 09:05:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOB5x-000Q32-0X
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:05:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOB5v-0004JM-NO
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:05:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6EJBGjs1P6K1Fs1QSY6TbUumGOpD2Pp1kJaTHkwVHPI=; b=TFgKeqsmmnwXGgAXWCCqivg9yk
	q7BH/B/qDufqQ9jij2HaaePTNPuqBjPDpX1+DQqttNAtsmDZ1QiAdnhy9xxVv+qS1o3NAc8ig8Wbp
	PkoYWlVTfYASgzUE+RQYv6+1tmqZgvjecUG5q5xF3K0iNlPVW9tmM84KEfBwVjQodz11M5zDVALu8
	LVQyT2O+LasNz/ldPprpd8EIp/6vr41bdJoRItw14R7VXR95fgM6km3TrPfdMT9EbDdTQx83CAayw
	hlrrLWyX53wTya/fnDsolGNJAK8Mr+j0hXXceIyTF7JYXgLFlNPG1XxpkHUVLGwhZ+QVCCUW/37Mo
	Iid/by2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOB5I-00000001xJA-30Ys;
	Mon, 01 Jul 2024 07:04:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOB5F-00000001xI2-2SAP
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:04:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOB5C-0004DP-J3; Mon, 01 Jul 2024 09:04:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOB5C-006JUg-6G; Mon, 01 Jul 2024 09:04:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOB5C-000Xzb-0Q;
	Mon, 01 Jul 2024 09:04:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:04:12 +0200
Message-Id: <20240701070412.130627-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_000417_963018_24F47FBB 
X-CRM114-Status: GOOD (  34.65  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] rtc: add PCF85063 RTC and NVMEM support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Import the Linux v6.10-rc3 state of the RTC/NVMEM driver, so it can be
used to check wall time in barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/rtc/Kconfig        |  14 ++
 drivers/rtc/Makefile       |   2 +
 drivers/rtc/nvmem.c        |  29 +++
 drivers/rtc/rtc-pcf85063.c | 473 +++++++++++++++++++++++++++++++++++++
 include/linux/rtc.h        |  14 ++
 5 files changed, 532 insertions(+)
 create mode 100644 drivers/rtc/nvmem.c
 create mode 100644 drivers/rtc/rtc-pcf85063.c

diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index 98e58da89bd8..2aabd167538f 100644
--- a/drivers/rtc/Kconfig
+++ b/drivers/rtc/Kconfig
@@ -18,6 +18,14 @@ menuconfig RTC_CLASS
 
 if RTC_CLASS
 
+config RTC_NVMEM
+	bool "RTC non volatile storage support" if COMPILE_TEST
+	depends on NVMEM
+	default y
+	help
+	  Say yes here to add support for the non volatile (often battery
+	  backed) storage present on RTCs.
+
 comment "I2C RTC drivers"
 	depends on I2C
 
@@ -37,6 +45,12 @@ config RTC_DRV_DS1307
 config RTC_DRV_ABRACON
 	tristate "Abracon RTCs"
 
+config RTC_DRV_PCF85063
+	tristate "NXP PCF85063"
+	select REGMAP_I2C
+	help
+	  If you say yes here you get support for the PCF85063 RTC chip
+
 config RTC_DRV_PCF85363
 	tristate "NXP PCF85363"
 	depends on I2C
diff --git a/drivers/rtc/Makefile b/drivers/rtc/Makefile
index ec9775b691b3..dff0cfe5bbde 100644
--- a/drivers/rtc/Makefile
+++ b/drivers/rtc/Makefile
@@ -5,6 +5,7 @@
 
 obj-$(CONFIG_RTC_LIB)           += rtc-lib.o
 obj-$(CONFIG_RTC_CLASS)         += class.o
+obj-$(CONFIG_RTC_NVMEM)         += nvmem.o
 
 # Keep the list ordered.
 
@@ -12,4 +13,5 @@ obj-$(CONFIG_RTC_DRV_ABRACON)   += rtc-abracon.o
 obj-$(CONFIG_RTC_DRV_DS1307)    += rtc-ds1307.o
 obj-$(CONFIG_RTC_DRV_IMXDI)	+= rtc-imxdi.o
 obj-$(CONFIG_RTC_DRV_JZ4740)	+= rtc-jz4740.o
+obj-$(CONFIG_RTC_DRV_PCF85063)	+= rtc-pcf85063.o
 obj-$(CONFIG_RTC_DRV_PCF85363)	+= rtc-pcf85363.o
diff --git a/drivers/rtc/nvmem.c b/drivers/rtc/nvmem.c
new file mode 100644
index 000000000000..d5fce5a2236e
--- /dev/null
+++ b/drivers/rtc/nvmem.c
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * RTC subsystem, nvmem interface
+ *
+ * Copyright (C) 2017 Alexandre Belloni
+ */
+
+#include <linux/err.h>
+#include <linux/types.h>
+#include <linux/nvmem-provider.h>
+#include <linux/rtc.h>
+
+int rtc_nvmem_register(struct rtc_device *rtc,
+		       struct nvmem_config *nvmem_config)
+{
+	struct device *dev = rtc->dev;
+	struct nvmem_device *nvmem;
+
+	if (!nvmem_config)
+		return -ENODEV;
+
+	nvmem_config->dev = dev;
+	nvmem = nvmem_register(nvmem_config);
+	if (IS_ERR(nvmem))
+		dev_err(dev, "failed to register nvmem device for RTC\n");
+
+	return PTR_ERR_OR_ZERO(nvmem);
+}
+EXPORT_SYMBOL_GPL(rtc_nvmem_register);
diff --git a/drivers/rtc/rtc-pcf85063.c b/drivers/rtc/rtc-pcf85063.c
new file mode 100644
index 000000000000..82d8d22029f0
--- /dev/null
+++ b/drivers/rtc/rtc-pcf85063.c
@@ -0,0 +1,473 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * An I2C driver for the PCF85063 RTC
+ * Copyright 2014 Rose Technology
+ *
+ * Author: Søren Andersen <san@rosetechnology.dk>
+ * Maintainers: http://www.nslu2-linux.org/
+ *
+ * Copyright (C) 2019 Micro Crystal AG
+ * Author: Alexandre Belloni <alexandre.belloni@bootlin.com>
+ */
+#include <linux/clk-provider.h>
+#include <i2c/i2c.h>
+#include <linux/bcd.h>
+#include <linux/device.h>
+#include <linux/rtc.h>
+#include <of.h>
+#include <linux/regmap.h>
+
+/*
+ * Information for this driver was pulled from the following datasheets.
+ *
+ *  https://www.nxp.com/docs/en/data-sheet/PCF85063A.pdf
+ *  https://www.nxp.com/docs/en/data-sheet/PCF85063TP.pdf
+ *
+ *  PCF85063A -- Rev. 7 — 30 March 2018
+ *  PCF85063TP -- Rev. 4 — 6 May 2015
+ *
+ *  https://www.microcrystal.com/fileadmin/Media/Products/RTC/App.Manual/RV-8263-C7_App-Manual.pdf
+ *  RV8263 -- Rev. 1.0 — January 2019
+ */
+
+#define PCF85063_REG_CTRL1		0x00 /* status */
+#define PCF85063_REG_CTRL1_CAP_SEL	BIT(0)
+#define PCF85063_REG_CTRL1_STOP		BIT(5)
+#define PCF85063_REG_CTRL1_EXT_TEST	BIT(7)
+
+#define PCF85063_REG_CTRL2		0x01
+#define PCF85063_CTRL2_AF		BIT(6)
+#define PCF85063_CTRL2_AIE		BIT(7)
+
+#define PCF85063_REG_OFFSET		0x02
+#define PCF85063_OFFSET_SIGN_BIT	6	/* 2's complement sign bit */
+#define PCF85063_OFFSET_MODE		BIT(7)
+#define PCF85063_OFFSET_STEP0		4340
+#define PCF85063_OFFSET_STEP1		4069
+
+#define PCF85063_REG_CLKO_F_MASK	0x07 /* frequency mask */
+#define PCF85063_REG_CLKO_F_32768HZ	0x00
+#define PCF85063_REG_CLKO_F_OFF		0x07
+
+#define PCF85063_REG_RAM		0x03
+
+#define PCF85063_REG_SC			0x04 /* datetime */
+#define PCF85063_REG_SC_OS		0x80
+
+#define PCF85063_REG_ALM_S		0x0b
+#define PCF85063_AEN			BIT(7)
+
+struct pcf85063_config {
+	struct regmap_config regmap;
+	unsigned force_cap_7000:1;
+};
+
+struct pcf85063 {
+	struct rtc_device	rtc;
+	struct regmap		*regmap;
+#ifdef CONFIG_COMMON_CLK
+	struct clk_hw		clkout_hw;
+#endif
+};
+
+static inline struct pcf85063 *to_pcf85063_priv(struct rtc_device *rtcdev)
+{
+	return container_of(rtcdev, struct pcf85063, rtc);
+}
+
+static int pcf85063_rtc_read_time(struct rtc_device *rtcdev, struct rtc_time *tm)
+{
+	struct pcf85063 *pcf85063 = to_pcf85063_priv(rtcdev);
+	int rc;
+	u8 regs[7];
+
+	/*
+	 * while reading, the time/date registers are blocked and not updated
+	 * anymore until the access is finished. To not lose a second
+	 * event, the access must be finished within one second. So, read all
+	 * time/date registers in one turn.
+	 */
+	rc = regmap_bulk_read(pcf85063->regmap, PCF85063_REG_SC, regs,
+			      sizeof(regs));
+	if (rc)
+		return rc;
+
+	/* if the clock has lost its power it makes no sense to use its time */
+	if (regs[0] & PCF85063_REG_SC_OS) {
+		dev_warn(pcf85063->rtc.dev, "Power loss detected, invalid time\n");
+		return -EINVAL;
+	}
+
+	tm->tm_sec = bcd2bin(regs[0] & 0x7F);
+	tm->tm_min = bcd2bin(regs[1] & 0x7F);
+	tm->tm_hour = bcd2bin(regs[2] & 0x3F); /* rtc hr 0-23 */
+	tm->tm_mday = bcd2bin(regs[3] & 0x3F);
+	tm->tm_wday = regs[4] & 0x07;
+	tm->tm_mon = bcd2bin(regs[5] & 0x1F) - 1; /* rtc mn 1-12 */
+	tm->tm_year = bcd2bin(regs[6]);
+	tm->tm_year += 100;
+
+	return 0;
+}
+
+static int pcf85063_rtc_set_time(struct rtc_device *rtcdev, struct rtc_time *tm)
+{
+	struct pcf85063 *pcf85063 = to_pcf85063_priv(rtcdev);
+	int rc;
+	u8 regs[7];
+
+	/*
+	 * to accurately set the time, reset the divider chain and keep it in
+	 * reset state until all time/date registers are written
+	 */
+	rc = regmap_update_bits(pcf85063->regmap, PCF85063_REG_CTRL1,
+				PCF85063_REG_CTRL1_EXT_TEST |
+				PCF85063_REG_CTRL1_STOP,
+				PCF85063_REG_CTRL1_STOP);
+	if (rc)
+		return rc;
+
+	/* hours, minutes and seconds */
+	regs[0] = bin2bcd(tm->tm_sec) & 0x7F; /* clear OS flag */
+
+	regs[1] = bin2bcd(tm->tm_min);
+	regs[2] = bin2bcd(tm->tm_hour);
+
+	/* Day of month, 1 - 31 */
+	regs[3] = bin2bcd(tm->tm_mday);
+
+	/* Day, 0 - 6 */
+	regs[4] = tm->tm_wday & 0x07;
+
+	/* month, 1 - 12 */
+	regs[5] = bin2bcd(tm->tm_mon + 1);
+
+	/* year and century */
+	regs[6] = bin2bcd(tm->tm_year - 100);
+
+	/* write all registers at once */
+	rc = regmap_bulk_write(pcf85063->regmap, PCF85063_REG_SC,
+			       regs, sizeof(regs));
+	if (rc)
+		return rc;
+
+	/*
+	 * Write the control register as a separate action since the size of
+	 * the register space is different between the PCF85063TP and
+	 * PCF85063A devices.  The rollover point can not be used.
+	 */
+	return regmap_update_bits(pcf85063->regmap, PCF85063_REG_CTRL1,
+				  PCF85063_REG_CTRL1_STOP, 0);
+}
+
+static const struct rtc_class_ops pcf85063_rtc_ops = {
+	.read_time	= pcf85063_rtc_read_time,
+	.set_time	= pcf85063_rtc_set_time,
+};
+
+static int pcf85063_nvmem_read(void *priv, unsigned int offset,
+			       void *val, size_t bytes)
+{
+	return regmap_read(priv, PCF85063_REG_RAM, val);
+}
+
+static int pcf85063_nvmem_write(void *priv, unsigned int offset,
+				const void *val, size_t bytes)
+{
+	return regmap_write(priv, PCF85063_REG_RAM, *(u8 *)val);
+}
+
+static int pcf85063_load_capacitance(struct pcf85063 *pcf85063,
+				     const struct device_node *np,
+				     unsigned int force_cap)
+{
+	u32 load = 7000;
+	u8 reg = 0;
+
+	if (force_cap)
+		load = force_cap;
+	else
+		of_property_read_u32(np, "quartz-load-femtofarads", &load);
+
+	switch (load) {
+	default:
+		dev_warn(pcf85063->rtc.dev, "Unknown quartz-load-femtofarads value: %d. Assuming 7000",
+			 load);
+		fallthrough;
+	case 7000:
+		break;
+	case 12500:
+		reg = PCF85063_REG_CTRL1_CAP_SEL;
+		break;
+	}
+
+	return regmap_update_bits(pcf85063->regmap, PCF85063_REG_CTRL1,
+				  PCF85063_REG_CTRL1_CAP_SEL, reg);
+}
+
+#ifdef CONFIG_COMMON_CLK
+/*
+ * Handling of the clkout
+ */
+
+#define clkout_hw_to_pcf85063(_hw) container_of(_hw, struct pcf85063, clkout_hw)
+
+static int clkout_rates[] = {
+	32768,
+	16384,
+	8192,
+	4096,
+	2048,
+	1024,
+	1,
+	0
+};
+
+static unsigned long pcf85063_clkout_recalc_rate(struct clk_hw *hw,
+						 unsigned long parent_rate)
+{
+	struct pcf85063 *pcf85063 = clkout_hw_to_pcf85063(hw);
+	unsigned int buf;
+	int ret = regmap_read(pcf85063->regmap, PCF85063_REG_CTRL2, &buf);
+
+	if (ret < 0)
+		return 0;
+
+	buf &= PCF85063_REG_CLKO_F_MASK;
+	return clkout_rates[buf];
+}
+
+static long pcf85063_clkout_round_rate(struct clk_hw *hw, unsigned long rate,
+				       unsigned long *prate)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(clkout_rates); i++)
+		if (clkout_rates[i] <= rate)
+			return clkout_rates[i];
+
+	return 0;
+}
+
+static int pcf85063_clkout_set_rate(struct clk_hw *hw, unsigned long rate,
+				    unsigned long parent_rate)
+{
+	struct pcf85063 *pcf85063 = clkout_hw_to_pcf85063(hw);
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(clkout_rates); i++)
+		if (clkout_rates[i] == rate)
+			return regmap_update_bits(pcf85063->regmap,
+				PCF85063_REG_CTRL2,
+				PCF85063_REG_CLKO_F_MASK, i);
+
+	return -EINVAL;
+}
+
+static int pcf85063_clkout_control(struct clk_hw *hw, bool enable)
+{
+	struct pcf85063 *pcf85063 = clkout_hw_to_pcf85063(hw);
+	unsigned int buf;
+	int ret;
+
+	ret = regmap_read(pcf85063->regmap, PCF85063_REG_CTRL2, &buf);
+	if (ret < 0)
+		return ret;
+	buf &= PCF85063_REG_CLKO_F_MASK;
+
+	if (enable) {
+		if (buf == PCF85063_REG_CLKO_F_OFF)
+			buf = PCF85063_REG_CLKO_F_32768HZ;
+		else
+			return 0;
+	} else {
+		if (buf != PCF85063_REG_CLKO_F_OFF)
+			buf = PCF85063_REG_CLKO_F_OFF;
+		else
+			return 0;
+	}
+
+	return regmap_update_bits(pcf85063->regmap, PCF85063_REG_CTRL2,
+					PCF85063_REG_CLKO_F_MASK, buf);
+}
+
+static int pcf85063_clkout_prepare(struct clk_hw *hw)
+{
+	return pcf85063_clkout_control(hw, 1);
+}
+
+static void pcf85063_clkout_unprepare(struct clk_hw *hw)
+{
+	pcf85063_clkout_control(hw, 0);
+}
+
+static int pcf85063_clkout_is_prepared(struct clk_hw *hw)
+{
+	struct pcf85063 *pcf85063 = clkout_hw_to_pcf85063(hw);
+	unsigned int buf;
+	int ret = regmap_read(pcf85063->regmap, PCF85063_REG_CTRL2, &buf);
+
+	if (ret < 0)
+		return 0;
+
+	return (buf & PCF85063_REG_CLKO_F_MASK) != PCF85063_REG_CLKO_F_OFF;
+}
+
+static const struct clk_ops pcf85063_clkout_ops = {
+	.enable = pcf85063_clkout_prepare,
+	.disable = pcf85063_clkout_unprepare,
+	.is_enabled = pcf85063_clkout_is_prepared,
+	.recalc_rate = pcf85063_clkout_recalc_rate,
+	.round_rate = pcf85063_clkout_round_rate,
+	.set_rate = pcf85063_clkout_set_rate,
+};
+
+static struct clk *pcf85063_clkout_register_clk(struct pcf85063 *pcf85063)
+{
+	struct clk *clk;
+	struct clk_init_data init;
+	struct device_node *node = dev_of_node(pcf85063->rtc.dev);
+	struct device_node *fixed_clock;
+
+	fixed_clock = of_get_child_by_name(node, "clock");
+	if (fixed_clock) {
+		/*
+		 * skip registering square wave clock when a fixed
+		 * clock has been registered. The fixed clock is
+		 * registered automatically when being referenced.
+		 */
+		of_node_put(fixed_clock);
+		return NULL;
+	}
+
+	init.name = "pcf85063-clkout";
+	init.ops = &pcf85063_clkout_ops;
+	init.flags = 0;
+	init.parent_names = NULL;
+	init.num_parents = 0;
+	pcf85063->clkout_hw.init = &init;
+
+	/* optional override of the clockname */
+	of_property_read_string(node, "clock-output-names", &init.name);
+
+	/* register the clock */
+	clk = clk_register(pcf85063->rtc.dev, &pcf85063->clkout_hw);
+
+	if (!IS_ERR(clk))
+		of_clk_add_provider(node, of_clk_src_simple_get, clk);
+
+	return clk;
+}
+#endif
+
+static const struct pcf85063_config config_pcf85063 = {
+	.regmap = {
+		.reg_bits = 8,
+		.val_bits = 8,
+		.max_register = 0x0a,
+	},
+};
+
+static const struct pcf85063_config config_pcf85063tp = {
+	.regmap = {
+		.reg_bits = 8,
+		.val_bits = 8,
+		.max_register = 0x0a,
+	},
+};
+
+static const struct pcf85063_config config_pcf85063a = {
+	.regmap = {
+		.reg_bits = 8,
+		.val_bits = 8,
+		.max_register = 0x11,
+	},
+};
+
+static const struct pcf85063_config config_rv8263 = {
+	.regmap = {
+		.reg_bits = 8,
+		.val_bits = 8,
+		.max_register = 0x11,
+	},
+	.force_cap_7000 = 1,
+};
+
+static int pcf85063_probe(struct device *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct pcf85063 *pcf85063;
+	unsigned int tmp;
+	int err;
+	const struct pcf85063_config *config;
+	struct nvmem_config nvmem_cfg = {
+		.name = "pcf85063_nvram",
+		.reg_read = pcf85063_nvmem_read,
+		.reg_write = pcf85063_nvmem_write,
+		.size = 1,
+	};
+
+	dev_dbg(&client->dev, "%s\n", __func__);
+
+	pcf85063 = devm_kzalloc(&client->dev, sizeof(struct pcf85063),
+				GFP_KERNEL);
+	if (!pcf85063)
+		return -ENOMEM;
+
+	config = device_get_match_data(dev);
+	if (!config)
+		return -ENODEV;
+
+	pcf85063->regmap = regmap_init_i2c(client, &config->regmap);
+	if (IS_ERR(pcf85063->regmap))
+		return PTR_ERR(pcf85063->regmap);
+
+	i2c_set_clientdata(client, pcf85063);
+
+	err = regmap_read(pcf85063->regmap, PCF85063_REG_CTRL1, &tmp);
+	if (err) {
+		dev_err(&client->dev, "RTC chip is not present\n");
+		return err;
+	}
+
+	pcf85063->rtc.ops = &pcf85063_rtc_ops;
+	pcf85063->rtc.dev = dev;
+
+	err = pcf85063_load_capacitance(pcf85063, client->dev.of_node,
+					config->force_cap_7000 ? 7000 : 0);
+	if (err < 0)
+		dev_warn(&client->dev, "failed to set xtal load capacitance: %d",
+			 err);
+
+
+	nvmem_cfg.priv = pcf85063->regmap;
+	rtc_nvmem_register(&pcf85063->rtc, &nvmem_cfg);
+
+#ifdef CONFIG_COMMON_CLK
+	/* register clk in common clk framework */
+	pcf85063_clkout_register_clk(pcf85063);
+#endif
+
+	return rtc_register(&pcf85063->rtc);
+}
+
+static const struct of_device_id pcf85063_of_match[] = {
+	{ .compatible = "nxp,pca85073a", .data = &config_pcf85063a },
+	{ .compatible = "nxp,pcf85063", .data = &config_pcf85063 },
+	{ .compatible = "nxp,pcf85063tp", .data = &config_pcf85063tp },
+	{ .compatible = "nxp,pcf85063a", .data = &config_pcf85063a },
+	{ .compatible = "microcrystal,rv8263", .data = &config_rv8263 },
+	{}
+};
+MODULE_DEVICE_TABLE(of, pcf85063_of_match);
+
+static struct driver pcf85063_driver = {
+	.name	= "rtc-pcf85063",
+	.of_match_table = pcf85063_of_match,
+	.probe		= pcf85063_probe,
+};
+device_i2c_driver(pcf85063_driver);
+
+MODULE_AUTHOR("Søren Andersen <san@rosetechnology.dk>");
+MODULE_DESCRIPTION("PCF85063 RTC driver");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/rtc.h b/include/linux/rtc.h
index def07548c554..73dc6dae3a36 100644
--- a/include/linux/rtc.h
+++ b/include/linux/rtc.h
@@ -15,6 +15,9 @@
 
 #include <common.h>
 #include <linux/types.h>
+#include <linux/errno.h>
+#include <linux/nvmem-provider.h>
+#include <rtc.h>
 
 extern int rtc_month_days(unsigned int month, unsigned int year);
 extern int rtc_valid_tm(struct rtc_time *tm);
@@ -46,4 +49,15 @@ static inline bool is_leap_year(unsigned int year)
 	return (!(year % 4) && (year % 100)) || !(year % 400);
 }
 
+#ifdef CONFIG_NVMEM
+int rtc_nvmem_register(struct rtc_device *rtc,
+		       struct nvmem_config *nvmem_config);
+#else
+static inline int rtc_nvmem_register(struct rtc_device *rtc,
+				     struct nvmem_config *nvmem_config)
+{
+	return -ENOSYS;
+}
+#endif
+
 #endif /* _LINUX_RTC_H_ */
-- 
2.39.2



