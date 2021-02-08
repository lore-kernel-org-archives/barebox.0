Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9C3J-0005FF-NE
 for barebox@lists.infradead.org; Mon, 08 Feb 2021 19:18:34 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Feb 2021 20:18:27 +0100
Message-Id: <20210208191827.19241-4-a.fatoum@pengutronix.de>
In-Reply-To: <20210208191827.19241-1-a.fatoum@pengutronix.de>
References: <20210208191827.19241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] aiodev: add support for STM32 ADC
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, has@pengutronix.de

This driver supports simple one-shot readings rather than continuous
sampling with DMA, etc. ADC channels should be configured via
device tree, using the kernel bindings.

Code is based on the stm32-adc drivers of Linux v5.11-rc1 and
U-Boot v2021.01-rc4.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/stm32mp_defconfig |   3 +
 drivers/aiodev/Kconfig             |   7 +
 drivers/aiodev/Makefile            |   1 +
 drivers/aiodev/stm32-adc-core.c    | 211 ++++++++++++++++
 drivers/aiodev/stm32-adc-core.h    |  52 ++++
 drivers/aiodev/stm32-adc.c         | 374 +++++++++++++++++++++++++++++
 6 files changed, 648 insertions(+)
 create mode 100644 drivers/aiodev/stm32-adc-core.c
 create mode 100644 drivers/aiodev/stm32-adc-core.h
 create mode 100644 drivers/aiodev/stm32-adc.c

diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index e9f89e69d969..e1ee4ec08205 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -94,6 +94,8 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_FASTBOOT=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_AIODEV=y
+CONFIG_STM32_ADC=y
 CONFIG_DRIVER_SERIAL_STM32=y
 CONFIG_DRIVER_NET_DESIGNWARE_EQOS=y
 CONFIG_DRIVER_NET_DESIGNWARE_STM32=y
@@ -132,6 +134,7 @@ CONFIG_STM32_BSEC=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
 CONFIG_REGULATOR_STM32_PWR=y
+CONFIG_REGULATOR_STM32_VREFBUF=y
 CONFIG_REGULATOR_STPMIC1=y
 CONFIG_REMOTEPROC=y
 CONFIG_STM32_REMOTEPROC=y
diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
index 5fb445c096e6..88d013aad0b9 100644
--- a/drivers/aiodev/Kconfig
+++ b/drivers/aiodev/Kconfig
@@ -43,4 +43,11 @@ config AM335X_ADC
 	  rather than continuous sampling with DMA, etc.  ADC channels should be
 	  configured via device tree, using the kernel bindings.
 
+config STM32_ADC
+	tristate "STM32 ADC driver"
+	depends on ARCH_STM32MP || COMPILE_TEST
+	help
+	  Support for ADC on STM32.  Supports simple one-shot readings
+	  rather than continuous sampling with DMA, etc.  ADC channels should be
+	  configured via device tree, using the kernel bindings.
 endif
diff --git a/drivers/aiodev/Makefile b/drivers/aiodev/Makefile
index 5f48b2022a81..52652f67b756 100644
--- a/drivers/aiodev/Makefile
+++ b/drivers/aiodev/Makefile
@@ -5,3 +5,4 @@ obj-$(CONFIG_LM75) += lm75.o
 obj-$(CONFIG_MC13XXX_ADC) += mc13xxx_adc.o
 obj-$(CONFIG_QORIQ_THERMAL) += qoriq_thermal.o
 obj-$(CONFIG_AM335X_ADC) += am335x_adc.o
