Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22f.google.com ([2a00:1450:400c:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzO9B-0007PC-B6
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 10:40:24 +0000
Received: by mail-we0-f175.google.com with SMTP id k48so122253wev.34
 for <barebox@lists.infradead.org>; Tue, 24 Jun 2014 03:39:53 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 24 Jun 2014 12:39:39 +0200
Message-Id: <1403606379-29608-1-git-send-email-sebastian.hesselbarth@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] pinctrl: mvebu: add pinctrl drivers for Dove and Kirkwood
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This adds pinctrl drivers for Marvell Dove and Kirkwood SoCs based
on a common driver stub. This design is based on the corresponding
Linux driver and should ease additional drivers for Marvell Armada
SoCs.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/Kconfig      |   2 +
 drivers/pinctrl/Kconfig          |   2 +
 drivers/pinctrl/Makefile         |   2 +
 drivers/pinctrl/mvebu/Kconfig    |   8 +
 drivers/pinctrl/mvebu/Makefile   |   3 +
 drivers/pinctrl/mvebu/common.c   | 115 ++++++
 drivers/pinctrl/mvebu/common.h   | 146 ++++++++
 drivers/pinctrl/mvebu/dove.c     | 738 +++++++++++++++++++++++++++++++++++++++
 drivers/pinctrl/mvebu/kirkwood.c | 454 ++++++++++++++++++++++++
 9 files changed, 1470 insertions(+)
 create mode 100644 drivers/pinctrl/mvebu/Kconfig
 create mode 100644 drivers/pinctrl/mvebu/Makefile
 create mode 100644 drivers/pinctrl/mvebu/common.c
 create mode 100644 drivers/pinctrl/mvebu/common.h
 create mode 100644 drivers/pinctrl/mvebu/dove.c
 create mode 100644 drivers/pinctrl/mvebu/kirkwood.c

diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 9b790a3a908f..18f61f74f968 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -24,11 +24,13 @@ config ARCH_DOVE
 	bool "Dove 88AP510"
 	select CPU_V7
 	select CLOCKSOURCE_ORION
+	select PINCTRL_DOVE
 
 config ARCH_KIRKWOOD
 	bool "Kirkwood"
 	select CPU_FEROCEON
 	select CLOCKSOURCE_ORION
+	select PINCTRL_KIRKWOOD
 
 endchoice
 
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 421525b30604..dffaa4eeb715 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -46,3 +46,5 @@ config PINCTRL_TEGRA30
 	bool
 	help
 	  The pinmux controller found on the Tegra 30+ line of SoCs.
+
+source drivers/pinctrl/mvebu/Kconfig
diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
index 3978c5692ff3..566ba111d737 100644
--- a/drivers/pinctrl/Makefile
+++ b/drivers/pinctrl/Makefile
@@ -6,3 +6,5 @@ obj-$(CONFIG_PINCTRL_ROCKCHIP) += pinctrl-rockchip.o
 obj-$(CONFIG_PINCTRL_SINGLE) += pinctrl-single.o
 obj-$(CONFIG_PINCTRL_TEGRA20) += pinctrl-tegra20.o
 obj-$(CONFIG_PINCTRL_TEGRA30) += pinctrl-tegra30.o
+
+obj-$(CONFIG_ARCH_MVEBU) += mvebu/
diff --git a/drivers/pinctrl/mvebu/Kconfig b/drivers/pinctrl/mvebu/Kconfig
new file mode 100644
index 000000000000..af20c07d095a
--- /dev/null
+++ b/drivers/pinctrl/mvebu/Kconfig
@@ -0,0 +1,8 @@
+config PINCTRL_DOVE
+	bool
+	select PINCTRL
+	select MFD_SYSCON
+
+config PINCTRL_KIRKWOOD
+	bool
+	select PINCTRL
diff --git a/drivers/pinctrl/mvebu/Makefile b/drivers/pinctrl/mvebu/Makefile
new file mode 100644
index 000000000000..05f320d5a3f2
--- /dev/null
+++ b/drivers/pinctrl/mvebu/Makefile
@@ -0,0 +1,3 @@
+obj-y				+= common.o
+obj-$(CONFIG_ARCH_DOVE)		+= dove.o
+obj-$(CONFIG_ARCH_KIRKWOOD)	+= kirkwood.o
diff --git a/drivers/pinctrl/mvebu/common.c b/drivers/pinctrl/mvebu/common.c
new file mode 100644
index 000000000000..532705286795
--- /dev/null
+++ b/drivers/pinctrl/mvebu/common.c
@@ -0,0 +1,115 @@
+/*
+ * Marvell MVEBU pinctrl core driver
+ *
+ * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <of.h>
+#include <pinctrl.h>
+
+#include "common.h"
+
+struct mvebu_pinctrl {
+	struct mvebu_pinctrl_soc_info *soc;
+	struct pinctrl_device pinctrl;
+};
+
+static struct mvebu_mpp_mode *mvebu_pinctrl_find_mode_by_name(
+	struct mvebu_pinctrl *pctl, const char *name)
+{
+	unsigned n;
+	for (n = 0; n < pctl->soc->nmodes; n++) {
+		if (strcmp(name, pctl->soc->modes[n].name) == 0)
+			return &pctl->soc->modes[n];
+	}
+	return NULL;
+}
+
+static struct mvebu_mpp_ctrl_setting *mvebu_pinctrl_find_setting_by_name(
+	struct mvebu_pinctrl *pctl, struct mvebu_mpp_mode *mode,
+	const char *name)
+{
+	struct mvebu_mpp_ctrl_setting *setting = mode->settings;
+
+	while (setting->name) {
+		if (strcmp(name, setting->name) == 0) {
+			if (!pctl->soc->variant ||
+			    (pctl->soc->variant & setting->variant))
+				return setting;
+		}
+		setting++;
+	}
+	return NULL;
+}
+
+static int mvebu_pinctrl_set_state(struct pinctrl_device *pdev,
+				   struct device_node *np)
+{
+	struct mvebu_pinctrl *pctl =
+		container_of(pdev, struct mvebu_pinctrl, pinctrl);
+	struct property *prop;
+	const char *function;
+	const char *group;
+	int ret;
+
+	ret = of_property_read_string(np, "marvell,function", &function);
+	if (ret) {
+		dev_err(pdev->dev, "missing marvell,function in node %s\n",
+			np->full_name);
+		return -EINVAL;
+	}
+
+	of_property_for_each_string(np, "marvell,pins", prop, group) {
+		struct mvebu_mpp_mode *mode =
+			mvebu_pinctrl_find_mode_by_name(pctl, group);
+		struct mvebu_mpp_ctrl_setting *set;
+
+		if (!mode) {
+			dev_err(pdev->dev, "unknown pin group %s", group);
+			continue;
+		}
+
+		set = mvebu_pinctrl_find_setting_by_name(pctl, mode, function);
+		if (!set) {
+			dev_err(pdev->dev, "unsupported function %s on pin %s",
+				function, group);
+			continue;
+		}
+
+		dev_dbg(pdev->dev, "np = %s, mode = %s, setting = %s (%s)\n",
+			np->name, mode->name, set->name, set->subname);
+
+		mode->mpp_set(mode->pid, set->val);
+	}
+
+	return 0;
+}
+
+static struct pinctrl_ops mvebu_pinctrl_ops = {
+	.set_state = mvebu_pinctrl_set_state,
+};
+
+int mvebu_pinctrl_probe(struct device_d *dev,
+			struct mvebu_pinctrl_soc_info *soc)
+{
+	struct mvebu_pinctrl *pctl;
+	int ret;
+
+	pctl = xzalloc(sizeof(*pctl));
+	pctl->soc = soc;
+	pctl->pinctrl.dev = dev;
+	pctl->pinctrl.ops = &mvebu_pinctrl_ops;
+
+	ret = pinctrl_register(&pctl->pinctrl);
+	if (ret)
+		free(pctl);
+
+	return ret;
+}
diff --git a/drivers/pinctrl/mvebu/common.h b/drivers/pinctrl/mvebu/common.h
new file mode 100644
index 000000000000..8b3c74852de9
--- /dev/null
+++ b/drivers/pinctrl/mvebu/common.h
@@ -0,0 +1,146 @@
+/*
+ * Marvell MVEBU pinctrl driver
+ *
+ * Authors: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *          Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef __PINCTRL_MVEBU_H__
+#define __PINCTRL_MVEBU_H__
+
+#include <io.h>
+
+/**
+ * struct mvebu_mpp_ctrl_setting - describe a mpp ctrl setting
+ * @val: ctrl setting value
+ * @name: ctrl setting name, e.g. uart2, spi0 - unique per mpp_mode
+ * @subname: (optional) additional ctrl setting name, e.g. rts, cts
+ * @variant: (optional) variant identifier mask
+ * @flags: (private) flags to store gpi/gpo/gpio capabilities
+ *
+ * A ctrl_setting describes a specific internal mux function that a mpp pin
+ * can be switched to. The value (val) will be written in the corresponding
+ * register for common mpp pin configuration registers on MVEBU. SoC specific
+ * mpp_get/_set function may use val to distinguish between different settings.
+ *
+ * The name will be used to switch to this setting in DT description, e.g.
+ * marvell,function = "uart2". subname is only for debugging purposes.
+ *
+ * If name is one of "gpi", "gpo", "gpio" gpio capabilities are
+ * parsed during initialization and stored in flags.
+ *
+ * The variant can be used to combine different revisions of one SoC to a
+ * common pinctrl driver. It is matched (AND) with variant of soc_info to
+ * determine if a setting is available on the current SoC revision.
+ */
+struct mvebu_mpp_ctrl_setting {
+	u8 val;
+	const char *name;
+	const char *subname;
+	u8 variant;
+	u8 flags;
+#define  MVEBU_SETTING_GPO	(1 << 0)
+#define  MVEBU_SETTING_GPI	(1 << 1)
+};
+
+/**
+ * struct mvebu_mpp_mode - link ctrl and settings
+ * @pid: first pin id handled by this mode
+ * @name: name of the mpp group
+ * @mpp_get: function to get mpp setting
+ * @mpp_set: function to set mpp setting
+ * @settings: list of settings available for this mode
+ *
+ * A mode connects all available settings with the corresponding mpp_ctrl
+ * given by pid.
+ */
+struct mvebu_mpp_mode {
+	u8 pid;
+	const char *name;
+	int (*mpp_get)(unsigned pid, unsigned long *config);
+	int (*mpp_set)(unsigned pid, unsigned long config);
+	struct mvebu_mpp_ctrl_setting *settings;
+};
+
+/**
+ * struct mvebu_pinctrl_soc_info - SoC specific info passed to pinctrl-mvebu
+ * @variant: variant mask of soc_info
+ * @controls: list of available mvebu_mpp_ctrls
+ * @ncontrols: number of available mvebu_mpp_ctrls
+ * @modes: list of available mvebu_mpp_modes
+ * @nmodes: number of available mvebu_mpp_modes
+ * @gpioranges: list of pinctrl_gpio_ranges
+ * @ngpioranges: number of available pinctrl_gpio_ranges
+ *
+ * This struct describes all pinctrl related information for a specific SoC.
+ * If variant is unequal 0 it will be matched (AND) with variant of each
+ * setting and allows to distinguish between different revisions of one SoC.
+ */
+struct mvebu_pinctrl_soc_info {
+	u8 variant;
+	struct mvebu_mpp_mode *modes;
+	int nmodes;
+};
+
+#define _MPP_VAR_FUNCTION(_val, _name, _subname, _mask)		\
+	{							\
+		.val = _val,					\
+		.name = _name,					\
+		.subname = _subname,				\
+		.variant = _mask,				\
+		.flags = 0,					\
+	}
+
+#define MPP_VAR_FUNCTION(_val, _name, _subname, _mask)		\
+	_MPP_VAR_FUNCTION(_val, _name, _subname, _mask)
+
+#define MPP_FUNCTION(_val, _name, _subname)			\
+	MPP_VAR_FUNCTION(_val, _name, _subname, (u8)-1)
+
+#define MPP_MODE(_id, _name, _func, ...)			\
+	{							\
+		.pid = _id,					\
+		.name = _name,					\
+		.mpp_get = _func ## _get,			\
+		.mpp_set = _func ## _set,			\
+		.settings = (struct mvebu_mpp_ctrl_setting[]){	\
+			__VA_ARGS__, { } },			\
+	}
+
+#define MVEBU_MPPS_PER_REG	8
+#define MVEBU_MPP_BITS		4
+#define MVEBU_MPP_MASK		0xf
+
+static inline int default_mpp_ctrl_get(void __iomem *base, unsigned int pid,
+				       unsigned long *config)
+{
+	unsigned off = (pid / MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;
+	unsigned shift = (pid % MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;
+
+	*config = (readl(base + off) >> shift) & MVEBU_MPP_MASK;
+
+	return 0;
+}
+
+static inline int default_mpp_ctrl_set(void __iomem *base, unsigned int pid,
+				       unsigned long config)
+{
+	unsigned off = (pid / MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;
+	unsigned shift = (pid % MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;
+	unsigned long reg;
+
+	reg = readl(base + off) & ~(MVEBU_MPP_MASK << shift);
+	writel(reg | (config << shift), base + off);
+
+	return 0;
+}
+
+int mvebu_pinctrl_probe(struct device_d *dev,
+			struct mvebu_pinctrl_soc_info *soc);
+
+#endif
diff --git a/drivers/pinctrl/mvebu/dove.c b/drivers/pinctrl/mvebu/dove.c
new file mode 100644
index 000000000000..3e8e6db152a1
--- /dev/null
+++ b/drivers/pinctrl/mvebu/dove.c
@@ -0,0 +1,738 @@
+/*
+ * Marvell Dove pinctrl driver based on mvebu pinctrl core
+ *
+ * Author: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/clk.h>
+#include <malloc.h>
+#include <mfd/syscon.h>
+#include <of.h>
+#include <of_address.h>
+#include <sizes.h>
+
+#include "common.h"
+
+/* Internal registers can be configured at any 1 MiB aligned address */
+#define INT_REGS_MASK		(SZ_1M - 1)
+#define PMU_REGS_OFFS		0xd802c
+
+/* MPP Base registers */
+#define PMU_MPP_GENERAL_CTRL	0x10
+#define  AU0_AC97_SEL		BIT(16)
+
+/* MPP Control 4 register */
+#define SPI_GPIO_SEL		BIT(5)
+#define UART1_GPIO_SEL		BIT(4)
+#define AU1_GPIO_SEL		BIT(3)
+#define CAM_GPIO_SEL		BIT(2)
+#define SD1_GPIO_SEL		BIT(1)
+#define SD0_GPIO_SEL		BIT(0)
+
+/* PMU Signal Select registers */
+#define PMU_SIGNAL_SELECT_0	0x00
+#define PMU_SIGNAL_SELECT_1	0x04
+
+/* Global Config regmap registers */
+#define GLOBAL_CONFIG_1		0x00
+#define  TWSI_ENABLE_OPTION1	BIT(7)
+#define GLOBAL_CONFIG_2		0x04
+#define  TWSI_ENABLE_OPTION2	BIT(20)
+#define  TWSI_ENABLE_OPTION3	BIT(21)
+#define  TWSI_OPTION3_GPIO	BIT(22)
+#define SSP_CTRL_STATUS_1	0x08
+#define  SSP_ON_AU1		BIT(0)
+#define MPP_GENERAL_CONFIG	0x10
+#define  AU1_SPDIFO_GPIO_EN	BIT(1)
+#define  NAND_GPIO_EN		BIT(0)
+
+#define CONFIG_PMU	BIT(4)
+
+static void __iomem *mpp_base;
+static void __iomem *mpp4_base;
+static void __iomem *pmu_base;
+static void __iomem *gconf_base;
+
+static int dove_mpp_ctrl_get(unsigned pid, unsigned long *config)
+{
+	return default_mpp_ctrl_get(mpp_base, pid, config);
+}
+
+static int dove_mpp_ctrl_set(unsigned pid, unsigned long config)
+{
+	return default_mpp_ctrl_set(mpp_base, pid, config);
+}
+
+static int dove_pmu_mpp_ctrl_get(unsigned pid, unsigned long *config)
+{
+	unsigned off = (pid / MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;
+	unsigned shift = (pid % MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;
+	unsigned long pmu = readl(mpp_base + PMU_MPP_GENERAL_CTRL);
+	unsigned long func;
+
+	if ((pmu & BIT(pid)) == 0)
+		return default_mpp_ctrl_get(mpp_base, pid, config);
+
+	func = readl(pmu_base + PMU_SIGNAL_SELECT_0 + off);
+	*config = (func >> shift) & MVEBU_MPP_MASK;
+	*config |= CONFIG_PMU;
+
+	return 0;
+}
+
+static int dove_pmu_mpp_ctrl_set(unsigned pid, unsigned long config)
+{
+	unsigned off = (pid / MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;
+	unsigned shift = (pid % MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;
+	unsigned long pmu = readl(mpp_base + PMU_MPP_GENERAL_CTRL);
+	unsigned long func;
+
+	if ((config & CONFIG_PMU) == 0) {
+		writel(pmu & ~BIT(pid), mpp_base + PMU_MPP_GENERAL_CTRL);
+		return default_mpp_ctrl_set(mpp_base, pid, config);
+	}
+
+	writel(pmu | BIT(pid), mpp_base + PMU_MPP_GENERAL_CTRL);
+	func = readl(pmu_base + PMU_SIGNAL_SELECT_0 + off);
+	func &= ~(MVEBU_MPP_MASK << shift);
+	func |= (config & MVEBU_MPP_MASK) << shift;
+	writel(func, pmu_base + PMU_SIGNAL_SELECT_0 + off);
+
+	return 0;
+}
+
+static int dove_mpp4_ctrl_get(unsigned pid, unsigned long *config)
+{
+	unsigned long mpp4 = readl(mpp4_base);
+	unsigned long mask;
+
+	switch (pid) {
+	case 24: /* mpp_camera */
+		mask = CAM_GPIO_SEL;
+		break;
+	case 40: /* mpp_sdio0 */
+		mask = SD0_GPIO_SEL;
+		break;
+	case 46: /* mpp_sdio1 */
+		mask = SD1_GPIO_SEL;
+		break;
+	case 58: /* mpp_spi0 */
+		mask = SPI_GPIO_SEL;
+		break;
+	case 62: /* mpp_uart1 */
+		mask = UART1_GPIO_SEL;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	*config = ((mpp4 & mask) != 0);
+
+	return 0;
+}
+
+static int dove_mpp4_ctrl_set(unsigned pid, unsigned long config)
+{
+	unsigned long mpp4 = readl(mpp4_base);
+	unsigned long mask;
+
+	switch (pid) {
+	case 24: /* mpp_camera */
+		mask = CAM_GPIO_SEL;
+		break;
+	case 40: /* mpp_sdio0 */
+		mask = SD0_GPIO_SEL;
+		break;
+	case 46: /* mpp_sdio1 */
+		mask = SD1_GPIO_SEL;
+		break;
+	case 58: /* mpp_spi0 */
+		mask = SPI_GPIO_SEL;
+		break;
+	case 62: /* mpp_uart1 */
+		mask = UART1_GPIO_SEL;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	mpp4 &= ~mask;
+	if (config)
+		mpp4 |= mask;
+
+	writel(mpp4, mpp4_base);
+
+	return 0;
+}
+
+static int dove_nand_ctrl_get(unsigned pid, unsigned long *config)
+{
+	unsigned int gmpp;
+
+	gmpp = readl(gconf_base + MPP_GENERAL_CONFIG);
+	*config = ((gmpp & NAND_GPIO_EN) != 0);
+
+	return 0;
+}
+
+static int dove_nand_ctrl_set(unsigned pid, unsigned long config)
+{
+	unsigned int gmpp;
+
+	gmpp = readl(gconf_base + MPP_GENERAL_CONFIG);
+	gmpp &= ~NAND_GPIO_EN;
+	if (config)
+		gmpp |= NAND_GPIO_EN;
+	writel(gmpp, gconf_base + MPP_GENERAL_CONFIG);
+
+	return 0;
+}
+
+static int dove_audio0_ctrl_get(unsigned pid, unsigned long *config)
+{
+	unsigned long pmu = readl(mpp_base + PMU_MPP_GENERAL_CTRL);
+
+	*config = ((pmu & AU0_AC97_SEL) != 0);
+
+	return 0;
+}
+
+static int dove_audio0_ctrl_set(unsigned pid, unsigned long config)
+{
+	unsigned long pmu = readl(mpp_base + PMU_MPP_GENERAL_CTRL);
+
+	pmu &= ~AU0_AC97_SEL;
+	if (config)
+		pmu |= AU0_AC97_SEL;
+	writel(pmu, mpp_base + PMU_MPP_GENERAL_CTRL);
+
+	return 0;
+}
+
+static int dove_audio1_ctrl_get(unsigned pid, unsigned long *config)
+{
+	unsigned int mpp4 = readl(mpp4_base);
+	unsigned int sspc1;
+	unsigned int gmpp;
+	unsigned int gcfg2;
+
+	sspc1 = readl(gconf_base + SSP_CTRL_STATUS_1);
+	gmpp = readl(gconf_base + MPP_GENERAL_CONFIG);
+	gcfg2 = readl(gconf_base + GLOBAL_CONFIG_2);
+
+	*config = 0;
+	if (mpp4 & AU1_GPIO_SEL)
+		*config |= BIT(3);
+	if (sspc1 & SSP_ON_AU1)
+		*config |= BIT(2);
+	if (gmpp & AU1_SPDIFO_GPIO_EN)
+		*config |= BIT(1);
+	if (gcfg2 & TWSI_OPTION3_GPIO)
+		*config |= BIT(0);
+
+	/* SSP/TWSI only if I2S1 not set*/
+	if ((*config & BIT(3)) == 0)
+		*config &= ~(BIT(2) | BIT(0));
+	/* TWSI only if SPDIFO not set*/
+	if ((*config & BIT(1)) == 0)
+		*config &= ~BIT(0);
+
+	return 0;
+}
+
+static int dove_audio1_ctrl_set(unsigned pid, unsigned long config)
+{
+	unsigned int reg = readl(mpp4_base);
+
+	reg &= ~AU1_GPIO_SEL;
+	if (config & BIT(3))
+		reg |= AU1_GPIO_SEL;
+	writel(reg, mpp4_base);
+
+	reg = readl(gconf_base + SSP_CTRL_STATUS_1);
+	reg &= ~SSP_ON_AU1;
+	if (config & BIT(2))
+		reg |= SSP_ON_AU1;
+
+	reg = readl(gconf_base + MPP_GENERAL_CONFIG);
+	reg &= ~AU1_SPDIFO_GPIO_EN;
+	if (config & BIT(1))
+		reg |= AU1_SPDIFO_GPIO_EN;
+
+	reg = readl(gconf_base + GLOBAL_CONFIG_2);
+	reg &= ~TWSI_OPTION3_GPIO;
+	if (config & BIT(0))
+		reg |= TWSI_OPTION3_GPIO;
+
+	return 0;
+}
+
+static int dove_twsi_ctrl_get(unsigned pid, unsigned long *config)
+{
+	unsigned int gcfg1 = readl(gconf_base + GLOBAL_CONFIG_1);
+	unsigned int gcfg2 = readl(gconf_base + GLOBAL_CONFIG_2);
+
+	*config = 0;
+	if (gcfg1 & TWSI_ENABLE_OPTION1)
+		*config = 1;
+	else if (gcfg2 & TWSI_ENABLE_OPTION2)
+		*config = 2;
+	else if (gcfg2 & TWSI_ENABLE_OPTION3)
+		*config = 3;
+
+	return 0;
+}
+
+static int dove_twsi_ctrl_set(unsigned pid, unsigned long config)
+{
+	unsigned int gcfg1 = readl(gconf_base + GLOBAL_CONFIG_1);
+	unsigned int gcfg2 = readl(gconf_base + GLOBAL_CONFIG_2);
+
+	gcfg1 &= ~TWSI_ENABLE_OPTION1;
+	gcfg2 &= ~(TWSI_ENABLE_OPTION2 | TWSI_ENABLE_OPTION3);
+
+	switch (config) {
+	case 1:
+		gcfg1 = TWSI_ENABLE_OPTION1;
+		break;
+	case 2:
+		gcfg2 = TWSI_ENABLE_OPTION2;
+		break;
+	case 3:
+		gcfg2 = TWSI_ENABLE_OPTION3;
+		break;
+	}
+
+	writel(gcfg1, gconf_base + GLOBAL_CONFIG_1);
+	writel(gcfg2, gconf_base + GLOBAL_CONFIG_2);
+
+	return 0;
+}
+
+static struct mvebu_mpp_mode dove_mpp_modes[] = {
+	MPP_MODE(0, "mpp0", dove_pmu_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x02, "uart2", "rts"),
+		MPP_FUNCTION(0x03, "sdio0", "cd"),
+		MPP_FUNCTION(0x0f, "lcd0", "pwm"),
+		MPP_FUNCTION(CONFIG_PMU | 0x0, "pmu-nc", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x1, "pmu-low", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x2, "pmu-high", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x3, "pmic", "sdi"),
+		MPP_FUNCTION(CONFIG_PMU | 0x4, "cpu-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x5, "standby-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x8, "core-pwr-good", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xa, "bat-fault", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xb, "ext0-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xc, "ext1-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xd, "ext2-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xe, "pmu-blink", NULL)),
+	MPP_MODE(1, "mpp1", dove_pmu_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x02, "uart2", "cts"),
+		MPP_FUNCTION(0x03, "sdio0", "wp"),
+		MPP_FUNCTION(0x0f, "lcd1", "pwm"),
+		MPP_FUNCTION(CONFIG_PMU | 0x0, "pmu-nc", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x1, "pmu-low", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x2, "pmu-high", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x3, "pmic", "sdi"),
+		MPP_FUNCTION(CONFIG_PMU | 0x4, "cpu-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x5, "standby-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x8, "core-pwr-good", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xa, "bat-fault", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xb, "ext0-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xc, "ext1-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xd, "ext2-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xe, "pmu-blink", NULL)),
+	MPP_MODE(2, "mpp2", dove_pmu_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x01, "sata", "prsnt"),
+		MPP_FUNCTION(0x02, "uart2", "txd"),
+		MPP_FUNCTION(0x03, "sdio0", "buspwr"),
+		MPP_FUNCTION(0x04, "uart1", "rts"),
+		MPP_FUNCTION(CONFIG_PMU | 0x0, "pmu-nc", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x1, "pmu-low", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x2, "pmu-high", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x3, "pmic", "sdi"),
+		MPP_FUNCTION(CONFIG_PMU | 0x4, "cpu-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x5, "standby-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x8, "core-pwr-good", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xa, "bat-fault", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xb, "ext0-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xc, "ext1-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xd, "ext2-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xe, "pmu-blink", NULL)),
+	MPP_MODE(3, "mpp3", dove_pmu_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x01, "sata", "act"),
+		MPP_FUNCTION(0x02, "uart2", "rxd"),
+		MPP_FUNCTION(0x03, "sdio0", "ledctrl"),
+		MPP_FUNCTION(0x04, "uart1", "cts"),
+		MPP_FUNCTION(0x0f, "lcd-spi", "cs1"),
+		MPP_FUNCTION(CONFIG_PMU | 0x0, "pmu-nc", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x1, "pmu-low", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x2, "pmu-high", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x3, "pmic", "sdi"),
+		MPP_FUNCTION(CONFIG_PMU | 0x4, "cpu-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x5, "standby-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x8, "core-pwr-good", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xa, "bat-fault", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xb, "ext0-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xc, "ext1-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xd, "ext2-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xe, "pmu-blink", NULL)),
+	MPP_MODE(4, "mpp4", dove_pmu_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x02, "uart3", "rts"),
+		MPP_FUNCTION(0x03, "sdio1", "cd"),
+		MPP_FUNCTION(0x04, "spi1", "miso"),
+		MPP_FUNCTION(CONFIG_PMU | 0x0, "pmu-nc", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x1, "pmu-low", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x2, "pmu-high", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x3, "pmic", "sdi"),
+		MPP_FUNCTION(CONFIG_PMU | 0x4, "cpu-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x5, "standby-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x8, "core-pwr-good", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xa, "bat-fault", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xb, "ext0-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xc, "ext1-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xd, "ext2-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xe, "pmu-blink", NULL)),
+	MPP_MODE(5, "mpp5", dove_pmu_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x02, "uart3", "cts"),
+		MPP_FUNCTION(0x03, "sdio1", "wp"),
+		MPP_FUNCTION(0x04, "spi1", "cs"),
+		MPP_FUNCTION(CONFIG_PMU | 0x0, "pmu-nc", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x1, "pmu-low", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x2, "pmu-high", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x3, "pmic", "sdi"),
+		MPP_FUNCTION(CONFIG_PMU | 0x4, "cpu-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x5, "standby-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x8, "core-pwr-good", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xa, "bat-fault", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xb, "ext0-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xc, "ext1-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xd, "ext2-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xe, "pmu-blink", NULL)),
+	MPP_MODE(6, "mpp6", dove_pmu_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x02, "uart3", "txd"),
+		MPP_FUNCTION(0x03, "sdio1", "buspwr"),
+		MPP_FUNCTION(0x04, "spi1", "mosi"),
+		MPP_FUNCTION(CONFIG_PMU | 0x0, "pmu-nc", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x1, "pmu-low", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x2, "pmu-high", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x3, "pmic", "sdi"),
+		MPP_FUNCTION(CONFIG_PMU | 0x4, "cpu-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x5, "standby-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x8, "core-pwr-good", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xa, "bat-fault", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xb, "ext0-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xc, "ext1-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xd, "ext2-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xe, "pmu-blink", NULL)),
+	MPP_MODE(7, "mpp7", dove_pmu_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x02, "uart3", "rxd"),
+		MPP_FUNCTION(0x03, "sdio1", "ledctrl"),
+		MPP_FUNCTION(0x04, "spi1", "sck"),
+		MPP_FUNCTION(CONFIG_PMU | 0x0, "pmu-nc", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x1, "pmu-low", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x2, "pmu-high", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x3, "pmic", "sdi"),
+		MPP_FUNCTION(CONFIG_PMU | 0x4, "cpu-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x5, "standby-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x8, "core-pwr-good", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xa, "bat-fault", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xb, "ext0-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xc, "ext1-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xd, "ext2-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xe, "pmu-blink", NULL)),
+	MPP_MODE(8, "mpp8", dove_pmu_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x01, "watchdog", "rstout"),
+		MPP_FUNCTION(CONFIG_PMU | 0x0, "pmu-nc", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x1, "pmu-low", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x2, "pmu-high", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x3, "pmic", "sdi"),
+		MPP_FUNCTION(CONFIG_PMU | 0x4, "cpu-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x5, "standby-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x8, "cpu-pwr-good", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xa, "bat-fault", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xb, "ext0-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xc, "ext1-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xd, "ext2-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xe, "pmu-blink", NULL)),
+	MPP_MODE(9, "mpp9", dove_pmu_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x05, "pex1", "clkreq"),
+		MPP_FUNCTION(CONFIG_PMU | 0x0, "pmu-nc", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x1, "pmu-low", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x2, "pmu-high", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x3, "pmic", "sdi"),
+		MPP_FUNCTION(CONFIG_PMU | 0x4, "cpu-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x5, "standby-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x8, "cpu-pwr-good", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xa, "bat-fault", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xb, "ext0-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xc, "ext1-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xd, "ext2-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xe, "pmu-blink", NULL)),
+	MPP_MODE(10, "mpp10", dove_pmu_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x05, "ssp", "sclk"),
+		MPP_FUNCTION(CONFIG_PMU | 0x0, "pmu-nc", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x1, "pmu-low", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x2, "pmu-high", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x3, "pmic", "sdi"),
+		MPP_FUNCTION(CONFIG_PMU | 0x4, "cpu-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x5, "standby-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x8, "cpu-pwr-good", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xa, "bat-fault", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xb, "ext0-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xc, "ext1-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xd, "ext2-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xe, "pmu-blink", NULL)),
+	MPP_MODE(11, "mpp11", dove_pmu_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x01, "sata", "prsnt"),
+		MPP_FUNCTION(0x02, "sata-1", "act"),
+		MPP_FUNCTION(0x03, "sdio0", "ledctrl"),
+		MPP_FUNCTION(0x04, "sdio1", "ledctrl"),
+		MPP_FUNCTION(0x05, "pex0", "clkreq"),
+		MPP_FUNCTION(CONFIG_PMU | 0x0, "pmu-nc", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x1, "pmu-low", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x2, "pmu-high", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x3, "pmic", "sdi"),
+		MPP_FUNCTION(CONFIG_PMU | 0x4, "cpu-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x5, "standby-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x8, "cpu-pwr-good", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xa, "bat-fault", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xb, "ext0-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xc, "ext1-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xd, "ext2-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xe, "pmu-blink", NULL)),
+	MPP_MODE(12, "mpp12", dove_pmu_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x01, "sata", "act"),
+		MPP_FUNCTION(0x02, "uart2", "rts"),
+		MPP_FUNCTION(0x03, "audio0", "extclk"),
+		MPP_FUNCTION(0x04, "sdio1", "cd"),
+		MPP_FUNCTION(CONFIG_PMU | 0x0, "pmu-nc", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x1, "pmu-low", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x2, "pmu-high", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x3, "pmic", "sdi"),
+		MPP_FUNCTION(CONFIG_PMU | 0x4, "cpu-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x5, "standby-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x8, "cpu-pwr-good", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xa, "bat-fault", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xb, "ext0-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xc, "ext1-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xd, "ext2-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xe, "pmu-blink", NULL)),
+	MPP_MODE(13, "mpp13", dove_pmu_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x02, "uart2", "cts"),
+		MPP_FUNCTION(0x03, "audio1", "extclk"),
+		MPP_FUNCTION(0x04, "sdio1", "wp"),
+		MPP_FUNCTION(0x05, "ssp", "extclk"),
+		MPP_FUNCTION(CONFIG_PMU | 0x0, "pmu-nc", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x1, "pmu-low", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x2, "pmu-high", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x3, "pmic", "sdi"),
+		MPP_FUNCTION(CONFIG_PMU | 0x4, "cpu-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x5, "standby-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x8, "cpu-pwr-good", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xa, "bat-fault", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xb, "ext0-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xc, "ext1-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xd, "ext2-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xe, "pmu-blink", NULL)),
+	MPP_MODE(14, "mpp14", dove_pmu_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x02, "uart2", "txd"),
+		MPP_FUNCTION(0x04, "sdio1", "buspwr"),
+		MPP_FUNCTION(0x05, "ssp", "rxd"),
+		MPP_FUNCTION(CONFIG_PMU | 0x0, "pmu-nc", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x1, "pmu-low", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x2, "pmu-high", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x3, "pmic", "sdi"),
+		MPP_FUNCTION(CONFIG_PMU | 0x4, "cpu-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x5, "standby-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x8, "cpu-pwr-good", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xa, "bat-fault", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xb, "ext0-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xc, "ext1-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xd, "ext2-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xe, "pmu-blink", NULL)),
+	MPP_MODE(15, "mpp15", dove_pmu_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x02, "uart2", "rxd"),
+		MPP_FUNCTION(0x04, "sdio1", "ledctrl"),
+		MPP_FUNCTION(0x05, "ssp", "sfrm"),
+		MPP_FUNCTION(CONFIG_PMU | 0x0, "pmu-nc", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x1, "pmu-low", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x2, "pmu-high", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x3, "pmic", "sdi"),
+		MPP_FUNCTION(CONFIG_PMU | 0x4, "cpu-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x5, "standby-pwr-down", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0x8, "cpu-pwr-good", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xa, "bat-fault", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xb, "ext0-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xc, "ext1-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xd, "ext2-wakeup", NULL),
+		MPP_FUNCTION(CONFIG_PMU | 0xe, "pmu-blink", NULL)),
+	MPP_MODE(16, "mpp16", dove_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x02, "uart3", "rts"),
+		MPP_FUNCTION(0x03, "sdio0", "cd"),
+		MPP_FUNCTION(0x04, "lcd-spi", "cs1"),
+		MPP_FUNCTION(0x05, "ac97", "sdi1")),
+	MPP_MODE(17, "mpp17", dove_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x01, "ac97-1", "sysclko"),
+		MPP_FUNCTION(0x02, "uart3", "cts"),
+		MPP_FUNCTION(0x03, "sdio0", "wp"),
+		MPP_FUNCTION(0x04, "twsi", "sda"),
+		MPP_FUNCTION(0x05, "ac97", "sdi2")),
+	MPP_MODE(18, "mpp18", dove_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x02, "uart3", "txd"),
+		MPP_FUNCTION(0x03, "sdio0", "buspwr"),
+		MPP_FUNCTION(0x04, "lcd0", "pwm"),
+		MPP_FUNCTION(0x05, "ac97", "sdi3")),
+	MPP_MODE(19, "mpp19", dove_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x02, "uart3", "rxd"),
+		MPP_FUNCTION(0x03, "sdio0", "ledctrl"),
+		MPP_FUNCTION(0x04, "twsi", "sck")),
+	MPP_MODE(20, "mpp20", dove_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x01, "ac97", "sysclko"),
+		MPP_FUNCTION(0x02, "lcd-spi", "miso"),
+		MPP_FUNCTION(0x03, "sdio1", "cd"),
+		MPP_FUNCTION(0x05, "sdio0", "cd"),
+		MPP_FUNCTION(0x06, "spi1", "miso")),
+	MPP_MODE(21, "mpp21", dove_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x01, "uart1", "rts"),
+		MPP_FUNCTION(0x02, "lcd-spi", "cs0"),
+		MPP_FUNCTION(0x03, "sdio1", "wp"),
+		MPP_FUNCTION(0x04, "ssp", "sfrm"),
+		MPP_FUNCTION(0x05, "sdio0", "wp"),
+		MPP_FUNCTION(0x06, "spi1", "cs")),
+	MPP_MODE(22, "mpp22", dove_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x01, "uart1", "cts"),
+		MPP_FUNCTION(0x02, "lcd-spi", "mosi"),
+		MPP_FUNCTION(0x03, "sdio1", "buspwr"),
+		MPP_FUNCTION(0x04, "ssp", "txd"),
+		MPP_FUNCTION(0x05, "sdio0", "buspwr"),
+		MPP_FUNCTION(0x06, "spi1", "mosi")),
+	MPP_MODE(23, "mpp23", dove_mpp_ctrl,
+		MPP_FUNCTION(0x00, "gpio", NULL),
+		MPP_FUNCTION(0x02, "lcd-spi", "sck"),
+		MPP_FUNCTION(0x03, "sdio1", "ledctrl"),
+		MPP_FUNCTION(0x04, "ssp", "sclk"),
+		MPP_FUNCTION(0x05, "sdio0", "ledctrl"),
+		MPP_FUNCTION(0x06, "spi1", "sck")),
+	MPP_MODE(24, "mpp_camera", dove_mpp4_ctrl,
+		MPP_FUNCTION(0x00, "camera", NULL),
+		MPP_FUNCTION(0x01, "gpio", NULL)),
+	MPP_MODE(40, "mpp_sdio0", dove_mpp4_ctrl,
+		MPP_FUNCTION(0x00, "sdio0", NULL),
+		MPP_FUNCTION(0x01, "gpio", NULL)),
+	MPP_MODE(46, "mpp_sdio1", dove_mpp4_ctrl,
+		MPP_FUNCTION(0x00, "sdio1", NULL),
+		MPP_FUNCTION(0x01, "gpio", NULL)),
+	MPP_MODE(52, "mpp_audio1", dove_audio1_ctrl,
+		MPP_FUNCTION(0x00, "i2s1/spdifo", NULL),
+		MPP_FUNCTION(0x02, "i2s1", NULL),
+		MPP_FUNCTION(0x08, "spdifo", NULL),
+		MPP_FUNCTION(0x0a, "gpio", NULL),
+		MPP_FUNCTION(0x0b, "twsi", NULL),
+		MPP_FUNCTION(0x0c, "ssp/spdifo", NULL),
+		MPP_FUNCTION(0x0e, "ssp", NULL),
+		MPP_FUNCTION(0x0f, "ssp/twsi", NULL)),
+	MPP_MODE(58, "mpp_spi0", dove_mpp4_ctrl,
+		MPP_FUNCTION(0x00, "spi0", NULL),
+		MPP_FUNCTION(0x01, "gpio", NULL)),
+	MPP_MODE(62, "mpp_uart1", dove_mpp4_ctrl,
+		MPP_FUNCTION(0x00, "uart1", NULL),
+		MPP_FUNCTION(0x01, "gpio", NULL)),
+	MPP_MODE(64, "mpp_nand", dove_nand_ctrl,
+		MPP_FUNCTION(0x00, "nand", NULL),
+		MPP_FUNCTION(0x01, "gpo", NULL)),
+	MPP_MODE(72, "audio0", dove_audio0_ctrl,
+		MPP_FUNCTION(0x00, "i2s", NULL),
+		MPP_FUNCTION(0x01, "ac97", NULL)),
+	MPP_MODE(73, "twsi", dove_twsi_ctrl,
+		MPP_FUNCTION(0x00, "twsi-none", NULL),
+		MPP_FUNCTION(0x01, "twsi-opt1", NULL),
+		MPP_FUNCTION(0x02, "twsi-opt2", NULL),
+		MPP_FUNCTION(0x03, "twsi-opt3", NULL)),
+};
+
+static struct mvebu_pinctrl_soc_info dove_pinctrl_info = {
+	.modes = dove_mpp_modes,
+	.nmodes = ARRAY_SIZE(dove_mpp_modes),
+	.variant = 0,
+};
+
+static struct of_device_id dove_pinctrl_of_match[] = {
+	{
+		.compatible = "marvell,dove-pinctrl",
+		.data = (u32)&dove_pinctrl_info
+	},
+	{ }
+};
+
+static int dove_pinctrl_probe(struct device_d *dev)
+{
+	const struct of_device_id *match =
+		of_match_node(dove_pinctrl_of_match, dev->device_node);
+	struct mvebu_pinctrl_soc_info *soc =
+		(struct mvebu_pinctrl_soc_info *)match->data;
+	struct device_node *np;
+	struct clk *clk;
+
+	clk = clk_get(dev, NULL);
+	clk_enable(clk);
+
+	mpp_base = dev_request_mem_region(dev, 0);
+	mpp4_base = dev_request_mem_region(dev, 1);
+
+	/*
+	 * Dove PMU does not have a stable binding, yet.
+	 * Derive pmu_base from mpp_base until proper binding is
+	 * available.
+	 */
+	pmu_base = (void *)((u32)mpp_base & ~INT_REGS_MASK) + PMU_REGS_OFFS;
+
+	np = of_find_compatible_node(NULL, NULL, "marvell,dove-global-config");
+	if (!np)
+		return -ENODEV;
+	gconf_base = of_iomap(np, 0);
+
+	return mvebu_pinctrl_probe(dev, soc);
+}
+
+static struct driver_d dove_pinctrl_driver = {
+	.name		= "pinctrl-dove",
+	.probe		= dove_pinctrl_probe,
+	.of_compatible	= dove_pinctrl_of_match,
+};
+
+static int dove_pinctrl_init(void)
+{
+	return platform_driver_register(&dove_pinctrl_driver);
+}
+postcore_initcall(dove_pinctrl_init);
diff --git a/drivers/pinctrl/mvebu/kirkwood.c b/drivers/pinctrl/mvebu/kirkwood.c
new file mode 100644
index 000000000000..bd864dfbad0a
--- /dev/null
+++ b/drivers/pinctrl/mvebu/kirkwood.c
@@ -0,0 +1,454 @@
+/*
+ * Marvell Kirkwood pinctrl driver based on mvebu pinctrl core
+ *
+ * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <of.h>
+
+#include "common.h"
+
+static void __iomem *mpp_base;
+
+static int kirkwood_mpp_ctrl_get(unsigned pid, unsigned long *config)
+{
+	return default_mpp_ctrl_get(mpp_base, pid, config);
+}
+
+static int kirkwood_mpp_ctrl_set(unsigned pid, unsigned long config)
+{
+	return default_mpp_ctrl_set(mpp_base, pid, config);
+}
+
+#define V(f6180, f6190, f6192, f6281, f6282, dx4122)	\
+	((f6180 << 0) | (f6190 << 1) | (f6192 << 2) |	\
+	 (f6281 << 3) | (f6282 << 4) | (dx4122 << 5))
+
+enum kirkwood_variant {
+	VARIANT_MV88F6180	= V(1, 0, 0, 0, 0, 0),
+	VARIANT_MV88F6190	= V(0, 1, 0, 0, 0, 0),
+	VARIANT_MV88F6192	= V(0, 0, 1, 0, 0, 0),
+	VARIANT_MV88F6281	= V(0, 0, 0, 1, 0, 0),
+	VARIANT_MV88F6282	= V(0, 0, 0, 0, 1, 0),
+	VARIANT_MV98DX4122	= V(0, 0, 0, 0, 0, 1),
+};
+
+static struct mvebu_mpp_mode mv88f6xxx_mpp_modes[] = {
+	MPP_MODE(0, "mpp0", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "nand", "io2",     V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x2, "spi", "cs",       V(1, 1, 1, 1, 1, 1))),
+	MPP_MODE(1, "mpp1", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpo", NULL,       V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "nand", "io3",     V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x2, "spi", "mosi",     V(1, 1, 1, 1, 1, 1))),
+	MPP_MODE(2, "mpp2", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpo", NULL,       V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "nand", "io4",     V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x2, "spi", "sck",      V(1, 1, 1, 1, 1, 1))),
+	MPP_MODE(3, "mpp3", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpo", NULL,       V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "nand", "io5",     V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x2, "spi", "miso",     V(1, 1, 1, 1, 1, 1))),
+	MPP_MODE(4, "mpp4", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "nand", "io6",     V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x2, "uart0", "rxd",    V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x5, "sata1", "act",    V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "hsync",    V(0, 0, 0, 0, 1, 0)),
+		MPP_VAR_FUNCTION(0xd, "ptp", "clk",      V(1, 1, 1, 1, 0, 0))),
+	MPP_MODE(5, "mpp5", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpo", NULL,       V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "nand", "io7",     V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x2, "uart0", "txd",    V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x4, "ptp", "trig",     V(1, 1, 1, 1, 0, 0)),
+		MPP_VAR_FUNCTION(0x5, "sata0", "act",    V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "vsync",    V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(6, "mpp6", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x1, "sysrst", "out",   V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x2, "spi", "mosi",     V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x3, "ptp", "trig",     V(1, 1, 1, 1, 0, 0))),
+	MPP_MODE(7, "mpp7", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpo", NULL,       V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "pex", "rsto",     V(1, 1, 1, 1, 0, 1)),
+		MPP_VAR_FUNCTION(0x2, "spi", "cs",       V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x3, "ptp", "trig",     V(1, 1, 1, 1, 0, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "pwm",      V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(8, "mpp8", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "twsi0", "sda",    V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x2, "uart0", "rts",    V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x3, "uart1", "rts",    V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x4, "mii-1", "rxerr",  V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x5, "sata1", "prsnt",  V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xc, "ptp", "clk",      V(1, 1, 1, 1, 0, 0)),
+		MPP_VAR_FUNCTION(0xd, "mii", "col",      V(1, 1, 1, 1, 1, 0))),
+	MPP_MODE(9, "mpp9", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "twsi0", "sck",    V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x2, "uart0", "cts",    V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x3, "uart1", "cts",    V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x5, "sata0", "prsnt",  V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xc, "ptp", "evreq",    V(1, 1, 1, 1, 0, 0)),
+		MPP_VAR_FUNCTION(0xd, "mii", "crs",      V(1, 1, 1, 1, 1, 0))),
+	MPP_MODE(10, "mpp10", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpo", NULL,       V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x2, "spi", "sck",      V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0X3, "uart0", "txd",    V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x5, "sata1", "act",    V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xc, "ptp", "trig",     V(1, 1, 1, 1, 0, 0))),
+	MPP_MODE(11, "mpp11", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x2, "spi", "miso",     V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x3, "uart0", "rxd",    V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x4, "ptp-1", "evreq",  V(1, 1, 1, 1, 0, 0)),
+		MPP_VAR_FUNCTION(0xc, "ptp-2", "trig",   V(1, 1, 1, 1, 0, 0)),
+		MPP_VAR_FUNCTION(0xd, "ptp", "clk",      V(1, 1, 1, 1, 0, 0)),
+		MPP_VAR_FUNCTION(0x5, "sata0", "act",    V(0, 1, 1, 1, 1, 0))),
+	MPP_MODE(12, "mpp12", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpo", NULL,       V(1, 1, 1, 0, 1, 0)),
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 0, 0, 1, 0, 0)),
+		MPP_VAR_FUNCTION(0x1, "sdio", "clk",     V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xa, "audio", "spdifo", V(0, 0, 0, 0, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "spi", "mosi",     V(0, 0, 0, 0, 1, 0)),
+		MPP_VAR_FUNCTION(0xd, "twsi1", "sda",    V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(13, "mpp13", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "sdio", "cmd",     V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "uart1", "txd",    V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0xa, "audio", "rmclk",  V(0, 0, 0, 0, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "pwm",      V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(14, "mpp14", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "sdio", "d0",      V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "uart1", "rxd",    V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x4, "sata1", "prsnt",  V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xa, "audio", "spdifi", V(0, 0, 0, 0, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "audio-1", "sdi",  V(0, 0, 0, 0, 1, 0)),
+		MPP_VAR_FUNCTION(0xd, "mii", "col",      V(1, 1, 1, 1, 1, 0))),
+	MPP_MODE(15, "mpp15", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "sdio", "d1",      V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "uart0", "rts",    V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x3, "uart1", "txd",    V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "sata0", "act",    V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "spi", "cs",       V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(16, "mpp16", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "sdio", "d2",      V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "uart0", "cts",    V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x3, "uart1", "rxd",    V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "sata1", "act",    V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "extclk",   V(0, 0, 0, 0, 1, 0)),
+		MPP_VAR_FUNCTION(0xd, "mii", "crs",      V(1, 1, 1, 1, 1, 0))),
+	MPP_MODE(17, "mpp17", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "sdio", "d3",      V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "sata0", "prsnt",  V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xa, "sata1", "act",    V(0, 0, 0, 0, 1, 0)),
+		MPP_VAR_FUNCTION(0xd, "twsi1", "sck",    V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(18, "mpp18", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpo", NULL,       V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "nand", "io0",     V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x2, "pex", "clkreq",   V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(19, "mpp19", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpo", NULL,       V(1, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "nand", "io1",     V(1, 1, 1, 1, 1, 1))),
+	MPP_MODE(20, "mpp20", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp0",       V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "tx0ql",    V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "ge1", "txd0",     V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "spdifi", V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x5, "sata1", "act",    V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d0",       V(0, 0, 0, 0, 1, 0)),
+		MPP_VAR_FUNCTION(0xc, "mii", "rxerr",    V(1, 0, 0, 0, 0, 0))),
+	MPP_MODE(21, "mpp21", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp1",       V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "rx0ql",    V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "ge1", "txd1",     V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "spdifi", V(1, 0, 0, 0, 0, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "spdifo", V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x5, "sata0", "act",    V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d1",       V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(22, "mpp22", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp2",       V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "tx2ql",    V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "ge1", "txd2",     V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "spdifo", V(1, 0, 0, 0, 0, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "rmclk",  V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x5, "sata1", "prsnt",  V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d2",       V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(23, "mpp23", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp3",       V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "rx2ql",    V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "ge1", "txd3",     V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "rmclk",  V(1, 0, 0, 0, 0, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "bclk",   V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x5, "sata0", "prsnt",  V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d3",       V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(24, "mpp24", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp4",       V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "spi-cs0",  V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "ge1", "rxd0",     V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "bclk",   V(1, 0, 0, 0, 0, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "sdo",    V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d4",       V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(25, "mpp25", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp5",       V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "spi-sck",  V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "ge1", "rxd1",     V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "sdo",    V(1, 0, 0, 0, 0, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "lrclk",  V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d5",       V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(26, "mpp26", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp6",       V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "spi-miso", V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "ge1", "rxd2",     V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "lrclk",  V(1, 0, 0, 0, 0, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "mclk",   V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d6",       V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(27, "mpp27", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp7",       V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "spi-mosi", V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "ge1", "rxd3",     V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "mclk",   V(1, 0, 0, 0, 0, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "sdi",    V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d7",       V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(28, "mpp28", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp8",       V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "int",      V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "ge1", "col",      V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "sdi",    V(1, 0, 0, 0, 0, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "extclk", V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d8",       V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(29, "mpp29", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(1, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp9",       V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "rst",      V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "ge1", "txclk",    V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "extclk", V(1, 0, 0, 0, 0, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d9",       V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(30, "mpp30", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp10",      V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "pclk",     V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "ge1", "rxctl",    V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d10",      V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(31, "mpp31", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp11",      V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "fs",       V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "ge1", "rxclk",    V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d11",      V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(32, "mpp32", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp12",      V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "drx",      V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "ge1", "txclko",   V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d12",      V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(33, "mpp33", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpo", NULL,       V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "dtx",      V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "ge1", "txctl",    V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d13",      V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(34, "mpp34", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "spi-cs1",  V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "ge1", "txen",     V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x5, "sata1", "act",    V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d14",      V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(35, "mpp35", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 1, 1, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "tx0ql",    V(0, 0, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x3, "ge1", "rxerr",    V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x5, "sata0", "act",    V(0, 1, 1, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d15",      V(0, 0, 0, 0, 1, 0)),
+		MPP_VAR_FUNCTION(0xc, "mii", "rxerr",    V(0, 1, 1, 1, 1, 0))),
+	MPP_MODE(36, "mpp36", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 0, 0, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp0",       V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "spi-cs1",  V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "spdifi", V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "twsi1", "sda",    V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(37, "mpp37", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 0, 0, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp1",       V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "tx2ql",    V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "spdifo", V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "twsi1", "sck",    V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(38, "mpp38", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 0, 0, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp2",       V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "rx2ql",    V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "rmclk",  V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d18",      V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(39, "mpp39", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 0, 0, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp3",       V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "spi-cs0",  V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "bclk",   V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d19",      V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(40, "mpp40", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 0, 0, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp4",       V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "spi-sck",  V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "sdo",    V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d20",      V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(41, "mpp41", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 0, 0, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp5",       V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "spi-miso", V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "lrclk",  V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d21",      V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(42, "mpp42", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 0, 0, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp6",       V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "spi-mosi", V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "mclk",   V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d22",      V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(43, "mpp43", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 0, 0, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp7",       V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "int",      V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "sdi",    V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d23",      V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(44, "mpp44", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 0, 0, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp8",       V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "rst",      V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x4, "audio", "extclk", V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "clk",      V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(45, "mpp45", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 0, 0, 1, 1, 1)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp9",       V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "pclk",     V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "e",        V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(46, "mpp46", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp10",      V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "fs",       V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "hsync",    V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(47, "mpp47", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp11",      V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "drx",      V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "vsync",    V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(48, "mpp48", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp12",      V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "dtx",      V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d16",      V(0, 0, 0, 0, 1, 0))),
+	MPP_MODE(49, "mpp49", kirkwood_mpp_ctrl,
+		MPP_VAR_FUNCTION(0x0, "gpio", NULL,      V(0, 0, 0, 1, 0, 1)),
+		MPP_VAR_FUNCTION(0x0, "gpo", NULL,       V(0, 0, 0, 0, 1, 0)),
+		MPP_VAR_FUNCTION(0x1, "ts", "mp9",       V(0, 0, 0, 1, 0, 0)),
+		MPP_VAR_FUNCTION(0x2, "tdm", "rx0ql",    V(0, 0, 0, 1, 1, 0)),
+		MPP_VAR_FUNCTION(0x5, "ptp", "clk",      V(0, 0, 0, 1, 0, 0)),
+		MPP_VAR_FUNCTION(0xa, "pex", "clkreq",   V(0, 0, 0, 0, 1, 0)),
+		MPP_VAR_FUNCTION(0xb, "lcd", "d17",      V(0, 0, 0, 0, 1, 0))),
+};
+
+static struct mvebu_pinctrl_soc_info mv88f6180_info = {
+	.variant = VARIANT_MV88F6180,
+	.modes = mv88f6xxx_mpp_modes,
+	.nmodes = ARRAY_SIZE(mv88f6xxx_mpp_modes),
+};
+
+static struct mvebu_pinctrl_soc_info mv88f6190_info = {
+	.variant = VARIANT_MV88F6190,
+	.modes = mv88f6xxx_mpp_modes,
+	.nmodes = ARRAY_SIZE(mv88f6xxx_mpp_modes),
+};
+
+static struct mvebu_pinctrl_soc_info mv88f6192_info = {
+	.variant = VARIANT_MV88F6192,
+	.modes = mv88f6xxx_mpp_modes,
+	.nmodes = ARRAY_SIZE(mv88f6xxx_mpp_modes),
+};
+
+static struct mvebu_pinctrl_soc_info mv88f6281_info = {
+	.variant = VARIANT_MV88F6281,
+	.modes = mv88f6xxx_mpp_modes,
+	.nmodes = ARRAY_SIZE(mv88f6xxx_mpp_modes),
+};
+
+static struct mvebu_pinctrl_soc_info mv88f6282_info = {
+	.variant = VARIANT_MV88F6282,
+	.modes = mv88f6xxx_mpp_modes,
+	.nmodes = ARRAY_SIZE(mv88f6xxx_mpp_modes),
+};
+
+static struct mvebu_pinctrl_soc_info mv98dx4122_info = {
+	.variant = VARIANT_MV98DX4122,
+	.modes = mv88f6xxx_mpp_modes,
+	.nmodes = ARRAY_SIZE(mv88f6xxx_mpp_modes),
+};
+
+static struct of_device_id kirkwood_pinctrl_of_match[] = {
+	{
+		.compatible = "marvell,88f6180-pinctrl",
+		.data = (u32)&mv88f6180_info
+	},
+	{
+		.compatible = "marvell,88f6190-pinctrl",
+		.data = (u32)&mv88f6190_info
+	},
+	{
+		.compatible = "marvell,88f6192-pinctrl",
+		.data = (u32)&mv88f6192_info
+	},
+	{
+		.compatible = "marvell,88f6281-pinctrl",
+		.data = (u32)&mv88f6281_info
+	},
+	{
+		.compatible = "marvell,88f6282-pinctrl",
+		.data = (u32)&mv88f6282_info
+	},
+	{
+		.compatible = "marvell,98dx4122-pinctrl",
+		.data = (u32)&mv98dx4122_info
+	},
+	{ }
+};
+
+static int kirkwood_pinctrl_probe(struct device_d *dev)
+{
+	const struct of_device_id *match =
+		of_match_node(kirkwood_pinctrl_of_match, dev->device_node);
+	struct mvebu_pinctrl_soc_info *soc =
+		(struct mvebu_pinctrl_soc_info *)match->data;
+
+	mpp_base = dev_request_mem_region(dev, 0);
+
+	return mvebu_pinctrl_probe(dev, soc);
+}
+
+static struct driver_d kirkwood_pinctrl_driver = {
+	.name		= "pinctrl-kirkwood",
+	.probe		= kirkwood_pinctrl_probe,
+	.of_compatible	= kirkwood_pinctrl_of_match,
+};
+
+static int kirkwood_pinctrl_init(void)
+{
+	return platform_driver_register(&kirkwood_pinctrl_driver);
+}
+postcore_initcall(kirkwood_pinctrl_init);
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
