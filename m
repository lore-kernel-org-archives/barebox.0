Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKZ-0003cj-IK
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:30:37 +0000
Received: by mail-pl1-x633.google.com with SMTP id s1so11758480plp.9
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:30:11 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:27 -0800
Message-Id: <20190220072930.14300-23-andrew.smirnov@gmail.com>
In-Reply-To: <20190220072930.14300-1-andrew.smirnov@gmail.com>
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 22/25] usb: Import DWC3 USB controller driver from Linux
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Import DWC3 USB controller driver from Linux. This is a bare minimum
port of the code needed to support USB host functionality on
i.MX8MQ. No other use-case is explicitly supported.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/Kconfig       |    2 +
 drivers/usb/Makefile      |    1 +
 drivers/usb/dwc3/Kconfig  |   22 +
 drivers/usb/dwc3/Makefile |   10 +
 drivers/usb/dwc3/core.c   |  740 ++++++++++++++++++++++
 drivers/usb/dwc3/core.h   | 1267 +++++++++++++++++++++++++++++++++++++
 drivers/usb/dwc3/debug.h  |  664 +++++++++++++++++++
 drivers/usb/dwc3/host.c   |   36 ++
 drivers/usb/dwc3/io.h     |   41 ++
 9 files changed, 2783 insertions(+)
 create mode 100644 drivers/usb/dwc3/Kconfig
 create mode 100644 drivers/usb/dwc3/Makefile
 create mode 100644 drivers/usb/dwc3/core.c
 create mode 100644 drivers/usb/dwc3/core.h
 create mode 100644 drivers/usb/dwc3/debug.h
 create mode 100644 drivers/usb/dwc3/host.c
 create mode 100644 drivers/usb/dwc3/io.h

diff --git a/drivers/usb/Kconfig b/drivers/usb/Kconfig
index 8520a2fd9..ee33e0f28 100644
--- a/drivers/usb/Kconfig
+++ b/drivers/usb/Kconfig
@@ -9,6 +9,8 @@ if USB_HOST
 
 source drivers/usb/imx/Kconfig
 
+source "drivers/usb/dwc3/Kconfig"
+
 source drivers/usb/host/Kconfig
 
 source drivers/usb/otg/Kconfig
diff --git a/drivers/usb/Makefile b/drivers/usb/Makefile
index 047f18480..13fca2cbd 100644
--- a/drivers/usb/Makefile
+++ b/drivers/usb/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_USB)		+= core/
 obj-$(CONFIG_USB_IMX_CHIPIDEA)	+= imx/
+obj-$(CONFIG_USB_DWC3)		+= dwc3/
 obj-$(CONFIG_USB_MUSB)		+= musb/
 obj-$(CONFIG_USB_GADGET)	+= gadget/
 obj-$(CONFIG_USB_STORAGE)	+= storage/
diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
new file mode 100644
index 000000000..c91fd36a9
--- /dev/null
+++ b/drivers/usb/dwc3/Kconfig
@@ -0,0 +1,22 @@
+config USB_DWC3
+	tristate "DesignWare USB3 DRD Core Support"
+	depends on USB && HAS_DMA
+	select USB_XHCI
+	select USB_DWC3_HOST	# Remove this once we support more
+				# than USB host
+	help
+	  Say Y or M here if your system has a Dual Role SuperSpeed
+	  USB controller based on the DesignWare USB3 IP Core.
+
+	  If you choose to build this driver is a dynamically linked
+	  module, the module will be called dwc3.ko.
+
+if USB_DWC3
+
+config USB_DWC3_HOST
+	bool "Host only mode"
+	help
+	  Select this when you want to use DWC3 in host mode only,
+	  thereby the gadget feature will be regressed.
+
+endif
diff --git a/drivers/usb/dwc3/Makefile b/drivers/usb/dwc3/Makefile
new file mode 100644
index 000000000..d43b23eb2
--- /dev/null
+++ b/drivers/usb/dwc3/Makefile
@@ -0,0 +1,10 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_USB_DWC3)			+= dwc3.o
+
+dwc3-y					:= core.o
+
+ifneq ($(filter y,$(CONFIG_USB_DWC3_HOST)),)
+	dwc3-y				+= host.o
+endif
+
diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
new file mode 100644
index 000000000..2e7031a34
--- /dev/null
+++ b/drivers/usb/dwc3/core.c
@@ -0,0 +1,740 @@
+// SPDX-License-Identifier: GPL-2.0
+/**
+ * core.c - DesignWare USB3 DRD Controller Core file
+ *
+ * Copyright (C) 2010-2011 Texas Instruments Incorporated - http://www.ti.com
+ *
+ * Authors: Felipe Balbi <balbi@ti.com>,
+ *	    Sebastian Andrzej Siewior <bigeasy@linutronix.de>
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <linux/phy/phy.h>
+#include <driver.h>
+#include <init.h>
+
+#include "core.h"
+#include "io.h"
+
+
+#define DWC3_DEFAULT_AUTOSUSPEND_DELAY	5000 /* ms */
+
+void dwc3_set_prtcap(struct dwc3 *dwc, u32 mode)
+{
+	u32 reg;
+
+	reg = dwc3_readl(dwc->regs, DWC3_GCTL);
+	reg &= ~(DWC3_GCTL_PRTCAPDIR(DWC3_GCTL_PRTCAP_OTG));
+	reg |= DWC3_GCTL_PRTCAPDIR(mode);
+	dwc3_writel(dwc->regs, DWC3_GCTL, reg);
+
+	dwc->current_dr_role = mode;
+}
+
+/**
+ * dwc3_core_soft_reset - Issues core soft reset and PHY reset
+ * @dwc: pointer to our context structure
+ */
+static int dwc3_core_soft_reset(struct dwc3 *dwc)
+{
+	u32		reg;
+	int		retries = 1000;
+	int		ret;
+
+	ret = phy_init(dwc->usb2_generic_phy);
+	if (ret < 0)
+		return ret;
+
+	ret = phy_init(dwc->usb3_generic_phy);
+	if (ret < 0) {
+		phy_exit(dwc->usb2_generic_phy);
+		return ret;
+	}
+
+	/*
+	 * We're resetting only the device side because, if we're in host mode,
+	 * XHCI driver will reset the host block. If dwc3 was configured for
+	 * host-only mode, then we can return early.
+	 */
+	if (dwc->current_dr_role == DWC3_GCTL_PRTCAP_HOST)
+		return 0;
+
+	reg = dwc3_readl(dwc->regs, DWC3_DCTL);
+	reg |= DWC3_DCTL_CSFTRST;
+	dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+
+	do {
+		reg = dwc3_readl(dwc->regs, DWC3_DCTL);
+		if (!(reg & DWC3_DCTL_CSFTRST))
+			goto done;
+
+		udelay(1);
+	} while (--retries);
+
+	phy_exit(dwc->usb3_generic_phy);
+	phy_exit(dwc->usb2_generic_phy);
+
+	return -ETIMEDOUT;
+
+done:
+	/*
+	 * For DWC_usb31 controller, once DWC3_DCTL_CSFTRST bit is cleared,
+	 * we must wait at least 50ms before accessing the PHY domain
+	 * (synchronization delay). DWC_usb31 programming guide section 1.3.2.
+	 */
+	if (dwc3_is_usb31(dwc))
+		mdelay(50);
+
+	return 0;
+}
+
+static const struct clk_bulk_data dwc3_core_clks[] = {
+	{ .id = "ref" },
+	{ .id = "bus_early" },
+	{ .id = "suspend" },
+};
+
+/*
+ * dwc3_frame_length_adjustment - Adjusts frame length if required
+ * @dwc3: Pointer to our controller context structure
+ */
+static void dwc3_frame_length_adjustment(struct dwc3 *dwc)
+{
+	u32 reg;
+	u32 dft;
+
+	if (dwc->revision < DWC3_REVISION_250A)
+		return;
+
+	if (dwc->fladj == 0)
+		return;
+
+	reg = dwc3_readl(dwc->regs, DWC3_GFLADJ);
+	dft = reg & DWC3_GFLADJ_30MHZ_MASK;
+	if (!WARN(dft == dwc->fladj,
+	    "request value same as default, ignoring\n")) {
+		reg &= ~DWC3_GFLADJ_30MHZ_MASK;
+		reg |= DWC3_GFLADJ_30MHZ_SDBND_SEL | dwc->fladj;
+		dwc3_writel(dwc->regs, DWC3_GFLADJ, reg);
+	}
+}
+
+static void dwc3_core_num_eps(struct dwc3 *dwc)
+{
+	struct dwc3_hwparams	*parms = &dwc->hwparams;
+
+	dwc->num_eps = DWC3_NUM_EPS(parms);
+}
+
+static void dwc3_cache_hwparams(struct dwc3 *dwc)
+{
+	struct dwc3_hwparams	*parms = &dwc->hwparams;
+
+	parms->hwparams0 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS0);
+	parms->hwparams1 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS1);
+	parms->hwparams2 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS2);
+	parms->hwparams3 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS3);
+	parms->hwparams4 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS4);
+	parms->hwparams5 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS5);
+	parms->hwparams6 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS6);
+	parms->hwparams7 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS7);
+	parms->hwparams8 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS8);
+}
+
+/**
+ * dwc3_phy_setup - Configure USB PHY Interface of DWC3 Core
+ * @dwc: Pointer to our controller context structure
+ *
+ * Returns 0 on success. The USB PHY interfaces are configured but not
+ * initialized. The PHY interfaces and the PHYs get initialized together with
+ * the core in dwc3_core_init.
+ */
+static int dwc3_phy_setup(struct dwc3 *dwc)
+{
+	u32 reg;
+
+	reg = dwc3_readl(dwc->regs, DWC3_GUSB3PIPECTL(0));
+
+	/*
+	 * Make sure UX_EXIT_PX is cleared as that causes issues with some
+	 * PHYs. Also, this bit is not supposed to be used in normal operation.
+	 */
+	reg &= ~DWC3_GUSB3PIPECTL_UX_EXIT_PX;
+
+	/*
+	 * Above 1.94a, it is recommended to set DWC3_GUSB3PIPECTL_SUSPHY
+	 * to '0' during coreConsultant configuration. So default value
+	 * will be '0' when the core is reset. Application needs to set it
+	 * to '1' after the core initialization is completed.
+	 */
+	if (dwc->revision > DWC3_REVISION_194A)
+		reg |= DWC3_GUSB3PIPECTL_SUSPHY;
+
+	if (dwc->u2ss_inp3_quirk)
+		reg |= DWC3_GUSB3PIPECTL_U2SSINP3OK;
+
+	if (dwc->dis_rxdet_inp3_quirk)
+		reg |= DWC3_GUSB3PIPECTL_DISRXDETINP3;
+
+	if (dwc->req_p1p2p3_quirk)
+		reg |= DWC3_GUSB3PIPECTL_REQP1P2P3;
+
+	if (dwc->del_p1p2p3_quirk)
+		reg |= DWC3_GUSB3PIPECTL_DEP1P2P3_EN;
+
+	if (dwc->del_phy_power_chg_quirk)
+		reg |= DWC3_GUSB3PIPECTL_DEPOCHANGE;
+
+	if (dwc->lfps_filter_quirk)
+		reg |= DWC3_GUSB3PIPECTL_LFPSFILT;
+
+	if (dwc->rx_detect_poll_quirk)
+		reg |= DWC3_GUSB3PIPECTL_RX_DETOPOLL;
+
+	if (dwc->tx_de_emphasis_quirk)
+		reg |= DWC3_GUSB3PIPECTL_TX_DEEPH(dwc->tx_de_emphasis);
+
+	if (dwc->dis_u3_susphy_quirk)
+		reg &= ~DWC3_GUSB3PIPECTL_SUSPHY;
+
+	if (dwc->dis_del_phy_power_chg_quirk)
+		reg &= ~DWC3_GUSB3PIPECTL_DEPOCHANGE;
+
+	dwc3_writel(dwc->regs, DWC3_GUSB3PIPECTL(0), reg);
+
+	reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
+
+	/* Select the HS PHY interface */
+	switch (DWC3_GHWPARAMS3_HSPHY_IFC(dwc->hwparams.hwparams3)) {
+	case DWC3_GHWPARAMS3_HSPHY_IFC_UTMI_ULPI:
+		if (dwc->hsphy_interface &&
+				!strncmp(dwc->hsphy_interface, "utmi", 4)) {
+			reg &= ~DWC3_GUSB2PHYCFG_ULPI_UTMI;
+			break;
+		} else if (dwc->hsphy_interface &&
+				!strncmp(dwc->hsphy_interface, "ulpi", 4)) {
+			reg |= DWC3_GUSB2PHYCFG_ULPI_UTMI;
+			dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
+		} else {
+			/* Relying on default value. */
+			if (!(reg & DWC3_GUSB2PHYCFG_ULPI_UTMI))
+				break;
+		}
+		/* FALLTHROUGH */
+	case DWC3_GHWPARAMS3_HSPHY_IFC_ULPI:
+		/* FALLTHROUGH */
+	default:
+		break;
+	}
+
+	/*
+	 * Above 1.94a, it is recommended to set DWC3_GUSB2PHYCFG_SUSPHY to
+	 * '0' during coreConsultant configuration. So default value will
+	 * be '0' when the core is reset. Application needs to set it to
+	 * '1' after the core initialization is completed.
+	 */
+	if (dwc->revision > DWC3_REVISION_194A)
+		reg |= DWC3_GUSB2PHYCFG_SUSPHY;
+
+	if (dwc->dis_u2_susphy_quirk)
+		reg &= ~DWC3_GUSB2PHYCFG_SUSPHY;
+
+	if (dwc->dis_enblslpm_quirk)
+		reg &= ~DWC3_GUSB2PHYCFG_ENBLSLPM;
+	else
+		reg |= DWC3_GUSB2PHYCFG_ENBLSLPM;
+
+	if (dwc->dis_u2_freeclk_exists_quirk)
+		reg &= ~DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS;
+
+	dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
+
+	return 0;
+}
+
+static void dwc3_core_exit(struct dwc3 *dwc)
+{
+	phy_exit(dwc->usb2_generic_phy);
+	phy_exit(dwc->usb3_generic_phy);
+
+	phy_power_off(dwc->usb2_generic_phy);
+	phy_power_off(dwc->usb3_generic_phy);
+	clk_bulk_disable(dwc->num_clks, dwc->clks);
+}
+
+static bool dwc3_core_is_valid(struct dwc3 *dwc)
+{
+	u32 reg;
+
+	reg = dwc3_readl(dwc->regs, DWC3_GSNPSID);
+
+	/* This should read as U3 followed by revision number */
+	if ((reg & DWC3_GSNPSID_MASK) == 0x55330000) {
+		/* Detected DWC_usb3 IP */
+		dwc->revision = reg;
+	} else if ((reg & DWC3_GSNPSID_MASK) == 0x33310000) {
+		/* Detected DWC_usb31 IP */
+		dwc->revision = dwc3_readl(dwc->regs, DWC3_VER_NUMBER);
+		dwc->revision |= DWC3_REVISION_IS_DWC31;
+		dwc->version_type = dwc3_readl(dwc->regs, DWC3_VER_TYPE);
+	} else {
+		return false;
+	}
+
+	return true;
+}
+
+static void dwc3_core_setup_global_control(struct dwc3 *dwc)
+{
+	u32 hwparams4 = dwc->hwparams.hwparams4;
+	u32 reg;
+
+	reg = dwc3_readl(dwc->regs, DWC3_GCTL);
+	reg &= ~DWC3_GCTL_SCALEDOWN_MASK;
+
+	switch (DWC3_GHWPARAMS1_EN_PWROPT(dwc->hwparams.hwparams1)) {
+	case DWC3_GHWPARAMS1_EN_PWROPT_CLK:
+		/**
+		 * WORKAROUND: DWC3 revisions between 2.10a and 2.50a have an
+		 * issue which would cause xHCI compliance tests to fail.
+		 *
+		 * Because of that we cannot enable clock gating on such
+		 * configurations.
+		 *
+		 * Refers to:
+		 *
+		 * STAR#9000588375: Clock Gating, SOF Issues when ref_clk-Based
+		 * SOF/ITP Mode Used
+		 */
+		if ((dwc->dr_mode == USB_DR_MODE_HOST ||
+				dwc->dr_mode == USB_DR_MODE_OTG) &&
+				(dwc->revision >= DWC3_REVISION_210A &&
+				dwc->revision <= DWC3_REVISION_250A))
+			reg |= DWC3_GCTL_DSBLCLKGTNG | DWC3_GCTL_SOFITPSYNC;
+		else
+			reg &= ~DWC3_GCTL_DSBLCLKGTNG;
+		break;
+	case DWC3_GHWPARAMS1_EN_PWROPT_HIB:
+		/* enable hibernation here */
+		dwc->nr_scratch = DWC3_GHWPARAMS4_HIBER_SCRATCHBUFS(hwparams4);
+
+		/*
+		 * REVISIT Enabling this bit so that host-mode hibernation
+		 * will work. Device-mode hibernation is not yet implemented.
+		 */
+		reg |= DWC3_GCTL_GBLHIBERNATIONEN;
+		break;
+	default:
+		/* nothing */
+		break;
+	}
+
+	/* check if current dwc3 is on simulation board */
+	if (dwc->hwparams.hwparams6 & DWC3_GHWPARAMS6_EN_FPGA) {
+		dev_info(dwc->dev, "Running with FPGA optimizations\n");
+		dwc->is_fpga = true;
+	}
+
+	WARN(dwc->disable_scramble_quirk && !dwc->is_fpga,
+	     "disable_scramble cannot be used on non-FPGA builds\n");
+
+	if (dwc->disable_scramble_quirk && dwc->is_fpga)
+		reg |= DWC3_GCTL_DISSCRAMBLE;
+	else
+		reg &= ~DWC3_GCTL_DISSCRAMBLE;
+
+	if (dwc->u2exit_lfps_quirk)
+		reg |= DWC3_GCTL_U2EXIT_LFPS;
+
+	/*
+	 * WORKAROUND: DWC3 revisions <1.90a have a bug
+	 * where the device can fail to connect at SuperSpeed
+	 * and falls back to high-speed mode which causes
+	 * the device to enter a Connect/Disconnect loop
+	 */
+	if (dwc->revision < DWC3_REVISION_190A)
+		reg |= DWC3_GCTL_U2RSTECN;
+
+	dwc3_writel(dwc->regs, DWC3_GCTL, reg);
+}
+
+static int dwc3_core_get_phy(struct dwc3 *dwc);
+
+/**
+ * dwc3_core_init - Low-level initialization of DWC3 Core
+ * @dwc: Pointer to our controller context structure
+ *
+ * Returns 0 on success otherwise negative errno.
+ */
+static int dwc3_core_init(struct dwc3 *dwc)
+{
+	u32			reg;
+	int			ret;
+
+	if (!dwc3_core_is_valid(dwc)) {
+		dev_err(dwc->dev, "this is not a DesignWare USB3 DRD Core\n");
+		ret = -ENODEV;
+		goto err0;
+	}
+
+	/*
+	 * Write Linux Version Code to our GUID register so it's easy to figure
+	 * out which kernel version a bug was found.
+	 */
+	dwc3_writel(dwc->regs, DWC3_GUID, 0xdeadbeef);
+
+	/* Handle USB2.0-only core configuration */
+	if (DWC3_GHWPARAMS3_SSPHY_IFC(dwc->hwparams.hwparams3) ==
+			DWC3_GHWPARAMS3_SSPHY_IFC_DIS) {
+		if (dwc->maximum_speed == USB_SPEED_SUPER)
+			dwc->maximum_speed = USB_SPEED_HIGH;
+	}
+
+	ret = dwc3_phy_setup(dwc);
+	if (ret)
+		goto err0;
+
+	if (!dwc->phys_ready) {
+		ret = dwc3_core_get_phy(dwc);
+		if (ret)
+			goto err0a;
+		dwc->phys_ready = true;
+	}
+
+	ret = dwc3_core_soft_reset(dwc);
+	if (ret)
+		goto err0a;
+
+	dwc3_core_setup_global_control(dwc);
+	dwc3_core_num_eps(dwc);
+
+	/* Adjust Frame Length */
+	dwc3_frame_length_adjustment(dwc);
+
+	ret = phy_power_on(dwc->usb2_generic_phy);
+	if (ret < 0)
+		goto err2;
+
+	ret = phy_power_on(dwc->usb3_generic_phy);
+	if (ret < 0)
+		goto err3;
+	/*
+	 * ENDXFER polling is available on version 3.10a and later of
+	 * the DWC_usb3 controller. It is NOT available in the
+	 * DWC_usb31 controller.
+	 */
+	if (!dwc3_is_usb31(dwc) && dwc->revision >= DWC3_REVISION_310A) {
+		reg = dwc3_readl(dwc->regs, DWC3_GUCTL2);
+		reg |= DWC3_GUCTL2_RST_ACTBITLATER;
+		dwc3_writel(dwc->regs, DWC3_GUCTL2, reg);
+	}
+
+	if (dwc->revision >= DWC3_REVISION_250A) {
+		reg = dwc3_readl(dwc->regs, DWC3_GUCTL1);
+
+		/*
+		 * Enable hardware control of sending remote wakeup
+		 * in HS when the device is in the L1 state.
+		 */
+		if (dwc->revision >= DWC3_REVISION_290A)
+			reg |= DWC3_GUCTL1_DEV_L1_EXIT_BY_HW;
+
+		if (dwc->dis_tx_ipgap_linecheck_quirk)
+			reg |= DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS;
+
+		dwc3_writel(dwc->regs, DWC3_GUCTL1, reg);
+	}
+
+	if (dwc->dr_mode == USB_DR_MODE_HOST ||
+	    dwc->dr_mode == USB_DR_MODE_OTG) {
+		reg = dwc3_readl(dwc->regs, DWC3_GUCTL);
+
+		/*
+		 * Enable Auto retry Feature to make the controller operating in
+		 * Host mode on seeing transaction errors(CRC errors or internal
+		 * overrun scenerios) on IN transfers to reply to the device
+		 * with a non-terminating retry ACK (i.e, an ACK transcation
+		 * packet with Retry=1 & Nump != 0)
+		 */
+		reg |= DWC3_GUCTL_HSTINAUTORETRY;
+
+		dwc3_writel(dwc->regs, DWC3_GUCTL, reg);
+	}
+
+	/*
+	 * Must config both number of packets and max burst settings to enable
+	 * RX and/or TX threshold.
+	 */
+	if (dwc3_is_usb31(dwc) && dwc->dr_mode == USB_DR_MODE_HOST) {
+		u8 rx_thr_num = dwc->rx_thr_num_pkt_prd;
+		u8 rx_maxburst = dwc->rx_max_burst_prd;
+		u8 tx_thr_num = dwc->tx_thr_num_pkt_prd;
+		u8 tx_maxburst = dwc->tx_max_burst_prd;
+
+		if (rx_thr_num && rx_maxburst) {
+			reg = dwc3_readl(dwc->regs, DWC3_GRXTHRCFG);
+			reg |= DWC31_RXTHRNUMPKTSEL_PRD;
+
+			reg &= ~DWC31_RXTHRNUMPKT_PRD(~0);
+			reg |= DWC31_RXTHRNUMPKT_PRD(rx_thr_num);
+
+			reg &= ~DWC31_MAXRXBURSTSIZE_PRD(~0);
+			reg |= DWC31_MAXRXBURSTSIZE_PRD(rx_maxburst);
+
+			dwc3_writel(dwc->regs, DWC3_GRXTHRCFG, reg);
+		}
+
+		if (tx_thr_num && tx_maxburst) {
+			reg = dwc3_readl(dwc->regs, DWC3_GTXTHRCFG);
+			reg |= DWC31_TXTHRNUMPKTSEL_PRD;
+
+			reg &= ~DWC31_TXTHRNUMPKT_PRD(~0);
+			reg |= DWC31_TXTHRNUMPKT_PRD(tx_thr_num);
+
+			reg &= ~DWC31_MAXTXBURSTSIZE_PRD(~0);
+			reg |= DWC31_MAXTXBURSTSIZE_PRD(tx_maxburst);
+
+			dwc3_writel(dwc->regs, DWC3_GTXTHRCFG, reg);
+		}
+	}
+
+	return 0;
+
+/* err4: */
+	/* phy_power_off(dwc->usb3_generic_phy); */
+err3:
+	phy_power_off(dwc->usb2_generic_phy);
+err2:
+/* err1: */
+	phy_exit(dwc->usb2_generic_phy);
+	phy_exit(dwc->usb3_generic_phy);
+err0a:
+err0:
+	return ret;
+}
+
+static int dwc3_core_get_phy(struct dwc3 *dwc)
+{
+	struct device_d		*dev = dwc->dev;
+	int ret;
+
+	dwc->usb2_generic_phy = phy_get(dev, "usb2-phy");
+	if (IS_ERR(dwc->usb2_generic_phy)) {
+		ret = PTR_ERR(dwc->usb2_generic_phy);
+		if (ret == -ENOSYS || ret == -ENODEV) {
+			dev_err(dev, "no usb2 phy configured\n");
+			dwc->usb2_generic_phy = NULL;
+		} else if (ret == -EPROBE_DEFER) {
+			return ret;
+		} else {
+			dev_err(dev, "no usb2 phy configured\n");
+			return ret;
+		}
+	}
+
+	dwc->usb3_generic_phy = phy_get(dev, "usb3-phy");
+	if (IS_ERR(dwc->usb3_generic_phy)) {
+		ret = PTR_ERR(dwc->usb3_generic_phy);
+		if (ret == -ENOSYS || ret == -ENODEV) {
+			dev_err(dev, "no usb2 phy configured\n");
+			dwc->usb3_generic_phy = NULL;
+		} else if (ret == -EPROBE_DEFER) {
+			return ret;
+		} else {
+			dev_err(dev, "no usb3 phy configured\n");
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static int dwc3_core_init_mode(struct dwc3 *dwc)
+{
+	struct device_d *dev = dwc->dev;
+	int ret;
+
+	switch (dwc->dr_mode) {
+	case USB_DR_MODE_HOST:
+		dwc3_set_prtcap(dwc, DWC3_GCTL_PRTCAP_HOST);
+
+		ret = dwc3_host_init(dwc);
+		if (ret) {
+			if (ret != -EPROBE_DEFER)
+				dev_err(dev, "failed to initialize host\n");
+			return ret;
+		}
+		break;
+	default:
+		dev_err(dev, "Unsupported mode of operation %d\n", dwc->dr_mode);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static void dwc3_get_properties(struct dwc3 *dwc)
+{
+	struct device_d		*dev = dwc->dev;
+	u8			lpm_nyet_threshold;
+	u8			tx_de_emphasis;
+	u8			hird_threshold;
+
+	/* default to highest possible threshold */
+	lpm_nyet_threshold = 0xff;
+
+	/* default to -3.5dB de-emphasis */
+	tx_de_emphasis = 1;
+
+	/*
+	 * default to assert utmi_sleep_n and use maximum allowed HIRD
+	 * threshold value of 0b1100
+	 */
+	hird_threshold = 12;
+
+	dwc->maximum_speed = of_usb_get_maximum_speed(dev->device_node, NULL);
+	dwc->dr_mode = of_usb_get_dr_mode(dev->device_node, NULL);
+
+	dwc->lpm_nyet_threshold = lpm_nyet_threshold;
+	dwc->tx_de_emphasis = tx_de_emphasis;
+
+	dwc->hird_threshold = hird_threshold
+		| (dwc->is_utmi_l1_suspend << 4);
+
+	dwc->imod_interval = 0;
+}
+
+/* check whether the core supports IMOD */
+bool dwc3_has_imod(struct dwc3 *dwc)
+{
+	return ((dwc3_is_usb3(dwc) &&
+		 dwc->revision >= DWC3_REVISION_300A) ||
+		(dwc3_is_usb31(dwc) &&
+		 dwc->revision >= DWC3_USB31_REVISION_120A));
+}
+
+static void dwc3_check_params(struct dwc3 *dwc)
+{
+	struct device_d *dev = dwc->dev;
+
+	/* Check for proper value of imod_interval */
+	if (dwc->imod_interval && !dwc3_has_imod(dwc)) {
+		dev_warn(dwc->dev, "Interrupt moderation not supported\n");
+		dwc->imod_interval = 0;
+	}
+
+	/*
+	 * Workaround for STAR 9000961433 which affects only version
+	 * 3.00a of the DWC_usb3 core. This prevents the controller
+	 * interrupt from being masked while handling events. IMOD
+	 * allows us to work around this issue. Enable it for the
+	 * affected version.
+	 */
+	if (!dwc->imod_interval &&
+	    (dwc->revision == DWC3_REVISION_300A))
+		dwc->imod_interval = 1;
+
+	/* Check the maximum_speed parameter */
+	switch (dwc->maximum_speed) {
+	case USB_SPEED_LOW:
+	case USB_SPEED_FULL:
+	case USB_SPEED_HIGH:
+	case USB_SPEED_SUPER:
+	case USB_SPEED_SUPER_PLUS:
+		break;
+	default:
+		dev_err(dev, "invalid maximum_speed parameter %d\n",
+			dwc->maximum_speed);
+		/* fall through */
+	case USB_SPEED_UNKNOWN:
+		/* default to superspeed */
+		dwc->maximum_speed = USB_SPEED_SUPER;
+
+		/*
+		 * default to superspeed plus if we are capable.
+		 */
+		if (dwc3_is_usb31(dwc) &&
+		    (DWC3_GHWPARAMS3_SSPHY_IFC(dwc->hwparams.hwparams3) ==
+		     DWC3_GHWPARAMS3_SSPHY_IFC_GEN2))
+			dwc->maximum_speed = USB_SPEED_SUPER_PLUS;
+
+		break;
+	}
+}
+
+static int dwc3_probe(struct device_d *dev)
+{
+	struct dwc3		*dwc;
+	int			ret;
+
+	dwc = xzalloc(sizeof(*dwc));
+	dev->priv = dwc;
+
+	dwc->clks = xmemdup(dwc3_core_clks, sizeof(dwc3_core_clks));
+	dwc->dev = dev;
+	dwc->regs = dev_get_mem_region(dwc->dev, 0) + DWC3_GLOBALS_REGS_START;
+
+	dwc3_get_properties(dwc);
+
+	if (dev->device_node) {
+		dwc->num_clks = ARRAY_SIZE(dwc3_core_clks);
+
+		ret = clk_bulk_get(dev, dwc->num_clks, dwc->clks);
+		if (ret == -EPROBE_DEFER)
+			return ret;
+		/*
+		 * Clocks are optional, but new DT platforms should support all
+		 * clocks as required by the DT-binding.
+		 */
+		if (ret)
+			dwc->num_clks = 0;
+	}
+
+	ret = clk_bulk_enable(dwc->num_clks, dwc->clks);
+	if (ret)
+		return ret;
+
+	dwc3_cache_hwparams(dwc);
+
+	ret = dwc3_core_init(dwc);
+	if (ret) {
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "failed to initialize core: %d\n", ret);
+		return ret;
+	}
+
+	dwc3_check_params(dwc);
+
+	ret = dwc3_core_init_mode(dwc);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static void dwc3_remove(struct device_d *dev)
+{
+	struct dwc3 *dwc = dev->priv;
+
+	dwc3_core_exit(dwc);
+	clk_bulk_put(dwc->num_clks, dwc->clks);
+}
+
+static const struct of_device_id of_dwc3_match[] = {
+	{
+		.compatible = "snps,dwc3"
+	},
+	{
+		.compatible = "synopsys,dwc3"
+	},
+	{ },
+};
+
+static struct driver_d dwc3_driver = {
+	.probe = dwc3_probe,
+	.remove	= dwc3_remove,
+	.name = "dwc3",
+	.of_compatible = DRV_OF_COMPAT(of_dwc3_match),
+};
+device_platform_driver(dwc3_driver);
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
new file mode 100644
index 000000000..a404e4cd6
--- /dev/null
+++ b/drivers/usb/dwc3/core.h
@@ -0,0 +1,1267 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * core.h - DesignWare USB3 DRD Core Header
+ *
+ * Copyright (C) 2010-2011 Texas Instruments Incorporated - http://www.ti.com
+ *
+ * Authors: Felipe Balbi <balbi@ti.com>,
+ *	    Sebastian Andrzej Siewior <bigeasy@linutronix.de>
+ */
+
+#ifndef __DRIVERS_USB_DWC3_CORE_H
+#define __DRIVERS_USB_DWC3_CORE_H
+
+#include <usb/usb.h>
+
+#define DWC3_MSG_MAX	500
+
+/* Global constants */
+#define DWC3_PULL_UP_TIMEOUT	500	/* ms */
+#define DWC3_BOUNCE_SIZE	1024	/* size of a superspeed bulk */
+#define DWC3_EP0_SETUP_SIZE	512
+#define DWC3_ENDPOINTS_NUM	32
+#define DWC3_XHCI_RESOURCES_NUM	2
+#define DWC3_ISOC_MAX_RETRIES	5
+
+#define DWC3_SCRATCHBUF_SIZE	4096	/* each buffer is assumed to be 4KiB */
+#define DWC3_EVENT_BUFFERS_SIZE	4096
+#define DWC3_EVENT_TYPE_MASK	0xfe
+
+#define DWC3_EVENT_TYPE_DEV	0
+#define DWC3_EVENT_TYPE_CARKIT	3
+#define DWC3_EVENT_TYPE_I2C	4
+
+#define DWC3_DEVICE_EVENT_DISCONNECT		0
+#define DWC3_DEVICE_EVENT_RESET			1
+#define DWC3_DEVICE_EVENT_CONNECT_DONE		2
+#define DWC3_DEVICE_EVENT_LINK_STATUS_CHANGE	3
+#define DWC3_DEVICE_EVENT_WAKEUP		4
+#define DWC3_DEVICE_EVENT_HIBER_REQ		5
+#define DWC3_DEVICE_EVENT_EOPF			6
+#define DWC3_DEVICE_EVENT_SOF			7
+#define DWC3_DEVICE_EVENT_ERRATIC_ERROR		9
+#define DWC3_DEVICE_EVENT_CMD_CMPL		10
+#define DWC3_DEVICE_EVENT_OVERFLOW		11
+
+/* Controller's role while using the OTG block */
+#define DWC3_OTG_ROLE_IDLE	0
+#define DWC3_OTG_ROLE_HOST	1
+#define DWC3_OTG_ROLE_DEVICE	2
+
+#define DWC3_GEVNTCOUNT_MASK	0xfffc
+#define DWC3_GEVNTCOUNT_EHB	BIT(31)
+#define DWC3_GSNPSID_MASK	0xffff0000
+#define DWC3_GSNPSREV_MASK	0xffff
+
+/* DWC3 registers memory space boundries */
+#define DWC3_XHCI_REGS_START		0x0
+#define DWC3_XHCI_REGS_END		0x7fff
+#define DWC3_GLOBALS_REGS_START		0xc100
+#define DWC3_GLOBALS_REGS_END		0xc6ff
+#define DWC3_DEVICE_REGS_START		0xc700
+#define DWC3_DEVICE_REGS_END		0xcbff
+#define DWC3_OTG_REGS_START		0xcc00
+#define DWC3_OTG_REGS_END		0xccff
+
+/* Global Registers */
+#define DWC3_GSBUSCFG0		0xc100
+#define DWC3_GSBUSCFG1		0xc104
+#define DWC3_GTXTHRCFG		0xc108
+#define DWC3_GRXTHRCFG		0xc10c
+#define DWC3_GCTL		0xc110
+#define DWC3_GEVTEN		0xc114
+#define DWC3_GSTS		0xc118
+#define DWC3_GUCTL1		0xc11c
+#define DWC3_GSNPSID		0xc120
+#define DWC3_GGPIO		0xc124
+#define DWC3_GUID		0xc128
+#define DWC3_GUCTL		0xc12c
+#define DWC3_GBUSERRADDR0	0xc130
+#define DWC3_GBUSERRADDR1	0xc134
+#define DWC3_GPRTBIMAP0		0xc138
+#define DWC3_GPRTBIMAP1		0xc13c
+#define DWC3_GHWPARAMS0		0xc140
+#define DWC3_GHWPARAMS1		0xc144
+#define DWC3_GHWPARAMS2		0xc148
+#define DWC3_GHWPARAMS3		0xc14c
+#define DWC3_GHWPARAMS4		0xc150
+#define DWC3_GHWPARAMS5		0xc154
+#define DWC3_GHWPARAMS6		0xc158
+#define DWC3_GHWPARAMS7		0xc15c
+#define DWC3_GDBGFIFOSPACE	0xc160
+#define DWC3_GDBGLTSSM		0xc164
+#define DWC3_GDBGBMU		0xc16c
+#define DWC3_GDBGLSPMUX		0xc170
+#define DWC3_GDBGLSP		0xc174
+#define DWC3_GDBGEPINFO0	0xc178
+#define DWC3_GDBGEPINFO1	0xc17c
+#define DWC3_GPRTBIMAP_HS0	0xc180
+#define DWC3_GPRTBIMAP_HS1	0xc184
+#define DWC3_GPRTBIMAP_FS0	0xc188
+#define DWC3_GPRTBIMAP_FS1	0xc18c
+#define DWC3_GUCTL2		0xc19c
+
+#define DWC3_VER_NUMBER		0xc1a0
+#define DWC3_VER_TYPE		0xc1a4
+
+#define DWC3_GUSB2PHYCFG(n)	(0xc200 + ((n) * 0x04))
+#define DWC3_GUSB2I2CCTL(n)	(0xc240 + ((n) * 0x04))
+
+#define DWC3_GUSB2PHYACC(n)	(0xc280 + ((n) * 0x04))
+
+#define DWC3_GUSB3PIPECTL(n)	(0xc2c0 + ((n) * 0x04))
+
+#define DWC3_GTXFIFOSIZ(n)	(0xc300 + ((n) * 0x04))
+#define DWC3_GRXFIFOSIZ(n)	(0xc380 + ((n) * 0x04))
+
+#define DWC3_GEVNTADRLO(n)	(0xc400 + ((n) * 0x10))
+#define DWC3_GEVNTADRHI(n)	(0xc404 + ((n) * 0x10))
+#define DWC3_GEVNTSIZ(n)	(0xc408 + ((n) * 0x10))
+#define DWC3_GEVNTCOUNT(n)	(0xc40c + ((n) * 0x10))
+
+#define DWC3_GHWPARAMS8		0xc600
+#define DWC3_GFLADJ		0xc630
+
+/* Device Registers */
+#define DWC3_DCFG		0xc700
+#define DWC3_DCTL		0xc704
+#define DWC3_DEVTEN		0xc708
+#define DWC3_DSTS		0xc70c
+#define DWC3_DGCMDPAR		0xc710
+#define DWC3_DGCMD		0xc714
+#define DWC3_DALEPENA		0xc720
+
+#define DWC3_DEP_BASE(n)	(0xc800 + ((n) * 0x10))
+#define DWC3_DEPCMDPAR2		0x00
+#define DWC3_DEPCMDPAR1		0x04
+#define DWC3_DEPCMDPAR0		0x08
+#define DWC3_DEPCMD		0x0c
+
+#define DWC3_DEV_IMOD(n)	(0xca00 + ((n) * 0x4))
+
+/* OTG Registers */
+#define DWC3_OCFG		0xcc00
+#define DWC3_OCTL		0xcc04
+#define DWC3_OEVT		0xcc08
+#define DWC3_OEVTEN		0xcc0C
+#define DWC3_OSTS		0xcc10
+
+/* Bit fields */
+
+/* Global SoC Bus Configuration INCRx Register 0 */
+#define DWC3_GSBUSCFG0_INCR256BRSTENA	(1 << 7) /* INCR256 burst */
+#define DWC3_GSBUSCFG0_INCR128BRSTENA	(1 << 6) /* INCR128 burst */
+#define DWC3_GSBUSCFG0_INCR64BRSTENA	(1 << 5) /* INCR64 burst */
+#define DWC3_GSBUSCFG0_INCR32BRSTENA	(1 << 4) /* INCR32 burst */
+#define DWC3_GSBUSCFG0_INCR16BRSTENA	(1 << 3) /* INCR16 burst */
+#define DWC3_GSBUSCFG0_INCR8BRSTENA	(1 << 2) /* INCR8 burst */
+#define DWC3_GSBUSCFG0_INCR4BRSTENA	(1 << 1) /* INCR4 burst */
+#define DWC3_GSBUSCFG0_INCRBRSTENA	(1 << 0) /* undefined length enable */
+#define DWC3_GSBUSCFG0_INCRBRST_MASK	0xff
+
+/* Global Debug LSP MUX Select */
+#define DWC3_GDBGLSPMUX_ENDBC		BIT(15)	/* Host only */
+#define DWC3_GDBGLSPMUX_HOSTSELECT(n)	((n) & 0x3fff)
+#define DWC3_GDBGLSPMUX_DEVSELECT(n)	(((n) & 0xf) << 4)
+#define DWC3_GDBGLSPMUX_EPSELECT(n)	((n) & 0xf)
+
+/* Global Debug Queue/FIFO Space Available Register */
+#define DWC3_GDBGFIFOSPACE_NUM(n)	((n) & 0x1f)
+#define DWC3_GDBGFIFOSPACE_TYPE(n)	(((n) << 5) & 0x1e0)
+#define DWC3_GDBGFIFOSPACE_SPACE_AVAILABLE(n) (((n) >> 16) & 0xffff)
+
+#define DWC3_TXFIFO		0
+#define DWC3_RXFIFO		1
+#define DWC3_TXREQQ		2
+#define DWC3_RXREQQ		3
+#define DWC3_RXINFOQ		4
+#define DWC3_PSTATQ		5
+#define DWC3_DESCFETCHQ		6
+#define DWC3_EVENTQ		7
+#define DWC3_AUXEVENTQ		8
+
+/* Global RX Threshold Configuration Register */
+#define DWC3_GRXTHRCFG_MAXRXBURSTSIZE(n) (((n) & 0x1f) << 19)
+#define DWC3_GRXTHRCFG_RXPKTCNT(n) (((n) & 0xf) << 24)
+#define DWC3_GRXTHRCFG_PKTCNTSEL BIT(29)
+
+/* Global RX Threshold Configuration Register for DWC_usb31 only */
+#define DWC31_GRXTHRCFG_MAXRXBURSTSIZE(n)	(((n) & 0x1f) << 16)
+#define DWC31_GRXTHRCFG_RXPKTCNT(n)		(((n) & 0x1f) << 21)
+#define DWC31_GRXTHRCFG_PKTCNTSEL		BIT(26)
+#define DWC31_RXTHRNUMPKTSEL_HS_PRD		BIT(15)
+#define DWC31_RXTHRNUMPKT_HS_PRD(n)		(((n) & 0x3) << 13)
+#define DWC31_RXTHRNUMPKTSEL_PRD		BIT(10)
+#define DWC31_RXTHRNUMPKT_PRD(n)		(((n) & 0x1f) << 5)
+#define DWC31_MAXRXBURSTSIZE_PRD(n)		((n) & 0x1f)
+
+/* Global TX Threshold Configuration Register for DWC_usb31 only */
+#define DWC31_GTXTHRCFG_MAXTXBURSTSIZE(n)	(((n) & 0x1f) << 16)
+#define DWC31_GTXTHRCFG_TXPKTCNT(n)		(((n) & 0x1f) << 21)
+#define DWC31_GTXTHRCFG_PKTCNTSEL		BIT(26)
+#define DWC31_TXTHRNUMPKTSEL_HS_PRD		BIT(15)
+#define DWC31_TXTHRNUMPKT_HS_PRD(n)		(((n) & 0x3) << 13)
+#define DWC31_TXTHRNUMPKTSEL_PRD		BIT(10)
+#define DWC31_TXTHRNUMPKT_PRD(n)		(((n) & 0x1f) << 5)
+#define DWC31_MAXTXBURSTSIZE_PRD(n)		((n) & 0x1f)
+
+/* Global Configuration Register */
+#define DWC3_GCTL_PWRDNSCALE(n)	((n) << 19)
+#define DWC3_GCTL_U2RSTECN	BIT(16)
+#define DWC3_GCTL_RAMCLKSEL(x)	(((x) & DWC3_GCTL_CLK_MASK) << 6)
+#define DWC3_GCTL_CLK_BUS	(0)
+#define DWC3_GCTL_CLK_PIPE	(1)
+#define DWC3_GCTL_CLK_PIPEHALF	(2)
+#define DWC3_GCTL_CLK_MASK	(3)
+
+#define DWC3_GCTL_PRTCAP(n)	(((n) & (3 << 12)) >> 12)
+#define DWC3_GCTL_PRTCAPDIR(n)	((n) << 12)
+#define DWC3_GCTL_PRTCAP_HOST	1
+#define DWC3_GCTL_PRTCAP_DEVICE	2
+#define DWC3_GCTL_PRTCAP_OTG	3
+
+#define DWC3_GCTL_CORESOFTRESET		BIT(11)
+#define DWC3_GCTL_SOFITPSYNC		BIT(10)
+#define DWC3_GCTL_SCALEDOWN(n)		((n) << 4)
+#define DWC3_GCTL_SCALEDOWN_MASK	DWC3_GCTL_SCALEDOWN(3)
+#define DWC3_GCTL_DISSCRAMBLE		BIT(3)
+#define DWC3_GCTL_U2EXIT_LFPS		BIT(2)
+#define DWC3_GCTL_GBLHIBERNATIONEN	BIT(1)
+#define DWC3_GCTL_DSBLCLKGTNG		BIT(0)
+
+/* Global User Control Register */
+#define DWC3_GUCTL_HSTINAUTORETRY	BIT(14)
+
+/* Global User Control 1 Register */
+#define DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS	BIT(28)
+#define DWC3_GUCTL1_DEV_L1_EXIT_BY_HW	BIT(24)
+
+/* Global Status Register */
+#define DWC3_GSTS_OTG_IP	BIT(10)
+#define DWC3_GSTS_BC_IP		BIT(9)
+#define DWC3_GSTS_ADP_IP	BIT(8)
+#define DWC3_GSTS_HOST_IP	BIT(7)
+#define DWC3_GSTS_DEVICE_IP	BIT(6)
+#define DWC3_GSTS_CSR_TIMEOUT	BIT(5)
+#define DWC3_GSTS_BUS_ERR_ADDR_VLD	BIT(4)
+#define DWC3_GSTS_CURMOD(n)	((n) & 0x3)
+#define DWC3_GSTS_CURMOD_DEVICE	0
+#define DWC3_GSTS_CURMOD_HOST	1
+
+/* Global USB2 PHY Configuration Register */
+#define DWC3_GUSB2PHYCFG_PHYSOFTRST	BIT(31)
+#define DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS	BIT(30)
+#define DWC3_GUSB2PHYCFG_SUSPHY		BIT(6)
+#define DWC3_GUSB2PHYCFG_ULPI_UTMI	BIT(4)
+#define DWC3_GUSB2PHYCFG_ENBLSLPM	BIT(8)
+#define DWC3_GUSB2PHYCFG_PHYIF(n)	(n << 3)
+#define DWC3_GUSB2PHYCFG_PHYIF_MASK	DWC3_GUSB2PHYCFG_PHYIF(1)
+#define DWC3_GUSB2PHYCFG_USBTRDTIM(n)	(n << 10)
+#define DWC3_GUSB2PHYCFG_USBTRDTIM_MASK	DWC3_GUSB2PHYCFG_USBTRDTIM(0xf)
+#define USBTRDTIM_UTMI_8_BIT		9
+#define USBTRDTIM_UTMI_16_BIT		5
+#define UTMI_PHYIF_16_BIT		1
+#define UTMI_PHYIF_8_BIT		0
+
+/* Global USB2 PHY Vendor Control Register */
+#define DWC3_GUSB2PHYACC_NEWREGREQ	BIT(25)
+#define DWC3_GUSB2PHYACC_BUSY		BIT(23)
+#define DWC3_GUSB2PHYACC_WRITE		BIT(22)
+#define DWC3_GUSB2PHYACC_ADDR(n)	(n << 16)
+#define DWC3_GUSB2PHYACC_EXTEND_ADDR(n)	(n << 8)
+#define DWC3_GUSB2PHYACC_DATA(n)	(n & 0xff)
+
+/* Global USB3 PIPE Control Register */
+#define DWC3_GUSB3PIPECTL_PHYSOFTRST	BIT(31)
+#define DWC3_GUSB3PIPECTL_U2SSINP3OK	BIT(29)
+#define DWC3_GUSB3PIPECTL_DISRXDETINP3	BIT(28)
+#define DWC3_GUSB3PIPECTL_UX_EXIT_PX	BIT(27)
+#define DWC3_GUSB3PIPECTL_REQP1P2P3	BIT(24)
+#define DWC3_GUSB3PIPECTL_DEP1P2P3(n)	((n) << 19)
+#define DWC3_GUSB3PIPECTL_DEP1P2P3_MASK	DWC3_GUSB3PIPECTL_DEP1P2P3(7)
+#define DWC3_GUSB3PIPECTL_DEP1P2P3_EN	DWC3_GUSB3PIPECTL_DEP1P2P3(1)
+#define DWC3_GUSB3PIPECTL_DEPOCHANGE	BIT(18)
+#define DWC3_GUSB3PIPECTL_SUSPHY	BIT(17)
+#define DWC3_GUSB3PIPECTL_LFPSFILT	BIT(9)
+#define DWC3_GUSB3PIPECTL_RX_DETOPOLL	BIT(8)
+#define DWC3_GUSB3PIPECTL_TX_DEEPH_MASK	DWC3_GUSB3PIPECTL_TX_DEEPH(3)
+#define DWC3_GUSB3PIPECTL_TX_DEEPH(n)	((n) << 1)
+
+/* Global TX Fifo Size Register */
+#define DWC31_GTXFIFOSIZ_TXFRAMNUM	BIT(15)		/* DWC_usb31 only */
+#define DWC31_GTXFIFOSIZ_TXFDEF(n)	((n) & 0x7fff)	/* DWC_usb31 only */
+#define DWC3_GTXFIFOSIZ_TXFDEF(n)	((n) & 0xffff)
+#define DWC3_GTXFIFOSIZ_TXFSTADDR(n)	((n) & 0xffff0000)
+
+/* Global Event Size Registers */
+#define DWC3_GEVNTSIZ_INTMASK		BIT(31)
+#define DWC3_GEVNTSIZ_SIZE(n)		((n) & 0xffff)
+
+/* Global HWPARAMS0 Register */
+#define DWC3_GHWPARAMS0_MODE(n)		((n) & 0x3)
+#define DWC3_GHWPARAMS0_MODE_GADGET	0
+#define DWC3_GHWPARAMS0_MODE_HOST	1
+#define DWC3_GHWPARAMS0_MODE_DRD	2
+#define DWC3_GHWPARAMS0_MBUS_TYPE(n)	(((n) >> 3) & 0x7)
+#define DWC3_GHWPARAMS0_SBUS_TYPE(n)	(((n) >> 6) & 0x3)
+#define DWC3_GHWPARAMS0_MDWIDTH(n)	(((n) >> 8) & 0xff)
+#define DWC3_GHWPARAMS0_SDWIDTH(n)	(((n) >> 16) & 0xff)
+#define DWC3_GHWPARAMS0_AWIDTH(n)	(((n) >> 24) & 0xff)
+
+/* Global HWPARAMS1 Register */
+#define DWC3_GHWPARAMS1_EN_PWROPT(n)	(((n) & (3 << 24)) >> 24)
+#define DWC3_GHWPARAMS1_EN_PWROPT_NO	0
+#define DWC3_GHWPARAMS1_EN_PWROPT_CLK	1
+#define DWC3_GHWPARAMS1_EN_PWROPT_HIB	2
+#define DWC3_GHWPARAMS1_PWROPT(n)	((n) << 24)
+#define DWC3_GHWPARAMS1_PWROPT_MASK	DWC3_GHWPARAMS1_PWROPT(3)
+#define DWC3_GHWPARAMS1_ENDBC		BIT(31)
+
+/* Global HWPARAMS3 Register */
+#define DWC3_GHWPARAMS3_SSPHY_IFC(n)		((n) & 3)
+#define DWC3_GHWPARAMS3_SSPHY_IFC_DIS		0
+#define DWC3_GHWPARAMS3_SSPHY_IFC_GEN1		1
+#define DWC3_GHWPARAMS3_SSPHY_IFC_GEN2		2 /* DWC_usb31 only */
+#define DWC3_GHWPARAMS3_HSPHY_IFC(n)		(((n) & (3 << 2)) >> 2)
+#define DWC3_GHWPARAMS3_HSPHY_IFC_DIS		0
+#define DWC3_GHWPARAMS3_HSPHY_IFC_UTMI		1
+#define DWC3_GHWPARAMS3_HSPHY_IFC_ULPI		2
+#define DWC3_GHWPARAMS3_HSPHY_IFC_UTMI_ULPI	3
+#define DWC3_GHWPARAMS3_FSPHY_IFC(n)		(((n) & (3 << 4)) >> 4)
+#define DWC3_GHWPARAMS3_FSPHY_IFC_DIS		0
+#define DWC3_GHWPARAMS3_FSPHY_IFC_ENA		1
+
+/* Global HWPARAMS4 Register */
+#define DWC3_GHWPARAMS4_HIBER_SCRATCHBUFS(n)	(((n) & (0x0f << 13)) >> 13)
+#define DWC3_MAX_HIBER_SCRATCHBUFS		15
+
+/* Global HWPARAMS6 Register */
+#define DWC3_GHWPARAMS6_BCSUPPORT		BIT(14)
+#define DWC3_GHWPARAMS6_OTG3SUPPORT		BIT(13)
+#define DWC3_GHWPARAMS6_ADPSUPPORT		BIT(12)
+#define DWC3_GHWPARAMS6_HNPSUPPORT		BIT(11)
+#define DWC3_GHWPARAMS6_SRPSUPPORT		BIT(10)
+#define DWC3_GHWPARAMS6_EN_FPGA			BIT(7)
+
+/* Global HWPARAMS7 Register */
+#define DWC3_GHWPARAMS7_RAM1_DEPTH(n)	((n) & 0xffff)
+#define DWC3_GHWPARAMS7_RAM2_DEPTH(n)	(((n) >> 16) & 0xffff)
+
+/* Global Frame Length Adjustment Register */
+#define DWC3_GFLADJ_30MHZ_SDBND_SEL		BIT(7)
+#define DWC3_GFLADJ_30MHZ_MASK			0x3f
+
+/* Global User Control Register 2 */
+#define DWC3_GUCTL2_RST_ACTBITLATER		BIT(14)
+
+/* Device Configuration Register */
+#define DWC3_DCFG_DEVADDR(addr)	((addr) << 3)
+#define DWC3_DCFG_DEVADDR_MASK	DWC3_DCFG_DEVADDR(0x7f)
+
+#define DWC3_DCFG_SPEED_MASK	(7 << 0)
+#define DWC3_DCFG_SUPERSPEED_PLUS (5 << 0)  /* DWC_usb31 only */
+#define DWC3_DCFG_SUPERSPEED	(4 << 0)
+#define DWC3_DCFG_HIGHSPEED	(0 << 0)
+#define DWC3_DCFG_FULLSPEED	BIT(0)
+#define DWC3_DCFG_LOWSPEED	(2 << 0)
+
+#define DWC3_DCFG_NUMP_SHIFT	17
+#define DWC3_DCFG_NUMP(n)	(((n) >> DWC3_DCFG_NUMP_SHIFT) & 0x1f)
+#define DWC3_DCFG_NUMP_MASK	(0x1f << DWC3_DCFG_NUMP_SHIFT)
+#define DWC3_DCFG_LPM_CAP	BIT(22)
+
+/* Device Control Register */
+#define DWC3_DCTL_RUN_STOP	BIT(31)
+#define DWC3_DCTL_CSFTRST	BIT(30)
+#define DWC3_DCTL_LSFTRST	BIT(29)
+
+#define DWC3_DCTL_HIRD_THRES_MASK	(0x1f << 24)
+#define DWC3_DCTL_HIRD_THRES(n)	((n) << 24)
+
+#define DWC3_DCTL_APPL1RES	BIT(23)
+
+/* These apply for core versions 1.87a and earlier */
+#define DWC3_DCTL_TRGTULST_MASK		(0x0f << 17)
+#define DWC3_DCTL_TRGTULST(n)		((n) << 17)
+#define DWC3_DCTL_TRGTULST_U2		(DWC3_DCTL_TRGTULST(2))
+#define DWC3_DCTL_TRGTULST_U3		(DWC3_DCTL_TRGTULST(3))
+#define DWC3_DCTL_TRGTULST_SS_DIS	(DWC3_DCTL_TRGTULST(4))
+#define DWC3_DCTL_TRGTULST_RX_DET	(DWC3_DCTL_TRGTULST(5))
+#define DWC3_DCTL_TRGTULST_SS_INACT	(DWC3_DCTL_TRGTULST(6))
+
+/* These apply for core versions 1.94a and later */
+#define DWC3_DCTL_LPM_ERRATA_MASK	DWC3_DCTL_LPM_ERRATA(0xf)
+#define DWC3_DCTL_LPM_ERRATA(n)		((n) << 20)
+
+#define DWC3_DCTL_KEEP_CONNECT		BIT(19)
+#define DWC3_DCTL_L1_HIBER_EN		BIT(18)
+#define DWC3_DCTL_CRS			BIT(17)
+#define DWC3_DCTL_CSS			BIT(16)
+
+#define DWC3_DCTL_INITU2ENA		BIT(12)
+#define DWC3_DCTL_ACCEPTU2ENA		BIT(11)
+#define DWC3_DCTL_INITU1ENA		BIT(10)
+#define DWC3_DCTL_ACCEPTU1ENA		BIT(9)
+#define DWC3_DCTL_TSTCTRL_MASK		(0xf << 1)
+
+#define DWC3_DCTL_ULSTCHNGREQ_MASK	(0x0f << 5)
+#define DWC3_DCTL_ULSTCHNGREQ(n) (((n) << 5) & DWC3_DCTL_ULSTCHNGREQ_MASK)
+
+#define DWC3_DCTL_ULSTCHNG_NO_ACTION	(DWC3_DCTL_ULSTCHNGREQ(0))
+#define DWC3_DCTL_ULSTCHNG_SS_DISABLED	(DWC3_DCTL_ULSTCHNGREQ(4))
+#define DWC3_DCTL_ULSTCHNG_RX_DETECT	(DWC3_DCTL_ULSTCHNGREQ(5))
+#define DWC3_DCTL_ULSTCHNG_SS_INACTIVE	(DWC3_DCTL_ULSTCHNGREQ(6))
+#define DWC3_DCTL_ULSTCHNG_RECOVERY	(DWC3_DCTL_ULSTCHNGREQ(8))
+#define DWC3_DCTL_ULSTCHNG_COMPLIANCE	(DWC3_DCTL_ULSTCHNGREQ(10))
+#define DWC3_DCTL_ULSTCHNG_LOOPBACK	(DWC3_DCTL_ULSTCHNGREQ(11))
+
+/* Device Event Enable Register */
+#define DWC3_DEVTEN_VNDRDEVTSTRCVEDEN	BIT(12)
+#define DWC3_DEVTEN_EVNTOVERFLOWEN	BIT(11)
+#define DWC3_DEVTEN_CMDCMPLTEN		BIT(10)
+#define DWC3_DEVTEN_ERRTICERREN		BIT(9)
+#define DWC3_DEVTEN_SOFEN		BIT(7)
+#define DWC3_DEVTEN_EOPFEN		BIT(6)
+#define DWC3_DEVTEN_HIBERNATIONREQEVTEN	BIT(5)
+#define DWC3_DEVTEN_WKUPEVTEN		BIT(4)
+#define DWC3_DEVTEN_ULSTCNGEN		BIT(3)
+#define DWC3_DEVTEN_CONNECTDONEEN	BIT(2)
+#define DWC3_DEVTEN_USBRSTEN		BIT(1)
+#define DWC3_DEVTEN_DISCONNEVTEN	BIT(0)
+
+/* Device Status Register */
+#define DWC3_DSTS_DCNRD			BIT(29)
+
+/* This applies for core versions 1.87a and earlier */
+#define DWC3_DSTS_PWRUPREQ		BIT(24)
+
+/* These apply for core versions 1.94a and later */
+#define DWC3_DSTS_RSS			BIT(25)
+#define DWC3_DSTS_SSS			BIT(24)
+
+#define DWC3_DSTS_COREIDLE		BIT(23)
+#define DWC3_DSTS_DEVCTRLHLT		BIT(22)
+
+#define DWC3_DSTS_USBLNKST_MASK		(0x0f << 18)
+#define DWC3_DSTS_USBLNKST(n)		(((n) & DWC3_DSTS_USBLNKST_MASK) >> 18)
+
+#define DWC3_DSTS_RXFIFOEMPTY		BIT(17)
+
+#define DWC3_DSTS_SOFFN_MASK		(0x3fff << 3)
+#define DWC3_DSTS_SOFFN(n)		(((n) & DWC3_DSTS_SOFFN_MASK) >> 3)
+
+#define DWC3_DSTS_CONNECTSPD		(7 << 0)
+
+#define DWC3_DSTS_SUPERSPEED_PLUS	(5 << 0) /* DWC_usb31 only */
+#define DWC3_DSTS_SUPERSPEED		(4 << 0)
+#define DWC3_DSTS_HIGHSPEED		(0 << 0)
+#define DWC3_DSTS_FULLSPEED		BIT(0)
+#define DWC3_DSTS_LOWSPEED		(2 << 0)
+
+/* Device Generic Command Register */
+#define DWC3_DGCMD_SET_LMP		0x01
+#define DWC3_DGCMD_SET_PERIODIC_PAR	0x02
+#define DWC3_DGCMD_XMIT_FUNCTION	0x03
+
+/* These apply for core versions 1.94a and later */
+#define DWC3_DGCMD_SET_SCRATCHPAD_ADDR_LO	0x04
+#define DWC3_DGCMD_SET_SCRATCHPAD_ADDR_HI	0x05
+
+#define DWC3_DGCMD_SELECTED_FIFO_FLUSH	0x09
+#define DWC3_DGCMD_ALL_FIFO_FLUSH	0x0a
+#define DWC3_DGCMD_SET_ENDPOINT_NRDY	0x0c
+#define DWC3_DGCMD_RUN_SOC_BUS_LOOPBACK	0x10
+
+#define DWC3_DGCMD_STATUS(n)		(((n) >> 12) & 0x0F)
+#define DWC3_DGCMD_CMDACT		BIT(10)
+#define DWC3_DGCMD_CMDIOC		BIT(8)
+
+/* Device Generic Command Parameter Register */
+#define DWC3_DGCMDPAR_FORCE_LINKPM_ACCEPT	BIT(0)
+#define DWC3_DGCMDPAR_FIFO_NUM(n)		((n) << 0)
+#define DWC3_DGCMDPAR_RX_FIFO			(0 << 5)
+#define DWC3_DGCMDPAR_TX_FIFO			BIT(5)
+#define DWC3_DGCMDPAR_LOOPBACK_DIS		(0 << 0)
+#define DWC3_DGCMDPAR_LOOPBACK_ENA		BIT(0)
+
+/* Device Endpoint Command Register */
+#define DWC3_DEPCMD_PARAM_SHIFT		16
+#define DWC3_DEPCMD_PARAM(x)		((x) << DWC3_DEPCMD_PARAM_SHIFT)
+#define DWC3_DEPCMD_GET_RSC_IDX(x)	(((x) >> DWC3_DEPCMD_PARAM_SHIFT) & 0x7f)
+#define DWC3_DEPCMD_STATUS(x)		(((x) >> 12) & 0x0F)
+#define DWC3_DEPCMD_HIPRI_FORCERM	BIT(11)
+#define DWC3_DEPCMD_CLEARPENDIN		BIT(11)
+#define DWC3_DEPCMD_CMDACT		BIT(10)
+#define DWC3_DEPCMD_CMDIOC		BIT(8)
+
+#define DWC3_DEPCMD_DEPSTARTCFG		(0x09 << 0)
+#define DWC3_DEPCMD_ENDTRANSFER		(0x08 << 0)
+#define DWC3_DEPCMD_UPDATETRANSFER	(0x07 << 0)
+#define DWC3_DEPCMD_STARTTRANSFER	(0x06 << 0)
+#define DWC3_DEPCMD_CLEARSTALL		(0x05 << 0)
+#define DWC3_DEPCMD_SETSTALL		(0x04 << 0)
+/* This applies for core versions 1.90a and earlier */
+#define DWC3_DEPCMD_GETSEQNUMBER	(0x03 << 0)
+/* This applies for core versions 1.94a and later */
+#define DWC3_DEPCMD_GETEPSTATE		(0x03 << 0)
+#define DWC3_DEPCMD_SETTRANSFRESOURCE	(0x02 << 0)
+#define DWC3_DEPCMD_SETEPCONFIG		(0x01 << 0)
+
+#define DWC3_DEPCMD_CMD(x)		((x) & 0xf)
+
+/* The EP number goes 0..31 so ep0 is always out and ep1 is always in */
+#define DWC3_DALEPENA_EP(n)		BIT(n)
+
+#define DWC3_DEPCMD_TYPE_CONTROL	0
+#define DWC3_DEPCMD_TYPE_ISOC		1
+#define DWC3_DEPCMD_TYPE_BULK		2
+#define DWC3_DEPCMD_TYPE_INTR		3
+
+#define DWC3_DEV_IMOD_COUNT_SHIFT	16
+#define DWC3_DEV_IMOD_COUNT_MASK	(0xffff << 16)
+#define DWC3_DEV_IMOD_INTERVAL_SHIFT	0
+#define DWC3_DEV_IMOD_INTERVAL_MASK	(0xffff << 0)
+
+/* OTG Configuration Register */
+#define DWC3_OCFG_DISPWRCUTTOFF		BIT(5)
+#define DWC3_OCFG_HIBDISMASK		BIT(4)
+#define DWC3_OCFG_SFTRSTMASK		BIT(3)
+#define DWC3_OCFG_OTGVERSION		BIT(2)
+#define DWC3_OCFG_HNPCAP		BIT(1)
+#define DWC3_OCFG_SRPCAP		BIT(0)
+
+/* OTG CTL Register */
+#define DWC3_OCTL_OTG3GOERR		BIT(7)
+#define DWC3_OCTL_PERIMODE		BIT(6)
+#define DWC3_OCTL_PRTPWRCTL		BIT(5)
+#define DWC3_OCTL_HNPREQ		BIT(4)
+#define DWC3_OCTL_SESREQ		BIT(3)
+#define DWC3_OCTL_TERMSELIDPULSE	BIT(2)
+#define DWC3_OCTL_DEVSETHNPEN		BIT(1)
+#define DWC3_OCTL_HSTSETHNPEN		BIT(0)
+
+/* OTG Event Register */
+#define DWC3_OEVT_DEVICEMODE		BIT(31)
+#define DWC3_OEVT_XHCIRUNSTPSET		BIT(27)
+#define DWC3_OEVT_DEVRUNSTPSET		BIT(26)
+#define DWC3_OEVT_HIBENTRY		BIT(25)
+#define DWC3_OEVT_CONIDSTSCHNG		BIT(24)
+#define DWC3_OEVT_HRRCONFNOTIF		BIT(23)
+#define DWC3_OEVT_HRRINITNOTIF		BIT(22)
+#define DWC3_OEVT_ADEVIDLE		BIT(21)
+#define DWC3_OEVT_ADEVBHOSTEND		BIT(20)
+#define DWC3_OEVT_ADEVHOST		BIT(19)
+#define DWC3_OEVT_ADEVHNPCHNG		BIT(18)
+#define DWC3_OEVT_ADEVSRPDET		BIT(17)
+#define DWC3_OEVT_ADEVSESSENDDET	BIT(16)
+#define DWC3_OEVT_BDEVBHOSTEND		BIT(11)
+#define DWC3_OEVT_BDEVHNPCHNG		BIT(10)
+#define DWC3_OEVT_BDEVSESSVLDDET	BIT(9)
+#define DWC3_OEVT_BDEVVBUSCHNG		BIT(8)
+#define DWC3_OEVT_BSESSVLD		BIT(3)
+#define DWC3_OEVT_HSTNEGSTS		BIT(2)
+#define DWC3_OEVT_SESREQSTS		BIT(1)
+#define DWC3_OEVT_ERROR			BIT(0)
+
+/* OTG Event Enable Register */
+#define DWC3_OEVTEN_XHCIRUNSTPSETEN	BIT(27)
+#define DWC3_OEVTEN_DEVRUNSTPSETEN	BIT(26)
+#define DWC3_OEVTEN_HIBENTRYEN		BIT(25)
+#define DWC3_OEVTEN_CONIDSTSCHNGEN	BIT(24)
+#define DWC3_OEVTEN_HRRCONFNOTIFEN	BIT(23)
+#define DWC3_OEVTEN_HRRINITNOTIFEN	BIT(22)
+#define DWC3_OEVTEN_ADEVIDLEEN		BIT(21)
+#define DWC3_OEVTEN_ADEVBHOSTENDEN	BIT(20)
+#define DWC3_OEVTEN_ADEVHOSTEN		BIT(19)
+#define DWC3_OEVTEN_ADEVHNPCHNGEN	BIT(18)
+#define DWC3_OEVTEN_ADEVSRPDETEN	BIT(17)
+#define DWC3_OEVTEN_ADEVSESSENDDETEN	BIT(16)
+#define DWC3_OEVTEN_BDEVBHOSTENDEN	BIT(11)
+#define DWC3_OEVTEN_BDEVHNPCHNGEN	BIT(10)
+#define DWC3_OEVTEN_BDEVSESSVLDDETEN	BIT(9)
+#define DWC3_OEVTEN_BDEVVBUSCHNGEN	BIT(8)
+
+/* OTG Status Register */
+#define DWC3_OSTS_DEVRUNSTP		BIT(13)
+#define DWC3_OSTS_XHCIRUNSTP		BIT(12)
+#define DWC3_OSTS_PERIPHERALSTATE	BIT(4)
+#define DWC3_OSTS_XHCIPRTPOWER		BIT(3)
+#define DWC3_OSTS_BSESVLD		BIT(2)
+#define DWC3_OSTS_VBUSVLD		BIT(1)
+#define DWC3_OSTS_CONIDSTS		BIT(0)
+
+/* Structures */
+
+struct dwc3_trb;
+
+#define DWC3_EP_FLAG_STALLED	BIT(0)
+#define DWC3_EP_FLAG_WEDGED	BIT(1)
+
+#define DWC3_EP_DIRECTION_TX	true
+#define DWC3_EP_DIRECTION_RX	false
+
+#define DWC3_TRB_NUM		256
+
+enum dwc3_phy {
+	DWC3_PHY_UNKNOWN = 0,
+	DWC3_PHY_USB3,
+	DWC3_PHY_USB2,
+};
+
+enum dwc3_ep0_next {
+	DWC3_EP0_UNKNOWN = 0,
+	DWC3_EP0_COMPLETE,
+	DWC3_EP0_NRDY_DATA,
+	DWC3_EP0_NRDY_STATUS,
+};
+
+enum dwc3_ep0_state {
+	EP0_UNCONNECTED		= 0,
+	EP0_SETUP_PHASE,
+	EP0_DATA_PHASE,
+	EP0_STATUS_PHASE,
+};
+
+enum dwc3_link_state {
+	/* In SuperSpeed */
+	DWC3_LINK_STATE_U0		= 0x00, /* in HS, means ON */
+	DWC3_LINK_STATE_U1		= 0x01,
+	DWC3_LINK_STATE_U2		= 0x02, /* in HS, means SLEEP */
+	DWC3_LINK_STATE_U3		= 0x03, /* in HS, means SUSPEND */
+	DWC3_LINK_STATE_SS_DIS		= 0x04,
+	DWC3_LINK_STATE_RX_DET		= 0x05, /* in HS, means Early Suspend */
+	DWC3_LINK_STATE_SS_INACT	= 0x06,
+	DWC3_LINK_STATE_POLL		= 0x07,
+	DWC3_LINK_STATE_RECOV		= 0x08,
+	DWC3_LINK_STATE_HRESET		= 0x09,
+	DWC3_LINK_STATE_CMPLY		= 0x0a,
+	DWC3_LINK_STATE_LPBK		= 0x0b,
+	DWC3_LINK_STATE_RESET		= 0x0e,
+	DWC3_LINK_STATE_RESUME		= 0x0f,
+	DWC3_LINK_STATE_MASK		= 0x0f,
+};
+
+/* TRB Length, PCM and Status */
+#define DWC3_TRB_SIZE_MASK	(0x00ffffff)
+#define DWC3_TRB_SIZE_LENGTH(n)	((n) & DWC3_TRB_SIZE_MASK)
+#define DWC3_TRB_SIZE_PCM1(n)	(((n) & 0x03) << 24)
+#define DWC3_TRB_SIZE_TRBSTS(n)	(((n) & (0x0f << 28)) >> 28)
+
+#define DWC3_TRBSTS_OK			0
+#define DWC3_TRBSTS_MISSED_ISOC		1
+#define DWC3_TRBSTS_SETUP_PENDING	2
+#define DWC3_TRB_STS_XFER_IN_PROG	4
+
+/* TRB Control */
+#define DWC3_TRB_CTRL_HWO		BIT(0)
+#define DWC3_TRB_CTRL_LST		BIT(1)
+#define DWC3_TRB_CTRL_CHN		BIT(2)
+#define DWC3_TRB_CTRL_CSP		BIT(3)
+#define DWC3_TRB_CTRL_TRBCTL(n)		(((n) & 0x3f) << 4)
+#define DWC3_TRB_CTRL_ISP_IMI		BIT(10)
+#define DWC3_TRB_CTRL_IOC		BIT(11)
+#define DWC3_TRB_CTRL_SID_SOFN(n)	(((n) & 0xffff) << 14)
+#define DWC3_TRB_CTRL_GET_SID_SOFN(n)	(((n) & (0xffff << 14)) >> 14)
+
+#define DWC3_TRBCTL_TYPE(n)		((n) & (0x3f << 4))
+#define DWC3_TRBCTL_NORMAL		DWC3_TRB_CTRL_TRBCTL(1)
+#define DWC3_TRBCTL_CONTROL_SETUP	DWC3_TRB_CTRL_TRBCTL(2)
+#define DWC3_TRBCTL_CONTROL_STATUS2	DWC3_TRB_CTRL_TRBCTL(3)
+#define DWC3_TRBCTL_CONTROL_STATUS3	DWC3_TRB_CTRL_TRBCTL(4)
+#define DWC3_TRBCTL_CONTROL_DATA	DWC3_TRB_CTRL_TRBCTL(5)
+#define DWC3_TRBCTL_ISOCHRONOUS_FIRST	DWC3_TRB_CTRL_TRBCTL(6)
+#define DWC3_TRBCTL_ISOCHRONOUS		DWC3_TRB_CTRL_TRBCTL(7)
+#define DWC3_TRBCTL_LINK_TRB		DWC3_TRB_CTRL_TRBCTL(8)
+
+/**
+ * struct dwc3_trb - transfer request block (hw format)
+ * @bpl: DW0-3
+ * @bph: DW4-7
+ * @size: DW8-B
+ * @ctrl: DWC-F
+ */
+struct dwc3_trb {
+	u32		bpl;
+	u32		bph;
+	u32		size;
+	u32		ctrl;
+} __packed;
+
+/**
+ * struct dwc3_hwparams - copy of HWPARAMS registers
+ * @hwparams0: GHWPARAMS0
+ * @hwparams1: GHWPARAMS1
+ * @hwparams2: GHWPARAMS2
+ * @hwparams3: GHWPARAMS3
+ * @hwparams4: GHWPARAMS4
+ * @hwparams5: GHWPARAMS5
+ * @hwparams6: GHWPARAMS6
+ * @hwparams7: GHWPARAMS7
+ * @hwparams8: GHWPARAMS8
+ */
+struct dwc3_hwparams {
+	u32	hwparams0;
+	u32	hwparams1;
+	u32	hwparams2;
+	u32	hwparams3;
+	u32	hwparams4;
+	u32	hwparams5;
+	u32	hwparams6;
+	u32	hwparams7;
+	u32	hwparams8;
+};
+
+/* HWPARAMS0 */
+#define DWC3_MODE(n)		((n) & 0x7)
+
+#define DWC3_MDWIDTH(n)		(((n) & 0xff00) >> 8)
+
+/* HWPARAMS1 */
+#define DWC3_NUM_INT(n)		(((n) & (0x3f << 15)) >> 15)
+
+/* HWPARAMS3 */
+#define DWC3_NUM_IN_EPS_MASK	(0x1f << 18)
+#define DWC3_NUM_EPS_MASK	(0x3f << 12)
+#define DWC3_NUM_EPS(p)		(((p)->hwparams3 &		\
+			(DWC3_NUM_EPS_MASK)) >> 12)
+#define DWC3_NUM_IN_EPS(p)	(((p)->hwparams3 &		\
+			(DWC3_NUM_IN_EPS_MASK)) >> 18)
+
+/* HWPARAMS7 */
+#define DWC3_RAM1_DEPTH(n)	((n) & 0xffff)
+
+/**
+ * struct dwc3 - representation of our controller
+ * @drd_work: workqueue used for role swapping
+ * @ep0_trb: trb which is used for the ctrl_req
+ * @bounce: address of bounce buffer
+ * @scratchbuf: address of scratch buffer
+ * @setup_buf: used while precessing STD USB requests
+ * @ep0_trb_addr: dma address of @ep0_trb
+ * @bounce_addr: dma address of @bounce
+ * @ep0_usb_req: dummy req used while handling STD USB requests
+ * @scratch_addr: dma address of scratchbuf
+ * @ep0_in_setup: one control transfer is completed and enter setup phase
+ * @lock: for synchronizing
+ * @dev: pointer to our struct device
+ * @sysdev: pointer to the DMA-capable device
+ * @xhci: pointer to our xHCI child
+ * @xhci_resources: struct resources for our @xhci child
+ * @ev_buf: struct dwc3_event_buffer pointer
+ * @eps: endpoint array
+ * @gadget: device side representation of the peripheral controller
+ * @gadget_driver: pointer to the gadget driver
+ * @clks: array of clocks
+ * @num_clks: number of clocks
+ * @reset: reset control
+ * @regs: base address for our registers
+ * @regs_size: address space size
+ * @fladj: frame length adjustment
+ * @irq_gadget: peripheral controller's IRQ number
+ * @otg_irq: IRQ number for OTG IRQs
+ * @current_otg_role: current role of operation while using the OTG block
+ * @desired_otg_role: desired role of operation while using the OTG block
+ * @otg_restart_host: flag that OTG controller needs to restart host
+ * @nr_scratch: number of scratch buffers
+ * @u1u2: only used on revisions <1.83a for workaround
+ * @maximum_speed: maximum speed requested (mainly for testing purposes)
+ * @revision: revision register contents
+ * @version_type: VERSIONTYPE register contents, a sub release of a revision
+ * @dr_mode: requested mode of operation
+ * @current_dr_role: current role of operation when in dual-role mode
+ * @desired_dr_role: desired role of operation when in dual-role mode
+ * @edev: extcon handle
+ * @edev_nb: extcon notifier
+ * @hsphy_mode: UTMI phy mode, one of following:
+ *		- USBPHY_INTERFACE_MODE_UTMI
+ *		- USBPHY_INTERFACE_MODE_UTMIW
+ * @usb2_phy: pointer to USB2 PHY
+ * @usb3_phy: pointer to USB3 PHY
+ * @usb2_generic_phy: pointer to USB2 PHY
+ * @usb3_generic_phy: pointer to USB3 PHY
+ * @phys_ready: flag to indicate that PHYs are ready
+ * @ulpi: pointer to ulpi interface
+ * @ulpi_ready: flag to indicate that ULPI is initialized
+ * @u2sel: parameter from Set SEL request.
+ * @u2pel: parameter from Set SEL request.
+ * @u1sel: parameter from Set SEL request.
+ * @u1pel: parameter from Set SEL request.
+ * @num_eps: number of endpoints
+ * @ep0_next_event: hold the next expected event
+ * @ep0state: state of endpoint zero
+ * @link_state: link state
+ * @speed: device speed (super, high, full, low)
+ * @hwparams: copy of hwparams registers
+ * @root: debugfs root folder pointer
+ * @regset: debugfs pointer to regdump file
+ * @dbg_lsp_select: current debug lsp mux register selection
+ * @test_mode: true when we're entering a USB test mode
+ * @test_mode_nr: test feature selector
+ * @lpm_nyet_threshold: LPM NYET response threshold
+ * @hird_threshold: HIRD threshold
+ * @rx_thr_num_pkt_prd: periodic ESS receive packet count
+ * @rx_max_burst_prd: max periodic ESS receive burst size
+ * @tx_thr_num_pkt_prd: periodic ESS transmit packet count
+ * @tx_max_burst_prd: max periodic ESS transmit burst size
+ * @hsphy_interface: "utmi" or "ulpi"
+ * @connected: true when we're connected to a host, false otherwise
+ * @delayed_status: true when gadget driver asks for delayed status
+ * @ep0_bounced: true when we used bounce buffer
+ * @ep0_expect_in: true when we expect a DATA IN transfer
+ * @has_hibernation: true when dwc3 was configured with Hibernation
+ * @sysdev_is_parent: true when dwc3 device has a parent driver
+ * @has_lpm_erratum: true when core was configured with LPM Erratum. Note that
+ *			there's now way for software to detect this in runtime.
+ * @is_utmi_l1_suspend: the core asserts output signal
+ * 	0	- utmi_sleep_n
+ * 	1	- utmi_l1_suspend_n
+ * @is_fpga: true when we are using the FPGA board
+ * @pending_events: true when we have pending IRQs to be handled
+ * @pullups_connected: true when Run/Stop bit is set
+ * @setup_packet_pending: true when there's a Setup Packet in FIFO. Workaround
+ * @three_stage_setup: set if we perform a three phase setup
+ * @dis_start_transfer_quirk: set if start_transfer failure SW workaround is
+ *			not needed for DWC_usb31 version 1.70a-ea06 and below
+ * @usb3_lpm_capable: set if hadrware supports Link Power Management
+ * @usb2_lpm_disable: set to disable usb2 lpm
+ * @disable_scramble_quirk: set if we enable the disable scramble quirk
+ * @u2exit_lfps_quirk: set if we enable u2exit lfps quirk
+ * @u2ss_inp3_quirk: set if we enable P3 OK for U2/SS Inactive quirk
+ * @req_p1p2p3_quirk: set if we enable request p1p2p3 quirk
+ * @del_p1p2p3_quirk: set if we enable delay p1p2p3 quirk
+ * @del_phy_power_chg_quirk: set if we enable delay phy power change quirk
+ * @lfps_filter_quirk: set if we enable LFPS filter quirk
+ * @rx_detect_poll_quirk: set if we enable rx_detect to polling lfps quirk
+ * @dis_u3_susphy_quirk: set if we disable usb3 suspend phy
+ * @dis_u2_susphy_quirk: set if we disable usb2 suspend phy
+ * @dis_enblslpm_quirk: set if we clear enblslpm in GUSB2PHYCFG,
+ *                      disabling the suspend signal to the PHY.
+ * @dis_rxdet_inp3_quirk: set if we disable Rx.Detect in P3
+ * @dis_u2_freeclk_exists_quirk : set if we clear u2_freeclk_exists
+ *			in GUSB2PHYCFG, specify that USB2 PHY doesn't
+ *			provide a free-running PHY clock.
+ * @dis_del_phy_power_chg_quirk: set if we disable delay phy power
+ *			change quirk.
+ * @dis_tx_ipgap_linecheck_quirk: set if we disable u2mac linestate
+ *			check during HS transmit.
+ * @tx_de_emphasis_quirk: set if we enable Tx de-emphasis quirk
+ * @tx_de_emphasis: Tx de-emphasis value
+ * 	0	- -6dB de-emphasis
+ * 	1	- -3.5dB de-emphasis
+ * 	2	- No de-emphasis
+ * 	3	- Reserved
+ * @dis_metastability_quirk: set to disable metastability quirk.
+ * @imod_interval: set the interrupt moderation interval in 250ns
+ *                 increments or 0 to disable.
+ */
+struct dwc3 {
+	struct device_d		*dev;
+	struct device_d		*xhci;
+
+	struct clk_bulk_data	*clks;
+	int			num_clks;
+
+	struct phy		*usb2_generic_phy;
+	struct phy		*usb3_generic_phy;
+
+	bool			phys_ready;
+
+	void __iomem		*regs;
+
+	enum usb_dr_mode	dr_mode;
+	u32			current_dr_role;
+	u32			desired_dr_role;
+
+	u32			fladj;
+	u32			irq_gadget;
+	u32			otg_irq;
+	u32			current_otg_role;
+	u32			desired_otg_role;
+	bool			otg_restart_host;
+	u32			nr_scratch;
+	u32			u1u2;
+	u32			maximum_speed;
+
+	/*
+	 * All 3.1 IP version constants are greater than the 3.0 IP
+	 * version constants. This works for most version checks in
+	 * dwc3. However, in the future, this may not apply as
+	 * features may be developed on newer versions of the 3.0 IP
+	 * that are not in the 3.1 IP.
+	 */
+	u32			revision;
+
+#define DWC3_REVISION_173A	0x5533173a
+#define DWC3_REVISION_175A	0x5533175a
+#define DWC3_REVISION_180A	0x5533180a
+#define DWC3_REVISION_183A	0x5533183a
+#define DWC3_REVISION_185A	0x5533185a
+#define DWC3_REVISION_187A	0x5533187a
+#define DWC3_REVISION_188A	0x5533188a
+#define DWC3_REVISION_190A	0x5533190a
+#define DWC3_REVISION_194A	0x5533194a
+#define DWC3_REVISION_200A	0x5533200a
+#define DWC3_REVISION_202A	0x5533202a
+#define DWC3_REVISION_210A	0x5533210a
+#define DWC3_REVISION_220A	0x5533220a
+#define DWC3_REVISION_230A	0x5533230a
+#define DWC3_REVISION_240A	0x5533240a
+#define DWC3_REVISION_250A	0x5533250a
+#define DWC3_REVISION_260A	0x5533260a
+#define DWC3_REVISION_270A	0x5533270a
+#define DWC3_REVISION_280A	0x5533280a
+#define DWC3_REVISION_290A	0x5533290a
+#define DWC3_REVISION_300A	0x5533300a
+#define DWC3_REVISION_310A	0x5533310a
+#define DWC3_REVISION_330A	0x5533330a
+
+/*
+ * NOTICE: we're using bit 31 as a "is usb 3.1" flag. This is really
+ * just so dwc31 revisions are always larger than dwc3.
+ */
+#define DWC3_REVISION_IS_DWC31		0x80000000
+#define DWC3_USB31_REVISION_110A	(0x3131302a | DWC3_REVISION_IS_DWC31)
+#define DWC3_USB31_REVISION_120A	(0x3132302a | DWC3_REVISION_IS_DWC31)
+#define DWC3_USB31_REVISION_160A	(0x3136302a | DWC3_REVISION_IS_DWC31)
+#define DWC3_USB31_REVISION_170A	(0x3137302a | DWC3_REVISION_IS_DWC31)
+
+	u32			version_type;
+
+#define DWC31_VERSIONTYPE_EA01		0x65613031
+#define DWC31_VERSIONTYPE_EA02		0x65613032
+#define DWC31_VERSIONTYPE_EA03		0x65613033
+#define DWC31_VERSIONTYPE_EA04		0x65613034
+#define DWC31_VERSIONTYPE_EA05		0x65613035
+#define DWC31_VERSIONTYPE_EA06		0x65613036
+
+	u16			u2sel;
+	u16			u2pel;
+	u8			u1sel;
+	u8			u1pel;
+
+	u8			speed;
+
+	u8			num_eps;
+
+	struct dwc3_hwparams	hwparams;
+
+	u32			dbg_lsp_select;
+
+	u8			test_mode;
+	u8			test_mode_nr;
+	u8			lpm_nyet_threshold;
+	u8			hird_threshold;
+	u8			rx_thr_num_pkt_prd;
+	u8			rx_max_burst_prd;
+	u8			tx_thr_num_pkt_prd;
+	u8			tx_max_burst_prd;
+
+	const char		*hsphy_interface;
+
+	unsigned		connected:1;
+	unsigned		delayed_status:1;
+	unsigned		ep0_bounced:1;
+	unsigned		ep0_expect_in:1;
+	unsigned		has_hibernation:1;
+	unsigned		sysdev_is_parent:1;
+	unsigned		has_lpm_erratum:1;
+	unsigned		is_utmi_l1_suspend:1;
+	unsigned		is_fpga:1;
+	unsigned		pending_events:1;
+	unsigned		pullups_connected:1;
+	unsigned		setup_packet_pending:1;
+	unsigned		three_stage_setup:1;
+	unsigned		dis_start_transfer_quirk:1;
+	unsigned		usb3_lpm_capable:1;
+	unsigned		usb2_lpm_disable:1;
+
+	unsigned		disable_scramble_quirk:1;
+	unsigned		u2exit_lfps_quirk:1;
+	unsigned		u2ss_inp3_quirk:1;
+	unsigned		req_p1p2p3_quirk:1;
+	unsigned                del_p1p2p3_quirk:1;
+	unsigned		del_phy_power_chg_quirk:1;
+	unsigned		lfps_filter_quirk:1;
+	unsigned		rx_detect_poll_quirk:1;
+	unsigned		dis_u3_susphy_quirk:1;
+	unsigned		dis_u2_susphy_quirk:1;
+	unsigned		dis_enblslpm_quirk:1;
+	unsigned		dis_rxdet_inp3_quirk:1;
+	unsigned		dis_u2_freeclk_exists_quirk:1;
+	unsigned		dis_del_phy_power_chg_quirk:1;
+	unsigned		dis_tx_ipgap_linecheck_quirk:1;
+
+	unsigned		tx_de_emphasis_quirk:1;
+	unsigned		tx_de_emphasis:2;
+
+	unsigned		dis_metastability_quirk:1;
+
+	u16			imod_interval;
+};
+
+#define INCRX_BURST_MODE 0
+#define INCRX_UNDEF_LENGTH_BURST_MODE 1
+
+#define work_to_dwc(w)		(container_of((w), struct dwc3, drd_work))
+
+/* -------------------------------------------------------------------------- */
+
+struct dwc3_event_type {
+	u32	is_devspec:1;
+	u32	type:7;
+	u32	reserved8_31:24;
+} __packed;
+
+#define DWC3_DEPEVT_XFERCOMPLETE	0x01
+#define DWC3_DEPEVT_XFERINPROGRESS	0x02
+#define DWC3_DEPEVT_XFERNOTREADY	0x03
+#define DWC3_DEPEVT_RXTXFIFOEVT		0x04
+#define DWC3_DEPEVT_STREAMEVT		0x06
+#define DWC3_DEPEVT_EPCMDCMPLT		0x07
+
+/**
+ * struct dwc3_event_depvt - Device Endpoint Events
+ * @one_bit: indicates this is an endpoint event (not used)
+ * @endpoint_number: number of the endpoint
+ * @endpoint_event: The event we have:
+ *	0x00	- Reserved
+ *	0x01	- XferComplete
+ *	0x02	- XferInProgress
+ *	0x03	- XferNotReady
+ *	0x04	- RxTxFifoEvt (IN->Underrun, OUT->Overrun)
+ *	0x05	- Reserved
+ *	0x06	- StreamEvt
+ *	0x07	- EPCmdCmplt
+ * @reserved11_10: Reserved, don't use.
+ * @status: Indicates the status of the event. Refer to databook for
+ *	more information.
+ * @parameters: Parameters of the current event. Refer to databook for
+ *	more information.
+ */
+struct dwc3_event_depevt {
+	u32	one_bit:1;
+	u32	endpoint_number:5;
+	u32	endpoint_event:4;
+	u32	reserved11_10:2;
+	u32	status:4;
+
+/* Within XferNotReady */
+#define DEPEVT_STATUS_TRANSFER_ACTIVE	BIT(3)
+
+/* Within XferComplete or XferInProgress */
+#define DEPEVT_STATUS_BUSERR	BIT(0)
+#define DEPEVT_STATUS_SHORT	BIT(1)
+#define DEPEVT_STATUS_IOC	BIT(2)
+#define DEPEVT_STATUS_LST	BIT(3) /* XferComplete */
+#define DEPEVT_STATUS_MISSED_ISOC BIT(3) /* XferInProgress */
+
+/* Stream event only */
+#define DEPEVT_STREAMEVT_FOUND		1
+#define DEPEVT_STREAMEVT_NOTFOUND	2
+
+/* Control-only Status */
+#define DEPEVT_STATUS_CONTROL_DATA	1
+#define DEPEVT_STATUS_CONTROL_STATUS	2
+#define DEPEVT_STATUS_CONTROL_PHASE(n)	((n) & 3)
+
+/* In response to Start Transfer */
+#define DEPEVT_TRANSFER_NO_RESOURCE	1
+#define DEPEVT_TRANSFER_BUS_EXPIRY	2
+
+	u32	parameters:16;
+
+/* For Command Complete Events */
+#define DEPEVT_PARAMETER_CMD(n)	(((n) & (0xf << 8)) >> 8)
+} __packed;
+
+/**
+ * struct dwc3_event_devt - Device Events
+ * @one_bit: indicates this is a non-endpoint event (not used)
+ * @device_event: indicates it's a device event. Should read as 0x00
+ * @type: indicates the type of device event.
+ *	0	- DisconnEvt
+ *	1	- USBRst
+ *	2	- ConnectDone
+ *	3	- ULStChng
+ *	4	- WkUpEvt
+ *	5	- Reserved
+ *	6	- EOPF
+ *	7	- SOF
+ *	8	- Reserved
+ *	9	- ErrticErr
+ *	10	- CmdCmplt
+ *	11	- EvntOverflow
+ *	12	- VndrDevTstRcved
+ * @reserved15_12: Reserved, not used
+ * @event_info: Information about this event
+ * @reserved31_25: Reserved, not used
+ */
+struct dwc3_event_devt {
+	u32	one_bit:1;
+	u32	device_event:7;
+	u32	type:4;
+	u32	reserved15_12:4;
+	u32	event_info:9;
+	u32	reserved31_25:7;
+} __packed;
+
+/**
+ * struct dwc3_event_gevt - Other Core Events
+ * @one_bit: indicates this is a non-endpoint event (not used)
+ * @device_event: indicates it's (0x03) Carkit or (0x04) I2C event.
+ * @phy_port_number: self-explanatory
+ * @reserved31_12: Reserved, not used.
+ */
+struct dwc3_event_gevt {
+	u32	one_bit:1;
+	u32	device_event:7;
+	u32	phy_port_number:4;
+	u32	reserved31_12:20;
+} __packed;
+
+/**
+ * union dwc3_event - representation of Event Buffer contents
+ * @raw: raw 32-bit event
+ * @type: the type of the event
+ * @depevt: Device Endpoint Event
+ * @devt: Device Event
+ * @gevt: Global Event
+ */
+union dwc3_event {
+	u32				raw;
+	struct dwc3_event_type		type;
+	struct dwc3_event_depevt	depevt;
+	struct dwc3_event_devt		devt;
+	struct dwc3_event_gevt		gevt;
+};
+
+/**
+ * struct dwc3_gadget_ep_cmd_params - representation of endpoint command
+ * parameters
+ * @param2: third parameter
+ * @param1: second parameter
+ * @param0: first parameter
+ */
+struct dwc3_gadget_ep_cmd_params {
+	u32	param2;
+	u32	param1;
+	u32	param0;
+};
+
+/*
+ * DWC3 Features to be used as Driver Data
+ */
+
+#define DWC3_HAS_PERIPHERAL		BIT(0)
+#define DWC3_HAS_XHCI			BIT(1)
+#define DWC3_HAS_OTG			BIT(3)
+
+/* prototypes */
+void dwc3_set_prtcap(struct dwc3 *dwc, u32 mode);
+void dwc3_set_mode(struct dwc3 *dwc, u32 mode);
+
+/* check whether we are on the DWC_usb3 core */
+static inline bool dwc3_is_usb3(struct dwc3 *dwc)
+{
+	return !(dwc->revision & DWC3_REVISION_IS_DWC31);
+}
+
+/* check whether we are on the DWC_usb31 core */
+static inline bool dwc3_is_usb31(struct dwc3 *dwc)
+{
+	return !!(dwc->revision & DWC3_REVISION_IS_DWC31);
+}
+
+bool dwc3_has_imod(struct dwc3 *dwc);
+
+int dwc3_event_buffers_setup(struct dwc3 *dwc);
+void dwc3_event_buffers_cleanup(struct dwc3 *dwc);
+
+#if IS_ENABLED(CONFIG_USB_DWC3_HOST) || IS_ENABLED(CONFIG_USB_DWC3_DUAL_ROLE)
+int dwc3_host_init(struct dwc3 *dwc);
+#else
+static inline int dwc3_host_init(struct dwc3 *dwc)
+{ return 0; }
+#endif
+
+#if IS_ENABLED(CONFIG_USB_DWC3_GADGET) || IS_ENABLED(CONFIG_USB_DWC3_DUAL_ROLE)
+int dwc3_gadget_init(struct dwc3 *dwc);
+void dwc3_gadget_exit(struct dwc3 *dwc);
+int dwc3_gadget_set_test_mode(struct dwc3 *dwc, int mode);
+int dwc3_gadget_get_link_state(struct dwc3 *dwc);
+int dwc3_gadget_set_link_state(struct dwc3 *dwc, enum dwc3_link_state state);
+int dwc3_send_gadget_ep_cmd(struct dwc3_ep *dep, unsigned cmd,
+		struct dwc3_gadget_ep_cmd_params *params);
+int dwc3_send_gadget_generic_command(struct dwc3 *dwc, unsigned cmd, u32 param);
+#else
+static inline int dwc3_gadget_init(struct dwc3 *dwc)
+{ return 0; }
+static inline void dwc3_gadget_exit(struct dwc3 *dwc)
+{ }
+static inline int dwc3_gadget_set_test_mode(struct dwc3 *dwc, int mode)
+{ return 0; }
+static inline int dwc3_gadget_get_link_state(struct dwc3 *dwc)
+{ return 0; }
+static inline int dwc3_gadget_set_link_state(struct dwc3 *dwc,
+		enum dwc3_link_state state)
+{ return 0; }
+
+static inline int dwc3_send_gadget_generic_command(struct dwc3 *dwc,
+		int cmd, u32 param)
+{ return 0; }
+#endif
+
+#if IS_ENABLED(CONFIG_USB_DWC3_DUAL_ROLE)
+int dwc3_drd_init(struct dwc3 *dwc);
+void dwc3_drd_exit(struct dwc3 *dwc);
+void dwc3_otg_init(struct dwc3 *dwc);
+void dwc3_otg_exit(struct dwc3 *dwc);
+void dwc3_otg_update(struct dwc3 *dwc, bool ignore_idstatus);
+void dwc3_otg_host_init(struct dwc3 *dwc);
+#else
+static inline int dwc3_drd_init(struct dwc3 *dwc)
+{ return 0; }
+static inline void dwc3_drd_exit(struct dwc3 *dwc)
+{ }
+static inline void dwc3_otg_init(struct dwc3 *dwc)
+{ }
+static inline void dwc3_otg_exit(struct dwc3 *dwc)
+{ }
+static inline void dwc3_otg_update(struct dwc3 *dwc, bool ignore_idstatus)
+{ }
+static inline void dwc3_otg_host_init(struct dwc3 *dwc)
+{ }
+#endif
+
+/* power management interface */
+#if !IS_ENABLED(CONFIG_USB_DWC3_HOST)
+int dwc3_gadget_suspend(struct dwc3 *dwc);
+int dwc3_gadget_resume(struct dwc3 *dwc);
+void dwc3_gadget_process_pending_events(struct dwc3 *dwc);
+#else
+static inline int dwc3_gadget_suspend(struct dwc3 *dwc)
+{
+	return 0;
+}
+
+static inline int dwc3_gadget_resume(struct dwc3 *dwc)
+{
+	return 0;
+}
+
+static inline void dwc3_gadget_process_pending_events(struct dwc3 *dwc)
+{
+}
+#endif /* !IS_ENABLED(CONFIG_USB_DWC3_HOST) */
+
+#if IS_ENABLED(CONFIG_USB_DWC3_ULPI)
+int dwc3_ulpi_init(struct dwc3 *dwc);
+void dwc3_ulpi_exit(struct dwc3 *dwc);
+#else
+static inline int dwc3_ulpi_init(struct dwc3 *dwc)
+{ return 0; }
+static inline void dwc3_ulpi_exit(struct dwc3 *dwc)
+{ }
+#endif
+
+#endif /* __DRIVERS_USB_DWC3_CORE_H */
diff --git a/drivers/usb/dwc3/debug.h b/drivers/usb/dwc3/debug.h
new file mode 100644
index 000000000..4f75ab350
--- /dev/null
+++ b/drivers/usb/dwc3/debug.h
@@ -0,0 +1,664 @@
+// SPDX-License-Identifier: GPL-2.0
+/**
+ * debug.h - DesignWare USB3 DRD Controller Debug Header
+ *
+ * Copyright (C) 2010-2011 Texas Instruments Incorporated - http://www.ti.com
+ *
+ * Authors: Felipe Balbi <balbi@ti.com>,
+ *	    Sebastian Andrzej Siewior <bigeasy@linutronix.de>
+ */
+
+#ifndef __DWC3_DEBUG_H
+#define __DWC3_DEBUG_H
+
+#include "core.h"
+
+/**
+ * dwc3_gadget_ep_cmd_string - returns endpoint command string
+ * @cmd: command code
+ */
+static inline const char *
+dwc3_gadget_ep_cmd_string(u8 cmd)
+{
+	switch (cmd) {
+	case DWC3_DEPCMD_DEPSTARTCFG:
+		return "Start New Configuration";
+	case DWC3_DEPCMD_ENDTRANSFER:
+		return "End Transfer";
+	case DWC3_DEPCMD_UPDATETRANSFER:
+		return "Update Transfer";
+	case DWC3_DEPCMD_STARTTRANSFER:
+		return "Start Transfer";
+	case DWC3_DEPCMD_CLEARSTALL:
+		return "Clear Stall";
+	case DWC3_DEPCMD_SETSTALL:
+		return "Set Stall";
+	case DWC3_DEPCMD_GETEPSTATE:
+		return "Get Endpoint State";
+	case DWC3_DEPCMD_SETTRANSFRESOURCE:
+		return "Set Endpoint Transfer Resource";
+	case DWC3_DEPCMD_SETEPCONFIG:
+		return "Set Endpoint Configuration";
+	default:
+		return "UNKNOWN command";
+	}
+}
+
+/**
+ * dwc3_gadget_generic_cmd_string - returns generic command string
+ * @cmd: command code
+ */
+static inline const char *
+dwc3_gadget_generic_cmd_string(u8 cmd)
+{
+	switch (cmd) {
+	case DWC3_DGCMD_SET_LMP:
+		return "Set LMP";
+	case DWC3_DGCMD_SET_PERIODIC_PAR:
+		return "Set Periodic Parameters";
+	case DWC3_DGCMD_XMIT_FUNCTION:
+		return "Transmit Function Wake Device Notification";
+	case DWC3_DGCMD_SET_SCRATCHPAD_ADDR_LO:
+		return "Set Scratchpad Buffer Array Address Lo";
+	case DWC3_DGCMD_SET_SCRATCHPAD_ADDR_HI:
+		return "Set Scratchpad Buffer Array Address Hi";
+	case DWC3_DGCMD_SELECTED_FIFO_FLUSH:
+		return "Selected FIFO Flush";
+	case DWC3_DGCMD_ALL_FIFO_FLUSH:
+		return "All FIFO Flush";
+	case DWC3_DGCMD_SET_ENDPOINT_NRDY:
+		return "Set Endpoint NRDY";
+	case DWC3_DGCMD_RUN_SOC_BUS_LOOPBACK:
+		return "Run SoC Bus Loopback Test";
+	default:
+		return "UNKNOWN";
+	}
+}
+
+/**
+ * dwc3_gadget_link_string - returns link name
+ * @link_state: link state code
+ */
+static inline const char *
+dwc3_gadget_link_string(enum dwc3_link_state link_state)
+{
+	switch (link_state) {
+	case DWC3_LINK_STATE_U0:
+		return "U0";
+	case DWC3_LINK_STATE_U1:
+		return "U1";
+	case DWC3_LINK_STATE_U2:
+		return "U2";
+	case DWC3_LINK_STATE_U3:
+		return "U3";
+	case DWC3_LINK_STATE_SS_DIS:
+		return "SS.Disabled";
+	case DWC3_LINK_STATE_RX_DET:
+		return "RX.Detect";
+	case DWC3_LINK_STATE_SS_INACT:
+		return "SS.Inactive";
+	case DWC3_LINK_STATE_POLL:
+		return "Polling";
+	case DWC3_LINK_STATE_RECOV:
+		return "Recovery";
+	case DWC3_LINK_STATE_HRESET:
+		return "Hot Reset";
+	case DWC3_LINK_STATE_CMPLY:
+		return "Compliance";
+	case DWC3_LINK_STATE_LPBK:
+		return "Loopback";
+	case DWC3_LINK_STATE_RESET:
+		return "Reset";
+	case DWC3_LINK_STATE_RESUME:
+		return "Resume";
+	default:
+		return "UNKNOWN link state\n";
+	}
+}
+
+/**
+ * dwc3_gadget_hs_link_string - returns highspeed and below link name
+ * @link_state: link state code
+ */
+static inline const char *
+dwc3_gadget_hs_link_string(enum dwc3_link_state link_state)
+{
+	switch (link_state) {
+	case DWC3_LINK_STATE_U0:
+		return "On";
+	case DWC3_LINK_STATE_U2:
+		return "Sleep";
+	case DWC3_LINK_STATE_U3:
+		return "Suspend";
+	case DWC3_LINK_STATE_SS_DIS:
+		return "Disconnected";
+	case DWC3_LINK_STATE_RX_DET:
+		return "Early Suspend";
+	case DWC3_LINK_STATE_RECOV:
+		return "Recovery";
+	case DWC3_LINK_STATE_RESET:
+		return "Reset";
+	case DWC3_LINK_STATE_RESUME:
+		return "Resume";
+	default:
+		return "UNKNOWN link state\n";
+	}
+}
+
+/**
+ * dwc3_trb_type_string - returns TRB type as a string
+ * @type: the type of the TRB
+ */
+static inline const char *dwc3_trb_type_string(unsigned int type)
+{
+	switch (type) {
+	case DWC3_TRBCTL_NORMAL:
+		return "normal";
+	case DWC3_TRBCTL_CONTROL_SETUP:
+		return "setup";
+	case DWC3_TRBCTL_CONTROL_STATUS2:
+		return "status2";
+	case DWC3_TRBCTL_CONTROL_STATUS3:
+		return "status3";
+	case DWC3_TRBCTL_CONTROL_DATA:
+		return "data";
+	case DWC3_TRBCTL_ISOCHRONOUS_FIRST:
+		return "isoc-first";
+	case DWC3_TRBCTL_ISOCHRONOUS:
+		return "isoc";
+	case DWC3_TRBCTL_LINK_TRB:
+		return "link";
+	default:
+		return "UNKNOWN";
+	}
+}
+
+static inline const char *dwc3_ep0_state_string(enum dwc3_ep0_state state)
+{
+	switch (state) {
+	case EP0_UNCONNECTED:
+		return "Unconnected";
+	case EP0_SETUP_PHASE:
+		return "Setup Phase";
+	case EP0_DATA_PHASE:
+		return "Data Phase";
+	case EP0_STATUS_PHASE:
+		return "Status Phase";
+	default:
+		return "UNKNOWN";
+	}
+}
+
+/**
+ * dwc3_gadget_event_string - returns event name
+ * @event: the event code
+ */
+static inline const char *
+dwc3_gadget_event_string(char *str, const struct dwc3_event_devt *event)
+{
+	enum dwc3_link_state state = event->event_info & DWC3_LINK_STATE_MASK;
+
+	switch (event->type) {
+	case DWC3_DEVICE_EVENT_DISCONNECT:
+		sprintf(str, "Disconnect: [%s]",
+				dwc3_gadget_link_string(state));
+		break;
+	case DWC3_DEVICE_EVENT_RESET:
+		sprintf(str, "Reset [%s]", dwc3_gadget_link_string(state));
+		break;
+	case DWC3_DEVICE_EVENT_CONNECT_DONE:
+		sprintf(str, "Connection Done [%s]",
+				dwc3_gadget_link_string(state));
+		break;
+	case DWC3_DEVICE_EVENT_LINK_STATUS_CHANGE:
+		sprintf(str, "Link Change [%s]",
+				dwc3_gadget_link_string(state));
+		break;
+	case DWC3_DEVICE_EVENT_WAKEUP:
+		sprintf(str, "WakeUp [%s]", dwc3_gadget_link_string(state));
+		break;
+	case DWC3_DEVICE_EVENT_EOPF:
+		sprintf(str, "End-Of-Frame [%s]",
+				dwc3_gadget_link_string(state));
+		break;
+	case DWC3_DEVICE_EVENT_SOF:
+		sprintf(str, "Start-Of-Frame [%s]",
+				dwc3_gadget_link_string(state));
+		break;
+	case DWC3_DEVICE_EVENT_ERRATIC_ERROR:
+		sprintf(str, "Erratic Error [%s]",
+				dwc3_gadget_link_string(state));
+		break;
+	case DWC3_DEVICE_EVENT_CMD_CMPL:
+		sprintf(str, "Command Complete [%s]",
+				dwc3_gadget_link_string(state));
+		break;
+	case DWC3_DEVICE_EVENT_OVERFLOW:
+		sprintf(str, "Overflow [%s]", dwc3_gadget_link_string(state));
+		break;
+	default:
+		sprintf(str, "UNKNOWN");
+	}
+
+	return str;
+}
+
+static inline void dwc3_decode_get_status(__u8 t, __u16 i, __u16 l, char *str)
+{
+	switch (t & USB_RECIP_MASK) {
+	case USB_RECIP_INTERFACE:
+		sprintf(str, "Get Interface Status(Intf = %d, Length = %d)",
+			i, l);
+		break;
+	case USB_RECIP_ENDPOINT:
+		sprintf(str, "Get Endpoint Status(ep%d%s)",
+			i & ~USB_DIR_IN,
+			i & USB_DIR_IN ? "in" : "out");
+		break;
+	}
+}
+
+static inline void dwc3_decode_set_clear_feature(__u8 t, __u8 b, __u16 v,
+						 __u16 i, char *str)
+{
+	switch (t & USB_RECIP_MASK) {
+	case USB_RECIP_DEVICE:
+		sprintf(str, "%s Device Feature(%s%s)",
+			b == USB_REQ_CLEAR_FEATURE ? "Clear" : "Set",
+			({char *s;
+				switch (v) {
+				case USB_DEVICE_SELF_POWERED:
+					s = "Self Powered";
+					break;
+				case USB_DEVICE_REMOTE_WAKEUP:
+					s = "Remote Wakeup";
+					break;
+				case USB_DEVICE_TEST_MODE:
+					s = "Test Mode";
+					break;
+				case USB_DEVICE_U1_ENABLE:
+					s = "U1 Enable";
+					break;
+				case USB_DEVICE_U2_ENABLE:
+					s = "U2 Enable";
+					break;
+				case USB_DEVICE_LTM_ENABLE:
+					s = "LTM Enable";
+					break;
+				default:
+					s = "UNKNOWN";
+				} s; }),
+			v == USB_DEVICE_TEST_MODE ?
+			({ char *s;
+				switch (i) {
+				case TEST_J:
+					s = ": TEST_J";
+					break;
+				case TEST_K:
+					s = ": TEST_K";
+					break;
+				case TEST_SE0_NAK:
+					s = ": TEST_SE0_NAK";
+					break;
+				case TEST_PACKET:
+					s = ": TEST_PACKET";
+					break;
+				case TEST_FORCE_EN:
+					s = ": TEST_FORCE_EN";
+					break;
+				default:
+					s = ": UNKNOWN";
+				} s; }) : "");
+		break;
+	case USB_RECIP_INTERFACE:
+		sprintf(str, "%s Interface Feature(%s)",
+			b == USB_REQ_CLEAR_FEATURE ? "Clear" : "Set",
+			v == USB_INTRF_FUNC_SUSPEND ?
+			"Function Suspend" : "UNKNOWN");
+		break;
+	case USB_RECIP_ENDPOINT:
+		sprintf(str, "%s Endpoint Feature(%s ep%d%s)",
+			b == USB_REQ_CLEAR_FEATURE ? "Clear" : "Set",
+			v == USB_ENDPOINT_HALT ? "Halt" : "UNKNOWN",
+			i & ~USB_DIR_IN,
+			i & USB_DIR_IN ? "in" : "out");
+		break;
+	}
+}
+
+static inline void dwc3_decode_set_address(__u16 v, char *str)
+{
+	sprintf(str, "Set Address(Addr = %02x)", v);
+}
+
+static inline void dwc3_decode_get_set_descriptor(__u8 t, __u8 b, __u16 v,
+						  __u16 i, __u16 l, char *str)
+{
+	sprintf(str, "%s %s Descriptor(Index = %d, Length = %d)",
+		b == USB_REQ_GET_DESCRIPTOR ? "Get" : "Set",
+		({ char *s;
+			switch (v >> 8) {
+			case USB_DT_DEVICE:
+				s = "Device";
+				break;
+			case USB_DT_CONFIG:
+				s = "Configuration";
+				break;
+			case USB_DT_STRING:
+				s = "String";
+				break;
+			case USB_DT_INTERFACE:
+				s = "Interface";
+				break;
+			case USB_DT_ENDPOINT:
+				s = "Endpoint";
+				break;
+			case USB_DT_DEVICE_QUALIFIER:
+				s = "Device Qualifier";
+				break;
+			case USB_DT_OTHER_SPEED_CONFIG:
+				s = "Other Speed Config";
+				break;
+			case USB_DT_INTERFACE_POWER:
+				s = "Interface Power";
+				break;
+			case USB_DT_OTG:
+				s = "OTG";
+				break;
+			case USB_DT_DEBUG:
+				s = "Debug";
+				break;
+			case USB_DT_INTERFACE_ASSOCIATION:
+				s = "Interface Association";
+				break;
+			case USB_DT_BOS:
+				s = "BOS";
+				break;
+			case USB_DT_DEVICE_CAPABILITY:
+				s = "Device Capability";
+				break;
+			case USB_DT_PIPE_USAGE:
+				s = "Pipe Usage";
+				break;
+			case USB_DT_SS_ENDPOINT_COMP:
+				s = "SS Endpoint Companion";
+				break;
+			case USB_DT_SSP_ISOC_ENDPOINT_COMP:
+				s = "SSP Isochronous Endpoint Companion";
+				break;
+			default:
+				s = "UNKNOWN";
+				break;
+			} s; }), v & 0xff, l);
+}
+
+
+static inline void dwc3_decode_get_configuration(__u16 l, char *str)
+{
+	sprintf(str, "Get Configuration(Length = %d)", l);
+}
+
+static inline void dwc3_decode_set_configuration(__u8 v, char *str)
+{
+	sprintf(str, "Set Configuration(Config = %d)", v);
+}
+
+static inline void dwc3_decode_get_intf(__u16 i, __u16 l, char *str)
+{
+	sprintf(str, "Get Interface(Intf = %d, Length = %d)", i, l);
+}
+
+static inline void dwc3_decode_set_intf(__u8 v, __u16 i, char *str)
+{
+	sprintf(str, "Set Interface(Intf = %d, Alt.Setting = %d)", i, v);
+}
+
+static inline void dwc3_decode_synch_frame(__u16 i, __u16 l, char *str)
+{
+	sprintf(str, "Synch Frame(Endpoint = %d, Length = %d)", i, l);
+}
+
+static inline void dwc3_decode_set_sel(__u16 l, char *str)
+{
+	sprintf(str, "Set SEL(Length = %d)", l);
+}
+
+static inline void dwc3_decode_set_isoch_delay(__u8 v, char *str)
+{
+	sprintf(str, "Set Isochronous Delay(Delay = %d ns)", v);
+}
+
+/**
+ * dwc3_decode_ctrl - returns a string represetion of ctrl request
+ */
+static inline const char *dwc3_decode_ctrl(char *str, __u8 bRequestType,
+		__u8 bRequest, __u16 wValue, __u16 wIndex, __u16 wLength)
+{
+	switch (bRequest) {
+	case USB_REQ_GET_STATUS:
+		dwc3_decode_get_status(bRequestType, wIndex, wLength, str);
+		break;
+	case USB_REQ_CLEAR_FEATURE:
+	case USB_REQ_SET_FEATURE:
+		dwc3_decode_set_clear_feature(bRequestType, bRequest, wValue,
+					      wIndex, str);
+		break;
+	case USB_REQ_SET_ADDRESS:
+		dwc3_decode_set_address(wValue, str);
+		break;
+	case USB_REQ_GET_DESCRIPTOR:
+	case USB_REQ_SET_DESCRIPTOR:
+		dwc3_decode_get_set_descriptor(bRequestType, bRequest, wValue,
+					       wIndex, wLength, str);
+		break;
+	case USB_REQ_GET_CONFIGURATION:
+		dwc3_decode_get_configuration(wLength, str);
+		break;
+	case USB_REQ_SET_CONFIGURATION:
+		dwc3_decode_set_configuration(wValue, str);
+		break;
+	case USB_REQ_GET_INTERFACE:
+		dwc3_decode_get_intf(wIndex, wLength, str);
+		break;
+	case USB_REQ_SET_INTERFACE:
+		dwc3_decode_set_intf(wValue, wIndex, str);
+		break;
+	case USB_REQ_SYNCH_FRAME:
+		dwc3_decode_synch_frame(wIndex, wLength, str);
+		break;
+	case USB_REQ_SET_SEL:
+		dwc3_decode_set_sel(wLength, str);
+		break;
+	case USB_REQ_SET_ISOCH_DELAY:
+		dwc3_decode_set_isoch_delay(wValue, str);
+		break;
+	default:
+		sprintf(str, "%02x %02x %02x %02x %02x %02x %02x %02x",
+			bRequestType, bRequest,
+			cpu_to_le16(wValue) & 0xff,
+			cpu_to_le16(wValue) >> 8,
+			cpu_to_le16(wIndex) & 0xff,
+			cpu_to_le16(wIndex) >> 8,
+			cpu_to_le16(wLength) & 0xff,
+			cpu_to_le16(wLength) >> 8);
+	}
+
+	return str;
+}
+
+/**
+ * dwc3_ep_event_string - returns event name
+ * @event: then event code
+ */
+static inline const char *
+dwc3_ep_event_string(char *str, const struct dwc3_event_depevt *event,
+		     u32 ep0state)
+{
+	u8 epnum = event->endpoint_number;
+	size_t len;
+	int status;
+	int ret;
+
+	ret = sprintf(str, "ep%d%s: ", epnum >> 1,
+			(epnum & 1) ? "in" : "out");
+	if (ret < 0)
+		return "UNKNOWN";
+
+	status = event->status;
+
+	switch (event->endpoint_event) {
+	case DWC3_DEPEVT_XFERCOMPLETE:
+		len = strlen(str);
+		sprintf(str + len, "Transfer Complete (%c%c%c)",
+				status & DEPEVT_STATUS_SHORT ? 'S' : 's',
+				status & DEPEVT_STATUS_IOC ? 'I' : 'i',
+				status & DEPEVT_STATUS_LST ? 'L' : 'l');
+
+		len = strlen(str);
+
+		if (epnum <= 1)
+			sprintf(str + len, " [%s]", dwc3_ep0_state_string(ep0state));
+		break;
+	case DWC3_DEPEVT_XFERINPROGRESS:
+		len = strlen(str);
+
+		sprintf(str + len, "Transfer In Progress [%d] (%c%c%c)",
+				event->parameters,
+				status & DEPEVT_STATUS_SHORT ? 'S' : 's',
+				status & DEPEVT_STATUS_IOC ? 'I' : 'i',
+				status & DEPEVT_STATUS_LST ? 'M' : 'm');
+		break;
+	case DWC3_DEPEVT_XFERNOTREADY:
+		len = strlen(str);
+
+		sprintf(str + len, "Transfer Not Ready [%d]%s",
+				event->parameters,
+				status & DEPEVT_STATUS_TRANSFER_ACTIVE ?
+				" (Active)" : " (Not Active)");
+
+		/* Control Endpoints */
+		if (epnum <= 1) {
+			int phase = DEPEVT_STATUS_CONTROL_PHASE(event->status);
+
+			switch (phase) {
+			case DEPEVT_STATUS_CONTROL_DATA:
+				strcat(str, " [Data Phase]");
+				break;
+			case DEPEVT_STATUS_CONTROL_STATUS:
+				strcat(str, " [Status Phase]");
+			}
+		}
+		break;
+	case DWC3_DEPEVT_RXTXFIFOEVT:
+		strcat(str, "FIFO");
+		break;
+	case DWC3_DEPEVT_STREAMEVT:
+		status = event->status;
+
+		switch (status) {
+		case DEPEVT_STREAMEVT_FOUND:
+			sprintf(str + ret, " Stream %d Found",
+					event->parameters);
+			break;
+		case DEPEVT_STREAMEVT_NOTFOUND:
+		default:
+			strcat(str, " Stream Not Found");
+			break;
+		}
+
+		break;
+	case DWC3_DEPEVT_EPCMDCMPLT:
+		strcat(str, "Endpoint Command Complete");
+		break;
+	default:
+		sprintf(str, "UNKNOWN");
+	}
+
+	return str;
+}
+
+/**
+ * dwc3_gadget_event_type_string - return event name
+ * @event: the event code
+ */
+static inline const char *dwc3_gadget_event_type_string(u8 event)
+{
+	switch (event) {
+	case DWC3_DEVICE_EVENT_DISCONNECT:
+		return "Disconnect";
+	case DWC3_DEVICE_EVENT_RESET:
+		return "Reset";
+	case DWC3_DEVICE_EVENT_CONNECT_DONE:
+		return "Connect Done";
+	case DWC3_DEVICE_EVENT_LINK_STATUS_CHANGE:
+		return "Link Status Change";
+	case DWC3_DEVICE_EVENT_WAKEUP:
+		return "Wake-Up";
+	case DWC3_DEVICE_EVENT_HIBER_REQ:
+		return "Hibernation";
+	case DWC3_DEVICE_EVENT_EOPF:
+		return "End of Periodic Frame";
+	case DWC3_DEVICE_EVENT_SOF:
+		return "Start of Frame";
+	case DWC3_DEVICE_EVENT_ERRATIC_ERROR:
+		return "Erratic Error";
+	case DWC3_DEVICE_EVENT_CMD_CMPL:
+		return "Command Complete";
+	case DWC3_DEVICE_EVENT_OVERFLOW:
+		return "Overflow";
+	default:
+		return "UNKNOWN";
+	}
+}
+
+static inline const char *dwc3_decode_event(char *str, u32 event, u32 ep0state)
+{
+	const union dwc3_event evt = (union dwc3_event) event;
+
+	if (evt.type.is_devspec)
+		return dwc3_gadget_event_string(str, &evt.devt);
+	else
+		return dwc3_ep_event_string(str, &evt.depevt, ep0state);
+}
+
+static inline const char *dwc3_ep_cmd_status_string(int status)
+{
+	switch (status) {
+	case -ETIMEDOUT:
+		return "Timed Out";
+	case 0:
+		return "Successful";
+	case DEPEVT_TRANSFER_NO_RESOURCE:
+		return "No Resource";
+	case DEPEVT_TRANSFER_BUS_EXPIRY:
+		return "Bus Expiry";
+	default:
+		return "UNKNOWN";
+	}
+}
+
+static inline const char *dwc3_gadget_generic_cmd_status_string(int status)
+{
+	switch (status) {
+	case -ETIMEDOUT:
+		return "Timed Out";
+	case 0:
+		return "Successful";
+	case 1:
+		return "Error";
+	default:
+		return "UNKNOWN";
+	}
+}
+
+
+#ifdef CONFIG_DEBUG_FS
+extern void dwc3_debugfs_init(struct dwc3 *);
+extern void dwc3_debugfs_exit(struct dwc3 *);
+#else
+static inline void dwc3_debugfs_init(struct dwc3 *d)
+{  }
+static inline void dwc3_debugfs_exit(struct dwc3 *d)
+{  }
+#endif
+#endif /* __DWC3_DEBUG_H */
diff --git a/drivers/usb/dwc3/host.c b/drivers/usb/dwc3/host.c
new file mode 100644
index 000000000..0f2341cdd
--- /dev/null
+++ b/drivers/usb/dwc3/host.c
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0
+/**
+ * host.c - DesignWare USB3 DRD Controller Host Glue
+ *
+ * Copyright (C) 2011 Texas Instruments Incorporated - http://www.ti.com
+ *
+ * Authors: Felipe Balbi <balbi@ti.com>,
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+
+#include "core.h"
+
+int dwc3_host_init(struct dwc3 *dwc)
+{
+	struct resource *io;
+	struct device_d *dev = dwc->dev;
+
+	io = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (IS_ERR(io)) {
+		dev_err(dev, "Failed to get IORESOURCE_MEM\n");
+		return PTR_ERR(io);
+	}
+
+	dwc->xhci = add_generic_device("xHCI", DEVICE_ID_DYNAMIC, NULL,
+				       io->start, resource_size(io),
+				       IORESOURCE_MEM, NULL);
+	if (!dwc->xhci) {
+		dev_err(dev, "Failed to register xHCI deivce\n");
+		return -ENODEV;
+	}
+	
+	return 0;
+}
diff --git a/drivers/usb/dwc3/io.h b/drivers/usb/dwc3/io.h
new file mode 100644
index 000000000..f87b173e9
--- /dev/null
+++ b/drivers/usb/dwc3/io.h
@@ -0,0 +1,41 @@
+// SPDX-License-Identifier: GPL-2.0
+/**
+ * io.h - DesignWare USB3 DRD IO Header
+ *
+ * Copyright (C) 2010-2011 Texas Instruments Incorporated - http://www.ti.com
+ *
+ * Authors: Felipe Balbi <balbi@ti.com>,
+ *	    Sebastian Andrzej Siewior <bigeasy@linutronix.de>
+ */
+
+#ifndef __DRIVERS_USB_DWC3_IO_H
+#define __DRIVERS_USB_DWC3_IO_H
+
+#include <io.h>
+#include "core.h"
+
+static inline u32 dwc3_readl(void __iomem *base, u32 offset)
+{
+	u32 value;
+
+	/*
+	 * We requested the mem region starting from the Globals address
+	 * space, see dwc3_probe in core.c.
+	 * However, the offsets are given starting from xHCI address space.
+	 */
+	value = readl(base + offset - DWC3_GLOBALS_REGS_START);
+
+	return value;
+}
+
+static inline void dwc3_writel(void __iomem *base, u32 offset, u32 value)
+{
+	/*
+	 * We requested the mem region starting from the Globals address
+	 * space, see dwc3_probe in core.c.
+	 * However, the offsets are given starting from xHCI address space.
+	 */
+	writel(value, base + offset - DWC3_GLOBALS_REGS_START);
+}
+
+#endif /* __DRIVERS_USB_DWC3_IO_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