+obj-$(CONFIG_STM32_ADC) += stm32-adc.o stm32-adc-core.o
diff --git a/drivers/aiodev/stm32-adc-core.c b/drivers/aiodev/stm32-adc-core.c
new file mode 100644
index 000000000000..410e2a894e12
--- /dev/null
+++ b/drivers/aiodev/stm32-adc-core.c
@@ -0,0 +1,211 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2018, STMicroelectronics - All Rights Reserved
+ * Author: Fabrice Gasnier <fabrice.gasnier@st.com>
+ *
+ * Originally based on the Linux kernel v4.18 drivers/iio/adc/stm32-adc-core.c.
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <regulator.h>
+#include <linux/bitops.h>
+#include "stm32-adc-core.h"
+
+/* STM32H7 - common registers for all ADC instances */
+#define STM32H7_ADC_CCR			(STM32_ADCX_COMN_OFFSET + 0x08)
+
+/* STM32H7_ADC_CCR - bit fields */
+#define STM32H7_PRESC_SHIFT		18
+#define STM32H7_PRESC_MASK		GENMASK(21, 18)
+#define STM32H7_CKMODE_SHIFT		16
+#define STM32H7_CKMODE_MASK		GENMASK(17, 16)
+
+/* STM32 H7 maximum analog clock rate (from datasheet) */
+#define STM32H7_ADC_MAX_CLK_RATE	36000000
+
+/**
+ * struct stm32h7_adc_ck_spec - specification for stm32h7 adc clock
+ * @ckmode: ADC clock mode, Async or sync with prescaler.
+ * @presc: prescaler bitfield for async clock mode
+ * @div: prescaler division ratio
+ */
+struct stm32h7_adc_ck_spec {
+	u32 ckmode;
+	u32 presc;
+	int div;
+};
+
+static const struct stm32h7_adc_ck_spec stm32h7_adc_ckmodes_spec[] = {
+	/* 00: CK_ADC[1..3]: Asynchronous clock modes */
+	{ 0, 0, 1 },
+	{ 0, 1, 2 },
+	{ 0, 2, 4 },
+	{ 0, 3, 6 },
+	{ 0, 4, 8 },
+	{ 0, 5, 10 },
+	{ 0, 6, 12 },
+	{ 0, 7, 16 },
+	{ 0, 8, 32 },
+	{ 0, 9, 64 },
+	{ 0, 10, 128 },
+	{ 0, 11, 256 },
+	/* HCLK used: Synchronous clock modes (1, 2 or 4 prescaler) */
+	{ 1, 0, 1 },
+	{ 2, 0, 2 },
+	{ 3, 0, 4 },
+};
+
+static int stm32h7_adc_clk_sel(struct device_d *dev,
+			       struct stm32_adc_common *common)
+{
+	u32 ckmode, presc;
+	unsigned long rate;
+	unsigned int i;
+	int div;
+
+	/* stm32h7 bus clock is common for all ADC instances (mandatory) */
+	if (!common->bclk) {
+		dev_err(dev, "No bclk clock found\n");
+		return -ENOENT;
+	}
+
+	/*
+	 * stm32h7 can use either 'bus' or 'adc' clock for analog circuitry.
+	 * So, choice is to have bus clock mandatory and adc clock optional.
+	 * If optional 'adc' clock has been found, then try to use it first.
+	 */
+	if (common->aclk) {
+		/*
+		 * Asynchronous clock modes (e.g. ckmode == 0)
+		 * From spec: PLL output musn't exceed max rate
+		 */
+		rate = clk_get_rate(common->aclk);
+		if (!rate) {
+			dev_err(dev, "Invalid aclk rate: 0\n");
+			return -EINVAL;
+		}
+
+		for (i = 0; i < ARRAY_SIZE(stm32h7_adc_ckmodes_spec); i++) {
+			ckmode = stm32h7_adc_ckmodes_spec[i].ckmode;
+			presc = stm32h7_adc_ckmodes_spec[i].presc;
+			div = stm32h7_adc_ckmodes_spec[i].div;
+
+			if (ckmode)
+				continue;
+
+			if ((rate / div) <= STM32H7_ADC_MAX_CLK_RATE)
+				goto out;
+		}
+	}
+
+	/* Synchronous clock modes (e.g. ckmode is 1, 2 or 3) */
+	rate = clk_get_rate(common->bclk);
+	if (!rate) {
+		dev_err(dev, "Invalid bus clock rate: 0\n");
+		return -EINVAL;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(stm32h7_adc_ckmodes_spec); i++) {
+		ckmode = stm32h7_adc_ckmodes_spec[i].ckmode;
+		presc = stm32h7_adc_ckmodes_spec[i].presc;
+		div = stm32h7_adc_ckmodes_spec[i].div;
+
+		if (!ckmode)
+			continue;
+
+		if ((rate / div) <= STM32H7_ADC_MAX_CLK_RATE)
+			goto out;
+	}
+
+	dev_err(dev, "clk selection failed\n");
+	return -EINVAL;
+
+out:
+	/* rate used later by each ADC instance to control BOOST mode */
+	common->rate = rate / div;
+
+	/* Set common clock mode and prescaler */
+	clrsetbits_le32(common->base + STM32H7_ADC_CCR,
+			STM32H7_CKMODE_MASK | STM32H7_PRESC_MASK,
+			ckmode << STM32H7_CKMODE_SHIFT |
+			presc << STM32H7_PRESC_SHIFT);
+
+	dev_dbg(dev, "Using %s clock/%d source at %ld kHz\n",
+		ckmode ? "bus" : "adc", div, common->rate / 1000);
+
+	return 0;
+}
+
+static int stm32_adc_core_probe(struct device_d *dev)
+{
+	struct stm32_adc_common *common;
+	int ret;
+
+	common = xzalloc(sizeof(*common));
+
+	common->vref = regulator_get(dev, "vref");
+	if (IS_ERR(common->vref)) {
+		dev_err(dev, "can't get vref-supply: %pe\n", common->vref);
+		return PTR_ERR(common->vref);
+	}
+
+	ret = regulator_get_voltage(common->vref);
+	if (ret < 0) {
+		dev_err(dev, "can't get vref-supply value: %d\n", ret);
+		return ret;
+	}
+	common->vref_uv = ret;
+
+	common->aclk = clk_get(dev, "adc");
+	if (!IS_ERR(common->aclk)) {
+		ret = clk_enable(common->aclk);
+		if (ret) {
+			dev_err(dev, "Can't enable aclk: %d\n", ret);
+			return ret;
+		}
+	}
+
+	common->bclk = clk_get(dev, "bus");
+	if (!IS_ERR(common->bclk)) {
+		ret = clk_enable(common->bclk);
+		if (ret) {
+			dev_err(dev, "Can't enable bclk: %d\n", ret);
+			goto err_aclk_disable;
+		}
+	}
+
+	common->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(common->base)) {
+		dev_err(dev, "can't get address\n");
+		return -ENOENT;
+	}
+
+	ret = stm32h7_adc_clk_sel(dev, common);
+	if (ret)
+		goto err_bclk_disable;
+
+	dev->priv = common;
+	return of_platform_populate(dev->device_node, NULL, dev);
+
+err_bclk_disable:
+	clk_disable(common->bclk);
+
+err_aclk_disable:
+	clk_disable(common->aclk);
+
+	return ret;
+}
+
+static const struct of_device_id stm32_adc_core_ids[] = {
+	{ .compatible = "st,stm32h7-adc-core" },
+	{ .compatible = "st,stm32mp1-adc-core" },
+	{}
+};
+
+static struct driver_d stm32_adc_core_driver = {
+	.name		= "stm32-adc-core",
+	.probe		= stm32_adc_core_probe,
+	.of_compatible	= DRV_OF_COMPAT(stm32_adc_core_ids),
+};
+device_platform_driver(stm32_adc_core_driver);
diff --git a/drivers/aiodev/stm32-adc-core.h b/drivers/aiodev/stm32-adc-core.h
new file mode 100644
index 000000000000..de6c0b9495f3
--- /dev/null
+++ b/drivers/aiodev/stm32-adc-core.h
@@ -0,0 +1,52 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2018, STMicroelectronics - All Rights Reserved
+ * Author: Fabrice Gasnier <fabrice.gasnier@st.com>.
+ *
+ * Originally based on the Linux kernel v4.18 drivers/iio/adc/stm32-adc-core.h.
+ */
+
+#ifndef __STM32_ADC_H
+#define __STM32_ADC_H
+
+/*
+ * STM32 - ADC global register map
+ * ________________________________________________________
+ * | Offset |                 Register                    |
+ * --------------------------------------------------------
+ * | 0x000  |                Master ADC1                  |
+ * --------------------------------------------------------
+ * | 0x100  |                Slave ADC2                   |
+ * --------------------------------------------------------
+ * | 0x200  |                Slave ADC3                   |
+ * --------------------------------------------------------
+ * | 0x300  |         Master & Slave common regs          |
+ * --------------------------------------------------------
+ */
+#define STM32_ADC_MAX_ADCS		3
+#define STM32_ADCX_COMN_OFFSET		0x300
+
+#include <linux/types.h>
+
+struct regulator;
+struct clk;
+
+/**
+ * struct stm32_adc_common - stm32 ADC driver common data (for all instances)
+ * @base:		control registers base cpu addr
+ * @rate:		clock rate used for analog circuitry
+ * @aclk:		clock for the analog circuitry
+ * @bclk:		bus clock common for all ADCs
+ * @vref:		regulator reference
+ * @vref_uv:		reference supply voltage (uV)
+ */
+struct stm32_adc_common {
+	void __iomem *base;
+	unsigned long rate;
+	struct clk *aclk;
+	struct clk *bclk;
+	struct regulator *vref;
+	int vref_uv;
+};
+
+#endif
diff --git a/drivers/aiodev/stm32-adc.c b/drivers/aiodev/stm32-adc.c
new file mode 100644
index 000000000000..eb9548adef70
--- /dev/null
+++ b/drivers/aiodev/stm32-adc.c
@@ -0,0 +1,374 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2018, STMicroelectronics - All Rights Reserved
+ * Author: Fabrice Gasnier <fabrice.gasnier@st.com>
+ *
+ * Originally based on the Linux kernel v4.18 drivers/iio/adc/stm32-adc.c.
+ */
+
+#include <common.h>
+#include <linux/bitops.h>
+#include <linux/iopoll.h>
+#include <aiodev.h>
+#include <regulator.h>
+#include <linux/math64.h>
+#include "stm32-adc-core.h"
+
+/* STM32H7 - Registers for each ADC instance */
+#define STM32H7_ADC_ISR			0x00
+#define STM32H7_ADC_CR			0x08
+#define STM32H7_ADC_CFGR		0x0C
+#define STM32H7_ADC_SMPR1		0x14
+#define STM32H7_ADC_SMPR2		0x18
+#define STM32H7_ADC_PCSEL		0x1C
+#define STM32H7_ADC_SQR1		0x30
+#define STM32H7_ADC_DR			0x40
+#define STM32H7_ADC_DIFSEL		0xC0
+
+/* STM32H7_ADC_ISR - bit fields */
+#define STM32MP1_VREGREADY		BIT(12)
+#define STM32H7_EOC			BIT(2)
+#define STM32H7_ADRDY			BIT(0)
+
+/* STM32H7_ADC_CR - bit fields */
+#define STM32H7_DEEPPWD			BIT(29)
+#define STM32H7_ADVREGEN		BIT(28)
+#define STM32H7_BOOST			BIT(8)
+#define STM32H7_ADSTART			BIT(2)
+#define STM32H7_ADDIS			BIT(1)
+#define STM32H7_ADEN			BIT(0)
+
+/* STM32H7_ADC_CFGR bit fields */
+#define STM32H7_EXTEN			GENMASK(11, 10)
+#define STM32H7_DMNGT			GENMASK(1, 0)
+
+/* STM32H7_ADC_SQR1 - bit fields */
+#define STM32H7_SQ1_SHIFT		6
+
+/* BOOST bit must be set on STM32H7 when ADC clock is above 20MHz */
+#define STM32H7_BOOST_CLKRATE		20000000UL
+
+#define STM32_ADC_CH_MAX		20	/* max number of channels */
+#define STM32_ADC_MAX_SMP		7	/* SMPx range is [0..7] */
+#define STM32_ADC_TIMEOUT_US		100000
+
+struct stm32_adc_regs {
+	int reg;
+	int mask;
+	int shift;
+};
+
+struct stm32_adc_cfg {
+	unsigned int max_channels;
+	unsigned int num_bits;
+	bool has_vregready;
+	const struct stm32_adc_regs *smp_bits;
+	const unsigned int *smp_cycles;
+};
+
+struct stm32_adc {
+	struct stm32_adc_common *common;
+	void __iomem *regs;
+	const struct stm32_adc_cfg *cfg;
+	u32 channel_mask;
+	u32 data_mask;
+	struct aiodevice aiodev;
+	void __iomem *base;
+	struct aiochannel *channels;
+	u32 *channel_map;
+	u32 smpr_val[2];
+};
+
+static void stm32_adc_stop(struct stm32_adc *adc)
+{
+	setbits_le32(adc->regs + STM32H7_ADC_CR, STM32H7_ADDIS);
+	clrbits_le32(adc->regs + STM32H7_ADC_CR, STM32H7_BOOST);
+	/* Setting DEEPPWD disables ADC vreg and clears ADVREGEN */
+	setbits_le32(adc->regs + STM32H7_ADC_CR, STM32H7_DEEPPWD);
+
+	regulator_disable(adc->common->vref);
+}
+
+static int stm32_adc_start_channel(struct stm32_adc *adc, int channel)
+{
+	struct device_d *dev = adc->aiodev.hwdev;
+	struct stm32_adc_common *common = adc->common;
+	int ret;
+	u32 val;
+
+	ret = regulator_enable(common->vref);
+	if (ret)
+		return ret;
+
+	/* Exit deep power down, then enable ADC voltage regulator */
+	clrbits_le32(adc->regs + STM32H7_ADC_CR, STM32H7_DEEPPWD);
+	setbits_le32(adc->regs + STM32H7_ADC_CR, STM32H7_ADVREGEN);
+	if (common->rate > STM32H7_BOOST_CLKRATE)
+		setbits_le32(adc->regs + STM32H7_ADC_CR, STM32H7_BOOST);
+
+	/* Wait for startup time */
+	if (!adc->cfg->has_vregready) {
+		udelay(20);
+	} else {
+		ret = readl_poll_timeout(adc->regs + STM32H7_ADC_ISR, val,
+					 val & STM32MP1_VREGREADY,
+					 STM32_ADC_TIMEOUT_US);
+		if (ret < 0) {
+			stm32_adc_stop(adc);
+			dev_err(dev, "Failed to enable vreg: %d\n", ret);
+			return ret;
+		}
+	}
+
+	/* Only use single ended channels */
+	writel(0, adc->regs + STM32H7_ADC_DIFSEL);
+
+	/* Enable ADC, Poll for ADRDY to be set (after adc startup time) */
+	setbits_le32(adc->regs + STM32H7_ADC_CR, STM32H7_ADEN);
+	ret = readl_poll_timeout(adc->regs + STM32H7_ADC_ISR, val,
+				 val & STM32H7_ADRDY, STM32_ADC_TIMEOUT_US);
+	if (ret < 0) {
+		stm32_adc_stop(adc);
+		dev_err(dev, "Failed to enable ADC: %d\n", ret);
+		return ret;
+	}
+
+	/* Preselect channels */
+	writel(adc->channel_mask, adc->regs + STM32H7_ADC_PCSEL);
+
+	/* Apply sampling time settings */
+	writel(adc->smpr_val[0], adc->regs + STM32H7_ADC_SMPR1);
+	writel(adc->smpr_val[1], adc->regs + STM32H7_ADC_SMPR2);
+
+	/* Program regular sequence: chan in SQ1 & len = 0 for one channel */
+	writel(channel << STM32H7_SQ1_SHIFT, adc->regs + STM32H7_ADC_SQR1);
+
+	/* Trigger detection disabled (conversion can be launched in SW) */
+	clrbits_le32(adc->regs + STM32H7_ADC_CFGR, STM32H7_EXTEN |
+		     STM32H7_DMNGT);
+
+	return 0;
+}
+
+static int stm32_adc_channel_data(struct stm32_adc *adc, int channel,
+				  int *data)
+{
+	struct device_d *dev = &adc->aiodev.dev;
+	int ret;
+	u32 val;
+
+	setbits_le32(adc->regs + STM32H7_ADC_CR, STM32H7_ADSTART);
+	ret = readl_poll_timeout(adc->regs + STM32H7_ADC_ISR, val,
+				 val & STM32H7_EOC, STM32_ADC_TIMEOUT_US);
+	if (ret < 0) {
+		dev_err(dev, "conversion timed out: %d\n", ret);
+		return ret;
+	}
+
+	*data = readl(adc->regs + STM32H7_ADC_DR);
+
+	return 0;
+}
+
+static int stm32_adc_channel_single_shot(struct aiochannel *chan, int *data)
+{
+	struct stm32_adc *adc = container_of(chan->aiodev, struct stm32_adc, aiodev);
+	int ret, index;
+	s64 raw64;
+
+	index = adc->channel_map[chan->index];
+
+	ret = stm32_adc_start_channel(adc, index);
+	if (ret)
+		return ret;
+
+	ret = stm32_adc_channel_data(adc, index, data);
+	if (ret)
+		return ret;
+
+	raw64 = *data;
+	raw64 *= adc->common->vref_uv;
+	*data = div_s64(raw64, adc->data_mask);
+
+	return 0;
+}
+
+static void stm32_adc_smpr_init(struct stm32_adc *adc, int channel, u32 smp_ns)
+{
+	const struct stm32_adc_regs *smpr = &adc->cfg->smp_bits[channel];
+	u32 period_ns, shift = smpr->shift, mask = smpr->mask;
+	unsigned int smp, r = smpr->reg;
+
+	/* Determine sampling time (ADC clock cycles) */
+	period_ns = NSEC_PER_SEC / adc->common->rate;
+	for (smp = 0; smp <= STM32_ADC_MAX_SMP; smp++)
+		if ((period_ns * adc->cfg->smp_cycles[smp]) >= smp_ns)
+			break;
+	if (smp > STM32_ADC_MAX_SMP)
+		smp = STM32_ADC_MAX_SMP;
+
+	/* pre-build sampling time registers (e.g. smpr1, smpr2) */
+	adc->smpr_val[r] = (adc->smpr_val[r] & ~mask) | (smp << shift);
+}
+
+static int stm32_adc_chan_of_init(struct device_d *dev, struct stm32_adc *adc)
+{
+	unsigned int i;
+	int num_channels = 0, num_times = 0;
+	u32 smp = 0xffffffff; /* Set sampling time to max value by default */
+	int ret;
+
+	/* Retrieve single ended channels listed in device tree */
+	of_get_property(dev->device_node, "st,adc-channels", &num_channels);
+	num_channels /= sizeof(__be32);
+
+	if (num_channels > adc->cfg->max_channels) {
+		dev_err(dev, "too many st,adc-channels: %d\n", num_channels);
+		return -EINVAL;
+	}
+
+	/* Optional sample time is provided either for each, or all channels */
+	of_get_property(dev->device_node, "st,min-sample-time-nsecs", &num_times);
+	num_times /= sizeof(__be32);
+	if (num_times > 1 && num_times != num_channels) {
+		dev_err(dev, "Invalid st,min-sample-time-nsecs\n");
+		return -EINVAL;
+	}
+
+	adc->channels = calloc(sizeof(*adc->channels), num_channels);
+	if (!adc->channels)
+		return -ENOMEM;
+
+	adc->aiodev.channels = calloc(sizeof(*adc->aiodev.channels), num_channels);
+	if (!adc->aiodev.channels)
+		return -ENOMEM;
+
+	adc->channel_map = calloc(sizeof(u32), num_channels);
+
+	adc->aiodev.num_channels = num_channels;
+	adc->aiodev.hwdev = dev;
+	adc->aiodev.read = stm32_adc_channel_single_shot;
+
+	for (i = 0; i < num_channels; i++) {
+		u32 chan;
+
+		ret = of_property_read_u32_index(dev->device_node, "st,adc-channels", i, &chan);
+		if (ret)
+			return ret;
+
+		if (chan >= adc->cfg->max_channels) {
+			dev_err(dev, "bad channel %u\n", chan);
+			return -EINVAL;
+		}
+
+		adc->channel_mask |= 1 << chan;
+
+		adc->aiodev.channels[i] = &adc->channels[i];
+		adc->channels[i].unit = "uV";
+		adc->channel_map[i] = chan;
+
+		/*
+		 * Using of_property_read_u32_index(), smp value will only be
+		 * modified if valid u32 value can be decoded. This allows to
+		 * get either no value, 1 shared value for all indexes, or one
+		 * value per channel.
+		 */
+		of_property_read_u32_index(dev->device_node, "st,min-sample-time-nsecs",
+					   i, &smp);
+		/* Prepare sampling time settings */
+		stm32_adc_smpr_init(adc, chan, smp);
+	}
+
+	adc->data_mask = (1 << adc->cfg->num_bits) - 1;
+
+	ret = aiodevice_register(&adc->aiodev);
+	if (ret < 0)
+		dev_err(dev, "Failed to register aiodev\n");
+
+	return ret;
+}
+
+static int stm32_adc_probe(struct device_d *dev)
+{
+	struct stm32_adc_common *common = dev->parent->priv;
+	struct stm32_adc *adc;
+	u32 offset;
+	int ret;
+
+	ret = of_property_read_u32(dev->device_node, "reg", &offset);
+	if (ret) {
+		dev_err(dev, "Can't read reg property\n");
+		return ret;
+	}
+
+	adc = xzalloc(sizeof(*adc));
+
+	adc->regs = common->base + offset;
+	adc->cfg = device_get_match_data(dev);
+	adc->common = common;
+
+	return stm32_adc_chan_of_init(dev, adc);
+}
+
+/*
+ * stm32h7_smp_bits - describe sampling time register index & bit fields
+ * Sorted so it can be indexed by channel number.
+ */
+static const struct stm32_adc_regs stm32h7_smp_bits[] = {
+	/* STM32H7_ADC_SMPR1, smpr[] index, mask, shift for SMP0 to SMP9 */
+	{ 0, GENMASK(2, 0), 0 },
+	{ 0, GENMASK(5, 3), 3 },
+	{ 0, GENMASK(8, 6), 6 },
+	{ 0, GENMASK(11, 9), 9 },
+	{ 0, GENMASK(14, 12), 12 },
+	{ 0, GENMASK(17, 15), 15 },
+	{ 0, GENMASK(20, 18), 18 },
+	{ 0, GENMASK(23, 21), 21 },
+	{ 0, GENMASK(26, 24), 24 },
+	{ 0, GENMASK(29, 27), 27 },
+	/* STM32H7_ADC_SMPR2, smpr[] index, mask, shift for SMP10 to SMP19 */
+	{ 1, GENMASK(2, 0), 0 },
+	{ 1, GENMASK(5, 3), 3 },
+	{ 1, GENMASK(8, 6), 6 },
+	{ 1, GENMASK(11, 9), 9 },
+	{ 1, GENMASK(14, 12), 12 },
+	{ 1, GENMASK(17, 15), 15 },
+	{ 1, GENMASK(20, 18), 18 },
+	{ 1, GENMASK(23, 21), 21 },
+	{ 1, GENMASK(26, 24), 24 },
+	{ 1, GENMASK(29, 27), 27 },
+};
+
+/* STM32H7 programmable sampling time (ADC clock cycles, rounded down) */
+static const unsigned int stm32h7_adc_smp_cycles[STM32_ADC_MAX_SMP + 1] = {
+	1, 2, 8, 16, 32, 64, 387, 810,
+};
+
+static const struct stm32_adc_cfg stm32h7_adc_cfg = {
+	.num_bits = 16,
+	.max_channels = STM32_ADC_CH_MAX,
+	.smp_bits = stm32h7_smp_bits,
+	.smp_cycles = stm32h7_adc_smp_cycles,
+};
+
+
+static const struct stm32_adc_cfg stm32mp1_adc_cfg = {
+	.num_bits = 16,
+	.max_channels = STM32_ADC_CH_MAX,
+	.smp_bits = stm32h7_smp_bits,
+	.smp_cycles = stm32h7_adc_smp_cycles,
+	.has_vregready = true,
+};
+
+static const struct of_device_id qoriq_tmu_match[] = {
+	{ .compatible = "st,stm32h7-adc", .data = &stm32h7_adc_cfg },
+	{ .compatible = "st,stm32mp1-adc", .data = &stm32mp1_adc_cfg },
+	{}
+};
+
+static struct driver_d imx_thermal_driver = {
+	.name		= "stm32-adc",
+	.probe		= stm32_adc_probe,
+	.of_compatible	= DRV_OF_COMPAT(qoriq_tmu_match),
+};
+device_platform_driver(imx_thermal_driver);
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
