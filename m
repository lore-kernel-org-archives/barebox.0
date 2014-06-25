Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x230.google.com ([2a00:1450:400c:c00::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wznsv-00080S-I4
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 14:09:17 +0000
Received: by mail-wg0-f48.google.com with SMTP id n12so1998954wgh.19
 for <barebox@lists.infradead.org>; Wed, 25 Jun 2014 07:08:48 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 25 Jun 2014 16:08:45 +0200
Message-Id: <1403705328-9924-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403705328-9924-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403705328-9924-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH RFC 1/4] usb: add Marvell MVEBU USB support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>

This adds support for Marvell specific implementation of ChipIdea
dual role USB controllers found on Marvell MVEBU SoCs (Armada 370,
XP, Dove, Kirkwood).

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Gregory Clement <gregory.clement@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 drivers/usb/Kconfig        |   1 +
 drivers/usb/Makefile       |   1 +
 drivers/usb/gadget/Kconfig |   4 +-
 drivers/usb/mvebu/Kconfig  |  35 ++++++
 drivers/usb/mvebu/Makefile |   2 +
 drivers/usb/mvebu/core.c   | 155 +++++++++++++++++++++++
 drivers/usb/mvebu/phy.c    | 301 +++++++++++++++++++++++++++++++++++++++++++++
 7 files changed, 497 insertions(+), 2 deletions(-)
 create mode 100644 drivers/usb/mvebu/Kconfig
 create mode 100644 drivers/usb/mvebu/Makefile
 create mode 100644 drivers/usb/mvebu/core.c
 create mode 100644 drivers/usb/mvebu/phy.c

diff --git a/drivers/usb/Kconfig b/drivers/usb/Kconfig
index 0b349bf619d3..a9275308eb80 100644
--- a/drivers/usb/Kconfig
+++ b/drivers/usb/Kconfig
@@ -4,6 +4,7 @@ menuconfig USB
 if USB
 
 source drivers/usb/imx/Kconfig
+source drivers/usb/mvebu/Kconfig
 
 source drivers/usb/host/Kconfig
 
diff --git a/drivers/usb/Makefile b/drivers/usb/Makefile
index 3cefab7131a6..8e61f96eaa96 100644
--- a/drivers/usb/Makefile
+++ b/drivers/usb/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_USB)		+= core/
 obj-$(CONFIG_USB_IMX_CHIPIDEA)	+= imx/
+obj-$(CONFIG_USB_MVEBU)		+= mvebu/
 obj-$(CONFIG_USB_GADGET)	+= gadget/
 obj-$(CONFIG_USB_STORAGE)	+= storage/
 obj-y += host/
diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 97a7d215bc5b..a5151edb23d3 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -1,6 +1,6 @@
 config USB_HAVE_GADGET_DRIVER
 	bool
-	default y if ARCH_IMX || ARCH_MXS || ARCH_AT91 || ARCH_PXA
+	default y if ARCH_IMX || ARCH_MVEBU || ARCH_MXS || ARCH_AT91 || ARCH_PXA
 
 menuconfig USB_GADGET
 	depends on USB_HAVE_GADGET_DRIVER
@@ -17,7 +17,7 @@ choice
 config USB_GADGET_DRIVER_ARC
 	bool
 	prompt "Arc OTG device core"
-	depends on ARCH_IMX || ARCH_MXS
+	depends on ARCH_IMX || ARCH_MVEBU || ARCH_MXS
 	select USB_GADGET_DUALSPEED
 	select POLLER
 
