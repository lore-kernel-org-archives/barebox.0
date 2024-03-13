Delivery-date: Wed, 13 Mar 2024 13:17:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkNXj-004NL6-2a
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 13:17:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkNXi-0006vY-Df
	for lore@pengutronix.de; Wed, 13 Mar 2024 13:17:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s8c6A6KgFzQAT5OZs+Vr9qO+vNDF5EfN2WXONZ3ZQDg=; b=r1wjGfFdsRermACiZQNag5Gfxi
	RWbx9tK4dbsBtPx+zFxd9Of03jBmSJy+g32LveLttB/UKAoCEv9GFJSkEF53rNtSZPc4j7N4dQZol
	Z9/3Ca6YL//KHSrZ1gJlbpGKpCvtMoopm5gVNMlxZsRee2e8cSe4E1SqIDPgicGzqo5QGBLdSeC7+
	On9qJLk5uIICaUY1zxUfadnkrncePTX62n0UdVkBjtGEhQH7bwXNZa7yhFOPtcI0hsQUbAZqrtwvE
	af5cVlEw8bFR16W8z2jdStrNaeWE+YlCIU1Ig0Q+1N1qymUTueXC/T12DovQw9X93DD0RX+XRgC6v
	uL8f0fJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkNXQ-0000000A2Ns-2vMX;
	Wed, 13 Mar 2024 12:16:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMOX-00000009nD7-2SuI
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 11:03:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMOW-0007Au-3b; Wed, 13 Mar 2024 12:03:36 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMOV-00662M-N2; Wed, 13 Mar 2024 12:03:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-004FrF-17;
	Wed, 13 Mar 2024 11:56:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 11:56:31 +0100
Message-Id: <20240313105631.686778-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313105631.686778-1-a.fatoum@pengutronix.de>
References: <20240313105631.686778-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_040338_073844_346CF167 
X-CRM114-Status: GOOD (  26.90  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 12/12] hw_random: add OMAP RNG driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To enable proper hardening with stack protector, add support for the
OMAP RNG driver. This has been tested on a Beagle Bone Black.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-omap/am33xx_clock.c |   5 +
 drivers/hw_random/Kconfig         |   8 +
 drivers/hw_random/Makefile        |   1 +
 drivers/hw_random/omap-rng.c      | 436 ++++++++++++++++++++++++++++++
 include/linux/clk.h               |  33 +++
 include/mach/omap/am33xx-clock.h  |   1 +
 6 files changed, 484 insertions(+)
 create mode 100644 drivers/hw_random/omap-rng.c

diff --git a/arch/arm/mach-omap/am33xx_clock.c b/arch/arm/mach-omap/am33xx_clock.c
index eeb7e93329d2..4ba10491be6c 100644
--- a/arch/arm/mach-omap/am33xx_clock.c
+++ b/arch/arm/mach-omap/am33xx_clock.c
@@ -169,6 +169,11 @@ void am33xx_enable_per_clocks(void)
 	__raw_writel(PRCM_MOD_EN, CM_WKUP_ADC_TSC_CLKCTRL);
 	while (__raw_readl(CM_WKUP_ADC_TSC_CLKCTRL) != PRCM_MOD_EN);
 
+	if (IS_ENABLED(CONFIG_HW_RANDOM_OMAP)) {
+		__raw_writel(PRCM_MOD_EN, CM_PER_RNG_CLKCTRL);
+		while ((__raw_readl(CM_PER_RNG_CLKCTRL) & 0x30000) != 0x0);
+	}
+
 	clkdcoldo = __raw_readl(CM_CLKDCOLDO_DPLL_PER);
 	clkdcoldo = clkdcoldo | 0x100;
 	__raw_writel(clkdcoldo, CM_CLKDCOLDO_DPLL_PER);
diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
index bd1ac89ad37d..763929f7d65d 100644
--- a/drivers/hw_random/Kconfig
+++ b/drivers/hw_random/Kconfig
@@ -94,4 +94,12 @@ config HW_RANDOM_ROCKCHIP
 	  This driver provides barebox support for the Random Number
 	  Generator hardware found on Rockchip cpus.
 
