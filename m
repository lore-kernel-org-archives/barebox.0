Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qME-0006uJ-J0
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 12:44:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1i9qM8-0008Pq-HB
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 14:43:48 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1i9qM8-0004Em-7a
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 14:43:48 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 16 Sep 2019 14:43:43 +0200
Message-Id: <20190916124345.24244-4-s.trumtrar@pengutronix.de>
In-Reply-To: <20190916124345.24244-1-s.trumtrar@pengutronix.de>
References: <20190916124345.24244-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 4/6] usb: dwc3: add support for gadget mode
To: Barebox List <barebox@lists.infradead.org>

Expand the DWC3 usb core with gadget support.
Patches imported and adopted from Linux v5.2.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/usb/dwc3/Kconfig          |   29 +-
 drivers/usb/dwc3/Makefile         |    7 +-
 drivers/usb/dwc3/core.c           |  450 ++++-
 drivers/usb/dwc3/core.h           |  181 +-
 drivers/usb/dwc3/dwc3-of-simple.c |  122 ++
 drivers/usb/dwc3/ep0.c            | 1183 +++++++++++
 drivers/usb/dwc3/gadget.c         | 3015 +++++++++++++++++++++++++++++
 drivers/usb/dwc3/gadget.h         |  127 ++
 8 files changed, 5094 insertions(+), 20 deletions(-)
 create mode 100644 drivers/usb/dwc3/dwc3-of-simple.c
 create mode 100644 drivers/usb/dwc3/ep0.c
 create mode 100644 drivers/usb/dwc3/gadget.c
 create mode 100644 drivers/usb/dwc3/gadget.h

diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
index c91fd36a9532..09da1213744d 100644
--- a/drivers/usb/dwc3/Kconfig
+++ b/drivers/usb/dwc3/Kconfig
@@ -2,8 +2,6 @@ config USB_DWC3
 	tristate "DesignWare USB3 DRD Core Support"
 	depends on USB && HAS_DMA
 	select USB_XHCI
-	select USB_DWC3_HOST	# Remove this once we support more
-				# than USB host
 	help
 	  Say Y or M here if your system has a Dual Role SuperSpeed
 	  USB controller based on the DesignWare USB3 IP Core.
@@ -13,10 +11,37 @@ config USB_DWC3
 
 if USB_DWC3
 
+choice
+	bool "DWC3 Mode Selection"
+
 config USB_DWC3_HOST
 	bool "Host only mode"
 	help
 	  Select this when you want to use DWC3 in host mode only,
 	  thereby the gadget feature will be regressed.
 
+config USB_DWC3_GADGET
+	bool "Gadget only mode"
+	depends on USB_GADGET
+	help
+	  Select this when you want to use DWC3 in gadget mode only,
+	  thereby the host feature will be regressed.
+
+config USB_DWC3_DUAL_ROLE
+	bool "Dual Role mode"
+	help
+	  This is the default mode of working of DWC3 controller where
+	  both host and gadget features are enabled.
+
+endchoice
+
+config USB_DWC3_OF_SIMPLE
+	tristate "Generic OF Simple Glue Layer"
+	depends on COMMON_CLK
+	default USB_DWC3
+	help
+	 Support USB2/3 functionality in simple SoC integrations.
+	 Currently supports Xilinx and Qualcomm DWC USB3 IP.
+	 Say 'Y' or 'M' if you have one such device.
+
 endif
diff --git a/drivers/usb/dwc3/Makefile b/drivers/usb/dwc3/Makefile
index d43b23eb2d92..d0c812c883df 100644
--- a/drivers/usb/dwc3/Makefile
+++ b/drivers/usb/dwc3/Makefile
@@ -4,7 +4,12 @@ obj-$(CONFIG_USB_DWC3)			+= dwc3.o
 
 dwc3-y					:= core.o
 
-ifneq ($(filter y,$(CONFIG_USB_DWC3_HOST)),)
+ifneq ($(filter y,$(CONFIG_USB_DWC3_HOST) $(CONFIG_USB_DWC3_DUAL_ROLE)),)
 	dwc3-y				+= host.o
 endif
 
+ifneq ($(filter y,$(CONFIG_USB_DWC3_GADGET) $(CONFIG_USB_DWC3_DUAL_ROLE)),)
+	dwc3-y				+= gadget.o ep0.o
+endif
+
+obj-$(CONFIG_USB_DWC3_OF_SIMPLE)	+= dwc3-of-simple.o
diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 60fd6318db8e..d3f9d9ef270c 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -11,15 +11,77 @@
 #include <common.h>
 #include <linux/clk.h>
 #include <linux/phy/phy.h>
+#include <dma.h>
 #include <driver.h>
 #include <init.h>
 
+#include "gadget.h"
 #include "core.h"
 #include "io.h"
 
 
 #define DWC3_DEFAULT_AUTOSUSPEND_DELAY	5000 /* ms */
 
+/**
+ * dwc3_get_dr_mode - Validates and sets dr_mode
+ * @dwc: pointer to our context structure
+ */
+static int dwc3_get_dr_mode(struct dwc3 *dwc)
+{
+	enum usb_dr_mode mode;
+	struct device_d *dev = dwc->dev;
+	unsigned int hw_mode;
+
+	if (dwc->dr_mode == USB_DR_MODE_UNKNOWN)
+		dwc->dr_mode = USB_DR_MODE_OTG;
+
+	mode = dwc->dr_mode;
+	hw_mode = DWC3_GHWPARAMS0_MODE(dwc->hwparams.hwparams0);
+
+	switch (hw_mode) {
+	case DWC3_GHWPARAMS0_MODE_GADGET:
+		if (IS_ENABLED(CONFIG_USB_DWC3_HOST)) {
+			dev_err(dev,
+				"Controller does not support host mode.\n");
+			return -EINVAL;
+		}
+		mode = USB_DR_MODE_PERIPHERAL;
+		break;
+	case DWC3_GHWPARAMS0_MODE_HOST:
+		if (IS_ENABLED(CONFIG_USB_DWC3_GADGET)) {
+			dev_err(dev,
+				"Controller does not support device mode.\n");
+			return -EINVAL;
+		}
+		mode = USB_DR_MODE_HOST;
+		break;
+	default:
+		if (IS_ENABLED(CONFIG_USB_DWC3_HOST))
+			mode = USB_DR_MODE_HOST;
+		else if (IS_ENABLED(CONFIG_USB_DWC3_GADGET))
+			mode = USB_DR_MODE_PERIPHERAL;
+
+		/*
+		 * DWC_usb31 and DWC_usb3 v3.30a and higher do not support OTG
+		 * mode. If the controller supports DRD but the dr_mode is not
+		 * specified or set to OTG, then set the mode to peripheral.
+		 */
+		if (mode == USB_DR_MODE_OTG &&
+		    dwc->revision >= DWC3_REVISION_330A)
+			mode = USB_DR_MODE_PERIPHERAL;
+	}
+
+	if (mode != dwc->dr_mode) {
+		dev_warn(dev,
+			 "Configuration mismatch. dr_mode forced to %s\n",
+			 mode == USB_DR_MODE_HOST ? "host" : "gadget");
+
+		dwc->dr_mode = mode;
+	}
+
+	return 0;
+}
+
 void dwc3_set_prtcap(struct dwc3 *dwc, u32 mode)
 {
 	u32 reg;
@@ -89,6 +151,180 @@ done:
 	return 0;
 }
 
+/**
+ * dwc3_free_one_event_buffer - Frees one event buffer
+ * @dwc: Pointer to our controller context structure
+ * @evt: Pointer to event buffer to be freed
+ */
+static void dwc3_free_one_event_buffer(struct dwc3 *dwc,
+		struct dwc3_event_buffer *evt)
+{
+	dma_free_coherent(evt->buf, 0, sizeof(dma_addr_t));
+}
+
+/**
+ * dwc3_alloc_one_event_buffer - Allocates one event buffer structure
+ * @dwc: Pointer to our controller context structure
+ * @length: size of the event buffer
+ *
+ * Returns a pointer to the allocated event buffer structure on success
+ * otherwise ERR_PTR(errno).
+ */
+static struct dwc3_event_buffer *dwc3_alloc_one_event_buffer(struct dwc3 *dwc,
+		unsigned length)
+{
+	struct dwc3_event_buffer	*evt;
+
+	evt = xzalloc(sizeof(*evt));
+	if (!evt)
+		return ERR_PTR(-ENOMEM);
+
+	evt->dwc	= dwc;
+	evt->length	= length;
+	evt->buf	= dma_alloc_coherent(length, &evt->dma);
+	if (!evt->buf)
+		return ERR_PTR(-ENOMEM);
+
+	return evt;
+}
+
+/**
+ * dwc3_free_event_buffers - frees all allocated event buffers
+ * @dwc: Pointer to our controller context structure
+ */
+static void dwc3_free_event_buffers(struct dwc3 *dwc)
+{
+	struct dwc3_event_buffer	*evt;
+
+	evt = dwc->ev_buf;
+	if (evt)
+		dwc3_free_one_event_buffer(dwc, evt);
+}
+
+/**
+ * dwc3_alloc_event_buffers - Allocates @num event buffers of size @length
+ * @dwc: pointer to our controller context structure
+ * @length: size of event buffer
+ *
+ * Returns 0 on success otherwise negative errno. In the error case, dwc
+ * may contain some buffers allocated but not all which were requested.
+ */
+static int dwc3_alloc_event_buffers(struct dwc3 *dwc, unsigned length)
+{
+	struct dwc3_event_buffer *evt;
+
+	evt = dwc3_alloc_one_event_buffer(dwc, length);
+	if (IS_ERR(evt)) {
+		dev_err(dwc->dev, "can't allocate event buffer\n");
+		return PTR_ERR(evt);
+	}
+	dwc->ev_buf = evt;
+
+	return 0;
+}
+
+/**
+ * dwc3_event_buffers_setup - setup our allocated event buffers
+ * @dwc: pointer to our controller context structure
+ *
+ * Returns 0 on success otherwise negative errno.
+ */
+static int dwc3_event_buffers_setup(struct dwc3 *dwc)
+{
+	struct dwc3_event_buffer	*evt;
+
+	evt = dwc->ev_buf;
+	evt->lpos = 0;
+	dwc3_writel(dwc->regs, DWC3_GEVNTADRLO(0),
+			lower_32_bits(evt->dma));
+	dwc3_writel(dwc->regs, DWC3_GEVNTADRHI(0),
+			upper_32_bits(evt->dma));
+	dwc3_writel(dwc->regs, DWC3_GEVNTSIZ(0),
+			DWC3_GEVNTSIZ_SIZE(evt->length));
+	dwc3_writel(dwc->regs, DWC3_GEVNTCOUNT(0), 0);
+
+	return 0;
+}
+
+
+static void dwc3_event_buffers_cleanup(struct dwc3 *dwc)
+{
+	struct dwc3_event_buffer	*evt;
+
+	evt = dwc->ev_buf;
+
+	evt->lpos = 0;
+
+	dwc3_writel(dwc->regs, DWC3_GEVNTADRLO(0), 0);
+	dwc3_writel(dwc->regs, DWC3_GEVNTADRHI(0), 0);
+	dwc3_writel(dwc->regs, DWC3_GEVNTSIZ(0), DWC3_GEVNTSIZ_INTMASK
+			| DWC3_GEVNTSIZ_SIZE(0));
+	dwc3_writel(dwc->regs, DWC3_GEVNTCOUNT(0), 0);
+}
+
+static int dwc3_alloc_scratch_buffers(struct dwc3 *dwc)
+{
+	if (!dwc->has_hibernation)
+		return 0;
+
+	if (!dwc->nr_scratch)
+		return 0;
+
+	dwc->scratchbuf = kmalloc_array(dwc->nr_scratch,
+			DWC3_SCRATCHBUF_SIZE, GFP_KERNEL);
+	if (!dwc->scratchbuf)
+		return -ENOMEM;
+
+	return 0;
+}
+
+static int dwc3_setup_scratch_buffers(struct dwc3 *dwc)
+{
+	dma_addr_t scratch_addr;
+	u32 param;
+	int ret;
+
+	if (!dwc->has_hibernation)
+		return 0;
+
+	if (!dwc->nr_scratch)
+		return 0;
+
+	scratch_addr = dma_map_single(dwc->dev, dwc->scratchbuf,
+				      dwc->nr_scratch * DWC3_SCRATCHBUF_SIZE,
+				      DMA_BIDIRECTIONAL);
+	if (dma_mapping_error(dwc->dev, scratch_addr)) {
+		dev_err(dwc->dev, "failed to map scratch buffer\n");
+		ret = -EFAULT;
+		goto err0;
+	}
+
+	dwc->scratch_addr = scratch_addr;
+
+	param = lower_32_bits(scratch_addr);
+
+	ret = dwc3_send_gadget_generic_command(dwc,
+			DWC3_DGCMD_SET_SCRATCHPAD_ADDR_LO, param);
+	if (ret < 0)
+		goto err1;
+
+	param = upper_32_bits(scratch_addr);
+
+	ret = dwc3_send_gadget_generic_command(dwc,
+			DWC3_DGCMD_SET_SCRATCHPAD_ADDR_HI, param);
+	if (ret < 0)
+		goto err1;
+
+	return 0;
+
+err1:
+	dma_unmap_single(dwc->dev, dwc->scratch_addr, dwc->nr_scratch *
+			 DWC3_SCRATCHBUF_SIZE, DMA_BIDIRECTIONAL);
+
+err0:
+	return ret;
+}
+
 static const struct clk_bulk_data dwc3_core_clks[] = {
 	{ .id = "ref" },
 	{ .id = "bus_early" },
@@ -142,6 +378,22 @@ static void dwc3_cache_hwparams(struct dwc3 *dwc)
 	parms->hwparams8 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS8);
 }
 
+static int dwc3_core_ulpi_init(struct dwc3 *dwc)
+{
+	int intf;
+	int ret = 0;
+
+	intf = DWC3_GHWPARAMS3_HSPHY_IFC(dwc->hwparams.hwparams3);
+
+	if (intf == DWC3_GHWPARAMS3_HSPHY_IFC_ULPI ||
+	    (intf == DWC3_GHWPARAMS3_HSPHY_IFC_UTMI_ULPI &&
+	     dwc->hsphy_interface &&
+	     !strncmp(dwc->hsphy_interface, "ulpi", 4)))
+		ret = dwc3_ulpi_init(dwc);
+
+	return ret;
+}
+
 /**
  * dwc3_phy_setup - Configure USB PHY Interface of DWC3 Core
  * @dwc: Pointer to our controller context structure
@@ -228,6 +480,23 @@ static int dwc3_phy_setup(struct dwc3 *dwc)
 		break;
 	}
 
+	switch (dwc->hsphy_mode) {
+	case USBPHY_INTERFACE_MODE_UTMI:
+		reg &= ~(DWC3_GUSB2PHYCFG_PHYIF_MASK |
+		       DWC3_GUSB2PHYCFG_USBTRDTIM_MASK);
+		reg |= DWC3_GUSB2PHYCFG_PHYIF(UTMI_PHYIF_8_BIT) |
+		       DWC3_GUSB2PHYCFG_USBTRDTIM(USBTRDTIM_UTMI_8_BIT);
+		break;
+	case USBPHY_INTERFACE_MODE_UTMIW:
+		reg &= ~(DWC3_GUSB2PHYCFG_PHYIF_MASK |
+		       DWC3_GUSB2PHYCFG_USBTRDTIM_MASK);
+		reg |= DWC3_GUSB2PHYCFG_PHYIF(UTMI_PHYIF_16_BIT) |
+		       DWC3_GUSB2PHYCFG_USBTRDTIM(USBTRDTIM_UTMI_16_BIT);
+		break;
+	default:
+		break;
+	}
+
 	/*
 	 * Above 1.94a, it is recommended to set DWC3_GUSB2PHYCFG_SUSPHY to
 	 * '0' during coreConsultant configuration. So default value will
@@ -255,12 +524,16 @@ static int dwc3_phy_setup(struct dwc3 *dwc)
 
 static void dwc3_core_exit(struct dwc3 *dwc)
 {
+	dwc3_event_buffers_cleanup(dwc);
+
 	phy_exit(dwc->usb2_generic_phy);
 	phy_exit(dwc->usb3_generic_phy);
 
 	phy_power_off(dwc->usb2_generic_phy);
 	phy_power_off(dwc->usb3_generic_phy);
 	clk_bulk_disable(dwc->num_clks, dwc->clks);
+
+	dwc3_free_event_buffers(dwc);
 }
 
 static bool dwc3_core_is_valid(struct dwc3 *dwc)
@@ -361,6 +634,105 @@ static void dwc3_core_setup_global_control(struct dwc3 *dwc)
 
 static int dwc3_core_get_phy(struct dwc3 *dwc);
 
+/* set global incr burst type configuration registers */
+static void dwc3_set_incr_burst_type(struct dwc3 *dwc)
+{
+	struct device_d *dev = dwc->dev;
+	/* incrx_mode : for INCR burst type. */
+	bool incrx_mode;
+	/* incrx_size : for size of INCRX burst. */
+	u32 incrx_size;
+	u32 *vals;
+	u32 cfg;
+	int ntype = 0;
+	int ret;
+	int i;
+
+	cfg = dwc3_readl(dwc->regs, DWC3_GSBUSCFG0);
+
+	/*
+	 * Handle property "snps,incr-burst-type-adjustment".
+	 * Get the number of value from this property:
+	 * result <= 0, means this property is not supported.
+	 * result = 1, means INCRx burst mode supported.
+	 * result > 1, means undefined length burst mode supported.
+	 */
+	of_find_property(dev->device_node, "snps,incr-burst-type-adjustment",
+			       &ntype);
+
+	ntype /= sizeof(u32);
+
+	if (ntype <= 0)
+		return;
+
+	vals = kcalloc(ntype, sizeof(u32), GFP_KERNEL);
+	if (!vals) {
+		dev_err(dev, "Error to get memory\n");
+		return;
+	}
+
+	/* Get INCR burst type, and parse it */
+	ret = of_property_read_u32_array(dev->device_node,
+					 "snps,incr-burst-type-adjustment",
+					 vals, ntype);
+	if (ret) {
+		kfree(vals);
+		dev_err(dev, "Error to get property\n");
+		return;
+	}
+
+	incrx_size = *vals;
+
+	if (ntype > 1) {
+		/* INCRX (undefined length) burst mode */
+		incrx_mode = INCRX_UNDEF_LENGTH_BURST_MODE;
+		for (i = 1; i < ntype; i++) {
+			if (vals[i] > incrx_size)
+				incrx_size = vals[i];
+		}
+	} else {
+		/* INCRX burst mode */
+		incrx_mode = INCRX_BURST_MODE;
+	}
+
+	kfree(vals);
+
+	/* Enable Undefined Length INCR Burst and Enable INCRx Burst */
+	cfg &= ~DWC3_GSBUSCFG0_INCRBRST_MASK;
+	if (incrx_mode)
+		cfg |= DWC3_GSBUSCFG0_INCRBRSTENA;
+	switch (incrx_size) {
+	case 256:
+		cfg |= DWC3_GSBUSCFG0_INCR256BRSTENA;
+		break;
+	case 128:
+		cfg |= DWC3_GSBUSCFG0_INCR128BRSTENA;
+		break;
+	case 64:
+		cfg |= DWC3_GSBUSCFG0_INCR64BRSTENA;
+		break;
+	case 32:
+		cfg |= DWC3_GSBUSCFG0_INCR32BRSTENA;
+		break;
+	case 16:
+		cfg |= DWC3_GSBUSCFG0_INCR16BRSTENA;
+		break;
+	case 8:
+		cfg |= DWC3_GSBUSCFG0_INCR8BRSTENA;
+		break;
+	case 4:
+		cfg |= DWC3_GSBUSCFG0_INCR4BRSTENA;
+		break;
+	case 1:
+		break;
+	default:
+		dev_err(dev, "Invalid property\n");
+		break;
+	}
+
+	dwc3_writel(dwc->regs, DWC3_GSBUSCFG0, cfg);
+}
+
 /**
  * dwc3_core_init - Low-level initialization of DWC3 Core
  * @dwc: Pointer to our controller context structure
@@ -395,6 +767,13 @@ static int dwc3_core_init(struct dwc3 *dwc)
 	if (ret)
 		goto err0;
 
+	if (!dwc->ulpi_ready) {
+		ret = dwc3_core_ulpi_init(dwc);
+		if (ret)
+			goto err0;
+		dwc->ulpi_ready = true;
+	}
+
 	if (!dwc->phys_ready) {
 		ret = dwc3_core_get_phy(dwc);
 		if (ret)
@@ -409,16 +788,29 @@ static int dwc3_core_init(struct dwc3 *dwc)
 	dwc3_core_setup_global_control(dwc);
 	dwc3_core_num_eps(dwc);
 
+	ret = dwc3_setup_scratch_buffers(dwc);
+	if (ret)
+		goto err0a;
+
 	/* Adjust Frame Length */
 	dwc3_frame_length_adjustment(dwc);
 
+	dwc3_set_incr_burst_type(dwc);
+
 	ret = phy_power_on(dwc->usb2_generic_phy);
 	if (ret < 0)
-		goto err2;
+		goto err1;
 
 	ret = phy_power_on(dwc->usb3_generic_phy);
 	if (ret < 0)
+		goto err2;
+
+	ret = dwc3_event_buffers_setup(dwc);
+	if (ret) {
+		dev_err(dwc->dev, "failed to setup event buffers\n");
 		goto err3;
+	}
+
 	/*
 	 * ENDXFER polling is available on version 3.10a and later of
 	 * the DWC_usb3 controller. It is NOT available in the
@@ -501,12 +893,11 @@ static int dwc3_core_init(struct dwc3 *dwc)
 
 	return 0;
 
-/* err4: */
-	/* phy_power_off(dwc->usb3_generic_phy); */
 err3:
-	phy_power_off(dwc->usb2_generic_phy);
+	phy_power_off(dwc->usb3_generic_phy);
 err2:
-/* err1: */
+	phy_power_off(dwc->usb2_generic_phy);
+err1:
 	phy_exit(dwc->usb2_generic_phy);
 	phy_exit(dwc->usb3_generic_phy);
 err0a:
