Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvr1-0000uY-Ny
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:57:36 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:57:17 +0200
Message-Id: <20200330145717.667403-13-ahmad@a3f.at>
In-Reply-To: <20200330145717.667403-1-ahmad@a3f.at>
References: <20200330145717.667403-1-ahmad@a3f.at>
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
Subject: [PATCH 12/12] PWM: add support for STM32
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

This driver adds support for PWM driver on STM32 platform
based on the Linux v5.4 support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp151.dtsi     |  12 +
 drivers/mfd/Kconfig              |   7 +
 drivers/mfd/Makefile             |   1 +
 drivers/mfd/stm32-timers.c       |  74 ++++++
 drivers/pwm/Kconfig              |   6 +
 drivers/pwm/Makefile             |   1 +
 drivers/pwm/pwm-stm32.c          | 400 +++++++++++++++++++++++++++++++
 include/linux/mfd/stm32-timers.h |  97 ++++++++
 8 files changed, 598 insertions(+)
 create mode 100644 drivers/mfd/stm32-timers.c
 create mode 100644 drivers/pwm/pwm-stm32.c
 create mode 100644 include/linux/mfd/stm32-timers.h

diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
index 2a70a747e76e..a0870c446f45 100644
--- a/arch/arm/dts/stm32mp151.dtsi
+++ b/arch/arm/dts/stm32mp151.dtsi
@@ -21,6 +21,18 @@
 		mmc0 = &sdmmc1;
 		mmc1 = &sdmmc2;
 		mmc2 = &sdmmc3;
+		pwm1 = &{/soc/timer@44000000/pwm};
+		pwm2 = &{/soc/timer@40000000/pwm};
+		pwm3 = &{/soc/timer@40001000/pwm};
+		pwm4 = &{/soc/timer@40002000/pwm};
+		pwm5 = &{/soc/timer@40003000/pwm};
+		pwm8 = &{/soc/timer@44001000/pwm};
+		pwm12 = &{/soc/timer@40006000/pwm};
+		pwm13 = &{/soc/timer@40007000/pwm};
+		pwm14 = &{/soc/timer@40008000/pwm};
+		pwm15 = &{/soc/timer@44006000/pwm};
+		pwm16 = &{/soc/timer@44007000/pwm};
+		pwm17 = &{/soc/timer@44008000/pwm};
 	};
 
 	psci {
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index f4cc71ef0ec8..ddf117712e77 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -82,4 +82,11 @@ config SMSC_SUPERIO
        help
          Select this to probe for IO-port connected SMSC Super I/O chips.
 
+config MFD_STM32_TIMERS
+	bool "STM32 Timers"
+	depends on ARCH_STM32MP
+	help
+	  Select this to get regmap support for the timer blocks on STM32
+	  MCUs and MPUs.
+
 endmenu
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 0c24493e3d86..a3b296a803f8 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -15,3 +15,4 @@ obj-$(CONFIG_MFD_STPMIC1)	+= stpmic1.o
 obj-$(CONFIG_MFD_SUPERIO)	+= superio.o
 obj-$(CONFIG_FINTEK_SUPERIO)	+= fintek-superio.o
 obj-$(CONFIG_SMSC_SUPERIO)	+= smsc-superio.o
+obj-$(CONFIG_MFD_STM32_TIMERS)	+= stm32-timers.o
diff --git a/drivers/mfd/stm32-timers.c b/drivers/mfd/stm32-timers.c
new file mode 100644
index 000000000000..c53a25687e14
--- /dev/null
+++ b/drivers/mfd/stm32-timers.c
@@ -0,0 +1,74 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) STMicroelectronics 2016
+ * Author: Benjamin Gaignard <benjamin.gaignard@st.com>
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <driver.h>
+#include <init.h>
+#include <io.h>
+#include <linux/bitfield.h>
+#include <linux/mfd/stm32-timers.h>
+#include <of.h>
+#include <linux/reset.h>
+
+#define STM32_TIMERS_MAX_REGISTERS	0x3fc
+
+static const struct regmap_config stm32_timers_regmap_cfg = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = sizeof(u32),
+	.max_register = STM32_TIMERS_MAX_REGISTERS,
+};
+
+static void stm32_timers_get_arr_size(struct stm32_timers *ddata)
+{
+	/*
+	 * Only the available bits will be written so when readback
+	 * we get the maximum value of auto reload register
+	 */
+	regmap_write(ddata->regmap, TIM_ARR, ~0L);
+	regmap_read(ddata->regmap, TIM_ARR, &ddata->max_arr);
+	regmap_write(ddata->regmap, TIM_ARR, 0x0);
+}
+
+static int stm32_timers_probe(struct device_d *dev)
+{
+	struct stm32_timers *ddata;
+	struct resource *res;
+
+	ddata = xzalloc(sizeof(*ddata));
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	ddata->regmap = regmap_init_mmio_clk(dev, "int", IOMEM(res->start),
+					     &stm32_timers_regmap_cfg);
+	if (IS_ERR(ddata->regmap))
+		return PTR_ERR(ddata->regmap);
+
+	ddata->clk = clk_get(dev, NULL);
+	if (IS_ERR(ddata->clk))
+		return PTR_ERR(ddata->clk);
+
+	stm32_timers_get_arr_size(ddata);
+
+	dev->priv = ddata;
+
+	return of_platform_populate(dev->device_node, NULL, dev);
+}
+
+static const struct of_device_id stm32_timers_of_match[] = {
+	{ .compatible = "st,stm32-timers", },
+	{ /* sentinel */ },
+};
+
+static struct driver_d stm32_timers_driver = {
+	.name = "stm32-timers",
+	.probe = stm32_timers_probe,
+	.of_compatible = stm32_timers_of_match,
+};
+coredevice_platform_driver(stm32_timers_driver);
diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index 97c3deff107b..9268aac9122a 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -28,4 +28,10 @@ config PWM_MXS
 	help
 	  This enables PWM support for Freescale i.MX23/i.MX28 SoCs
 
