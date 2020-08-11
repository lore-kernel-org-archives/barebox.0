Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5W1E-00049X-J1
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 15:17:03 +0000
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 11 Aug 2020 17:16:26 +0200
Message-Id: <20200811151637.17705-3-jmaselbas@kalray.eu>
In-Reply-To: <20200811151637.17705-1-jmaselbas@kalray.eu>
References: <20200811151637.17705-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v4 02/13] usb: dwc2: Add host controller driver
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Ahmad Fatoum <a.fatoum@pengutronix.de>

The host driver is taken from U-Boot (v2018.09-rc3) and mixed with
some part from Linux, mainly the replacement of memory map structure
in favor of the read/write functions.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/Kconfig       |   2 +
 drivers/usb/Makefile      |   1 +
 drivers/usb/dwc2/Kconfig  |  14 +
 drivers/usb/dwc2/Makefile |   1 +
 drivers/usb/dwc2/core.c   | 614 +++++++++++++++++++++++++++
 drivers/usb/dwc2/core.h   | 514 +++++++++++++++++++++++
 drivers/usb/dwc2/dwc2.c   |  90 ++++
 drivers/usb/dwc2/dwc2.h   |  37 ++
 drivers/usb/dwc2/host.c   | 643 +++++++++++++++++++++++++++++
 drivers/usb/dwc2/regs.h   | 848 ++++++++++++++++++++++++++++++++++++++
 drivers/usb/dwc2/rhub.c   | 419 +++++++++++++++++++
 11 files changed, 3183 insertions(+)
 create mode 100644 drivers/usb/dwc2/Kconfig
 create mode 100644 drivers/usb/dwc2/Makefile
 create mode 100644 drivers/usb/dwc2/core.c
 create mode 100644 drivers/usb/dwc2/core.h
 create mode 100644 drivers/usb/dwc2/dwc2.c
 create mode 100644 drivers/usb/dwc2/dwc2.h
 create mode 100644 drivers/usb/dwc2/host.c
 create mode 100644 drivers/usb/dwc2/regs.h
 create mode 100644 drivers/usb/dwc2/rhub.c

diff --git a/drivers/usb/Kconfig b/drivers/usb/Kconfig
index 99eff1c8d..aab1564ab 100644
--- a/drivers/usb/Kconfig
+++ b/drivers/usb/Kconfig
@@ -9,6 +9,8 @@ if USB_HOST
 
 source "drivers/usb/imx/Kconfig"
 
+source "drivers/usb/dwc2/Kconfig"
+
 source "drivers/usb/dwc3/Kconfig"
 
 source "drivers/usb/host/Kconfig"
diff --git a/drivers/usb/Makefile b/drivers/usb/Makefile
index 64d4bddad..c39ce8bb6 100644
--- a/drivers/usb/Makefile
+++ b/drivers/usb/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_USB)		+= core/
 obj-$(CONFIG_USB_IMX_CHIPIDEA)	+= imx/
+obj-$(CONFIG_USB_DWC2)		+= dwc2/
 obj-$(CONFIG_USB_DWC3)		+= dwc3/
 obj-$(CONFIG_USB_MUSB)		+= musb/
 obj-$(CONFIG_USB_STORAGE)	+= storage/