+config HW_RANDOM_OMAP
+	tristate "OMAP Random Number Generator support"
+	depends on ARCH_OMAP || ARCH_K3 || COMPILE_TEST
+	help
+	  This driver provides barebox support for the Random Number
+	  Generator hardware found on OMAP2/3/4/5, AM33xx/AM43xx
+	  multimedia processors, and Marvell Armada 7k/8k SoCs.
+
 endif
diff --git a/drivers/hw_random/Makefile b/drivers/hw_random/Makefile
index 32b02fa211ac..7f65a6c41ec7 100644
--- a/drivers/hw_random/Makefile
+++ b/drivers/hw_random/Makefile
@@ -12,3 +12,4 @@ obj-$(CONFIG_HW_RANDOM_BCM2835) += bcm2835-rng.o
 obj-$(CONFIG_HW_RANDOM_IPROC_RNG200) += iproc-rng200.o
 obj-$(CONFIG_HW_RANDOM_ROCKCHIP) += rockchip-rng.o
 obj-$(CONFIG_HW_RANDOM_TIMERIOMEM) += timeriomem-rng.o
+obj-$(CONFIG_HW_RANDOM_OMAP) += omap-rng.o
diff --git a/drivers/hw_random/omap-rng.c b/drivers/hw_random/omap-rng.c
new file mode 100644
index 000000000000..9fa50bc8e7a9
--- /dev/null
+++ b/drivers/hw_random/omap-rng.c
@@ -0,0 +1,436 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * omap-rng.c - RNG driver for TI OMAP CPU family
+ *
+ * Author: Deepak Saxena <dsaxena@plexity.net>
+ *
+ * Copyright 2005 (c) MontaVista Software, Inc.
+ *
+ * Mostly based on original driver:
+ *
+ * Copyright (C) 2005 Nokia Corporation
+ * Author: Juha Yrjölä <juha.yrjola@nokia.com>
+ */
+
+#include <init.h>
+#include <linux/err.h>
+#include <linux/device.h>
+#include <linux/hw_random.h>
+#include <clock.h>
+#include <linux/kernel.h>
+#include <linux/slab.h>
+#include <of.h>
+#include <linux/clk.h>
+#include <linux/io.h>
+
+#define RNG_REG_STATUS_RDY			(1 << 0)
+
+#define RNG_REG_INTACK_RDY_MASK			(1 << 0)
+#define RNG_REG_INTACK_SHUTDOWN_OFLO_MASK	(1 << 1)
+#define RNG_SHUTDOWN_OFLO_MASK			(1 << 1)
+
+#define RNG_CONTROL_STARTUP_CYCLES_SHIFT	16
+#define RNG_CONTROL_STARTUP_CYCLES_MASK		(0xffff << 16)
+#define RNG_CONTROL_ENABLE_TRNG_SHIFT		10
+#define RNG_CONTROL_ENABLE_TRNG_MASK		(1 << 10)
+
+#define RNG_CONFIG_MAX_REFIL_CYCLES_SHIFT	16
+#define RNG_CONFIG_MAX_REFIL_CYCLES_MASK	(0xffff << 16)
+#define RNG_CONFIG_MIN_REFIL_CYCLES_SHIFT	0
+#define RNG_CONFIG_MIN_REFIL_CYCLES_MASK	(0xff << 0)
+
+#define RNG_CONTROL_STARTUP_CYCLES		0xff
+#define RNG_CONFIG_MIN_REFIL_CYCLES		0x21
+#define RNG_CONFIG_MAX_REFIL_CYCLES		0x22
+
+#define RNG_ALARMCNT_ALARM_TH_SHIFT		0x0
+#define RNG_ALARMCNT_ALARM_TH_MASK		(0xff << 0)
+#define RNG_ALARMCNT_SHUTDOWN_TH_SHIFT		16
+#define RNG_ALARMCNT_SHUTDOWN_TH_MASK		(0x1f << 16)
+#define RNG_ALARM_THRESHOLD			0xff
+#define RNG_SHUTDOWN_THRESHOLD			0x4
+
+#define RNG_REG_FROENABLE_MASK			0xffffff
+#define RNG_REG_FRODETUNE_MASK			0xffffff
+
+#define OMAP2_RNG_OUTPUT_SIZE			0x4
+#define OMAP4_RNG_OUTPUT_SIZE			0x8
+#define EIP76_RNG_OUTPUT_SIZE			0x10
+
+/*
+ * EIP76 RNG takes approx. 700us to produce 16 bytes of output data
+ * as per testing results. And to account for the lack of udelay()'s
+ * reliability, we keep the timeout as 1000us.
+ */
+#define RNG_DATA_FILL_TIMEOUT			100
+
+enum {
+	RNG_OUTPUT_0_REG = 0,
+	RNG_OUTPUT_1_REG,
+	RNG_OUTPUT_2_REG,
+	RNG_OUTPUT_3_REG,
+	RNG_STATUS_REG,
+	RNG_INTMASK_REG,
+	RNG_INTACK_REG,
+	RNG_CONTROL_REG,
+	RNG_CONFIG_REG,
+	RNG_ALARMCNT_REG,
+	RNG_FROENABLE_REG,
+	RNG_FRODETUNE_REG,
+	RNG_ALARMMASK_REG,
+	RNG_ALARMSTOP_REG,
+	RNG_REV_REG,
+	RNG_SYSCONFIG_REG,
+};
+
+static const u16 reg_map_omap2[] = {
+	[RNG_OUTPUT_0_REG]	= 0x0,
+	[RNG_STATUS_REG]	= 0x4,
+	[RNG_CONFIG_REG]	= 0x28,
+	[RNG_REV_REG]		= 0x3c,
+	[RNG_SYSCONFIG_REG]	= 0x40,
+};
+
+static const u16 reg_map_omap4[] = {
+	[RNG_OUTPUT_0_REG]	= 0x0,
+	[RNG_OUTPUT_1_REG]	= 0x4,
+	[RNG_STATUS_REG]	= 0x8,
+	[RNG_INTMASK_REG]	= 0xc,
+	[RNG_INTACK_REG]	= 0x10,
+	[RNG_CONTROL_REG]	= 0x14,
+	[RNG_CONFIG_REG]	= 0x18,
+	[RNG_ALARMCNT_REG]	= 0x1c,
+	[RNG_FROENABLE_REG]	= 0x20,
+	[RNG_FRODETUNE_REG]	= 0x24,
+	[RNG_ALARMMASK_REG]	= 0x28,
+	[RNG_ALARMSTOP_REG]	= 0x2c,
+	[RNG_REV_REG]		= 0x1FE0,
+	[RNG_SYSCONFIG_REG]	= 0x1FE4,
+};
+
+static const u16 reg_map_eip76[] = {
+	[RNG_OUTPUT_0_REG]	= 0x0,
+	[RNG_OUTPUT_1_REG]	= 0x4,
+	[RNG_OUTPUT_2_REG]	= 0x8,
+	[RNG_OUTPUT_3_REG]	= 0xc,
+	[RNG_STATUS_REG]	= 0x10,
+	[RNG_INTACK_REG]	= 0x10,
+	[RNG_CONTROL_REG]	= 0x14,
+	[RNG_CONFIG_REG]	= 0x18,
+	[RNG_ALARMCNT_REG]	= 0x1c,
+	[RNG_FROENABLE_REG]	= 0x20,
+	[RNG_FRODETUNE_REG]	= 0x24,
+	[RNG_ALARMMASK_REG]	= 0x28,
+	[RNG_ALARMSTOP_REG]	= 0x2c,
+	[RNG_REV_REG]		= 0x7c,
+};
+
+struct omap_rng_dev;
+/**
+ * struct omap_rng_pdata - RNG IP block-specific data
+ * @regs: Pointer to the register offsets structure.
+ * @data_size: No. of bytes in RNG output.
+ * @data_present: Callback to determine if data is available.
+ * @init: Callback for IP specific initialization sequence.
+ * @cleanup: Callback for IP specific cleanup sequence.
+ */
+struct omap_rng_pdata {
+	u16	*regs;
+	u32	data_size;
+	u32	(*data_present)(struct omap_rng_dev *priv);
+	int	(*init)(struct omap_rng_dev *priv);
+	void	(*cleanup)(struct omap_rng_dev *priv);
+};
+
+struct omap_rng_dev {
+	void __iomem			*base;
+	struct device			*dev;
+	const struct omap_rng_pdata	*pdata;
+	struct hwrng rng;
+	struct clk			*clk;
+	struct clk			*clk_reg;
+};
+
+static inline u32 omap_rng_read(struct omap_rng_dev *priv, u16 reg)
+{
+	return __raw_readl(priv->base + priv->pdata->regs[reg]);
+}
+
+static inline void omap_rng_write(struct omap_rng_dev *priv, u16 reg,
+				      u32 val)
+{
+	__raw_writel(val, priv->base + priv->pdata->regs[reg]);
+}
+
+
+static int omap_rng_do_read(struct hwrng *rng, void *data, size_t max,
+			    bool wait)
+{
+	struct omap_rng_dev *priv;
+	int i, present;
+
+	priv = (struct omap_rng_dev *)rng->priv;
+
+	/* In Linux, max is always at least 32 bytes, which is greater than
+	 * the 4 bytes required by the IP not to raise a data abort.
+	 * In barebox, reading 4 bytes from a HWRNG is something we want
+	 * support, so we check against 4 here and restrict memcpy_fromio
+	 * size below.
+	 */
+	if (max < sizeof(u32))
+		return -EFAULT;
+
+	for (i = 0; i < RNG_DATA_FILL_TIMEOUT; i++) {
+		present = priv->pdata->data_present(priv);
+		if (present || !wait)
+			break;
+
+		udelay(10);
+	}
+	if (!present)
+		return 0;
+
+	max = min(max, priv->pdata->data_size);
+
+	memcpy_fromio(data, priv->base + priv->pdata->regs[RNG_OUTPUT_0_REG], max);
+
+	if (priv->pdata->regs[RNG_INTACK_REG])
+		omap_rng_write(priv, RNG_INTACK_REG, RNG_REG_INTACK_RDY_MASK);
+
+	return max;
+}
+
+static int omap_rng_init(struct hwrng *rng)
+{
+	struct omap_rng_dev *priv;
+
+	priv = (struct omap_rng_dev *)rng->priv;
+	return priv->pdata->init(priv);
+}
+
+static inline u32 omap2_rng_data_present(struct omap_rng_dev *priv)
+{
+	return omap_rng_read(priv, RNG_STATUS_REG) ? 0 : 1;
+}
+
+static int omap2_rng_init(struct omap_rng_dev *priv)
+{
+	omap_rng_write(priv, RNG_SYSCONFIG_REG, 0x1);
+	return 0;
+}
+
+static void omap2_rng_cleanup(struct omap_rng_dev *priv)
+{
+	omap_rng_write(priv, RNG_SYSCONFIG_REG, 0x0);
+}
+
+static struct omap_rng_pdata omap2_rng_pdata = {
+	.regs		= (u16 *)reg_map_omap2,
+	.data_size	= OMAP2_RNG_OUTPUT_SIZE,
+	.data_present	= omap2_rng_data_present,
+	.init		= omap2_rng_init,
+	.cleanup	= omap2_rng_cleanup,
+};
+
+static inline u32 omap4_rng_data_present(struct omap_rng_dev *priv)
+{
+	return omap_rng_read(priv, RNG_STATUS_REG) & RNG_REG_STATUS_RDY;
+}
+
+static int eip76_rng_init(struct omap_rng_dev *priv)
+{
+	u32 val;
+
+	/* Return if RNG is already running. */
+	if (omap_rng_read(priv, RNG_CONTROL_REG) & RNG_CONTROL_ENABLE_TRNG_MASK)
+		return 0;
+
+	/*  Number of 512 bit blocks of raw Noise Source output data that must
+	 *  be processed by either the Conditioning Function or the
+	 *  SP 800-90 DRBG ‘BC_DF’ functionality to yield a ‘full entropy’
+	 *  output value.
+	 */
+	val = 0x5 << RNG_CONFIG_MIN_REFIL_CYCLES_SHIFT;
+
+	/* Number of FRO samples that are XOR-ed together into one bit to be
+	 * shifted into the main shift register
+	 */
+	val |= RNG_CONFIG_MAX_REFIL_CYCLES << RNG_CONFIG_MAX_REFIL_CYCLES_SHIFT;
+	omap_rng_write(priv, RNG_CONFIG_REG, val);
+
+	/* Enable TRNG */
+	val = RNG_CONTROL_ENABLE_TRNG_MASK;
+	omap_rng_write(priv, RNG_CONTROL_REG, val);
+
+	return 0;
+}
+
+static int omap4_rng_init(struct omap_rng_dev *priv)
+{
+	u32 val;
+
+	/* Return if RNG is already running. */
+	if (omap_rng_read(priv, RNG_CONTROL_REG) & RNG_CONTROL_ENABLE_TRNG_MASK)
+		return 0;
+
+	val = RNG_CONFIG_MIN_REFIL_CYCLES << RNG_CONFIG_MIN_REFIL_CYCLES_SHIFT;
+	val |= RNG_CONFIG_MAX_REFIL_CYCLES << RNG_CONFIG_MAX_REFIL_CYCLES_SHIFT;
+	omap_rng_write(priv, RNG_CONFIG_REG, val);
+
+	val = RNG_CONTROL_STARTUP_CYCLES << RNG_CONTROL_STARTUP_CYCLES_SHIFT;
+	val |= RNG_CONTROL_ENABLE_TRNG_MASK;
+	omap_rng_write(priv, RNG_CONTROL_REG, val);
+
+	return 0;
+}
+
+static void omap4_rng_cleanup(struct omap_rng_dev *priv)
+{
+	int val;
+
+	val = omap_rng_read(priv, RNG_CONTROL_REG);
+	val &= ~RNG_CONTROL_ENABLE_TRNG_MASK;
+	omap_rng_write(priv, RNG_CONTROL_REG, val);
+}
+
+static struct omap_rng_pdata omap4_rng_pdata = {
+	.regs		= (u16 *)reg_map_omap4,
+	.data_size	= OMAP4_RNG_OUTPUT_SIZE,
+	.data_present	= omap4_rng_data_present,
+	.init		= omap4_rng_init,
+	.cleanup	= omap4_rng_cleanup,
+};
+
+static struct omap_rng_pdata eip76_rng_pdata = {
+	.regs		= (u16 *)reg_map_eip76,
+	.data_size	= EIP76_RNG_OUTPUT_SIZE,
+	.data_present	= omap4_rng_data_present,
+	.init		= eip76_rng_init,
+	.cleanup	= omap4_rng_cleanup,
+};
+
+static const struct of_device_id omap_rng_of_match[] __maybe_unused = {
+		{
+			.compatible	= "ti,omap2-rng",
+			.data		= &omap2_rng_pdata,
+		},
+		{
+			.compatible	= "ti,omap4-rng",
+			.data		= &omap4_rng_pdata,
+		},
+		{
+			.compatible	= "inside-secure,safexcel-eip76",
+			.data		= &eip76_rng_pdata,
+		},
+		{},
+};
+MODULE_DEVICE_TABLE(of, omap_rng_of_match);
+
+static int of_get_omap_rng_device_details(struct omap_rng_dev *priv,
+					  struct device *dev)
+{
+	priv->pdata = device_get_match_data(dev);
+	if (!priv->pdata)
+		return -ENODEV;
+
+	return 0;
+}
+
+static struct clk *ti_sysc_clk_get_enabled(struct device *dev, const char *clk_id)
+{
+	struct clk *clk;
+
+	clk = clk_get_optional_enabled(dev, clk_id);
+	if (!clk)
+		clk = clk_get_optional_enabled(dev->parent, clk_id);
+
+	if (IS_ERR(clk))
+		dev_errp_probe(dev, clk, "Unable to enable the clk\n");
+	return clk;
+}
+
+static int omap_rng_probe(struct device *dev)
+{
+	struct omap_rng_dev *priv;
+	int ret;
+
+	priv = devm_kzalloc(dev, sizeof(struct omap_rng_dev), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->rng.read = omap_rng_do_read;
+	priv->rng.init = omap_rng_init;
+
+	priv->rng.priv = (unsigned long)priv;
+	dev->priv = priv;
+	priv->dev = dev;
+
+	priv->base = dev_platform_ioremap_resource(dev, 0);
+	if (IS_ERR(priv->base)) {
+		ret = PTR_ERR(priv->base);
+		goto err_ioremap;
+	}
+
+	priv->rng.name = devm_kstrdup(dev, dev_name(dev), GFP_KERNEL);
+	if (!priv->rng.name) {
+		ret = -ENOMEM;
+		goto err_ioremap;
+	}
+
+	priv->clk = ti_sysc_clk_get_enabled(dev, NULL);
+	if (IS_ERR(priv->clk)) {
+		ret = PTR_ERR(priv->clk);
+		goto err_ioremap;
+	}
+
+	priv->clk_reg = ti_sysc_clk_get_enabled(dev, "reg");
+	if (IS_ERR(priv->clk_reg)) {
+		ret = PTR_ERR(priv->clk_reg);
+		goto err_ioremap;
+	}
+
+	ret = of_get_omap_rng_device_details(priv, dev);
+	if (ret)
+		goto err_register;
+
+	ret = hwrng_register(dev, &priv->rng);
+	if (ret)
+		goto err_register;
+
+	dev_info(dev, "Random Number Generator ver. %02x\n",
+		 omap_rng_read(priv, RNG_REV_REG));
+
+	return 0;
+
+err_register:
+	priv->base = NULL;
+
+	clk_disable_unprepare(priv->clk_reg);
+	clk_disable_unprepare(priv->clk);
+err_ioremap:
+	dev_err(dev, "initialization failed.\n");
+	return ret;
+}
+
+static void omap_rng_remove(struct device *dev)
+{
+	struct omap_rng_dev *priv = dev->priv;
+
+
+	priv->pdata->cleanup(priv);
+
+	clk_disable_unprepare(priv->clk);
+	clk_disable_unprepare(priv->clk_reg);
+}
+
+static struct driver omap_rng_driver = {
+	.name		= "omap_rng",
+	.of_match_table = of_match_ptr(omap_rng_of_match),
+	.probe		= omap_rng_probe,
+	.remove		= omap_rng_remove,
+};
+
+device_platform_driver(omap_rng_driver);
+MODULE_ALIAS("platform:omap_rng");
+MODULE_AUTHOR("Deepak Saxena (and others)");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/clk.h b/include/linux/clk.h
index fe0b1ce3e36c..7ba0679d03d6 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -1097,6 +1097,39 @@ static inline struct clk *clk_get_enabled(struct device *dev, const char *id)
 	return clk;
 }
 