diff --git a/drivers/usb/mvebu/Kconfig b/drivers/usb/mvebu/Kconfig
new file mode 100644
index 000000000000..ef452a9a1528
--- /dev/null
+++ b/drivers/usb/mvebu/Kconfig
@@ -0,0 +1,35 @@
+config USB_MVEBU_PHY_40NM
+	bool
+
+config USB_MVEBU_PHY_65NM
+	bool
+
+config USB_MVEBU_PHY
+	bool
+	depends on USB_MVEBU_HOST || USB_MVEBU_DEVICE
+	select USB_MVEBU_PHY_40NM if ARCH_ARMADA_370
+	select USB_MVEBU_PHY_40NM if ARCH_ARMADA_XP
+	select USB_MVEBU_PHY_65NM if ARCH_DOVE
+	select USB_MVEBU_PHY_65NM if ARCH_KIRKWOOD
+
+config USB_MVEBU
+	select USB_MVEBU_PHY
+	bool
+
+config USB_MVEBU_HOST
+	bool "Marvell MVEBU USB host support"
+	depends on ARCH_MVEBU
+	select USB_MVEBU
+	select USB_EHCI
+	help
+	  Enables USB host support for the ChipIdea USB controller found on
+	  Marvell Orion5x, Kirkwood, Dove, Armada 370, and XP SoCs.
+
+config USB_MVEBU_DEVICE
+	bool "Marvell MVEBU USB device support"
+	depends on ARCH_MVEBU
+	select USB_MVEBU
+	select USB_GADGET_DRIVER_ARC
+	help
+	  Enables USB device support for the ChipIdea USB controller found on
+	  Marvell Orion5x, Kirkwood, Dove, Armada 370, and XP SoCs.
diff --git a/drivers/usb/mvebu/Makefile b/drivers/usb/mvebu/Makefile
new file mode 100644
index 000000000000..e2569bb2fd42
--- /dev/null
+++ b/drivers/usb/mvebu/Makefile
@@ -0,0 +1,2 @@
+obj-$(CONFIG_USB_MVEBU)		+= core.o
+obj-$(CONFIG_USB_MVEBU_PHY)	+= phy.o
diff --git a/drivers/usb/mvebu/core.c b/drivers/usb/mvebu/core.c
new file mode 100644
index 000000000000..b8222d26d972
--- /dev/null
+++ b/drivers/usb/mvebu/core.c
@@ -0,0 +1,155 @@
+/*
+ * Marvell MVEBU USB PHY driver
+ *
+ * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * Based on BSP code (C) Marvell International Ltd.
+ *
+ * This file is licensed under  the terms of the GNU General Public
+ * License version 2. This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/mbus.h>
+#include <mach/socid.h>
+#include <regulator.h>
+#include <usb/ehci.h>
+#include <usb/fsl_usb2.h>
+#include <usb/usb.h>
+
+#define EHCI_REGS_OFFSET	0x100
+
+#define BRIDGE_CTRL		0x300
+#define BRIDGE_INTR_CAUSE	0x310
+#define BRIDGE_INTR_MASK	0x314
+#define BRIDGE_ERR_ACCESS	0x31c
+#define WINDOW_CTRL(i)		(0x320 + ((i) << 4))
+#define WINDOW_BASE(i)		(0x324 + ((i) << 4))
+#define BRIDGE_IPG		0x360
+#define  START_IPG(x)		((x) << 0)
+#define  START_IPG_MASK		START_IPG(0x3f)
+#define  NON_START_IPG(x)	((x) << 8)
+#define  NON_START_IPG_MASK	NON_START_IPG(0x3f)
+
+struct mvebu_usb {
+	struct ehci_data ehci;
+	struct device_d *dev;
+	void __iomem *base;
+	struct clk *clk;
+	struct regulator *vbus;
+	u16 devid;
+	u16 revid;
+	enum usb_dr_mode mode;
+};
+
+static void mvebu_usb_mbus_setup(struct mvebu_usb *usb)
+{
+	const struct mbus_dram_target_info *dram = mvebu_mbus_dram_info();
+	int n;
+
+	for (n = 0; n < 4; n++) {
+		writel(0, usb->base + WINDOW_CTRL(n));
+		writel(0, usb->base + WINDOW_BASE(n));
+	}
+
+	for (n = 0; n < dram->num_cs; n++) {
+		const struct mbus_dram_window *w = &dram->cs[n];
+		u32 reg;
+
+		writel(w->base, usb->base + WINDOW_BASE(n));
+		reg = ((w->size - 1) & 0xffff0000) | (w->mbus_attr << 8) |
+			(dram->mbus_dram_target_id << 4) | 1;
+		writel(reg, usb->base + WINDOW_CTRL(n));
+	}
+}
+
+static void mvebu_usb_ipg_setup(struct mvebu_usb *usb)
+{
+	u32 reg;
+
+	/* IPG Metal fix register not available on below SoCs */
+	if ((usb->devid == DEVID_F5180 && usb->revid <= REVID_F5180N_B1) ||
+	    (usb->devid == DEVID_F5181 && usb->revid <= REVID_F5181_B1) ||
+	    (usb->devid == DEVID_F5181 && usb->revid == REVID_F5181L) ||
+	    (usb->devid == DEVID_F5182 && usb->revid <= REVID_F5182_A1))
+		return;
+
+	reg = readl(usb->base + BRIDGE_IPG);
+	/* Change reserved bits [31:30] from 1 to 0 */
+	reg &= ~(BIT(31) | BIT(30));
+	/* Change NON_START_IPG to 0xd */
+	reg &= ~NON_START_IPG_MASK;
+	reg |= NON_START_IPG(0xd);
+	writel(reg, usb->base + BRIDGE_IPG);
+}
+
+static struct of_device_id mvebu_usb_dt_ids[] = {
+	{ .compatible = "marvell,mvebu-usb", },
+};
+
+static int mvebu_usb_probe(struct device_d *dev)
+{
+	struct mvebu_usb *usb;
+	int ret;
+
+	usb = xzalloc(sizeof(*usb));
+
+	usb->base = dev_request_mem_region(dev, 0);
+	if (!usb->base)
+		return -ENOMEM;
+
+	usb->clk = clk_get(dev, NULL);
+	if (IS_ERR(usb->clk))
+		return PTR_ERR(usb->clk);
+
+	usb->vbus = regulator_get(dev, "vbus");
+	if (IS_ERR(usb->vbus))
+		return PTR_ERR(usb->vbus);
+
+	usb->dev = dev;
+	usb->devid = mvebu_get_soc_devid();
+	usb->revid = mvebu_get_soc_revid();
+	usb->mode = of_usb_get_dr_mode(dev->device_node, NULL);
+	if (usb->mode == USB_DR_MODE_UNKNOWN)
+		usb->mode = USB_DR_MODE_HOST;
+
+	usb->ehci.hccr = usb->base + EHCI_REGS_OFFSET;
+	usb->ehci.flags = EHCI_HAS_TT;
+
+	clk_enable(usb->clk);
+
+	mvebu_usb_ipg_setup(usb);
+	mvebu_usb_mbus_setup(usb);
+
+	if (usb->mode == USB_DR_MODE_HOST &&
+	    IS_ENABLED(CONFIG_USB_MVEBU_HOST)) {
+		ret = regulator_enable(usb->vbus);
+		if (ret)
+			return ret;
+		ret = ehci_register(dev, &usb->ehci);
+		if (ret)
+			regulator_disable(usb->vbus);
+	} else if (usb->mode == USB_DR_MODE_PERIPHERAL &&
+		   IS_ENABLED(CONFIG_USB_MVEBU_DEVICE)) {
+		ret = regulator_disable(usb->vbus);
+		if (ret)
+			return ret;
+		ret = ci_udc_register(dev, usb->base);
+	} else {
+		dev_err(dev, "Unsupported USB role\n");
+		ret = -ENODEV;
+	}
+
+	return ret;
+}
+
+static struct driver_d mvebu_usb_driver = {
+	.name = "mvebu-usb",
+	.probe = mvebu_usb_probe,
+	.of_compatible	= mvebu_usb_dt_ids,
+};
+device_platform_driver(mvebu_usb_driver);
diff --git a/drivers/usb/mvebu/phy.c b/drivers/usb/mvebu/phy.c
new file mode 100644
index 000000000000..3eb9dcc12ec0
--- /dev/null
+++ b/drivers/usb/mvebu/phy.c
@@ -0,0 +1,301 @@
+/*
+ * Marvell MVEBU USB PHY driver
+ *
+ * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * Based on BSP code (C) Marvell International Ltd.
+ *
+ * This file is licensed under  the terms of the GNU General Public
+ * License version 2. This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <mach/socid.h>
+
+/* 40nm USB PHY registers */
+#define PHY40N_PLL_REG(x)	(0x00 + ((x) * 0x04))
+#define  PHY40N_PLL_POWERUP	BIT(9)
+#define  PHY40N_VCO_CALIBRATE	BIT(21)
+#define PHY40N_CHANNEL_REG(c,x)	(0x40 + ((c) * 0x40) + ((x) * 0x04))
+#define  PHY40N_CH_RECALIBRATE	BIT(12)
+
+/* 65nm+ USB PHY registers */
+#define PHY_POWER_CTRL		0x00
+#define PHY_PLL_CTRL		0x10
+#define  KVCO_EXT		BIT(22)
+#define  VCO_CALIBRATE		BIT(21)
+#define  ICP(x)			((x) << 12)
+#define  ICP_MASK		ICP(0x7)
+#define PHY_TX_CTRL		0x20
+#define  HS_STRESS_CTRL		BIT(31)
+#define  TX_BLOCK_EN		BIT(21)
+#define  IMP_CAL_VTH(x)		((x) << 14)
+#define  IMP_CAL_VTH_MASK	IMP_CAL_VTH(0x7)
+#define  TX_CALIBRATE		BIT(12)
+#define  LOWVDD_EN		BIT(11)
+#define  TX_AMP(x)		((x) << 0)
+#define  TX_AMP_MASK		TX_AMP(0x7)
+#define PHY_RX_CTRL		0x30
+#define  EDGE_DET(x)		((x) << 26)
+#define  EDGE_DET_1T		EDGE_DET(0x0)
+#define  EDGE_DET_2T		EDGE_DET(0x1)
+#define  EDGE_DET_3T		EDGE_DET(0x2)
+#define  EDGE_DET_4T		EDGE_DET(0x3)
+#define  EDGE_DET_MASK		EDGE_DET(0x3)
+#define  CDR_FASTLOCK_EN	BIT(21)
+#define  SQ_LENGTH(x)		((x) << 15)
+#define  SQ_LENGTH_MASK		SQ_LENGTH(0x3)
+#define  SQ_THRESH(x)		((x) << 4)
+#define  SQ_THRESH_MASK		SQ_THRESH(0xf)
+#define  LPF_COEFF(x)		((x) << 2)
+#define  LPF_COEFF_1_8		LPF_COEFF(0x0)
+#define  LPF_COEFF_1_4		LPF_COEFF(0x1)
+#define  LPF_COEFF_1_2		LPF_COEFF(0x2)
+#define  LPF_COEFF_1_1		LPF_COEFF(0x3)
+#define  LPF_COEFF_MASK		LPF_COEFF(0x3)
+#define PHY_IVREF_CTRL		0x440
+#define  TXVDD12(x)		((x) << 8)
+#define  TXVDD12_VDD		TXVDD12(0x0)
+#define  TXVDD12_1V2		TXVDD12(0x1)
+#define  TXVDD12_1V3		TXVDD12(0x2)
+#define  TXVDD12_1V4		TXVDD12(0x3)
+#define  TXVDD12_MASK		TXVDD12(0x3)
+#define PHY_TESTGRP0_CTRL	0x50
+#define  FIFO_SQ_RST		BIT(15)
+#define PHY_TESTGRP1_CTRL	0x54
+#define PHY_TESTGRP2_CTRL	0x58
+#define PHY_TESTGRP3_CTRL	0x5c
+
+struct mvebu_usbphy {
+	struct device_d *dev;
+	void __iomem *base;
+	struct clk *clk;
+	u16 devid;
+	u16 revid;
+	int (*setup)(struct mvebu_usbphy *phy);
+};
+
+static __maybe_unused int mvebu_usbphy_setup_40nm(struct mvebu_usbphy *phy)
+{
+	struct device_node *cnp;
+	u32 reg;
+
+	/* Set USB PLL REF frequency to 25MHz */
+	reg = readl(phy->base + PHY40N_PLL_REG(1));
+	reg &= ~0x3ff;
+	reg |= 0x605;
+	writel(reg, phy->base + PHY40N_PLL_REG(1));
+
+	/* Power up PLL and PHY channel */
+	reg = readl(phy->base + PHY40N_PLL_REG(2));
+	reg |= PHY40N_PLL_POWERUP;
+	writel(reg, phy->base + PHY40N_PLL_REG(2));
+
+	/* Calibrate VCO */
+	reg = readl(phy->base + PHY40N_PLL_REG(1));
+	reg |= PHY40N_VCO_CALIBRATE;
+	writel(reg, phy->base + PHY40N_PLL_REG(1));
+	udelay(1000);
+
+	/* Setup all individual PHYs */
+	for_each_child_of_node(phy->dev->device_node, cnp) {
+		u32 n;
+
+		if (of_property_read_u32(cnp, "reg", &n))
+			continue;
+
+		reg = readl(phy->base + PHY40N_CHANNEL_REG(n, 3));
+		reg |= BIT(15);
+		writel(reg, phy->base + PHY40N_CHANNEL_REG(n, 3));
+
+		reg = readl(phy->base + PHY40N_CHANNEL_REG(n, 1));
+		reg |= PHY40N_CH_RECALIBRATE;
+		writel(reg, phy->base + PHY40N_CHANNEL_REG(n, 1));
+
+		udelay(40);
+
+		reg = readl(phy->base + PHY40N_CHANNEL_REG(n, 1));
+		reg &= ~PHY40N_CH_RECALIBRATE;
+		writel(reg, phy->base + PHY40N_CHANNEL_REG(n, 1));
+
+		switch (phy->devid) {
+		case DEVID_F6707:
+		case DEVID_F6710:
+			writel(0x20000131, phy->base + PHY40N_CHANNEL_REG(n, 4));
+			break;
+		}
+	}
+
+	return 0;
+}
+
+static __maybe_unused int mvebu_usbphy_setup_65nm(struct mvebu_usbphy *phy)
+{
+	u32 reg;
+
+	/* USB PHY PLL */
+	reg = readl(phy->base + PHY_PLL_CTRL);
+	writel(reg | VCO_CALIBRATE, phy->base + PHY_PLL_CTRL);
+	udelay(100);
+	writel(reg & ~VCO_CALIBRATE, phy->base + PHY_PLL_CTRL);
+
+	/* USB PHY Tx */
+	reg = readl(phy->base + PHY_TX_CTRL);
+	reg &= ~TX_CALIBRATE;
+	writel(reg | TX_CALIBRATE, phy->base + PHY_TX_CTRL);
+	udelay(100);
+	writel(reg & ~TX_CALIBRATE, phy->base + PHY_TX_CTRL);
+
+	switch (phy->devid) {
+	case DEVID_AP510:
+	case DEVID_F6781:
+		reg &= ~(TX_BLOCK_EN | HS_STRESS_CTRL);
+		reg |= LOWVDD_EN;
+		break;
+	}
+
+	switch (phy->devid) {
+	case DEVID_AP510:
+	case DEVID_F6280:
+		reg = (reg & ~IMP_CAL_VTH_MASK) | IMP_CAL_VTH(0x5);
+		break;
+	}
+
+	reg &= ~TX_AMP_MASK;
+	switch (phy->devid) {
+	case DEVID_F6321:
+	case DEVID_F6322:
+	case DEVID_F6323:
+	case DEVID_MV76100:
+	case DEVID_MV78100:
+	case DEVID_MV78200:
+		reg |= TX_AMP(0x4);
+		break;
+	default:
+		reg |= TX_AMP(0x3);
+		break;
+	}
+	writel(reg, phy->base + PHY_TX_CTRL);
+
+	/* USB PHY Rx */
+	reg = readl(phy->base + PHY_RX_CTRL);
+
+	reg = (reg & ~LPF_COEFF_MASK) | LPF_COEFF_1_4;
+
+	reg &= ~SQ_THRESH_MASK;
+	switch (phy->devid) {
+	case DEVID_AP510:
+	case DEVID_F6282:
+		reg |= SQ_THRESH(0xc);
+		break;
+	case DEVID_F6781:
+		reg |= SQ_THRESH(0x7);
+		break;
+	default:
+		reg |= SQ_THRESH(0x8);
+		break;
+	}
+
+	if (phy->devid == DEVID_AP510 ||
+	    phy->devid == DEVID_F6781) {
+		reg = (reg & ~SQ_LENGTH_MASK) | SQ_LENGTH(0x1);
+		reg = (reg & ~EDGE_DET_MASK) | EDGE_DET_1T;
+		reg &= ~CDR_FASTLOCK_EN;
+	}
+	writel(reg, phy->base + PHY_RX_CTRL);
+
+	/* USB PHY IVREF */
+	reg = readl(phy->base + PHY_IVREF_CTRL);
+	reg &= ~TXVDD12_MASK;
+	switch (phy->devid) {
+	case DEVID_AP510:
+	case DEVID_F6180:
+	case DEVID_F6190:
+	case DEVID_F6192:
+	case DEVID_F6280:
+	case DEVID_F6281:
+	case DEVID_F6282:
+	case DEVID_F6781:
+		reg |= TXVDD12_1V4;
+		break;
+	default:
+		reg |= TXVDD12_1V2;
+		break;
+	}
+	writel(reg, phy->base + PHY_IVREF_CTRL);
+
+	/* USB PHY Test Group */
+	reg = readl(phy->base + PHY_TESTGRP0_CTRL);
+	if (phy->devid == DEVID_AP510 ||
+	    phy->devid == DEVID_F6781)
+		reg &= ~FIFO_SQ_RST;
+	writel(reg, phy->base + PHY_TESTGRP0_CTRL);
+
+	return 0;
+}
+
+static __maybe_unused int mvebu_usbphy_setup_90nm(struct mvebu_usbphy *phy)
+{
+	return -ENODEV;
+}
+
+static __maybe_unused int mvebu_usbphy_setup_150nm(struct mvebu_usbphy *phy)
+{
+	return -ENODEV;
+}
+
+static struct of_device_id mvebu_usbphy_dt_ids[] = {
+#if defined(CONFIG_USB_MVEBU_PHY_40NM)
+	{ .compatible = "marvell,mvebu-usb-phy-40nm",
+	  .data = (u32)mvebu_usbphy_setup_40nm },
+#endif
+#if defined(CONFIG_USB_MVEBU_PHY_65NM)
+	{ .compatible = "marvell,mvebu-usb-phy-65nm",
+	  .data = (u32)mvebu_usbphy_setup_65nm },
+#endif
+#if defined(CONFIG_USB_MVEBU_PHY_90NM)
+	{ .compatible = "marvell,mvebu-usb-phy-90nm",
+	  .data = (u32)mvebu_usbphy_setup_90nm },
+#endif
+#if defined(CONFIG_USB_MVEBU_PHY_150NM)
+	{ .compatible = "marvell,mvebu-usb-phy-150nm",
+	  .data = (u32)mvebu_usbphy_setup_150nm },
+	{},
+#endif
+};
+
+static int mvebu_usbphy_probe(struct device_d *dev)
+{
+	struct mvebu_usbphy *phy;
+	const struct of_device_id *match =
+		of_match_node(mvebu_usbphy_dt_ids, dev->device_node);
+
+	phy = xzalloc(sizeof(*phy));
+
+	phy->base = dev_request_mem_region(dev, 0);
+	if (!phy->base)
+		return -ENOMEM;
+
+	phy->clk = clk_get(dev, NULL);
+	if (IS_ERR(phy->clk))
+		return PTR_ERR(phy->clk);
+
+	phy->dev = dev;
+	phy->devid = mvebu_get_soc_devid();
+	phy->revid = mvebu_get_soc_revid();
+	phy->setup = (void *)match->data;
+
+	clk_enable(phy->clk);
+	return phy->setup(phy);
+}
+
+static struct driver_d mvebu_usbphy_driver = {
+	.name = "mvebu-usbphy",
+	.probe = mvebu_usbphy_probe,
+	.of_compatible	= mvebu_usbphy_dt_ids,
+};
+device_platform_driver(mvebu_usbphy_driver);
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