@@ -556,6 +947,16 @@ static int dwc3_core_init_mode(struct dwc3 *dwc)
 	int ret;
 
 	switch (dwc->dr_mode) {
+	case USB_DR_MODE_PERIPHERAL:
+		dwc3_set_prtcap(dwc, DWC3_GCTL_PRTCAP_DEVICE);
+
+		ret = dwc3_gadget_init(dwc);
+		if (ret) {
+			if (ret != -EPROBE_DEFER)
+				dev_err(dev, "failed to initialize gadget\n");
+			return ret;
+		}
+		break;
 	case USB_DR_MODE_HOST:
 		dwc3_set_prtcap(dwc, DWC3_GCTL_PRTCAP_HOST);
 
@@ -595,10 +996,19 @@ static void dwc3_get_properties(struct dwc3 *dwc)
 
 	dwc->maximum_speed = of_usb_get_maximum_speed(dev->device_node, NULL);
 	dwc->dr_mode = of_usb_get_dr_mode(dev->device_node, NULL);
+	dwc->hsphy_mode = of_usb_get_phy_mode(dev->device_node, NULL);
 
 	dwc->lpm_nyet_threshold = lpm_nyet_threshold;
 	dwc->tx_de_emphasis = tx_de_emphasis;
 
+	if (of_get_property(dev->device_node, "snps,dis_rxdet_inp3_quirk",
+			    NULL))
+		dwc->dis_rxdet_inp3_quirk = 1;
+
+	of_property_read_u32_array(dev->device_node,
+				   "snps,quirk-frame-length-adjustment",
+				   &dwc->fladj, 1);
+
 	dwc->hird_threshold = hird_threshold
 		| (dwc->is_utmi_l1_suspend << 4);
 
@@ -699,15 +1109,13 @@ static int dwc3_probe(struct device_d *dev)
 	if (dev->device_node) {
 		dwc->num_clks = ARRAY_SIZE(dwc3_core_clks);
 
-		ret = clk_bulk_get(dev, dwc->num_clks, dwc->clks);
-		if (ret == -EPROBE_DEFER)
-			return ret;
-		/*
-		 * Clocks are optional, but new DT platforms should support all
-		 * clocks as required by the DT-binding.
-		 */
-		if (ret)
-			dwc->num_clks = 0;
+		if (of_find_property(dev->device_node, "clocks", NULL)) {
+			ret = clk_bulk_get(dev, dwc->num_clks, dwc->clks);
+			if (ret == -EPROBE_DEFER)
+				return ret;
+			if (ret)
+				return ret;
+		}
 	}
 
 	ret = clk_bulk_enable(dwc->num_clks, dwc->clks);
@@ -718,6 +1126,20 @@ static int dwc3_probe(struct device_d *dev)
 
 	dwc3_cache_hwparams(dwc);
 
+	ret = dwc3_alloc_event_buffers(dwc, DWC3_EVENT_BUFFERS_SIZE);
+	if (ret) {
+		dev_err(dwc->dev, "failed to allocate event buffers\n");
+		return -ENOMEM;
+	}
+
+	ret = dwc3_get_dr_mode(dwc);
+	if (ret)
+		return ret;
+
+	ret = dwc3_alloc_scratch_buffers(dwc);
+	if (ret)
+		return ret;
+
 	ret = dwc3_core_init(dwc);
 	if (ret) {
 		if (ret != -EPROBE_DEFER)
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index a404e4cd6a6c..df0a188a6309 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -11,7 +11,10 @@
 #ifndef __DRIVERS_USB_DWC3_CORE_H
 #define __DRIVERS_USB_DWC3_CORE_H
 
+#include <linux/spinlock.h>
 #include <usb/usb.h>
+#include <usb/phy.h>
+#include <usb/gadget.h>
 
 #define DWC3_MSG_MAX	500
 
@@ -364,6 +367,7 @@
 #define DWC3_DCFG_HIGHSPEED	(0 << 0)
 #define DWC3_DCFG_FULLSPEED	BIT(0)
 #define DWC3_DCFG_LOWSPEED	(2 << 0)
+#define DWC3_DCFG_FULLSPEED1	(3 << 0)
 
 #define DWC3_DCFG_NUMP_SHIFT	17
 #define DWC3_DCFG_NUMP(n)	(((n) >> DWC3_DCFG_NUMP_SHIFT) & 0x1f)
@@ -457,6 +461,7 @@
 #define DWC3_DSTS_HIGHSPEED		(0 << 0)
 #define DWC3_DSTS_FULLSPEED		BIT(0)
 #define DWC3_DSTS_LOWSPEED		(2 << 0)
+#define DWC3_DSTS_FULLSPEED1		(3 << 0)
 
 /* Device Generic Command Register */
 #define DWC3_DGCMD_SET_LMP		0x01
@@ -594,6 +599,22 @@
 
 struct dwc3_trb;
 
+/**
+ * struct dwc3_event_buffer - Software event buffer representation
+ * @buf: _THE_ buffer
+ * @length: size of this buffer
+ * @lpos: event offset
+ * @dma: dma_addr_t
+ * @dwc: pointer to DWC controller
+ */
+struct dwc3_event_buffer {
+	void			*buf;
+	unsigned		length;
+	unsigned int		lpos;
+	dma_addr_t		dma;
+	struct dwc3		*dwc;
+};
+
 #define DWC3_EP_FLAG_STALLED	BIT(0)
 #define DWC3_EP_FLAG_WEDGED	BIT(1)
 
@@ -601,6 +622,84 @@ struct dwc3_trb;
 #define DWC3_EP_DIRECTION_RX	false
 
 #define DWC3_TRB_NUM		256
+#define DWC3_TRB_MASK		(DWC3_TRB_NUM - 1)
+
+/**
+ * struct dwc3_ep - device side endpoint representation
+ * @endpoint: usb endpoint
+ * @pending_list: list of requests for this endpoint
+ * @started_list: list of started requests on this endpoint
+ * @trb_pool: array of transaction buffers
+ * @trb_pool_dma: dma address of @trb_pool
+ * @free_slot: next slot which is going to be used
+ * @busy_slot: first slot which is owned by HW
+ * @desc: usb_endpoint_descriptor pointer
+ * @dwc: pointer to DWC controller
+ * @saved_state: ep state saved during hibernation
+ * @flags: endpoint flags (wedged, stalled, ...)
+ * @current_trb: index of current used trb
+ * @number: endpoint number (1 - 15)
+ * @type: set to bmAttributes & USB_ENDPOINT_XFERTYPE_MASK
+ * @resource_index: Resource transfer index
+ * @interval: the interval on which the ISOC transfer is started
+ * @name: a human readable name e.g. ep1out-bulk
+ * @direction: true for TX, false for RX
+ * @stream_capable: true when streams are enabled
+ */
+struct dwc3_ep {
+	struct usb_ep				endpoint;
+	struct list_head			cancelled_list;
+	struct list_head			pending_list;
+	struct list_head			started_list;
+
+	void __iomem				*regs;
+
+	struct dwc3_trb			*trb_pool;
+	dma_addr_t				trb_pool_dma;
+	u32					free_slot;
+	u32					busy_slot;
+	const struct usb_ss_ep_comp_descriptor	*comp_desc;
+	struct dwc3				*dwc;
+
+	u32					saved_state;
+	unsigned				flags;
+#define DWC3_EP_ENABLED			BIT(0)
+#define DWC3_EP_STALL				BIT(1)
+#define DWC3_EP_WEDGE				BIT(2)
+#define DWC3_EP_TRANSFER_STARTED		BIT(3)
+#define DWC3_EP_PENDING_REQUEST		BIT(4)
+
+	/* This last one is specific to EP0 */
+#define DWC3_EP0_DIR_IN			BIT(31)
+
+	unsigned				current_trb;
+	/*
+	 * IMPORTANT: we *know* we have 256 TRBs in our @trb_pool, so we will
+	 * use a u8 type here. If anybody decides to increase number of TRBs to
+	 * anything larger than 256 - I can't see why people would want to do
+	 * this though - then this type needs to be changed.
+	 *
+	 * By using u8 types we ensure that our % operator when incrementing
+	 * enqueue and dequeue get optimized away by the compiler.
+	 */
+	u8					trb_enqueue;
+	u8					trb_dequeue;
+
+	u8					number;
+	u8					type;
+	u8					resource_index;
+	u32					frame_number;
+	u32					interval;
+
+	char					name[20];
+
+	unsigned				direction:1;
+	unsigned				stream_capable:1;
+
+	/* For isochronous START TRANSFER workaround only */
+	u8					combo_num;
+	int					start_cmd_status;
+};
 
 enum dwc3_phy {
 	DWC3_PHY_UNKNOWN = 0,
@@ -730,6 +829,33 @@ struct dwc3_hwparams {
 /* HWPARAMS7 */
 #define DWC3_RAM1_DEPTH(n)	((n) & 0xffff)
 
+struct dwc3_request {
+	struct usb_request		request;
+	struct list_head		list;
+	struct dwc3_ep			*dep;
+	u32				start_slot;
+
+	unsigned			remaining;
+
+	unsigned int			status;
+#define DWC3_REQUEST_STATUS_QUEUED	0
+#define DWC3_REQUEST_STATUS_STARTED	1
+#define DWC3_REQUEST_STATUS_CANCELLED	2
+#define DWC3_REQUEST_STATUS_COMPLETED	3
+#define DWC3_REQUEST_STATUS_UNKNOWN	-1
+
+	u8				epnum;
+	struct dwc3_trb		*trb;
+	dma_addr_t			trb_dma;
+
+	unsigned			num_trbs;
+
+	unsigned			needs_extra_trb:1;
+	unsigned			direction:1;
+	unsigned			mapped:1;
+	unsigned			queued:1;
+};
+
 /**
  * struct dwc3 - representation of our controller
  * @drd_work: workqueue used for role swapping
@@ -855,9 +981,25 @@ struct dwc3_hwparams {
  *                 increments or 0 to disable.
  */
 struct dwc3 {
+	struct dwc3_trb		*ep0_trb;
+	void				*bounce;
+	void				*scratchbuf;
+	u8				*setup_buf;
+	dma_addr_t			ep0_trb_addr;
+	dma_addr_t			bounce_addr;
+	dma_addr_t			scratch_addr;
+	struct dwc3_request		ep0_usb_req;
+
 	struct device_d		*dev;
+
 	struct device_d		*xhci;
 
+	struct dwc3_event_buffer	*ev_buf;
+	struct dwc3_ep			*eps[DWC3_ENDPOINTS_NUM];
+
+	struct usb_gadget		gadget;
+	struct usb_gadget_driver	*gadget_driver;
+
 	struct clk_bulk_data	*clks;
 	int			num_clks;
 
@@ -865,12 +1007,14 @@ struct dwc3 {
 	struct phy		*usb3_generic_phy;
 
 	bool			phys_ready;
+	bool			ulpi_ready;
 
 	void __iomem		*regs;
 
 	enum usb_dr_mode	dr_mode;
 	u32			current_dr_role;
 	u32			desired_dr_role;
+	enum usb_phy_interface	hsphy_mode;
 
 	u32			fladj;
 	u32			irq_gadget;
@@ -934,6 +1078,11 @@ struct dwc3 {
 #define DWC31_VERSIONTYPE_EA05		0x65613035
 #define DWC31_VERSIONTYPE_EA06		0x65613036
 
+	enum dwc3_ep0_next	ep0_next_event;
+	enum dwc3_ep0_state	ep0state;
+	enum dwc3_link_state	link_state;
+
+	u16			isoch_delay;
 	u16			u2sel;
 	u16			u2pel;
 	u8			u1sel;
@@ -966,10 +1115,14 @@ struct dwc3 {
 	unsigned		sysdev_is_parent:1;
 	unsigned		has_lpm_erratum:1;
 	unsigned		is_utmi_l1_suspend:1;
+	unsigned		is_selfpowered:1;
 	unsigned		is_fpga:1;
 	unsigned		pending_events:1;
+	unsigned		needs_fifo_resize:1;
 	unsigned		pullups_connected:1;
+	unsigned		resize_fifos:1;
 	unsigned		setup_packet_pending:1;
+	unsigned		start_config_issued:1;
 	unsigned		three_stage_setup:1;
 	unsigned		dis_start_transfer_quirk:1;
 	unsigned		usb3_lpm_capable:1;
@@ -1019,6 +1172,30 @@ struct dwc3_event_type {
 #define DWC3_DEPEVT_STREAMEVT		0x06
 #define DWC3_DEPEVT_EPCMDCMPLT		0x07
 
+/**
+ * dwc3_ep_event_string - returns event name
+ * @event: then event code
+ */
+static inline const char *dwc3_ep_event_string(u8 event)
+{
+	switch (event) {
+	case DWC3_DEPEVT_XFERCOMPLETE:
+		return "Transfer Complete";
+	case DWC3_DEPEVT_XFERINPROGRESS:
+		return "Transfer In-Progress";
+	case DWC3_DEPEVT_XFERNOTREADY:
+		return "Transfer Not Ready";
+	case DWC3_DEPEVT_RXTXFIFOEVT:
+		return "FIFO";
+	case DWC3_DEPEVT_STREAMEVT:
+		return "Stream";
+	case DWC3_DEPEVT_EPCMDCMPLT:
+		return "Endpoint Command Complete";
+	}
+
+	return "UNKNOWN";
+}
+
 /**
  * struct dwc3_event_depvt - Device Endpoint Events
  * @one_bit: indicates this is an endpoint event (not used)
@@ -1157,6 +1334,7 @@ struct dwc3_gadget_ep_cmd_params {
 #define DWC3_HAS_OTG			BIT(3)
 
 /* prototypes */
+int dwc3_gadget_resize_tx_fifos(struct dwc3 *dwc);
 void dwc3_set_prtcap(struct dwc3 *dwc, u32 mode);
 void dwc3_set_mode(struct dwc3 *dwc, u32 mode);
 
@@ -1174,9 +1352,6 @@ static inline bool dwc3_is_usb31(struct dwc3 *dwc)
 
 bool dwc3_has_imod(struct dwc3 *dwc);
 
-int dwc3_event_buffers_setup(struct dwc3 *dwc);
-void dwc3_event_buffers_cleanup(struct dwc3 *dwc);
-
 #if IS_ENABLED(CONFIG_USB_DWC3_HOST) || IS_ENABLED(CONFIG_USB_DWC3_DUAL_ROLE)
 int dwc3_host_init(struct dwc3 *dwc);
 #else
diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
new file mode 100644
index 000000000000..e58d9f95fef0
--- /dev/null
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -0,0 +1,122 @@
+// SPDX-License-Identifier: GPL-2.0
+/**
+ * dwc3-of-simple.c - OF glue layer for simple integrations
+ *
+ * Copyright (c) 2015 Texas Instruments Incorporated - http://www.ti.com
+ *
+ * Author: Felipe Balbi <balbi@ti.com>
+ *
+ * This is a combination of the old dwc3-qcom.c by Ivan T. Ivanov
+ * <iivanov@mm-sol.com> and the original patch adding support for Xilinx' SoC
+ * by Subbaraya Sundeep Bhatta <subbaraya.sundeep.bhatta@xilinx.com>
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+#include <init.h>
+#include <linux/clk.h>
+#include <linux/reset.h>
+#include <of.h>
+
+struct dwc3_of_simple {
+	struct device_d		*dev;
+	struct clk		**clks;
+	int			num_clocks;
+};
+
+static int dwc3_of_simple_clk_init(struct dwc3_of_simple *simple, int count)
+{
+	struct device_d		*dev = simple->dev;
+	struct device_node	*np = dev->device_node;
+	int			i;
+
+	simple->num_clocks = count;
+
+	if (!count)
+		return 0;
+
+	simple->clks = xzalloc(sizeof(struct clk *));
+	if (!simple->clks)
+		return -ENOMEM;
+
+	for (i = 0; i < simple->num_clocks; i++) {
+		struct clk	*clk;
+
+		clk = of_clk_get(np, i);
+		if (IS_ERR(clk)) {
+			while (--i >= 0) {
+				clk_disable(simple->clks[i]);
+				clk_put(simple->clks[i]);
+			}
+			return PTR_ERR(clk);
+		}
+
+		simple->clks[i] = clk;
+	}
+
+	return 0;
+}
+
+static int dwc3_of_simple_probe(struct device_d *dev)
+{
+	struct dwc3_of_simple	*simple;
+	struct device_node	*np = dev->device_node;
+
+	int			ret;
+	int			i;
+
+	simple = xzalloc(sizeof(*simple));
+	if (!simple)
+		return -ENOMEM;
+
+        dev->priv = simple;
+	simple->dev = dev;
+
+	ret = dwc3_of_simple_clk_init(simple, of_count_phandle_with_args(np,
+						"clocks", "#clock-cells"));
+	if (ret)
+		return ret;
+
+        ret = of_platform_populate(np, NULL, dev);
+	if (ret) {
+		for (i = 0; i < simple->num_clocks; i++) {
+			clk_disable(simple->clks[i]);
+			clk_put(simple->clks[i]);
+		}
+		return ret;
+	}
+
+        return 0;
+}
+
+static void dwc3_of_simple_remove(struct device_d *dev)
+{
+	struct dwc3_of_simple	*simple = dev->priv;
+	int			i;
+
+	for (i = 0; i < simple->num_clocks; i++) {
+		clk_disable(simple->clks[i]);
+		clk_put(simple->clks[i]);
+	}
+	simple->num_clocks = 0;
+}
+
+static const struct of_device_id of_dwc3_simple_match[] = {
+	{.compatible = "rockchip,rk3399-dwc3"},
+	{.compatible = "xlnx,zynqmp-dwc3"},
+	{.compatible = "fsl,ls1046a-dwc3"},
+	{.compatible = "cavium,octeon-7130-usb-uctl"},
+	{.compatible = "sprd,sc9860-dwc3"},
+	{.compatible = "amlogic,meson-axg-dwc3"},
+	{.compatible = "amlogic,meson-gxl-dwc3"},
+	{.compatible = "allwinner,sun50i-h6-dwc3"},
+	{/* Sentinel */}};
+
+static struct driver_d dwc3_of_simple_driver = {
+	.probe		= dwc3_of_simple_probe,
+	.remove		= dwc3_of_simple_remove,
+	.name		= "dwc3-of-simple",
+	.of_compatible	= DRV_OF_COMPAT(of_dwc3_simple_match),
+};
+device_platform_driver(dwc3_of_simple_driver);
diff --git a/drivers/usb/dwc3/ep0.c b/drivers/usb/dwc3/ep0.c
new file mode 100644
index 000000000000..b757a57886c4
--- /dev/null
+++ b/drivers/usb/dwc3/ep0.c
@@ -0,0 +1,1183 @@
+// SPDX-License-Identifier: GPL-2.0
+/**
+ * ep0.c - DesignWare USB3 DRD Controller Endpoint 0 Handling
+ *
+ * Copyright (C) 2015 Texas Instruments Incorporated - http://www.ti.com
+ *
+ * Authors: Felipe Balbi <balbi@ti.com>,
+ *	    Sebastian Andrzej Siewior <bigeasy@linutronix.de>
+ *
+ * Taken from Linux Kernel v3.19-rc1 (drivers/usb/dwc3/ep0.c) and ported
+ * to uboot.
+ *
+ * commit c00552ebaf : Merge 3.18-rc7 into usb-next
+ */
+
+#include <common.h>
+#include <dma.h>
+#include <linux/kernel.h>
+#include <linux/list.h>
+
+#include <usb/gadget.h>
+
+#include "core.h"
+#include "gadget.h"
+#include "io.h"
+
+static void __dwc3_ep0_do_control_status(struct dwc3 *dwc, struct dwc3_ep *dep);
+static void __dwc3_ep0_do_control_data(struct dwc3 *dwc,
+		struct dwc3_ep *dep, struct dwc3_request *req);
+
+static void dwc3_ep0_prepare_one_trb(struct dwc3_ep *dep,
+				     dma_addr_t buf_dma, u32 len, u32 type,
+				     bool chain)
+{
+	struct dwc3_trb *trb;
+	struct dwc3 *dwc;
+
+	dwc = dep->dwc;
+	trb = &dwc->ep0_trb[dep->trb_enqueue];
+
+	if (chain)
+		dep->trb_enqueue++;
+
+	trb->bpl = lower_32_bits(buf_dma);
+	trb->bph = upper_32_bits(buf_dma);
+	trb->size = len;
+	trb->ctrl = type;
+
+	trb->ctrl |= (DWC3_TRB_CTRL_HWO
+		     | DWC3_TRB_CTRL_ISP_IMI);
+
+	if (chain)
+		trb->ctrl |= DWC3_TRB_CTRL_CHN;
+	else
+		trb->ctrl |= (DWC3_TRB_CTRL_IOC
+			     | DWC3_TRB_CTRL_LST);
+}
+
+static int dwc3_ep0_start_trans(struct dwc3_ep *dep)
+{
+	struct dwc3_gadget_ep_cmd_params params;
+	struct dwc3 *dwc;
+	int ret;
+
+	dwc = dep->dwc;
+
+	if (dep->flags & DWC3_EP_TRANSFER_STARTED) {
+		dev_err(dwc->dev, "%s: transfer already started\n", dep->name);
+		return 0;
+	}
+
+	memset(&params, 0, sizeof(params));
+	params.param0 = upper_32_bits(dwc->ep0_trb_addr);
+	params.param1 = lower_32_bits(dwc->ep0_trb_addr);
+
+	ret = dwc3_send_gadget_ep_cmd(dep, DWC3_DEPCMD_STARTTRANSFER, &params);
+	if (ret < 0) {
+		dev_err(dwc->dev, "%s: STARTTRANSFER failed\n", dep->name);
+		return ret;
+	}
+
+	dwc->ep0_next_event = DWC3_EP0_COMPLETE;
+
+	return 0;
+}
+
+static const char *dwc3_ep0_state_string(enum dwc3_ep0_state state)
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
+static int __dwc3_gadget_ep0_queue(struct dwc3_ep *dep,
+				   struct dwc3_request *req)
+{
+	struct dwc3 *dwc = dep->dwc;
+
+	req->request.actual = 0;
+	req->request.status = -EINPROGRESS;
+	req->epnum = dep->number;
+
+	list_add_tail(&req->list, &dep->pending_list);
+
+	/*
+	 * Gadget driver might not be quick enough to queue a request
+	 * before we get a Transfer Not Ready event on this endpoint.
+	 *
+	 * In that case, we will set DWC3_EP_PENDING_REQUEST. When that
+	 * flag is set, it's telling us that as soon as Gadget queues the
+	 * required request, we should kick the transfer here because the
+	 * IRQ we were waiting for is long gone.
+	 */
+	if (dep->flags & DWC3_EP_PENDING_REQUEST) {
+		unsigned direction;
+
+		direction = !!(dep->flags & DWC3_EP0_DIR_IN);
+
+		if (dwc->ep0state != EP0_DATA_PHASE) {
+			dev_warn(dwc->dev, "Unexpected pending request\n");
+			return 0;
+		}
+
+		__dwc3_ep0_do_control_data(dwc, dwc->eps[direction], req);
+
+		dep->flags &= ~(DWC3_EP_PENDING_REQUEST |
+				DWC3_EP0_DIR_IN);
+
+		return 0;
+	}
+
+	/*
+	 * In case gadget driver asked us to delay the STATUS phase,
+	 * handle it here.
+	 */
+	if (dwc->delayed_status) {
+		unsigned direction;
+
+		direction = !dwc->ep0_expect_in;
+		dwc->delayed_status = false;
+		usb_gadget_set_state(&dwc->gadget, USB_STATE_CONFIGURED);
+
+		if (dwc->ep0state == EP0_STATUS_PHASE)
+			__dwc3_ep0_do_control_status(dwc, dwc->eps[direction]);
+		else
+			dev_dbg(dwc->dev, "too early for delayed status\n");
+
+		return 0;
+	}
+
+	/*
+	 * Unfortunately we have uncovered a limitation wrt the Data Phase.
+	 *
+	 * Section 9.4 says we can wait for the XferNotReady(DATA) event to
+	 * come before issueing Start Transfer command, but if we do, we will
+	 * miss situations where the host starts another SETUP phase instead of
+	 * the DATA phase.  Such cases happen at least on TD.7.6 of the Link
+	 * Layer Compliance Suite.
+	 *
+	 * The problem surfaces due to the fact that in case of back-to-back
+	 * SETUP packets there will be no XferNotReady(DATA) generated and we
+	 * will be stuck waiting for XferNotReady(DATA) forever.
+	 *
+	 * By looking at tables 9-13 and 9-14 of the Databook, we can see that
+	 * it tells us to start Data Phase right away. It also mentions that if
+	 * we receive a SETUP phase instead of the DATA phase, core will issue
+	 * XferComplete for the DATA phase, before actually initiating it in
+	 * the wire, with the TRB's status set to "SETUP_PENDING". Such status
+	 * can only be used to print some debugging logs, as the core expects
+	 * us to go through to the STATUS phase and start a CONTROL_STATUS TRB,
+	 * just so it completes right away, without transferring anything and,
+	 * only then, we can go back to the SETUP phase.
+	 *
+	 * Because of this scenario, SNPS decided to change the programming
+	 * model of control transfers and support on-demand transfers only for
+	 * the STATUS phase. To fix the issue we have now, we will always wait
+	 * for gadget driver to queue the DATA phase's struct usb_request, then
+	 * start it right away.
+	 *
+	 * If we're actually in a 2-stage transfer, we will wait for
+	 * XferNotReady(STATUS).
+	 */
+	if (dwc->three_stage_setup) {
+		unsigned direction;
+
+		direction = dwc->ep0_expect_in;
+		dwc->ep0state = EP0_DATA_PHASE;
+
+		__dwc3_ep0_do_control_data(dwc, dwc->eps[direction], req);
+
+		dep->flags &= ~DWC3_EP0_DIR_IN;
+	}
+
+	return 0;
+}
+
+int dwc3_gadget_ep0_queue(struct usb_ep *ep, struct usb_request *request)
+{
+	struct dwc3_request *req = to_dwc3_request(request);
+	struct dwc3_ep *dep = to_dwc3_ep(ep);
+	struct dwc3 *dwc = dep->dwc;
+	unsigned long flags;
+	int ret;
+
+	spin_lock_irqsave(&dwc->lock, flags);
+	if (!dep->endpoint.desc) {
+		dev_err(dwc->dev, "trying to queue request %p to disabled %s\n",
+			request, dep->name);
+		ret = -ESHUTDOWN;
+		goto out;
+	}
+
+	/* we share one TRB for ep0/1 */
+	if (!list_empty(&dep->pending_list)) {
+		ret = -EBUSY;
+		goto out;
+	}
+
+	dev_dbg(dwc->dev, "queueing request %p to %s length %d state '%s'\n",
+		request, dep->name, request->length,
+		dwc3_ep0_state_string(dwc->ep0state));
+
+	ret = __dwc3_gadget_ep0_queue(dep, req);
+
+out:
+	spin_unlock_irqrestore(&dwc->lock, flags);
+
+	return ret;
+}
+
+static void dwc3_ep0_stall_and_restart(struct dwc3 *dwc)
+{
+	struct dwc3_ep *dep;
+
+	/* reinitialize physical ep1 */
+	dep = dwc->eps[1];
+	dep->flags = DWC3_EP_ENABLED;
+
+	/* stall is always issued on EP0 */
+	dep = dwc->eps[0];
+	__dwc3_gadget_ep_set_halt(dep, 1, false);
+	dep->flags = DWC3_EP_ENABLED;
+	dwc->delayed_status = false;
+
+	if (!list_empty(&dep->pending_list)) {
+		struct dwc3_request *req;
+
+		req = next_request(&dep->pending_list);
+		dwc3_gadget_giveback(dep, req, -ECONNRESET);
+	}
+
+	dwc->ep0state = EP0_SETUP_PHASE;
+	dwc3_ep0_out_start(dwc);
+}
+
+int __dwc3_gadget_ep0_set_halt(struct usb_ep *ep, int value)
+{
+	struct dwc3_ep *dep = to_dwc3_ep(ep);
+	struct dwc3 *dwc = dep->dwc;
+
+	dwc3_ep0_stall_and_restart(dwc);
+
+	return 0;
+}
+
+int dwc3_gadget_ep0_set_halt(struct usb_ep *ep, int value)
+{
+	unsigned long flags;
+	int ret;
+
+	spin_lock_irqsave(&dwc->lock, flags);
+	ret = __dwc3_gadget_ep0_set_halt(ep, value);
+	spin_unlock_irqrestore(&dwc->lock, flags);
+
+	return ret;
+}
+
+void dwc3_ep0_out_start(struct dwc3 *dwc)
+{
+	struct dwc3_ep *dep;
+	int ret;
+
+	dep = dwc->eps[0];
+	dwc3_ep0_prepare_one_trb(dep, dwc->ep0_trb_addr, 8,
+				 DWC3_TRBCTL_CONTROL_SETUP, false);
+	ret = dwc3_ep0_start_trans(dep);
+	WARN_ON(ret < 0);
+}
+
+static struct dwc3_ep *dwc3_wIndex_to_dep(struct dwc3 *dwc, __le16 wIndex_le)
+{
+	struct dwc3_ep *dep;
+	u32 windex = le16_to_cpu(wIndex_le);
+	u32 epnum;
+
+	epnum = (windex & USB_ENDPOINT_NUMBER_MASK) << 1;
+	if ((windex & USB_ENDPOINT_DIR_MASK) == USB_DIR_IN)
+		epnum |= 1;
+
+	dep = dwc->eps[epnum];
+	if (dep->flags & DWC3_EP_ENABLED)
+		return dep;
+
+	return NULL;
+}
+
+static void dwc3_ep0_status_cmpl(struct usb_ep *ep, struct usb_request *req)
+{
+}
+/*
+ * ch 9.4.5
+ */
+static int dwc3_ep0_handle_status(struct dwc3 *dwc,
+				  struct usb_ctrlrequest *ctrl)
+{
+	struct dwc3_ep *dep;
+	u32 recip;
+	u32 value;
+	u32 reg;
+	u16 usb_status = 0;
+	__le16 *response_pkt;
+
+	/* We don't support PTM_STATUS */
+	value = le16_to_cpu(ctrl->wValue);
+	if (value != 0)
+		return -EINVAL;
+
+	recip = ctrl->bRequestType & USB_RECIP_MASK;
+	switch (recip) {
+	case USB_RECIP_DEVICE:
+		/*
+		 * LTM will be set once we know how to set this in HW.
+		 */
+		usb_status |= dwc->is_selfpowered << USB_DEVICE_SELF_POWERED;
+
+		if ((dwc->speed == DWC3_DSTS_SUPERSPEED) ||
+		    (dwc->speed == DWC3_DSTS_SUPERSPEED_PLUS)) {
+			reg = dwc3_readl(dwc->regs, DWC3_DCTL);
+			if (reg & DWC3_DCTL_INITU1ENA)
+				usb_status |= 1 << USB_DEV_STAT_U1_ENABLED;
+			if (reg & DWC3_DCTL_INITU2ENA)
+				usb_status |= 1 << USB_DEV_STAT_U2_ENABLED;
+		}
+
+		break;
+
+	case USB_RECIP_INTERFACE:
+		/*
+		 * Function Remote Wake Capable	D0
+		 * Function Remote Wakeup	D1
+		 */
+		break;
+
+	case USB_RECIP_ENDPOINT:
+		dep = dwc3_wIndex_to_dep(dwc, ctrl->wIndex);
+		if (!dep)
+			return -EINVAL;
+
+		if (dep->flags & DWC3_EP_STALL)
+			usb_status = 1 << USB_ENDPOINT_HALT;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	response_pkt = (__le16 *) dwc->setup_buf;
+	*response_pkt = cpu_to_le16(usb_status);
+
+	dep = dwc->eps[0];
+	dwc->ep0_usb_req.dep = dep;
+	dwc->ep0_usb_req.request.length = sizeof(*response_pkt);
+	dwc->ep0_usb_req.request.buf = dwc->setup_buf;
+	dwc->ep0_usb_req.request.complete = dwc3_ep0_status_cmpl;
+
+	return __dwc3_gadget_ep0_queue(dep, &dwc->ep0_usb_req);
+}
+
+static int dwc3_ep0_handle_u1(struct dwc3 *dwc, enum usb_device_state state,
+			      int set)
+{
+	u32 reg;
+
+	if (state != USB_STATE_CONFIGURED)
+		return -EINVAL;
+	if ((dwc->speed != DWC3_DSTS_SUPERSPEED) &&
+			(dwc->speed != DWC3_DSTS_SUPERSPEED_PLUS))
+		return -EINVAL;
+
+	reg = dwc3_readl(dwc->regs, DWC3_DCTL);
+	if (set)
+		reg |= DWC3_DCTL_INITU1ENA;
+	else
+		reg &= ~DWC3_DCTL_INITU1ENA;
+	dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+
+	return 0;
+}
+
+static int dwc3_ep0_handle_u2(struct dwc3 *dwc, enum usb_device_state state,
+			      int set)
+{
+	u32 reg;
+
+	if (state != USB_STATE_CONFIGURED)
+		return -EINVAL;
+	if ((dwc->speed != DWC3_DSTS_SUPERSPEED) &&
+			(dwc->speed != DWC3_DSTS_SUPERSPEED_PLUS))
+		return -EINVAL;
+
+	reg = dwc3_readl(dwc->regs, DWC3_DCTL);
+	if (set)
+		reg |= DWC3_DCTL_INITU2ENA;
+	else
+		reg &= ~DWC3_DCTL_INITU2ENA;
+	dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+
+	return 0;
+}
+
+static int dwc3_ep0_handle_test(struct dwc3 *dwc, enum usb_device_state state,
+				u32 wIndex, int set)
+{
+	if ((wIndex & 0xff) != 0)
+		return -EINVAL;
+	if (!set)
+		return -EINVAL;
+
+	switch (wIndex >> 8) {
+	case TEST_J:
+	case TEST_K:
+	case TEST_SE0_NAK:
+	case TEST_PACKET:
+	case TEST_FORCE_EN:
+		dwc->test_mode_nr = wIndex >> 8;
+		dwc->test_mode = true;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int dwc3_ep0_handle_device(struct dwc3 *dwc,
+				  struct usb_ctrlrequest *ctrl, int set)
+{
+	enum usb_device_state state;
+	u32 wValue;
+	u32 wIndex;
+	int ret = 0;
+
+	wValue = le16_to_cpu(ctrl->wValue);
+	wIndex = le16_to_cpu(ctrl->wIndex);
+	state = dwc->gadget.state;
+
+	switch (wValue) {
+	case USB_DEVICE_REMOTE_WAKEUP:
+		break;
+	/*
+	 * 9.4.1 says only only for SS, in AddressState only for
+	 * default control pipe
+	 */
+	case USB_DEVICE_U1_ENABLE:
+		ret = dwc3_ep0_handle_u1(dwc, state, set);
+		break;
+	case USB_DEVICE_U2_ENABLE:
+		ret = dwc3_ep0_handle_u2(dwc, state, set);
+		break;
+	case USB_DEVICE_LTM_ENABLE:
+		ret = -EINVAL;
+		break;
+	case USB_DEVICE_TEST_MODE:
+		ret = dwc3_ep0_handle_test(dwc, state, wIndex, set);
+		break;
+	default:
+		ret = -EINVAL;
+	}
+
+	return ret;
+}
+
+static int dwc3_ep0_handle_intf(struct dwc3 *dwc,
+				struct usb_ctrlrequest *ctrl, int set)
+{
+	u32 wValue;
+	int ret = 0;
+
+	wValue = le16_to_cpu(ctrl->wValue);
+
+	switch (wValue) {
+	case USB_INTRF_FUNC_SUSPEND:
+		/*
+		 * REVISIT: Ideally we would enable some low power mode here,
+		 * however it's unclear what we should be doing here.
+		 *
+		 * For now, we're not doing anything, just making sure we return
+		 * 0 so USB Command Verifier tests pass without any errors.
+		 */
+		break;
+	default:
+		ret = -EINVAL;
+	}
+
+	return ret;
+}
+
+static int dwc3_ep0_handle_endpoint(struct dwc3 *dwc,
+				    struct usb_ctrlrequest *ctrl, int set)
+{
+	struct dwc3_ep *dep;
+	u32 wValue;
+	int ret;
+
+	wValue = le16_to_cpu(ctrl->wValue);
+
+	switch (wValue) {
+	case USB_ENDPOINT_HALT:
+		dep = dwc3_wIndex_to_dep(dwc, ctrl->wIndex);
+		if (!dep)
+			return -EINVAL;
+
+		if (set == 0 && (dep->flags & DWC3_EP_WEDGE))
+			break;
+
+		ret = __dwc3_gadget_ep_set_halt(dep, set, true);
+		if (ret)
+			return -EINVAL;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+
+static int dwc3_ep0_handle_feature(struct dwc3 *dwc,
+				   struct usb_ctrlrequest *ctrl, int set)
+{
+	u32 recip;
+	int ret;
+
+	recip = ctrl->bRequestType & USB_RECIP_MASK;
+
+	switch (recip) {
+	case USB_RECIP_DEVICE:
+		ret = dwc3_ep0_handle_device(dwc, ctrl, set);
+		break;
+	case USB_RECIP_INTERFACE:
+		ret = dwc3_ep0_handle_intf(dwc, ctrl, set);
+		break;
+	case USB_RECIP_ENDPOINT:
+		ret = dwc3_ep0_handle_endpoint(dwc, ctrl, set);
+		break;
+	default:
+		ret = -EINVAL;
+	}
+
+	return ret;
+}
+
+static int dwc3_ep0_set_address(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
+{
+	enum usb_device_state state = dwc->gadget.state;
+	u32 addr;
+	u32 reg;
+
+	addr = le16_to_cpu(ctrl->wValue);
+	if (addr > 127) {
+		dev_err(dwc->dev, "invalid device address %d\n", addr);
+		return -EINVAL;
+	}
+
+	if (state == USB_STATE_CONFIGURED) {
+		dev_err(dwc->dev, "trying to set address when configured\n");
+		return -EINVAL;
+	}
+
+	reg = dwc3_readl(dwc->regs, DWC3_DCFG);
+	reg &= ~(DWC3_DCFG_DEVADDR_MASK);
+	reg |= DWC3_DCFG_DEVADDR(addr);
+	dwc3_writel(dwc->regs, DWC3_DCFG, reg);
+
+	if (addr)
+		usb_gadget_set_state(&dwc->gadget, USB_STATE_ADDRESS);
+	else
+		usb_gadget_set_state(&dwc->gadget, USB_STATE_DEFAULT);
+
+	return 0;
+}
+
+static int dwc3_ep0_delegate_req(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
+{
+	int ret;
+
+	spin_unlock(&dwc->lock);
+	ret = dwc->gadget_driver->setup(&dwc->gadget, ctrl);
+	spin_lock(&dwc->lock);
+	return ret;
+}
+
+#define USB_GADGET_DELAYED_STATUS	0x7fff	/* Impossibly large value */
+static int dwc3_ep0_set_config(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
+{
+	enum usb_device_state state = dwc->gadget.state;
+	u32 cfg;
+	int ret;
+	u32 reg;
+
+	cfg = le16_to_cpu(ctrl->wValue);
+
+	switch (state) {
+	case USB_STATE_DEFAULT:
+		return -EINVAL;
+
+	case USB_STATE_ADDRESS:
+		ret = dwc3_ep0_delegate_req(dwc, ctrl);
+		/* if the cfg matches and the cfg is non zero */
+		if (cfg && (!ret || (ret == USB_GADGET_DELAYED_STATUS))) {
+
+			/*
+			 * only change state if set_config has already
+			 * been processed. If gadget driver returns
+			 * USB_GADGET_DELAYED_STATUS, we will wait
+			 * to change the state on the next usb_ep_queue()
+			 */
+			if (ret == 0)
+				usb_gadget_set_state(&dwc->gadget,
+						USB_STATE_CONFIGURED);
+
+			/*
+			 * Enable transition to U1/U2 state when
+			 * nothing is pending from application.
+			 */
+			reg = dwc3_readl(dwc->regs, DWC3_DCTL);
+			reg |= (DWC3_DCTL_ACCEPTU1ENA | DWC3_DCTL_ACCEPTU2ENA);
+			dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+		}
+		break;
+
+	case USB_STATE_CONFIGURED:
+		ret = dwc3_ep0_delegate_req(dwc, ctrl);
+		if (!cfg && !ret)
+			usb_gadget_set_state(&dwc->gadget,
+					USB_STATE_ADDRESS);
+		break;
+	default:
+		ret = -EINVAL;
+	}
+	return ret;
+}
+
+static void dwc3_ep0_set_sel_cmpl(struct usb_ep *ep, struct usb_request *req)
+{
+	struct dwc3_ep *dep = to_dwc3_ep(ep);
+	struct dwc3 *dwc = dep->dwc;
+
+	u32 param = 0;
+	u32 reg;
+
+	struct timing {
+		u8	u1sel;
+		u8	u1pel;
+		__le16	u2sel;
+		__le16	u2pel;
+	} __packed timing;
+
+	int		ret;
+
+	memcpy(&timing, req->buf, sizeof(timing));
+
+	dwc->u1sel = timing.u1sel;
+	dwc->u1pel = timing.u1pel;
+	dwc->u2sel = le16_to_cpu(timing.u2sel);
+	dwc->u2pel = le16_to_cpu(timing.u2pel);
+
+	reg = dwc3_readl(dwc->regs, DWC3_DCTL);
+	if (reg & DWC3_DCTL_INITU2ENA)
+		param = dwc->u2pel;
+	if (reg & DWC3_DCTL_INITU1ENA)
+		param = dwc->u1pel;
+
+	/*
+	 * According to Synopsys Databook, if parameter is
+	 * greater than 125, a value of zero should be
+	 * programmed in the register.
+	 */
+	if (param > 125)
+		param = 0;
+
+	/* now that we have the time, issue DGCMD Set Sel */
+	ret = dwc3_send_gadget_generic_command(dwc,
+			DWC3_DGCMD_SET_PERIODIC_PAR, param);
+	WARN_ON(ret < 0);
+}
+
+static int dwc3_ep0_set_sel(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
+{
+	struct dwc3_ep *dep;
+	enum usb_device_state state = dwc->gadget.state;
+	u16 wLength;
+
+	if (state == USB_STATE_DEFAULT)
+		return -EINVAL;
+
+	wLength = le16_to_cpu(ctrl->wLength);
+
+	if (wLength != 6) {
+		dev_err(dwc->dev, "Set SEL should be 6 bytes, got %d\n",
+				wLength);
+		return -EINVAL;
+	}
+
+	/*
+	 * To handle Set SEL we need to receive 6 bytes from Host. So let's
+	 * queue a usb_request for 6 bytes.
+	 *
+	 * Remember, though, this controller can't handle non-wMaxPacketSize
+	 * aligned transfers on the OUT direction, so we queue a request for
+	 * wMaxPacketSize instead.
+	 */
+	dep = dwc->eps[0];
+	dwc->ep0_usb_req.dep = dep;
+	dwc->ep0_usb_req.request.length = dep->endpoint.maxpacket;
+	dwc->ep0_usb_req.request.buf = dwc->setup_buf;
+	dwc->ep0_usb_req.request.complete = dwc3_ep0_set_sel_cmpl;
+
+	return __dwc3_gadget_ep0_queue(dep, &dwc->ep0_usb_req);
+}
+
+static int dwc3_ep0_set_isoch_delay(struct dwc3 *dwc,
+				    struct usb_ctrlrequest *ctrl)
+{
+	u16 wLength;
+	u16 wValue;
+	u16 wIndex;
+
+	wValue = le16_to_cpu(ctrl->wValue);
+	wLength = le16_to_cpu(ctrl->wLength);
+	wIndex = le16_to_cpu(ctrl->wIndex);
+
+	if (wIndex || wLength)
+		return -EINVAL;
+
+	/*
+	 * REVISIT It's unclear from Databook what to do with this
+	 * value. For now, just cache it.
+	 */
+	dwc->isoch_delay = wValue;
+
+	return 0;
+}
+
+static int dwc3_ep0_std_request(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
+{
+	int ret;
+
+	switch (ctrl->bRequest) {
+	case USB_REQ_GET_STATUS:
+		dev_dbg(dwc->dev, "USB_REQ_GET_STATUS\n");
+		ret = dwc3_ep0_handle_status(dwc, ctrl);
+		break;
+	case USB_REQ_CLEAR_FEATURE:
+		dev_dbg(dwc->dev, "USB_REQ_CLEAR_FEATURE\n");
+		ret = dwc3_ep0_handle_feature(dwc, ctrl, 0);
+		break;
+	case USB_REQ_SET_FEATURE:
+		dev_dbg(dwc->dev, "USB_REQ_SET_FEATURE\n");
+		ret = dwc3_ep0_handle_feature(dwc, ctrl, 1);
+		break;
+	case USB_REQ_SET_ADDRESS:
+		dev_dbg(dwc->dev, "USB_REQ_SET_ADDRESS\n");
+		ret = dwc3_ep0_set_address(dwc, ctrl);
+		break;
+	case USB_REQ_SET_CONFIGURATION:
+		dev_dbg(dwc->dev, "USB_REQ_SET_CONFIGURATION\n");
+		ret = dwc3_ep0_set_config(dwc, ctrl);
+		break;
+	case USB_REQ_SET_SEL:
+		dev_dbg(dwc->dev, "USB_REQ_SET_SEL\n");
+		ret = dwc3_ep0_set_sel(dwc, ctrl);
+		break;
+	case USB_REQ_SET_ISOCH_DELAY:
+		dev_dbg(dwc->dev, "USB_REQ_SET_ISOCH_DELAY\n");
+		ret = dwc3_ep0_set_isoch_delay(dwc, ctrl);
+		break;
+	default:
+		dev_dbg(dwc->dev, "Forwarding to gadget driver\n");
+		ret = dwc3_ep0_delegate_req(dwc, ctrl);
+		break;
+	}
+
+	return ret;
+}
+
+static void dwc3_ep0_inspect_setup(struct dwc3 *dwc,
+				   const struct dwc3_event_depevt *event)
+{
+	struct usb_ctrlrequest *ctrl = (void *) dwc->ep0_trb;
+	int ret = -EINVAL;
+	u32 len;
+
+	if (!dwc->gadget_driver)
+		goto out;
+
+	len = le16_to_cpu(ctrl->wLength);
+	if (!len) {
+		dwc->three_stage_setup = false;
+		dwc->ep0_expect_in = false;
+		dwc->ep0_next_event = DWC3_EP0_NRDY_STATUS;
+	} else {
+		dwc->three_stage_setup = true;
+		dwc->ep0_expect_in = !!(ctrl->bRequestType & USB_DIR_IN);
+		dwc->ep0_next_event = DWC3_EP0_NRDY_DATA;
+	}
+
+	if ((ctrl->bRequestType & USB_TYPE_MASK) == USB_TYPE_STANDARD)
+		ret = dwc3_ep0_std_request(dwc, ctrl);
+	else
+		ret = dwc3_ep0_delegate_req(dwc, ctrl);
+
+	if (ret == USB_GADGET_DELAYED_STATUS)
+		dwc->delayed_status = true;
+
+out:
+	if (ret < 0)
+		dwc3_ep0_stall_and_restart(dwc);
+}
+
+static void dwc3_ep0_complete_data(struct dwc3 *dwc,
+				   const struct dwc3_event_depevt *event)
+{
+	struct dwc3_request *r = NULL;
+	struct usb_request *ur;
+	struct dwc3_trb *trb;
+	struct dwc3_ep *ep0;
+	u32 transferred = 0;
+	u32 status;
+	u32 length;
+	u8 epnum;
+
+	epnum = event->endpoint_number;
+	ep0 = dwc->eps[0];
+
+	dwc->ep0_next_event = DWC3_EP0_NRDY_STATUS;
+	trb = dwc->ep0_trb;
+
+	r = next_request(&ep0->pending_list);
+	if (!r)
+		return;
+
+	status = DWC3_TRB_SIZE_TRBSTS(trb->size);
+	if (status == DWC3_TRBSTS_SETUP_PENDING) {
+		dev_dbg(dwc->dev, "Setup Pending received\n");
+		dwc->setup_packet_pending = true;
+
+		if (r)
+			dwc3_gadget_giveback(ep0, r, -ECONNRESET);
+
+		return;
+	}
+
+	ur = &r->request;
+
+	length = trb->size & DWC3_TRB_SIZE_MASK;
+	transferred = ur->length - length;
+	ur->actual += transferred;
+
+	if ((IS_ALIGNED(ur->length, ep0->endpoint.maxpacket) &&
+	    ur->length && ur->zero) || dwc->ep0_bounced) {
+		trb++;
+		trb->ctrl &= ~DWC3_TRB_CTRL_HWO;
+
+		if (r->direction)
+			dwc->eps[1]->trb_enqueue = 0;
+		else
+			dwc->eps[0]->trb_enqueue = 0;
+
+		dwc->ep0_bounced = false;
+	}
+
+	if ((epnum & 1) && ur->actual < ur->length)
+		dwc3_ep0_stall_and_restart(dwc);
+	else
+		dwc3_gadget_giveback(ep0, r, 0);
+}
+
+static void dwc3_ep0_complete_status(struct dwc3 *dwc,
+				     const struct dwc3_event_depevt *event)
+{
+	struct dwc3_request *r;
+	struct dwc3_ep *dep;
+	struct dwc3_trb *trb;
+	u32 status;
+
+	dep = dwc->eps[0];
+	trb = dwc->ep0_trb;
+
+	if (!list_empty(&dep->pending_list)) {
+		r = next_request(&dep->pending_list);
+
+		dwc3_gadget_giveback(dep, r, 0);
+	}
+
+	if (dwc->test_mode) {
+		int ret;
+
+		ret = dwc3_gadget_set_test_mode(dwc, dwc->test_mode_nr);
+		if (ret < 0) {
+			dev_dbg(dwc->dev, "Invalid Test #%d\n",
+				dwc->test_mode_nr);
+			dwc3_ep0_stall_and_restart(dwc);
+			return;
+		}
+	}
+
+	status = DWC3_TRB_SIZE_TRBSTS(trb->size);
+	if (status == DWC3_TRBSTS_SETUP_PENDING) {
+		dev_dbg(dwc->dev, "Setup Pending received\n");
+		dwc->setup_packet_pending = true;
+	}
+
+	dwc->ep0state = EP0_SETUP_PHASE;
+	dwc3_ep0_out_start(dwc);
+}
+
+static void dwc3_ep0_xfer_complete(struct dwc3 *dwc,
+				   const struct dwc3_event_depevt *event)
+{
+	struct dwc3_ep *dep = dwc->eps[event->endpoint_number];
+
+	dep->flags &= ~DWC3_EP_TRANSFER_STARTED;
+	dep->resource_index = 0;
+	dwc->setup_packet_pending = false;
+
+	switch (dwc->ep0state) {
+	case EP0_SETUP_PHASE:
+		dev_dbg(dwc->dev, "Setup Phase\n");
+		dwc3_ep0_inspect_setup(dwc, event);
+		break;
+
+	case EP0_DATA_PHASE:
+		dev_dbg(dwc->dev, "Data Phase\n");
+		dwc3_ep0_complete_data(dwc, event);
+		break;
+
+	case EP0_STATUS_PHASE:
+		dev_dbg(dwc->dev, "Status Phase\n");
+		dwc3_ep0_complete_status(dwc, event);
+		break;
+	default:
+		WARN(true, "UNKNOWN ep0state %d\n", dwc->ep0state);
+	}
+}
+
+static void __dwc3_ep0_do_control_data(struct dwc3 *dwc,
+				       struct dwc3_ep *dep,
+				       struct dwc3_request *req)
+{
+	dma_addr_t dma_addr;
+	int ret;
+
+	req->direction = !!dep->number;
+
+	if (req->request.length == 0) {
+		dwc3_ep0_prepare_one_trb(dep, dwc->ep0_trb_addr, 0,
+					 DWC3_TRBCTL_CONTROL_DATA, false);
+		ret = dwc3_ep0_start_trans(dep);
+	} else if (!IS_ALIGNED(req->request.length, dep->endpoint.maxpacket) &&
+		   (dep->number == 0)) {
+		u32 maxpacket;
+		u32 rem;
+
+		dma_addr = dma_map_single(dwc->dev, req->request.buf,
+					  req->request.length,
+					  dep->number ?
+					  DMA_TO_DEVICE : DMA_FROM_DEVICE);
+		if (dma_mapping_error(dwc->dev, dma_addr))
+			return;
+
+		req->request.dma = dma_addr;
+
+		maxpacket = dep->endpoint.maxpacket;
+		rem = req->request.length % maxpacket;
+		dwc->ep0_bounced = true;
+
+		/* prepare normal TRB */
+		dwc3_ep0_prepare_one_trb(dep, req->request.dma,
+					 req->request.length,
+					 DWC3_TRBCTL_CONTROL_DATA,
+					 true);
+
+		req->trb = &dwc->ep0_trb[dep->trb_enqueue - 1];
+
+		/* Now prepare one extra TRB to align transfer size */
+		dwc3_ep0_prepare_one_trb(dep, dwc->bounce_addr,
+					 maxpacket - rem,
+					 DWC3_TRBCTL_CONTROL_DATA,
+					 false);
+		ret = dwc3_ep0_start_trans(dep);
+	} else if (IS_ALIGNED(req->request.length, dep->endpoint.maxpacket) &&
+		   req->request.length && req->request.zero) {
+		dma_addr = dma_map_single(dwc->dev, req->request.buf,
+					  req->request.length,
+					  dep->number ?
+					  DMA_TO_DEVICE : DMA_FROM_DEVICE);
+		if (dma_mapping_error(dwc->dev, dma_addr))
+			return;
+
+		req->request.dma = dma_addr;
+
+		/* prepare normal TRB */
+		dwc3_ep0_prepare_one_trb(dep, req->request.dma,
+					 req->request.length,
+					 DWC3_TRBCTL_CONTROL_DATA,
+					 true);
+
+		req->trb = &dwc->ep0_trb[dep->trb_enqueue - 1];
+
+		/* Now prepare one extra TRB to align transfer size */
+		dwc3_ep0_prepare_one_trb(dep, dwc->bounce_addr,
+					 0, DWC3_TRBCTL_CONTROL_DATA,
+					 false);
+		ret = dwc3_ep0_start_trans(dep);
+	} else {
+		dma_addr = dma_map_single(dwc->dev, req->request.buf,
+					  req->request.length,
+					  dep->number ?
+					  DMA_TO_DEVICE : DMA_FROM_DEVICE);
+		if (dma_mapping_error(dwc->dev, dma_addr))
+			return;
+
+		req->request.dma = dma_addr;
+
+		dwc3_ep0_prepare_one_trb(dep, req->request.dma,
+				req->request.length, DWC3_TRBCTL_CONTROL_DATA,
+				false);
+
+		req->trb = &dwc->ep0_trb[dep->trb_enqueue];
+
+		ret = dwc3_ep0_start_trans(dep);
+	}
+
+	WARN_ON(ret < 0);
+}
+
+static int dwc3_ep0_start_control_status(struct dwc3_ep *dep)
+{
+	struct dwc3 *dwc = dep->dwc;
+	u32 type;
+
+	type = dwc->three_stage_setup ? DWC3_TRBCTL_CONTROL_STATUS3
+		: DWC3_TRBCTL_CONTROL_STATUS2;
+
+	dwc3_ep0_prepare_one_trb(dep, dwc->ep0_trb_addr, 0, type, false);
+	return dwc3_ep0_start_trans(dep);
+}
+
+static void __dwc3_ep0_do_control_status(struct dwc3 *dwc, struct dwc3_ep *dep)
+{
+	WARN_ON(dwc3_ep0_start_control_status(dep));
+}
+
+static void dwc3_ep0_do_control_status(struct dwc3 *dwc,
+				       const struct dwc3_event_depevt *event)
+{
+	struct dwc3_ep *dep = dwc->eps[event->endpoint_number];
+
+	__dwc3_ep0_do_control_status(dwc, dep);
+}
+
+static void dwc3_ep0_end_control_data(struct dwc3 *dwc, struct dwc3_ep *dep)
+{
+	struct dwc3_gadget_ep_cmd_params params;
+	u32 cmd;
+	int ret;
+
+	if (!dep->resource_index)
+		return;
+
+	cmd = DWC3_DEPCMD_ENDTRANSFER;
+	cmd |= DWC3_DEPCMD_CMDIOC;
+	cmd |= DWC3_DEPCMD_PARAM(dep->resource_index);
+	memset(&params, 0, sizeof(params));
+	ret = dwc3_send_gadget_ep_cmd(dep, cmd, &params);
+	WARN_ON(ret);
+	dep->resource_index = 0;
+}
+
+static void dwc3_ep0_xfernotready(struct dwc3 *dwc,
+				  const struct dwc3_event_depevt *event)
+{
+	switch (event->status) {
+	case DEPEVT_STATUS_CONTROL_DATA:
+		dev_dbg(dwc->dev, "Control Data\n");
+
+		/*
+		 * We already have a DATA transfer in the controller's cache,
+		 * if we receive a XferNotReady(DATA) we will ignore it, unless
+		 * it's for the wrong direction.
+		 *
+		 * In that case, we must issue END_TRANSFER command to the Data
+		 * Phase we already have started and issue SetStall on the
+		 * control endpoint.
+		 */
+		if (dwc->ep0_expect_in != event->endpoint_number) {
+			struct dwc3_ep *dep = dwc->eps[dwc->ep0_expect_in];
+
+			dev_dbg(dwc->dev, "Wrong direction for Data phase\n");
+			dwc3_ep0_end_control_data(dwc, dep);
+			dwc3_ep0_stall_and_restart(dwc);
+			return;
+		}
+
+		break;
+
+	case DEPEVT_STATUS_CONTROL_STATUS:
+		if (dwc->ep0_next_event != DWC3_EP0_NRDY_STATUS)
+			return;
+
+		dev_dbg(dwc->dev, "Control Status\n");
+
+		dwc->ep0state = EP0_STATUS_PHASE;
+
+		if (dwc->delayed_status) {
+			struct dwc3_ep *dep = dwc->eps[0];
+
+			WARN_ON(event->endpoint_number != 1);
+			dev_dbg(dwc->dev, "Delayed Status\n");
+			/*
+			 * We should handle the delay STATUS phase here if the
+			 * request for handling delay STATUS has been queued
+			 * into the list.
+			 */
+			if (!list_empty(&dep->pending_list)) {
+				dwc->delayed_status = false;
+				usb_gadget_set_state(&dwc->gadget,
+						     USB_STATE_CONFIGURED);
+				dwc3_ep0_do_control_status(dwc, event);
+			}
+
+			return;
+		}
+
+		dwc3_ep0_do_control_status(dwc, event);
+	}
+}
+
+void dwc3_ep0_interrupt(struct dwc3 *dwc,
+			const struct dwc3_event_depevt *event)
+{
+	u8 epnum = event->endpoint_number;
+
+	dev_dbg(dwc->dev, "%s while ep%d%s in state '%s'\n",
+			dwc3_ep_event_string(event->endpoint_event),
+			epnum >> 1, (epnum & 1) ? "in" : "out",
+			dwc3_ep0_state_string(dwc->ep0state));
+
+	switch (event->endpoint_event) {
+	case DWC3_DEPEVT_XFERCOMPLETE:
+		dwc3_ep0_xfer_complete(dwc, event);
+		break;
+
+	case DWC3_DEPEVT_XFERNOTREADY:
+		dwc3_ep0_xfernotready(dwc, event);
+		break;
+
+	case DWC3_DEPEVT_XFERINPROGRESS:
+	case DWC3_DEPEVT_RXTXFIFOEVT:
+	case DWC3_DEPEVT_STREAMEVT:
+	case DWC3_DEPEVT_EPCMDCMPLT:
+		break;
+	}
+}
diff --git a/drivers/usb/dwc3/gadget.c b/drivers/usb/dwc3/gadget.c
new file mode 100644
index 000000000000..f416acc999ed
--- /dev/null
+++ b/drivers/usb/dwc3/gadget.c
@@ -0,0 +1,3015 @@
+// SPDX-License-Identifier: GPL-2.0
+/**
+ * gadget.c - DesignWare USB3 DRD Controller Gadget Framework Link
+ *
+ * Copyright (C) 2015 Texas Instruments Incorporated - http://www.ti.com
+ *
+ * Authors: Felipe Balbi <balbi@ti.com>,
+ *	    Sebastian Andrzej Siewior <bigeasy@linutronix.de>
+ *
+ * Taken from Linux Kernel v3.19-rc1 (drivers/usb/dwc3/gadget.c) and ported
+ * to uboot.
+ *
+ * commit 8e74475b0e : usb: dwc3: gadget: use udc-core's reset notifier
+ */
+#include <common.h>
+#include <dma.h>
+#include <io.h>
+#include <linux/list.h>
+
+#include <usb/gadget.h>
+#include <usb/ch9.h>
+
+#include "core.h"
+#include "gadget.h"
+
+#define DWC3_ALIGN_FRAME(d, n)	(((d)->frame_number + ((d)->interval * (n))) \
+					& ~((d)->interval - 1))
+
+
+/**
+ * dwc3_gadget_set_test_mode - Enables USB2 Test Modes
+ * @dwc: pointer to our context structure
+ * @mode: the mode to set (J, K SE0 NAK, Force Enable)
+ *
+ * Caller should take care of locking. This function will
+ * return 0 on success or -EINVAL if wrong Test Selector
+ * is passed
+ */
+int dwc3_gadget_set_test_mode(struct dwc3 *dwc, int mode)
+{
+	u32		reg;
+
+	reg = dwc3_readl(dwc->regs, DWC3_DCTL);
+	reg &= ~DWC3_DCTL_TSTCTRL_MASK;
+
+	switch (mode) {
+	case TEST_J:
+	case TEST_K:
+	case TEST_SE0_NAK:
+	case TEST_PACKET:
+	case TEST_FORCE_EN:
+		reg |= mode << 1;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+
+	return 0;
+}
+
+/**
+ * dwc3_gadget_get_link_state - Gets current state of USB Link
+ * @dwc: pointer to our context structure
+ *
+ * Caller should take care of locking. This function will
+ * return the link state on success (>= 0) or -ETIMEDOUT.
+ */
+int dwc3_gadget_get_link_state(struct dwc3 *dwc)
+{
+	u32 reg;
+
+	reg = dwc3_readl(dwc->regs, DWC3_DSTS);
+
+	return DWC3_DSTS_USBLNKST(reg);
+}
+
+/**
+ * dwc3_gadget_set_link_state - Sets USB Link to a particular State
+ * @dwc: pointer to our context structure
+ * @state: the state to put link into
+ *
+ * Caller should take care of locking. This function will
+ * return 0 on success or -ETIMEDOUT.
+ */
+int dwc3_gadget_set_link_state(struct dwc3 *dwc, enum dwc3_link_state state)
+{
+	int retries = 10000;
+	u32 reg;
+
+	/*
+	 * Wait until device controller is ready. Only applies to 1.94a and
+	 * later RTL.
+	 */
+	if (dwc->revision >= DWC3_REVISION_194A) {
+		while (--retries) {
+			reg = dwc3_readl(dwc->regs, DWC3_DSTS);
+			if (reg & DWC3_DSTS_DCNRD)
+				udelay(5);
+			else
+				break;
+		}
+
+		if (retries <= 0)
+			return -ETIMEDOUT;
+	}
+
+	reg = dwc3_readl(dwc->regs, DWC3_DCTL);
+	reg &= ~DWC3_DCTL_ULSTCHNGREQ_MASK;
+
+	/* set requested state */
+	reg |= DWC3_DCTL_ULSTCHNGREQ(state);
+	dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+
+	/*
+	 * The following code is racy when called from dwc3_gadget_wakeup,
+	 * and is not needed, at least on newer versions
+	 */
+	if (dwc->revision >= DWC3_REVISION_194A)
+		return 0;
+
+	/* wait for a change in DSTS */
+	retries = 10000;
+	while (--retries) {
+		reg = dwc3_readl(dwc->regs, DWC3_DSTS);
+
+		if (DWC3_DSTS_USBLNKST(reg) == state)
+			return 0;
+
+		udelay(5);
+	}
+
+	dev_dbg(dwc->dev, "link state change request timed out\n");
+
+	return -ETIMEDOUT;
+}
+
+/**
+ * dwc3_ep_inc_trb - increment a trb index.
+ * @index: Pointer to the TRB index to increment.
+ *
+ * The index should never point to the link TRB. After incrementing,
+ * if it is point to the link TRB, wrap around to the beginning. The
+ * link TRB is always at the last TRB entry.
+ */
+static void dwc3_ep_inc_trb(u8 *index)
+{
+	(*index)++;
+	if (*index == (DWC3_TRB_NUM - 1))
+		*index = 0;
+}
+
+/**
+ * dwc3_ep_inc_enq - increment endpoint's enqueue pointer
+ * @dep: The endpoint whose enqueue pointer we're incrementing
+ */
+static void dwc3_ep_inc_enq(struct dwc3_ep *dep)
+{
+	dwc3_ep_inc_trb(&dep->trb_enqueue);
+}
+
+/**
+ * dwc3_ep_inc_deq - increment endpoint's dequeue pointer
+ * @dep: The endpoint whose enqueue pointer we're incrementing
+ */
+static void dwc3_ep_inc_deq(struct dwc3_ep *dep)
+{
+	dwc3_ep_inc_trb(&dep->trb_dequeue);
+}
+
+static void dwc3_gadget_del_and_unmap_request(struct dwc3_ep *dep,
+					      struct dwc3_request *req,
+					      int status)
+{
+	struct dwc3 *dwc = dep->dwc;
+
+	list_del(&req->list);
+	req->remaining = 0;
+	req->needs_extra_trb = false;
+
+	if (req->request.status == -EINPROGRESS)
+		req->request.status = status;
+
+	if (req->request.length == 0)
+		return;
+
+	if (req->trb)
+		dma_unmap_single(dwc->dev, req->request.dma,
+				 req->request.length,
+			 req->direction ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
+
+	req->trb = NULL;
+}
+
+/**
+ * dwc3_gadget_giveback - call struct usb_request's ->complete callback
+ * @dep: The endpoint to whom the request belongs to
+ * @req: The request we're giving back
+ * @status: completion code for the request
+ *
+ * Must be called with controller's lock held and interrupts disabled. This
+ * function will unmap @req and call its ->complete() callback to notify upper
+ * layers that it has completed.
+ */
+void dwc3_gadget_giveback(struct dwc3_ep *dep, struct dwc3_request *req,
+			  int status)
+{
+	struct dwc3 *dwc = dep->dwc;
+
+	dwc3_gadget_del_and_unmap_request(dep, req, status);
+	dev_dbg(dwc->dev, "request %p from %s completed %d/%d ===> %d\n",
+		req, dep->name, req->request.actual,
+		req->request.length, status);
+	req->status = DWC3_REQUEST_STATUS_COMPLETED;
+
+	spin_unlock(&dwc->lock);
+	req->request.complete(&dep->endpoint, &req->request);
+	spin_lock(&dwc->lock);
+}
+
+/**
+ * dwc3_send_gadget_generic_command - issue a generic command for the controller
+ * @dwc: pointer to the controller context
+ * @cmd: the command to be issued
+ * @param: command parameter
+ *
+ * Caller should take care of locking. Issue @cmd with a given @param to @dwc
+ * and wait for its completion.
+ */
+int dwc3_send_gadget_generic_command(struct dwc3 *dwc, unsigned cmd, u32 param)
+{
+	u32 timeout = 500;
+	int status = 0;
+	int ret = 0;
+	u32 reg;
+
+	dwc3_writel(dwc->regs, DWC3_DGCMDPAR, param);
+	dwc3_writel(dwc->regs, DWC3_DGCMD, cmd | DWC3_DGCMD_CMDACT);
+
+	do {
+		reg = dwc3_readl(dwc->regs, DWC3_DGCMD);
+		if (!(reg & DWC3_DGCMD_CMDACT)) {
+			dev_dbg(dwc->dev, "%s: Command Complete --> %d\n",
+				__func__,
+				DWC3_DGCMD_STATUS(reg));
+			status = DWC3_DGCMD_STATUS(reg);
+			if (status)
+				ret = -EINVAL;
+			break;
+		}
+
+		udelay(1);
+	} while (--timeout);
+
+	if (!timeout) {
+		ret = -ETIMEDOUT;
+		status = -ETIMEDOUT;
+	}
+
+	return ret;
+}
+
+static int __dwc3_gadget_wakeup(struct dwc3 *dwc);
+/**
+ * dwc3_send_gadget_ep_cmd - issue an endpoint command
+ * @dep: the endpoint to which the command is going to be issued
+ * @cmd: the command to be issued
+ * @params: parameters to the command
+ *
+ * Caller should handle locking. This function will issue @cmd with given
+ * @params to @dep and wait for its completion.
+ */
+int dwc3_send_gadget_ep_cmd(struct dwc3_ep *dep, unsigned cmd,
+			    struct dwc3_gadget_ep_cmd_params *params)
+{
+	const struct usb_endpoint_descriptor *desc = dep->endpoint.desc;
+	struct dwc3 *dwc = dep->dwc;
+	u32 timeout = 1000;
+	u32 saved_config = 0;
+	u32 reg;
+
+	int cmd_status = 0;
+	int ret = -EINVAL;
+
+	/*
+	 * When operating in USB 2.0 speeds (HS/FS), if GUSB2PHYCFG.ENBLSLPM or
+	 * GUSB2PHYCFG.SUSPHY is set, it must be cleared before issuing an
+	 * endpoint command.
+	 *
+	 * Save and clear both GUSB2PHYCFG.ENBLSLPM and GUSB2PHYCFG.SUSPHY
+	 * settings. Restore them after the command is completed.
+	 *
+	 * DWC_usb3 3.30a and DWC_usb31 1.90a programming guide section 3.2.2
+	 */
+	if (dwc->gadget.speed <= USB_SPEED_HIGH) {
+		reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
+		if (unlikely(reg & DWC3_GUSB2PHYCFG_SUSPHY)) {
+			saved_config |= DWC3_GUSB2PHYCFG_SUSPHY;
+			reg &= ~DWC3_GUSB2PHYCFG_SUSPHY;
+		}
+
+		if (reg & DWC3_GUSB2PHYCFG_ENBLSLPM) {
+			saved_config |= DWC3_GUSB2PHYCFG_ENBLSLPM;
+			reg &= ~DWC3_GUSB2PHYCFG_ENBLSLPM;
+		}
+
+		if (saved_config)
+			dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
+	}
+
+	if (DWC3_DEPCMD_CMD(cmd) == DWC3_DEPCMD_STARTTRANSFER) {
+		int		needs_wakeup;
+
+		needs_wakeup = (dwc->link_state == DWC3_LINK_STATE_U1 ||
+				dwc->link_state == DWC3_LINK_STATE_U2 ||
+				dwc->link_state == DWC3_LINK_STATE_U3);
+
+		if (unlikely(needs_wakeup)) {
+			ret = __dwc3_gadget_wakeup(dwc);
+			dev_warn(dwc->dev, "wakeup failed --> %d\n", ret);
+		}
+	}
+
+	dwc3_writel(dep->regs, DWC3_DEPCMDPAR0, params->param0);
+	dwc3_writel(dep->regs, DWC3_DEPCMDPAR1, params->param1);
+	dwc3_writel(dep->regs, DWC3_DEPCMDPAR2, params->param2);
+
+	/*
+	 * Synopsys Databook 2.60a states in section 6.3.2.5.6 of that if we're
+	 * not relying on XferNotReady, we can make use of a special "No
+	 * Response Update Transfer" command where we should clear both CmdAct
+	 * and CmdIOC bits.
+	 *
+	 * With this, we don't need to wait for command completion and can
+	 * straight away issue further commands to the endpoint.
+	 *
+	 * NOTICE: We're making an assumption that control endpoints will never
+	 * make use of Update Transfer command. This is a safe assumption
+	 * because we can never have more than one request at a time with
+	 * Control Endpoints. If anybody changes that assumption, this chunk
+	 * needs to be updated accordingly.
+	 */
+	if (DWC3_DEPCMD_CMD(cmd) == DWC3_DEPCMD_UPDATETRANSFER &&
+			!usb_endpoint_xfer_isoc(desc))
+		cmd &= ~(DWC3_DEPCMD_CMDIOC | DWC3_DEPCMD_CMDACT);
+	else
+		cmd |= DWC3_DEPCMD_CMDACT;
+
+	dwc3_writel(dep->regs, DWC3_DEPCMD, cmd);
+	do {
+		reg = dwc3_readl(dep->regs, DWC3_DEPCMD);
+		if (!(reg & DWC3_DEPCMD_CMDACT)) {
+			cmd_status = DWC3_DEPCMD_STATUS(reg);
+
+			switch (cmd_status) {
+			case 0:
+				ret = 0;
+				break;
+			case DEPEVT_TRANSFER_NO_RESOURCE:
+				ret = -EINVAL;
+				break;
+			case DEPEVT_TRANSFER_BUS_EXPIRY:
+				/*
+				 * SW issues START TRANSFER command to
+				 * isochronous ep with future frame interval. If
+				 * future interval time has already passed when
+				 * core receives the command, it will respond
+				 * with an error status of 'Bus Expiry'.
+				 *
+				 * Instead of always returning -EINVAL, let's
+				 * give a hint to the gadget driver that this is
+				 * the case by returning -EAGAIN.
+				 */
+				ret = -EAGAIN;
+				break;
+			default:
+				dev_warn(dwc->dev, "UNKNOWN cmd status\n");
+			}
+
+			break;
+		}
+	} while (--timeout);
+
+	if (timeout == 0) {
+		ret = -ETIMEDOUT;
+		cmd_status = -ETIMEDOUT;
+	}
+
+	if (ret == 0 && DWC3_DEPCMD_CMD(cmd) == DWC3_DEPCMD_STARTTRANSFER) {
+		dep->flags |= DWC3_EP_TRANSFER_STARTED;
+		dwc3_gadget_ep_get_transfer_index(dep);
+	}
+
+	if (saved_config) {
+		reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
+		reg |= saved_config;
+		dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
+	}
+
+	return ret;
+
+}
+
+static int dwc3_send_clear_stall_ep_cmd(struct dwc3_ep *dep)
+{
+	struct dwc3 *dwc = dep->dwc;
+	struct dwc3_gadget_ep_cmd_params params;
+	u32 cmd = DWC3_DEPCMD_CLEARSTALL;
+
+	/*
+	 * As of core revision 2.60a the recommended programming model
+	 * is to set the ClearPendIN bit when issuing a Clear Stall EP
+	 * command for IN endpoints. This is to prevent an issue where
+	 * some (non-compliant) hosts may not send ACK TPs for pending
+	 * IN transfers due to a mishandled error condition. Synopsys
+	 * STAR 9000614252.
+	 */
+	if (dep->direction && (dwc->revision >= DWC3_REVISION_260A) &&
+	    (dwc->gadget.speed >= USB_SPEED_SUPER))
+		cmd |= DWC3_DEPCMD_CLEARPENDIN;
+
+	memset(&params, 0, sizeof(params));
+
+	return dwc3_send_gadget_ep_cmd(dep, cmd, &params);
+}
+
+static dma_addr_t dwc3_trb_dma_offset(struct dwc3_ep *dep,
+				      struct dwc3_trb *trb)
+{
+	u32 offset = (char *) trb - (char *) dep->trb_pool;
+
+	return dep->trb_pool_dma + offset;
+}
+
+static int dwc3_alloc_trb_pool(struct dwc3_ep *dep)
+{
+	if (dep->trb_pool)
+		return 0;
+
+	dep->trb_pool = dma_alloc_coherent(sizeof(struct dwc3_trb) *
+					  DWC3_TRB_NUM,
+					  &dep->trb_pool_dma);
+	if (!dep->trb_pool) {
+		dev_err(dep->dwc->dev, "failed to allocate trb pool for %s\n",
+			dep->name);
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
+static void dwc3_free_trb_pool(struct dwc3_ep *dep)
+{
+	dma_free_coherent(dep->trb_pool, 0, sizeof(dma_addr_t));
+
+	dep->trb_pool = NULL;
+	dep->trb_pool_dma = 0;
+}
+
+static int dwc3_gadget_set_xfer_resource(struct dwc3_ep *dep)
+{
+	struct dwc3_gadget_ep_cmd_params params;
+
+	memset(&params, 0x00, sizeof(params));
+
+	params.param0 = DWC3_DEPXFERCFG_NUM_XFER_RES(1);
+
+	return dwc3_send_gadget_ep_cmd(dep, DWC3_DEPCMD_SETTRANSFRESOURCE,
+				       &params);
+}
+
+/**
+ * dwc3_gadget_start_config - configure ep resources
+ * @dep: endpoint that is being enabled
+ *
+ * Issue a %DWC3_DEPCMD_DEPSTARTCFG command to @dep. After the command's
+ * completion, it will set Transfer Resource for all available endpoints.
+ *
+ * The assignment of transfer resources cannot perfectly follow the data book
+ * due to the fact that the controller driver does not have all knowledge of the
+ * configuration in advance. It is given this information piecemeal by the
+ * composite gadget framework after every SET_CONFIGURATION and
+ * SET_INTERFACE. Trying to follow the databook programming model in this
+ * scenario can cause errors. For two reasons:
+ *
+ * 1) The databook says to do %DWC3_DEPCMD_DEPSTARTCFG for every
+ * %USB_REQ_SET_CONFIGURATION and %USB_REQ_SET_INTERFACE (8.1.5). This is
+ * incorrect in the scenario of multiple interfaces.
+ *
+ * 2) The databook does not mention doing more %DWC3_DEPCMD_DEPXFERCFG for new
+ * endpoint on alt setting (8.1.6).
+ *
+ * The following simplified method is used instead:
+ *
+ * All hardware endpoints can be assigned a transfer resource and this setting
+ * will stay persistent until either a core reset or hibernation. So whenever we
+ * do a %DWC3_DEPCMD_DEPSTARTCFG(0) we can go ahead and do
+ * %DWC3_DEPCMD_DEPXFERCFG for every hardware endpoint as well. We are
+ * guaranteed that there are as many transfer resources as endpoints.
+ *
+ * This function is called for each endpoint when it is being enabled but is
+ * triggered only when called for EP0-out, which always happens first, and which
+ * should only happen in one of the above conditions.
+ */
+static int dwc3_gadget_start_config(struct dwc3_ep *dep)
+{
+	struct dwc3_gadget_ep_cmd_params params;
+	struct dwc3 *dwc;
+	u32 cmd;
+	int i;
+	int ret;
+
+	if (dep->number)
+		return 0;
+
+	memset(&params, 0x00, sizeof(params));
+	cmd = DWC3_DEPCMD_DEPSTARTCFG;
+	dwc = dep->dwc;
+
+	ret = dwc3_send_gadget_ep_cmd(dep, cmd, &params);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < DWC3_ENDPOINTS_NUM; i++) {
+		struct dwc3_ep *dep = dwc->eps[i];
+
+		if (!dep)
+			continue;
+
+		ret = dwc3_gadget_set_xfer_resource(dep);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int dwc3_gadget_set_ep_config(struct dwc3_ep *dep, unsigned int action)
+{
+	const struct usb_ss_ep_comp_descriptor *comp_desc;
+	const struct usb_endpoint_descriptor *desc;
+	struct dwc3_gadget_ep_cmd_params params;
+	struct dwc3 *dwc = dep->dwc;
+
+	comp_desc = dep->endpoint.comp_desc;
+	desc = dep->endpoint.desc;
+
+	memset(&params, 0x00, sizeof(params));
+
+	params.param0 = DWC3_DEPCFG_EP_TYPE(usb_endpoint_type(desc))
+		| DWC3_DEPCFG_MAX_PACKET_SIZE(usb_endpoint_maxp(desc));
+
+	/* Burst size is only needed in SuperSpeed mode */
+	if (dwc->gadget.speed == USB_SPEED_SUPER) {
+		u32 burst = dep->endpoint.maxburst - 1;
+		params.param0 |= DWC3_DEPCFG_BURST_SIZE(burst);
+	}
+
+	params.param0 |= action;
+	if (action == DWC3_DEPCFG_ACTION_RESTORE)
+		params.param2 |= dep->saved_state;
+
+	if (usb_endpoint_xfer_control(desc))
+		params.param1 = DWC3_DEPCFG_XFER_COMPLETE_EN;
+
+	if (dep->number <= 1 || usb_endpoint_xfer_isoc(desc))
+		params.param1 |= DWC3_DEPCFG_XFER_NOT_READY_EN;
+
+	if (usb_ss_max_streams(comp_desc) && usb_endpoint_xfer_bulk(desc)) {
+		params.param1 |= DWC3_DEPCFG_STREAM_CAPABLE
+			| DWC3_DEPCFG_STREAM_EVENT_EN;
+		dep->stream_capable = true;
+	}
+
+	if (!usb_endpoint_xfer_control(desc))
+		params.param1 |= DWC3_DEPCFG_XFER_IN_PROGRESS_EN;
+
+	/*
+	 * We are doing 1:1 mapping for endpoints, meaning
+	 * Physical Endpoints 2 maps to Logical Endpoint 2 and
+	 * so on. We consider the direction bit as part of the physical
+	 * endpoint number. So USB endpoint 0x81 is 0x03.
+	 */
+	params.param1 |= DWC3_DEPCFG_EP_NUMBER(dep->number);
+
+	/*
+	 * We must use the lower 16 TX FIFOs even though
+	 * HW might have more
+	 */
+	if (dep->direction)
+		params.param0 |= DWC3_DEPCFG_FIFO_NUMBER(dep->number >> 1);
+
+	if (desc->bInterval) {
+		params.param1 |= DWC3_DEPCFG_BINTERVAL_M1(desc->bInterval - 1);
+		dep->interval = 1 << (desc->bInterval - 1);
+	}
+
+	return dwc3_send_gadget_ep_cmd(dep, DWC3_DEPCMD_SETEPCONFIG, &params);
+}
+
+/**
+ * __dwc3_gadget_ep_enable - Initializes a HW endpoint
+ * @dep: endpoint to be initialized
+ * @desc: USB Endpoint Descriptor
+ *
+ * Caller should take care of locking
+ */
+static int __dwc3_gadget_ep_enable(struct dwc3_ep *dep, unsigned int action)
+{
+	const struct usb_endpoint_descriptor *desc = dep->endpoint.desc;
+	struct dwc3 *dwc = dep->dwc;
+
+	u32 reg;
+	int ret;
+
+	dev_dbg(dwc->dev, "Enabling %s\n", dep->name);
+
+	if (!(dep->flags & DWC3_EP_ENABLED)) {
+		ret = dwc3_gadget_start_config(dep);
+		if (ret)
+			return ret;
+	}
+
+	ret = dwc3_gadget_set_ep_config(dep, action);
+	if (ret)
+		return ret;
+
+	if (!(dep->flags & DWC3_EP_ENABLED)) {
+		struct dwc3_trb *trb_st_hw;
+		struct dwc3_trb *trb_link;
+
+		dep->type = usb_endpoint_type(desc);
+		dep->flags |= DWC3_EP_ENABLED;
+
+		reg = dwc3_readl(dwc->regs, DWC3_DALEPENA);
+		reg |= DWC3_DALEPENA_EP(dep->number);
+		dwc3_writel(dwc->regs, DWC3_DALEPENA, reg);
+
+		if (usb_endpoint_xfer_control(desc))
+			return 0;
+
+		/* Initialize the TRB ring */
+		dep->trb_dequeue = 0;
+		dep->trb_enqueue = 0;
+		memset(dep->trb_pool, 0,
+		       sizeof(struct dwc3_trb) * DWC3_TRB_NUM);
+
+		/* Link TRB. The HWO bit is never reset */
+		trb_st_hw = &dep->trb_pool[0];
+
+		trb_link = &dep->trb_pool[DWC3_TRB_NUM - 1];
+		memset(trb_link, 0, sizeof(*trb_link));
+
+		trb_link->bpl = lower_32_bits(dwc3_trb_dma_offset(dep,
+								 trb_st_hw));
+		trb_link->bph = upper_32_bits(dwc3_trb_dma_offset(dep,
+								 trb_st_hw));
+		trb_link->ctrl |= DWC3_TRBCTL_LINK_TRB;
+		trb_link->ctrl |= DWC3_TRB_CTRL_HWO;
+	}
+
+	/*
+	 * Issue StartTransfer here with no-op TRB so we can always rely on No
+	 * Response Update Transfer command.
+	 */
+	if ((usb_endpoint_xfer_bulk(desc) && !dep->stream_capable) ||
+			usb_endpoint_xfer_int(desc)) {
+		struct dwc3_gadget_ep_cmd_params params;
+		struct dwc3_trb *trb;
+		dma_addr_t trb_dma;
+		u32 cmd;
+
+		memset(&params, 0, sizeof(params));
+		trb = &dep->trb_pool[0];
+		trb_dma = dwc3_trb_dma_offset(dep, trb);
+
+		params.param0 = upper_32_bits(trb_dma);
+		params.param1 = lower_32_bits(trb_dma);
+
+		cmd = DWC3_DEPCMD_STARTTRANSFER;
+
+		ret = dwc3_send_gadget_ep_cmd(dep, cmd, &params);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
+static void dwc3_stop_active_transfer(struct dwc3_ep *dep, bool force,
+				      bool interrupt);
+static void dwc3_remove_requests(struct dwc3 *dwc, struct dwc3_ep *dep)
+{
+	struct dwc3_request *req;
+
+	dwc3_stop_active_transfer(dep, true, false);
+
+	/* - giveback all requests to gadget driver */
+	while (!list_empty(&dep->started_list)) {
+		req = next_request(&dep->started_list);
+
+		dwc3_gadget_giveback(dep, req, -ESHUTDOWN);
+	}
+
+	while (!list_empty(&dep->pending_list)) {
+		req = next_request(&dep->pending_list);
+
+		dwc3_gadget_giveback(dep, req, -ESHUTDOWN);
+	}
+}
+
+/**
+ * __dwc3_gadget_ep_disable - Disables a HW endpoint
+ * @dep: the endpoint to disable
+ *
+ * This function also removes requests which are currently processed ny the
+ * hardware and those which are not yet scheduled.
+ * Caller should take care of locking.
+ */
+static int __dwc3_gadget_ep_disable(struct dwc3_ep *dep)
+{
+	struct dwc3 *dwc = dep->dwc;
+	u32 reg;
+
+	dwc3_remove_requests(dwc, dep);
+
+	/* make sure HW endpoint isn't stalled */
+	if (dep->flags & DWC3_EP_STALL)
+		__dwc3_gadget_ep_set_halt(dep, 0, false);
+
+	reg = dwc3_readl(dwc->regs, DWC3_DALEPENA);
+	reg &= ~DWC3_DALEPENA_EP(dep->number);
+	dwc3_writel(dwc->regs, DWC3_DALEPENA, reg);
+
+	dep->stream_capable = false;
+	dep->type = 0;
+	dep->flags = 0;
+
+	/* Clear out the ep descriptors for non-ep0 */
+	if (dep->number > 1) {
+		dep->endpoint.comp_desc = NULL;
+		dep->endpoint.desc = NULL;
+	}
+
+	return 0;
+}
+
+/* -------------------------------------------------------------------------- */
+
+static int dwc3_gadget_ep0_enable(struct usb_ep *ep,
+				  const struct usb_endpoint_descriptor *desc)
+{
+	return -EINVAL;
+}
+
+static int dwc3_gadget_ep0_disable(struct usb_ep *ep)
+{
+	return -EINVAL;
+}
+
+/* -------------------------------------------------------------------------- */
+
+static int dwc3_gadget_ep_enable(struct usb_ep *ep,
+				 const struct usb_endpoint_descriptor *desc)
+{
+	struct dwc3_ep *dep;
+	struct dwc3 *dwc;
+	unsigned long flags;
+	int ret;
+
+	if (!ep || !desc || desc->bDescriptorType != USB_DT_ENDPOINT) {
+		pr_debug("dwc3: invalid parameters\n");
+		return -EINVAL;
+	}
+
+	if (!desc->wMaxPacketSize) {
+		pr_debug("dwc3: missing wMaxPacketSize\n");
+		return -EINVAL;
+	}
+
+	dep = to_dwc3_ep(ep);
+	dwc = dep->dwc;
+
+	if (dep->flags & DWC3_EP_ENABLED) {
+		WARN(true, "%s is already enabled\n",
+		     dep->name);
+		return 0;
+	}
+
+	spin_lock_irqsave(&dwc->lock, flags);
+	ret = __dwc3_gadget_ep_enable(dep, DWC3_DEPCFG_ACTION_INIT);
+	spin_unlock_irqrestore(&dwc->lock, flags);
+
+	return ret;
+}
+
+static int dwc3_gadget_ep_disable(struct usb_ep *ep)
+{
+	struct dwc3_ep *dep;
+	struct dwc3 *dwc;
+	unsigned long flags;
+	int ret;
+
+	if (!ep) {
+		pr_debug("dwc3: invalid parameters\n");
+		return -EINVAL;
+	}
+
+	dep = to_dwc3_ep(ep);
+	dwc = dep->dwc;
+
+	if (!(dep->flags & DWC3_EP_ENABLED)) {
+		WARN(true, "%s is already disabled\n",
+		     dep->name);
+		return 0;
+	}
+
+	spin_lock_irqsave(&dwc->lock, flags);
+	ret = __dwc3_gadget_ep_disable(dep);
+	spin_unlock_irqrestore(&dwc->lock, flags);
+
+	return ret;
+}
+
+static struct usb_request *dwc3_gadget_ep_alloc_request(struct usb_ep *ep)
+{
+	struct dwc3_request *req;
+	struct dwc3_ep *dep = to_dwc3_ep(ep);
+
+	req = xzalloc(sizeof(*req));
+	if (!req)
+		return NULL;
+
+	req->direction	= dep->direction;
+	req->epnum	= dep->number;
+	req->dep	= dep;
+	req->status	= DWC3_REQUEST_STATUS_UNKNOWN;
+
+	return &req->request;
+}
+
+static void dwc3_gadget_ep_free_request(struct usb_ep *ep,
+					struct usb_request *request)
+{
+	struct dwc3_request *req = to_dwc3_request(request);
+
+	kfree(req);
+}
+
+/**
+ * dwc3_ep_prev_trb - returns the previous TRB in the ring
+ * @dep: The endpoint with the TRB ring
+ * @index: The index of the current TRB in the ring
+ *
+ * Returns the TRB prior to the one pointed to by the index. If the
+ * index is 0, we will wrap backwards, skip the link TRB, and return
+ * the one just before that.
+ */
+static struct dwc3_trb *dwc3_ep_prev_trb(struct dwc3_ep *dep, u8 index)
+{
+	u8 tmp = index;
+
+	if (!tmp)
+		tmp = DWC3_TRB_NUM - 1;
+
+	return &dep->trb_pool[tmp - 1];
+}
+
+static u32 dwc3_calc_trbs_left(struct dwc3_ep *dep)
+{
+	struct dwc3_trb *tmp;
+	u8 trbs_left;
+
+	/*
+	 * If enqueue & dequeue are equal than it is either full or empty.
+	 *
+	 * One way to know for sure is if the TRB right before us has HWO bit
+	 * set or not. If it has, then we're definitely full and can't fit any
+	 * more transfers in our ring.
+	 */
+	if (dep->trb_enqueue == dep->trb_dequeue) {
+		tmp = dwc3_ep_prev_trb(dep, dep->trb_enqueue);
+		if (tmp->ctrl & DWC3_TRB_CTRL_HWO)
+			return 0;
+
+		return DWC3_TRB_NUM - 1;
+	}
+
+	trbs_left = dep->trb_dequeue - dep->trb_enqueue;
+	trbs_left &= (DWC3_TRB_NUM - 1);
+
+	if (dep->trb_dequeue < dep->trb_enqueue)
+		trbs_left--;
+
+	return trbs_left;
+}
+
+static void __dwc3_prepare_one_trb(struct dwc3_ep *dep, struct dwc3_trb *trb,
+				   dma_addr_t dma, unsigned length,
+				   unsigned chain, unsigned node,
+				   unsigned stream_id, unsigned short_not_ok,
+				   unsigned no_interrupt)
+{
+	struct dwc3 *dwc = dep->dwc;
+	struct usb_gadget *gadget = &dwc->gadget;
+	enum usb_device_speed speed = gadget->speed;
+
+	trb->size = DWC3_TRB_SIZE_LENGTH(length);
+	trb->bpl = lower_32_bits(dma);
+	trb->bph = upper_32_bits(dma);
+
+	switch (usb_endpoint_type(dep->endpoint.desc)) {
+	case USB_ENDPOINT_XFER_CONTROL:
+		trb->ctrl = DWC3_TRBCTL_CONTROL_SETUP;
+		break;
+
+	case USB_ENDPOINT_XFER_ISOC:
+		if (!node) {
+			trb->ctrl = DWC3_TRBCTL_ISOCHRONOUS_FIRST;
+
+			/*
+			 * USB Specification 2.0 Section 5.9.2 states that: "If
+			 * there is only a single transaction in the microframe,
+			 * only a DATA0 data packet PID is used.  If there are
+			 * two transactions per microframe, DATA1 is used for
+			 * the first transaction data packet and DATA0 is used
+			 * for the second transaction data packet.  If there are
+			 * three transactions per microframe, DATA2 is used for
+			 * the first transaction data packet, DATA1 is used for
+			 * the second, and DATA0 is used for the third."
+			 *
+			 * IOW, we should satisfy the following cases:
+			 *
+			 * 1) length <= maxpacket
+			 *	- DATA0
+			 *
+			 * 2) maxpacket < length <= (2 * maxpacket)
+			 *	- DATA1, DATA0
+			 *
+			 * 3) (2 * maxpacket) < length <= (3 * maxpacket)
+			 *	- DATA2, DATA1, DATA0
+			 */
+			if (speed == USB_SPEED_HIGH) {
+				struct usb_ep *ep = &dep->endpoint;
+				unsigned int mult = 2;
+				unsigned int maxp = usb_endpoint_maxp(ep->desc);
+
+				if (length <= (2 * maxp))
+					mult--;
+
+				if (length <= maxp)
+					mult--;
+
+				trb->size |= DWC3_TRB_SIZE_PCM1(mult);
+			}
+		} else {
+			trb->ctrl = DWC3_TRBCTL_ISOCHRONOUS;
+		}
+
+		/* always enable Interrupt on Missed ISOC */
+		trb->ctrl |= DWC3_TRB_CTRL_ISP_IMI;
+		break;
+
+	case USB_ENDPOINT_XFER_BULK:
+	case USB_ENDPOINT_XFER_INT:
+		trb->ctrl = DWC3_TRBCTL_NORMAL;
+		break;
+	default:
+		/*
+		 * This is only possible with faulty memory because we
+		 * checked it already :)
+		 */
+		dev_warn(dwc->dev, "Unknown endpoint type %d\n",
+			 usb_endpoint_type(dep->endpoint.desc));
+	}
+
+	/*
+	 * Enable Continue on Short Packet
+	 * when endpoint is not a stream capable
+	 */
+	if (usb_endpoint_dir_out(dep->endpoint.desc)) {
+		if (!dep->stream_capable)
+			trb->ctrl |= DWC3_TRB_CTRL_CSP;
+
+		if (short_not_ok)
+			trb->ctrl |= DWC3_TRB_CTRL_ISP_IMI;
+	}
+
+	if ((!no_interrupt && !chain) ||
+			(dwc3_calc_trbs_left(dep) == 1))
+		trb->ctrl |= DWC3_TRB_CTRL_IOC;
+
+	if (chain)
+		trb->ctrl |= DWC3_TRB_CTRL_CHN;
+
+	if (usb_endpoint_xfer_bulk(dep->endpoint.desc) && dep->stream_capable)
+		trb->ctrl |= DWC3_TRB_CTRL_SID_SOFN(stream_id);
+
+	trb->ctrl |= DWC3_TRB_CTRL_HWO;
+
+	dwc3_ep_inc_enq(dep);
+}
+
+/**
+ * dwc3_prepare_one_trb - setup one TRB from one request
+ * @dep: endpoint for which this request is prepared
+ * @req: dwc3_request pointer
+ * @chain: should this TRB be chained to the next?
+ * @node: only for isochronous endpoints. First TRB needs different type.
+ */
+static void dwc3_prepare_one_trb(struct dwc3_ep *dep,
+				 struct dwc3_request *req,
+				 unsigned chain, unsigned node)
+{
+	struct dwc3_trb *trb;
+	unsigned int length;
+	dma_addr_t dma;
+	unsigned stream_id = req->request.stream_id;
+	unsigned short_not_ok = req->request.short_not_ok;
+	unsigned no_interrupt = req->request.no_interrupt;
+
+	length = req->request.length;
+	dma = req->request.dma;
+
+	trb = &dep->trb_pool[dep->trb_enqueue];
+
+	if (!req->trb) {
+		dwc3_gadget_move_started_request(req);
+		req->trb = trb;
+		req->trb_dma = dwc3_trb_dma_offset(dep, trb);
+	}
+
+	req->num_trbs++;
+
+	__dwc3_prepare_one_trb(dep, trb, dma, length, chain, node,
+			stream_id, short_not_ok, no_interrupt);
+}
+
+static void dwc3_prepare_one_trb_linear(struct dwc3_ep *dep,
+					struct dwc3_request *req)
+{
+	unsigned int length = req->request.length;
+	unsigned int maxp = usb_endpoint_maxp(dep->endpoint.desc);
+	unsigned int rem = length % maxp;
+
+	if ((!length || rem) && usb_endpoint_dir_out(dep->endpoint.desc)) {
+		struct dwc3 *dwc = dep->dwc;
+		struct dwc3_trb *trb;
+
+		req->needs_extra_trb = true;
+
+		/* prepare normal TRB */
+		dwc3_prepare_one_trb(dep, req, true, 0);
+
+		/* Now prepare one extra TRB to align transfer size */
+		trb = &dep->trb_pool[dep->trb_enqueue];
+		req->num_trbs++;
+		__dwc3_prepare_one_trb(dep, trb, dwc->bounce_addr, maxp - rem,
+				false, 1, req->request.stream_id,
+				req->request.short_not_ok,
+				req->request.no_interrupt);
+	} else if (req->request.zero && req->request.length &&
+		   (IS_ALIGNED(req->request.length, maxp))) {
+		struct dwc3 *dwc = dep->dwc;
+		struct dwc3_trb *trb;
+
+		req->needs_extra_trb = true;
+
+		/* prepare normal TRB */
+		dwc3_prepare_one_trb(dep, req, true, 0);
+
+		/* Now prepare one extra TRB to handle ZLP */
+		trb = &dep->trb_pool[dep->trb_enqueue];
+		req->num_trbs++;
+		__dwc3_prepare_one_trb(dep, trb, dwc->bounce_addr, 0,
+				false, 1, req->request.stream_id,
+				req->request.short_not_ok,
+				req->request.no_interrupt);
+	} else {
+		dwc3_prepare_one_trb(dep, req, false, 0);
+	}
+}
+
+/*
+ * dwc3_prepare_trbs - setup TRBs from requests
+ * @dep: endpoint for which requests are being prepared
+ * @starting: true if the endpoint is idle and no requests are queued.
+ *
+ * The function goes through the requests list and sets up TRBs for the
+ * transfers. The function returns once there are no more TRBs available or
+ * it runs out of requests.
+ */
+static void dwc3_prepare_trbs(struct dwc3_ep *dep)
+{
+	struct dwc3_request *req, *n;
+	struct dwc3 *dwc = dep->dwc;
+	dma_addr_t dma_addr;
+
+	BUILD_BUG_ON_NOT_POWER_OF_2(DWC3_TRB_NUM);
+
+	list_for_each_entry_safe(req, n, &dep->pending_list, list) {
+		dma_addr = dma_map_single(dwc->dev, req->request.buf,
+					  req->request.length,
+					  dep->number ?
+					  DMA_TO_DEVICE : DMA_FROM_DEVICE);
+		if (dma_mapping_error(dwc->dev, dma_addr))
+			return;
+
+		req->request.dma = dma_addr;
+
+		dwc3_prepare_one_trb_linear(dep, req);
+
+		if (!dwc3_calc_trbs_left(dep))
+			return;
+	}
+}
+
+static int __dwc3_gadget_kick_transfer(struct dwc3_ep *dep)
+{
+	struct dwc3_gadget_ep_cmd_params params;
+	struct dwc3_request *req;
+	int starting;
+	int ret;
+	u32 cmd;
+
+	if (!dwc3_calc_trbs_left(dep))
+		return 0;
+
+	starting = !(dep->flags & DWC3_EP_TRANSFER_STARTED);
+
+	dwc3_prepare_trbs(dep);
+
+	req = next_request(&dep->started_list);
+	if (!req) {
+		dep->flags |= DWC3_EP_PENDING_REQUEST;
+		return 0;
+	}
+
+	memset(&params, 0, sizeof(params));
+
+	if (starting) {
+		params.param0 = upper_32_bits(req->trb_dma);
+		params.param1 = lower_32_bits(req->trb_dma);
+		cmd = DWC3_DEPCMD_STARTTRANSFER;
+
+		if (dep->stream_capable)
+			cmd |= DWC3_DEPCMD_PARAM(req->request.stream_id);
+
+		if (usb_endpoint_xfer_isoc(dep->endpoint.desc))
+			cmd |= DWC3_DEPCMD_PARAM(dep->frame_number);
+	} else {
+		cmd = DWC3_DEPCMD_UPDATETRANSFER |
+			DWC3_DEPCMD_PARAM(dep->resource_index);
+	}
+
+	ret = dwc3_send_gadget_ep_cmd(dep, cmd, &params);
+	if (ret < 0) {
+		/*
+		 * FIXME we need to iterate over the list of requests
+		 * here and stop, unmap, free and del each of the linked
+		 * requests instead of what we do now.
+		 */
+		if (req->trb)
+			memset(req->trb, 0, sizeof(struct dwc3_trb));
+		dwc3_gadget_del_and_unmap_request(dep, req, ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int __dwc3_gadget_get_frame(struct dwc3 *dwc)
+{
+	u32 reg;
+
+	reg = dwc3_readl(dwc->regs, DWC3_DSTS);
+	return DWC3_DSTS_SOFFN(reg);
+}
+
+/**
+ * dwc3_gadget_start_isoc_quirk - workaround invalid frame number
+ * @dep: isoc endpoint
+ *
+ * This function tests for the correct combination of BIT[15:14] from the 16-bit
+ * microframe number reported by the XferNotReady event for the future frame
+ * number to start the isoc transfer.
+ *
+ * In DWC_usb31 version 1.70a-ea06 and prior, for highspeed and fullspeed
+ * isochronous IN, BIT[15:14] of the 16-bit microframe number reported by the
+ * XferNotReady event are invalid. The driver uses this number to schedule the
+ * isochronous transfer and passes it to the START TRANSFER command. Because
+ * this number is invalid, the command may fail. If BIT[15:14] matches the
+ * internal 16-bit microframe, the START TRANSFER command will pass and the
+ * transfer will start at the scheduled time, if it is off by 1, the command
+ * will still pass, but the transfer will start 2 seconds in the future. For all
+ * other conditions, the START TRANSFER command will fail with bus-expiry.
+ *
+ * In order to workaround this issue, we can test for the correct combination of
+ * BIT[15:14] by sending START TRANSFER commands with different values of
+ * BIT[15:14]: 'b00, 'b01, 'b10, and 'b11. Each combination is 2^14 uframe apart
+ * (or 2 seconds). 4 seconds into the future will result in a bus-expiry status.
+ * As the result, within the 4 possible combinations for BIT[15:14], there will
+ * be 2 successful and 2 failure START COMMAND status. One of the 2 successful
+ * command status will result in a 2-second delay start. The smaller BIT[15:14]
+ * value is the correct combination.
+ *
+ * Since there are only 4 outcomes and the results are ordered, we can simply
+ * test 2 START TRANSFER commands with BIT[15:14] combinations 'b00 and 'b01 to
+ * deduce the smaller successful combination.
+ *
+ * Let test0 = test status for combination 'b00 and test1 = test status for 'b01
+ * of BIT[15:14]. The correct combination is as follow:
+ *
+ * if test0 fails and test1 passes, BIT[15:14] is 'b01
+ * if test0 fails and test1 fails, BIT[15:14] is 'b10
+ * if test0 passes and test1 fails, BIT[15:14] is 'b11
+ * if test0 passes and test1 passes, BIT[15:14] is 'b00
+ *
+ * Synopsys STAR 9001202023: Wrong microframe number for isochronous IN
+ * endpoints.
+ */
+static int dwc3_gadget_start_isoc_quirk(struct dwc3_ep *dep)
+{
+	int cmd_status = 0;
+	bool test0;
+	bool test1;
+
+	while (dep->combo_num < 2) {
+		struct dwc3_gadget_ep_cmd_params params;
+		u32 test_frame_number;
+		u32 cmd;
+
+		/*
+		 * Check if we can start isoc transfer on the next interval or
+		 * 4 uframes in the future with BIT[15:14] as dep->combo_num
+		 */
+		test_frame_number = dep->frame_number & 0x3fff;
+		test_frame_number |= dep->combo_num << 14;
+		test_frame_number += max_t(u32, 4, dep->interval);
+
+		params.param0 = upper_32_bits(dep->dwc->bounce_addr);
+		params.param1 = lower_32_bits(dep->dwc->bounce_addr);
+
+		cmd = DWC3_DEPCMD_STARTTRANSFER;
+		cmd |= DWC3_DEPCMD_PARAM(test_frame_number);
+		cmd_status = dwc3_send_gadget_ep_cmd(dep, cmd, &params);
+
+		/* Redo if some other failure beside bus-expiry is received */
+		if (cmd_status && cmd_status != -EAGAIN) {
+			dep->start_cmd_status = 0;
+			dep->combo_num = 0;
+			return 0;
+		}
+
+		/* Store the first test status */
+		if (dep->combo_num == 0)
+			dep->start_cmd_status = cmd_status;
+
+		dep->combo_num++;
+
+		/*
+		 * End the transfer if the START_TRANSFER command is successful
+		 * to wait for the next XferNotReady to test the command again
+		 */
+		if (cmd_status == 0) {
+			dwc3_stop_active_transfer(dep, true, true);
+			return 0;
+		}
+	}
+
+	/* test0 and test1 are both completed at this point */
+	test0 = (dep->start_cmd_status == 0);
+	test1 = (cmd_status == 0);
+
+	if (!test0 && test1)
+		dep->combo_num = 1;
+	else if (!test0 && !test1)
+		dep->combo_num = 2;
+	else if (test0 && !test1)
+		dep->combo_num = 3;
+	else if (test0 && test1)
+		dep->combo_num = 0;
+
+	dep->frame_number &= 0x3fff;
+	dep->frame_number |= dep->combo_num << 14;
+	dep->frame_number += max_t(u32, 4, dep->interval);
+
+	/* Reinitialize test variables */
+	dep->start_cmd_status = 0;
+	dep->combo_num = 0;
+
+	return __dwc3_gadget_kick_transfer(dep);
+}
+
+static int __dwc3_gadget_start_isoc(struct dwc3_ep *dep)
+{
+	struct dwc3 *dwc = dep->dwc;
+	int ret;
+	int i;
+
+	if (list_empty(&dep->pending_list)) {
+		dep->flags |= DWC3_EP_PENDING_REQUEST;
+		return -EAGAIN;
+	}
+
+	if (!dwc->dis_start_transfer_quirk && dwc3_is_usb31(dwc) &&
+	    (dwc->revision <= DWC3_USB31_REVISION_160A ||
+	     (dwc->revision == DWC3_USB31_REVISION_170A &&
+	      dwc->version_type >= DWC31_VERSIONTYPE_EA01 &&
+	      dwc->version_type <= DWC31_VERSIONTYPE_EA06))) {
+
+		if (dwc->gadget.speed <= USB_SPEED_HIGH && dep->direction)
+			return dwc3_gadget_start_isoc_quirk(dep);
+	}
+
+	for (i = 0; i < DWC3_ISOC_MAX_RETRIES; i++) {
+		dep->frame_number = DWC3_ALIGN_FRAME(dep, i + 1);
+
+		ret = __dwc3_gadget_kick_transfer(dep);
+		if (ret != -EAGAIN)
+			break;
+	}
+
+	return ret;
+}
+
+static int __dwc3_gadget_ep_queue(struct dwc3_ep *dep, struct dwc3_request *req)
+{
+	struct dwc3 *dwc = dep->dwc;
+
+	if (!dep->endpoint.desc) {
+		dev_err(dwc->dev, "%s: can't queue to disabled endpoint\n",
+				dep->name);
+		return -ESHUTDOWN;
+	}
+
+	if (req->dep != dep) {
+		WARN(true, "request %p belongs to '%s'\n",
+				&req->request, req->dep->name);
+		return -EINVAL;
+	}
+
+	if (req->status < DWC3_REQUEST_STATUS_COMPLETED) {
+		WARN(true, "request %p already in flight\n", &req->request);
+		return -EINVAL;
+	}
+
+	req->request.actual = 0;
+	req->request.status = -EINPROGRESS;
+
+	list_add_tail(&req->list, &dep->pending_list);
+	req->status = DWC3_REQUEST_STATUS_QUEUED;
+
+	/*
+	 * NOTICE: Isochronous endpoints should NEVER be prestarted. We must
+	 * wait for a XferNotReady event so we will know what's the current
+	 * (micro-)frame number.
+	 *
+	 * Without this trick, we are very, very likely gonna get Bus Expiry
+	 * errors which will force us issue EndTransfer command.
+	 */
+	if (usb_endpoint_xfer_isoc(dep->endpoint.desc)) {
+		if (!(dep->flags & DWC3_EP_PENDING_REQUEST) &&
+				!(dep->flags & DWC3_EP_TRANSFER_STARTED))
+			return 0;
+
+		if ((dep->flags & DWC3_EP_PENDING_REQUEST)) {
+			if (!(dep->flags & DWC3_EP_TRANSFER_STARTED)) {
+				return __dwc3_gadget_start_isoc(dep);
+			}
+		}
+	}
+
+	return __dwc3_gadget_kick_transfer(dep);
+}
+
+static int dwc3_gadget_ep_queue(struct usb_ep *ep, struct usb_request *request)
+{
+	struct dwc3_request *req = to_dwc3_request(request);
+	struct dwc3_ep *dep = to_dwc3_ep(ep);
+
+	unsigned long flags;
+
+	int ret;
+
+	spin_lock_irqsave(&dwc->lock, flags);
+	ret = __dwc3_gadget_ep_queue(dep, req);
+	spin_unlock_irqrestore(&dwc->lock, flags);
+
+	return ret;
+}
+
+static void dwc3_gadget_ep_skip_trbs(struct dwc3_ep *dep,
+				     struct dwc3_request *req)
+{
+	int i;
+
+	/*
+	 * If request was already started, this means we had to
+	 * stop the transfer. With that we also need to ignore
+	 * all TRBs used by the request, however TRBs can only
+	 * be modified after completion of END_TRANSFER
+	 * command. So what we do here is that we wait for
+	 * END_TRANSFER completion and only after that, we jump
+	 * over TRBs by clearing HWO and incrementing dequeue
+	 * pointer.
+	 */
+	for (i = 0; i < req->num_trbs; i++) {
+		struct dwc3_trb *trb;
+
+		trb = req->trb + i;
+		trb->ctrl &= ~DWC3_TRB_CTRL_HWO;
+		dwc3_ep_inc_deq(dep);
+	}
+
+	req->num_trbs = 0;
+}
+
+static void dwc3_gadget_ep_cleanup_cancelled_requests(struct dwc3_ep *dep)
+{
+	struct dwc3_request *req;
+	struct dwc3_request *tmp;
+
+	list_for_each_entry_safe(req, tmp, &dep->cancelled_list, list) {
+		dwc3_gadget_ep_skip_trbs(dep, req);
+		dwc3_gadget_giveback(dep, req, -ECONNRESET);
+	}
+}
+
+static int dwc3_gadget_ep_dequeue(struct usb_ep *ep,
+				  struct usb_request *request)
+{
+	struct dwc3_request *req = to_dwc3_request(request);
+	struct dwc3_request *r = NULL;
+	struct dwc3_ep *dep = to_dwc3_ep(ep);
+	struct dwc3 *dwc = dep->dwc;
+	unsigned long flags;
+	int ret = 0;
+
+	spin_lock_irqsave(&dwc->lock, flags);
+
+	list_for_each_entry(r, &dep->pending_list, list) {
+		if (r == req)
+			break;
+	}
+
+	if (r != req) {
+		list_for_each_entry(r, &dep->started_list, list) {
+			if (r == req)
+				break;
+		}
+		if (r == req) {
+			/* wait until it is processed */
+			dwc3_stop_active_transfer(dep, true, true);
+
+			if (!r->trb)
+				goto out0;
+
+			dwc3_gadget_move_cancelled_request(req);
+			if (dep->flags & DWC3_EP_TRANSFER_STARTED)
+				goto out0;
+			else
+				goto out1;
+		}
+		dev_err(dwc->dev, "request %p was not queued to %s\n",
+				request, ep->name);
+		ret = -EINVAL;
+		goto out0;
+	}
+
+out1:
+	/* giveback the request */
+	dwc3_gadget_giveback(dep, req, -ECONNRESET);
+
+out0:
+	spin_unlock_irqrestore(&dwc->lock, flags);
+
+	return ret;
+}
+
+int __dwc3_gadget_ep_set_halt(struct dwc3_ep *dep, int value, int protocol)
+{
+	struct dwc3_gadget_ep_cmd_params params;
+	struct dwc3 *dwc = dep->dwc;
+	int ret;
+
+	if (usb_endpoint_xfer_isoc(dep->endpoint.desc)) {
+		dev_err(dwc->dev, "%s is of Isochronous type\n", dep->name);
+		return -EINVAL;
+	}
+
+	memset(&params, 0x00, sizeof(params));
+
+	if (value) {
+		struct dwc3_trb *trb;
+		unsigned transfer_in_flight;
+		unsigned started;
+
+		if (dep->number > 1)
+			trb = dwc3_ep_prev_trb(dep, dep->trb_enqueue);
+		else
+			trb = &dwc->ep0_trb[dep->trb_enqueue];
+
+		transfer_in_flight = trb->ctrl & DWC3_TRB_CTRL_HWO;
+		started = !list_empty(&dep->started_list);
+
+		if (!protocol && ((dep->direction && transfer_in_flight) ||
+				(!dep->direction && started))) {
+			return -EAGAIN;
+		}
+
+		ret = dwc3_send_gadget_ep_cmd(dep, DWC3_DEPCMD_SETSTALL,
+					      &params);
+		if (ret)
+			dev_err(dwc->dev, "failed to set STALL on %s\n",
+					dep->name);
+		else
+			dep->flags |= DWC3_EP_STALL;
+	} else {
+		ret = dwc3_send_clear_stall_ep_cmd(dep);
+		if (ret)
+			dev_err(dwc->dev, "failed to clear STALL on %s\n",
+					dep->name);
+		else
+			dep->flags &= ~(DWC3_EP_STALL | DWC3_EP_WEDGE);
+	}
+
+	return ret;
+}
+
+static int dwc3_gadget_ep_set_halt(struct usb_ep *ep, int value)
+{
+	struct dwc3_ep *dep = to_dwc3_ep(ep);
+	unsigned long flags;
+
+	int ret;
+
+	spin_lock_irqsave(&dwc->lock, flags);
+	ret = __dwc3_gadget_ep_set_halt(dep, value, false);
+	spin_unlock_irqrestore(&dwc->lock, flags);
+
+	return ret;
+}
+
+static int dwc3_gadget_ep_set_wedge(struct usb_ep *ep)
+{
+	struct dwc3_ep *dep = to_dwc3_ep(ep);
+	unsigned long flags;
+	int ret;
+
+	spin_lock_irqsave(&dwc->lock, flags);
+	dep->flags |= DWC3_EP_WEDGE;
+
+	if (dep->number == 0 || dep->number == 1)
+		ret = __dwc3_gadget_ep0_set_halt(ep, 1);
+	else
+		ret = __dwc3_gadget_ep_set_halt(dep, 1, false);
+	spin_unlock_irqrestore(&dwc->lock, flags);
+
+	return ret;
+}
+
+/* -------------------------------------------------------------------------- */
+
+static struct usb_endpoint_descriptor dwc3_gadget_ep0_desc = {
+	.bLength		= USB_DT_ENDPOINT_SIZE,
+	.bDescriptorType	= USB_DT_ENDPOINT,
+	.bmAttributes		= USB_ENDPOINT_XFER_CONTROL,
+};
+
+static const struct usb_ep_ops dwc3_gadget_ep0_ops = {
+	.enable	= dwc3_gadget_ep0_enable,
+	.disable	= dwc3_gadget_ep0_disable,
+	.alloc_request	= dwc3_gadget_ep_alloc_request,
+	.free_request	= dwc3_gadget_ep_free_request,
+	.queue		= dwc3_gadget_ep0_queue,
+	.dequeue	= dwc3_gadget_ep_dequeue,
+	.set_halt	= dwc3_gadget_ep0_set_halt,
+	.set_wedge	= dwc3_gadget_ep_set_wedge,
+};
+
+static const struct usb_ep_ops dwc3_gadget_ep_ops = {
+	.enable	= dwc3_gadget_ep_enable,
+	.disable	= dwc3_gadget_ep_disable,
+	.alloc_request	= dwc3_gadget_ep_alloc_request,
+	.free_request	= dwc3_gadget_ep_free_request,
+	.queue		= dwc3_gadget_ep_queue,
+	.dequeue	= dwc3_gadget_ep_dequeue,
+	.set_halt	= dwc3_gadget_ep_set_halt,
+	.set_wedge	= dwc3_gadget_ep_set_wedge,
+};
+
+/* -------------------------------------------------------------------------- */
+
+static int dwc3_gadget_get_frame(struct usb_gadget *g)
+{
+	struct dwc3 *dwc = gadget_to_dwc(g);
+
+	return __dwc3_gadget_get_frame(dwc);
+}
+
+static int __dwc3_gadget_wakeup(struct dwc3 *dwc)
+{
+	int retries;
+
+	int ret;
+	u32 reg;
+
+	u8 link_state;
+	u8 speed;
+
+	/*
+	 * According to the Databook Remote wakeup request should
+	 * be issued only when the device is in early suspend state.
+	 *
+	 * We can check that via USB Link State bits in DSTS register.
+	 */
+	reg = dwc3_readl(dwc->regs, DWC3_DSTS);
+
+	speed = reg & DWC3_DSTS_CONNECTSPD;
+	if ((speed == DWC3_DSTS_SUPERSPEED) ||
+	    (speed == DWC3_DSTS_SUPERSPEED_PLUS))
+		return 0;
+
+	link_state = DWC3_DSTS_USBLNKST(reg);
+
+	switch (link_state) {
+	case DWC3_LINK_STATE_RX_DET:	/* in HS, means Early Suspend */
+	case DWC3_LINK_STATE_U3:	/* in HS, means SUSPEND */
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	ret = dwc3_gadget_set_link_state(dwc, DWC3_LINK_STATE_RECOV);
+	if (ret < 0) {
+		dev_err(dwc->dev, "failed to put link in Recovery\n");
+		return ret;
+	}
+
+	/* Recent versions do this automatically */
+	if (dwc->revision < DWC3_REVISION_194A) {
+		/* write zeroes to Link Change Request */
+		reg = dwc3_readl(dwc->regs, DWC3_DCTL);
+		reg &= ~DWC3_DCTL_ULSTCHNGREQ_MASK;
+		dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+	}
+
+	/* poll until Link State changes to ON */
+	retries = 20000;
+
+	while (retries--) {
+		reg = dwc3_readl(dwc->regs, DWC3_DSTS);
+
+		/* in HS, means ON */
+		if (DWC3_DSTS_USBLNKST(reg) == DWC3_LINK_STATE_U0)
+			break;
+	}
+
+	if (DWC3_DSTS_USBLNKST(reg) != DWC3_LINK_STATE_U0) {
+		dev_err(dwc->dev, "failed to send remote wakeup\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int dwc3_gadget_wakeup(struct usb_gadget *g)
+{
+	struct dwc3 *dwc = gadget_to_dwc(g);
+	unsigned long flags;
+	int ret;
+
+	spin_lock_irqsave(&dwc->lock, flags);
+	ret = __dwc3_gadget_wakeup(dwc);
+	spin_unlock_irqrestore(&dwc->lock, flags);
+
+	return ret;
+}
+
+static int dwc3_gadget_set_selfpowered(struct usb_gadget *g,
+				       int is_selfpowered)
+{
+	struct dwc3 *dwc = gadget_to_dwc(g);
+	unsigned long flags;
+
+	spin_lock_irqsave(&dwc->lock, flags);
+	dwc->is_selfpowered = !!is_selfpowered;
+	spin_unlock_irqrestore(&dwc->lock, flags);
+
+	return 0;
+}
+
+static int dwc3_gadget_run_stop(struct dwc3 *dwc, int is_on, int suspend)
+{
+	u32 reg;
+	u32 timeout = 500;
+
+	reg = dwc3_readl(dwc->regs, DWC3_DCTL);
+	if (is_on) {
+		if (dwc->revision <= DWC3_REVISION_187A) {
+			reg &= ~DWC3_DCTL_TRGTULST_MASK;
+			reg |= DWC3_DCTL_TRGTULST_RX_DET;
+		}
+
+		if (dwc->revision >= DWC3_REVISION_194A)
+			reg &= ~DWC3_DCTL_KEEP_CONNECT;
+		reg |= DWC3_DCTL_RUN_STOP;
+
+		if (dwc->has_hibernation)
+			reg |= DWC3_DCTL_KEEP_CONNECT;
+
+		dwc->pullups_connected = true;
+	} else {
+		reg &= ~DWC3_DCTL_RUN_STOP;
+
+		if (dwc->has_hibernation && !suspend)
+			reg &= ~DWC3_DCTL_KEEP_CONNECT;
+
+		dwc->pullups_connected = false;
+	}
+
+	dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+
+	do {
+		reg = dwc3_readl(dwc->regs, DWC3_DSTS);
+		reg &= DWC3_DSTS_DEVCTRLHLT;
+	} while (--timeout && !(!is_on ^ !reg));
+
+	if (!timeout)
+		return -ETIMEDOUT;
+
+	dev_dbg(dwc->dev, "gadget %s data soft-%s\n",
+			dwc->gadget_driver
+			? dwc->gadget_driver->function : "no-function",
+			is_on ? "connect" : "disconnect");
+
+	return 0;
+}
+
+static int dwc3_gadget_pullup(struct usb_gadget *g, int is_on)
+{
+	struct dwc3 *dwc = gadget_to_dwc(g);
+	unsigned long flags;
+	int ret;
+
+	is_on = !!is_on;
+
+	/*
+	 * Per databook, when we want to stop the gadget, if a control transfer
+	 * is still in process, complete it and get the core into setup phase.
+	 */
+	if (!is_on && dwc->ep0state != EP0_SETUP_PHASE)
+		dev_warn(dwc->dev, "not in SETUP phase\n");
+
+	spin_lock_irqsave(&dwc->lock, flags);
+	ret = dwc3_gadget_run_stop(dwc, is_on, false);
+	spin_unlock_irqrestore(&dwc->lock, flags);
+
+	return ret;
+}
+
+static void dwc3_gadget_enable_irq(struct dwc3 *dwc)
+{
+	u32 reg;
+
+	/* Enable all but Start and End of Frame IRQs */
+	reg = (DWC3_DEVTEN_VNDRDEVTSTRCVEDEN |
+		DWC3_DEVTEN_EVNTOVERFLOWEN |
+		DWC3_DEVTEN_CMDCMPLTEN |
+		DWC3_DEVTEN_ERRTICERREN |
+		DWC3_DEVTEN_WKUPEVTEN |
+		DWC3_DEVTEN_ULSTCNGEN |
+		DWC3_DEVTEN_CONNECTDONEEN |
+		DWC3_DEVTEN_USBRSTEN |
+		DWC3_DEVTEN_DISCONNEVTEN);
+
+	if (dwc->revision < DWC3_REVISION_250A)
+		reg |= DWC3_DEVTEN_ULSTCNGEN;
+
+	dwc3_writel(dwc->regs, DWC3_DEVTEN, reg);
+}
+
+static void dwc3_gadget_disable_irq(struct dwc3 *dwc)
+{
+	/* mask all interrupts */
+	dwc3_writel(dwc->regs, DWC3_DEVTEN, 0x00);
+}
+
+/**
+ * dwc3_gadget_setup_nump - calculate and initialize NUMP field of %DWC3_DCFG
+ * @dwc: pointer to our context structure
+ *
+ * The following looks like complex but it's actually very simple. In order to
+ * calculate the number of packets we can burst at once on OUT transfers, we're
+ * gonna use RxFIFO size.
+ *
+ * To calculate RxFIFO size we need two numbers:
+ * MDWIDTH = size, in bits, of the internal memory bus
+ * RAM2_DEPTH = depth, in MDWIDTH, of internal RAM2 (where RxFIFO sits)
+ *
+ * Given these two numbers, the formula is simple:
+ *
+ * RxFIFO Size = (RAM2_DEPTH * MDWIDTH / 8) - 24 - 16;
+ *
+ * 24 bytes is for 3x SETUP packets
+ * 16 bytes is a clock domain crossing tolerance
+ *
+ * Given RxFIFO Size, NUMP = RxFIFOSize / 1024;
+ */
+static void dwc3_gadget_setup_nump(struct dwc3 *dwc)
+{
+	u32 ram2_depth;
+	u32 mdwidth;
+	u32 nump;
+	u32 reg;
+
+	ram2_depth = DWC3_GHWPARAMS7_RAM2_DEPTH(dwc->hwparams.hwparams7);
+	mdwidth = DWC3_GHWPARAMS0_MDWIDTH(dwc->hwparams.hwparams0);
+
+	nump = ((ram2_depth * mdwidth / 8) - 24 - 16) / 1024;
+	nump = min_t(u32, nump, 16);
+
+	/* update NumP */
+	reg = dwc3_readl(dwc->regs, DWC3_DCFG);
+	reg &= ~DWC3_DCFG_NUMP_MASK;
+	reg |= nump << DWC3_DCFG_NUMP_SHIFT;
+	dwc3_writel(dwc->regs, DWC3_DCFG, reg);
+}
+
+static int __dwc3_gadget_start(struct dwc3 *dwc)
+{
+	struct dwc3_ep *dep;
+	int ret = 0;
+	u32 reg;
+
+	/*
+	 * We are telling dwc3 that we want to use DCFG.NUMP as ACK TP's NUMP
+	 * field instead of letting dwc3 itself calculate that automatically.
+	 *
+	 * This way, we maximize the chances that we'll be able to get several
+	 * bursts of data without going through any sort of endpoint throttling.
+	 */
+	reg = dwc3_readl(dwc->regs, DWC3_GRXTHRCFG);
+	if (dwc3_is_usb31(dwc))
+		reg &= ~DWC31_GRXTHRCFG_PKTCNTSEL;
+	else
+		reg &= ~DWC3_GRXTHRCFG_PKTCNTSEL;
+
+	dwc3_writel(dwc->regs, DWC3_GRXTHRCFG, reg);
+
+	dwc3_gadget_setup_nump(dwc);
+
+	/* Start with SuperSpeed Default */
+	dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(512);
+
+	dep = dwc->eps[0];
+	ret = __dwc3_gadget_ep_enable(dep, DWC3_DEPCFG_ACTION_INIT);
+	if (ret) {
+		dev_err(dwc->dev, "failed to enable %s\n", dep->name);
+		goto err0;
+	}
+
+	dep = dwc->eps[1];
+	ret = __dwc3_gadget_ep_enable(dep, DWC3_DEPCFG_ACTION_INIT);
+	if (ret) {
+		dev_err(dwc->dev, "failed to enable %s\n", dep->name);
+		goto err1;
+	}
+
+	/* begin to receive SETUP packets */
+	dwc->ep0state = EP0_SETUP_PHASE;
+	dwc->link_state = DWC3_LINK_STATE_SS_DIS;
+	dwc3_ep0_out_start(dwc);
+
+	dwc3_gadget_enable_irq(dwc);
+
+	return 0;
+
+err1:
+	__dwc3_gadget_ep_disable(dwc->eps[0]);
+
+err0:
+	return ret;
+}
+
+static int dwc3_gadget_start(struct usb_gadget *g,
+		struct usb_gadget_driver *driver)
+{
+	struct dwc3 *dwc = gadget_to_dwc(g);
+	unsigned long flags;
+	int ret = 0;
+
+	//dwc3_gadget_wakeup(g);
+	spin_lock_irqsave(&dwc->lock, flags);
+	if (dwc->gadget_driver) {
+		dev_err(dwc->dev, "%s is already bound to %s\n",
+			dwc->gadget.name,
+			dwc->gadget_driver->function);
+		ret = -EBUSY;
+		goto err1;
+	}
+
+	dwc->gadget_driver = driver;
+
+	__dwc3_gadget_start(dwc);
+
+	spin_unlock_irqrestore(&dwc->lock, flags);
+
+	return 0;
+
+err1:
+	spin_unlock_irqrestore(&dwc->lock, flags);
+
+	return ret;
+}
+
+static int dwc3_gadget_stop(struct usb_gadget *g,
+			    struct usb_gadget_driver *driver)
+{
+	struct dwc3 *dwc = gadget_to_dwc(g);
+	unsigned long flags;
+
+	spin_lock_irqsave(&dwc->lock, flags);
+
+	dwc3_gadget_disable_irq(dwc);
+	__dwc3_gadget_ep_disable(dwc->eps[0]);
+	__dwc3_gadget_ep_disable(dwc->eps[1]);
+
+	dwc->gadget_driver	= NULL;
+	spin_unlock_irqrestore(&dwc->lock, flags);
+
+	return 0;
+}
+
+static void dwc3_gadget_set_speed(struct dwc3 *dwc,
+				  enum usb_device_speed speed)
+{
+	unsigned long flags;
+	u32 reg;
+
+	spin_lock_irqsave(&dwc->lock, flags);
+	reg = dwc3_readl(dwc->regs, DWC3_DCFG);
+	reg &= ~(DWC3_DCFG_SPEED_MASK);
+
+	/*
+	 * WORKAROUND: DWC3 revision < 2.20a have an issue
+	 * which would cause metastability state on Run/Stop
+	 * bit if we try to force the IP to USB2-only mode.
+	 *
+	 * Because of that, we cannot configure the IP to any
+	 * speed other than the SuperSpeed
+	 *
+	 * Refers to:
+	 *
+	 * STAR#9000525659: Clock Domain Crossing on DCTL in
+	 * USB 2.0 Mode
+	 */
+	if (dwc->revision < DWC3_REVISION_220A &&
+	    !dwc->dis_metastability_quirk) {
+		reg |= DWC3_DCFG_SUPERSPEED;
+	} else {
+		switch (speed) {
+		case USB_SPEED_LOW:
+			reg |= DWC3_DCFG_LOWSPEED;
+			break;
+		case USB_SPEED_FULL:
+			reg |= DWC3_DCFG_FULLSPEED;
+			break;
+		case USB_SPEED_HIGH:
+			reg |= DWC3_DCFG_HIGHSPEED;
+			break;
+		case USB_SPEED_SUPER:
+			reg |= DWC3_DCFG_SUPERSPEED;
+			break;
+		case USB_SPEED_SUPER_PLUS:
+			if (dwc3_is_usb31(dwc))
+				reg |= DWC3_DCFG_SUPERSPEED_PLUS;
+			else
+				reg |= DWC3_DCFG_SUPERSPEED;
+			break;
+		default:
+			dev_err(dwc->dev, "invalid speed (%d)\n", speed);
+
+			if (dwc->revision & DWC3_REVISION_IS_DWC31)
+				reg |= DWC3_DCFG_SUPERSPEED_PLUS;
+			else
+				reg |= DWC3_DCFG_SUPERSPEED;
+		}
+	}
+	dwc3_writel(dwc->regs, DWC3_DCFG, reg);
+
+	spin_unlock_irqrestore(&dwc->lock, flags);
+}
+
+static void dwc3_gadget_poll(struct usb_gadget *g);
+
+static const struct usb_gadget_ops dwc3_gadget_ops = {
+	.get_frame		= dwc3_gadget_get_frame,
+	.wakeup		= dwc3_gadget_wakeup,
+	.set_selfpowered	= dwc3_gadget_set_selfpowered,
+	.pullup		= dwc3_gadget_pullup,
+	.udc_start		= dwc3_gadget_start,
+	.udc_stop		= dwc3_gadget_stop,
+	.udc_poll		= dwc3_gadget_poll,
+};
+
+/* -------------------------------------------------------------------------- */
+
+static int dwc3_gadget_init_control_endpoint(struct dwc3_ep *dep)
+{
+	struct dwc3 *dwc = dep->dwc;
+
+	usb_ep_set_maxpacket_limit(&dep->endpoint, 512);
+	dep->endpoint.maxburst = 1;
+	dep->endpoint.ops = &dwc3_gadget_ep0_ops;
+	if (!dep->direction)
+		dwc->gadget.ep0 = &dep->endpoint;
+
+	return 0;
+}
+
+static int dwc3_gadget_init_in_endpoint(struct dwc3_ep *dep)
+{
+	struct dwc3 *dwc = dep->dwc;
+	int mdwidth;
+	int kbytes;
+	int size;
+
+	mdwidth = DWC3_MDWIDTH(dwc->hwparams.hwparams0);
+	/* MDWIDTH is represented in bits, we need it in bytes */
+	mdwidth /= 8;
+
+	size = dwc3_readl(dwc->regs, DWC3_GTXFIFOSIZ(dep->number >> 1));
+	if (dwc3_is_usb31(dwc))
+		size = DWC31_GTXFIFOSIZ_TXFDEF(size);
+	else
+		size = DWC3_GTXFIFOSIZ_TXFDEF(size);
+
+	/* FIFO Depth is in MDWDITH bytes. Multiply */
+	size *= mdwidth;
+
+	kbytes = size / 1024;
+	if (kbytes == 0)
+		kbytes = 1;
+
+	/*
+	 * FIFO sizes account an extra MDWIDTH * (kbytes + 1) bytes for
+	 * internal overhead. We don't really know how these are used,
+	 * but documentation say it exists.
+	 */
+	size -= mdwidth * (kbytes + 1);
+	size /= kbytes;
+
+	usb_ep_set_maxpacket_limit(&dep->endpoint, size);
+
+	dep->endpoint.max_streams = 15;
+	dep->endpoint.ops = &dwc3_gadget_ep_ops;
+	list_add_tail(&dep->endpoint.ep_list,
+			&dwc->gadget.ep_list);
+
+	return dwc3_alloc_trb_pool(dep);
+}
+
+static int dwc3_gadget_init_out_endpoint(struct dwc3_ep *dep)
+{
+	struct dwc3 *dwc = dep->dwc;
+
+	usb_ep_set_maxpacket_limit(&dep->endpoint, 1024);
+	dep->endpoint.max_streams = 15;
+	dep->endpoint.ops = &dwc3_gadget_ep_ops;
+	list_add_tail(&dep->endpoint.ep_list,
+			&dwc->gadget.ep_list);
+
+	return dwc3_alloc_trb_pool(dep);
+}
+
+static int dwc3_gadget_init_endpoint(struct dwc3 *dwc, u8 epnum)
+{
+	struct dwc3_ep *dep;
+	bool direction = epnum & 1;
+	int ret;
+	u8 num = epnum >> 1;
+
+	dep = kzalloc(sizeof(*dep), GFP_KERNEL);
+	if (!dep)
+		return -ENOMEM;
+
+	dep->dwc = dwc;
+	dep->number = epnum;
+	dep->direction = direction;
+	dep->regs = dwc->regs + DWC3_DEP_BASE(epnum);
+	dwc->eps[epnum] = dep;
+	dep->combo_num = 0;
+	dep->start_cmd_status = 0;
+
+	snprintf(dep->name, sizeof(dep->name), "ep%u%s", num,
+		 direction ? "in" : "out");
+
+	dep->endpoint.name = dep->name;
+
+	if (!(dep->number > 1)) {
+		dep->endpoint.desc = &dwc3_gadget_ep0_desc;
+		dep->endpoint.comp_desc = NULL;
+	}
+
+	spin_lock_init(&dep->lock);
+
+	if (num == 0)
+		ret = dwc3_gadget_init_control_endpoint(dep);
+	else if (direction)
+		ret = dwc3_gadget_init_in_endpoint(dep);
+	else
+		ret = dwc3_gadget_init_out_endpoint(dep);
+
+	if (ret)
+		return ret;
+
+	INIT_LIST_HEAD(&dep->pending_list);
+	INIT_LIST_HEAD(&dep->started_list);
+	INIT_LIST_HEAD(&dep->cancelled_list);
+
+	return 0;
+}
+
+static int dwc3_gadget_init_endpoints(struct dwc3 *dwc, u8 total)
+{
+	u8 epnum;
+
+	INIT_LIST_HEAD(&dwc->gadget.ep_list);
+
+	for (epnum = 0; epnum < total; epnum++) {
+		int ret;
+
+		ret = dwc3_gadget_init_endpoint(dwc, epnum);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static void dwc3_gadget_free_endpoints(struct dwc3 *dwc)
+{
+	struct dwc3_ep *dep;
+	u8 epnum;
+
+	for (epnum = 0; epnum < DWC3_ENDPOINTS_NUM; epnum++) {
+		dep = dwc->eps[epnum];
+		if (!dep)
+			continue;
+		/*
+		 * Physical endpoints 0 and 1 are special; they form the
+		 * bi-directional USB endpoint 0.
+		 *
+		 * For those two physical endpoints, we don't allocate a TRB
+		 * pool nor do we add them the endpoints list. Due to that, we
+		 * shouldn't do these two operations otherwise we would end up
+		 * with all sorts of bugs when removing dwc3.ko.
+		 */
+		if (epnum != 0 && epnum != 1) {
+			dwc3_free_trb_pool(dep);
+			list_del(&dep->endpoint.ep_list);
+		}
+
+		kfree(dep);
+	}
+}
+
+/* -------------------------------------------------------------------------- */
+
+static int dwc3_gadget_ep_reclaim_completed_trb(struct dwc3_ep *dep,
+						struct dwc3_request *req,
+						struct dwc3_trb *trb,
+						const struct dwc3_event_depevt *event,
+						int status, int chain)
+{
+	unsigned int count;
+
+	dwc3_ep_inc_deq(dep);
+
+	req->num_trbs--;
+
+	/*
+	 * If we're in the middle of series of chained TRBs and we
+	 * receive a short transfer along the way, DWC3 will skip
+	 * through all TRBs including the last TRB in the chain (the
+	 * where CHN bit is zero. DWC3 will also avoid clearing HWO
+	 * bit and SW has to do it manually.
+	 *
+	 * We're going to do that here to avoid problems of HW trying
+	 * to use bogus TRBs for transfers.
+	 */
+	if (chain && (trb->ctrl & DWC3_TRB_CTRL_HWO))
+		trb->ctrl &= ~DWC3_TRB_CTRL_HWO;
+
+	/*
+	 * For isochronous transfers, the first TRB in a service interval must
+	 * have the Isoc-First type. Track and report its interval frame number.
+	 */
+	if (usb_endpoint_xfer_isoc(dep->endpoint.desc) &&
+	    (trb->ctrl & DWC3_TRBCTL_ISOCHRONOUS_FIRST)) {
+		unsigned int frame_number;
+
+		frame_number = DWC3_TRB_CTRL_GET_SID_SOFN(trb->ctrl);
+		frame_number &= ~(dep->interval - 1);
+	}
+
+	/*
+	 * If we're dealing with unaligned size OUT transfer, we will be left
+	 * with one TRB pending in the ring. We need to manually clear HWO bit
+	 * from that TRB.
+	 */
+
+	if (req->needs_extra_trb && !(trb->ctrl & DWC3_TRB_CTRL_CHN)) {
+		trb->ctrl &= ~DWC3_TRB_CTRL_HWO;
+		return 1;
+	}
+
+	count = trb->size & DWC3_TRB_SIZE_MASK;
+	req->remaining += count;
+
+	if ((trb->ctrl & DWC3_TRB_CTRL_HWO) && status != -ESHUTDOWN)
+		return 1;
+
+	if (event->status & DEPEVT_STATUS_SHORT && !chain)
+		return 1;
+
+	if (event->status & DEPEVT_STATUS_IOC)
+		return 1;
+
+	return 0;
+}
+
+static int dwc3_gadget_ep_reclaim_trb_linear(struct dwc3_ep *dep,
+					     struct dwc3_request *req,
+					     const struct dwc3_event_depevt *event,
+					     int status)
+{
+	struct dwc3_trb *trb = &dep->trb_pool[dep->trb_dequeue];
+
+	return dwc3_gadget_ep_reclaim_completed_trb(dep, req, trb,
+			event, status, false);
+}
+
+static int dwc3_gadget_ep_cleanup_completed_request(struct dwc3_ep *dep,
+						    const struct dwc3_event_depevt *event,
+						    struct dwc3_request *req,
+						    int status)
+{
+	int ret;
+
+	ret = dwc3_gadget_ep_reclaim_trb_linear(dep, req, event,
+						status);
+
+	if (req->needs_extra_trb) {
+		ret = dwc3_gadget_ep_reclaim_trb_linear(dep, req, event,
+				status);
+		req->needs_extra_trb = false;
+	}
+
+	req->request.actual = req->request.length - req->remaining;
+
+	dwc3_gadget_giveback(dep, req, status);
+
+	return ret;
+}
+
+static void dwc3_gadget_ep_cleanup_completed_requests(struct dwc3_ep *dep,
+						      const struct dwc3_event_depevt *event,
+						      int status)
+{
+	struct dwc3_request *req;
+	struct dwc3_request *tmp;
+
+	list_for_each_entry_safe(req, tmp, &dep->started_list, list) {
+		int ret;
+
+		ret = dwc3_gadget_ep_cleanup_completed_request(dep, event,
+				req, status);
+		if (ret)
+			break;
+	}
+}
+
+static void dwc3_gadget_endpoint_frame_from_event(struct dwc3_ep *dep,
+						  const struct dwc3_event_depevt *event)
+{
+	dep->frame_number = event->parameters;
+}
+
+static void dwc3_gadget_endpoint_transfer_in_progress(struct dwc3_ep *dep,
+						      const struct dwc3_event_depevt *event)
+{
+	struct dwc3 *dwc = dep->dwc;
+	unsigned status = 0;
+	bool stop = false;
+
+	dwc3_gadget_endpoint_frame_from_event(dep, event);
+
+	if (event->status & DEPEVT_STATUS_BUSERR)
+		status = -ECONNRESET;
+
+	if (event->status & DEPEVT_STATUS_MISSED_ISOC) {
+		status = -EXDEV;
+
+		if (list_empty(&dep->started_list))
+			stop = true;
+	}
+
+	dwc3_gadget_ep_cleanup_completed_requests(dep, event, status);
+
+	if (stop) {
+		dwc3_stop_active_transfer(dep, true, true);
+		dep->flags = DWC3_EP_ENABLED;
+	}
+
+	/*
+	 * WORKAROUND: This is the 2nd half of U1/U2 -> U0 workaround.
+	 * See dwc3_gadget_linksts_change_interrupt() for 1st half.
+	 */
+	if (dwc->revision < DWC3_REVISION_183A) {
+		u32 reg;
+		int i;
+
+		for (i = 0; i < DWC3_ENDPOINTS_NUM; i++) {
+			dep = dwc->eps[i];
+
+			if (!(dep->flags & DWC3_EP_ENABLED))
+				continue;
+
+			if (!list_empty(&dep->started_list))
+				return;
+		}
+
+		reg = dwc3_readl(dwc->regs, DWC3_DCTL);
+		reg |= dwc->u1u2;
+		dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+
+		dwc->u1u2 = 0;
+	}
+}
+
+static void dwc3_gadget_endpoint_transfer_not_ready(struct dwc3_ep *dep,
+						    const struct dwc3_event_depevt *event)
+{
+	dwc3_gadget_endpoint_frame_from_event(dep, event);
+	(void) __dwc3_gadget_start_isoc(dep);
+}
+
+static void dwc3_endpoint_interrupt(struct dwc3 *dwc,
+				    const struct dwc3_event_depevt *event)
+{
+	struct dwc3_ep *dep;
+	u8 epnum = event->endpoint_number;
+	u8 cmd;
+
+	dep = dwc->eps[epnum];
+
+	if (!(dep->flags & DWC3_EP_ENABLED)) {
+		if (!(dep->flags & DWC3_EP_TRANSFER_STARTED))
+			return;
+
+		/* Handle only EPCMDCMPLT when EP disabled */
+		if (event->endpoint_event != DWC3_DEPEVT_EPCMDCMPLT)
+			return;
+	}
+
+	if (epnum == 0 || epnum == 1) {
+		dwc3_ep0_interrupt(dwc, event);
+		return;
+	}
+
+	switch (event->endpoint_event) {
+	case DWC3_DEPEVT_XFERINPROGRESS:
+		dwc3_gadget_endpoint_transfer_in_progress(dep, event);
+		break;
+	case DWC3_DEPEVT_XFERNOTREADY:
+		dwc3_gadget_endpoint_transfer_not_ready(dep, event);
+		break;
+	case DWC3_DEPEVT_EPCMDCMPLT:
+		cmd = DEPEVT_PARAMETER_CMD(event->parameters);
+
+		if (cmd == DWC3_DEPCMD_ENDTRANSFER) {
+			dep->flags &= ~DWC3_EP_TRANSFER_STARTED;
+			dwc3_gadget_ep_cleanup_cancelled_requests(dep);
+		}
+		break;
+	case DWC3_DEPEVT_STREAMEVT:
+	case DWC3_DEPEVT_XFERCOMPLETE:
+	case DWC3_DEPEVT_RXTXFIFOEVT:
+		break;
+	}
+}
+
+static void dwc3_disconnect_gadget(struct dwc3 *dwc)
+{
+	if (dwc->gadget_driver && dwc->gadget_driver->disconnect) {
+		spin_unlock(&dwc->lock);
+		dwc->gadget_driver->disconnect(&dwc->gadget);
+		spin_lock(&dwc->lock);
+	}
+}
+
+static void dwc3_suspend_gadget(struct dwc3 *dwc)
+{
+	if (dwc->gadget_driver && dwc->gadget_driver->suspend) {
+		spin_unlock(&dwc->lock);
+		dwc->gadget_driver->suspend(&dwc->gadget);
+		spin_lock(&dwc->lock);
+	}
+}
+
+static void dwc3_resume_gadget(struct dwc3 *dwc)
+{
+	if (dwc->gadget_driver && dwc->gadget_driver->resume) {
+		spin_unlock(&dwc->lock);
+		dwc->gadget_driver->resume(&dwc->gadget);
+		spin_lock(&dwc->lock);
+	}
+}
+
+static void dwc3_reset_gadget(struct dwc3 *dwc)
+{
+	if (!dwc->gadget_driver)
+		return;
+
+	if (dwc->gadget.speed != USB_SPEED_UNKNOWN) {
+		spin_unlock(&dwc->lock);
+		usb_gadget_udc_reset(&dwc->gadget, dwc->gadget_driver);
+		spin_lock(&dwc->lock);
+	}
+}
+
+static void dwc3_stop_active_transfer(struct dwc3_ep *dep, bool force,
+				      bool interrupt)
+{
+	struct dwc3 *dwc = dep->dwc;
+	struct dwc3_gadget_ep_cmd_params params;
+	u32 cmd;
+	int ret;
+
+	if (!(dep->flags & DWC3_EP_TRANSFER_STARTED))
+		return;
+
+	/*
+	 * NOTICE: We are violating what the Databook says about the
+	 * EndTransfer command. Ideally we would _always_ wait for the
+	 * EndTransfer Command Completion IRQ, but that's causing too
+	 * much trouble synchronizing between us and gadget driver.
+	 *
+	 * We have discussed this with the IP Provider and it was
+	 * suggested to giveback all requests here, but give HW some
+	 * extra time to synchronize with the interconnect. We're using
+	 * an arbitraty 100us delay for that.
+	 *
+	 * Note also that a similar handling was tested by Synopsys
+	 * (thanks a lot Paul) and nothing bad has come out of it.
+	 * In short, what we're doing is:
+	 *
+	 * - Issue EndTransfer WITH CMDIOC bit set
+	 * - Wait 100us
+	 */
+
+	cmd = DWC3_DEPCMD_ENDTRANSFER;
+	cmd |= force ? DWC3_DEPCMD_HIPRI_FORCERM : 0;
+	cmd |= DWC3_DEPCMD_CMDIOC;
+	cmd |= DWC3_DEPCMD_PARAM(dep->resource_index);
+	memset(&params, 0, sizeof(params));
+	ret = dwc3_send_gadget_ep_cmd(dep, cmd, &params);
+	dep->resource_index = 0;
+
+	if (dwc3_is_usb31(dwc) || dwc->revision < DWC3_REVISION_310A)
+		udelay(100);
+}
+
+static void dwc3_clear_stall_all_ep(struct dwc3 *dwc)
+{
+	u32 epnum;
+
+	for (epnum = 1; epnum < DWC3_ENDPOINTS_NUM; epnum++) {
+		struct dwc3_ep *dep;
+
+		dep = dwc->eps[epnum];
+		if (!dep)
+			continue;
+
+		if (!(dep->flags & DWC3_EP_STALL))
+			continue;
+
+		dep->flags &= ~DWC3_EP_STALL;
+
+		dwc3_send_clear_stall_ep_cmd(dep);
+	}
+}
+
+static void dwc3_gadget_disconnect_interrupt(struct dwc3 *dwc)
+{
+	int reg;
+
+	reg = dwc3_readl(dwc->regs, DWC3_DCTL);
+	reg &= ~DWC3_DCTL_INITU1ENA;
+	dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+
+	reg &= ~DWC3_DCTL_INITU2ENA;
+	dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+
+	dwc3_disconnect_gadget(dwc);
+
+	dwc->gadget.speed = USB_SPEED_UNKNOWN;
+	dwc->setup_packet_pending = false;
+	usb_gadget_set_state(&dwc->gadget, USB_STATE_NOTATTACHED);
+
+	dwc->connected = false;
+}
+
+static void dwc3_gadget_reset_interrupt(struct dwc3 *dwc)
+{
+	u32 reg;
+
+	dwc->connected = true;
+
+	/*
+	 * WORKAROUND: DWC3 revisions <1.88a have an issue which
+	 * would cause a missing Disconnect Event if there's a
+	 * pending Setup Packet in the FIFO.
+	 *
+	 * There's no suggested workaround on the official Bug
+	 * report, which states that "unless the driver/application
+	 * is doing any special handling of a disconnect event,
+	 * there is no functional issue".
+	 *
+	 * Unfortunately, it turns out that we _do_ some special
+	 * handling of a disconnect event, namely complete all
+	 * pending transfers, notify gadget driver of the
+	 * disconnection, and so on.
+	 *
+	 * Our suggested workaround is to follow the Disconnect
+	 * Event steps here, instead, based on a setup_packet_pending
+	 * flag. Such flag gets set whenever we have a SETUP_PENDING
+	 * status for EP0 TRBs and gets cleared on XferComplete for the
+	 * same endpoint.
+	 *
+	 * Refers to:
+	 *
+	 * STAR#9000466709: RTL: Device : Disconnect event not
+	 * generated if setup packet pending in FIFO
+	 */
+	if (dwc->revision < DWC3_REVISION_188A) {
+		if (dwc->setup_packet_pending)
+			dwc3_gadget_disconnect_interrupt(dwc);
+	}
+
+	dwc3_reset_gadget(dwc);
+
+	reg = dwc3_readl(dwc->regs, DWC3_DCTL);
+	reg &= ~DWC3_DCTL_TSTCTRL_MASK;
+	dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+	dwc->test_mode = false;
+	dwc3_clear_stall_all_ep(dwc);
+
+	/* Reset device address to zero */
+	reg = dwc3_readl(dwc->regs, DWC3_DCFG);
+	reg &= ~(DWC3_DCFG_DEVADDR_MASK);
+	dwc3_writel(dwc->regs, DWC3_DCFG, reg);
+}
+
+static void dwc3_gadget_conndone_interrupt(struct dwc3 *dwc)
+{
+	struct dwc3_ep *dep;
+	int ret;
+	u32 reg;
+	u8 speed;
+
+	reg = dwc3_readl(dwc->regs, DWC3_DSTS);
+	speed = reg & DWC3_DSTS_CONNECTSPD;
+	dwc->speed = speed;
+
+	switch (speed) {
+	case DWC3_DSTS_SUPERSPEED_PLUS:
+		dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(512);
+		dwc->gadget.ep0->maxpacket = 512;
+		dwc->gadget.speed = USB_SPEED_SUPER_PLUS;
+		break;
+	case DWC3_DCFG_SUPERSPEED:
+		/*
+		 * WORKAROUND: DWC3 revisions <1.90a have an issue which
+		 * would cause a missing USB3 Reset event.
+		 *
+		 * In such situations, we should force a USB3 Reset
+		 * event by calling our dwc3_gadget_reset_interrupt()
+		 * routine.
+		 *
+		 * Refers to:
+		 *
+		 * STAR#9000483510: RTL: SS : USB3 reset event may
+		 * not be generated always when the link enters poll
+		 */
+		if (dwc->revision < DWC3_REVISION_190A)
+			dwc3_gadget_reset_interrupt(dwc);
+
+		dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(512);
+		dwc->gadget.ep0->maxpacket = 512;
+		dwc->gadget.speed = USB_SPEED_SUPER;
+		break;
+	case DWC3_DCFG_HIGHSPEED:
+		dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(64);
+		dwc->gadget.ep0->maxpacket = 64;
+		dwc->gadget.speed = USB_SPEED_HIGH;
+		break;
+	case DWC3_DCFG_FULLSPEED:
+	case DWC3_DCFG_FULLSPEED1:
+		dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(64);
+		dwc->gadget.ep0->maxpacket = 64;
+		dwc->gadget.speed = USB_SPEED_FULL;
+		break;
+	case DWC3_DCFG_LOWSPEED:
+		dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(8);
+		dwc->gadget.ep0->maxpacket = 8;
+		dwc->gadget.speed = USB_SPEED_LOW;
+		break;
+	}
+
+	dwc->eps[1]->endpoint.maxpacket = dwc->gadget.ep0->maxpacket;
+
+	/* Enable USB2 LPM Capability */
+
+	if ((dwc->revision > DWC3_REVISION_194A) &&
+	    (speed != DWC3_DSTS_SUPERSPEED) &&
+	    (speed != DWC3_DSTS_SUPERSPEED_PLUS)) {
+		reg = dwc3_readl(dwc->regs, DWC3_DCFG);
+		reg |= DWC3_DCFG_LPM_CAP;
+		dwc3_writel(dwc->regs, DWC3_DCFG, reg);
+
+		reg = dwc3_readl(dwc->regs, DWC3_DCTL);
+		reg &= ~(DWC3_DCTL_HIRD_THRES_MASK | DWC3_DCTL_L1_HIBER_EN);
+
+		reg |= DWC3_DCTL_HIRD_THRES(dwc->hird_threshold);
+
+		/*
+		 * When dwc3 revisions >= 2.40a, LPM Erratum is enabled and
+		 * DCFG.LPMCap is set, core responses with an ACK and the
+		 * BESL value in the LPM token is less than or equal to LPM
+		 * NYET threshold.
+		 */
+		if (dwc->revision < DWC3_REVISION_240A && dwc->has_lpm_erratum)
+			WARN(true, "LPM Erratum not available on dwc3 revisisions < 2.40a\n");
+
+		if (dwc->has_lpm_erratum && dwc->revision >= DWC3_REVISION_240A)
+			reg |= DWC3_DCTL_LPM_ERRATA(dwc->lpm_nyet_threshold);
+
+		dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+	} else {
+		reg = dwc3_readl(dwc->regs, DWC3_DCTL);
+		reg &= ~DWC3_DCTL_HIRD_THRES_MASK;
+		dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+	}
+
+	dep = dwc->eps[0];
+	ret = __dwc3_gadget_ep_enable(dep, DWC3_DEPCFG_ACTION_MODIFY);
+	if (ret) {
+		dev_err(dwc->dev, "failed to enable %s\n", dep->name);
+		return;
+	}
+
+	dep = dwc->eps[1];
+	ret = __dwc3_gadget_ep_enable(dep, DWC3_DEPCFG_ACTION_MODIFY);
+	if (ret) {
+		dev_err(dwc->dev, "failed to enable %s\n", dep->name);
+		return;
+	}
+
+	/*
+	 * Configure PHY via GUSB3PIPECTLn if required.
+	 *
+	 * Update GTXFIFOSIZn
+	 *
+	 * In both cases reset values should be sufficient.
+	 */
+}
+
+static void dwc3_gadget_wakeup_interrupt(struct dwc3 *dwc)
+{
+	/*
+	 * TODO take core out of low power mode when that's
+	 * implemented.
+	 */
+
+	if (dwc->gadget_driver && dwc->gadget_driver->resume)
+		dwc->gadget_driver->resume(&dwc->gadget);
+}
+
+static void dwc3_gadget_linksts_change_interrupt(struct dwc3 *dwc,
+						 unsigned int evtinfo)
+{
+	enum dwc3_link_state next = evtinfo & DWC3_LINK_STATE_MASK;
+	unsigned int pwropt;
+
+	/*
+	 * WORKAROUND: DWC3 < 2.50a have an issue when configured without
+	 * Hibernation mode enabled which would show up when device detects
+	 * host-initiated U3 exit.
+	 *
+	 * In that case, device will generate a Link State Change Interrupt
+	 * from U3 to RESUME which is only necessary if Hibernation is
+	 * configured in.
+	 *
+	 * There are no functional changes due to such spurious event and we
+	 * just need to ignore it.
+	 *
+	 * Refers to:
+	 *
+	 * STAR#9000570034 RTL: SS Resume event generated in non-Hibernation
+	 * operational mode
+	 */
+	pwropt = DWC3_GHWPARAMS1_EN_PWROPT(dwc->hwparams.hwparams1);
+	if ((dwc->revision < DWC3_REVISION_250A) &&
+	    (pwropt != DWC3_GHWPARAMS1_EN_PWROPT_HIB)) {
+		if ((dwc->link_state == DWC3_LINK_STATE_U3) &&
+		    (next == DWC3_LINK_STATE_RESUME)) {
+			dev_dbg(dwc->dev, "ignoring transition U3 -> Resume\n");
+			return;
+		}
+	}
+
+	/*
+	 * WORKAROUND: DWC3 Revisions <1.83a have an issue which, depending
+	 * on the link partner, the USB session might do multiple entry/exit
+	 * of low power states before a transfer takes place.
+	 *
+	 * Due to this problem, we might experience lower throughput. The
+	 * suggested workaround is to disable DCTL[12:9] bits if we're
+	 * transitioning from U1/U2 to U0 and enable those bits again
+	 * after a transfer completes and there are no pending transfers
+	 * on any of the enabled endpoints.
+	 *
+	 * This is the first half of that workaround.
+	 *
+	 * Refers to:
+	 *
+	 * STAR#9000446952: RTL: Device SS : if U1/U2 ->U0 takes >128us
+	 * core send LGO_Ux entering U0
+	 */
+	if (dwc->revision < DWC3_REVISION_183A) {
+		if (next == DWC3_LINK_STATE_U0) {
+			u32 u1u2;
+			u32 reg;
+
+			switch (dwc->link_state) {
+			case DWC3_LINK_STATE_U1:
+			case DWC3_LINK_STATE_U2:
+				reg = dwc3_readl(dwc->regs, DWC3_DCTL);
+				u1u2 = reg & (DWC3_DCTL_INITU2ENA
+						| DWC3_DCTL_ACCEPTU2ENA
+						| DWC3_DCTL_INITU1ENA
+						| DWC3_DCTL_ACCEPTU1ENA);
+
+				if (!dwc->u1u2)
+					dwc->u1u2 = reg & u1u2;
+
+				reg &= ~u1u2;
+
+				dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+				break;
+			default:
+				/* do nothing */
+				break;
+			}
+		}
+	}
+
+	switch (next) {
+	case DWC3_LINK_STATE_U1:
+		if (dwc->speed == USB_SPEED_SUPER)
+			dwc3_suspend_gadget(dwc);
+		break;
+	case DWC3_LINK_STATE_U2:
+	case DWC3_LINK_STATE_U3:
+		//dwc3_suspend_gadget(dwc);
+		break;
+	case DWC3_LINK_STATE_RESUME:
+		dwc3_resume_gadget(dwc);
+		break;
+	default:
+		/* do nothing */
+		break;
+	}
+
+	dwc->link_state = next;
+}
+
+static void dwc3_gadget_suspend_interrupt(struct dwc3 *dwc,
+					  unsigned int evtinfo)
+{
+	enum dwc3_link_state next = evtinfo & DWC3_LINK_STATE_MASK;
+
+	if (dwc->link_state != next && next == DWC3_LINK_STATE_U3)
+		dwc3_suspend_gadget(dwc);
+
+	dwc->link_state = next;
+}
+
+static void dwc3_gadget_hibernation_interrupt(struct dwc3 *dwc,
+					      unsigned int evtinfo)
+{
+	unsigned int is_ss = evtinfo & (1UL << 4);
+
+	/**
+	 * WORKAROUND: DWC3 revison 2.20a with hibernation support
+	 * have a known issue which can cause USB CV TD.9.23 to fail
+	 * randomly.
+	 *
+	 * Because of this issue, core could generate bogus hibernation
+	 * events which SW needs to ignore.
+	 *
+	 * Refers to:
+	 *
+	 * STAR#9000546576: Device Mode Hibernation: Issue in USB 2.0
+	 * Device Fallback from SuperSpeed
+	 */
+	if (is_ss ^ (dwc->speed == USB_SPEED_SUPER))
+		return;
+
+	/* enter hibernation here */
+}
+
+static void dwc3_gadget_interrupt(struct dwc3 *dwc,
+				  const struct dwc3_event_devt *event)
+{
+
+	switch (event->type) {
+	case DWC3_DEVICE_EVENT_DISCONNECT:
+		dwc3_gadget_disconnect_interrupt(dwc);
+		break;
+	case DWC3_DEVICE_EVENT_RESET:
+		dwc3_gadget_reset_interrupt(dwc);
+		break;
+	case DWC3_DEVICE_EVENT_CONNECT_DONE:
+		dwc3_gadget_conndone_interrupt(dwc);
+		break;
+	case DWC3_DEVICE_EVENT_WAKEUP:
+		dwc3_gadget_wakeup_interrupt(dwc);
+		break;
+	case DWC3_DEVICE_EVENT_HIBER_REQ:
+		if (!dwc->has_hibernation) {
+			WARN(1 ,"unexpected hibernation event\n");
+			break;
+		}
+		dwc3_gadget_hibernation_interrupt(dwc, event->event_info);
+		break;
+	case DWC3_DEVICE_EVENT_LINK_STATUS_CHANGE:
+		dwc3_gadget_linksts_change_interrupt(dwc, event->event_info);
+		break;
+	case DWC3_DEVICE_EVENT_EOPF:
+		dev_dbg(dwc->dev, "End of Periodic Frame\n");
+		/* It changed to be suspend event for version 2.30a and above */
+		if (dwc->revision >= DWC3_REVISION_230A) {
+			/*
+			 * Ignore suspend event until the gadget enters into
+			 * USB_STATE_CONFIGURED state.
+			 */
+			if (dwc->gadget.state >= USB_STATE_CONFIGURED)
+				dwc3_gadget_suspend_interrupt(dwc,
+						event->event_info);
+		}
+		break;
+	case DWC3_DEVICE_EVENT_SOF:
+		dev_dbg(dwc->dev, "Start of Periodic Frame\n");
+		break;
+	case DWC3_DEVICE_EVENT_ERRATIC_ERROR:
+		dev_dbg(dwc->dev, "Erratic Error\n");
+		break;
+	case DWC3_DEVICE_EVENT_CMD_CMPL:
+		dev_dbg(dwc->dev, "Command Complete\n");
+		break;
+	case DWC3_DEVICE_EVENT_OVERFLOW:
+		dev_dbg(dwc->dev, "Overflow\n");
+		break;
+	default:
+		dev_dbg(dwc->dev, "UNKNOWN IRQ %d\n", event->type);
+	}
+}
+
+static void dwc3_process_event_entry(struct dwc3 *dwc,
+				     const union dwc3_event *event)
+{
+	if (!event->type.is_devspec)
+		dwc3_endpoint_interrupt(dwc, &event->depevt);
+	else if (event->type.type == DWC3_EVENT_TYPE_DEV)
+		dwc3_gadget_interrupt(dwc, &event->devt);
+}
+
+static void dwc3_gadget_poll(struct usb_gadget * g)
+{
+	struct dwc3 *dwc = gadget_to_dwc(g);
+	struct dwc3_event_buffer *evt = dwc->ev_buf;
+	u32 amount;
+	u32 count;
+	void *buf;
+	int pos = 0;
+
+	count = dwc3_readl(dwc->regs, DWC3_GEVNTCOUNT(0));
+	count &= DWC3_GEVNTCOUNT_MASK;
+	if (!count)
+		return;
+
+	buf = xzalloc(count);
+
+	amount = min(count, evt->length - evt->lpos);
+	memcpy(buf, evt->buf + evt->lpos, amount);
+
+	if (amount < count)
+		memcpy(buf + amount, evt->buf, count - amount);
+
+	evt->lpos = (evt->lpos + count) % evt->length;
+
+	dwc3_writel(dwc->regs, DWC3_GEVNTCOUNT(0), count);
+
+	while (count > 0) {
+		union dwc3_event event;
+
+		event.raw = *(u32 *)(buf + pos);
+
+		dwc3_process_event_entry(dwc, &event);
+
+		count -= 4;
+		pos += 4;
+	}
+
+	free(buf);
+}
+
+/**
+ * dwc3_gadget_init - Initializes gadget related registers
+ * @dwc: pointer to our controller context structure
+ *
+ * Returns 0 on success otherwise negative errno.
+ */
+int dwc3_gadget_init(struct dwc3 *dwc)
+{
+	int ret;
+
+	dwc->ep0_trb = dma_alloc_coherent(sizeof(*dwc->ep0_trb) * 2,
+					 &dwc->ep0_trb_addr);
+	if (!dwc->ep0_trb) {
+		dev_err(dwc->dev, "failed to allocate ep0 trb\n");
+		ret = -ENOMEM;
+		goto err1;
+	}
+
+	dwc->setup_buf = xzalloc(DWC3_EP0_SETUP_SIZE);
+	if (!dwc->setup_buf) {
+		ret = -ENOMEM;
+		goto err2;
+	}
+
+	dwc->bounce = dma_alloc_coherent(DWC3_BOUNCE_SIZE,
+					&dwc->bounce_addr);
+	if (!dwc->bounce) {
+		dev_err(dwc->dev, "failed to allocate ep0 bounce buffer\n");
+		ret = -ENOMEM;
+		goto err3;
+	}
+
+	dwc->gadget.ops	= &dwc3_gadget_ops;
+	dwc->gadget.max_speed	= USB_SPEED_SUPER;
+	dwc->gadget.speed	= USB_SPEED_UNKNOWN;
+	dwc->gadget.name	= "dwc3-gadget";
+
+	/*
+	 * Per databook, DWC3 needs buffer size to be aligned to MaxPacketSize
+	 * on ep out.
+	 */
+	dwc->gadget.quirk_ep_out_aligned_size = true;
+
+	if (dwc->revision < DWC3_REVISION_220A &&
+	    !dwc->dis_metastability_quirk)
+		dev_info(dwc->dev, "changing max_speed on rev %08x\n",
+				dwc->revision);
+
+	dwc->gadget.max_speed = dwc->maximum_speed;
+
+	/*
+	 * REVISIT: Here we should clear all pending IRQs to be
+	 * sure we're starting from a well known location.
+	 */
+
+	ret = dwc3_gadget_init_endpoints(dwc, dwc->num_eps);
+	if (ret)
+		goto err4;
+
+	ret = usb_add_gadget_udc((struct device_d *)dwc->dev, &dwc->gadget);
+	if (ret) {
+		dev_err(dwc->dev, "failed to register udc\n");
+		goto err4;
+	}
+
+	dwc3_gadget_set_speed(dwc, dwc->maximum_speed);
+
+	return 0;
+
+err4:
+	dwc3_gadget_free_endpoints(dwc);
+err3:
+	dma_free_coherent(dwc->bounce, 0, DWC3_BOUNCE_SIZE);
+
+err2:
+	kfree(dwc->setup_buf);
+
+err1:
+	dma_free_coherent(dwc->ep0_trb, 0, sizeof(*dwc->ep0_trb) * 2);
+
+	return ret;
+}
diff --git a/drivers/usb/dwc3/gadget.h b/drivers/usb/dwc3/gadget.h
new file mode 100644
index 000000000000..3ce748c0b4cc
--- /dev/null
+++ b/drivers/usb/dwc3/gadget.h
@@ -0,0 +1,127 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/**
+ * gadget.h - DesignWare USB3 DRD Gadget Header
+ *
+ * Copyright (C) 2015 Texas Instruments Incorporated - http://www.ti.com
+ *
+ * Authors: Felipe Balbi <balbi@ti.com>,
+ *	    Sebastian Andrzej Siewior <bigeasy@linutronix.de>
+ *
+ * Taken from Linux Kernel v3.19-rc1 (drivers/usb/dwc3/gadget.h) and ported
+ * to uboot.
+ *
+ * commit 7a60855972 : usb: dwc3: gadget: fix set_halt() bug with pending
+		       transfers
+ *
+ */
+
+#ifndef __DRIVERS_USB_DWC3_GADGET_H
+#define __DRIVERS_USB_DWC3_GADGET_H
+
+#include <usb/gadget.h>
+#include <linux/list.h>
+#include "io.h"
+
+struct dwc3;
+#define to_dwc3_ep(ep)		(container_of(ep, struct dwc3_ep, endpoint))
+#define gadget_to_dwc(g)	(container_of(g, struct dwc3, gadget))
+
+/* DEPCFG parameter 1 */
+#define DWC3_DEPCFG_INT_NUM(n)		((n) << 0)
+#define DWC3_DEPCFG_XFER_COMPLETE_EN	(1 << 8)
+#define DWC3_DEPCFG_XFER_IN_PROGRESS_EN (1 << 9)
+#define DWC3_DEPCFG_XFER_NOT_READY_EN	(1 << 10)
+#define DWC3_DEPCFG_FIFO_ERROR_EN	(1 << 11)
+#define DWC3_DEPCFG_STREAM_EVENT_EN	(1 << 13)
+#define DWC3_DEPCFG_BINTERVAL_M1(n)	((n) << 16)
+#define DWC3_DEPCFG_STREAM_CAPABLE	(1 << 24)
+#define DWC3_DEPCFG_EP_NUMBER(n)	((n) << 25)
+#define DWC3_DEPCFG_BULK_BASED		(1 << 30)
+#define DWC3_DEPCFG_FIFO_BASED		(1 << 31)
+
+/* DEPCFG parameter 0 */
+#define DWC3_DEPCFG_EP_TYPE(n)		((n) << 1)
+#define DWC3_DEPCFG_MAX_PACKET_SIZE(n)	((n) << 3)
+#define DWC3_DEPCFG_FIFO_NUMBER(n)	((n) << 17)
+#define DWC3_DEPCFG_BURST_SIZE(n)	((n) << 22)
+#define DWC3_DEPCFG_DATA_SEQ_NUM(n)	((n) << 26)
+/* This applies for core versions earlier than 1.94a */
+#define DWC3_DEPCFG_IGN_SEQ_NUM	(1 << 31)
+/* These apply for core versions 1.94a and later */
+#define DWC3_DEPCFG_ACTION_INIT	(0 << 30)
+#define DWC3_DEPCFG_ACTION_RESTORE	(1 << 30)
+#define DWC3_DEPCFG_ACTION_MODIFY	(2 << 30)
+
+/* DEPXFERCFG parameter 0 */
+#define DWC3_DEPXFERCFG_NUM_XFER_RES(n)	((n) & 0xffff)
+
+/* -------------------------------------------------------------------------- */
+
+#define to_dwc3_request(r)	(container_of(r, struct dwc3_request, request))
+
+static inline struct dwc3_request *next_request(struct list_head *list)
+{
+	if (list_empty(list))
+		return NULL;
+
+	return list_first_entry(list, struct dwc3_request, list);
+}
+
+/**
+ * dwc3_gadget_move_started_request - move @req to the started_list
+ * @req: the request to be moved
+ *
+ * Caller should take care of locking. This function will move @req from its
+ * current list to the endpoint's started_list.
+ */
+static inline void dwc3_gadget_move_started_request(struct dwc3_request *req)
+{
+	struct dwc3_ep *dep = req->dep;
+
+	req->status = DWC3_REQUEST_STATUS_STARTED;
+	list_move_tail(&req->list, &dep->started_list);
+}
+
+/**
+ * dwc3_gadget_move_cancelled_request - move @req to the cancelled_list
+ * @req: the request to be moved
+ *
+ * Caller should take care of locking. This function will move @req from its
+ * current list to the endpoint's cancelled_list.
+ */
+static inline void dwc3_gadget_move_cancelled_request(struct dwc3_request *req)
+{
+	struct dwc3_ep *dep = req->dep;
+
+	req->status = DWC3_REQUEST_STATUS_CANCELLED;
+	list_move_tail(&req->list, &dep->cancelled_list);
+}
+
+void dwc3_gadget_giveback(struct dwc3_ep *dep, struct dwc3_request *req,
+		int status);
+
+void dwc3_ep0_interrupt(struct dwc3 *dwc,
+		const struct dwc3_event_depevt *event);
+void dwc3_ep0_out_start(struct dwc3 *dwc);
+int __dwc3_gadget_ep0_set_halt(struct usb_ep *ep, int value);
+int dwc3_gadget_ep0_set_halt(struct usb_ep *ep, int value);
+int dwc3_gadget_ep0_queue(struct usb_ep *ep, struct usb_request *request);
+int __dwc3_gadget_ep_set_halt(struct dwc3_ep *dep, int value, int protocol);
+void dwc3_gadget_handle_interrupt(struct dwc3 *dwc);
+
+/**
+ * dwc3_gadget_ep_get_transfer_index - Gets transfer index from HW
+ * @dep: dwc3 endpoint
+ *
+ * Caller should take care of locking. Returns the transfer resource
+ * index for a given endpoint.
+ */
+static inline void dwc3_gadget_ep_get_transfer_index(struct dwc3_ep *dep)
+{
+	u32 res_id;
+
+	res_id = dwc3_readl(dep->regs, DWC3_DEPCMD);
+	dep->resource_index = DWC3_DEPCMD_GET_RSC_IDX(res_id);
+}
+
+#endif /* __DRIVERS_USB_DWC3_GADGET_H */
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