+/**
+ * clk_get_optional_enabled - clk_get_optional() +
+ *                            clk_prepare_enable()
+ * @dev: device for clock "consumer"
+ * @id: clock consumer ID
+ *
+ * Return: a struct clk corresponding to the clock producer, or
+ * valid IS_ERR() condition containing errno.  The implementation
+ * uses @dev and @id to determine the clock consumer, and thereby
+ * the clock producer.  If no such clk is found, it returns NULL
+ * which serves as a dummy clk.  That's the only difference compared
+ * to clk_get_enabled().
+ *
+ * The returned clk (if valid) is enabled.
+ */
+static inline struct clk *clk_get_optional_enabled(struct device *dev, const char *id)
+{
+	struct clk *clk;
+	int ret;
+
+	clk = clk_get_optional(dev, id);
+	if (IS_ERR_OR_NULL(clk))
+		return clk;
+
+	ret = clk_enable(clk);
+	if (ret) {
+		clk_put(clk);
+		return ERR_PTR(ret);
+	}
+
+	return clk;
+}
+
 /**
  * clk_get_if_available - get clock, ignoring known unavailable clock controller
  * @dev: device for clock "consumer"
diff --git a/include/mach/omap/am33xx-clock.h b/include/mach/omap/am33xx-clock.h
index b0293db990a3..af47a0f3e77a 100644
--- a/include/mach/omap/am33xx-clock.h
+++ b/include/mach/omap/am33xx-clock.h
@@ -139,6 +139,7 @@
 #define CM_PER_UART4_CLKCTRL            (CM_PER + 0x78) /* UART4 */
 #define CM_PER_I2C1_CLKCTRL             (CM_PER + 0x48) /* I2C1 */
 #define CM_PER_I2C2_CLKCTRL             (CM_PER + 0x44) /* I2C2 */
+#define CM_PER_RNG_CLKCTRL              (CM_PER + 0x90) /* RNG */
 #define CM_WKUP_GPIO0_CLKCTRL           (CM_WKUP + 0x8) /* GPIO0 */
 #define CM_WKUP_ADC_TSC_CLKCTRL         (CM_WKUP + 0xbc)/* TSCADC */
 
-- 
2.39.2