diff --git a/drivers/usb/dwc2/Kconfig b/drivers/usb/dwc2/Kconfig
new file mode 100644
index 000000000..cd24d8cfa
--- /dev/null
+++ b/drivers/usb/dwc2/Kconfig
@@ -0,0 +1,14 @@
+config USB_DWC2
+	bool
+	depends on USB && HAS_DMA
+	select USB_OTGDEV
+	select OFDEVICE
+	help
+	  DesignWare Core USB2 OTG driver.
+
+config USB_DWC2_HOST
+	bool "DWC2 Host mode support"
+	depends on USB_HOST
+	select USB_DWC2
+	help
+	  Select this when you want to use DWC2 in host mode.
diff --git a/drivers/usb/dwc2/Makefile b/drivers/usb/dwc2/Makefile
new file mode 100644
index 000000000..f513fbec7
--- /dev/null
+++ b/drivers/usb/dwc2/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_USB_DWC2_HOST)	+= dwc2.o core.o host.o rhub.o
diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
new file mode 100644
index 000000000..0046e955f
--- /dev/null
+++ b/drivers/usb/dwc2/core.c
@@ -0,0 +1,614 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include "dwc2.h"
+
+void dwc2_set_param_otg_cap(struct dwc2 *dwc2)
+{
+	u8 val;
+
+	switch (dwc2->hw_params.op_mode) {
+	case GHWCFG2_OP_MODE_HNP_SRP_CAPABLE:
+		val = DWC2_CAP_PARAM_HNP_SRP_CAPABLE;
+		break;
+	case GHWCFG2_OP_MODE_SRP_ONLY_CAPABLE:
+	case GHWCFG2_OP_MODE_SRP_CAPABLE_DEVICE:
+	case GHWCFG2_OP_MODE_SRP_CAPABLE_HOST:
+		val = DWC2_CAP_PARAM_SRP_ONLY_CAPABLE;
+		break;
+	default:
+		val = DWC2_CAP_PARAM_NO_HNP_SRP_CAPABLE;
+		break;
+	}
+
+	dwc2->params.otg_cap = val;
+}
+
+void dwc2_set_param_phy_type(struct dwc2 *dwc2)
+{
+	u8 val;
+
+	switch (dwc2->hw_params.hs_phy_type) {
+	case GHWCFG2_HS_PHY_TYPE_UTMI:
+	case GHWCFG2_HS_PHY_TYPE_UTMI_ULPI:
+		val = DWC2_PHY_TYPE_PARAM_UTMI;
+		break;
+	case GHWCFG2_HS_PHY_TYPE_ULPI:
+		val = DWC2_PHY_TYPE_PARAM_ULPI;
+		break;
+	case GHWCFG2_HS_PHY_TYPE_NOT_SUPPORTED:
+		val = DWC2_PHY_TYPE_PARAM_FS;
+		break;
+	}
+
+	dwc2->params.phy_type = val;
+}
+
+void dwc2_set_param_speed(struct dwc2 *dwc2)
+{
+	if (dwc2->params.phy_type == DWC2_PHY_TYPE_PARAM_FS)
+		dwc2->params.speed = DWC2_SPEED_PARAM_FULL;
+	else
+		dwc2->params.speed = DWC2_SPEED_PARAM_HIGH;
+}
+
+void dwc2_set_param_phy_utmi_width(struct dwc2 *dwc2)
+{
+	int val;
+
+	val = (dwc2->hw_params.utmi_phy_data_width ==
+	       GHWCFG4_UTMI_PHY_DATA_WIDTH_8) ? 8 : 16;
+
+	dwc2->params.phy_utmi_width = val;
+}
+
+/**
+ * dwc2_set_default_params() - Set all core parameters to their
+ * auto-detected default values.
+ *
+ * @dwc2: Programming view of the DWC2 controller
+ *
+ */
+void dwc2_set_default_params(struct dwc2 *dwc2)
+{
+	struct dwc2_hw_params *hw = &dwc2->hw_params;
+	struct dwc2_core_params *p = &dwc2->params;
+	bool dma_capable = !(hw->arch == GHWCFG2_SLAVE_ONLY_ARCH);
+
+	dwc2_set_param_otg_cap(dwc2);
+	dwc2_set_param_phy_type(dwc2);
+	dwc2_set_param_speed(dwc2);
+	dwc2_set_param_phy_utmi_width(dwc2);
+	p->phy_ulpi_ddr = false;
+	p->phy_ulpi_ext_vbus = false;
+
+	p->enable_dynamic_fifo = hw->enable_dynamic_fifo;
+	p->en_multiple_tx_fifo = hw->en_multiple_tx_fifo;
+	p->i2c_enable = hw->i2c_enable;
+	p->acg_enable = hw->acg_enable;
+	p->ulpi_fs_ls = false;
+	p->ts_dline = false;
+	p->reload_ctl = (hw->snpsid >= DWC2_CORE_REV_2_92a);
+	p->uframe_sched = true;
+	p->external_id_pin_ctl = false;
+	p->lpm = true;
+	p->lpm_clock_gating = true;
+	p->besl = true;
+	p->hird_threshold_en = true;
+	p->hird_threshold = 4;
+	p->ipg_isoc_en = false;
+	p->max_packet_count = hw->max_packet_count;
+	p->max_transfer_size = hw->max_transfer_size;
+	p->ahbcfg = GAHBCFG_HBSTLEN_INCR << GAHBCFG_HBSTLEN_SHIFT;
+
+	p->dma = dma_capable;
+	p->dma_desc = false;
+
+	if (dwc2->dr_mode == USB_DR_MODE_HOST ||
+	    dwc2->dr_mode == USB_DR_MODE_OTG) {
+		p->host_support_fs_ls_low_power = false;
+		p->host_ls_low_power_phy_clk = false;
+		p->host_channels = hw->host_channels;
+		p->host_rx_fifo_size = hw->rx_fifo_size;
+		p->host_nperio_tx_fifo_size = hw->host_nperio_tx_fifo_size;
+		p->host_perio_tx_fifo_size = hw->host_perio_tx_fifo_size;
+	}
+}
+
+int dwc2_core_snpsid(struct dwc2 *dwc2)
+{
+	struct dwc2_hw_params *hw = &dwc2->hw_params;
+
+	hw->snpsid = dwc2_readl(dwc2, GSNPSID);
+
+	/*
+	 * Attempt to ensure this device is really a DWC2 Controller.
+	 * Read and verify the GSNPSID register contents. The value should be
+	 * 0x4f54xxxx, 0x5531xxxx or 0x5532xxxx
+	 */
+	hw->snpsid = dwc2_readl(dwc2, GSNPSID);
+	if ((hw->snpsid & GSNPSID_ID_MASK) != DWC2_OTG_ID &&
+	    (hw->snpsid & GSNPSID_ID_MASK) != DWC2_FS_IOT_ID &&
+	    (hw->snpsid & GSNPSID_ID_MASK) != DWC2_HS_IOT_ID) {
+		dwc2_err(dwc2, "Bad value for GSNPSID: 0x%08x\n",
+			hw->snpsid);
+		return -ENODEV;
+	}
+
+	dwc2_dbg(dwc2, "Core Release: %1x.%1x%1x%1x (snpsid=%x)\n",
+		hw->snpsid >> 12 & 0xf, hw->snpsid >> 8 & 0xf,
+		hw->snpsid >> 4 & 0xf, hw->snpsid & 0xf, hw->snpsid);
+
+	return 0;
+}
+
+/**
+ * During device initialization, read various hardware configuration
+ * registers and interpret the contents.
+ *
+ * @dwc2: Programming view of the DWC2 controller
+ *
+ */
+void dwc2_get_hwparams(struct dwc2 *dwc2)
+{
+	struct dwc2_hw_params *hw = &dwc2->hw_params;
+	unsigned int width;
+	u32 hwcfg1, hwcfg2, hwcfg3, hwcfg4;
+	u32 grxfsiz;
+
+	hwcfg1 = dwc2_readl(dwc2, GHWCFG1);
+	hwcfg2 = dwc2_readl(dwc2, GHWCFG2);
+	hwcfg3 = dwc2_readl(dwc2, GHWCFG3);
+	hwcfg4 = dwc2_readl(dwc2, GHWCFG4);
+	grxfsiz = dwc2_readl(dwc2, GRXFSIZ);
+
+	/* hwcfg1 */
+	hw->dev_ep_dirs = hwcfg1;
+
+	/* hwcfg2 */
+	hw->op_mode = (hwcfg2 & GHWCFG2_OP_MODE_MASK) >>
+		      GHWCFG2_OP_MODE_SHIFT;
+	hw->arch = (hwcfg2 & GHWCFG2_ARCHITECTURE_MASK) >>
+		   GHWCFG2_ARCHITECTURE_SHIFT;
+	hw->enable_dynamic_fifo = !!(hwcfg2 & GHWCFG2_DYNAMIC_FIFO);
+	hw->host_channels = 1 + ((hwcfg2 & GHWCFG2_NUM_HOST_CHAN_MASK) >>
+				GHWCFG2_NUM_HOST_CHAN_SHIFT);
+	hw->hs_phy_type = (hwcfg2 & GHWCFG2_HS_PHY_TYPE_MASK) >>
+			  GHWCFG2_HS_PHY_TYPE_SHIFT;
+	hw->fs_phy_type = (hwcfg2 & GHWCFG2_FS_PHY_TYPE_MASK) >>
+			  GHWCFG2_FS_PHY_TYPE_SHIFT;
+	hw->num_dev_ep = (hwcfg2 & GHWCFG2_NUM_DEV_EP_MASK) >>
+			 GHWCFG2_NUM_DEV_EP_SHIFT;
+	hw->nperio_tx_q_depth =
+		(hwcfg2 & GHWCFG2_NONPERIO_TX_Q_DEPTH_MASK) >>
+		GHWCFG2_NONPERIO_TX_Q_DEPTH_SHIFT << 1;
+	hw->host_perio_tx_q_depth =
+		(hwcfg2 & GHWCFG2_HOST_PERIO_TX_Q_DEPTH_MASK) >>
+		GHWCFG2_HOST_PERIO_TX_Q_DEPTH_SHIFT << 1;
+	hw->dev_token_q_depth =
+		(hwcfg2 & GHWCFG2_DEV_TOKEN_Q_DEPTH_MASK) >>
+		GHWCFG2_DEV_TOKEN_Q_DEPTH_SHIFT;
+
+	/* hwcfg3 */
+	width = (hwcfg3 & GHWCFG3_XFER_SIZE_CNTR_WIDTH_MASK) >>
+		GHWCFG3_XFER_SIZE_CNTR_WIDTH_SHIFT;
+	hw->max_transfer_size = (1 << (width + 11)) - 1;
+	width = (hwcfg3 & GHWCFG3_PACKET_SIZE_CNTR_WIDTH_MASK) >>
+		GHWCFG3_PACKET_SIZE_CNTR_WIDTH_SHIFT;
+	hw->max_packet_count = (1 << (width + 4)) - 1;
+	hw->i2c_enable = !!(hwcfg3 & GHWCFG3_I2C);
+	hw->total_fifo_size = (hwcfg3 & GHWCFG3_DFIFO_DEPTH_MASK) >>
+			      GHWCFG3_DFIFO_DEPTH_SHIFT;
+	hw->lpm_mode = !!(hwcfg3 & GHWCFG3_OTG_LPM_EN);
+
+	/* hwcfg4 */
+	hw->en_multiple_tx_fifo = !!(hwcfg4 & GHWCFG4_DED_FIFO_EN);
+	hw->num_dev_perio_in_ep = (hwcfg4 & GHWCFG4_NUM_DEV_PERIO_IN_EP_MASK) >>
+				  GHWCFG4_NUM_DEV_PERIO_IN_EP_SHIFT;
+	hw->num_dev_in_eps = (hwcfg4 & GHWCFG4_NUM_IN_EPS_MASK) >>
+			     GHWCFG4_NUM_IN_EPS_SHIFT;
+	hw->dma_desc_enable = !!(hwcfg4 & GHWCFG4_DESC_DMA);
+	hw->power_optimized = !!(hwcfg4 & GHWCFG4_POWER_OPTIMIZ);
+	hw->hibernation = !!(hwcfg4 & GHWCFG4_HIBER);
+	hw->utmi_phy_data_width = (hwcfg4 & GHWCFG4_UTMI_PHY_DATA_WIDTH_MASK) >>
+				  GHWCFG4_UTMI_PHY_DATA_WIDTH_SHIFT;
+	hw->acg_enable = !!(hwcfg4 & GHWCFG4_ACG_SUPPORTED);
+	hw->ipg_isoc_en = !!(hwcfg4 & GHWCFG4_IPG_ISOC_SUPPORTED);
+
+	/* fifo sizes */
+	hw->rx_fifo_size = (grxfsiz & GRXFSIZ_DEPTH_MASK) >>
+				GRXFSIZ_DEPTH_SHIFT;
+}
+
+/*
+ * Initializes the FSLSPClkSel field of the HCFG register depending on the
+ * PHY type
+ */
+void dwc2_init_fs_ls_pclk_sel(struct dwc2 *dwc2)
+{
+	u32 hcfg, val;
+
+	if ((dwc2->hw_params.hs_phy_type == GHWCFG2_HS_PHY_TYPE_ULPI &&
+	     dwc2->hw_params.fs_phy_type == GHWCFG2_FS_PHY_TYPE_DEDICATED &&
+	     dwc2->params.ulpi_fs_ls) ||
+	    dwc2->params.phy_type == DWC2_PHY_TYPE_PARAM_FS) {
+		/* Full speed PHY */
+		val = HCFG_FSLSPCLKSEL_48_MHZ;
+	} else {
+		/* High speed PHY running at full speed or high speed */
+		val = HCFG_FSLSPCLKSEL_30_60_MHZ;
+	}
+
+	dwc2_dbg(dwc2, "Initializing HCFG.FSLSPClkSel to %08x\n", val);
+	hcfg = dwc2_readl(dwc2, HCFG);
+	hcfg &= ~HCFG_FSLSPCLKSEL_MASK;
+	hcfg |= val << HCFG_FSLSPCLKSEL_SHIFT;
+	dwc2_writel(dwc2, hcfg, HCFG);
+}
+
+void dwc2_flush_all_fifo(struct dwc2 *dwc2)
+{
+	uint32_t greset;
+
+	/* Wait for AHB master IDLE state */
+	if (dwc2_wait_bit_set(dwc2, GRSTCTL, GRSTCTL_AHBIDLE, 10000)) {
+		dwc2_warn(dwc2, "%s: Timeout waiting for AHB Idle\n", __func__);
+		return;
+	}
+
+	greset = GRSTCTL_TXFFLSH | GRSTCTL_RXFFLSH;
+	/* TXFNUM of 0x10 is to flush all TX FIFO */
+	dwc2_writel(dwc2, greset | GRSTCTL_TXFNUM(0x10), GRSTCTL);
+
+	/* Wait for TxFIFO and RxFIFO flush done */
+	if (dwc2_wait_bit_clear(dwc2, GRSTCTL, greset, 10000))
+		dwc2_warn(dwc2, "Timeout flushing fifos (GRSTCTL=%08x)\n",
+			 dwc2_readl(dwc2, GRSTCTL));
+
+	/* Wait for 3 PHY Clocks */
+	udelay(1);
+}
+
+static int dwc2_fs_phy_init(struct dwc2 *dwc2, bool select_phy)
+{
+	u32 usbcfg, ggpio, i2cctl;
+	int retval = 0;
+
+	/*
+	 * core_init() is now called on every switch so only call the
+	 * following for the first time through
+	 */
+	if (select_phy) {
+		dwc2_dbg(dwc2, "FS PHY selected\n");
+
+		usbcfg = dwc2_readl(dwc2, GUSBCFG);
+		if (!(usbcfg & GUSBCFG_PHYSEL)) {
+			usbcfg |= GUSBCFG_PHYSEL;
+			dwc2_writel(dwc2, usbcfg, GUSBCFG);
+
+			/* Reset after a PHY select */
+			retval = dwc2_core_reset(dwc2);
+
+			if (retval) {
+				dwc2_err(dwc2,
+					"%s: Reset failed, aborting", __func__);
+				return retval;
+			}
+		}
+
+		if (dwc2->params.activate_stm_fs_transceiver) {
+			ggpio = dwc2_readl(dwc2, GGPIO);
+			if (!(ggpio & GGPIO_STM32_OTG_GCCFG_PWRDWN)) {
+				dwc2_dbg(dwc2, "Activating transceiver\n");
+				/*
+				 * STM32F4x9 uses the GGPIO register as general
+				 * core configuration register.
+				 */
+				ggpio |= GGPIO_STM32_OTG_GCCFG_PWRDWN;
+				dwc2_writel(dwc2, ggpio, GGPIO);
+			}
+		}
+	}
+
+	if (dwc2->params.i2c_enable) {
+		dwc2_dbg(dwc2, "FS PHY enabling I2C\n");
+
+		/* Program GUSBCFG.OtgUtmiFsSel to I2C */
+		usbcfg = dwc2_readl(dwc2, GUSBCFG);
+		usbcfg |= GUSBCFG_OTG_UTMI_FS_SEL;
+		dwc2_writel(dwc2, usbcfg, GUSBCFG);
+
+		/* Program GI2CCTL.I2CEn */
+		i2cctl = dwc2_readl(dwc2, GI2CCTL);
+		i2cctl &= ~GI2CCTL_I2CDEVADDR_MASK;
+		i2cctl |= 1 << GI2CCTL_I2CDEVADDR_SHIFT;
+		i2cctl &= ~GI2CCTL_I2CEN;
+		dwc2_writel(dwc2, i2cctl, GI2CCTL);
+		i2cctl |= GI2CCTL_I2CEN;
+		dwc2_writel(dwc2, i2cctl, GI2CCTL);
+	}
+
+	return retval;
+}
+
+static int dwc2_hs_phy_init(struct dwc2 *dwc2, bool select_phy)
+{
+	u32 usbcfg, usbcfg_old;
+	int retval = 0;
+
+	if (!select_phy)
+		return 0;
+
+	usbcfg = dwc2_readl(dwc2, GUSBCFG);
+	usbcfg_old = usbcfg;
+
+	/*
+	 * HS PHY parameters. These parameters are preserved during soft reset
+	 * so only program the first time. Do a soft reset immediately after
+	 * setting phyif.
+	 */
+	switch (dwc2->params.phy_type) {
+	case DWC2_PHY_TYPE_PARAM_ULPI:
+		/* ULPI interface */
+		dwc2_dbg(dwc2, "HS ULPI PHY selected\n");
+		usbcfg |= GUSBCFG_ULPI_UTMI_SEL;
+		usbcfg &= ~(GUSBCFG_PHYIF16 | GUSBCFG_DDRSEL | GUSBCFG_PHYSEL);
+		if (dwc2->params.phy_ulpi_ddr)
+			usbcfg |= GUSBCFG_DDRSEL;
+
+		/* Set external VBUS indicator as needed. */
+		if (dwc2->params.phy_ulpi_ext_vbus_ind) {
+			dwc2_dbg(dwc2, "Use external VBUS indicator\n");
+			usbcfg |= GUSBCFG_ULPI_EXT_VBUS_IND;
+			usbcfg &= ~GUSBCFG_INDICATORCOMPLEMENT;
+			usbcfg &= ~GUSBCFG_INDICATORPASSTHROUGH;
+
+			if (dwc2->params.phy_ulpi_ext_vbus_ind_complement)
+				usbcfg |= GUSBCFG_INDICATORCOMPLEMENT;
+			if (dwc2->params.phy_ulpi_ext_vbus_ind_passthrough)
+				usbcfg |= GUSBCFG_INDICATORPASSTHROUGH;
+		}
+		break;
+	case DWC2_PHY_TYPE_PARAM_UTMI:
+		/* UTMI+ interface */
+		dwc2_dbg(dwc2, "HS UTMI+ PHY selected\n");
+		usbcfg &= ~(GUSBCFG_ULPI_UTMI_SEL | GUSBCFG_PHYIF16);
+		if (dwc2->params.phy_utmi_width == 16)
+			usbcfg |= GUSBCFG_PHYIF16;
+		break;
+	default:
+		dwc2_err(dwc2, "FS PHY selected at HS!\n");
+		break;
+	}
+
+	if (usbcfg != usbcfg_old) {
+		dwc2_writel(dwc2, usbcfg, GUSBCFG);
+
+		/* Reset after setting the PHY parameters */
+		retval = dwc2_core_reset(dwc2);
+		if (retval) {
+			dwc2_err(dwc2,
+				"%s: Reset failed, aborting", __func__);
+			return retval;
+		}
+	}
+
+	return retval;
+}
+
+int dwc2_phy_init(struct dwc2 *dwc2, bool select_phy)
+{
+	u32 usbcfg;
+	int retval = 0;
+
+	if ((dwc2->params.speed == DWC2_SPEED_PARAM_FULL ||
+	     dwc2->params.speed == DWC2_SPEED_PARAM_LOW) &&
+	    dwc2->params.phy_type == DWC2_PHY_TYPE_PARAM_FS) {
+		/* If FS/LS mode with FS/LS PHY */
+		retval = dwc2_fs_phy_init(dwc2, select_phy);
+		if (retval)
+			return retval;
+	} else {
+		/* High speed PHY */
+		retval = dwc2_hs_phy_init(dwc2, select_phy);
+		if (retval)
+			return retval;
+	}
+
+	usbcfg = dwc2_readl(dwc2, GUSBCFG);
+	usbcfg &= ~GUSBCFG_ULPI_FS_LS;
+	usbcfg &= ~GUSBCFG_ULPI_CLK_SUSP_M;
+	if (dwc2->hw_params.hs_phy_type == GHWCFG2_HS_PHY_TYPE_ULPI &&
+	    dwc2->hw_params.fs_phy_type == GHWCFG2_FS_PHY_TYPE_DEDICATED &&
+	    dwc2->params.ulpi_fs_ls) {
+		dwc2_dbg(dwc2, "Setting ULPI FSLS\n");
+		usbcfg |= GUSBCFG_ULPI_FS_LS;
+		usbcfg |= GUSBCFG_ULPI_CLK_SUSP_M;
+	}
+	dwc2_writel(dwc2, usbcfg, GUSBCFG);
+
+	return retval;
+}
+
+int dwc2_gahbcfg_init(struct dwc2 *dwc2)
+{
+	u32 ahbcfg = dwc2_readl(dwc2, GAHBCFG);
+
+	switch (dwc2->hw_params.arch) {
+	case GHWCFG2_EXT_DMA_ARCH:
+		dwc2_err(dwc2, "External DMA Mode not supported\n");
+		return -EINVAL;
+
+	case GHWCFG2_INT_DMA_ARCH:
+		dwc2_dbg(dwc2, "Internal DMA Mode\n");
+		if (dwc2->params.ahbcfg != -1) {
+			ahbcfg &= GAHBCFG_CTRL_MASK;
+			ahbcfg |= dwc2->params.ahbcfg &
+				  ~GAHBCFG_CTRL_MASK;
+		}
+		break;
+
+	case GHWCFG2_SLAVE_ONLY_ARCH:
+	default:
+		dwc2_dbg(dwc2, "Slave Only Mode\n");
+		break;
+	}
+
+	if (dwc2->params.dma)
+		ahbcfg |= GAHBCFG_DMA_EN;
+	else
+		dwc2->params.dma_desc = false;
+
+	dwc2_writel(dwc2, ahbcfg, GAHBCFG);
+
+	return 0;
+}
+
+void dwc2_gusbcfg_init(struct dwc2 *dwc2)
+{
+	u32 usbcfg;
+
+	usbcfg = dwc2_readl(dwc2, GUSBCFG);
+	usbcfg &= ~(GUSBCFG_HNPCAP | GUSBCFG_SRPCAP);
+
+	switch (dwc2->hw_params.op_mode) {
+	case GHWCFG2_OP_MODE_HNP_SRP_CAPABLE:
+		if (dwc2->params.otg_cap ==
+				DWC2_CAP_PARAM_HNP_SRP_CAPABLE)
+			usbcfg |= GUSBCFG_HNPCAP;
+
+	case GHWCFG2_OP_MODE_SRP_ONLY_CAPABLE:
+	case GHWCFG2_OP_MODE_SRP_CAPABLE_DEVICE:
+	case GHWCFG2_OP_MODE_SRP_CAPABLE_HOST:
+		if (dwc2->params.otg_cap !=
+				DWC2_CAP_PARAM_NO_HNP_SRP_CAPABLE)
+			usbcfg |= GUSBCFG_SRPCAP;
+		break;
+
+	case GHWCFG2_OP_MODE_NO_HNP_SRP_CAPABLE:
+	case GHWCFG2_OP_MODE_NO_SRP_CAPABLE_DEVICE:
+	case GHWCFG2_OP_MODE_NO_SRP_CAPABLE_HOST:
+	default:
+		break;
+	}
+
+	dwc2_writel(dwc2, usbcfg, GUSBCFG);
+}
+
+/*
+ * Do core a soft reset of the core.  Be careful with this because it
+ * resets all the internal state machines of the core.
+ */
+int dwc2_core_reset(struct dwc2 *dwc2)
+{
+	bool wait_for_host_mode = false;
+	uint32_t greset;
+	int ret;
+
+	dwc2_dbg(dwc2, "%s(%p)\n", __func__, dwc2);
+
+	/* Wait for AHB master IDLE state. */
+	ret = dwc2_wait_bit_set(dwc2, GRSTCTL, GRSTCTL_AHBIDLE, 10000);
+	if (ret) {
+		pr_info("%s: Timeout! Waiting for AHB master IDLE state\n",
+			__func__);
+		return ret;
+	}
+
+	/*
+	 * If the current mode is host, either due to the force mode
+	 * bit being set (which persists after core reset) or the
+	 * connector id pin, a core soft reset will temporarily reset
+	 * the mode to device. A delay from the IDDIG debounce filter
+	 * will occur before going back to host mode.
+	 *
+	 * Determine whether we will go back into host mode after a
+	 * reset and account for this delay after the reset.
+	 */
+	{
+	u32 gotgctl = dwc2_readl(dwc2, GOTGCTL);
+	u32 gusbcfg = dwc2_readl(dwc2, GUSBCFG);
+
+	if (!(gotgctl & GOTGCTL_CONID_B) ||
+	    (gusbcfg & GUSBCFG_FORCEHOSTMODE)) {
+		dwc2_dbg(dwc2, "HOST MODE\n");
+		wait_for_host_mode = true;
+	}
+	}
+	/* Core Soft Reset */
+	greset = dwc2_readl(dwc2, GRSTCTL);
+	greset |= GRSTCTL_CSFTRST;
+	dwc2_writel(dwc2, greset, GRSTCTL);
+
+	ret = dwc2_wait_bit_clear(dwc2, GRSTCTL, GRSTCTL_CSFTRST, 10000);
+	if (ret) {
+		pr_info("%s: Timeout! Waiting for Core Soft Reset\n", __func__);
+		return ret;
+	}
+
+	/*
+	 * Wait for core to come out of reset.
+	 * NOTE: This long sleep is _very_ important, otherwise the core will
+	 *       not stay in host mode after a connector ID change!
+	 */
+	mdelay(100);
+
+	return 0;
+}
+
+/*
+ * This function initializes the DWC2 controller registers and
+ * prepares the core for device mode or host mode operation.
+ *
+ * @param regs Programming view of the DWC2 controller
+ */
+void dwc2_core_init(struct dwc2 *dwc2)
+{
+	uint32_t otgctl = 0;
+	uint32_t usbcfg = 0;
+	int retval;
+
+	dwc2_dbg(dwc2, "%s(%p)\n", __func__, dwc2);
+
+	/* Common Initialization */
+	usbcfg = dwc2_readl(dwc2, GUSBCFG);
+
+	/* Set ULPI External VBUS bit if needed */
+	usbcfg &= ~GUSBCFG_ULPI_EXT_VBUS_DRV;
+	if (dwc2->params.phy_ulpi_ext_vbus)
+		usbcfg |= GUSBCFG_ULPI_EXT_VBUS_DRV;
+
+	/* Set external TS Dline pulsing bit if needed */
+	usbcfg &= ~GUSBCFG_TERMSELDLPULSE;
+	if (dwc2->params.ts_dline)
+		usbcfg |= GUSBCFG_TERMSELDLPULSE;
+
+	dwc2_writel(dwc2, usbcfg, GUSBCFG);
+
+	/* Reset the Controller */
+	dwc2_core_reset(dwc2);
+
+	/*
+	 * This programming sequence needs to happen in FS mode before
+	 * any other programming occurs
+	 */
+	retval = dwc2_phy_init(dwc2, true);
+	if (retval)
+		return;
+
+	/* Program the GAHBCFG Register */
+	retval = dwc2_gahbcfg_init(dwc2);
+	if (retval)
+		return;
+
+	/* Program the GUSBCFG register */
+	dwc2_gusbcfg_init(dwc2);
+
+	/* Program the GOTGCTL register */
+	otgctl = dwc2_readl(dwc2, GOTGCTL);
+	otgctl &= ~GOTGCTL_OTGVER;
+	dwc2_writel(dwc2, otgctl, GOTGCTL);
+
+	if (dwc2_is_host_mode(dwc2))
+		dwc2_dbg(dwc2, "Host Mode\n");
+	else
+		dwc2_dbg(dwc2, "Device Mode\n");
+}
diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
new file mode 100644
index 000000000..94f992cb1
--- /dev/null
+++ b/drivers/usb/dwc2/core.h
@@ -0,0 +1,514 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/* Maximum number of Endpoints/HostChannels */
+#define DWC2_MAX_EPS_CHANNELS	16
+
+/**
+ * struct dwc2_core_params - Parameters for configuring the core
+ *
+ * @otg_cap:            Specifies the OTG capabilities.
+ *                       0 - HNP and SRP capable
+ *                       1 - SRP Only capable
+ *                       2 - No HNP/SRP capable (always available)
+ *                      Defaults to best available option (0, 1, then 2)
+ * @host_dma:           Specifies whether to use slave or DMA mode for accessing
+ *                      the data FIFOs. The driver will automatically detect the
+ *                      value for this parameter if none is specified.
+ *                       0 - Slave (always available)
+ *                       1 - DMA (default, if available)
+ * @dma_desc_enable:    When DMA mode is enabled, specifies whether to use
+ *                      address DMA mode or descriptor DMA mode for accessing
+ *                      the data FIFOs. The driver will automatically detect the
+ *                      value for this if none is specified.
+ *                       0 - Address DMA
+ *                       1 - Descriptor DMA (default, if available)
+ * @dma_desc_fs_enable: When DMA mode is enabled, specifies whether to use
+ *                      address DMA mode or descriptor DMA mode for accessing
+ *                      the data FIFOs in Full Speed mode only. The driver
+ *                      will automatically detect the value for this if none is
+ *                      specified.
+ *                       0 - Address DMA
+ *                       1 - Descriptor DMA in FS (default, if available)
+ * @speed:              Specifies the maximum speed of operation in host and
+ *                      device mode. The actual speed depends on the speed of
+ *                      the attached device and the value of phy_type.
+ *                       0 - High Speed
+ *                           (default when phy_type is UTMI+ or ULPI)
+ *                       1 - Full Speed
+ *                           (default when phy_type is Full Speed)
+ * @enable_dynamic_fifo: 0 - Use coreConsultant-specified FIFO size parameters
+ *                       1 - Allow dynamic FIFO sizing (default, if available)
+ * @en_multiple_tx_fifo: Specifies whether dedicated per-endpoint transmit FIFOs
+ *                      are enabled for non-periodic IN endpoints in device
+ *                      mode.
+ * @host_rx_fifo_size:  Number of 4-byte words in the Rx FIFO in host mode when
+ *                      dynamic FIFO sizing is enabled
+ *                       16 to 32768
+ *                      Actual maximum value is autodetected and also
+ *                      the default.
+ * @host_nperio_tx_fifo_size: Number of 4-byte words in the non-periodic Tx FIFO
+ *                      in host mode when dynamic FIFO sizing is enabled
+ *                       16 to 32768
+ *                      Actual maximum value is autodetected and also
+ *                      the default.
+ * @host_perio_tx_fifo_size: Number of 4-byte words in the periodic Tx FIFO in
+ *                      host mode when dynamic FIFO sizing is enabled
+ *                       16 to 32768
+ *                      Actual maximum value is autodetected and also
+ *                      the default.
+ * @max_transfer_size:  The maximum transfer size supported, in bytes
+ *                       2047 to 65,535
+ *                      Actual maximum value is autodetected and also
+ *                      the default.
+ * @max_packet_count:   The maximum number of packets in a transfer
+ *                       15 to 511
+ *                      Actual maximum value is autodetected and also
+ *                      the default.
+ * @host_channels:      The number of host channel registers to use
+ *                       1 to 16
+ *                      Actual maximum value is autodetected and also
+ *                      the default.
+ * @phy_type:           Specifies the type of PHY interface to use. By default,
+ *                      the driver will automatically detect the phy_type.
+ *                       0 - Full Speed Phy
+ *                       1 - UTMI+ Phy
+ *                       2 - ULPI Phy
+ *                      Defaults to best available option (2, 1, then 0)
+ * @phy_utmi_width:     Specifies the UTMI+ Data Width (in bits). This parameter
+ *                      is applicable for a phy_type of UTMI+ or ULPI. (For a
+ *                      ULPI phy_type, this parameter indicates the data width
+ *                      between the MAC and the ULPI Wrapper.) Also, this
+ *                      parameter is applicable only if the OTG_HSPHY_WIDTH cC
+ *                      parameter was set to "8 and 16 bits", meaning that the
+ *                      core has been configured to work at either data path
+ *                      width.
+ *                       8 or 16 (default 16 if available)
+ * @phy_ulpi_ddr:       Specifies whether the ULPI operates at double or single
+ *                      data rate. This parameter is only applicable if phy_type
+ *                      is ULPI.
+ *                       0 - single data rate ULPI interface with 8 bit wide
+ *                           data bus (default)
+ *                       1 - double data rate ULPI interface with 4 bit wide
+ *                           data bus
+ * @phy_ulpi_ext_vbus:  For a ULPI phy, specifies whether to use the internal or
+ *                      external supply to drive the VBus
+ *                       0 - Internal supply (default)
+ *                       1 - External supply
+ * @i2c_enable:         Specifies whether to use the I2Cinterface for a full
+ *                      speed PHY. This parameter is only applicable if phy_type
+ *                      is FS.
+ *                       0 - No (default)
+ *                       1 - Yes
+ * @ipg_isoc_en:        Indicates the IPG supports is enabled or disabled.
+ *                       0 - Disable (default)
+ *                       1 - Enable
+ * @acg_enable:		For enabling Active Clock Gating in the controller
+ *                       0 - No
+ *                       1 - Yes
+ * @ulpi_fs_ls:         Make ULPI phy operate in FS/LS mode only
+ *                       0 - No (default)
+ *                       1 - Yes
+ * @host_support_fs_ls_low_power: Specifies whether low power mode is supported
+ *                      when attached to a Full Speed or Low Speed device in
+ *                      host mode.
+ *                       0 - Don't support low power mode (default)
+ *                       1 - Support low power mode
+ * @host_ls_low_power_phy_clk: Specifies the PHY clock rate in low power mode
+ *                      when connected to a Low Speed device in host
+ *                      mode. This parameter is applicable only if
+ *                      host_support_fs_ls_low_power is enabled.
+ *                       0 - 48 MHz
+ *                           (default when phy_type is UTMI+ or ULPI)
+ *                       1 - 6 MHz
+ *                           (default when phy_type is Full Speed)
+ * @oc_disable:		Flag to disable overcurrent condition.
+ *			0 - Allow overcurrent condition to get detected
+ *			1 - Disable overcurrent condtion to get detected
+ * @ts_dline:           Enable Term Select Dline pulsing
+ *                       0 - No (default)
+ *                       1 - Yes
+ * @reload_ctl:         Allow dynamic reloading of HFIR register during runtime
+ *                       0 - No (default for core < 2.92a)
+ *                       1 - Yes (default for core >= 2.92a)
+ * @ahbcfg:             This field allows the default value of the GAHBCFG
+ *                      register to be overridden
+ *                       -1         - GAHBCFG value will be set to 0x06
+ *                                    (INCR, default)
+ *                       all others - GAHBCFG value will be overridden with
+ *                                    this value
+ *                      Not all bits can be controlled like this, the
+ *                      bits defined by GAHBCFG_CTRL_MASK are controlled
+ *                      by the driver and are ignored in this
+ *                      configuration value.
+ * @uframe_sched:       True to enable the microframe scheduler
+ * @external_id_pin_ctl: Specifies whether ID pin is handled externally.
+ *                      Disable CONIDSTSCHNG controller interrupt in such
+ *                      case.
+ *                      0 - No (default)
+ *                      1 - Yes
+ * @power_down:         Specifies whether the controller support power_down.
+ *			If power_down is enabled, the controller will enter
+ *			power_down in both peripheral and host mode when
+ *			needed.
+ *			0 - No (default)
+ *			1 - Partial power down
+ *			2 - Hibernation
+ * @lpm:		Enable LPM support.
+ *			0 - No
+ *			1 - Yes
+ * @lpm_clock_gating:		Enable core PHY clock gating.
+ *			0 - No
+ *			1 - Yes
+ * @besl:		Enable LPM Errata support.
+ *			0 - No
+ *			1 - Yes
+ * @hird_threshold_en:	HIRD or HIRD Threshold enable.
+ *			0 - No
+ *			1 - Yes
+ * @hird_threshold:	Value of BESL or HIRD Threshold.
+ * @activate_stm_fs_transceiver: Activate internal transceiver using GGPIO
+ *			register.
+ *			0 - Deactivate the transceiver (default)
+ *			1 - Activate the transceiver
+ * @g_dma:              Enables gadget dma usage (default: autodetect).
+ * @g_dma_desc:         Enables gadget descriptor DMA (default: autodetect).
+ * @g_rx_fifo_size:	The periodic rx fifo size for the device, in
+ *			DWORDS from 16-32768 (default: 2048 if
+ *			possible, otherwise autodetect).
+ * @g_np_tx_fifo_size:	The non-periodic tx fifo size for the device in
+ *			DWORDS from 16-32768 (default: 1024 if
+ *			possible, otherwise autodetect).
+ * @g_tx_fifo_size:	An array of TX fifo sizes in dedicated fifo
+ *			mode. Each value corresponds to one EP
+ *			starting from EP1 (max 15 values). Sizes are
+ *			in DWORDS with possible values from from
+ *			16-32768 (default: 256, 256, 256, 256, 768,
+ *			768, 768, 768, 0, 0, 0, 0, 0, 0, 0).
+ * @change_speed_quirk: Change speed configuration to DWC2_SPEED_PARAM_FULL
+ *                      while full&low speed device connect. And change speed
+ *                      back to DWC2_SPEED_PARAM_HIGH while device is gone.
+ *			0 - No (default)
+ *			1 - Yes
+ *
+ * The following parameters may be specified when starting the module. These
+ * parameters define how the DWC_otg controller should be configured. A
+ * value of -1 (or any other out of range value) for any parameter means
+ * to read the value from hardware (if possible) or use the builtin
+ * default described above.
+ */
+struct dwc2_core_params {
+	u8 otg_cap;
+#define DWC2_CAP_PARAM_HNP_SRP_CAPABLE		0
+#define DWC2_CAP_PARAM_SRP_ONLY_CAPABLE		1
+#define DWC2_CAP_PARAM_NO_HNP_SRP_CAPABLE	2
+
+	u8 phy_type;
+#define DWC2_PHY_TYPE_PARAM_FS		0
+#define DWC2_PHY_TYPE_PARAM_UTMI	1
+#define DWC2_PHY_TYPE_PARAM_ULPI	2
+
+	u8 speed;
+#define DWC2_SPEED_PARAM_HIGH	0
+#define DWC2_SPEED_PARAM_FULL	1
+#define DWC2_SPEED_PARAM_LOW	2
+
+	u8 phy_utmi_width;
+	bool phy_ulpi_ddr;
+	bool phy_ulpi_ext_vbus;
+	bool phy_ulpi_ext_vbus_ind;
+	bool phy_ulpi_ext_vbus_ind_complement;
+	bool phy_ulpi_ext_vbus_ind_passthrough;
+
+	bool enable_dynamic_fifo;
+	bool en_multiple_tx_fifo;
+	bool i2c_enable;
+	bool acg_enable;
+	bool ulpi_fs_ls;
+	bool ts_dline;
+	bool reload_ctl;
+	bool uframe_sched;
+	bool external_id_pin_ctl;
+
+	int power_down;
+#define DWC2_POWER_DOWN_PARAM_NONE		0
+#define DWC2_POWER_DOWN_PARAM_PARTIAL		1
+#define DWC2_POWER_DOWN_PARAM_HIBERNATION	2
+
+	bool lpm;
+	bool lpm_clock_gating;
+	bool besl;
+	bool hird_threshold_en;
+	u8 hird_threshold;
+	bool activate_stm_fs_transceiver;
+	bool ipg_isoc_en;
+	u16 max_packet_count;
+	u32 max_transfer_size;
+	u32 ahbcfg;
+
+	bool dma;
+	bool dma_desc;
+
+	/* Host parameters */
+	bool host_support_fs_ls_low_power;
+	bool host_ls_low_power_phy_clk;
+
+	u8 host_channels;
+	u16 host_rx_fifo_size;
+	u16 host_nperio_tx_fifo_size;
+	u16 host_perio_tx_fifo_size;
+
+	/* Gadget parameters */
+	u32 g_rx_fifo_size;
+	u32 g_np_tx_fifo_size;
+	u32 g_tx_fifo_size[DWC2_MAX_EPS_CHANNELS];
+
+	bool change_speed_quirk;
+};
+
+/**
+ * struct dwc2_hw_params - Autodetected parameters.
+ *
+ * These parameters are the various parameters read from hardware
+ * registers during initialization. They typically contain the best
+ * supported or maximum value that can be configured in the
+ * corresponding dwc2_core_params value.
+ *
+ * The values that are not in dwc2_core_params are documented below.
+ *
+ * @op_mode:             Mode of Operation
+ *                       0 - HNP- and SRP-Capable OTG (Host & Device)
+ *                       1 - SRP-Capable OTG (Host & Device)
+ *                       2 - Non-HNP and Non-SRP Capable OTG (Host & Device)
+ *                       3 - SRP-Capable Device
+ *                       4 - Non-OTG Device
+ *                       5 - SRP-Capable Host
+ *                       6 - Non-OTG Host
+ * @arch:                Architecture
+ *                       0 - Slave only
+ *                       1 - External DMA
+ *                       2 - Internal DMA
+ * @ipg_isoc_en:        This feature indicates that the controller supports
+ *                      the worst-case scenario of Rx followed by Rx
+ *                      Interpacket Gap (IPG) (32 bitTimes) as per the utmi
+ *                      specification for any token following ISOC OUT token.
+ *                       0 - Don't support
+ *                       1 - Support
+ * @power_optimized:    Are power optimizations enabled?
+ * @num_dev_ep:         Number of device endpoints available
+ * @num_dev_in_eps:     Number of device IN endpoints available
+ * @num_dev_perio_in_ep: Number of device periodic IN endpoints
+ *                       available
+ * @dev_token_q_depth:  Device Mode IN Token Sequence Learning Queue
+ *                      Depth
+ *                       0 to 30
+ * @host_perio_tx_q_depth:
+ *                      Host Mode Periodic Request Queue Depth
+ *                       2, 4 or 8
+ * @nperio_tx_q_depth:
+ *                      Non-Periodic Request Queue Depth
+ *                       2, 4 or 8
+ * @hs_phy_type:         High-speed PHY interface type
+ *                       0 - High-speed interface not supported
+ *                       1 - UTMI+
+ *                       2 - ULPI
+ *                       3 - UTMI+ and ULPI
+ * @fs_phy_type:         Full-speed PHY interface type
+ *                       0 - Full speed interface not supported
+ *                       1 - Dedicated full speed interface
+ *                       2 - FS pins shared with UTMI+ pins
+ *                       3 - FS pins shared with ULPI pins
+ * @total_fifo_size:    Total internal RAM for FIFOs (bytes)
+ * @hibernation:	Is hibernation enabled?
+ * @utmi_phy_data_width: UTMI+ PHY data width
+ *                       0 - 8 bits
+ *                       1 - 16 bits
+ *                       2 - 8 or 16 bits
+ * @snpsid:             Value from SNPSID register
+ * @dev_ep_dirs:        Direction of device endpoints (GHWCFG1)
+ * @g_tx_fifo_size:	Power-on values of TxFIFO sizes
+ * @dma_desc_enable:    When DMA mode is enabled, specifies whether to use
+ *                      address DMA mode or descriptor DMA mode for accessing
+ *                      the data FIFOs. The driver will automatically detect the
+ *                      value for this if none is specified.
+ *                       0 - Address DMA
+ *                       1 - Descriptor DMA (default, if available)
+ * @enable_dynamic_fifo: 0 - Use coreConsultant-specified FIFO size parameters
+ *                       1 - Allow dynamic FIFO sizing (default, if available)
+ * @en_multiple_tx_fifo: Specifies whether dedicated per-endpoint transmit FIFOs
+ *                      are enabled for non-periodic IN endpoints in device
+ *                      mode.
+ * @host_nperio_tx_fifo_size: Number of 4-byte words in the non-periodic Tx FIFO
+ *                      in host mode when dynamic FIFO sizing is enabled
+ *                       16 to 32768
+ *                      Actual maximum value is autodetected and also
+ *                      the default.
+ * @host_perio_tx_fifo_size: Number of 4-byte words in the periodic Tx FIFO in
+ *                      host mode when dynamic FIFO sizing is enabled
+ *                       16 to 32768
+ *                      Actual maximum value is autodetected and also
+ *                      the default.
+ * @max_transfer_size:  The maximum transfer size supported, in bytes
+ *                       2047 to 65,535
+ *                      Actual maximum value is autodetected and also
+ *                      the default.
+ * @max_packet_count:   The maximum number of packets in a transfer
+ *                       15 to 511
+ *                      Actual maximum value is autodetected and also
+ *                      the default.
+ * @host_channels:      The number of host channel registers to use
+ *                       1 to 16
+ *                      Actual maximum value is autodetected and also
+ *                      the default.
+ * @dev_nperio_tx_fifo_size: Number of 4-byte words in the non-periodic Tx FIFO
+ *			     in device mode when dynamic FIFO sizing is enabled
+ *			     16 to 32768
+ *			     Actual maximum value is autodetected and also
+ *			     the default.
+ * @i2c_enable:         Specifies whether to use the I2Cinterface for a full
+ *                      speed PHY. This parameter is only applicable if phy_type
+ *                      is FS.
+ *                       0 - No (default)
+ *                       1 - Yes
+ * @acg_enable:		For enabling Active Clock Gating in the controller
+ *                       0 - Disable
+ *                       1 - Enable
+ * @lpm_mode:		For enabling Link Power Management in the controller
+ *                       0 - Disable
+ *                       1 - Enable
+ * @rx_fifo_size:	Number of 4-byte words in the  Rx FIFO when dynamic
+ *			FIFO sizing is enabled 16 to 32768
+ *			Actual maximum value is autodetected and also
+ *			the default.
+ */
+struct dwc2_hw_params {
+	unsigned op_mode:3;
+	unsigned arch:2;
+	unsigned dma_desc_enable:1;
+	unsigned enable_dynamic_fifo:1;
+	unsigned en_multiple_tx_fifo:1;
+	unsigned rx_fifo_size:16;
+	unsigned host_nperio_tx_fifo_size:16;
+	unsigned dev_nperio_tx_fifo_size:16;
+	unsigned host_perio_tx_fifo_size:16;
+	unsigned nperio_tx_q_depth:3;
+	unsigned host_perio_tx_q_depth:3;
+	unsigned dev_token_q_depth:5;
+	unsigned max_transfer_size:26;
+	unsigned max_packet_count:11;
+	unsigned host_channels:5;
+	unsigned hs_phy_type:2;
+	unsigned fs_phy_type:2;
+	unsigned i2c_enable:1;
+	unsigned acg_enable:1;
+	unsigned num_dev_ep:4;
+	unsigned num_dev_in_eps:4;
+	unsigned num_dev_perio_in_ep:4;
+	unsigned total_fifo_size:16;
+	unsigned power_optimized:1;
+	unsigned hibernation:1;
+	unsigned utmi_phy_data_width:2;
+	unsigned lpm_mode:1;
+	unsigned ipg_isoc_en:1;
+	u32 snpsid;
+	u32 dev_ep_dirs;
+	u32 g_tx_fifo_size[DWC2_MAX_EPS_CHANNELS];
+};
+
+#define MAX_DEVICE			16
+#define MAX_ENDPOINT DWC2_MAX_EPS_CHANNELS
+
+struct dwc2 {
+	struct device_d *dev;
+	void __iomem *regs;
+	enum usb_dr_mode dr_mode;
+	struct dwc2_hw_params hw_params;
+	struct dwc2_core_params params;
+
+#ifdef CONFIG_USB_DWC2_HOST
+	struct usb_host host;
+	u8 in_data_toggle[MAX_DEVICE][MAX_ENDPOINT];
+	u8 out_data_toggle[MAX_DEVICE][MAX_ENDPOINT];
+	int root_hub_devnum;
+#endif
+};
+
+#define host_to_dwc2(ptr) container_of(ptr, struct dwc2, host)
+#define gadget_to_dwc2(ptr) container_of(ptr, struct dwc2, gadget)
+
+#define dwc2_err(d, arg...) dev_err((d)->dev, ## arg)
+#define dwc2_warn(d, arg...) dev_err((d)->dev, ## arg)
+#define dwc2_info(d, arg...) dev_info((d)->dev, ## arg)
+#define dwc2_dbg(d, arg...) dev_dbg((d)->dev, ## arg)
+#define dwc2_vdbg(d, arg...) dev_vdbg((d)->dev, ## arg)
+
+static inline u32 dwc2_readl(struct dwc2 *dwc2, u32 offset)
+{
+	u32 val;
+
+	val = readl(dwc2->regs + offset);
+
+	return val;
+}
+
+static inline void dwc2_writel(struct dwc2 *dwc2, u32 value, u32 offset)
+{
+	writel(value, dwc2->regs + offset);
+}
+
+/**
+ * dwc2_wait_bit_set - Waits for bit to be set.
+ * @dwc2: Programming view of DWC2 controller.
+ * @offset: Register's offset where bit/bits must be set.
+ * @mask: Mask of the bit/bits which must be set.
+ * @timeout: Timeout to wait.
+ *
+ * Return: 0 if bit/bits are set or -ETIMEDOUT in case of timeout.
+ */
+static inline int dwc2_wait_bit_set(struct dwc2 *dwc2, u32 offset, u32 mask,
+			    u32 timeout)
+{
+	u32 i;
+
+	for (i = 0; i < timeout; i++) {
+		if (dwc2_readl(dwc2, offset) & mask)
+			return 0;
+		udelay(1);
+	}
+
+	return -ETIMEDOUT;
+}
+
+/**
+ * dwc2_wait_bit_clear - Waits for bit to be clear.
+ * @dwc2: Programming view of DWC2 controller.
+ * @offset: Register's offset where bit/bits must be set.
+ * @mask: Mask of the bit/bits which must be set.
+ * @timeout: Timeout to wait.
+ *
+ * Return: 0 if bit/bits are set or -ETIMEDOUT in case of timeout.
+ */
+static inline int dwc2_wait_bit_clear(struct dwc2 *dwc2, u32 offset, u32 mask,
+			    u32 timeout)
+{
+	u32 i;
+
+	for (i = 0; i < timeout; i++) {
+		if (!(dwc2_readl(dwc2, offset) & mask))
+			return 0;
+		udelay(1);
+	}
+
+	return -ETIMEDOUT;
+}
+
+/*
+ * Returns the mode of operation, host or device
+ */
+static inline int dwc2_is_host_mode(struct dwc2 *dwc2)
+{
+	return (dwc2_readl(dwc2, GINTSTS) & GINTSTS_CURMODE_HOST) != 0;
+}
+
+static inline int dwc2_is_device_mode(struct dwc2 *dwc2)
+{
+	return (dwc2_readl(dwc2, GINTSTS) & GINTSTS_CURMODE_HOST) == 0;
+}
diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
new file mode 100644
index 000000000..a2f68d250
--- /dev/null
+++ b/drivers/usb/dwc2/dwc2.c
@@ -0,0 +1,90 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2012 Oleksandr Tymoshenko <gonzo@freebsd.org>
+ * Copyright (C) 2014 Marek Vasut <marex@denx.de>
+ *
+ * Copied from u-Boot
+ */
+#include <common.h>
+#include <of.h>
+#include <dma.h>
+#include <init.h>
+#include <errno.h>
+#include <driver.h>
+#include <linux/clk.h>
+
+#include "dwc2.h"
+
+static void dwc2_uninit_common(struct dwc2 *dwc2)
+{
+	uint32_t hprt0;
+
+	hprt0 = dwc2_readl(dwc2, HPRT0);
+
+	/* Put everything in reset. */
+	hprt0 &= ~(HPRT0_ENA | HPRT0_ENACHG | HPRT0_CONNDET | HPRT0_OVRCURRCHG);
+	hprt0 |= HPRT0_RST;
+
+	dwc2_writel(dwc2, hprt0, HPRT0);
+}
+
+static int dwc2_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	struct dwc2 *dwc2;
+	int ret;
+
+	dwc2 = xzalloc(sizeof(*dwc2));
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	dwc2->regs = IOMEM(iores->start);
+	dwc2->dev = dev;
+
+	ret = dwc2_core_snpsid(dwc2);
+	if (ret)
+		goto error;
+
+	/*
+	 * Reset before dwc2_get_hwparams() then it could get power-on real
+	 * reset value form registers.
+	 */
+	ret = dwc2_core_reset(dwc2);
+	if (ret)
+		goto error;
+
+	/* Detect config values from hardware */
+	dwc2_get_hwparams(dwc2);
+
+	dwc2_set_default_params(dwc2);
+
+	dma_set_mask(dev, DMA_BIT_MASK(32));
+	dev->priv = dwc2;
+
+	ret = dwc2_register_host(dwc2);
+error:
+	return ret;
+}
+
+static void dwc2_remove(struct device_d *dev)
+{
+	struct dwc2 *dwc2 = dev->priv;
+
+	dwc2_uninit_common(dwc2);
+}
+
+static const struct of_device_id dwc2_platform_dt_ids[] = {
+	{ .compatible = "brcm,bcm2835-usb", },
+	{ .compatible = "brcm,bcm2708-usb", },
+	{ .compatible = "snps,dwc2", },
+	{ }
+};
+
+static struct driver_d dwc2_driver = {
+	.name	= "dwc2",
+	.probe	= dwc2_probe,
+	.remove = dwc2_remove,
+	.of_compatible = DRV_OF_COMPAT(dwc2_platform_dt_ids),
+};
+device_platform_driver(dwc2_driver);
diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
new file mode 100644
index 000000000..35c0d1415
--- /dev/null
+++ b/drivers/usb/dwc2/dwc2.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+#include <usb/usb.h>
+#include <usb/usb_defs.h>
+#include <usb/gadget.h>
+
+#include "regs.h"
+#include "core.h"
+
+/* Core functions */
+void dwc2_set_param_otg_cap(struct dwc2 *dwc2);
+void dwc2_set_param_phy_type(struct dwc2 *dwc2);
+void dwc2_set_param_speed(struct dwc2 *dwc2);
+void dwc2_set_param_phy_utmi_width(struct dwc2 *dwc2);
+void dwc2_set_default_params(struct dwc2 *dwc2);
+int dwc2_core_snpsid(struct dwc2 *dwc2);
+void dwc2_get_hwparams(struct dwc2 *dwc2);
+
+void dwc2_init_fs_ls_pclk_sel(struct dwc2 *dwc2);
+void dwc2_flush_all_fifo(struct dwc2 *dwc2);
+
+int dwc2_phy_init(struct dwc2 *dwc2, bool select_phy);
+int dwc2_gahbcfg_init(struct dwc2 *dwc2);
+void dwc2_gusbcfg_init(struct dwc2 *dwc2);
+
+int dwc2_core_reset(struct dwc2 *dwc2);
+void dwc2_core_init(struct dwc2 *dwc2);
+
+/* Host functions */
+#ifdef CONFIG_USB_DWC2_HOST
+int dwc2_submit_rh_msg(struct dwc2 *dwc2, struct usb_device *dev,
+		unsigned long pipe, void *buf, int len,
+		struct devrequest *setup);
+int dwc2_register_host(struct dwc2 *dwc2);
+#else
+static inline int dwc2_register_host(struct dwc2 *dwc2) { return 0; }
+#endif
+
diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
new file mode 100644
index 000000000..a678e98fd
--- /dev/null
+++ b/drivers/usb/dwc2/host.c
@@ -0,0 +1,643 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include <dma.h>
+#include "dwc2.h"
+
+#define to_dwc2 host_to_dwc2
+
+/* Use only HC channel 0. */
+#define DWC2_HC_CHANNEL			0
+
+static int dwc2_eptype[] = {
+	DXEPCTL_EPTYPE_ISO,
+	DXEPCTL_EPTYPE_INTERRUPT,
+	DXEPCTL_EPTYPE_CONTROL,
+	DXEPCTL_EPTYPE_BULK,
+};
+
+static int dwc2_do_split(struct dwc2 *dwc2, struct usb_device *dev)
+{
+	uint32_t hprt0 = dwc2_readl(dwc2, HPRT0);
+	uint32_t prtspd = (hprt0 & HPRT0_SPD_MASK) >> HPRT0_SPD_SHIFT;
+
+	return prtspd == HPRT0_SPD_HIGH_SPEED && dev->speed != USB_SPEED_HIGH;
+}
+
+static void dwc2_host_hub_info(struct dwc2 *dwc2, struct usb_device *dev,
+			       uint8_t *hub_addr, uint8_t *hub_port)
+{
+	*hub_addr = dev->devnum;
+	*hub_port = dev->portnr;
+
+	for (; dev->parent; dev = dev->parent) {
+		if (dev->parent->descriptor->bDeviceClass == USB_CLASS_HUB) {
+			*hub_addr = dev->parent->devnum;
+			*hub_port = dev->parent->portnr;
+			break;
+		}
+	}
+}
+
+static void dwc2_hc_init_split(struct dwc2 *dwc2, struct usb_device *dev,
+			       uint8_t hc)
+{
+	uint8_t hub_addr, hub_port;
+	uint32_t hcsplt = 0;
+
+	dwc2_host_hub_info(dwc2, dev, &hub_addr, &hub_port);
+
+	hcsplt = HCSPLT_SPLTENA;
+	hcsplt |= hub_addr << HCSPLT_HUBADDR_SHIFT;
+	hcsplt |= hub_port << HCSPLT_PRTADDR_SHIFT;
+
+	/* Program the HCSPLIT register for SPLITs */
+	dwc2_writel(dwc2, hcsplt, HCSPLT(hc));
+}
+
+static void dwc2_hc_enable_ints(struct dwc2 *dwc2, uint8_t hc)
+{
+	uint32_t intmsk;
+	uint32_t hcintmsk = HCINTMSK_CHHLTD;
+
+	dwc2_writel(dwc2, hcintmsk, HCINTMSK(hc));
+
+	/* Enable the top level host channel interrupt */
+	intmsk = dwc2_readl(dwc2, HAINTMSK);
+	intmsk |= 1 << hc;
+	dwc2_writel(dwc2, intmsk, HAINTMSK);
+
+	/* Make sure host channel interrupts are enabled */
+	intmsk = dwc2_readl(dwc2, GINTMSK);
+	intmsk |= GINTSTS_HCHINT;
+	dwc2_writel(dwc2, intmsk, GINTMSK);
+}
+
+/**
+ * Prepares a host channel for transferring packets to/from a specific
+ * endpoint. The HCCHARn register is set up with the characteristics specified
+ * in _hc. Host channel interrupts that may need to be serviced while this
+ * transfer is in progress are enabled.
+ *
+ * @param regs Programming view of DWC2 controller
+ * @param hc Information needed to initialize the host channel
+ */
+static void dwc2_hc_init(struct dwc2 *dwc2, uint8_t hc,
+		struct usb_device *dev, uint8_t dev_addr, uint8_t ep_num,
+		uint8_t ep_is_in, uint32_t ep_type, uint16_t max_packet)
+{
+	uint32_t hcchar = (dev_addr << HCCHAR_DEVADDR_SHIFT) |
+			  (ep_num << HCCHAR_EPNUM_SHIFT) |
+			  (ep_is_in ? HCCHAR_EPDIR : 0) |
+			  ep_type |
+			  (max_packet << HCCHAR_MPS_SHIFT);
+
+	if (dev->speed == USB_SPEED_LOW)
+		hcchar |= HCCHAR_LSPDDEV;
+
+	/* Clear old interrupt conditions for this dwc2 channel */
+	dwc2_writel(dwc2, ~HCINTMSK_RESERVED14_31, HCINT(hc));
+
+	/* Enable channel interrupts required for this transfer */
+	dwc2_hc_enable_ints(dwc2, hc);
+
+	/*
+	 * Program the HCCHARn register with the endpoint characteristics
+	 * for the current transfer.
+	 */
+	dwc2_writel(dwc2, hcchar, HCCHAR(hc));
+
+	/* Program the HCSPLIT register, default to no SPLIT */
+	dwc2_writel(dwc2, 0, HCSPLT(hc));
+}
+
+static int wait_for_chhltd(struct dwc2 *dwc2, u8 hc, uint32_t *sub, u8 *tgl)
+{
+	int ret;
+	uint32_t hcint, hctsiz, hcchar;
+
+	ret = dwc2_wait_bit_set(dwc2, HCINT(hc), HCINTMSK_CHHLTD, 10000);
+	if (ret) {
+		hcchar = dwc2_readl(dwc2, HCCHAR(hc));
+		dwc2_writel(dwc2, hcchar | HCCHAR_CHDIS, HCCHAR(hc));
+		dwc2_wait_bit_set(dwc2, HCINT(hc), HCINTMSK_CHHLTD, 10000);
+		return ret;
+	}
+
+	hcint = dwc2_readl(dwc2, HCINT(hc));
+
+	if (hcint & HCINTMSK_AHBERR)
+		dwc2_err(dwc2, "%s: AHB error during internal DMA access\n",
+			   __func__);
+
+	if (hcint & HCINTMSK_XFERCOMPL) {
+		hctsiz = dwc2_readl(dwc2, HCTSIZ(hc));
+		*sub = (hctsiz & TSIZ_XFERSIZE_MASK) >> TSIZ_XFERSIZE_SHIFT;
+		*tgl = (hctsiz & TSIZ_SC_MC_PID_MASK) >> TSIZ_SC_MC_PID_SHIFT;
+
+		dwc2_dbg(dwc2, "%s: HCINT=%08x sub=%u toggle=%d\n", __func__,
+			 hcint, *sub, *tgl);
+		return 0;
+	}
+
+	if (hcint & (HCINTMSK_NAK | HCINTMSK_FRMOVRUN))
+		return -EAGAIN;
+
+	dwc2_dbg(dwc2, "%s: Unknown channel status: (HCINT=%08x)\n", __func__,
+		 hcint);
+	return -EINVAL;
+}
+
+static int transfer_chunk(struct dwc2 *dwc2, u8 hc,
+			  u8 *pid, int in, void *buffer, int num_packets,
+			  int xfer_len, int *actual_len, int odd_frame)
+{
+	uint32_t hctsiz, hcchar, sub;
+	dma_addr_t dma_addr;
+	int ret = 0;
+
+	dma_addr = dma_map_single(dwc2->dev, buffer, xfer_len,
+				  in ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
+
+	dwc2_dbg(dwc2, "chunk: pid=%d xfer_len=%u pkts=%u dma_addr=%pad\n",
+		 *pid, xfer_len, num_packets, (void *)dma_addr);
+
+	dwc2_writel(dwc2, dma_addr, HCDMA(hc));
+
+	hctsiz = (xfer_len << TSIZ_XFERSIZE_SHIFT)
+		| (1 << TSIZ_PKTCNT_SHIFT)
+		| (*pid << TSIZ_SC_MC_PID_SHIFT);
+
+	dwc2_writel(dwc2, hctsiz, HCTSIZ(hc));
+
+	/* Clear old interrupt conditions for this dwc2 channel. */
+	dwc2_writel(dwc2, 0x3fff, HCINT(hc));
+
+	/* Set dwc2 channel enable after all other setup is complete. */
+	hcchar = dwc2_readl(dwc2, HCCHAR(hc));
+	hcchar &= ~(HCCHAR_MULTICNT_MASK | HCCHAR_CHDIS);
+	hcchar |= (1 << HCCHAR_MULTICNT_SHIFT) | HCCHAR_CHENA;
+	if (odd_frame)
+		hcchar |= HCCHAR_ODDFRM;
+	else
+		hcchar &= ~HCCHAR_ODDFRM;
+	dwc2_writel(dwc2, hcchar, HCCHAR(hc));
+
+	ret = wait_for_chhltd(dwc2, hc, &sub, pid);
+	if (ret < 0)
+		goto exit;
+
+	if (in)
+		xfer_len -= sub;
+	*actual_len = xfer_len;
+
+exit:
+	dma_unmap_single(dwc2->dev, dma_addr, xfer_len,
+				  in ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
+
+	return ret;
+}
+
+static int dwc2_submit_packet(struct dwc2 *dwc2, struct usb_device *dev, u8 hc,
+			      unsigned long pipe, u8 *pid, int in, void *buf,
+			      int len)
+{
+	int devnum = usb_pipedevice(pipe);
+	int ep = usb_pipeendpoint(pipe);
+	int mps = usb_maxpacket(dev, pipe);
+	int eptype = dwc2_eptype[usb_pipetype(pipe)];
+	int do_split = dwc2_do_split(dwc2, dev);
+	int complete_split = 0;
+	int done = 0;
+	int ret = 0;
+	uint32_t xfer_len;
+	uint32_t num_packets;
+	int stop_transfer = 0;
+	uint32_t max_xfer_len;
+	int ssplit_frame_num = 0;
+
+	max_xfer_len = dwc2->params.max_packet_count * mps;
+
+	if (max_xfer_len > dwc2->params.max_transfer_size)
+		max_xfer_len = dwc2->params.max_transfer_size;
+
+	/* Make sure that max_xfer_len is a multiple of max packet size. */
+	num_packets = max_xfer_len / mps;
+	max_xfer_len = num_packets * mps;
+
+	/* Initialize channel */
+	dwc2_hc_init(dwc2, hc, dev, devnum, ep, in, eptype, mps);
+
+	/* Check if the target is a FS/LS device behind a HS hub */
+	if (do_split) {
+		dwc2_hc_init_split(dwc2, dev, hc);
+		num_packets = 1;
+		max_xfer_len = mps;
+	}
+	do {
+		int actual_len = 0;
+		uint32_t hcint, hcsplt;
+		int odd_frame = 0;
+
+		xfer_len = len - done;
+
+		if (xfer_len > max_xfer_len)
+			xfer_len = max_xfer_len;
+		else if (xfer_len > mps)
+			num_packets = (xfer_len + mps - 1) / mps;
+		else
+			num_packets = 1;
+
+		if (complete_split || do_split) {
+			hcsplt = dwc2_readl(dwc2, HCSPLT(hc));
+			if (complete_split)
+				hcsplt |= HCSPLT_COMPSPLT;
+			else if (do_split)
+				hcsplt &= ~HCSPLT_COMPSPLT;
+			dwc2_writel(dwc2, hcsplt, HCSPLT(hc));
+		}
+
+		if (eptype == DXEPCTL_EPTYPE_INTERRUPT) {
+			int uframe_num = dwc2_readl(dwc2, HFNUM);
+
+			if (!(uframe_num & 0x1))
+				odd_frame = 1;
+		}
+
+		ret = transfer_chunk(dwc2, hc, pid,
+				     in, (char *)buf + done, num_packets,
+				     xfer_len, &actual_len, odd_frame);
+
+		hcint = dwc2_readl(dwc2, HCINT(hc));
+		if (complete_split) {
+			stop_transfer = 0;
+			if (hcint & HCINTMSK_NYET) {
+				int frame_num = HFNUM_MAX_FRNUM &
+					dwc2_readl(dwc2, HFNUM);
+
+				ret = 0;
+				if (((frame_num - ssplit_frame_num) &
+				    HFNUM_MAX_FRNUM) > 4)
+					ret = -EAGAIN;
+			} else {
+				complete_split = 0;
+			}
+		} else if (do_split) {
+			if (hcint & HCINTMSK_ACK) {
+				ssplit_frame_num = HFNUM_MAX_FRNUM &
+					dwc2_readl(dwc2, HFNUM);
+				ret = 0;
+				complete_split = 1;
+			}
+		}
+
+		if (ret)
+			break;
+
+		if (actual_len < xfer_len)
+			stop_transfer = 1;
+
+		done += actual_len;
+
+	/* Transactions are done when when either all data is transferred or
+	 * there is a short transfer. In case of a SPLIT make sure the CSPLIT
+	 * is executed.
+	 */
+	} while (((done < len) && !stop_transfer) || complete_split);
+
+	dwc2_writel(dwc2, 0, HCINTMSK(hc));
+	dwc2_writel(dwc2, 0xFFFFFFFF, HCINT(hc));
+
+	dev->status = 0;
+	dev->act_len = done;
+
+	return ret;
+}
+
+static int dwc2_submit_control_msg(struct usb_device *udev,
+				   unsigned long pipe, void *buffer, int len,
+				   struct devrequest *setup, int timeout)
+{
+	struct usb_host *host = udev->host;
+	struct dwc2 *dwc2 = to_dwc2(host);
+	int devnum = usb_pipedevice(pipe);
+	int ret, act_len;
+	u8 pid;
+	u8 hc = DWC2_HC_CHANNEL;
+	/* For CONTROL endpoint pid should start with DATA1 */
+	int status_direction;
+
+	if (devnum == dwc2->root_hub_devnum) {
+		udev->status = 0;
+		udev->speed = USB_SPEED_HIGH;
+		return dwc2_submit_rh_msg(dwc2, udev, pipe, buffer, len, setup);
+	}
+
+	/* SETUP stage */
+	pid = TSIZ_SC_MC_PID_SETUP;
+	do {
+		ret = dwc2_submit_packet(dwc2, udev, hc, pipe, &pid,
+					 0, setup, 8);
+	} while (ret == -EAGAIN);
+	if (ret)
+		return ret;
+
+	/* DATA stage */
+	act_len = 0;
+	if (buffer) {
+		pid = TSIZ_SC_MC_PID_DATA1;
+		do {
+			ret = dwc2_submit_packet(dwc2, udev, hc, pipe, &pid,
+						 usb_pipein(pipe), buffer, len);
+			act_len += udev->act_len;
+			buffer += udev->act_len;
+			len -= udev->act_len;
+		} while (ret == -EAGAIN);
+		if (ret)
+			return ret;
+		status_direction = usb_pipeout(pipe);
+	} else {
+		/* No-data CONTROL always ends with an IN transaction */
+		status_direction = 1;
+	}
+
+	/* STATUS stage */
+	pid = TSIZ_SC_MC_PID_DATA1;
+	do {
+		ret = dwc2_submit_packet(dwc2, udev, hc, pipe, &pid,
+					 status_direction, NULL, 0);
+	} while (ret == -EAGAIN);
+	if (ret)
+		return ret;
+
+	udev->act_len = act_len;
+
+	return 0;
+}
+
+static int dwc2_submit_bulk_msg(struct usb_device *udev, unsigned long pipe,
+				void *buffer, int len, int timeout)
+{
+	struct usb_host *host = udev->host;
+	struct dwc2 *dwc2 = to_dwc2(host);
+	int devnum = usb_pipedevice(pipe);
+	int ep = usb_pipeendpoint(pipe);
+	int in = usb_pipein(pipe);
+	u8 *pid;
+	u8 hc = DWC2_HC_CHANNEL;
+
+	if ((devnum >= MAX_DEVICE) || (devnum == dwc2->root_hub_devnum)) {
+		udev->status = 0;
+		return -EINVAL;
+	}
+
+	if (in)
+		pid = &dwc2->in_data_toggle[devnum][ep];
+	else
+		pid = &dwc2->out_data_toggle[devnum][ep];
+
+	return dwc2_submit_packet(dwc2, udev, hc, pipe, pid, in, buffer, len);
+}
+
+static int dwc2_submit_int_msg(struct usb_device *udev, unsigned long pipe,
+			       void *buffer, int len, int interval)
+{
+	struct usb_host *host = udev->host;
+	struct dwc2 *dwc2 = to_dwc2(host);
+	int devnum = usb_pipedevice(pipe);
+	int ep = usb_pipeendpoint(pipe);
+	int in = usb_pipein(pipe);
+	u8 *pid;
+	u8 hc = DWC2_HC_CHANNEL;
+	uint64_t start;
+	int ret;
+
+	if ((devnum >= MAX_DEVICE) || (devnum == dwc2->root_hub_devnum)) {
+		udev->status = 0;
+		return -EINVAL;
+	}
+
+	if (usb_pipein(pipe))
+		pid = &dwc2->in_data_toggle[devnum][ep];
+	else
+		pid = &dwc2->out_data_toggle[devnum][ep];
+
+	start = get_time_ns();
+
+	while (1) {
+		ret = dwc2_submit_packet(dwc2, udev, hc, pipe, pid, in,
+					 buffer, len);
+		if (ret != -EAGAIN)
+			return ret;
+		if (is_timeout(start, USB_CNTL_TIMEOUT * MSECOND)) {
+			dwc2_err(dwc2, "Timeout on interrupt endpoint\n");
+			return -ETIMEDOUT;
+		}
+	}
+}
+
+/*
+ * This function initializes the DWC2 controller registers for
+ * host mode.
+ *
+ * This function flushes the Tx and Rx FIFOs and it flushes any entries in the
+ * request queues. Host channels are reset to ensure that they are ready for
+ * performing transfers.
+ *
+ * @param dev USB Device (NULL if driver model is not being used)
+ * @param regs Programming view of DWC2 controller
+ *
+ */
+static void dwc2_core_host_init(struct device_d *dev,
+				   struct dwc2 *dwc2)
+{
+	uint32_t nptxfifosize = 0;
+	uint32_t ptxfifosize = 0;
+	uint32_t hcchar, hcfg, hprt0, hotgctl, usbcfg;
+	int i, ret, num_channels;
+
+	dwc2_dbg(dwc2, "%s(%p)\n", __func__, dwc2);
+
+	/* Set HS/FS Timeout Calibration to 7 (max available value).
+	 * The number of PHY clocks that the application programs in
+	 * this field is added to the high/full speed interpacket timeout
+	 * duration in the core to account for any additional delays
+	 * introduced by the PHY. This can be required, because the delay
+	 * introduced by the PHY in generating the linestate condition
+	 * can vary from one PHY to another.
+	 */
+	usbcfg = dwc2_readl(dwc2, GUSBCFG);
+	usbcfg |= GUSBCFG_TOUTCAL(7);
+	dwc2_writel(dwc2, usbcfg, GUSBCFG);
+
+	/* Restart the Phy Clock */
+	dwc2_writel(dwc2, 0, PCGCTL);
+
+	/* Initialize Host Configuration Register */
+	dwc2_init_fs_ls_pclk_sel(dwc2);
+	if (dwc2->params.speed == DWC2_SPEED_PARAM_FULL ||
+	    dwc2->params.speed == DWC2_SPEED_PARAM_LOW) {
+		hcfg = dwc2_readl(dwc2, HCFG);
+		hcfg |= HCFG_FSLSSUPP;
+		dwc2_writel(dwc2, hcfg, HCFG);
+	}
+
+	if (dwc2->params.dma_desc) {
+		u32 op_mode = dwc2->hw_params.op_mode;
+
+		if (dwc2->hw_params.snpsid < DWC2_CORE_REV_2_90a ||
+		    !dwc2->hw_params.dma_desc_enable ||
+		    op_mode == GHWCFG2_OP_MODE_SRP_CAPABLE_DEVICE ||
+		    op_mode == GHWCFG2_OP_MODE_NO_SRP_CAPABLE_DEVICE ||
+		    op_mode == GHWCFG2_OP_MODE_UNDEFINED) {
+			dwc2_err(dwc2, "Descriptor DMA not suppported\n");
+			dwc2_err(dwc2, "falling back to buffer DMA mode.\n");
+			dwc2->params.dma_desc = false;
+		} else {
+			hcfg = dwc2_readl(dwc2, HCFG);
+			hcfg |= HCFG_DESCDMA;
+			dwc2_writel(dwc2, hcfg, HCFG);
+		}
+	}
+
+	/* Configure data FIFO sizes */
+	if (dwc2_readl(dwc2, GHWCFG2) & GHWCFG2_DYNAMIC_FIFO) {
+		/* Rx FIFO */
+		dwc2_writel(dwc2, CONFIG_DWC2_HOST_RX_FIFO_SIZE, GRXFSIZ);
+
+		/* Non-periodic Tx FIFO */
+		nptxfifosize |= CONFIG_DWC2_HOST_NPERIO_TX_FIFO_SIZE <<
+				FIFOSIZE_DEPTH_SHIFT;
+		nptxfifosize |= CONFIG_DWC2_HOST_RX_FIFO_SIZE <<
+				FIFOSIZE_STARTADDR_SHIFT;
+		dwc2_writel(dwc2, nptxfifosize, GNPTXFSIZ);
+
+		/* Periodic Tx FIFO */
+		ptxfifosize |= CONFIG_DWC2_HOST_PERIO_TX_FIFO_SIZE <<
+				FIFOSIZE_DEPTH_SHIFT;
+		ptxfifosize |= (CONFIG_DWC2_HOST_RX_FIFO_SIZE +
+				CONFIG_DWC2_HOST_NPERIO_TX_FIFO_SIZE) <<
+				FIFOSIZE_STARTADDR_SHIFT;
+		dwc2_writel(dwc2, ptxfifosize, HPTXFSIZ);
+	}
+
+	/* Clear Host Set HNP Enable in the OTG Control Register */
+	hotgctl = dwc2_readl(dwc2, GOTGCTL);
+	hotgctl &= ~GOTGCTL_HSTSETHNPEN;
+	dwc2_writel(dwc2, hotgctl, GOTGCTL);
+
+	/* Make sure the FIFOs are flushed. */
+	dwc2_flush_all_fifo(dwc2);
+
+	/* Flush out any leftover queued requests. */
+	num_channels = dwc2->params.host_channels;
+	for (i = 0; i < num_channels; i++) {
+		hcchar = dwc2_readl(dwc2, HCCHAR(i));
+		if (!(hcchar & HCCHAR_CHENA))
+			continue;
+		hcchar |= HCCHAR_CHDIS;
+		hcchar &= ~(HCCHAR_CHENA | HCCHAR_EPDIR);
+		dwc2_writel(dwc2, hcchar, HCCHAR(i));
+	}
+
+	/* Halt all channels to put them into a known state. */
+	for (i = 0; i < num_channels; i++) {
+		hcchar = dwc2_readl(dwc2, HCCHAR(i));
+		if (!(hcchar & HCCHAR_CHENA))
+			continue;
+		hcchar |= HCCHAR_CHENA | HCCHAR_CHDIS;
+		hcchar &= ~HCCHAR_EPDIR;
+
+		dwc2_writel(dwc2, hcchar, HCCHAR(i));
+		ret = dwc2_wait_bit_clear(dwc2, HCCHAR(i), HCCHAR_CHENA, 10000);
+		if (ret)
+			dwc2_warn(dwc2, "%s: Timeout! Reseting channel %d\n",
+				  __func__, i);
+	}
+
+	/* Turn on the vbus power */
+	if (dwc2_is_host_mode(dwc2)) {
+		hprt0 = dwc2_readl(dwc2, HPRT0);
+		hprt0 &= ~(HPRT0_ENA | HPRT0_CONNDET);
+		hprt0 &= ~(HPRT0_ENACHG | HPRT0_OVRCURRCHG);
+		if (!(hprt0 & HPRT0_PWR)) {
+			hprt0 |= HPRT0_PWR;
+			dwc2_writel(dwc2, hprt0, HPRT0);
+		}
+	}
+
+	/* Disable all interrupts */
+	dwc2_writel(dwc2, 0, GINTMSK);
+	dwc2_writel(dwc2, 0, HAINTMSK);
+}
+
+static int dwc2_host_init(struct usb_host *host)
+{
+	struct dwc2 *dwc2 = to_dwc2(host);
+	struct device_d *dev = dwc2->dev;
+	uint32_t hprt0, gusbcfg;
+	int i, j;
+
+	/* Force Host mode in case the dwc2 controller is otg,
+	 * otherwise the mode selection is dictated by the id
+	 * pin, thus will require a otg A cable to be plugged-in.
+	 */
+	gusbcfg = dwc2_readl(dwc2, GUSBCFG) | GUSBCFG_FORCEHOSTMODE;
+	dwc2_writel(dwc2, gusbcfg, GUSBCFG);
+	mdelay(25);
+
+	dwc2_core_init(dwc2);
+	dwc2_core_host_init(dev, dwc2);
+
+	hprt0 = dwc2_readl(dwc2, HPRT0);
+	hprt0 &= ~(HPRT0_ENA | HPRT0_CONNDET);
+	/* clear HPRT0_ENACHG and HPRT0_OVRCURRCHG by writing 1 */
+	hprt0 |= HPRT0_ENACHG | HPRT0_OVRCURRCHG;
+	hprt0 |= HPRT0_RST;
+	dwc2_writel(dwc2, hprt0, HPRT0);
+
+	mdelay(50);
+
+	hprt0 = dwc2_readl(dwc2, HPRT0);
+	hprt0 &= ~(HPRT0_ENA | HPRT0_CONNDET | HPRT0_RST);
+	dwc2_writel(dwc2, hprt0, HPRT0);
+
+	for (i = 0; i < MAX_DEVICE; i++) {
+		for (j = 0; j < MAX_ENDPOINT; j++) {
+			dwc2->in_data_toggle[i][j] = TSIZ_SC_MC_PID_DATA0;
+			dwc2->out_data_toggle[i][j] = TSIZ_SC_MC_PID_DATA0;
+		}
+	}
+
+	/*
+	 * Add a 1 second delay here. This gives the host controller
+	 * a bit time before the comminucation with the USB devices
+	 * is started (the bus is scanned) and  fixes the USB detection
+	 * problems with some problematic USB keys.
+	 */
+	if (dwc2_is_host_mode(dwc2))
+		mdelay(1000);
+
+	return 0;
+}
+
+static int dwc2_detect(struct device_d *dev)
+{
+	struct dwc2 *dwc2 = dev->priv;
+
+	return usb_host_detect(&dwc2->host);
+}
+
+int dwc2_register_host(struct dwc2 *dwc2)
+{
+	struct usb_host *host;
+
+	host = &dwc2->host;
+	host->hw_dev = dwc2->dev;
+	host->init = dwc2_host_init;
+	host->submit_bulk_msg = dwc2_submit_bulk_msg;
+	host->submit_control_msg = dwc2_submit_control_msg;
+	host->submit_int_msg = dwc2_submit_int_msg;
+
+	dwc2->dev->detect = dwc2_detect;
+
+	return usb_register_host(host);
+}
diff --git a/drivers/usb/dwc2/regs.h b/drivers/usb/dwc2/regs.h
new file mode 100644
index 000000000..2170a0eaa
--- /dev/null
+++ b/drivers/usb/dwc2/regs.h
@@ -0,0 +1,848 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright (C) 2014 Marek Vasut <marex@denx.de>
+ */
+
+#ifndef __DWC2_H__
+#define __DWC2_H__
+
+#define HSOTG_REG(x)	(x)
+
+#define GOTGCTL				HSOTG_REG(0x000)
+#define GOTGCTL_CHIRPEN			BIT(27)
+#define GOTGCTL_MULT_VALID_BC_MASK	(0x1f << 22)
+#define GOTGCTL_MULT_VALID_BC_SHIFT	22
+#define GOTGCTL_CURMODE			BIT(21) /* was missing wtf ? */
+#define GOTGCTL_OTGVER			BIT(20)
+#define GOTGCTL_BSESVLD			BIT(19)
+#define GOTGCTL_ASESVLD			BIT(18)
+#define GOTGCTL_DBNC_SHORT		BIT(17)
+#define GOTGCTL_CONID_B			BIT(16)
+#define GOTGCTL_DBNCE_FLTR_BYPASS	BIT(15)
+#define GOTGCTL_EMBHOSTEN		BIT(12)
+#define GOTGCTL_DEVHNPEN		BIT(11)
+#define GOTGCTL_HSTSETHNPEN		BIT(10)
+#define GOTGCTL_HNPREQ			BIT(9)
+#define GOTGCTL_HSTNEGSCS		BIT(8)
+#define GOTGCTL_SESREQ			BIT(1)
+#define GOTGCTL_SESREQSCS		BIT(0)
+
+#define GOTGINT				HSOTG_REG(0x004)
+#define GOTGINT_DBNCE_DONE		BIT(19)
+#define GOTGINT_A_DEV_TOUT_CHG		BIT(18)
+#define GOTGINT_HST_NEG_DET		BIT(17)
+#define GOTGINT_HST_NEG_SUC_STS_CHNG	BIT(9)
+#define GOTGINT_SES_REQ_SUC_STS_CHNG	BIT(8)
+#define GOTGINT_SES_END_DET		BIT(2)
+
+#define GAHBCFG				HSOTG_REG(0x008)
+#define GAHBCFG_AHB_SINGLE		BIT(23)
+#define GAHBCFG_NOTI_ALL_DMA_WRIT	BIT(22)
+#define GAHBCFG_REM_MEM_SUPP		BIT(21)
+#define GAHBCFG_P_TXF_EMP_LVL		BIT(8)
+#define GAHBCFG_NP_TXF_EMP_LVL		BIT(7)
+#define GAHBCFG_DMA_EN			BIT(5)
+#define GAHBCFG_HBSTLEN_MASK		(0xf << 1)
+#define GAHBCFG_HBSTLEN_SHIFT		1
+#define GAHBCFG_HBSTLEN_SINGLE		0
+#define GAHBCFG_HBSTLEN_INCR		1
+#define GAHBCFG_HBSTLEN_INCR4		3
+#define GAHBCFG_HBSTLEN_INCR8		5
+#define GAHBCFG_HBSTLEN_INCR16		7
+#define GAHBCFG_GLBL_INTR_EN		BIT(0)
+#define GAHBCFG_CTRL_MASK		(GAHBCFG_P_TXF_EMP_LVL | \
+					 GAHBCFG_NP_TXF_EMP_LVL | \
+					 GAHBCFG_DMA_EN | \
+					 GAHBCFG_GLBL_INTR_EN)
+
+#define GUSBCFG				HSOTG_REG(0x00C)
+#define GUSBCFG_FORCEDEVMODE		BIT(30)
+#define GUSBCFG_FORCEHOSTMODE		BIT(29)
+#define GUSBCFG_TXENDDELAY		BIT(28)
+#define GUSBCFG_ICTRAFFICPULLREMOVE	BIT(27)
+#define GUSBCFG_ICUSBCAP		BIT(26)
+#define GUSBCFG_ULPI_INT_PROT_DIS	BIT(25)
+#define GUSBCFG_INDICATORPASSTHROUGH	BIT(24)
+#define GUSBCFG_INDICATORCOMPLEMENT	BIT(23)
+#define GUSBCFG_TERMSELDLPULSE		BIT(22)
+#define GUSBCFG_ULPI_EXT_VBUS_IND	BIT(21)
+#define GUSBCFG_ULPI_EXT_VBUS_DRV	BIT(20)
+#define GUSBCFG_ULPI_CLK_SUSP_M		BIT(19)
+#define GUSBCFG_ULPI_AUTO_RES		BIT(18)
+#define GUSBCFG_ULPI_FS_LS		BIT(17)
+#define GUSBCFG_OTG_UTMI_FS_SEL		BIT(16)
+#define GUSBCFG_PHY_LP_CLK_SEL		BIT(15)
+#define GUSBCFG_USBTRDTIM_MASK		(0xf << 10)
+#define GUSBCFG_USBTRDTIM_SHIFT		10
+#define GUSBCFG_HNPCAP			BIT(9)
+#define GUSBCFG_SRPCAP			BIT(8)
+#define GUSBCFG_DDRSEL			BIT(7)
+#define GUSBCFG_PHYSEL			BIT(6)
+#define GUSBCFG_FSINTF			BIT(5)
+#define GUSBCFG_ULPI_UTMI_SEL		BIT(4)
+#define GUSBCFG_PHYIF16			BIT(3)
+#define GUSBCFG_PHYIF8			(0 << 3)
+#define GUSBCFG_TOUTCAL_MASK		(0x7 << 0)
+#define GUSBCFG_TOUTCAL_SHIFT		0
+#define GUSBCFG_TOUTCAL_LIMIT		0x7
+#define GUSBCFG_TOUTCAL(_x)		((_x) << 0)
+
+#define GRSTCTL				HSOTG_REG(0x010)
+#define GRSTCTL_AHBIDLE			BIT(31)
+#define GRSTCTL_DMAREQ			BIT(30)
+#define GRSTCTL_TXFNUM_MASK		(0x1f << 6)
+#define GRSTCTL_TXFNUM_SHIFT		6
+#define GRSTCTL_TXFNUM_LIMIT		0x1f
+#define GRSTCTL_TXFNUM(_x)		((_x) << 6)
+#define GRSTCTL_TXFFLSH			BIT(5)
+#define GRSTCTL_RXFFLSH			BIT(4)
+#define GRSTCTL_IN_TKNQ_FLSH		BIT(3)
+#define GRSTCTL_FRMCNTRRST		BIT(2)
+#define GRSTCTL_HSFTRST			BIT(1)
+#define GRSTCTL_CSFTRST			BIT(0)
+
+#define GINTSTS				HSOTG_REG(0x014)
+#define GINTMSK				HSOTG_REG(0x018)
+#define GINTSTS_WKUPINT			BIT(31)
+#define GINTSTS_SESSREQINT		BIT(30)
+#define GINTSTS_DISCONNINT		BIT(29)
+#define GINTSTS_CONIDSTSCHNG		BIT(28)
+#define GINTSTS_LPMTRANRCVD		BIT(27)
+#define GINTSTS_PTXFEMP			BIT(26)
+#define GINTSTS_HCHINT			BIT(25)
+#define GINTSTS_PRTINT			BIT(24)
+#define GINTSTS_RESETDET		BIT(23)
+#define GINTSTS_FET_SUSP		BIT(22)
+#define GINTSTS_INCOMPL_IP		BIT(21)
+#define GINTSTS_INCOMPL_SOOUT		BIT(21)
+#define GINTSTS_INCOMPL_SOIN		BIT(20)
+#define GINTSTS_OEPINT			BIT(19)
+#define GINTSTS_IEPINT			BIT(18)
+#define GINTSTS_EPMIS			BIT(17)
+#define GINTSTS_RESTOREDONE		BIT(16)
+#define GINTSTS_EOPF			BIT(15)
+#define GINTSTS_ISOUTDROP		BIT(14)
+#define GINTSTS_ENUMDONE		BIT(13)
+#define GINTSTS_USBRST			BIT(12)
+#define GINTSTS_USBSUSP			BIT(11)
+#define GINTSTS_ERLYSUSP		BIT(10)
+#define GINTSTS_I2CINT			BIT(9)
+#define GINTSTS_ULPI_CK_INT		BIT(8)
+#define GINTSTS_GOUTNAKEFF		BIT(7)
+#define GINTSTS_GINNAKEFF		BIT(6)
+#define GINTSTS_NPTXFEMP		BIT(5)
+#define GINTSTS_RXFLVL			BIT(4)
+#define GINTSTS_SOF			BIT(3)
+#define GINTSTS_OTGINT			BIT(2)
+#define GINTSTS_MODEMIS			BIT(1)
+#define GINTSTS_CURMODE_HOST		BIT(0)
+
+#define GRXSTSR				HSOTG_REG(0x01C)
+#define GRXSTSP				HSOTG_REG(0x020)
+#define GRXSTS_FN_MASK			(0x7f << 25)
+#define GRXSTS_FN_SHIFT			25
+#define GRXSTS_PKTSTS_MASK		(0xf << 17)
+#define GRXSTS_PKTSTS_SHIFT		17
+#define GRXSTS_PKTSTS_GLOBALOUTNAK	1
+#define GRXSTS_PKTSTS_OUTRX		2
+#define GRXSTS_PKTSTS_HCHIN		2
+#define GRXSTS_PKTSTS_OUTDONE		3
+#define GRXSTS_PKTSTS_HCHIN_XFER_COMP	3
+#define GRXSTS_PKTSTS_SETUPDONE		4
+#define GRXSTS_PKTSTS_DATATOGGLEERR	5
+#define GRXSTS_PKTSTS_SETUPRX		6
+#define GRXSTS_PKTSTS_HCHHALTED		7
+#define GRXSTS_HCHNUM_MASK		(0xf << 0)
+#define GRXSTS_HCHNUM_SHIFT		0
+#define GRXSTS_DPID_MASK		(0x3 << 15)
+#define GRXSTS_DPID_SHIFT		15
+#define GRXSTS_BYTECNT_MASK		(0x7ff << 4)
+#define GRXSTS_BYTECNT_SHIFT		4
+#define GRXSTS_EPNUM_MASK		(0xf << 0)
+#define GRXSTS_EPNUM_SHIFT		0
+
+#define GRXFSIZ				HSOTG_REG(0x024)
+#define GRXFSIZ_DEPTH_MASK		(0xffff << 0)
+#define GRXFSIZ_DEPTH_SHIFT		0
+
+#define GNPTXFSIZ			HSOTG_REG(0x028)
+/* Use FIFOSIZE_* constants to access this register */
+
+#define GNPTXSTS			HSOTG_REG(0x02C)
+#define GNPTXSTS_NP_TXQ_TOP_MASK		(0x7f << 24)
+#define GNPTXSTS_NP_TXQ_TOP_SHIFT		24
+#define GNPTXSTS_NP_TXQ_SPC_AVAIL_MASK		(0xff << 16)
+#define GNPTXSTS_NP_TXQ_SPC_AVAIL_SHIFT		16
+#define GNPTXSTS_NP_TXQ_SPC_AVAIL_GET(_v)	(((_v) >> 16) & 0xff)
+#define GNPTXSTS_NP_TXF_SPC_AVAIL_MASK		(0xffff << 0)
+#define GNPTXSTS_NP_TXF_SPC_AVAIL_SHIFT		0
+#define GNPTXSTS_NP_TXF_SPC_AVAIL_GET(_v)	(((_v) >> 0) & 0xffff)
+
+#define GI2CCTL				HSOTG_REG(0x0030)
+#define GI2CCTL_BSYDNE			BIT(31)
+#define GI2CCTL_RW			BIT(30)
+#define GI2CCTL_I2CDATSE0		BIT(28)
+#define GI2CCTL_I2CDEVADDR_MASK		(0x3 << 26)
+#define GI2CCTL_I2CDEVADDR_SHIFT	26
+#define GI2CCTL_I2CSUSPCTL		BIT(25)
+#define GI2CCTL_ACK			BIT(24)
+#define GI2CCTL_I2CEN			BIT(23)
+#define GI2CCTL_ADDR_MASK		(0x7f << 16)
+#define GI2CCTL_ADDR_SHIFT		16
+#define GI2CCTL_REGADDR_MASK		(0xff << 8)
+#define GI2CCTL_REGADDR_SHIFT		8
+#define GI2CCTL_RWDATA_MASK		(0xff << 0)
+#define GI2CCTL_RWDATA_SHIFT		0
+
+#define GPVNDCTL			HSOTG_REG(0x0034)
+#define GPVNDCTL_REGWR			BIT(22)
+#define GPVNDCTL_NEWREGREQ		BIT(25)
+#define GPVNDCTL_VSTSDONE		BIT(27)
+#define GPVNDCTL_REGADDR_SHIFT		16
+#define GPVNDCTL_REGADDR_MASK		(0x3f << 16)
+#define GPVNDCTL_REGDATA_SHIFT		0
+#define GPVNDCTL_REGDATA_MASK		0xff
+
+#define GGPIO				HSOTG_REG(0x0038)
+#define GGPIO_STM32_OTG_GCCFG_PWRDWN	BIT(16)
+
+#define GUID				HSOTG_REG(0x003c)
+#define GSNPSID				HSOTG_REG(0x0040)
+#define GHWCFG1				HSOTG_REG(0x0044)
+#define GSNPSID_ID_MASK			GENMASK(31, 16)
+
+#define GHWCFG2				HSOTG_REG(0x0048)
+#define GHWCFG2_OTG_ENABLE_IC_USB		BIT(31)
+#define GHWCFG2_DEV_TOKEN_Q_DEPTH_MASK		(0x1f << 26)
+#define GHWCFG2_DEV_TOKEN_Q_DEPTH_SHIFT		26
+#define GHWCFG2_HOST_PERIO_TX_Q_DEPTH_MASK	(0x3 << 24)
+#define GHWCFG2_HOST_PERIO_TX_Q_DEPTH_SHIFT	24
+#define GHWCFG2_NONPERIO_TX_Q_DEPTH_MASK	(0x3 << 22)
+#define GHWCFG2_NONPERIO_TX_Q_DEPTH_SHIFT	22
+#define GHWCFG2_MULTI_PROC_INT			BIT(20)
+#define GHWCFG2_DYNAMIC_FIFO			BIT(19)
+#define GHWCFG2_PERIO_EP_SUPPORTED		BIT(18)
+#define GHWCFG2_NUM_HOST_CHAN_MASK		(0xf << 14)
+#define GHWCFG2_NUM_HOST_CHAN_SHIFT		14
+#define GHWCFG2_NUM_DEV_EP_MASK			(0xf << 10)
+#define GHWCFG2_NUM_DEV_EP_SHIFT		10
+#define GHWCFG2_FS_PHY_TYPE_MASK		(0x3 << 8)
+#define GHWCFG2_FS_PHY_TYPE_SHIFT		8
+#define GHWCFG2_FS_PHY_TYPE_NOT_SUPPORTED	0
+#define GHWCFG2_FS_PHY_TYPE_DEDICATED		1
+#define GHWCFG2_FS_PHY_TYPE_SHARED_UTMI		2
+#define GHWCFG2_FS_PHY_TYPE_SHARED_ULPI		3
+#define GHWCFG2_HS_PHY_TYPE_MASK		(0x3 << 6)
+#define GHWCFG2_HS_PHY_TYPE_SHIFT		6
+#define GHWCFG2_HS_PHY_TYPE_NOT_SUPPORTED	0
+#define GHWCFG2_HS_PHY_TYPE_UTMI		1
+#define GHWCFG2_HS_PHY_TYPE_ULPI		2
+#define GHWCFG2_HS_PHY_TYPE_UTMI_ULPI		3
+#define GHWCFG2_POINT2POINT			BIT(5)
+#define GHWCFG2_ARCHITECTURE_MASK		(0x3 << 3)
+#define GHWCFG2_ARCHITECTURE_SHIFT		3
+#define GHWCFG2_SLAVE_ONLY_ARCH			0
+#define GHWCFG2_EXT_DMA_ARCH			1
+#define GHWCFG2_INT_DMA_ARCH			2
+#define GHWCFG2_OP_MODE_MASK			(0x7 << 0)
+#define GHWCFG2_OP_MODE_SHIFT			0
+#define GHWCFG2_OP_MODE_HNP_SRP_CAPABLE		0
+#define GHWCFG2_OP_MODE_SRP_ONLY_CAPABLE	1
+#define GHWCFG2_OP_MODE_NO_HNP_SRP_CAPABLE	2
+#define GHWCFG2_OP_MODE_SRP_CAPABLE_DEVICE	3
+#define GHWCFG2_OP_MODE_NO_SRP_CAPABLE_DEVICE	4
+#define GHWCFG2_OP_MODE_SRP_CAPABLE_HOST	5
+#define GHWCFG2_OP_MODE_NO_SRP_CAPABLE_HOST	6
+#define GHWCFG2_OP_MODE_UNDEFINED		7
+
+#define GHWCFG3				HSOTG_REG(0x004c)
+#define GHWCFG3_DFIFO_DEPTH_MASK		(0xffff << 16)
+#define GHWCFG3_DFIFO_DEPTH_SHIFT		16
+#define GHWCFG3_OTG_LPM_EN			BIT(15)
+#define GHWCFG3_BC_SUPPORT			BIT(14)
+#define GHWCFG3_OTG_ENABLE_HSIC			BIT(13)
+#define GHWCFG3_ADP_SUPP			BIT(12)
+#define GHWCFG3_SYNCH_RESET_TYPE		BIT(11)
+#define GHWCFG3_OPTIONAL_FEATURES		BIT(10)
+#define GHWCFG3_VENDOR_CTRL_IF			BIT(9)
+#define GHWCFG3_I2C				BIT(8)
+#define GHWCFG3_OTG_FUNC			BIT(7)
+#define GHWCFG3_PACKET_SIZE_CNTR_WIDTH_MASK	(0x7 << 4)
+#define GHWCFG3_PACKET_SIZE_CNTR_WIDTH_SHIFT	4
+#define GHWCFG3_XFER_SIZE_CNTR_WIDTH_MASK	(0xf << 0)
+#define GHWCFG3_XFER_SIZE_CNTR_WIDTH_SHIFT	0
+
+#define GHWCFG4				HSOTG_REG(0x0050)
+#define GHWCFG4_DESC_DMA_DYN			BIT(31)
+#define GHWCFG4_DESC_DMA			BIT(30)
+#define GHWCFG4_NUM_IN_EPS_MASK			(0xf << 26)
+#define GHWCFG4_NUM_IN_EPS_SHIFT		26
+#define GHWCFG4_DED_FIFO_EN			BIT(25)
+#define GHWCFG4_DED_FIFO_SHIFT		25
+#define GHWCFG4_SESSION_END_FILT_EN		BIT(24)
+#define GHWCFG4_B_VALID_FILT_EN			BIT(23)
+#define GHWCFG4_A_VALID_FILT_EN			BIT(22)
+#define GHWCFG4_VBUS_VALID_FILT_EN		BIT(21)
+#define GHWCFG4_IDDIG_FILT_EN			BIT(20)
+#define GHWCFG4_NUM_DEV_MODE_CTRL_EP_MASK	(0xf << 16)
+#define GHWCFG4_NUM_DEV_MODE_CTRL_EP_SHIFT	16
+#define GHWCFG4_UTMI_PHY_DATA_WIDTH_MASK	(0x3 << 14)
+#define GHWCFG4_UTMI_PHY_DATA_WIDTH_SHIFT	14
+#define GHWCFG4_ACG_SUPPORTED			BIT(12)
+#define GHWCFG4_IPG_ISOC_SUPPORTED		BIT(11)
+#define GHWCFG4_UTMI_PHY_DATA_WIDTH_8		0
+#define GHWCFG4_UTMI_PHY_DATA_WIDTH_16		1
+#define GHWCFG4_UTMI_PHY_DATA_WIDTH_8_OR_16	2
+#define GHWCFG4_XHIBER				BIT(7)
+#define GHWCFG4_HIBER				BIT(6)
+#define GHWCFG4_MIN_AHB_FREQ			BIT(5)
+#define GHWCFG4_POWER_OPTIMIZ			BIT(4)
+#define GHWCFG4_NUM_DEV_PERIO_IN_EP_MASK	(0xf << 0)
+#define GHWCFG4_NUM_DEV_PERIO_IN_EP_SHIFT	0
+
+#define GLPMCFG				HSOTG_REG(0x0054)
+#define GLPMCFG_INVSELHSIC		BIT(31)
+#define GLPMCFG_HSICCON			BIT(30)
+#define GLPMCFG_RSTRSLPSTS		BIT(29)
+#define GLPMCFG_ENBESL			BIT(28)
+#define GLPMCFG_LPM_RETRYCNT_STS_MASK	(0x7 << 25)
+#define GLPMCFG_LPM_RETRYCNT_STS_SHIFT	25
+#define GLPMCFG_SNDLPM			BIT(24)
+#define GLPMCFG_RETRY_CNT_MASK		(0x7 << 21)
+#define GLPMCFG_RETRY_CNT_SHIFT		21
+#define GLPMCFG_LPM_CHNL_INDX_MASK	(0xf << 17)
+#define GLPMCFG_LPM_CHNL_INDX_SHIFT	17
+#define GLPMCFG_L1RESUMEOK		BIT(16)
+#define GLPMCFG_SLPSTS			BIT(15)
+#define GLPMCFG_COREL1RES_MASK		(0x3 << 13)
+#define GLPMCFG_COREL1RES_SHIFT		13
+#define GLPMCFG_HIRD_THRES_MASK		(0x1f << 8)
+#define GLPMCFG_HIRD_THRES_SHIFT	8
+#define GLPMCFG_HIRD_THRES_EN		(0x10 << 8)
+#define GLPMCFG_ENBLSLPM		BIT(7)
+#define GLPMCFG_BREMOTEWAKE		BIT(6)
+#define GLPMCFG_HIRD_MASK		(0xf << 2)
+#define GLPMCFG_HIRD_SHIFT		2
+#define GLPMCFG_APPL1RES		BIT(1)
+#define GLPMCFG_LPMCAP			BIT(0)
+
+#define GPWRDN				HSOTG_REG(0x0058)
+#define GPWRDN_MULT_VAL_ID_BC_MASK	(0x1f << 24)
+#define GPWRDN_MULT_VAL_ID_BC_SHIFT	24
+#define GPWRDN_ADP_INT			BIT(23)
+#define GPWRDN_BSESSVLD			BIT(22)
+#define GPWRDN_IDSTS			BIT(21)
+#define GPWRDN_LINESTATE_MASK		(0x3 << 19)
+#define GPWRDN_LINESTATE_SHIFT		19
+#define GPWRDN_STS_CHGINT_MSK		BIT(18)
+#define GPWRDN_STS_CHGINT		BIT(17)
+#define GPWRDN_SRP_DET_MSK		BIT(16)
+#define GPWRDN_SRP_DET			BIT(15)
+#define GPWRDN_CONNECT_DET_MSK		BIT(14)
+#define GPWRDN_CONNECT_DET		BIT(13)
+#define GPWRDN_DISCONN_DET_MSK		BIT(12)
+#define GPWRDN_DISCONN_DET		BIT(11)
+#define GPWRDN_RST_DET_MSK		BIT(10)
+#define GPWRDN_RST_DET			BIT(9)
+#define GPWRDN_LNSTSCHG_MSK		BIT(8)
+#define GPWRDN_LNSTSCHG			BIT(7)
+#define GPWRDN_DIS_VBUS			BIT(6)
+#define GPWRDN_PWRDNSWTCH		BIT(5)
+#define GPWRDN_PWRDNRSTN		BIT(4)
+#define GPWRDN_PWRDNCLMP		BIT(3)
+#define GPWRDN_RESTORE			BIT(2)
+#define GPWRDN_PMUACTV			BIT(1)
+#define GPWRDN_PMUINTSEL		BIT(0)
+
+#define GDFIFOCFG			HSOTG_REG(0x005c)
+#define GDFIFOCFG_EPINFOBASE_MASK	(0xffff << 16)
+#define GDFIFOCFG_EPINFOBASE_SHIFT	16
+#define GDFIFOCFG_GDFIFOCFG_MASK	(0xffff << 0)
+#define GDFIFOCFG_GDFIFOCFG_SHIFT	0
+
+#define ADPCTL				HSOTG_REG(0x0060)
+#define ADPCTL_AR_MASK			(0x3 << 27)
+#define ADPCTL_AR_SHIFT			27
+#define ADPCTL_ADP_TMOUT_INT_MSK	BIT(26)
+#define ADPCTL_ADP_SNS_INT_MSK		BIT(25)
+#define ADPCTL_ADP_PRB_INT_MSK		BIT(24)
+#define ADPCTL_ADP_TMOUT_INT		BIT(23)
+#define ADPCTL_ADP_SNS_INT		BIT(22)
+#define ADPCTL_ADP_PRB_INT		BIT(21)
+#define ADPCTL_ADPENA			BIT(20)
+#define ADPCTL_ADPRES			BIT(19)
+#define ADPCTL_ENASNS			BIT(18)
+#define ADPCTL_ENAPRB			BIT(17)
+#define ADPCTL_RTIM_MASK		(0x7ff << 6)
+#define ADPCTL_RTIM_SHIFT		6
+#define ADPCTL_PRB_PER_MASK		(0x3 << 4)
+#define ADPCTL_PRB_PER_SHIFT		4
+#define ADPCTL_PRB_DELTA_MASK		(0x3 << 2)
+#define ADPCTL_PRB_DELTA_SHIFT		2
+#define ADPCTL_PRB_DSCHRG_MASK		(0x3 << 0)
+#define ADPCTL_PRB_DSCHRG_SHIFT		0
+
+#define HPTXFSIZ			HSOTG_REG(0x100)
+/* Use FIFOSIZE_* constants to access this register */
+
+#define DPTXFSIZN(_a)			HSOTG_REG(0x104 + (((_a) - 1) * 4))
+/* Use FIFOSIZE_* constants to access this register */
+
+/* These apply to the GNPTXFSIZ, HPTXFSIZ and DPTXFSIZN registers */
+#define FIFOSIZE_DEPTH_MASK		(0xffff << 16)
+#define FIFOSIZE_DEPTH_SHIFT		16
+#define FIFOSIZE_STARTADDR_MASK		(0xffff << 0)
+#define FIFOSIZE_STARTADDR_SHIFT	0
+#define FIFOSIZE_DEPTH_GET(_x)		(((_x) >> 16) & 0xffff)
+
+/* Device mode registers */
+
+#define DCFG				HSOTG_REG(0x800)
+#define DCFG_DESCDMA_EN			BIT(23)
+#define DCFG_EPMISCNT_MASK		(0x1f << 18)
+#define DCFG_EPMISCNT_SHIFT		18
+#define DCFG_EPMISCNT_LIMIT		0x1f
+#define DCFG_EPMISCNT(_x)		((_x) << 18)
+#define DCFG_IPG_ISOC_SUPPORDED		BIT(17)
+#define DCFG_PERFRINT_MASK		(0x3 << 11)
+#define DCFG_PERFRINT_SHIFT		11
+#define DCFG_PERFRINT_LIMIT		0x3
+#define DCFG_PERFRINT(_x)		((_x) << 11)
+#define DCFG_DEVADDR_MASK		(0x7f << 4)
+#define DCFG_DEVADDR_SHIFT		4
+#define DCFG_DEVADDR_LIMIT		0x7f
+#define DCFG_DEVADDR(_x)		((_x) << 4)
+#define DCFG_NZ_STS_OUT_HSHK		BIT(2)
+#define DCFG_DEVSPD_MASK		(0x3 << 0)
+#define DCFG_DEVSPD_SHIFT		0
+#define DCFG_DEVSPD_HS			0
+#define DCFG_DEVSPD_FS			1
+#define DCFG_DEVSPD_LS			2
+#define DCFG_DEVSPD_FS48		3
+
+#define DCTL				HSOTG_REG(0x804)
+#define DCTL_PWRONPRGDONE		BIT(11)
+#define DCTL_CGOUTNAK			BIT(10)
+#define DCTL_SGOUTNAK			BIT(9)
+#define DCTL_CGNPINNAK			BIT(8)
+#define DCTL_SGNPINNAK			BIT(7)
+#define DCTL_TSTCTL_MASK		(0x7 << 4)
+#define DCTL_TSTCTL_SHIFT		4
+#define DCTL_GOUTNAKSTS			BIT(3)
+#define DCTL_GNPINNAKSTS		BIT(2)
+#define DCTL_SFTDISCON			BIT(1)
+#define DCTL_RMTWKUPSIG			BIT(0)
+
+#define DSTS				HSOTG_REG(0x808)
+#define DSTS_SOFFN_MASK			(0x3fff << 8)
+#define DSTS_SOFFN_SHIFT		8
+#define DSTS_SOFFN_LIMIT		0x3fff
+#define DSTS_SOFFN(_x)			((_x) << 8)
+#define DSTS_ERRATICERR			BIT(3)
+#define DSTS_ENUMSPD_MASK		(0x3 << 1)
+#define DSTS_ENUMSPD_SHIFT		1
+#define DSTS_ENUMSPD_HS			0
+#define DSTS_ENUMSPD_FS			1
+#define DSTS_ENUMSPD_LS			2
+#define DSTS_ENUMSPD_FS48		3
+#define DSTS_SUSPSTS			BIT(0)
+
+#define DIEPMSK				HSOTG_REG(0x810)
+#define DIEPMSK_NAKMSK			BIT(13)
+#define DIEPMSK_BNAININTRMSK		BIT(9)
+#define DIEPMSK_TXFIFOUNDRNMSK		BIT(8)
+#define DIEPMSK_TXFIFOEMPTY		BIT(7)
+#define DIEPMSK_INEPNAKEFFMSK		BIT(6)
+#define DIEPMSK_INTKNEPMISMSK		BIT(5)
+#define DIEPMSK_INTKNTXFEMPMSK		BIT(4)
+#define DIEPMSK_TIMEOUTMSK		BIT(3)
+#define DIEPMSK_AHBERRMSK		BIT(2)
+#define DIEPMSK_EPDISBLDMSK		BIT(1)
+#define DIEPMSK_XFERCOMPLMSK		BIT(0)
+
+#define DOEPMSK				HSOTG_REG(0x814)
+#define DOEPMSK_BNAMSK			BIT(9)
+#define DOEPMSK_BACK2BACKSETUP		BIT(6)
+#define DOEPMSK_STSPHSERCVDMSK		BIT(5)
+#define DOEPMSK_OUTTKNEPDISMSK		BIT(4)
+#define DOEPMSK_SETUPMSK		BIT(3)
+#define DOEPMSK_AHBERRMSK		BIT(2)
+#define DOEPMSK_EPDISBLDMSK		BIT(1)
+#define DOEPMSK_XFERCOMPLMSK		BIT(0)
+
+#define DAINT				HSOTG_REG(0x818)
+#define DAINTMSK			HSOTG_REG(0x81C)
+#define DAINT_OUTEP_SHIFT		16
+#define DAINT_OUTEP(_x)			(1 << ((_x) + 16))
+#define DAINT_INEP(_x)			(1 << (_x))
+
+#define DTKNQR1				HSOTG_REG(0x820)
+#define DTKNQR2				HSOTG_REG(0x824)
+#define DTKNQR3				HSOTG_REG(0x830)
+#define DTKNQR4				HSOTG_REG(0x834)
+#define DIEPEMPMSK			HSOTG_REG(0x834)
+
+#define DVBUSDIS			HSOTG_REG(0x828)
+#define DVBUSPULSE			HSOTG_REG(0x82C)
+
+#define DIEPCTL0			HSOTG_REG(0x900)
+#define DIEPCTL(_a)			HSOTG_REG(0x900 + ((_a) * 0x20))
+
+#define DOEPCTL0			HSOTG_REG(0xB00)
+#define DOEPCTL(_a)			HSOTG_REG(0xB00 + ((_a) * 0x20))
+
+/* EP0 specialness:
+ * bits[29..28] - reserved (no SetD0PID, SetD1PID)
+ * bits[25..22] - should always be zero, this isn't a periodic endpoint
+ * bits[10..0]  - MPS setting different for EP0
+ */
+#define D0EPCTL_MPS_MASK		(0x3 << 0)
+#define D0EPCTL_MPS_SHIFT		0
+#define D0EPCTL_MPS_64			0
+#define D0EPCTL_MPS_32			1
+#define D0EPCTL_MPS_16			2
+#define D0EPCTL_MPS_8			3
+
+#define DXEPCTL_EPENA			BIT(31)
+#define DXEPCTL_EPDIS			BIT(30)
+#define DXEPCTL_SETD1PID		BIT(29)
+#define DXEPCTL_SETODDFR		BIT(29)
+#define DXEPCTL_SETD0PID		BIT(28)
+#define DXEPCTL_SETEVENFR		BIT(28)
+#define DXEPCTL_SNAK			BIT(27)
+#define DXEPCTL_CNAK			BIT(26)
+#define DXEPCTL_TXFNUM_MASK		(0xf << 22)
+#define DXEPCTL_TXFNUM_SHIFT		22
+#define DXEPCTL_TXFNUM_LIMIT		0xf
+#define DXEPCTL_TXFNUM(_x)		((_x) << 22)
+#define DXEPCTL_STALL			BIT(21)
+#define DXEPCTL_SNP			BIT(20)
+#define DXEPCTL_EPTYPE_MASK		(0x3 << 18)
+#define DXEPCTL_EPTYPE_CONTROL		(0x0 << 18)
+#define DXEPCTL_EPTYPE_ISO		(0x1 << 18)
+#define DXEPCTL_EPTYPE_BULK		(0x2 << 18)
+#define DXEPCTL_EPTYPE_INTERRUPT	(0x3 << 18)
+
+#define DXEPCTL_NAKSTS			BIT(17)
+#define DXEPCTL_DPID			BIT(16)
+#define DXEPCTL_EOFRNUM			BIT(16)
+#define DXEPCTL_USBACTEP		BIT(15)
+#define DXEPCTL_NEXTEP_MASK		(0xf << 11)
+#define DXEPCTL_NEXTEP_SHIFT		11
+#define DXEPCTL_NEXTEP_LIMIT		0xf
+#define DXEPCTL_NEXTEP(_x)		((_x) << 11)
+#define DXEPCTL_MPS_MASK		(0x7ff << 0)
+#define DXEPCTL_MPS_SHIFT		0
+#define DXEPCTL_MPS_LIMIT		0x7ff
+#define DXEPCTL_MPS(_x)			((_x) << 0)
+
+#define DIEPINT(_a)			HSOTG_REG(0x908 + ((_a) * 0x20))
+#define DOEPINT(_a)			HSOTG_REG(0xB08 + ((_a) * 0x20))
+#define DXEPINT_SETUP_RCVD		BIT(15)
+#define DXEPINT_NYETINTRPT		BIT(14)
+#define DXEPINT_NAKINTRPT		BIT(13)
+#define DXEPINT_BBLEERRINTRPT		BIT(12)
+#define DXEPINT_PKTDRPSTS		BIT(11)
+#define DXEPINT_BNAINTR			BIT(9)
+#define DXEPINT_TXFIFOUNDRN		BIT(8)
+#define DXEPINT_OUTPKTERR		BIT(8)
+#define DXEPINT_TXFEMP			BIT(7)
+#define DXEPINT_INEPNAKEFF		BIT(6)
+#define DXEPINT_BACK2BACKSETUP		BIT(6)
+#define DXEPINT_INTKNEPMIS		BIT(5)
+#define DXEPINT_STSPHSERCVD		BIT(5)
+#define DXEPINT_INTKNTXFEMP		BIT(4)
+#define DXEPINT_OUTTKNEPDIS		BIT(4)
+#define DXEPINT_TIMEOUT			BIT(3)
+#define DXEPINT_SETUP			BIT(3)
+#define DXEPINT_AHBERR			BIT(2)
+#define DXEPINT_EPDISBLD		BIT(1)
+#define DXEPINT_XFERCOMPL		BIT(0)
+
+#define DIEPTSIZ0			HSOTG_REG(0x910)
+#define DIEPTSIZ0_PKTCNT_MASK		(0x3 << 19)
+#define DIEPTSIZ0_PKTCNT_SHIFT		19
+#define DIEPTSIZ0_PKTCNT_LIMIT		0x3
+#define DIEPTSIZ0_PKTCNT(_x)		((_x) << 19)
+#define DIEPTSIZ0_XFERSIZE_MASK		(0x7f << 0)
+#define DIEPTSIZ0_XFERSIZE_SHIFT	0
+#define DIEPTSIZ0_XFERSIZE_LIMIT	0x7f
+#define DIEPTSIZ0_XFERSIZE(_x)		((_x) << 0)
+
+#define DOEPTSIZ0			HSOTG_REG(0xB10)
+#define DOEPTSIZ0_SUPCNT_MASK		(0x3 << 29)
+#define DOEPTSIZ0_SUPCNT_SHIFT		29
+#define DOEPTSIZ0_SUPCNT_LIMIT		0x3
+#define DOEPTSIZ0_SUPCNT(_x)		((_x) << 29)
+#define DOEPTSIZ0_PKTCNT		BIT(19)
+#define DOEPTSIZ0_XFERSIZE_MASK		(0x7f << 0)
+#define DOEPTSIZ0_XFERSIZE_SHIFT	0
+
+#define DIEPTSIZ(_a)			HSOTG_REG(0x910 + ((_a) * 0x20))
+#define DOEPTSIZ(_a)			HSOTG_REG(0xB10 + ((_a) * 0x20))
+#define DXEPTSIZ_MC_MASK		(0x3 << 29)
+#define DXEPTSIZ_MC_SHIFT		29
+#define DXEPTSIZ_MC_LIMIT		0x3
+#define DXEPTSIZ_MC(_x)			((_x) << 29)
+#define DXEPTSIZ_PKTCNT_MASK		(0x3ff << 19)
+#define DXEPTSIZ_PKTCNT_SHIFT		19
+#define DXEPTSIZ_PKTCNT_LIMIT		0x3ff
+#define DXEPTSIZ_PKTCNT_GET(_v)		(((_v) >> 19) & 0x3ff)
+#define DXEPTSIZ_PKTCNT(_x)		((_x) << 19)
+#define DXEPTSIZ_XFERSIZE_MASK		(0x7ffff << 0)
+#define DXEPTSIZ_XFERSIZE_SHIFT		0
+#define DXEPTSIZ_XFERSIZE_LIMIT		0x7ffff
+#define DXEPTSIZ_XFERSIZE_GET(_v)	(((_v) >> 0) & 0x7ffff)
+#define DXEPTSIZ_XFERSIZE(_x)		((_x) << 0)
+
+#define DIEPDMA(_a)			HSOTG_REG(0x914 + ((_a) * 0x20))
+#define DOEPDMA(_a)			HSOTG_REG(0xB14 + ((_a) * 0x20))
+
+#define DTXFSTS(_a)			HSOTG_REG(0x918 + ((_a) * 0x20))
+
+#define PCGCTL				HSOTG_REG(0x0e00)
+#define PCGCTL_IF_DEV_MODE		BIT(31)
+#define PCGCTL_P2HD_PRT_SPD_MASK	(0x3 << 29)
+#define PCGCTL_P2HD_PRT_SPD_SHIFT	29
+#define PCGCTL_P2HD_DEV_ENUM_SPD_MASK	(0x3 << 27)
+#define PCGCTL_P2HD_DEV_ENUM_SPD_SHIFT	27
+#define PCGCTL_MAC_DEV_ADDR_MASK	(0x7f << 20)
+#define PCGCTL_MAC_DEV_ADDR_SHIFT	20
+#define PCGCTL_MAX_TERMSEL		BIT(19)
+#define PCGCTL_MAX_XCVRSELECT_MASK	(0x3 << 17)
+#define PCGCTL_MAX_XCVRSELECT_SHIFT	17
+#define PCGCTL_PORT_POWER		BIT(16)
+#define PCGCTL_PRT_CLK_SEL_MASK		(0x3 << 14)
+#define PCGCTL_PRT_CLK_SEL_SHIFT	14
+#define PCGCTL_ESS_REG_RESTORED		BIT(13)
+#define PCGCTL_EXTND_HIBER_SWITCH	BIT(12)
+#define PCGCTL_EXTND_HIBER_PWRCLMP	BIT(11)
+#define PCGCTL_ENBL_EXTND_HIBER		BIT(10)
+#define PCGCTL_RESTOREMODE		BIT(9)
+#define PCGCTL_RESETAFTSUSP		BIT(8)
+#define PCGCTL_DEEP_SLEEP		BIT(7)
+#define PCGCTL_PHY_IN_SLEEP		BIT(6)
+#define PCGCTL_ENBL_SLEEP_GATING	BIT(5)
+#define PCGCTL_RSTPDWNMODULE		BIT(3)
+#define PCGCTL_PWRCLMP			BIT(2)
+#define PCGCTL_GATEHCLK			BIT(1)
+#define PCGCTL_STOPPCLK			BIT(0)
+
+#define PCGCCTL1			HSOTG_REG(0xe04)
+#define PCGCCTL1_TIMER			(0x3 << 1)
+#define PCGCCTL1_GATEEN			BIT(0)
+
+#define EPFIFO(_a)			HSOTG_REG(0x1000 + ((_a) * 0x1000))
+
+/* Host Mode Registers */
+
+#define HCFG				HSOTG_REG(0x0400)
+#define HCFG_MODECHTIMEN		BIT(31)
+#define HCFG_PERSCHEDENA		BIT(26)
+#define HCFG_FRLISTEN_MASK		(0x3 << 24)
+#define HCFG_FRLISTEN_SHIFT		24
+#define HCFG_FRLISTEN_8				(0 << 24)
+#define FRLISTEN_8_SIZE				8
+#define HCFG_FRLISTEN_16			BIT(24)
+#define FRLISTEN_16_SIZE			16
+#define HCFG_FRLISTEN_32			(2 << 24)
+#define FRLISTEN_32_SIZE			32
+#define HCFG_FRLISTEN_64			(3 << 24)
+#define FRLISTEN_64_SIZE			64
+#define HCFG_DESCDMA			BIT(23)
+#define HCFG_RESVALID_MASK		(0xff << 8)
+#define HCFG_RESVALID_SHIFT		8
+#define HCFG_ENA32KHZ			BIT(7)
+#define HCFG_FSLSSUPP			BIT(2)
+#define HCFG_FSLSPCLKSEL_MASK		(0x3 << 0)
+#define HCFG_FSLSPCLKSEL_SHIFT		0
+#define HCFG_FSLSPCLKSEL_30_60_MHZ	0
+#define HCFG_FSLSPCLKSEL_48_MHZ		1
+#define HCFG_FSLSPCLKSEL_6_MHZ		2
+
+#define HFIR				HSOTG_REG(0x0404)
+#define HFIR_FRINT_MASK			(0xffff << 0)
+#define HFIR_FRINT_SHIFT		0
+#define HFIR_RLDCTRL			BIT(16)
+
+#define HFNUM				HSOTG_REG(0x0408)
+#define HFNUM_FRREM_MASK		(0xffff << 16)
+#define HFNUM_FRREM_SHIFT		16
+#define HFNUM_FRNUM_MASK		(0xffff << 0)
+#define HFNUM_FRNUM_SHIFT		0
+#define HFNUM_MAX_FRNUM			0x3fff
+
+#define HPTXSTS				HSOTG_REG(0x0410)
+#define TXSTS_QTOP_ODD			BIT(31)
+#define TXSTS_QTOP_CHNEP_MASK		(0xf << 27)
+#define TXSTS_QTOP_CHNEP_SHIFT		27
+#define TXSTS_QTOP_TOKEN_MASK		(0x3 << 25)
+#define TXSTS_QTOP_TOKEN_SHIFT		25
+#define TXSTS_QTOP_TERMINATE		BIT(24)
+#define TXSTS_QSPCAVAIL_MASK		(0xff << 16)
+#define TXSTS_QSPCAVAIL_SHIFT		16
+#define TXSTS_FSPCAVAIL_MASK		(0xffff << 0)
+#define TXSTS_FSPCAVAIL_SHIFT		0
+
+#define HAINT				HSOTG_REG(0x0414)
+#define HAINTMSK			HSOTG_REG(0x0418)
+#define HFLBADDR			HSOTG_REG(0x041c)
+
+#define HPRT0				HSOTG_REG(0x0440)
+#define HPRT0_SPD_MASK			(0x3 << 17)
+#define HPRT0_SPD_SHIFT			17
+#define HPRT0_SPD_HIGH_SPEED		0
+#define HPRT0_SPD_FULL_SPEED		1
+#define HPRT0_SPD_LOW_SPEED		2
+#define HPRT0_TSTCTL_MASK		(0xf << 13)
+#define HPRT0_TSTCTL_SHIFT		13
+#define HPRT0_PWR			BIT(12)
+#define HPRT0_LNSTS_MASK		(0x3 << 10)
+#define HPRT0_LNSTS_SHIFT		10
+#define HPRT0_RST			BIT(8)
+#define HPRT0_SUSP			BIT(7)
+#define HPRT0_RES			BIT(6)
+#define HPRT0_OVRCURRCHG		BIT(5)
+#define HPRT0_OVRCURRACT		BIT(4)
+#define HPRT0_ENACHG			BIT(3)
+#define HPRT0_ENA			BIT(2)
+#define HPRT0_CONNDET			BIT(1)
+#define HPRT0_CONNSTS			BIT(0)
+
+#define HCCHAR(_ch)			HSOTG_REG(0x0500 + 0x20 * (_ch))
+#define HCCHAR_CHENA			BIT(31)
+#define HCCHAR_CHDIS			BIT(30)
+#define HCCHAR_ODDFRM			BIT(29)
+#define HCCHAR_DEVADDR_MASK		(0x7f << 22)
+#define HCCHAR_DEVADDR_SHIFT		22
+#define HCCHAR_MULTICNT_MASK		(0x3 << 20)
+#define HCCHAR_MULTICNT_SHIFT		20
+#define HCCHAR_EPTYPE_MASK		(0x3 << 18)
+#define HCCHAR_EPTYPE_SHIFT		18
+#define HCCHAR_LSPDDEV			BIT(17)
+#define HCCHAR_EPDIR			BIT(15)
+#define HCCHAR_EPNUM_MASK		(0xf << 11)
+#define HCCHAR_EPNUM_SHIFT		11
+#define HCCHAR_MPS_MASK			(0x7ff << 0)
+#define HCCHAR_MPS_SHIFT		0
+
+#define HCSPLT(_ch)			HSOTG_REG(0x0504 + 0x20 * (_ch))
+#define HCSPLT_SPLTENA			BIT(31)
+#define HCSPLT_COMPSPLT			BIT(16)
+#define HCSPLT_XACTPOS_MASK		(0x3 << 14)
+#define HCSPLT_XACTPOS_SHIFT		14
+#define HCSPLT_XACTPOS_MID		0
+#define HCSPLT_XACTPOS_END		1
+#define HCSPLT_XACTPOS_BEGIN		2
+#define HCSPLT_XACTPOS_ALL		3
+#define HCSPLT_HUBADDR_MASK		(0x7f << 7)
+#define HCSPLT_HUBADDR_SHIFT		7
+#define HCSPLT_PRTADDR_MASK		(0x7f << 0)
+#define HCSPLT_PRTADDR_SHIFT		0
+
+#define HCINT(_ch)			HSOTG_REG(0x0508 + 0x20 * (_ch))
+#define HCINTMSK(_ch)			HSOTG_REG(0x050c + 0x20 * (_ch))
+#define HCINTMSK_RESERVED14_31		(0x3ffff << 14)
+#define HCINTMSK_FRM_LIST_ROLL		BIT(13)
+#define HCINTMSK_XCS_XACT		BIT(12)
+#define HCINTMSK_BNA			BIT(11)
+#define HCINTMSK_DATATGLERR		BIT(10)
+#define HCINTMSK_FRMOVRUN		BIT(9)
+#define HCINTMSK_BBLERR			BIT(8)
+#define HCINTMSK_XACTERR		BIT(7)
+#define HCINTMSK_NYET			BIT(6)
+#define HCINTMSK_ACK			BIT(5)
+#define HCINTMSK_NAK			BIT(4)
+#define HCINTMSK_STALL			BIT(3)
+#define HCINTMSK_AHBERR			BIT(2)
+#define HCINTMSK_CHHLTD			BIT(1)
+#define HCINTMSK_XFERCOMPL		BIT(0)
+
+#define HCTSIZ(_ch)			HSOTG_REG(0x0510 + 0x20 * (_ch))
+#define TSIZ_DOPNG			BIT(31)
+#define TSIZ_SC_MC_PID_MASK		(0x3 << 29)
+#define TSIZ_SC_MC_PID_SHIFT		29
+#define TSIZ_SC_MC_PID_DATA0		0
+#define TSIZ_SC_MC_PID_DATA2		1
+#define TSIZ_SC_MC_PID_DATA1		2
+#define TSIZ_SC_MC_PID_MDATA		3
+#define TSIZ_SC_MC_PID_SETUP		3
+#define TSIZ_PKTCNT_MASK		(0x3ff << 19)
+#define TSIZ_PKTCNT_SHIFT		19
+#define TSIZ_NTD_MASK			(0xff << 8)
+#define TSIZ_NTD_SHIFT			8
+#define TSIZ_SCHINFO_MASK		(0xff << 0)
+#define TSIZ_SCHINFO_SHIFT		0
+#define TSIZ_XFERSIZE_MASK		(0x7ffff << 0)
+#define TSIZ_XFERSIZE_SHIFT		0
+
+#define HCDMA(_ch)			HSOTG_REG(0x0514 + 0x20 * (_ch))
+
+#define HCDMAB(_ch)			HSOTG_REG(0x051c + 0x20 * (_ch))
+
+#define HCFIFO(_ch)			HSOTG_REG(0x1000 + 0x1000 * (_ch))
+
+/**
+ * struct dwc2_dma_desc - DMA descriptor structure,
+ * used for both host and gadget modes
+ *
+ * @status: DMA descriptor status quadlet
+ * @buf:    DMA descriptor data buffer pointer
+ *
+ * DMA Descriptor structure contains two quadlets:
+ * Status quadlet and Data buffer pointer.
+ */
+struct dwc2_dma_desc {
+	u32 status;
+	u32 buf;
+} __packed;
+
+/* Host Mode DMA descriptor status quadlet */
+
+#define HOST_DMA_A			BIT(31)
+#define HOST_DMA_STS_MASK		(0x3 << 28)
+#define HOST_DMA_STS_SHIFT		28
+#define HOST_DMA_STS_PKTERR		BIT(28)
+#define HOST_DMA_EOL			BIT(26)
+#define HOST_DMA_IOC			BIT(25)
+#define HOST_DMA_SUP			BIT(24)
+#define HOST_DMA_ALT_QTD		BIT(23)
+#define HOST_DMA_QTD_OFFSET_MASK	(0x3f << 17)
+#define HOST_DMA_QTD_OFFSET_SHIFT	17
+#define HOST_DMA_ISOC_NBYTES_MASK	(0xfff << 0)
+#define HOST_DMA_ISOC_NBYTES_SHIFT	0
+#define HOST_DMA_NBYTES_MASK		(0x1ffff << 0)
+#define HOST_DMA_NBYTES_SHIFT		0
+#define HOST_DMA_NBYTES_LIMIT		131071
+
+#define MAX_DMA_DESC_NUM_GENERIC	64
+#define MAX_DMA_DESC_NUM_HS_ISOC	256
+
+	/* DWC OTG HW Release versions */
+#define DWC2_CORE_REV_2_71a	0x4f54271a
+#define DWC2_CORE_REV_2_72a     0x4f54272a
+#define DWC2_CORE_REV_2_80a	0x4f54280a
+#define DWC2_CORE_REV_2_90a	0x4f54290a
+#define DWC2_CORE_REV_2_91a	0x4f54291a
+#define DWC2_CORE_REV_2_92a	0x4f54292a
+#define DWC2_CORE_REV_2_94a	0x4f54294a
+#define DWC2_CORE_REV_3_00a	0x4f54300a
+#define DWC2_CORE_REV_3_10a	0x4f54310a
+#define DWC2_CORE_REV_4_00a	0x4f54400a
+#define DWC2_FS_IOT_REV_1_00a	0x5531100a
+#define DWC2_HS_IOT_REV_1_00a	0x5532100a
+
+	/* DWC OTG HW Core ID */
+#define DWC2_OTG_ID		0x4f540000
+#define DWC2_FS_IOT_ID		0x55310000
+#define DWC2_HS_IOT_ID		0x55320000
+
+/* ==== u-boot ==== */
+
+/* Default driver configuration */
+#define CONFIG_DWC2_MAX_CHANNELS		DWC2_MAX_EPS_CHANNELS	/* Max # of EPs */
+#define CONFIG_DWC2_HOST_RX_FIFO_SIZE		(516 + CONFIG_DWC2_MAX_CHANNELS)
+#define CONFIG_DWC2_HOST_NPERIO_TX_FIFO_SIZE	0x100	/* nPeriodic TX FIFO */
+#define CONFIG_DWC2_HOST_PERIO_TX_FIFO_SIZE	0x200	/* Periodic TX FIFO */
+
+#endif	/* __DWC2_H__ */
diff --git a/drivers/usb/dwc2/rhub.c b/drivers/usb/dwc2/rhub.c
new file mode 100644
index 000000000..01c938943
--- /dev/null
+++ b/drivers/usb/dwc2/rhub.c
@@ -0,0 +1,419 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include "dwc2.h"
+
+static struct descriptor {
+	struct usb_hub_descriptor hub;
+	struct usb_device_descriptor device;
+	struct usb_config_descriptor config;
+	struct usb_interface_descriptor interface;
+	struct usb_endpoint_descriptor endpoint;
+}  __attribute__ ((packed)) descriptor = {
+	.hub = {
+		.bLength		= USB_DT_HUB_NONVAR_SIZE +
+					  ((USB_MAXCHILDREN + 1 + 7) / 8),
+		.bDescriptorType	= USB_DT_HUB,
+		.bNbrPorts		= 1,
+		.wHubCharacteristics	= 0,
+		.bPwrOn2PwrGood		= 0,
+		.bHubContrCurrent	= 0,
+		.u.hs.DeviceRemovable	= {0xff},
+		.u.hs.PortPwrCtrlMask	= {}
+	},
+	.device = {
+		.bLength		= USB_DT_DEVICE_SIZE,
+		.bDescriptorType	= USB_DT_DEVICE,
+		.bcdUSB			= __constant_cpu_to_le16(2), /* v2.0 */
+		.bDeviceClass		= USB_CLASS_HUB,
+		.bDeviceSubClass	= 0,
+		.bDeviceProtocol	= USB_HUB_PR_HS_NO_TT,
+		.bMaxPacketSize0	= 64,
+		.idVendor		= 0x0000,
+		.idProduct		= 0x0000,
+		.bcdDevice		= 0x0000,
+		.iManufacturer		= 1,
+		.iProduct		= 2,
+		.iSerialNumber		= 0,
+		.bNumConfigurations	= 1
+	},
+	.config = {
+		.bLength		= USB_DT_CONFIG_SIZE,
+		.bDescriptorType	= USB_DT_CONFIG,
+		.wTotalLength		= __constant_cpu_to_le16(
+						USB_DT_CONFIG_SIZE +
+						USB_DT_INTERFACE_SIZE +
+						USB_DT_ENDPOINT_SIZE),
+		.bNumInterfaces		= 1,
+		.bConfigurationValue	= 1,
+		.iConfiguration		= 0,
+		.bmAttributes		= USB_CONFIG_ATT_SELFPOWER,
+		.bMaxPower		= 0
+	},
+	.interface = {
+		.bLength		= USB_DT_INTERFACE_SIZE,
+		.bDescriptorType	= USB_DT_INTERFACE,
+		.bInterfaceNumber	= 0,
+		.bAlternateSetting	= 0,
+		.bNumEndpoints		= 1,
+		.bInterfaceClass	= USB_CLASS_HUB,
+		.bInterfaceSubClass	= 0,
+		.bInterfaceProtocol	= 0,
+		.iInterface		= 0
+	},
+	.endpoint = {
+		.bLength		= USB_DT_ENDPOINT_SIZE,
+		.bDescriptorType	= USB_DT_ENDPOINT,
+		.bEndpointAddress	= 1 | USB_DIR_IN, /* 0x81 */
+		.bmAttributes		= USB_ENDPOINT_XFER_INT,
+		.wMaxPacketSize		= __constant_cpu_to_le16(
+						(USB_MAXCHILDREN + 1 + 7) / 8),
+		.bInterval		= 255
+	},
+};
+
+static char *language_string = "\x09\x04";
+static char *vendor_string = "u-boot";
+static char *product_string = "DWC2 root hub";
+
+/*
+ * DWC2 to USB API interface
+ */
+static int dwc2_submit_rh_msg_in_status(struct dwc2 *dwc2,
+					   struct usb_device *dev, void *buffer,
+					   int txlen, struct devrequest *cmd)
+{
+	struct usb_port_status *portsts;
+	uint32_t hprt0 = 0;
+	uint32_t port_status = 0;
+	uint32_t port_change = 0;
+	int len = 0;
+	int speed;
+
+	switch (cmd->requesttype & (USB_TYPE_MASK | USB_RECIP_MASK)) {
+	case USB_TYPE_STANDARD | USB_RECIP_DEVICE:
+		*(uint16_t *)buffer = cpu_to_le16(1);
+		len = 2;
+		break;
+	case USB_TYPE_STANDARD | USB_RECIP_INTERFACE:
+	case USB_TYPE_STANDARD | USB_RECIP_ENDPOINT:
+		*(uint16_t *)buffer = cpu_to_le16(0);
+		len = 2;
+		break;
+	case USB_RT_HUB:	/* USB_TYPE_CLASS | USB_RECIP_DEVICE */
+		*(uint32_t *)buffer = cpu_to_le32(0);
+		len = 4;
+		break;
+	case USB_RT_PORT:	/* USB_TYPE_CLASS | USB_RECIP_OTHER */
+		hprt0 = dwc2_readl(dwc2, HPRT0);
+
+		if (hprt0 & HPRT0_CONNSTS)
+			port_status |= USB_PORT_STAT_CONNECTION;
+		if (hprt0 & HPRT0_ENA)
+			port_status |= USB_PORT_STAT_ENABLE;
+		if (hprt0 & HPRT0_SUSP)
+			port_status |= USB_PORT_STAT_SUSPEND;
+		if (hprt0 & HPRT0_OVRCURRACT)
+			port_status |= USB_PORT_STAT_OVERCURRENT;
+		if (hprt0 & HPRT0_RST)
+			port_status |= USB_PORT_STAT_RESET;
+		if (hprt0 & HPRT0_PWR)
+			port_status |= USB_PORT_STAT_POWER;
+
+		speed = (hprt0 & HPRT0_SPD_MASK) >> HPRT0_SPD_SHIFT;
+		if (speed == HPRT0_SPD_HIGH_SPEED)
+			port_status |= USB_PORT_STAT_HIGH_SPEED;
+		else if (speed == HPRT0_SPD_LOW_SPEED)
+			port_status |= USB_PORT_STAT_LOW_SPEED;
+
+		if (hprt0 & HPRT0_ENACHG)
+			port_change |= USB_PORT_STAT_C_ENABLE;
+		if (hprt0 & HPRT0_CONNDET)
+			port_change |= USB_PORT_STAT_C_CONNECTION;
+		if (hprt0 & HPRT0_OVRCURRCHG)
+			port_change |= USB_PORT_STAT_C_OVERCURRENT;
+
+		portsts = buffer;
+		portsts->wPortStatus = cpu_to_le16(port_status);
+		portsts->wPortChange = cpu_to_le16(port_change);
+		len = sizeof(*portsts);
+
+		break;
+	default:
+		goto unknown;
+	}
+
+	dev->act_len = min(len, txlen);
+	dev->status = 0;
+
+	return 0;
+
+unknown:
+	dev->act_len = 0;
+	dev->status = USB_ST_STALLED;
+
+	return -1;
+}
+
+static void strtodesc(char *dest, char *src, size_t n)
+{
+	unsigned int i;
+
+	dest[0] = n;
+	dest[1] = 0x3;
+	for (i = 2; i < n && *src != '\0'; i += 2) {
+		dest[i] = *(src++);
+		dest[i + 1] = 0;
+	}
+}
+
+/* Direction: In ; Request: Descriptor */
+static int dwc2_submit_rh_msg_in_descriptor(struct usb_device *dev,
+					       void *buffer, int txlen,
+					       struct devrequest *cmd)
+{
+	int len = 0;
+	char *src;
+	uint16_t wValue = le16_to_cpu(cmd->value);
+	uint16_t wLength = le16_to_cpu(cmd->length);
+
+	switch (cmd->requesttype & (USB_TYPE_MASK | USB_RECIP_MASK)) {
+	case USB_TYPE_STANDARD | USB_RECIP_DEVICE:
+		switch (wValue >> 8) {
+		case USB_DT_DEVICE:
+			debug("USB_DT_DEVICE request\n");
+			len = min3(txlen, (int)descriptor.device.bLength, (int)wLength);
+			memcpy(buffer, &descriptor.device, len);
+			break;
+		case USB_DT_CONFIG:
+			debug("USB_DT_CONFIG config\n");
+			len = min3(txlen, (int)descriptor.config.wTotalLength, (int)wLength);
+			memcpy(buffer, &descriptor.config, len);
+			break;
+		case USB_DT_STRING:
+			debug("USB_DT_STRING: %#x\n", wValue);
+			switch (wValue & 0xff) {
+			case 0: /* Language */
+				src = language_string;
+				len = strlen(src) + 2;
+				((char *)buffer)[0] = len;
+				((char *)buffer)[1] = 0x03;
+				memcpy(buffer + 2, src, strlen(src));
+				break;
+			case 1: /* Vendor */
+				src = vendor_string;
+				len = 2 * strlen(src) + 2;
+				strtodesc(buffer, src, len);
+				break;
+			case 2: /* Product */
+				src = product_string;
+				len = 2 * strlen(src) + 2;
+				strtodesc(buffer, src, len);
+				break;
+			default:
+				debug("%s(): unknown string index 0x%x\n", __func__, wValue & 0xff);
+				goto unknown;
+			}
+			len = min3(txlen, len, (int)wLength);
+			break;
+		default:
+			debug("%s(): unknown requesttype: 0x%x\n", __func__,
+			       cmd->requesttype & (USB_TYPE_MASK | USB_RECIP_MASK));
+			goto unknown;
+		}
+		break;
+
+	case USB_RT_HUB:	/* USB_TYPE_CLASS | USB_RECIP_DEVICE */
+		debug("USB_RT_HUB\n");
+
+		len = min3(txlen, (int)descriptor.hub.bLength, (int)wLength);
+		memcpy(buffer, &descriptor.hub, len);
+		break;
+	default:
+		goto unknown;
+	}
+
+	dev->act_len = len;
+	dev->status = 0;
+
+	return 0;
+
+unknown:
+	dev->act_len = 0;
+	dev->status = USB_ST_STALLED;
+
+	return -1;
+}
+
+/* Direction: In ; Request: Configuration */
+static int dwc2_submit_rh_msg_in_configuration(struct usb_device *dev,
+					       void *buffer, int txlen,
+					       struct devrequest *cmd)
+{
+	int len = 0;
+
+	switch (cmd->requesttype & (USB_TYPE_MASK | USB_RECIP_MASK)) {
+	case USB_TYPE_STANDARD | USB_RECIP_DEVICE:
+		*(uint8_t *)buffer = 0x01;
+		len = min(txlen, 1);
+		break;
+	default:
+		goto unknown;
+	}
+
+	dev->act_len = len;
+	dev->status = 0;
+
+	return 0;
+
+unknown:
+	dev->act_len = 0;
+	dev->status = USB_ST_STALLED;
+
+	return -1;
+}
+
+/* Direction: In */
+static int dwc2_submit_rh_msg_in(struct dwc2 *dwc2,
+				 struct usb_device *dev, void *buffer,
+				 int txlen, struct devrequest *cmd)
+{
+	switch (cmd->request) {
+	case USB_REQ_GET_STATUS:
+		return dwc2_submit_rh_msg_in_status(dwc2, dev, buffer,
+						       txlen, cmd);
+	case USB_REQ_GET_DESCRIPTOR:
+		return dwc2_submit_rh_msg_in_descriptor(dev, buffer,
+							   txlen, cmd);
+	case USB_REQ_GET_CONFIGURATION:
+		return dwc2_submit_rh_msg_in_configuration(dev, buffer,
+							      txlen, cmd);
+	default:
+		dev->act_len = 0;
+		dev->status = USB_ST_STALLED;
+
+		return -1;
+	}
+}
+
+/* Direction: Out */
+static int dwc2_submit_rh_msg_out(struct dwc2 *dwc2,
+				  struct usb_device *dev,
+				  void *buffer, int txlen,
+				  struct devrequest *cmd)
+{
+	uint16_t wValue = le16_to_cpu(cmd->value);
+	uint32_t hprt0;
+
+	switch (cmd->requesttype & (USB_TYPE_MASK | USB_RECIP_MASK)) {
+	case USB_TYPE_STANDARD | USB_RECIP_DEVICE:
+		switch (cmd->request) {
+		case USB_REQ_SET_ADDRESS:
+			dwc2_dbg(dwc2, "set root hub addr %d\n", wValue);
+			dwc2->root_hub_devnum = wValue;
+			break;
+		case USB_REQ_SET_CONFIGURATION:
+			break;
+		default:
+			goto unknown;
+		}
+		break;
+	case USB_TYPE_STANDARD | USB_RECIP_ENDPOINT:
+	case USB_RT_HUB:	/* USB_TYPE_CLASS | USB_RECIP_DEVICE */
+		switch (cmd->request) {
+		case USB_REQ_CLEAR_FEATURE:
+			break;
+		}
+		break;
+	case USB_RT_PORT:	/* USB_TYPE_CLASS | USB_RECIP_OTHER */
+		switch (cmd->request) {
+		case USB_REQ_CLEAR_FEATURE:
+			hprt0 = dwc2_readl(dwc2, HPRT0);
+			hprt0 &= ~(HPRT0_ENA | HPRT0_CONNDET
+				   | HPRT0_ENACHG | HPRT0_OVRCURRCHG);
+			switch (wValue) {
+			case USB_PORT_FEAT_ENABLE:
+				hprt0 |= HPRT0_ENA;
+				break;
+			case USB_PORT_FEAT_SUSPEND:
+				break;
+			case USB_PORT_FEAT_POWER:
+				break;
+			case USB_PORT_FEAT_C_CONNECTION:
+				hprt0 |= HPRT0_CONNDET;
+				break;
+			case USB_PORT_FEAT_C_ENABLE:
+				hprt0 |= HPRT0_ENACHG;
+				break;
+			case USB_PORT_FEAT_C_OVER_CURRENT:
+				hprt0 |= HPRT0_OVRCURRCHG;
+				break;
+			default:
+				dwc2_dbg(dwc2, "unknown feature 0x%x\n", wValue);
+				goto unknown;
+			}
+			dwc2_writel(dwc2, hprt0, HPRT0);
+			break;
+		case USB_REQ_SET_FEATURE:
+			hprt0 = dwc2_readl(dwc2, HPRT0);
+			hprt0 &= ~(HPRT0_ENA | HPRT0_CONNDET
+				   | HPRT0_ENACHG | HPRT0_OVRCURRCHG);
+			switch (wValue) {
+			case USB_PORT_FEAT_SUSPEND:
+				break;
+			case USB_PORT_FEAT_RESET:
+				hprt0 |= HPRT0_RST;
+				dwc2_writel(dwc2, hprt0, HPRT0);
+
+				mdelay(60);
+
+				hprt0 = dwc2_readl(dwc2, HPRT0);
+				hprt0 &= ~HPRT0_RST;
+				dwc2_writel(dwc2, hprt0, HPRT0);
+				break;
+			case USB_PORT_FEAT_POWER:
+				break;
+			case USB_PORT_FEAT_ENABLE:
+				/* Set by the core after a reset */
+				break;
+			default:
+				dwc2_dbg(dwc2, "unknown feature 0x%x\n", wValue);
+				goto unknown;
+			}
+			break;
+		default: goto unknown;
+		}
+		break;
+	default:
+		goto unknown;
+	}
+
+	dev->act_len = 0;
+	dev->status = 0;
+
+	return 0;
+
+unknown:
+	dev->act_len = 0;
+	dev->status = USB_ST_STALLED;
+	return -1;
+}
+
+int
+dwc2_submit_rh_msg(struct dwc2 *dwc2, struct usb_device *dev,
+				 unsigned long pipe, void *buffer, int txlen,
+				 struct devrequest *cmd)
+{
+	int stat = 0;
+
+	if (usb_pipeint(pipe)) {
+		dwc2_err(dwc2, "Root-Hub submit IRQ: NOT implemented\n");
+		return 0;
+	}
+
+	if (cmd->requesttype & USB_DIR_IN)
+		stat = dwc2_submit_rh_msg_in(dwc2, dev, buffer, txlen, cmd);
+	else
+		stat = dwc2_submit_rh_msg_out(dwc2, dev, buffer, txlen, cmd);
+
+	mdelay(1);
+	return stat;
+}
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