+config PWM_STM32
+	bool "STM32 PWM Support"
+	depends on ARCH_STM32MP
+	help
+	  This enables PWM support for STM32 MCUs and MPUs.
+
 endif
diff --git a/drivers/pwm/Makefile b/drivers/pwm/Makefile
index 46865a24eeb4..c0a27becefcd 100644
--- a/drivers/pwm/Makefile
+++ b/drivers/pwm/Makefile
@@ -2,3 +2,4 @@ obj-$(CONFIG_PWM)		+= core.o
 obj-$(CONFIG_PWM_PXA)		+= pxa_pwm.o
 obj-$(CONFIG_PWM_IMX)		+= pwm-imx.o
 obj-$(CONFIG_PWM_MXS)		+= pwm-mxs.o
+obj-$(CONFIG_PWM_STM32)		+= pwm-stm32.o
diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
new file mode 100644
index 000000000000..061644e4d883
--- /dev/null
+++ b/drivers/pwm/pwm-stm32.c
@@ -0,0 +1,400 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2016 STMicroelectronics 2016
+ * Copyright (C) 2020 Pengutronix
+ *
+ * Author: Gerald Baeza <gerald.baeza@st.com>
+ *	   Ahmad Fatoum <a.fatoum@pengutronix.de>
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <driver.h>
+#include <init.h>
+#include <io.h>
+#include <linux/bitfield.h>
+#include <linux/mfd/stm32-timers.h>
+#include <linux/math64.h>
+#include <of.h>
+#include <pwm.h>
+
+#define CCMR_CHANNEL_SHIFT 8
+#define CCMR_CHANNEL_MASK  0xFF
+#define MAX_BREAKINPUT 2
+
+struct stm32_pwm {
+	struct clk *clk;
+	struct regmap *regmap;
+	u32 max_arr;
+	bool have_complementary_output;
+	struct pwm_chip pwms[4];
+};
+
+struct stm32_breakinput {
+	u32 index;
+	u32 level;
+	u32 filter;
+};
+
+#define for_each_stm32_pwm(i, chip, pwm) \
+	for (chip[i = 0] = pwm->pwms[0]; i < 4 && chip->ops; chip = chip[++i])
+
+static inline struct stm32_pwm *to_stm32_pwm_dev(struct pwm_chip *chip)
+{
+	struct pwm_chip (*pwms)[4] = (void *)&chip[-chip->id];
+	return container_of(pwms, struct stm32_pwm, pwms);
+}
+
+static u32 active_channels(struct stm32_pwm *dev)
+{
+	u32 ccer;
+
+	regmap_read(dev->regmap, TIM_CCER, &ccer);
+
+	return ccer & TIM_CCER_CCXE;
+}
+
+static int write_ccrx(struct stm32_pwm *dev, unsigned ch, u32 value)
+{
+	switch (ch) {
+	case 0:
+		return regmap_write(dev->regmap, TIM_CCR1, value);
+	case 1:
+		return regmap_write(dev->regmap, TIM_CCR2, value);
+	case 2:
+		return regmap_write(dev->regmap, TIM_CCR3, value);
+	case 3:
+		return regmap_write(dev->regmap, TIM_CCR4, value);
+	}
+	return -EINVAL;
+}
+
+#define TIM_CCER_CC12P (TIM_CCER_CC1P | TIM_CCER_CC2P)
+#define TIM_CCER_CC12E (TIM_CCER_CC1E | TIM_CCER_CC2E)
+#define TIM_CCER_CC34P (TIM_CCER_CC3P | TIM_CCER_CC4P)
+#define TIM_CCER_CC34E (TIM_CCER_CC3E | TIM_CCER_CC4E)
+
+static int stm32_pwm_set_polarity(struct stm32_pwm *priv, unsigned ch,
+				  unsigned polarity)
+{
+	u32 mask;
+
+	mask = TIM_CCER_CC1P << (ch * 4);
+	if (priv->have_complementary_output)
+		mask |= TIM_CCER_CC1NP << (ch * 4);
+
+	regmap_update_bits(priv->regmap, TIM_CCER, mask,
+			   polarity == PWM_POLARITY_NORMAL ? 0 : mask);
+
+	return 0;
+}
+
+static int stm32_pwm_config(struct stm32_pwm *priv, unsigned ch,
+			    int duty_ns, int period_ns)
+{
+	unsigned long long prd, div, dty;
+	unsigned int prescaler = 0;
+	u32 ccmr, mask, shift;
+
+	/* Period and prescaler values depends on clock rate */
+	div = (unsigned long long)clk_get_rate(priv->clk) * period_ns;
+
+	do_div(div, NSEC_PER_SEC);
+	prd = div;
+
+	while (div > priv->max_arr) {
+		prescaler++;
+		div = prd;
+		do_div(div, prescaler + 1);
+	}
+
+	prd = div;
+
+	if (prescaler > MAX_TIM_PSC)
+		return -EINVAL;
+
+	/*
+	 * All channels share the same prescaler and counter so when two
+	 * channels are active at the same time we can't change them
+	 */
+	if (active_channels(priv) & ~(1 << ch * 4)) {
+		u32 psc, arr;
+
+		regmap_read(priv->regmap, TIM_PSC, &psc);
+		regmap_read(priv->regmap, TIM_ARR, &arr);
+
+		if ((psc != prescaler) || (arr != prd - 1))
+			return -EBUSY;
+	}
+
+	regmap_write(priv->regmap, TIM_PSC, prescaler);
+	regmap_write(priv->regmap, TIM_ARR, prd - 1);
+	regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_ARPE, TIM_CR1_ARPE);
+
+	/* Calculate the duty cycles */
+	dty = prd * duty_ns;
+	do_div(dty, period_ns);
+
+	write_ccrx(priv, ch, dty);
+
+	/* Configure output mode */
+	shift = (ch & 0x1) * CCMR_CHANNEL_SHIFT;
+	ccmr = (TIM_CCMR_PE | TIM_CCMR_M1) << shift;
+	mask = CCMR_CHANNEL_MASK << shift;
+
+	if (ch < 2)
+		regmap_update_bits(priv->regmap, TIM_CCMR1, mask, ccmr);
+	else
+		regmap_update_bits(priv->regmap, TIM_CCMR2, mask, ccmr);
+
+	regmap_update_bits(priv->regmap, TIM_BDTR,
+			   TIM_BDTR_MOE | TIM_BDTR_AOE,
+			   TIM_BDTR_MOE | TIM_BDTR_AOE);
+
+	return 0;
+}
+
+static int stm32_pwm_enable(struct stm32_pwm *priv, unsigned ch)
+{
+	u32 mask;
+	int ret;
+
+	ret = clk_enable(priv->clk);
+	if (ret)
+		return ret;
+
+	/* Enable channel */
+	mask = TIM_CCER_CC1E << (ch * 4);
+	if (priv->have_complementary_output)
+		mask |= TIM_CCER_CC1NE << (ch * 4);
+
+	regmap_update_bits(priv->regmap, TIM_CCER, mask, mask);
+
+	/* Make sure that registers are updated */
+	regmap_update_bits(priv->regmap, TIM_EGR, TIM_EGR_UG, TIM_EGR_UG);
+
+	/* Enable controller */
+	regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, TIM_CR1_CEN);
+
+	return 0;
+}
+
+static void stm32_pwm_disable(struct stm32_pwm *priv, unsigned ch)
+{
+	u32 mask;
+
+	/* Disable channel */
+	mask = TIM_CCER_CC1E << (ch * 4);
+	if (priv->have_complementary_output)
+		mask |= TIM_CCER_CC1NE << (ch * 4);
+
+	regmap_update_bits(priv->regmap, TIM_CCER, mask, 0);
+
+	/* When all channels are disabled, we can disable the controller */
+	if (!active_channels(priv))
+		regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, 0);
+
+	clk_disable(priv->clk);
+}
+
+static int stm32_pwm_apply(struct pwm_chip *chip, const struct pwm_state *state)
+{
+	bool enabled;
+	struct stm32_pwm *priv = to_stm32_pwm_dev(chip);
+	int ret;
+
+	enabled = chip->state.p_enable;
+
+	if (enabled && !state->p_enable) {
+		stm32_pwm_disable(priv, chip->id);
+		return 0;
+	}
+
+	if (state->polarity != chip->state.polarity)
+		stm32_pwm_set_polarity(priv, chip->id, state->polarity);
+
+	ret = stm32_pwm_config(priv, chip->id,
+			       state->duty_ns, state->period_ns);
+	if (ret)
+		return ret;
+
+	if (!enabled && state->p_enable)
+		ret = stm32_pwm_enable(priv, chip->id);
+
+	return ret;
+}
+
+static const struct pwm_ops stm32pwm_ops = {
+	.apply = stm32_pwm_apply,
+};
+
+static int stm32_pwm_set_breakinput(struct stm32_pwm *priv,
+				    int index, int level, int filter)
+{
+	u32 bke = (index == 0) ? TIM_BDTR_BKE : TIM_BDTR_BK2E;
+	int shift = (index == 0) ? TIM_BDTR_BKF_SHIFT : TIM_BDTR_BK2F_SHIFT;
+	u32 mask = (index == 0) ? TIM_BDTR_BKE | TIM_BDTR_BKP | TIM_BDTR_BKF
+				: TIM_BDTR_BK2E | TIM_BDTR_BK2P | TIM_BDTR_BK2F;
+	u32 bdtr = bke;
+
+	/*
+	 * The both bits could be set since only one will be wrote
+	 * due to mask value.
+	 */
+	if (level)
+		bdtr |= TIM_BDTR_BKP | TIM_BDTR_BK2P;
+
+	bdtr |= (filter & TIM_BDTR_BKF_MASK) << shift;
+
+	regmap_update_bits(priv->regmap, TIM_BDTR, mask, bdtr);
+
+	regmap_read(priv->regmap, TIM_BDTR, &bdtr);
+
+	return (bdtr & bke) ? 0 : -EINVAL;
+}
+
+static int stm32_pwm_apply_breakinputs(struct stm32_pwm *priv,
+				       struct device_node *np)
+{
+	struct stm32_breakinput breakinput[MAX_BREAKINPUT];
+	int nb, ret, i, array_size;
+
+	nb = of_property_count_elems_of_size(np, "st,breakinput",
+					     sizeof(struct stm32_breakinput));
+
+	/*
+	 * Because "st,breakinput" parameter is optional do not make probe
+	 * failed if it doesn't exist.
+	 */
+	if (nb <= 0)
+		return 0;
+
+	if (nb > MAX_BREAKINPUT)
+		return -EINVAL;
+
+	array_size = nb * sizeof(struct stm32_breakinput) / sizeof(u32);
+	ret = of_property_read_u32_array(np, "st,breakinput",
+					 (u32 *)breakinput, array_size);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < nb && !ret; i++) {
+		ret = stm32_pwm_set_breakinput(priv,
+					       breakinput[i].index,
+					       breakinput[i].level,
+					       breakinput[i].filter);
+	}
+
+	return ret;
+}
+
+static void stm32_pwm_detect_complementary(struct stm32_pwm *priv)
+{
+	u32 ccer;
+
+	/*
+	 * If complementary bit doesn't exist writing 1 will have no
+	 * effect so we can detect it.
+	 */
+	regmap_update_bits(priv->regmap,
+			   TIM_CCER, TIM_CCER_CC1NE, TIM_CCER_CC1NE);
+	regmap_read(priv->regmap, TIM_CCER, &ccer);
+	regmap_update_bits(priv->regmap, TIM_CCER, TIM_CCER_CC1NE, 0);
+
+	priv->have_complementary_output = (ccer != 0);
+}
+
+static int stm32_pwm_detect_channels(struct stm32_pwm *priv)
+{
+	u32 ccer;
+	int npwm = 0;
+
+	/*
+	 * If channels enable bits don't exist writing 1 will have no
+	 * effect so we can detect and count them.
+	 */
+	regmap_update_bits(priv->regmap,
+			   TIM_CCER, TIM_CCER_CCXE, TIM_CCER_CCXE);
+	regmap_read(priv->regmap, TIM_CCER, &ccer);
+	regmap_update_bits(priv->regmap, TIM_CCER, TIM_CCER_CCXE, 0);
+
+	if (ccer & TIM_CCER_CC1E)
+		npwm++;
+
+	if (ccer & TIM_CCER_CC2E)
+		npwm++;
+
+	if (ccer & TIM_CCER_CC3E)
+		npwm++;
+
+	if (ccer & TIM_CCER_CC4E)
+		npwm++;
+
+	return npwm;
+}
+
+static int id = -1;
+
+static int stm32_pwm_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct stm32_timers *ddata = dev->parent->priv;
+	struct stm32_pwm *priv;
+	const char *alias;
+	int ret, i;
+	int npwms;
+
+	priv = xzalloc(sizeof(*priv));
+	dev->priv = priv;
+
+	priv->regmap = ddata->regmap;
+	priv->clk = ddata->clk;
+	priv->max_arr = ddata->max_arr;
+
+	if (!priv->regmap || !priv->clk)
+		return -EINVAL;
+
+	ret = stm32_pwm_apply_breakinputs(priv, np);
+	if (ret)
+		return ret;
+
+	stm32_pwm_detect_complementary(priv);
+
+	npwms = stm32_pwm_detect_channels(priv);
+
+	alias = of_alias_get(dev->device_node);
+	if (!alias)
+		id++;
+
+	for (i = 0; i < npwms; i++) {
+		struct pwm_chip *chip = &priv->pwms[i];
+
+		if (alias)
+			chip->devname = basprintf("%sch%u", alias, i + 1);
+		else
+			chip->devname = basprintf("pwm%uch%u", id, i + 1);
+
+		chip->ops = &stm32pwm_ops;
+		chip->id = i;
+
+		ret = pwmchip_add(chip, dev);
+		if (ret < 0) {
+			dev_err(dev, "failed to add pwm chip %d\n", ret);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static const struct of_device_id stm32_pwm_of_match[] = {
+	{ .compatible = "st,stm32-pwm",	},
+	{ /* sentinel */ },
+};
+
+static struct driver_d stm32_pwm_driver = {
+	.name = "stm32-pwm",
+	.probe	= stm32_pwm_probe,
+	.of_compatible = stm32_pwm_of_match,
+};
+coredevice_platform_driver(stm32_pwm_driver);
diff --git a/include/linux/mfd/stm32-timers.h b/include/linux/mfd/stm32-timers.h
new file mode 100644
index 000000000000..28fad44598f9
--- /dev/null
+++ b/include/linux/mfd/stm32-timers.h
@@ -0,0 +1,97 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) STMicroelectronics 2016
+ * Author: Benjamin Gaignard <benjamin.gaignard@st.com>
+ */
+
+#ifndef _LINUX_STM32_GPTIMER_H_
+#define _LINUX_STM32_GPTIMER_H_
+
+#include <clock.h>
+#include <regmap.h>
+
+#define TIM_CR1		0x00	/* Control Register 1      */
+#define TIM_CR2		0x04	/* Control Register 2      */
+#define TIM_SMCR	0x08	/* Slave mode control reg  */
+#define TIM_DIER	0x0C	/* DMA/interrupt register  */
+#define TIM_SR		0x10	/* Status register	   */
+#define TIM_EGR		0x14	/* Event Generation Reg    */
+#define TIM_CCMR1	0x18	/* Capt/Comp 1 Mode Reg    */
+#define TIM_CCMR2	0x1C	/* Capt/Comp 2 Mode Reg    */
+#define TIM_CCER	0x20	/* Capt/Comp Enable Reg    */
+#define TIM_CNT		0x24	/* Counter		   */
+#define TIM_PSC		0x28	/* Prescaler               */
+#define TIM_ARR		0x2c	/* Auto-Reload Register    */
+#define TIM_CCR1	0x34	/* Capt/Comp Register 1    */
+#define TIM_CCR2	0x38	/* Capt/Comp Register 2    */
+#define TIM_CCR3	0x3C	/* Capt/Comp Register 3    */
+#define TIM_CCR4	0x40	/* Capt/Comp Register 4    */
+#define TIM_BDTR	0x44	/* Break and Dead-Time Reg */
+#define TIM_DCR		0x48	/* DMA control register    */
+#define TIM_DMAR	0x4C	/* DMA register for transfer */
+
+#define TIM_CR1_CEN	BIT(0)	/* Counter Enable	   */
+#define TIM_CR1_DIR	BIT(4)  /* Counter Direction	   */
+#define TIM_CR1_ARPE	BIT(7)	/* Auto-reload Preload Ena */
+#define TIM_CR2_MMS	(BIT(4) | BIT(5) | BIT(6)) /* Master mode selection */
+#define TIM_CR2_MMS2	GENMASK(23, 20) /* Master mode selection 2 */
+#define TIM_SMCR_SMS	(BIT(0) | BIT(1) | BIT(2)) /* Slave mode selection */
+#define TIM_SMCR_TS	(BIT(4) | BIT(5) | BIT(6)) /* Trigger selection */
+#define TIM_DIER_UIE	BIT(0)	/* Update interrupt	   */
+#define TIM_DIER_UDE	BIT(8)  /* Update DMA request Enable */
+#define TIM_DIER_CC1DE	BIT(9)  /* CC1 DMA request Enable  */
+#define TIM_DIER_CC2DE	BIT(10) /* CC2 DMA request Enable  */
+#define TIM_DIER_CC3DE	BIT(11) /* CC3 DMA request Enable  */
+#define TIM_DIER_CC4DE	BIT(12) /* CC4 DMA request Enable  */
+#define TIM_DIER_COMDE	BIT(13) /* COM DMA request Enable  */
+#define TIM_DIER_TDE	BIT(14) /* Trigger DMA request Enable */
+#define TIM_SR_UIF	BIT(0)	/* Update interrupt flag   */
+#define TIM_EGR_UG	BIT(0)	/* Update Generation       */
+#define TIM_CCMR_PE	BIT(3)	/* Channel Preload Enable  */
+#define TIM_CCMR_M1	(BIT(6) | BIT(5))  /* Channel PWM Mode 1 */
+#define TIM_CCMR_CC1S		(BIT(0) | BIT(1)) /* Capture/compare 1 sel */
+#define TIM_CCMR_IC1PSC		GENMASK(3, 2)	/* Input capture 1 prescaler */
+#define TIM_CCMR_CC2S		(BIT(8) | BIT(9)) /* Capture/compare 2 sel */
+#define TIM_CCMR_IC2PSC		GENMASK(11, 10)	/* Input capture 2 prescaler */
+#define TIM_CCMR_CC1S_TI1	BIT(0)	/* IC1/IC3 selects TI1/TI3 */
+#define TIM_CCMR_CC1S_TI2	BIT(1)	/* IC1/IC3 selects TI2/TI4 */
+#define TIM_CCMR_CC2S_TI2	BIT(8)	/* IC2/IC4 selects TI2/TI4 */
+#define TIM_CCMR_CC2S_TI1	BIT(9)	/* IC2/IC4 selects TI1/TI3 */
+#define TIM_CCER_CC1E	BIT(0)	/* Capt/Comp 1  out Ena    */
+#define TIM_CCER_CC1P	BIT(1)	/* Capt/Comp 1  Polarity   */
+#define TIM_CCER_CC1NE	BIT(2)	/* Capt/Comp 1N out Ena    */
+#define TIM_CCER_CC1NP	BIT(3)	/* Capt/Comp 1N Polarity   */
+#define TIM_CCER_CC2E	BIT(4)	/* Capt/Comp 2  out Ena    */
+#define TIM_CCER_CC2P	BIT(5)	/* Capt/Comp 2  Polarity   */
+#define TIM_CCER_CC3E	BIT(8)	/* Capt/Comp 3  out Ena    */
+#define TIM_CCER_CC3P	BIT(9)	/* Capt/Comp 3  Polarity   */
+#define TIM_CCER_CC4E	BIT(12)	/* Capt/Comp 4  out Ena    */
+#define TIM_CCER_CC4P	BIT(13)	/* Capt/Comp 4  Polarity   */
+#define TIM_CCER_CCXE	(BIT(0) | BIT(4) | BIT(8) | BIT(12))
+#define TIM_BDTR_BKE	BIT(12) /* Break input enable	   */
+#define TIM_BDTR_BKP	BIT(13) /* Break input polarity	   */
+#define TIM_BDTR_AOE	BIT(14)	/* Automatic Output Enable */
+#define TIM_BDTR_MOE	BIT(15)	/* Main Output Enable      */
+#define TIM_BDTR_BKF	(BIT(16) | BIT(17) | BIT(18) | BIT(19))
+#define TIM_BDTR_BK2F	(BIT(20) | BIT(21) | BIT(22) | BIT(23))
+#define TIM_BDTR_BK2E	BIT(24) /* Break 2 input enable	   */
+#define TIM_BDTR_BK2P	BIT(25) /* Break 2 input polarity  */
+#define TIM_DCR_DBA	GENMASK(4, 0)	/* DMA base addr */
+#define TIM_DCR_DBL	GENMASK(12, 8)	/* DMA burst len */
+
+#define MAX_TIM_PSC		0xFFFF
+#define MAX_TIM_ICPSC		0x3
+#define TIM_CR2_MMS_SHIFT	4
+#define TIM_CR2_MMS2_SHIFT	20
+#define TIM_SMCR_TS_SHIFT	4
+#define TIM_BDTR_BKF_MASK	0xF
+#define TIM_BDTR_BKF_SHIFT	16
+#define TIM_BDTR_BK2F_SHIFT	20
+
+struct stm32_timers {
+	struct clk *clk;
+	struct regmap *regmap;
+	u32 max_arr;
+};
+
+#endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
