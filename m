Delivery-date: Mon, 20 Mar 2023 16:33:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHVR-007zsO-G8
	for lore@lore.pengutronix.de; Mon, 20 Mar 2023 16:33:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHVG-0002ev-Gs
	for lore@pengutronix.de; Mon, 20 Mar 2023 16:33:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZkCWcIc7g0ofrvkaYPwztGJn0iKau9JZVIoQPoaOEh8=; b=2tFxMeAKL9NF32ARCgKs9mI89z
	Poi+2GTaN+u1CZZ9l00zbBH0PbQvDz6Ej2oMQ/Y1SR6W9Hzz6a5je7HYChzJfC5dMx79xBogA/uR+
	hMICSWV/0GTmzSKNgqB60EDuFl2C4XyCNSkC/9xPCBlwf2rSZiC+y4t/FamBSbZ39z340mba4sHYx
	eylbrgDpPJfaQsNnbeElzxL6Of+j5YrtfaBmvfo7g/Rf4ssH/KEMbm/9L7/pBccpAY/eRqKS7vBRN
	RJCmPvoIFrtiS4nw5fZ0D3myRegRj9WwP3B9N3HpspC0iTgObtjPi2W5L5OsjnZx5ioX/dRUhCWDs
	b52P83uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSk-009Y35-1q;
	Mon, 20 Mar 2023 15:30:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSL-009Xfx-1E
	for barebox@lists.infradead.org;
	Mon, 20 Mar 2023 15:30:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSF-0000rZ-25; Mon, 20 Mar 2023 16:29:47 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSE-005UZX-Bn; Mon, 20 Mar 2023 16:29:46 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSB-00Dc2K-L0; Mon, 20 Mar 2023 16:29:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Mar 2023 16:29:36 +0100
Message-Id: <20230320152941.3155428-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230320152941.3155428-1-s.hauer@pengutronix.de>
References: <20230320152941.3155428-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/18] usb: dwc3: sync with Linux-6.3-rc2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Our DWC3 driver is based on a relatively old Kernel driver. Although
it is updated from Linux-5.2 once, it still shows traces of an U-Boot
driver taken from Linux-3.19. The driver misbehaves in gadget mode,
like for example it gets stuck when the USB cable is unplugged and
plugged again.

Do a fresh port from Linux-6.3-rc2.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/dwc3/core.c   |  678 ++++++---
 drivers/usb/dwc3/core.h   |  503 ++++---
 drivers/usb/dwc3/debug.h  |  356 +----
 drivers/usb/dwc3/ep0.c    |  471 +++----
 drivers/usb/dwc3/gadget.c | 2745 +++++++++++++++++++++++++++----------
 drivers/usb/dwc3/gadget.h |  102 +-
 drivers/usb/dwc3/host.c   |    4 +
 7 files changed, 3207 insertions(+), 1652 deletions(-)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index a3388d4dd6..314346fd31 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -1,8 +1,8 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/**
+// SPDX-License-Identifier: GPL-2.0
+/*
  * core.c - DesignWare USB3 DRD Controller Core file
  *
- * Copyright (C) 2010-2011 Texas Instruments Incorporated - http://www.ti.com
+ * Copyright (C) 2010-2011 Texas Instruments Incorporated - https://www.ti.com
  *
  * Authors: Felipe Balbi <balbi@ti.com>,
  *	    Sebastian Andrzej Siewior <bigeasy@linutronix.de>
@@ -16,10 +16,11 @@
 #include <init.h>
 #include <linux/reset.h>
 
-#include "gadget.h"
 #include "core.h"
+#include "gadget.h"
 #include "io.h"
 
+#include "debug.h"
 
 #define DWC3_DEFAULT_AUTOSUSPEND_DELAY	5000 /* ms */
 
@@ -67,8 +68,10 @@ static int dwc3_get_dr_mode(struct dwc3 *dwc)
 		 * mode. If the controller supports DRD but the dr_mode is not
 		 * specified or set to OTG, then set the mode to peripheral.
 		 */
-		if (mode == USB_DR_MODE_OTG &&
-		    dwc->revision >= DWC3_REVISION_330A)
+		if (mode == USB_DR_MODE_OTG && !dwc->edev &&
+		    (!IS_ENABLED(CONFIG_USB_ROLE_SWITCH) ||
+		     !of_property_read_bool(dwc->dev->of_node, "usb-role-switch")) &&
+		    !DWC3_VER_IS_PRIOR(DWC3, 330A))
 			mode = USB_DR_MODE_PERIPHERAL;
 	}
 
@@ -95,25 +98,28 @@ void dwc3_set_prtcap(struct dwc3 *dwc, u32 mode)
 	dwc->current_dr_role = mode;
 }
 
+u32 dwc3_core_fifo_space(struct dwc3_ep *dep, u8 type)
+{
+	struct dwc3		*dwc = dep->dwc;
+	u32			reg;
+
+	dwc3_writel(dwc->regs, DWC3_GDBGFIFOSPACE,
+			DWC3_GDBGFIFOSPACE_NUM(dep->number) |
+			DWC3_GDBGFIFOSPACE_TYPE(type));
+
+	reg = dwc3_readl(dwc->regs, DWC3_GDBGFIFOSPACE);
+
+	return DWC3_GDBGFIFOSPACE_SPACE_AVAILABLE(reg);
+}
+
 /**
  * dwc3_core_soft_reset - Issues core soft reset and PHY reset
  * @dwc: pointer to our context structure
  */
-static int dwc3_core_soft_reset(struct dwc3 *dwc)
+int dwc3_core_soft_reset(struct dwc3 *dwc)
 {
 	u32		reg;
 	int		retries = 1000;
-	int		ret;
-
-	ret = phy_init(dwc->usb2_generic_phy);
-	if (ret < 0)
-		return ret;
-
-	ret = phy_init(dwc->usb3_generic_phy);
-	if (ret < 0) {
-		phy_exit(dwc->usb2_generic_phy);
-		return ret;
-	}
 
 	/*
 	 * We're resetting only the device side because, if we're in host mode,
@@ -125,33 +131,94 @@ static int dwc3_core_soft_reset(struct dwc3 *dwc)
 
 	reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 	reg |= DWC3_DCTL_CSFTRST;
-	dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+	reg &= ~DWC3_DCTL_RUN_STOP;
+	dwc3_gadget_dctl_write_safe(dwc, reg);
+
+	/*
+	 * For DWC_usb31 controller 1.90a and later, the DCTL.CSFRST bit
+	 * is cleared only after all the clocks are synchronized. This can
+	 * take a little more than 50ms. Set the polling rate at 20ms
+	 * for 10 times instead.
+	 */
+	if (DWC3_VER_IS_WITHIN(DWC31, 190A, ANY) || DWC3_IP_IS(DWC32))
+		retries = 10;
 
 	do {
 		reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 		if (!(reg & DWC3_DCTL_CSFTRST))
 			goto done;
 
-		udelay(1);
+		if (DWC3_VER_IS_WITHIN(DWC31, 190A, ANY) || DWC3_IP_IS(DWC32))
+			mdelay(20);
+		else
+			udelay(1);
 	} while (--retries);
 
-	phy_exit(dwc->usb3_generic_phy);
-	phy_exit(dwc->usb2_generic_phy);
-
+	dev_warn(dwc->dev, "DWC3 controller soft reset failed.\n");
 	return -ETIMEDOUT;
 
 done:
 	/*
-	 * For DWC_usb31 controller, once DWC3_DCTL_CSFTRST bit is cleared,
-	 * we must wait at least 50ms before accessing the PHY domain
-	 * (synchronization delay). DWC_usb31 programming guide section 1.3.2.
+	 * For DWC_usb31 controller 1.80a and prior, once DCTL.CSFRST bit
+	 * is cleared, we must wait at least 50ms before accessing the PHY
+	 * domain (synchronization delay).
 	 */
-	if (dwc3_is_usb31(dwc))
+	if (DWC3_VER_IS_WITHIN(DWC31, ANY, 180A))
 		mdelay(50);
 
 	return 0;
 }
 
+/*
+ * dwc3_frame_length_adjustment - Adjusts frame length if required
+ * @dwc3: Pointer to our controller context structure
+ */
+static void dwc3_frame_length_adjustment(struct dwc3 *dwc)
+{
+	u32 reg;
+	u32 dft;
+
+	if (DWC3_VER_IS_PRIOR(DWC3, 250A))
+		return;
+
+	if (dwc->fladj == 0)
+		return;
+
+	reg = dwc3_readl(dwc->regs, DWC3_GFLADJ);
+	dft = reg & DWC3_GFLADJ_30MHZ_MASK;
+	if (dft != dwc->fladj) {
+		reg &= ~DWC3_GFLADJ_30MHZ_MASK;
+		reg |= DWC3_GFLADJ_30MHZ_SDBND_SEL | dwc->fladj;
+		dwc3_writel(dwc->regs, DWC3_GFLADJ, reg);
+	}
+}
+
+/**
+ * dwc3_ref_clk_period - Reference clock period configuration
+ *		Default reference clock period depends on hardware
+ *		configuration. For systems with reference clock that differs
+ *		from the default, this will set clock period in DWC3_GUCTL
+ *		register.
+ * @dwc: Pointer to our controller context structure
+ */
+static void dwc3_ref_clk_period(struct dwc3 *dwc)
+{
+	u32 reg;
+	u32 dft;
+
+	if (DWC3_VER_IS_PRIOR(DWC3, 250A))
+		return;
+
+	if (dwc->fladj == 0)
+		return;
+
+	reg = dwc3_readl(dwc->regs, DWC3_GFLADJ);
+	dft = reg & DWC3_GFLADJ_30MHZ_MASK;
+	reg &= ~DWC3_GFLADJ_30MHZ_MASK;
+	reg |= DWC3_GFLADJ_30MHZ_SDBND_SEL | dwc->fladj;
+	dwc3_writel(dwc->regs, DWC3_GFLADJ, reg);
+}
+
 /**
  * dwc3_free_one_event_buffer - Frees one event buffer
  * @dwc: Pointer to our controller context structure
@@ -160,7 +227,7 @@ done:
 static void dwc3_free_one_event_buffer(struct dwc3 *dwc,
 		struct dwc3_event_buffer *evt)
 {
-	dma_free_coherent(evt->buf, 0, sizeof(dma_addr_t));
+	dma_free_coherent(evt->buf, evt->dma, evt->length);
 }
 
 /**
@@ -172,16 +239,20 @@ static void dwc3_free_one_event_buffer(struct dwc3 *dwc,
  * otherwise ERR_PTR(errno).
  */
 static struct dwc3_event_buffer *dwc3_alloc_one_event_buffer(struct dwc3 *dwc,
-		unsigned length)
+		unsigned int length)
 {
 	struct dwc3_event_buffer	*evt;
 
-	evt = xzalloc(sizeof(*evt));
+	evt = kzalloc(sizeof(*evt), GFP_KERNEL);
 	if (!evt)
 		return ERR_PTR(-ENOMEM);
 
 	evt->dwc	= dwc;
 	evt->length	= length;
+	evt->cache	= kzalloc(length, GFP_KERNEL);
+	if (!evt->cache)
+		return ERR_PTR(-ENOMEM);
+
 	evt->buf	= dma_alloc_coherent(length, &evt->dma);
 	if (!evt->buf)
 		return ERR_PTR(-ENOMEM);
@@ -210,7 +281,7 @@ static void dwc3_free_event_buffers(struct dwc3 *dwc)
  * Returns 0 on success otherwise negative errno. In the error case, dwc
  * may contain some buffers allocated but not all which were requested.
  */
-static int dwc3_alloc_event_buffers(struct dwc3 *dwc, unsigned length)
+static int dwc3_alloc_event_buffers(struct dwc3 *dwc, unsigned int length)
 {
 	struct dwc3_event_buffer *evt;
 
@@ -230,7 +301,7 @@ static int dwc3_alloc_event_buffers(struct dwc3 *dwc, unsigned length)
  *
  * Returns 0 on success otherwise negative errno.
  */
-static int dwc3_event_buffers_setup(struct dwc3 *dwc)
+int dwc3_event_buffers_setup(struct dwc3 *dwc)
 {
 	struct dwc3_event_buffer	*evt;
 
@@ -247,8 +318,7 @@ static int dwc3_event_buffers_setup(struct dwc3 *dwc)
 	return 0;
 }
 
-
-static void dwc3_event_buffers_cleanup(struct dwc3 *dwc)
+void dwc3_event_buffers_cleanup(struct dwc3 *dwc)
 {
 	struct dwc3_event_buffer	*evt;
 
@@ -291,11 +361,15 @@ static int dwc3_setup_scratch_buffers(struct dwc3 *dwc)
 	if (!dwc->nr_scratch)
 		return 0;
 
-	scratch_addr = dma_map_single(dwc->dev, dwc->scratchbuf,
-				      dwc->nr_scratch * DWC3_SCRATCHBUF_SIZE,
-				      DMA_BIDIRECTIONAL);
-	if (dma_mapping_error(dwc->dev, scratch_addr)) {
-		dev_err(dwc->dev, "failed to map scratch buffer\n");
+	 /* should never fall here */
+	if (!WARN_ON(dwc->scratchbuf))
+		return 0;
+
+	scratch_addr = dma_map_single(dwc->sysdev, dwc->scratchbuf,
+			dwc->nr_scratch * DWC3_SCRATCHBUF_SIZE,
+			DMA_BIDIRECTIONAL);
+	if (dma_mapping_error(dwc->sysdev, scratch_addr)) {
+		dev_err(dwc->sysdev, "failed to map scratch buffer\n");
 		ret = -EFAULT;
 		goto err0;
 	}
@@ -319,33 +393,28 @@ static int dwc3_setup_scratch_buffers(struct dwc3 *dwc)
 	return 0;
 
 err1:
-	dma_unmap_single(dwc->dev, dwc->scratch_addr, dwc->nr_scratch *
-			 DWC3_SCRATCHBUF_SIZE, DMA_BIDIRECTIONAL);
+	dma_unmap_single(dwc->sysdev, dwc->scratch_addr, dwc->nr_scratch *
+			DWC3_SCRATCHBUF_SIZE, DMA_BIDIRECTIONAL);
 
 err0:
 	return ret;
 }
 
-/*
- * dwc3_frame_length_adjustment - Adjusts frame length if required
- * @dwc3: Pointer to our controller context structure
- */
-static void dwc3_frame_length_adjustment(struct dwc3 *dwc)
+static void dwc3_free_scratch_buffers(struct dwc3 *dwc)
 {
-	u32 reg;
-	u32 dft;
+	if (!dwc->has_hibernation)
+		return;
 
-	if (dwc->revision < DWC3_REVISION_250A)
+	if (!dwc->nr_scratch)
 		return;
 
-	if (dwc->fladj == 0)
+	 /* should never fall here */
+	if (!WARN_ON(dwc->scratchbuf))
 		return;
 
-	reg = dwc3_readl(dwc->regs, DWC3_GFLADJ);
-	dft = reg & DWC3_GFLADJ_30MHZ_MASK;
-	reg &= ~DWC3_GFLADJ_30MHZ_MASK;
-	reg |= DWC3_GFLADJ_30MHZ_SDBND_SEL | dwc->fladj;
-	dwc3_writel(dwc->regs, DWC3_GFLADJ, reg);
+	dma_unmap_single(dwc->sysdev, dwc->scratch_addr, dwc->nr_scratch *
+			DWC3_SCRATCHBUF_SIZE, DMA_BIDIRECTIONAL);
+	kfree(dwc->scratchbuf);
 }
 
 static void dwc3_core_num_eps(struct dwc3 *dwc)
@@ -368,6 +437,9 @@ static void dwc3_cache_hwparams(struct dwc3 *dwc)
 	parms->hwparams6 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS6);
 	parms->hwparams7 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS7);
 	parms->hwparams8 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS8);
+
+	if (DWC3_IP_IS(DWC32))
+		parms->hwparams9 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS9);
 }
 
 static int dwc3_core_ulpi_init(struct dwc3 *dwc)
@@ -396,8 +468,11 @@ static int dwc3_core_ulpi_init(struct dwc3 *dwc)
  */
 static int dwc3_phy_setup(struct dwc3 *dwc)
 {
+	unsigned int hw_mode;
 	u32 reg;
 
+	hw_mode = DWC3_GHWPARAMS0_MODE(dwc->hwparams.hwparams0);
+
 	reg = dwc3_readl(dwc->regs, DWC3_GUSB3PIPECTL(0));
 
 	/*
@@ -412,9 +487,17 @@ static int dwc3_phy_setup(struct dwc3 *dwc)
 	 * will be '0' when the core is reset. Application needs to set it
 	 * to '1' after the core initialization is completed.
 	 */
-	if (dwc->revision > DWC3_REVISION_194A)
+	if (!DWC3_VER_IS_WITHIN(DWC3, ANY, 194A))
 		reg |= DWC3_GUSB3PIPECTL_SUSPHY;
 
+	/*
+	 * For DRD controllers, GUSB3PIPECTL.SUSPENDENABLE must be cleared after
+	 * power-on reset, and it can be set after core initialization, which is
+	 * after device soft-reset during initialization.
+	 */
+	if (hw_mode == DWC3_GHWPARAMS0_MODE_DRD)
+		reg &= ~DWC3_GUSB3PIPECTL_SUSPHY;
+
 	if (dwc->u2ss_inp3_quirk)
 		reg |= DWC3_GUSB3PIPECTL_U2SSINP3OK;
 
@@ -465,9 +548,8 @@ static int dwc3_phy_setup(struct dwc3 *dwc)
 			if (!(reg & DWC3_GUSB2PHYCFG_ULPI_UTMI))
 				break;
 		}
-		/* FALLTHROUGH */
+		fallthrough;
 	case DWC3_GHWPARAMS3_HSPHY_IFC_ULPI:
-		/* FALLTHROUGH */
 	default:
 		break;
 	}
@@ -495,9 +577,17 @@ static int dwc3_phy_setup(struct dwc3 *dwc)
 	 * be '0' when the core is reset. Application needs to set it to
 	 * '1' after the core initialization is completed.
 	 */
-	if (dwc->revision > DWC3_REVISION_194A)
+	if (!DWC3_VER_IS_WITHIN(DWC3, ANY, 194A))
 		reg |= DWC3_GUSB2PHYCFG_SUSPHY;
 
+	/*
+	 * For DRD controllers, GUSB2PHYCFG.SUSPHY must be cleared after
+	 * power-on reset, and it can be set after core initialization, which is
+	 * after device soft-reset during initialization.
+	 */
+	if (hw_mode == DWC3_GHWPARAMS0_MODE_DRD)
+		reg &= ~DWC3_GUSB2PHYCFG_SUSPHY;
+
 	if (dwc->dis_u2_susphy_quirk)
 		reg &= ~DWC3_GUSB2PHYCFG_SUSPHY;
 
@@ -506,7 +596,7 @@ static int dwc3_phy_setup(struct dwc3 *dwc)
 	else
 		reg |= DWC3_GUSB2PHYCFG_ENBLSLPM;
 
-	if (dwc->dis_u2_freeclk_exists_quirk)
+	if (dwc->dis_u2_freeclk_exists_quirk || dwc->gfladj_refclk_lpm_sel)
 		reg &= ~DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS;
 
 	dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
@@ -518,14 +608,17 @@ static void dwc3_core_exit(struct dwc3 *dwc)
 {
 	dwc3_event_buffers_cleanup(dwc);
 
-	phy_exit(dwc->usb2_generic_phy);
-	phy_exit(dwc->usb3_generic_phy);
-
+	usb_phy_set_suspend(dwc->usb2_phy, 1);
+	usb_phy_set_suspend(dwc->usb3_phy, 1);
 	phy_power_off(dwc->usb2_generic_phy);
 	phy_power_off(dwc->usb3_generic_phy);
-	clk_bulk_disable(dwc->num_clks, dwc->clks);
 
-	dwc3_free_event_buffers(dwc);
+	usb_phy_shutdown(dwc->usb2_phy);
+	usb_phy_shutdown(dwc->usb3_phy);
+	phy_exit(dwc->usb2_generic_phy);
+	phy_exit(dwc->usb3_generic_phy);
+
+	reset_control_assert(dwc->reset);
 }
 
 static bool dwc3_core_is_valid(struct dwc3 *dwc)
@@ -533,15 +626,13 @@ static bool dwc3_core_is_valid(struct dwc3 *dwc)
 	u32 reg;
 
 	reg = dwc3_readl(dwc->regs, DWC3_GSNPSID);
+	dwc->ip = DWC3_GSNPS_ID(reg);
 
 	/* This should read as U3 followed by revision number */
-	if ((reg & DWC3_GSNPSID_MASK) == 0x55330000) {
-		/* Detected DWC_usb3 IP */
+	if (DWC3_IP_IS(DWC3)) {
 		dwc->revision = reg;
-	} else if ((reg & DWC3_GSNPSID_MASK) == 0x33310000) {
-		/* Detected DWC_usb31 IP */
+	} else if (DWC3_IP_IS(DWC31) || DWC3_IP_IS(DWC32)) {
 		dwc->revision = dwc3_readl(dwc->regs, DWC3_VER_NUMBER);
-		dwc->revision |= DWC3_REVISION_IS_DWC31;
 		dwc->version_type = dwc3_readl(dwc->regs, DWC3_VER_TYPE);
 	} else {
 		return false;
@@ -574,8 +665,7 @@ static void dwc3_core_setup_global_control(struct dwc3 *dwc)
 		 */
 		if ((dwc->dr_mode == USB_DR_MODE_HOST ||
 				dwc->dr_mode == USB_DR_MODE_OTG) &&
-				(dwc->revision >= DWC3_REVISION_210A &&
-				dwc->revision <= DWC3_REVISION_250A))
+				DWC3_VER_IS_WITHIN(DWC3, 210A, 250A))
 			reg |= DWC3_GCTL_DSBLCLKGTNG | DWC3_GCTL_SOFITPSYNC;
 		else
 			reg &= ~DWC3_GCTL_DSBLCLKGTNG;
@@ -601,8 +691,8 @@ static void dwc3_core_setup_global_control(struct dwc3 *dwc)
 		dwc->is_fpga = true;
 	}
 
-	WARN(dwc->disable_scramble_quirk && !dwc->is_fpga,
-	     "disable_scramble cannot be used on non-FPGA builds\n");
+	WARN_ONCE(dwc->disable_scramble_quirk && !dwc->is_fpga,
+			"disable_scramble cannot be used on non-FPGA builds\n");
 
 	if (dwc->disable_scramble_quirk && dwc->is_fpga)
 		reg |= DWC3_GCTL_DISSCRAMBLE;
@@ -618,13 +708,14 @@ static void dwc3_core_setup_global_control(struct dwc3 *dwc)
 	 * and falls back to high-speed mode which causes
 	 * the device to enter a Connect/Disconnect loop
 	 */
-	if (dwc->revision < DWC3_REVISION_190A)
+	if (DWC3_VER_IS_PRIOR(DWC3, 190A))
 		reg |= DWC3_GCTL_U2RSTECN;
 
 	dwc3_writel(dwc->regs, DWC3_GCTL, reg);
 }
 
 static int dwc3_core_get_phy(struct dwc3 *dwc);
+static int dwc3_core_ulpi_init(struct dwc3 *dwc);
 
 /* set global incr burst type configuration registers */
 static void dwc3_set_incr_burst_type(struct dwc3 *dwc)
@@ -636,7 +727,7 @@ static void dwc3_set_incr_burst_type(struct dwc3 *dwc)
 	u32 incrx_size;
 	u32 *vals;
 	u32 cfg;
-	int ntype = 0;
+	int ntype;
 	int ret;
 	int i;
 
@@ -649,24 +740,19 @@ static void dwc3_set_incr_burst_type(struct dwc3 *dwc)
 	 * result = 1, means INCRx burst mode supported.
 	 * result > 1, means undefined length burst mode supported.
 	 */
-	of_find_property(dev->of_node, "snps,incr-burst-type-adjustment",
-			       &ntype);
-
-	ntype /= sizeof(u32);
-
+	ntype = of_property_count_elems_of_size(dev->of_node,
+						"snps,incr-burst-type-adjustment",
+						sizeof(u32));
 	if (ntype <= 0)
 		return;
 
 	vals = kcalloc(ntype, sizeof(u32), GFP_KERNEL);
-	if (!vals) {
-		dev_err(dev, "Error to get memory\n");
+	if (!vals)
 		return;
-	}
 
 	/* Get INCR burst type, and parse it */
 	ret = of_property_read_u32_array(dev->of_node,
-					 "snps,incr-burst-type-adjustment",
-					 vals, ntype);
+			"snps,incr-burst-type-adjustment", vals, ntype);
 	if (ret) {
 		kfree(vals);
 		dev_err(dev, "Error to get property\n");
@@ -733,14 +819,11 @@ static void dwc3_set_incr_burst_type(struct dwc3 *dwc)
  */
 static int dwc3_core_init(struct dwc3 *dwc)
 {
+	unsigned int		hw_mode;
 	u32			reg;
 	int			ret;
 
-	if (!dwc3_core_is_valid(dwc)) {
-		dev_err(dwc->dev, "this is not a DesignWare USB3 DRD Core\n");
-		ret = -ENODEV;
-		goto err0;
-	}
+	hw_mode = DWC3_GHWPARAMS0_MODE(dwc->hwparams.hwparams0);
 
 	/*
 	 * Write Linux Version Code to our GUID register so it's easy to figure
@@ -748,21 +831,19 @@ static int dwc3_core_init(struct dwc3 *dwc)
 	 */
 	dwc3_writel(dwc->regs, DWC3_GUID, 0xdeadbeef);
 
-	/* Handle USB2.0-only core configuration */
-	if (DWC3_GHWPARAMS3_SSPHY_IFC(dwc->hwparams.hwparams3) ==
-			DWC3_GHWPARAMS3_SSPHY_IFC_DIS) {
-		if (dwc->maximum_speed == USB_SPEED_SUPER)
-			dwc->maximum_speed = USB_SPEED_HIGH;
-	}
-
 	ret = dwc3_phy_setup(dwc);
 	if (ret)
 		goto err0;
 
 	if (!dwc->ulpi_ready) {
 		ret = dwc3_core_ulpi_init(dwc);
-		if (ret)
+		if (ret) {
+			if (ret == -ETIMEDOUT) {
+				dwc3_core_soft_reset(dwc);
+				ret = -EPROBE_DEFER;
+			}
 			goto err0;
+		}
 		dwc->ulpi_ready = true;
 	}
 
@@ -773,34 +854,66 @@ static int dwc3_core_init(struct dwc3 *dwc)
 		dwc->phys_ready = true;
 	}
 
+	usb_phy_init(dwc->usb2_phy);
+	usb_phy_init(dwc->usb3_phy);
+	ret = phy_init(dwc->usb2_generic_phy);
+	if (ret < 0)
+		goto err0a;
+
+	ret = phy_init(dwc->usb3_generic_phy);
+	if (ret < 0) {
+		phy_exit(dwc->usb2_generic_phy);
+		goto err0a;
+	}
+
 	ret = dwc3_core_soft_reset(dwc);
 	if (ret)
-		goto err0a;
+		goto err1;
+
+	if (hw_mode == DWC3_GHWPARAMS0_MODE_DRD &&
+	    !DWC3_VER_IS_WITHIN(DWC3, ANY, 194A)) {
+		if (!dwc->dis_u3_susphy_quirk) {
+			reg = dwc3_readl(dwc->regs, DWC3_GUSB3PIPECTL(0));
+			reg |= DWC3_GUSB3PIPECTL_SUSPHY;
+			dwc3_writel(dwc->regs, DWC3_GUSB3PIPECTL(0), reg);
+		}
+
+		if (!dwc->dis_u2_susphy_quirk) {
+			reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
+			reg |= DWC3_GUSB2PHYCFG_SUSPHY;
+			dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
+		}
+	}
 
 	dwc3_core_setup_global_control(dwc);
 	dwc3_core_num_eps(dwc);
 
 	ret = dwc3_setup_scratch_buffers(dwc);
 	if (ret)
-		goto err0a;
+		goto err1;
 
 	/* Adjust Frame Length */
 	dwc3_frame_length_adjustment(dwc);
 
+	/* Adjust Reference Clock Period */
+	dwc3_ref_clk_period(dwc);
+
 	dwc3_set_incr_burst_type(dwc);
 
+	usb_phy_set_suspend(dwc->usb2_phy, 0);
+	usb_phy_set_suspend(dwc->usb3_phy, 0);
 	ret = phy_power_on(dwc->usb2_generic_phy);
 	if (ret < 0)
-		goto err1;
+		goto err2;
 
 	ret = phy_power_on(dwc->usb3_generic_phy);
 	if (ret < 0)
-		goto err2;
+		goto err3;
 
 	ret = dwc3_event_buffers_setup(dwc);
 	if (ret) {
 		dev_err(dwc->dev, "failed to setup event buffers\n");
-		goto err3;
+		goto err4;
 	}
 
 	/*
@@ -808,25 +921,57 @@ static int dwc3_core_init(struct dwc3 *dwc)
 	 * the DWC_usb3 controller. It is NOT available in the
 	 * DWC_usb31 controller.
 	 */
-	if (!dwc3_is_usb31(dwc) && dwc->revision >= DWC3_REVISION_310A) {
+	if (DWC3_VER_IS_WITHIN(DWC3, 310A, ANY)) {
 		reg = dwc3_readl(dwc->regs, DWC3_GUCTL2);
 		reg |= DWC3_GUCTL2_RST_ACTBITLATER;
 		dwc3_writel(dwc->regs, DWC3_GUCTL2, reg);
 	}
 
-	if (dwc->revision >= DWC3_REVISION_250A) {
+	/*
+	 * When configured in HOST mode, after issuing U3/L2 exit controller
+	 * fails to send proper CRC checksum in CRC5 feild. Because of this
+	 * behaviour Transaction Error is generated, resulting in reset and
+	 * re-enumeration of usb device attached. All the termsel, xcvrsel,
+	 * opmode becomes 0 during end of resume. Enabling bit 10 of GUCTL1
+	 * will correct this problem. This option is to support certain
+	 * legacy ULPI PHYs.
+	 */
+	if (dwc->resume_hs_terminations) {
+		reg = dwc3_readl(dwc->regs, DWC3_GUCTL1);
+		reg |= DWC3_GUCTL1_RESUME_OPMODE_HS_HOST;
+		dwc3_writel(dwc->regs, DWC3_GUCTL1, reg);
+	}
+
+	if (!DWC3_VER_IS_PRIOR(DWC3, 250A)) {
 		reg = dwc3_readl(dwc->regs, DWC3_GUCTL1);
 
 		/*
 		 * Enable hardware control of sending remote wakeup
 		 * in HS when the device is in the L1 state.
 		 */
-		if (dwc->revision >= DWC3_REVISION_290A)
+		if (!DWC3_VER_IS_PRIOR(DWC3, 290A))
 			reg |= DWC3_GUCTL1_DEV_L1_EXIT_BY_HW;
 
+		/*
+		 * Decouple USB 2.0 L1 & L2 events which will allow for
+		 * gadget driver to only receive U3/L2 suspend & wakeup
+		 * events and prevent the more frequent L1 LPM transitions
+		 * from interrupting the driver.
+		 */
+		if (!DWC3_VER_IS_PRIOR(DWC3, 300A))
+			reg |= DWC3_GUCTL1_DEV_DECOUPLE_L1L2_EVT;
+
 		if (dwc->dis_tx_ipgap_linecheck_quirk)
 			reg |= DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS;
 
+		if (dwc->parkmode_disable_ss_quirk)
+			reg |= DWC3_GUCTL1_PARKMODE_DISABLE_SS;
+
+		if (DWC3_VER_IS_WITHIN(DWC3, 290A, ANY) &&
+		    (dwc->maximum_speed == USB_SPEED_HIGH ||
+		     dwc->maximum_speed == USB_SPEED_FULL))
+			reg |= DWC3_GUCTL1_DEV_FORCE_20_CLK_FOR_30_CLK;
+
 		dwc3_writel(dwc->regs, DWC3_GUCTL1, reg);
 	}
 
@@ -850,7 +995,7 @@ static int dwc3_core_init(struct dwc3 *dwc)
 	 * Must config both number of packets and max burst settings to enable
 	 * RX and/or TX threshold.
 	 */
-	if (dwc3_is_usb31(dwc) && dwc->dr_mode == USB_DR_MODE_HOST) {
+	if (!DWC3_IP_IS(DWC3) && dwc->dr_mode == USB_DR_MODE_HOST) {
 		u8 rx_thr_num = dwc->rx_thr_num_pkt_prd;
 		u8 rx_maxburst = dwc->rx_max_burst_prd;
 		u8 tx_thr_num = dwc->tx_thr_num_pkt_prd;
@@ -885,14 +1030,25 @@ static int dwc3_core_init(struct dwc3 *dwc)
 
 	return 0;
 
-err3:
+err4:
 	phy_power_off(dwc->usb3_generic_phy);
-err2:
+
+err3:
 	phy_power_off(dwc->usb2_generic_phy);
+
+err2:
+	usb_phy_set_suspend(dwc->usb2_phy, 1);
+	usb_phy_set_suspend(dwc->usb3_phy, 1);
+
 err1:
+	usb_phy_shutdown(dwc->usb2_phy);
+	usb_phy_shutdown(dwc->usb3_phy);
 	phy_exit(dwc->usb2_generic_phy);
 	phy_exit(dwc->usb3_generic_phy);
+
 err0a:
+	dwc3_ulpi_exit(dwc);
+
 err0:
 	return ret;
 }
@@ -905,33 +1061,25 @@ static int dwc3_core_get_phy(struct dwc3 *dwc)
 	dwc->usb2_generic_phy = phy_get(dev, "usb2-phy");
 	if (IS_ERR(dwc->usb2_generic_phy)) {
 		ret = PTR_ERR(dwc->usb2_generic_phy);
-		if (ret == -ENOSYS || ret == -ENODEV) {
+		if (ret == -ENOSYS || ret == -ENODEV)
 			dwc->usb2_generic_phy = NULL;
-		} else if (ret == -EPROBE_DEFER) {
-			return ret;
-		} else {
-			dev_err(dev, "no usb2 phy configured\n");
-			return ret;
-		}
+		else
+			return dev_err_probe(dev, ret, "no usb2 phy configured\n");
 	}
 
 	dwc->usb3_generic_phy = phy_get(dev, "usb3-phy");
 	if (IS_ERR(dwc->usb3_generic_phy)) {
 		ret = PTR_ERR(dwc->usb3_generic_phy);
-		if (ret == -ENOSYS || ret == -ENODEV) {
+		if (ret == -ENOSYS || ret == -ENODEV)
 			dwc->usb3_generic_phy = NULL;
-		} else if (ret == -EPROBE_DEFER) {
-			return ret;
-		} else {
-			dev_err(dev, "no usb3 phy configured\n");
-			return ret;
-		}
+		else
+			return dev_err_probe(dev, ret, "no usb3 phy configured\n");
 	}
 
 	return 0;
 }
 
-static int dwc3_set_mode(void *ctx, enum usb_dr_mode mode)
+static int dwc3_set_dr_mode(void *ctx, enum usb_dr_mode mode)
 {
 	struct dwc3 *dwc = ctx;
 	struct device *dev = dwc->dev;
@@ -941,24 +1089,29 @@ static int dwc3_set_mode(void *ctx, enum usb_dr_mode mode)
 	case USB_DR_MODE_PERIPHERAL:
 		dwc3_set_prtcap(dwc, DWC3_GCTL_PRTCAP_DEVICE);
 
+//		if (dwc->usb2_phy)
+//			otg_set_vbus(dwc->usb2_phy->otg, false);
+		phy_set_mode(dwc->usb2_generic_phy, PHY_MODE_USB_DEVICE);
+		phy_set_mode(dwc->usb3_generic_phy, PHY_MODE_USB_DEVICE);
+
 		ret = dwc3_gadget_init(dwc);
-		if (ret) {
-			if (ret != -EPROBE_DEFER)
-				dev_err(dev, "failed to initialize gadget\n");
-			return ret;
-		}
+		if (ret)
+			return dev_err_probe(dev, ret, "failed to initialize gadget\n");
 		break;
 	case USB_DR_MODE_HOST:
 		dwc3_set_prtcap(dwc, DWC3_GCTL_PRTCAP_HOST);
 
+//		if (dwc->usb2_phy)
+//			otg_set_vbus(dwc->usb2_phy->otg, true);
+		phy_set_mode(dwc->usb2_generic_phy, PHY_MODE_USB_HOST);
+		phy_set_mode(dwc->usb3_generic_phy, PHY_MODE_USB_HOST);
+
 		ret = dwc3_host_init(dwc);
-		if (ret) {
-			if (ret != -EPROBE_DEFER)
-				dev_err(dev, "failed to initialize host\n");
-			return ret;
-		}
+		if (ret)
+			return dev_err_probe(dev, ret, "failed to initialize host\n");
 		break;
 	default:
+		dev_err(dev, "Unsupported mode of operation %d\n", dwc->dr_mode);
 		return -EINVAL;
 	}
 
@@ -968,9 +1121,27 @@ static int dwc3_set_mode(void *ctx, enum usb_dr_mode mode)
 static int dwc3_core_init_mode(struct dwc3 *dwc)
 {
 	if (dwc->dr_mode == USB_DR_MODE_OTG)
-		return usb_register_otg_device(dwc->dev, dwc3_set_mode, dwc);
+		return usb_register_otg_device(dwc->dev, dwc3_set_dr_mode, dwc);
 	else
-		return dwc3_set_mode(dwc, dwc->dr_mode);
+		return dwc3_set_dr_mode(dwc, dwc->dr_mode);
+}
+
+static void dwc3_core_exit_mode(struct dwc3 *dwc)
+{
+	switch (dwc->dr_mode) {
+	case USB_DR_MODE_PERIPHERAL:
+		dwc3_gadget_exit(dwc);
+		break;
+	case USB_DR_MODE_HOST:
+		dwc3_host_exit(dwc);
+		break;
+	default:
+		/* do nothing */
+		break;
+	}
+
+	/* de-assert DRVVBUS for HOST and OTG mode */
+	dwc3_set_prtcap(dwc, DWC3_GCTL_PRTCAP_DEVICE);
 }
 
 static void dwc3_get_properties(struct dwc3 *dwc)
@@ -979,9 +1150,14 @@ static void dwc3_get_properties(struct dwc3 *dwc)
 	u8			lpm_nyet_threshold;
 	u8			tx_de_emphasis;
 	u8			hird_threshold;
+	u8			rx_thr_num_pkt_prd = 0;
+	u8			rx_max_burst_prd = 0;
+	u8			tx_thr_num_pkt_prd = 0;
+	u8			tx_max_burst_prd = 0;
+	u8			tx_fifo_resize_max_num;
 
 	/* default to highest possible threshold */
-	lpm_nyet_threshold = 0xff;
+	lpm_nyet_threshold = 0xf;
 
 	/* default to -3.5dB de-emphasis */
 	tx_de_emphasis = 1;
@@ -992,41 +1168,142 @@ static void dwc3_get_properties(struct dwc3 *dwc)
 	 */
 	hird_threshold = 12;
 
+	/*
+	 * default to a TXFIFO size large enough to fit 6 max packets.  This
+	 * allows for systems with larger bus latencies to have some headroom
+	 * for endpoints that have a large bMaxBurst value.
+	 */
+	tx_fifo_resize_max_num = 6;
+
 	dwc->maximum_speed = of_usb_get_maximum_speed(dev->of_node, NULL);
+//	dwc->max_ssp_rate = usb_get_maximum_ssp_rate(dev);
 	dwc->dr_mode = of_usb_get_dr_mode(dev->of_node, NULL);
 	dwc->hsphy_mode = of_usb_get_phy_mode(dev->of_node, NULL);
 
+	dwc->sysdev_is_parent = of_property_read_bool(dev->of_node,
+				"linux,sysdev_is_parent");
+	if (dwc->sysdev_is_parent)
+		dwc->sysdev = dwc->dev->parent;
+	else
+		dwc->sysdev = dwc->dev;
+
+	dwc->has_lpm_erratum = of_property_read_bool(dev->of_node,
+				"snps,has-lpm-erratum");
+	of_property_read_u8(dev->of_node, "snps,lpm-nyet-threshold",
+				&lpm_nyet_threshold);
+	dwc->is_utmi_l1_suspend = of_property_read_bool(dev->of_node,
+				"snps,is-utmi-l1-suspend");
+	of_property_read_u8(dev->of_node, "snps,hird-threshold",
+				&hird_threshold);
+	dwc->dis_start_transfer_quirk = of_property_read_bool(dev->of_node,
+				"snps,dis-start-transfer-quirk");
+	dwc->usb3_lpm_capable = of_property_read_bool(dev->of_node,
+				"snps,usb3_lpm_capable");
+	dwc->usb2_lpm_disable = of_property_read_bool(dev->of_node,
+				"snps,usb2-lpm-disable");
+	dwc->usb2_gadget_lpm_disable = of_property_read_bool(dev->of_node,
+				"snps,usb2-gadget-lpm-disable");
+	of_property_read_u8(dev->of_node, "snps,rx-thr-num-pkt-prd",
+				&rx_thr_num_pkt_prd);
+	of_property_read_u8(dev->of_node, "snps,rx-max-burst-prd",
+				&rx_max_burst_prd);
+	of_property_read_u8(dev->of_node, "snps,tx-thr-num-pkt-prd",
+				&tx_thr_num_pkt_prd);
+	of_property_read_u8(dev->of_node, "snps,tx-max-burst-prd",
+				&tx_max_burst_prd);
+	dwc->do_fifo_resize = of_property_read_bool(dev->of_node,
+							"tx-fifo-resize");
+	if (dwc->do_fifo_resize)
+		of_property_read_u8(dev->of_node, "tx-fifo-max-num",
+					&tx_fifo_resize_max_num);
+
+	dwc->disable_scramble_quirk = of_property_read_bool(dev->of_node,
+				"snps,disable_scramble_quirk");
+	dwc->u2exit_lfps_quirk = of_property_read_bool(dev->of_node,
+				"snps,u2exit_lfps_quirk");
+	dwc->u2ss_inp3_quirk = of_property_read_bool(dev->of_node,
+				"snps,u2ss_inp3_quirk");
+	dwc->req_p1p2p3_quirk = of_property_read_bool(dev->of_node,
+				"snps,req_p1p2p3_quirk");
+	dwc->del_p1p2p3_quirk = of_property_read_bool(dev->of_node,
+				"snps,del_p1p2p3_quirk");
+	dwc->del_phy_power_chg_quirk = of_property_read_bool(dev->of_node,
+				"snps,del_phy_power_chg_quirk");
+	dwc->lfps_filter_quirk = of_property_read_bool(dev->of_node,
+				"snps,lfps_filter_quirk");
+	dwc->rx_detect_poll_quirk = of_property_read_bool(dev->of_node,
+				"snps,rx_detect_poll_quirk");
+	dwc->dis_u3_susphy_quirk = of_property_read_bool(dev->of_node,
+				"snps,dis_u3_susphy_quirk");
+	dwc->dis_u2_susphy_quirk = of_property_read_bool(dev->of_node,
+				"snps,dis_u2_susphy_quirk");
+	dwc->dis_enblslpm_quirk = of_property_read_bool(dev->of_node,
+				"snps,dis_enblslpm_quirk");
+	dwc->dis_u1_entry_quirk = of_property_read_bool(dev->of_node,
+				"snps,dis-u1-entry-quirk");
+	dwc->dis_u2_entry_quirk = of_property_read_bool(dev->of_node,
+				"snps,dis-u2-entry-quirk");
+	dwc->dis_rxdet_inp3_quirk = of_property_read_bool(dev->of_node,
+				"snps,dis_rxdet_inp3_quirk");
 	dwc->dis_u2_freeclk_exists_quirk = of_property_read_bool(dev->of_node,
-								 "snps,dis-u2-freeclk-exists-quirk");
+				"snps,dis-u2-freeclk-exists-quirk");
+	dwc->dis_del_phy_power_chg_quirk = of_property_read_bool(dev->of_node,
+				"snps,dis-del-phy-power-chg-quirk");
+	dwc->dis_tx_ipgap_linecheck_quirk = of_property_read_bool(dev->of_node,
+				"snps,dis-tx-ipgap-linecheck-quirk");
+	dwc->resume_hs_terminations = of_property_read_bool(dev->of_node,
+				"snps,resume-hs-terminations");
+	dwc->parkmode_disable_ss_quirk = of_property_read_bool(dev->of_node,
+				"snps,parkmode-disable-ss-quirk");
+	dwc->gfladj_refclk_lpm_sel = of_property_read_bool(dev->of_node,
+				"snps,gfladj-refclk-lpm-sel-quirk");
+
+	dwc->tx_de_emphasis_quirk = of_property_read_bool(dev->of_node,
+				"snps,tx_de_emphasis_quirk");
+	of_property_read_u8(dev->of_node, "snps,tx_de_emphasis",
+				&tx_de_emphasis);
+	of_property_read_string(dev->of_node, "snps,hsphy_interface",
+				    &dwc->hsphy_interface);
+	of_property_read_u32(dev->of_node, "snps,quirk-frame-length-adjustment",
+				 &dwc->fladj);
+	of_property_read_u32(dev->of_node, "snps,ref-clock-period-ns",
+				 &dwc->ref_clk_per);
+
+	dwc->dis_metastability_quirk = of_property_read_bool(dev->of_node,
+				"snps,dis_metastability_quirk");
+
+	dwc->dis_split_quirk = of_property_read_bool(dev->of_node,
+				"snps,dis-split-quirk");
+
 	dwc->lpm_nyet_threshold = lpm_nyet_threshold;
 	dwc->tx_de_emphasis = tx_de_emphasis;
 
-	if (of_get_property(dev->of_node, "snps,dis_rxdet_inp3_quirk",
-			    NULL))
-		dwc->dis_rxdet_inp3_quirk = 1;
+	dwc->hird_threshold = hird_threshold;
 
-	of_property_read_u32_array(dev->of_node,
-				   "snps,quirk-frame-length-adjustment",
-				   &dwc->fladj, 1);
+	dwc->rx_thr_num_pkt_prd = rx_thr_num_pkt_prd;
+	dwc->rx_max_burst_prd = rx_max_burst_prd;
 
-	dwc->hird_threshold = hird_threshold
-		| (dwc->is_utmi_l1_suspend << 4);
+	dwc->tx_thr_num_pkt_prd = tx_thr_num_pkt_prd;
+	dwc->tx_max_burst_prd = tx_max_burst_prd;
 
 	dwc->imod_interval = 0;
+
+	dwc->tx_fifo_resize_max_num = tx_fifo_resize_max_num;
 }
 
 /* check whether the core supports IMOD */
 bool dwc3_has_imod(struct dwc3 *dwc)
 {
-	return ((dwc3_is_usb3(dwc) &&
-		 dwc->revision >= DWC3_REVISION_300A) ||
-		(dwc3_is_usb31(dwc) &&
-		 dwc->revision >= DWC3_USB31_REVISION_120A));
+	return DWC3_VER_IS_WITHIN(DWC3, 300A, ANY) ||
+		DWC3_VER_IS_WITHIN(DWC31, 120A, ANY) ||
+		DWC3_IP_IS(DWC32);
 }
 
 static void dwc3_check_params(struct dwc3 *dwc)
 {
 	struct device *dev = dwc->dev;
+	unsigned int hwparam_gen =
+		DWC3_GHWPARAMS3_SSPHY_IFC(dwc->hwparams.hwparams3);
 
 	/* Check for proper value of imod_interval */
 	if (dwc->imod_interval && !dwc3_has_imod(dwc)) {
@@ -1042,54 +1319,85 @@ static void dwc3_check_params(struct dwc3 *dwc)
 	 * affected version.
 	 */
 	if (!dwc->imod_interval &&
-	    (dwc->revision == DWC3_REVISION_300A))
+	    DWC3_VER_IS(DWC3, 300A))
 		dwc->imod_interval = 1;
 
 	/* Check the maximum_speed parameter */
 	switch (dwc->maximum_speed) {
-	case USB_SPEED_LOW:
 	case USB_SPEED_FULL:
 	case USB_SPEED_HIGH:
+		break;
 	case USB_SPEED_SUPER:
+		if (hwparam_gen == DWC3_GHWPARAMS3_SSPHY_IFC_DIS)
+			dev_warn(dev, "UDC doesn't support Gen 1\n");
+		break;
 	case USB_SPEED_SUPER_PLUS:
+		if ((DWC3_IP_IS(DWC32) &&
+		     hwparam_gen == DWC3_GHWPARAMS3_SSPHY_IFC_DIS) ||
+		    (!DWC3_IP_IS(DWC32) &&
+		     hwparam_gen != DWC3_GHWPARAMS3_SSPHY_IFC_GEN2))
+			dev_warn(dev, "UDC doesn't support SSP\n");
 		break;
 	default:
 		dev_err(dev, "invalid maximum_speed parameter %d\n",
 			dwc->maximum_speed);
-		/* fall through */
+		fallthrough;
 	case USB_SPEED_UNKNOWN:
-		/* default to superspeed */
-		dwc->maximum_speed = USB_SPEED_SUPER;
-
-		/*
-		 * default to superspeed plus if we are capable.
-		 */
-		if (dwc3_is_usb31(dwc) &&
-		    (DWC3_GHWPARAMS3_SSPHY_IFC(dwc->hwparams.hwparams3) ==
-		     DWC3_GHWPARAMS3_SSPHY_IFC_GEN2))
+		switch (hwparam_gen) {
+		case DWC3_GHWPARAMS3_SSPHY_IFC_GEN2:
 			dwc->maximum_speed = USB_SPEED_SUPER_PLUS;
-
+			break;
+		case DWC3_GHWPARAMS3_SSPHY_IFC_GEN1:
+			if (DWC3_IP_IS(DWC32))
+				dwc->maximum_speed = USB_SPEED_SUPER_PLUS;
+			else
+				dwc->maximum_speed = USB_SPEED_SUPER;
+			break;
+		case DWC3_GHWPARAMS3_SSPHY_IFC_DIS:
+			dwc->maximum_speed = USB_SPEED_HIGH;
+			break;
+		default:
+			dwc->maximum_speed = USB_SPEED_SUPER;
+			break;
+		}
 		break;
 	}
-}
-
-static void dwc3_coresoft_reset(struct dwc3 *dwc)
-{
-	u32 reg;
-
-	reg = dwc3_readl(dwc->regs, DWC3_GCTL);
-	reg |= DWC3_GCTL_CORESOFTRESET;
-	dwc3_writel(dwc->regs, DWC3_GCTL, reg);
 
 	/*
-	 * Similar reset sequence in U-Boot has a 100ms delay here. In
-	 * practice reset sequence seem to work as expected even
-	 * without a delay.
+	 * Currently the controller does not have visibility into the HW
+	 * parameter to determine the maximum number of lanes the HW supports.
+	 * If the number of lanes is not specified in the device property, then
+	 * set the default to support dual-lane for DWC_usb32 and single-lane
+	 * for DWC_usb31 for super-speed-plus.
 	 */
-
-	reg = dwc3_readl(dwc->regs, DWC3_GCTL);
-	reg &= ~DWC3_GCTL_CORESOFTRESET;
-	dwc3_writel(dwc->regs, DWC3_GCTL, reg);
+	if (dwc->maximum_speed == USB_SPEED_SUPER_PLUS) {
+		switch (dwc->max_ssp_rate) {
+		case USB_SSP_GEN_2x1:
+			if (hwparam_gen == DWC3_GHWPARAMS3_SSPHY_IFC_GEN1)
+				dev_warn(dev, "UDC only supports Gen 1\n");
+			break;
+		case USB_SSP_GEN_1x2:
+		case USB_SSP_GEN_2x2:
+			if (DWC3_IP_IS(DWC31))
+				dev_warn(dev, "UDC only supports single lane\n");
+			break;
+		case USB_SSP_GEN_UNKNOWN:
+		default:
+			switch (hwparam_gen) {
+			case DWC3_GHWPARAMS3_SSPHY_IFC_GEN2:
+				if (DWC3_IP_IS(DWC32))
+					dwc->max_ssp_rate = USB_SSP_GEN_2x2;
+				else
+					dwc->max_ssp_rate = USB_SSP_GEN_2x1;
+				break;
+			case DWC3_GHWPARAMS3_SSPHY_IFC_GEN1:
+				if (DWC3_IP_IS(DWC32))
+					dwc->max_ssp_rate = USB_SSP_GEN_1x2;
+				break;
+			}
+			break;
+		}
+	}
 }
 
 static int dwc3_probe(struct device *dev)
@@ -1127,7 +1435,12 @@ static int dwc3_probe(struct device *dev)
 	mdelay(1);
 	reset_control_deassert(dwc->reset);
 
-	dwc3_coresoft_reset(dwc);
+	if (!dwc3_core_is_valid(dwc)) {
+		dev_err(dwc->dev, "this is not a DesignWare USB3 DRD Core\n");
+		return -ENODEV;
+	}
+
+	dwc3_core_soft_reset(dwc);
 
 	dwc3_cache_hwparams(dwc);
 
@@ -1165,8 +1478,11 @@ static void dwc3_remove(struct device *dev)
 {
 	struct dwc3 *dwc = dev->priv;
 
+	dwc3_core_exit_mode(dwc);
 	dwc3_core_exit(dwc);
 	clk_bulk_put(dwc->num_clks, dwc->clks);
+	dwc3_free_event_buffers(dwc);
+	dwc3_free_scratch_buffers(dwc);
 }
 
 static const struct of_device_id of_dwc3_match[] = {
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index 38001298b7..52853a4370 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -1,8 +1,8 @@
-// SPDX-License-Identifier: GPL-2.0-only
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * core.h - DesignWare USB3 DRD Core Header
  *
- * Copyright (C) 2010-2011 Texas Instruments Incorporated - http://www.ti.com
+ * Copyright (C) 2010-2011 Texas Instruments Incorporated - https://www.ti.com
  *
  * Authors: Felipe Balbi <balbi@ti.com>,
  *	    Sebastian Andrzej Siewior <bigeasy@linutronix.de>
@@ -15,6 +15,8 @@
 #include <linux/usb/usb.h>
 #include <linux/usb/phy.h>
 #include <linux/usb/gadget.h>
+#include <linux/mutex.h>
+#include <linux/completion.h>
 
 #define DWC3_MSG_MAX	500
 
@@ -40,7 +42,7 @@
 #define DWC3_DEVICE_EVENT_LINK_STATUS_CHANGE	3
 #define DWC3_DEVICE_EVENT_WAKEUP		4
 #define DWC3_DEVICE_EVENT_HIBER_REQ		5
-#define DWC3_DEVICE_EVENT_EOPF			6
+#define DWC3_DEVICE_EVENT_SUSPEND		6
 #define DWC3_DEVICE_EVENT_SOF			7
 #define DWC3_DEVICE_EVENT_ERRATIC_ERROR		9
 #define DWC3_DEVICE_EVENT_CMD_CMPL		10
@@ -55,6 +57,7 @@
 #define DWC3_GEVNTCOUNT_EHB	BIT(31)
 #define DWC3_GSNPSID_MASK	0xffff0000
 #define DWC3_GSNPSREV_MASK	0xffff
+#define DWC3_GSNPS_ID(p)	(((p) & DWC3_GSNPSID_MASK) >> 16)
 
 /* DWC3 registers memory space boundries */
 #define DWC3_XHCI_REGS_START		0x0
@@ -123,7 +126,9 @@
 #define DWC3_GEVNTCOUNT(n)	(0xc40c + ((n) * 0x10))
 
 #define DWC3_GHWPARAMS8		0xc600
+#define DWC3_GUCTL3		0xc60c
 #define DWC3_GFLADJ		0xc630
+#define DWC3_GHWPARAMS9		0xc6e0
 
 /* Device Registers */
 #define DWC3_DCFG		0xc700
@@ -133,6 +138,7 @@
 #define DWC3_DGCMDPAR		0xc710
 #define DWC3_DGCMD		0xc714
 #define DWC3_DALEPENA		0xc720
+#define DWC3_DCFG1		0xc740 /* DWC_usb32 only */
 
 #define DWC3_DEP_BASE(n)	(0xc800 + ((n) * 0x10))
 #define DWC3_DEPCMDPAR2		0x00
@@ -210,6 +216,7 @@
 
 /* Global Configuration Register */
 #define DWC3_GCTL_PWRDNSCALE(n)	((n) << 19)
+#define DWC3_GCTL_PWRDNSCALE_MASK	GENMASK(31, 19)
 #define DWC3_GCTL_U2RSTECN	BIT(16)
 #define DWC3_GCTL_RAMCLKSEL(x)	(((x) & DWC3_GCTL_CLK_MASK) << 6)
 #define DWC3_GCTL_CLK_BUS	(0)
@@ -236,8 +243,12 @@
 #define DWC3_GUCTL_HSTINAUTORETRY	BIT(14)
 
 /* Global User Control 1 Register */
+#define DWC3_GUCTL1_DEV_DECOUPLE_L1L2_EVT	BIT(31)
 #define DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS	BIT(28)
-#define DWC3_GUCTL1_DEV_L1_EXIT_BY_HW	BIT(24)
+#define DWC3_GUCTL1_DEV_FORCE_20_CLK_FOR_30_CLK	BIT(26)
+#define DWC3_GUCTL1_DEV_L1_EXIT_BY_HW		BIT(24)
+#define DWC3_GUCTL1_PARKMODE_DISABLE_SS		BIT(17)
+#define DWC3_GUCTL1_RESUME_OPMODE_HS_HOST	BIT(10)
 
 /* Global Status Register */
 #define DWC3_GSTS_OTG_IP	BIT(10)
@@ -268,6 +279,7 @@
 
 /* Global USB2 PHY Vendor Control Register */
 #define DWC3_GUSB2PHYACC_NEWREGREQ	BIT(25)
+#define DWC3_GUSB2PHYACC_DONE		BIT(24)
 #define DWC3_GUSB2PHYACC_BUSY		BIT(23)
 #define DWC3_GUSB2PHYACC_WRITE		BIT(22)
 #define DWC3_GUSB2PHYACC_ADDR(n)	(n << 16)
@@ -292,10 +304,14 @@
 
 /* Global TX Fifo Size Register */
 #define DWC31_GTXFIFOSIZ_TXFRAMNUM	BIT(15)		/* DWC_usb31 only */
-#define DWC31_GTXFIFOSIZ_TXFDEF(n)	((n) & 0x7fff)	/* DWC_usb31 only */
-#define DWC3_GTXFIFOSIZ_TXFDEF(n)	((n) & 0xffff)
+#define DWC31_GTXFIFOSIZ_TXFDEP(n)	((n) & 0x7fff)	/* DWC_usb31 only */
+#define DWC3_GTXFIFOSIZ_TXFDEP(n)	((n) & 0xffff)
 #define DWC3_GTXFIFOSIZ_TXFSTADDR(n)	((n) & 0xffff0000)
 
+/* Global RX Fifo Size Register */
+#define DWC31_GRXFIFOSIZ_RXFDEP(n)	((n) & 0x7fff)	/* DWC_usb31 only */
+#define DWC3_GRXFIFOSIZ_RXFDEP(n)	((n) & 0xffff)
+
 /* Global Event Size Registers */
 #define DWC3_GEVNTSIZ_INTMASK		BIT(31)
 #define DWC3_GEVNTSIZ_SIZE(n)		((n) & 0xffff)
@@ -346,18 +362,38 @@
 #define DWC3_GHWPARAMS6_SRPSUPPORT		BIT(10)
 #define DWC3_GHWPARAMS6_EN_FPGA			BIT(7)
 
+/* DWC_usb32 only */
+#define DWC3_GHWPARAMS6_MDWIDTH(n)		((n) & (0x3 << 8))
+
 /* Global HWPARAMS7 Register */
 #define DWC3_GHWPARAMS7_RAM1_DEPTH(n)	((n) & 0xffff)
 #define DWC3_GHWPARAMS7_RAM2_DEPTH(n)	(((n) >> 16) & 0xffff)
 
+/* Global HWPARAMS9 Register */
+#define DWC3_GHWPARAMS9_DEV_TXF_FLUSH_BYPASS	BIT(0)
+#define DWC3_GHWPARAMS9_DEV_MST			BIT(1)
+
 /* Global Frame Length Adjustment Register */
 #define DWC3_GFLADJ_30MHZ_SDBND_SEL		BIT(7)
 #define DWC3_GFLADJ_30MHZ_MASK			0x3f
+#define DWC3_GFLADJ_REFCLK_FLADJ_MASK		GENMASK(21, 8)
+#define DWC3_GFLADJ_REFCLK_LPM_SEL		BIT(23)
+#define DWC3_GFLADJ_240MHZDECR			GENMASK(30, 24)
+#define DWC3_GFLADJ_240MHZDECR_PLS1		BIT(31)
+
+/* Global User Control Register*/
+#define DWC3_GUCTL_REFCLKPER_MASK		0xffc00000
+#define DWC3_GUCTL_REFCLKPER_SEL		22
 
 /* Global User Control Register 2 */
 #define DWC3_GUCTL2_RST_ACTBITLATER		BIT(14)
 
+/* Global User Control Register 3 */
+#define DWC3_GUCTL3_SPLITDISABLE		BIT(14)
+
 /* Device Configuration Register */
+#define DWC3_DCFG_NUMLANES(n)	(((n) & 0x3) << 30) /* DWC_usb32 only */
+
 #define DWC3_DCFG_DEVADDR(addr)	((addr) << 3)
 #define DWC3_DCFG_DEVADDR_MASK	DWC3_DCFG_DEVADDR(0x7f)
 
@@ -366,13 +402,12 @@
 #define DWC3_DCFG_SUPERSPEED	(4 << 0)
 #define DWC3_DCFG_HIGHSPEED	(0 << 0)
 #define DWC3_DCFG_FULLSPEED	BIT(0)
-#define DWC3_DCFG_LOWSPEED	(2 << 0)
-#define DWC3_DCFG_FULLSPEED1	(3 << 0)
 
 #define DWC3_DCFG_NUMP_SHIFT	17
 #define DWC3_DCFG_NUMP(n)	(((n) >> DWC3_DCFG_NUMP_SHIFT) & 0x1f)
 #define DWC3_DCFG_NUMP_MASK	(0x1f << DWC3_DCFG_NUMP_SHIFT)
 #define DWC3_DCFG_LPM_CAP	BIT(22)
+#define DWC3_DCFG_IGNSTRMPP	BIT(23)
 
 /* Device Control Register */
 #define DWC3_DCTL_RUN_STOP	BIT(31)
@@ -394,8 +429,7 @@
 #define DWC3_DCTL_TRGTULST_SS_INACT	(DWC3_DCTL_TRGTULST(6))
 
 /* These apply for core versions 1.94a and later */
-#define DWC3_DCTL_LPM_ERRATA_MASK	DWC3_DCTL_LPM_ERRATA(0xf)
-#define DWC3_DCTL_LPM_ERRATA(n)		((n) << 20)
+#define DWC3_DCTL_NYET_THRES(n)		(((n) & 0xf) << 20)
 
 #define DWC3_DCTL_KEEP_CONNECT		BIT(19)
 #define DWC3_DCTL_L1_HIBER_EN		BIT(18)
@@ -425,7 +459,7 @@
 #define DWC3_DEVTEN_CMDCMPLTEN		BIT(10)
 #define DWC3_DEVTEN_ERRTICERREN		BIT(9)
 #define DWC3_DEVTEN_SOFEN		BIT(7)
-#define DWC3_DEVTEN_EOPFEN		BIT(6)
+#define DWC3_DEVTEN_U3L2L1SUSPEN	BIT(6)
 #define DWC3_DEVTEN_HIBERNATIONREQEVTEN	BIT(5)
 #define DWC3_DEVTEN_WKUPEVTEN		BIT(4)
 #define DWC3_DEVTEN_ULSTCNGEN		BIT(3)
@@ -433,6 +467,8 @@
 #define DWC3_DEVTEN_USBRSTEN		BIT(1)
 #define DWC3_DEVTEN_DISCONNEVTEN	BIT(0)
 
+#define DWC3_DSTS_CONNLANES(n)		(((n) >> 30) & 0x3) /* DWC_usb32 only */
+
 /* Device Status Register */
 #define DWC3_DSTS_DCNRD			BIT(29)
 
@@ -460,8 +496,6 @@
 #define DWC3_DSTS_SUPERSPEED		(4 << 0)
 #define DWC3_DSTS_HIGHSPEED		(0 << 0)
 #define DWC3_DSTS_FULLSPEED		BIT(0)
-#define DWC3_DSTS_LOWSPEED		(2 << 0)
-#define DWC3_DSTS_FULLSPEED1		(3 << 0)
 
 /* Device Generic Command Register */
 #define DWC3_DGCMD_SET_LMP		0x01
@@ -475,6 +509,7 @@
 #define DWC3_DGCMD_SELECTED_FIFO_FLUSH	0x09
 #define DWC3_DGCMD_ALL_FIFO_FLUSH	0x0a
 #define DWC3_DGCMD_SET_ENDPOINT_NRDY	0x0c
+#define DWC3_DGCMD_SET_ENDPOINT_PRIME	0x0d
 #define DWC3_DGCMD_RUN_SOC_BUS_LOOPBACK	0x10
 
 #define DWC3_DGCMD_STATUS(n)		(((n) >> 12) & 0x0F)
@@ -517,6 +552,9 @@
 /* The EP number goes 0..31 so ep0 is always out and ep1 is always in */
 #define DWC3_DALEPENA_EP(n)		BIT(n)
 
+/* DWC_usb32 DCFG1 config */
+#define DWC3_DCFG1_DIS_MST_ENH		BIT(1)
+
 #define DWC3_DEPCMD_TYPE_CONTROL	0
 #define DWC3_DEPCMD_TYPE_ISOC		1
 #define DWC3_DEPCMD_TYPE_BULK		2
@@ -602,16 +640,26 @@ struct dwc3_trb;
 /**
  * struct dwc3_event_buffer - Software event buffer representation
  * @buf: _THE_ buffer
+ * @cache: The buffer cache used in the threaded interrupt
  * @length: size of this buffer
  * @lpos: event offset
+ * @count: cache of last read event count register
+ * @flags: flags related to this event buffer
  * @dma: dma_addr_t
  * @dwc: pointer to DWC controller
  */
 struct dwc3_event_buffer {
 	void			*buf;
-	unsigned		length;
+	void			*cache;
+	unsigned int		length;
 	unsigned int		lpos;
+	unsigned int		count;
+	unsigned int		flags;
+
+#define DWC3_EVENT_PENDING	BIT(0)
+
 	dma_addr_t		dma;
+
 	struct dwc3		*dwc;
 };
 
@@ -622,57 +670,66 @@ struct dwc3_event_buffer {
 #define DWC3_EP_DIRECTION_RX	false
 
 #define DWC3_TRB_NUM		256
-#define DWC3_TRB_MASK		(DWC3_TRB_NUM - 1)
 
 /**
  * struct dwc3_ep - device side endpoint representation
  * @endpoint: usb endpoint
- * @pending_list: list of requests for this endpoint
+ * @cancelled_list: list of cancelled requests for this endpoint
+ * @pending_list: list of pending requests for this endpoint
  * @started_list: list of started requests on this endpoint
+ * @regs: pointer to first endpoint register
  * @trb_pool: array of transaction buffers
  * @trb_pool_dma: dma address of @trb_pool
- * @free_slot: next slot which is going to be used
- * @busy_slot: first slot which is owned by HW
- * @desc: usb_endpoint_descriptor pointer
+ * @trb_enqueue: enqueue 'pointer' into TRB array
+ * @trb_dequeue: dequeue 'pointer' into TRB array
  * @dwc: pointer to DWC controller
  * @saved_state: ep state saved during hibernation
  * @flags: endpoint flags (wedged, stalled, ...)
- * @current_trb: index of current used trb
  * @number: endpoint number (1 - 15)
  * @type: set to bmAttributes & USB_ENDPOINT_XFERTYPE_MASK
  * @resource_index: Resource transfer index
+ * @frame_number: set to the frame number we want this transfer to start (ISOC)
  * @interval: the interval on which the ISOC transfer is started
  * @name: a human readable name e.g. ep1out-bulk
  * @direction: true for TX, false for RX
  * @stream_capable: true when streams are enabled
+ * @combo_num: the test combination BIT[15:14] of the frame number to test
+ *		isochronous START TRANSFER command failure workaround
+ * @start_cmd_status: the status of testing START TRANSFER command with
+ *		combo_num = 'b00
  */
 struct dwc3_ep {
-	struct usb_ep				endpoint;
-	struct list_head			cancelled_list;
-	struct list_head			pending_list;
-	struct list_head			started_list;
-
-	void __iomem				*regs;
-
-	struct dwc3_trb			*trb_pool;
-	dma_addr_t				trb_pool_dma;
-	u32					free_slot;
-	u32					busy_slot;
-	const struct usb_ss_ep_comp_descriptor	*comp_desc;
-	struct dwc3				*dwc;
-
-	u32					saved_state;
-	unsigned				flags;
+	struct usb_ep		endpoint;
+	struct list_head	cancelled_list;
+	struct list_head	pending_list;
+	struct list_head	started_list;
+
+	void __iomem		*regs;
+
+	struct dwc3_trb		*trb_pool;
+	dma_addr_t		trb_pool_dma;
+	struct dwc3		*dwc;
+
+	u32			saved_state;
+	unsigned int		flags;
 #define DWC3_EP_ENABLED			BIT(0)
-#define DWC3_EP_STALL				BIT(1)
-#define DWC3_EP_WEDGE				BIT(2)
-#define DWC3_EP_TRANSFER_STARTED		BIT(3)
-#define DWC3_EP_PENDING_REQUEST		BIT(4)
+#define DWC3_EP_STALL			BIT(1)
+#define DWC3_EP_WEDGE			BIT(2)
+#define DWC3_EP_TRANSFER_STARTED	BIT(3)
+#define DWC3_EP_END_TRANSFER_PENDING	BIT(4)
+#define DWC3_EP_PENDING_REQUEST		BIT(5)
+#define DWC3_EP_DELAY_START		BIT(6)
+#define DWC3_EP_WAIT_TRANSFER_COMPLETE	BIT(7)
+#define DWC3_EP_IGNORE_NEXT_NOSTREAM	BIT(8)
+#define DWC3_EP_FORCE_RESTART_STREAM	BIT(9)
+#define DWC3_EP_FIRST_STREAM_PRIMED	BIT(10)
+#define DWC3_EP_PENDING_CLEAR_STALL	BIT(11)
+#define DWC3_EP_TXFIFO_RESIZED		BIT(12)
+#define DWC3_EP_DELAY_STOP             BIT(13)
 
 	/* This last one is specific to EP0 */
 #define DWC3_EP0_DIR_IN			BIT(31)
 
-	unsigned				current_trb;
 	/*
 	 * IMPORTANT: we *know* we have 256 TRBs in our @trb_pool, so we will
 	 * use a u8 type here. If anybody decides to increase number of TRBs to
@@ -682,23 +739,23 @@ struct dwc3_ep {
 	 * By using u8 types we ensure that our % operator when incrementing
 	 * enqueue and dequeue get optimized away by the compiler.
 	 */
-	u8					trb_enqueue;
-	u8					trb_dequeue;
+	u8			trb_enqueue;
+	u8			trb_dequeue;
 
-	u8					number;
-	u8					type;
-	u8					resource_index;
-	u32					frame_number;
-	u32					interval;
+	u8			number;
+	u8			type;
+	u8			resource_index;
+	u32			frame_number;
+	u32			interval;
 
-	char					name[20];
+	char			name[20];
 
-	unsigned				direction:1;
-	unsigned				stream_capable:1;
+	unsigned		direction:1;
+	unsigned		stream_capable:1;
 
 	/* For isochronous START TRANSFER workaround only */
-	u8					combo_num;
-	int					start_cmd_status;
+	u8			combo_num;
+	int			start_cmd_status;
 };
 
 enum dwc3_phy {
@@ -797,6 +854,7 @@ struct dwc3_trb {
  * @hwparams6: GHWPARAMS6
  * @hwparams7: GHWPARAMS7
  * @hwparams8: GHWPARAMS8
+ * @hwparams9: GHWPARAMS9
  */
 struct dwc3_hwparams {
 	u32	hwparams0;
@@ -808,13 +866,12 @@ struct dwc3_hwparams {
 	u32	hwparams6;
 	u32	hwparams7;
 	u32	hwparams8;
+	u32	hwparams9;
 };
 
 /* HWPARAMS0 */
 #define DWC3_MODE(n)		((n) & 0x7)
 
-#define DWC3_MDWIDTH(n)		(((n) & 0xff00) >> 8)
-
 /* HWPARAMS1 */
 #define DWC3_NUM_INT(n)		(((n) & (0x3f << 15)) >> 15)
 
@@ -829,31 +886,67 @@ struct dwc3_hwparams {
 /* HWPARAMS7 */
 #define DWC3_RAM1_DEPTH(n)	((n) & 0xffff)
 
-struct dwc3_request {
-	struct usb_request		request;
-	struct list_head		list;
-	struct dwc3_ep			*dep;
-	u32				start_slot;
-
-	unsigned			remaining;
-
-	unsigned int			status;
-#define DWC3_REQUEST_STATUS_QUEUED	0
-#define DWC3_REQUEST_STATUS_STARTED	1
-#define DWC3_REQUEST_STATUS_CANCELLED	2
-#define DWC3_REQUEST_STATUS_COMPLETED	3
-#define DWC3_REQUEST_STATUS_UNKNOWN	-1
+/* HWPARAMS9 */
+#define DWC3_MST_CAPABLE(p)	(!!((p)->hwparams9 &		\
+			DWC3_GHWPARAMS9_DEV_MST))
 
-	u8				epnum;
+/**
+ * struct dwc3_request - representation of a transfer request
+ * @request: struct usb_request to be transferred
+ * @list: a list_head used for request queueing
+ * @dep: struct dwc3_ep owning this request
+ * @sg: pointer to first incomplete sg
+ * @start_sg: pointer to the sg which should be queued next
+ * @num_pending_sgs: counter to pending sgs
+ * @num_queued_sgs: counter to the number of sgs which already got queued
+ * @remaining: amount of data remaining
+ * @status: internal dwc3 request status tracking
+ * @epnum: endpoint number to which this request refers
+ * @trb: pointer to struct dwc3_trb
+ * @trb_dma: DMA address of @trb
+ * @num_trbs: number of TRBs used by this request
+ * @needs_extra_trb: true when request needs one extra TRB (either due to ZLP
+ *	or unaligned OUT)
+ * @direction: IN or OUT direction flag
+ * @mapped: true when request has been dma-mapped
+ */
+struct dwc3_request {
+	struct usb_request	request;
+	struct list_head	list;
+	struct dwc3_ep		*dep;
+	struct scatterlist	*sg;
+	struct scatterlist	*start_sg;
+
+	unsigned int		num_pending_sgs;
+	unsigned int		num_queued_sgs;
+	unsigned int		remaining;
+
+	unsigned int		status;
+#define DWC3_REQUEST_STATUS_QUEUED		0
+#define DWC3_REQUEST_STATUS_STARTED		1
+#define DWC3_REQUEST_STATUS_DISCONNECTED	2
+#define DWC3_REQUEST_STATUS_DEQUEUED		3
+#define DWC3_REQUEST_STATUS_STALLED		4
+#define DWC3_REQUEST_STATUS_COMPLETED		5
+#define DWC3_REQUEST_STATUS_UNKNOWN		-1
+
+	u8			epnum;
 	struct dwc3_trb		*trb;
-	dma_addr_t			trb_dma;
+	dma_addr_t		trb_dma;
+
+	unsigned int		num_trbs;
 
-	unsigned			num_trbs;
+	unsigned int		needs_extra_trb:1;
+	unsigned int		direction:1;
+	unsigned int		mapped:1;
+};
 
-	unsigned			needs_extra_trb:1;
-	unsigned			direction:1;
-	unsigned			mapped:1;
-	unsigned			queued:1;
+/*
+ * struct dwc3_scratchpad_array - hibernation scratchpad array
+ * (format defined by hw)
+ */
+struct dwc3_scratchpad_array {
+	__le64	dma_adr[DWC3_MAX_HIBER_SCRATCHBUFS];
 };
 
 /**
@@ -869,6 +962,7 @@ struct dwc3_request {
  * @scratch_addr: dma address of scratchbuf
  * @ep0_in_setup: one control transfer is completed and enter setup phase
  * @lock: for synchronizing
+ * @mutex: for mode switching
  * @dev: pointer to our struct device
  * @sysdev: pointer to the DMA-capable device
  * @xhci: pointer to our xHCI child
@@ -877,12 +971,14 @@ struct dwc3_request {
  * @eps: endpoint array
  * @gadget: device side representation of the peripheral controller
  * @gadget_driver: pointer to the gadget driver
- * @clks: array of clocks
- * @num_clks: number of clocks
+ * @bus_clk: clock for accessing the registers
+ * @ref_clk: reference clock
+ * @susp_clk: clock used when the SS phy is in low power (S3) state
  * @reset: reset control
  * @regs: base address for our registers
  * @regs_size: address space size
  * @fladj: frame length adjustment
+ * @ref_clk_per: reference clock period configuration
  * @irq_gadget: peripheral controller's IRQ number
  * @otg_irq: IRQ number for OTG IRQs
  * @current_otg_role: current role of operation while using the OTG block
@@ -891,7 +987,12 @@ struct dwc3_request {
  * @nr_scratch: number of scratch buffers
  * @u1u2: only used on revisions <1.83a for workaround
  * @maximum_speed: maximum speed requested (mainly for testing purposes)
- * @revision: revision register contents
+ * @max_ssp_rate: SuperSpeed Plus maximum signaling rate and lane count
+ * @gadget_max_speed: maximum gadget speed requested
+ * @gadget_ssp_rate: Gadget driver's maximum supported SuperSpeed Plus signaling
+ *			rate and lane count.
+ * @ip: controller's ID
+ * @revision: controller's version of an IP
  * @version_type: VERSIONTYPE register contents, a sub release of a revision
  * @dr_mode: requested mode of operation
  * @current_dr_role: current role of operation when in dual-role mode
@@ -901,6 +1002,10 @@ struct dwc3_request {
  * @hsphy_mode: UTMI phy mode, one of following:
  *		- USBPHY_INTERFACE_MODE_UTMI
  *		- USBPHY_INTERFACE_MODE_UTMIW
+ * @role_sw: usb_role_switch handle
+ * @role_switch_default_mode: default operation mode of controller while
+ *			usb role is USB_ROLE_NONE.
+ * @usb_psy: pointer to power supply interface.
  * @usb2_phy: pointer to USB2 PHY
  * @usb3_phy: pointer to USB3 PHY
  * @usb2_generic_phy: pointer to USB2 PHY
@@ -918,7 +1023,6 @@ struct dwc3_request {
  * @link_state: link state
  * @speed: device speed (super, high, full, low)
  * @hwparams: copy of hwparams registers
- * @root: debugfs root folder pointer
  * @regset: debugfs pointer to regdump file
  * @dbg_lsp_select: current debug lsp mux register selection
  * @test_mode: true when we're entering a USB test mode
@@ -929,8 +1033,11 @@ struct dwc3_request {
  * @rx_max_burst_prd: max periodic ESS receive burst size
  * @tx_thr_num_pkt_prd: periodic ESS transmit packet count
  * @tx_max_burst_prd: max periodic ESS transmit burst size
+ * @tx_fifo_resize_max_num: max number of fifos allocated during txfifo resize
+ * @clear_stall_protocol: endpoint number that requires a delayed status phase
  * @hsphy_interface: "utmi" or "ulpi"
  * @connected: true when we're connected to a host, false otherwise
+ * @softconnect: true when gadget connect is called, false when disconnect runs
  * @delayed_status: true when gadget driver asks for delayed status
  * @ep0_bounced: true when we used bounce buffer
  * @ep0_expect_in: true when we expect a DATA IN transfer
@@ -939,17 +1046,19 @@ struct dwc3_request {
  * @has_lpm_erratum: true when core was configured with LPM Erratum. Note that
  *			there's now way for software to detect this in runtime.
  * @is_utmi_l1_suspend: the core asserts output signal
- * 	0	- utmi_sleep_n
- * 	1	- utmi_l1_suspend_n
+ *	0	- utmi_sleep_n
+ *	1	- utmi_l1_suspend_n
  * @is_fpga: true when we are using the FPGA board
  * @pending_events: true when we have pending IRQs to be handled
+ * @do_fifo_resize: true when txfifo resizing is enabled for dwc3 endpoints
  * @pullups_connected: true when Run/Stop bit is set
  * @setup_packet_pending: true when there's a Setup Packet in FIFO. Workaround
  * @three_stage_setup: set if we perform a three phase setup
  * @dis_start_transfer_quirk: set if start_transfer failure SW workaround is
  *			not needed for DWC_usb31 version 1.70a-ea06 and below
  * @usb3_lpm_capable: set if hadrware supports Link Power Management
- * @usb2_lpm_disable: set to disable usb2 lpm
+ * @usb2_lpm_disable: set to disable usb2 lpm for host
+ * @usb2_gadget_lpm_disable: set to disable usb2 lpm for gadget
  * @disable_scramble_quirk: set if we enable the disable scramble quirk
  * @u2exit_lfps_quirk: set if we enable u2exit lfps quirk
  * @u2ss_inp3_quirk: set if we enable P3 OK for U2/SS Inactive quirk
@@ -962,7 +1071,11 @@ struct dwc3_request {
  * @dis_u2_susphy_quirk: set if we disable usb2 suspend phy
  * @dis_enblslpm_quirk: set if we clear enblslpm in GUSB2PHYCFG,
  *                      disabling the suspend signal to the PHY.
+ * @dis_u1_entry_quirk: set if link entering into U1 state needs to be disabled.
+ * @dis_u2_entry_quirk: set if link entering into U2 state needs to be disabled.
  * @dis_rxdet_inp3_quirk: set if we disable Rx.Detect in P3
+ * @async_callbacks: if set, indicate that async callbacks will be used.
+ *
  * @dis_u2_freeclk_exists_quirk : set if we clear u2_freeclk_exists
  *			in GUSB2PHYCFG, specify that USB2 PHY doesn't
  *			provide a free-running PHY clock.
@@ -970,55 +1083,89 @@ struct dwc3_request {
  *			change quirk.
  * @dis_tx_ipgap_linecheck_quirk: set if we disable u2mac linestate
  *			check during HS transmit.
+ * @resume-hs-terminations: Set if we enable quirk for fixing improper crc
+ *			generation after resume from suspend.
+ * @parkmode_disable_ss_quirk: set if we need to disable all SuperSpeed
+ *			instances in park mode.
  * @tx_de_emphasis_quirk: set if we enable Tx de-emphasis quirk
  * @tx_de_emphasis: Tx de-emphasis value
- * 	0	- -6dB de-emphasis
- * 	1	- -3.5dB de-emphasis
- * 	2	- No de-emphasis
- * 	3	- Reserved
+ *	0	- -6dB de-emphasis
+ *	1	- -3.5dB de-emphasis
+ *	2	- No de-emphasis
+ *	3	- Reserved
  * @dis_metastability_quirk: set to disable metastability quirk.
+ * @dis_split_quirk: set to disable split boundary.
  * @imod_interval: set the interrupt moderation interval in 250ns
- *                 increments or 0 to disable.
+ *			increments or 0 to disable.
+ * @max_cfg_eps: current max number of IN eps used across all USB configs.
+ * @last_fifo_depth: last fifo depth used to determine next fifo ram start
+ *		     address.
+ * @num_ep_resized: carries the current number endpoints which have had its tx
+ *		    fifo resized.
+ * @debug_root: root debugfs directory for this device to put its files in.
  */
 struct dwc3 {
+	struct work_struct	drd_work;
 	struct dwc3_trb		*ep0_trb;
-	void				*bounce;
-	void				*scratchbuf;
-	u8				*setup_buf;
-	dma_addr_t			ep0_trb_addr;
-	dma_addr_t			bounce_addr;
-	dma_addr_t			scratch_addr;
-	struct dwc3_request		ep0_usb_req;
+	void			*bounce;
+	void			*scratchbuf;
+	u8			*setup_buf;
+	dma_addr_t		ep0_trb_addr;
+	dma_addr_t		bounce_addr;
+	dma_addr_t		scratch_addr;
+	struct dwc3_request	ep0_usb_req;
+	struct completion	ep0_in_setup;
+
+	/* device lock */
+	spinlock_t		lock;
+
+	/* mode switching lock */
+	struct mutex		mutex;
 
 	struct device		*dev;
+	struct device		*sysdev;
 
 	struct device		*xhci;
+	struct resource		xhci_resources[DWC3_XHCI_RESOURCES_NUM];
 
-	struct dwc3_event_buffer	*ev_buf;
-	struct dwc3_ep			*eps[DWC3_ENDPOINTS_NUM];
+	struct dwc3_event_buffer *ev_buf;
+	struct dwc3_ep		*eps[DWC3_ENDPOINTS_NUM];
 
-	struct usb_gadget		gadget;
-	struct usb_gadget_driver	*gadget_driver;
+	struct usb_gadget	*gadget;
+	struct usb_gadget_driver *gadget_driver;
 
 	struct clk_bulk_data	*clks;
 	int			num_clks;
 
 	struct reset_control	*reset;
 
+	struct usb_phy		*usb2_phy;
+	struct usb_phy		*usb3_phy;
+
 	struct phy		*usb2_generic_phy;
 	struct phy		*usb3_generic_phy;
 
 	bool			phys_ready;
+
+	struct ulpi		*ulpi;
 	bool			ulpi_ready;
 
 	void __iomem		*regs;
+	size_t			regs_size;
 
 	enum usb_dr_mode	dr_mode;
 	u32			current_dr_role;
 	u32			desired_dr_role;
+	struct extcon_dev	*edev;
+	struct notifier_block	edev_nb;
 	enum usb_phy_interface	hsphy_mode;
+	struct usb_role_switch	*role_sw;
+	enum usb_dr_mode	role_switch_default_mode;
+
+	struct power_supply	*usb_psy;
 
 	u32			fladj;
+	u32			ref_clk_per;
 	u32			irq_gadget;
 	u32			otg_irq;
 	u32			current_otg_role;
@@ -1027,16 +1174,19 @@ struct dwc3 {
 	u32			nr_scratch;
 	u32			u1u2;
 	u32			maximum_speed;
+	u32			gadget_max_speed;
+	enum usb_ssp_rate	max_ssp_rate;
+	enum usb_ssp_rate	gadget_ssp_rate;
+
+	u32			ip;
+
+#define DWC3_IP			0x5533
+#define DWC31_IP		0x3331
+#define DWC32_IP		0x3332
 
-	/*
-	 * All 3.1 IP version constants are greater than the 3.0 IP
-	 * version constants. This works for most version checks in
-	 * dwc3. However, in the future, this may not apply as
-	 * features may be developed on newer versions of the 3.0 IP
-	 * that are not in the 3.1 IP.
-	 */
 	u32			revision;
 
+#define DWC3_REVISION_ANY	0x0
 #define DWC3_REVISION_173A	0x5533173a
 #define DWC3_REVISION_175A	0x5533175a
 #define DWC3_REVISION_180A	0x5533180a
@@ -1061,18 +1211,20 @@ struct dwc3 {
 #define DWC3_REVISION_310A	0x5533310a
 #define DWC3_REVISION_330A	0x5533330a
 
-/*
- * NOTICE: we're using bit 31 as a "is usb 3.1" flag. This is really
- * just so dwc31 revisions are always larger than dwc3.
- */
-#define DWC3_REVISION_IS_DWC31		0x80000000
-#define DWC3_USB31_REVISION_110A	(0x3131302a | DWC3_REVISION_IS_DWC31)
-#define DWC3_USB31_REVISION_120A	(0x3132302a | DWC3_REVISION_IS_DWC31)
-#define DWC3_USB31_REVISION_160A	(0x3136302a | DWC3_REVISION_IS_DWC31)
-#define DWC3_USB31_REVISION_170A	(0x3137302a | DWC3_REVISION_IS_DWC31)
+#define DWC31_REVISION_ANY	0x0
+#define DWC31_REVISION_110A	0x3131302a
+#define DWC31_REVISION_120A	0x3132302a
+#define DWC31_REVISION_160A	0x3136302a
+#define DWC31_REVISION_170A	0x3137302a
+#define DWC31_REVISION_180A	0x3138302a
+#define DWC31_REVISION_190A	0x3139302a
+
+#define DWC32_REVISION_ANY	0x0
+#define DWC32_REVISION_100A	0x3130302a
 
 	u32			version_type;
 
+#define DWC31_VERSIONTYPE_ANY		0x0
 #define DWC31_VERSIONTYPE_EA01		0x65613031
 #define DWC31_VERSIONTYPE_EA02		0x65613032
 #define DWC31_VERSIONTYPE_EA03		0x65613033
@@ -1084,7 +1236,6 @@ struct dwc3 {
 	enum dwc3_ep0_state	ep0state;
 	enum dwc3_link_state	link_state;
 
-	u16			isoch_delay;
 	u16			u2sel;
 	u16			u2pel;
 	u8			u1sel;
@@ -1095,6 +1246,7 @@ struct dwc3 {
 	u8			num_eps;
 
 	struct dwc3_hwparams	hwparams;
+	struct debugfs_regset32	*regset;
 
 	u32			dbg_lsp_select;
 
@@ -1106,10 +1258,13 @@ struct dwc3 {
 	u8			rx_max_burst_prd;
 	u8			tx_thr_num_pkt_prd;
 	u8			tx_max_burst_prd;
+	u8			tx_fifo_resize_max_num;
+	u8			clear_stall_protocol;
 
 	const char		*hsphy_interface;
 
 	unsigned		connected:1;
+	unsigned		softconnect:1;
 	unsigned		delayed_status:1;
 	unsigned		ep0_bounced:1;
 	unsigned		ep0_expect_in:1;
@@ -1117,18 +1272,16 @@ struct dwc3 {
 	unsigned		sysdev_is_parent:1;
 	unsigned		has_lpm_erratum:1;
 	unsigned		is_utmi_l1_suspend:1;
-	unsigned		is_selfpowered:1;
 	unsigned		is_fpga:1;
 	unsigned		pending_events:1;
-	unsigned		needs_fifo_resize:1;
+	unsigned		do_fifo_resize:1;
 	unsigned		pullups_connected:1;
-	unsigned		resize_fifos:1;
 	unsigned		setup_packet_pending:1;
-	unsigned		start_config_issued:1;
 	unsigned		three_stage_setup:1;
 	unsigned		dis_start_transfer_quirk:1;
 	unsigned		usb3_lpm_capable:1;
 	unsigned		usb2_lpm_disable:1;
+	unsigned		usb2_gadget_lpm_disable:1;
 
 	unsigned		disable_scramble_quirk:1;
 	unsigned		u2exit_lfps_quirk:1;
@@ -1141,17 +1294,30 @@ struct dwc3 {
 	unsigned		dis_u3_susphy_quirk:1;
 	unsigned		dis_u2_susphy_quirk:1;
 	unsigned		dis_enblslpm_quirk:1;
+	unsigned		dis_u1_entry_quirk:1;
+	unsigned		dis_u2_entry_quirk:1;
 	unsigned		dis_rxdet_inp3_quirk:1;
 	unsigned		dis_u2_freeclk_exists_quirk:1;
 	unsigned		dis_del_phy_power_chg_quirk:1;
 	unsigned		dis_tx_ipgap_linecheck_quirk:1;
+	unsigned		resume_hs_terminations:1;
+	unsigned		parkmode_disable_ss_quirk:1;
+	unsigned		gfladj_refclk_lpm_sel:1;
 
 	unsigned		tx_de_emphasis_quirk:1;
 	unsigned		tx_de_emphasis:2;
 
 	unsigned		dis_metastability_quirk:1;
 
+	unsigned		dis_split_quirk:1;
+	unsigned		async_callbacks:1;
+
 	u16			imod_interval;
+
+	int			max_cfg_eps;
+	int			last_fifo_depth;
+	int			num_ep_resized;
+	struct dentry		*debug_root;
 };
 
 #define INCRX_BURST_MODE 0
@@ -1175,31 +1341,7 @@ struct dwc3_event_type {
 #define DWC3_DEPEVT_EPCMDCMPLT		0x07
 
 /**
- * dwc3_ep_event_string - returns event name
- * @event: then event code
- */
-static inline const char *dwc3_ep_event_string(u8 event)
-{
-	switch (event) {
-	case DWC3_DEPEVT_XFERCOMPLETE:
-		return "Transfer Complete";
-	case DWC3_DEPEVT_XFERINPROGRESS:
-		return "Transfer In-Progress";
-	case DWC3_DEPEVT_XFERNOTREADY:
-		return "Transfer Not Ready";
-	case DWC3_DEPEVT_RXTXFIFOEVT:
-		return "FIFO";
-	case DWC3_DEPEVT_STREAMEVT:
-		return "Stream";
-	case DWC3_DEPEVT_EPCMDCMPLT:
-		return "Endpoint Command Complete";
-	}
-
-	return "UNKNOWN";
-}
-
-/**
- * struct dwc3_event_depvt - Device Endpoint Events
+ * struct dwc3_event_depevt - Device Endpoint Events
  * @one_bit: indicates this is an endpoint event (not used)
  * @endpoint_number: number of the endpoint
  * @endpoint_event: The event we have:
@@ -1238,6 +1380,10 @@ struct dwc3_event_depevt {
 #define DEPEVT_STREAMEVT_FOUND		1
 #define DEPEVT_STREAMEVT_NOTFOUND	2
 
+/* Stream event parameter */
+#define DEPEVT_STREAM_PRIME		0xfffe
+#define DEPEVT_STREAM_NOSTREAM		0x0
+
 /* Control-only Status */
 #define DEPEVT_STATUS_CONTROL_DATA	1
 #define DEPEVT_STATUS_CONTROL_STATUS	2
@@ -1264,7 +1410,7 @@ struct dwc3_event_depevt {
  *	3	- ULStChng
  *	4	- WkUpEvt
  *	5	- Reserved
- *	6	- EOPF
+ *	6	- Suspend (EOPF on revisions 2.10a and prior)
  *	7	- SOF
  *	8	- Reserved
  *	9	- ErrticErr
@@ -1336,28 +1482,63 @@ struct dwc3_gadget_ep_cmd_params {
 #define DWC3_HAS_OTG			BIT(3)
 
 /* prototypes */
-int dwc3_gadget_resize_tx_fifos(struct dwc3 *dwc);
 void dwc3_set_prtcap(struct dwc3 *dwc, u32 mode);
+void dwc3_set_mode(struct dwc3 *dwc, u32 mode);
+u32 dwc3_core_fifo_space(struct dwc3_ep *dep, u8 type);
 
-/* check whether we are on the DWC_usb3 core */
-static inline bool dwc3_is_usb3(struct dwc3 *dwc)
-{
-	return !(dwc->revision & DWC3_REVISION_IS_DWC31);
-}
+#define DWC3_IP_IS(_ip)							\
+	(dwc->ip == _ip##_IP)
+
+#define DWC3_VER_IS(_ip, _ver)						\
+	(DWC3_IP_IS(_ip) && dwc->revision == _ip##_REVISION_##_ver)
+
+#define DWC3_VER_IS_PRIOR(_ip, _ver)					\
+	(DWC3_IP_IS(_ip) && dwc->revision < _ip##_REVISION_##_ver)
 
-/* check whether we are on the DWC_usb31 core */
-static inline bool dwc3_is_usb31(struct dwc3 *dwc)
+#define DWC3_VER_IS_WITHIN(_ip, _from, _to)				\
+	(DWC3_IP_IS(_ip) &&						\
+	 (int)dwc->revision >= _ip##_REVISION_##_from &&		\
+	 (!(_ip##_REVISION_##_to) ||					\
+	  dwc->revision <= _ip##_REVISION_##_to))
+
+#define DWC3_VER_TYPE_IS_WITHIN(_ip, _ver, _from, _to)			\
+	(DWC3_VER_IS(_ip, _ver) &&					\
+	 dwc->version_type >= _ip##_VERSIONTYPE_##_from &&		\
+	 (!(_ip##_VERSIONTYPE_##_to) ||					\
+	  dwc->version_type <= _ip##_VERSIONTYPE_##_to))
+
+/**
+ * dwc3_mdwidth - get MDWIDTH value in bits
+ * @dwc: pointer to our context structure
+ *
+ * Return MDWIDTH configuration value in bits.
+ */
+static inline u32 dwc3_mdwidth(struct dwc3 *dwc)
 {
-	return !!(dwc->revision & DWC3_REVISION_IS_DWC31);
+	u32 mdwidth;
+
+	mdwidth = DWC3_GHWPARAMS0_MDWIDTH(dwc->hwparams.hwparams0);
+	if (DWC3_IP_IS(DWC32))
+		mdwidth += DWC3_GHWPARAMS6_MDWIDTH(dwc->hwparams.hwparams6);
+
+	return mdwidth;
 }
 
 bool dwc3_has_imod(struct dwc3 *dwc);
 
+int dwc3_event_buffers_setup(struct dwc3 *dwc);
+void dwc3_event_buffers_cleanup(struct dwc3 *dwc);
+
+int dwc3_core_soft_reset(struct dwc3 *dwc);
+
 #if IS_ENABLED(CONFIG_USB_DWC3_HOST) || IS_ENABLED(CONFIG_USB_DWC3_DUAL_ROLE)
 int dwc3_host_init(struct dwc3 *dwc);
+void dwc3_host_exit(struct dwc3 *dwc);
 #else
 static inline int dwc3_host_init(struct dwc3 *dwc)
 { return 0; }
+static inline void dwc3_host_exit(struct dwc3 *dwc)
+{ }
 #endif
 
 #if IS_ENABLED(CONFIG_USB_DWC3_GADGET) || IS_ENABLED(CONFIG_USB_DWC3_DUAL_ROLE)
@@ -1366,9 +1547,12 @@ void dwc3_gadget_exit(struct dwc3 *dwc);
 int dwc3_gadget_set_test_mode(struct dwc3 *dwc, int mode);
 int dwc3_gadget_get_link_state(struct dwc3 *dwc);
 int dwc3_gadget_set_link_state(struct dwc3 *dwc, enum dwc3_link_state state);
-int dwc3_send_gadget_ep_cmd(struct dwc3_ep *dep, unsigned cmd,
+int dwc3_send_gadget_ep_cmd(struct dwc3_ep *dep, unsigned int cmd,
 		struct dwc3_gadget_ep_cmd_params *params);
-int dwc3_send_gadget_generic_command(struct dwc3 *dwc, unsigned cmd, u32 param);
+int dwc3_send_gadget_generic_command(struct dwc3 *dwc, unsigned int cmd,
+		u32 param);
+void dwc3_gadget_clear_tx_fifos(struct dwc3 *dwc);
+void dwc3_remove_requests(struct dwc3 *dwc, struct dwc3_ep *dep, int status);
 #else
 static inline int dwc3_gadget_init(struct dwc3 *dwc)
 { return 0; }
@@ -1382,9 +1566,14 @@ static inline int dwc3_gadget_set_link_state(struct dwc3 *dwc,
 		enum dwc3_link_state state)
 { return 0; }
 
+static inline int dwc3_send_gadget_ep_cmd(struct dwc3_ep *dep, unsigned int cmd,
+		struct dwc3_gadget_ep_cmd_params *params)
+{ return 0; }
 static inline int dwc3_send_gadget_generic_command(struct dwc3 *dwc,
 		int cmd, u32 param)
 { return 0; }
+static inline void dwc3_gadget_clear_tx_fifos(struct dwc3 *dwc)
+{ }
 #endif
 
 #if IS_ENABLED(CONFIG_USB_DWC3_DUAL_ROLE)
diff --git a/drivers/usb/dwc3/debug.h b/drivers/usb/dwc3/debug.h
index 054f1717e1..8bb2c9e3b9 100644
--- a/drivers/usb/dwc3/debug.h
+++ b/drivers/usb/dwc3/debug.h
@@ -1,8 +1,8 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/**
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
  * debug.h - DesignWare USB3 DRD Controller Debug Header
  *
- * Copyright (C) 2010-2011 Texas Instruments Incorporated - http://www.ti.com
+ * Copyright (C) 2010-2011 Texas Instruments Incorporated - https://www.ti.com
  *
  * Authors: Felipe Balbi <balbi@ti.com>,
  *	    Sebastian Andrzej Siewior <bigeasy@linutronix.de>
@@ -68,6 +68,8 @@ dwc3_gadget_generic_cmd_string(u8 cmd)
 		return "All FIFO Flush";
 	case DWC3_DGCMD_SET_ENDPOINT_NRDY:
 		return "Set Endpoint NRDY";
+	case DWC3_DGCMD_SET_ENDPOINT_PRIME:
+		return "Set Endpoint Prime";
 	case DWC3_DGCMD_RUN_SOC_BUS_LOOPBACK:
 		return "Run SoC Bus Loopback Test";
 	default:
@@ -112,7 +114,7 @@ dwc3_gadget_link_string(enum dwc3_link_state link_state)
 	case DWC3_LINK_STATE_RESUME:
 		return "Resume";
 	default:
-		return "UNKNOWN link state\n";
+		return "UNKNOWN link state";
 	}
 }
 
@@ -141,7 +143,7 @@ dwc3_gadget_hs_link_string(enum dwc3_link_state link_state)
 	case DWC3_LINK_STATE_RESUME:
 		return "Resume";
 	default:
-		return "UNKNOWN link state\n";
+		return "UNKNOWN link state";
 	}
 }
 
@@ -193,294 +195,54 @@ static inline const char *dwc3_ep0_state_string(enum dwc3_ep0_state state)
  * dwc3_gadget_event_string - returns event name
  * @event: the event code
  */
-static inline const char *
-dwc3_gadget_event_string(char *str, const struct dwc3_event_devt *event)
+static inline const char *dwc3_gadget_event_string(char *str, size_t size,
+		const struct dwc3_event_devt *event)
 {
 	enum dwc3_link_state state = event->event_info & DWC3_LINK_STATE_MASK;
 
 	switch (event->type) {
 	case DWC3_DEVICE_EVENT_DISCONNECT:
-		sprintf(str, "Disconnect: [%s]",
+		snprintf(str, size, "Disconnect: [%s]",
 				dwc3_gadget_link_string(state));
 		break;
 	case DWC3_DEVICE_EVENT_RESET:
-		sprintf(str, "Reset [%s]", dwc3_gadget_link_string(state));
+		snprintf(str, size, "Reset [%s]",
+				dwc3_gadget_link_string(state));
 		break;
 	case DWC3_DEVICE_EVENT_CONNECT_DONE:
-		sprintf(str, "Connection Done [%s]",
+		snprintf(str, size, "Connection Done [%s]",
 				dwc3_gadget_link_string(state));
 		break;
 	case DWC3_DEVICE_EVENT_LINK_STATUS_CHANGE:
-		sprintf(str, "Link Change [%s]",
+		snprintf(str, size, "Link Change [%s]",
 				dwc3_gadget_link_string(state));
 		break;
 	case DWC3_DEVICE_EVENT_WAKEUP:
-		sprintf(str, "WakeUp [%s]", dwc3_gadget_link_string(state));
+		snprintf(str, size, "WakeUp [%s]",
+				dwc3_gadget_link_string(state));
 		break;
-	case DWC3_DEVICE_EVENT_EOPF:
-		sprintf(str, "End-Of-Frame [%s]",
+	case DWC3_DEVICE_EVENT_SUSPEND:
+		snprintf(str, size, "Suspend [%s]",
 				dwc3_gadget_link_string(state));
 		break;
 	case DWC3_DEVICE_EVENT_SOF:
-		sprintf(str, "Start-Of-Frame [%s]",
+		snprintf(str, size, "Start-Of-Frame [%s]",
 				dwc3_gadget_link_string(state));
 		break;
 	case DWC3_DEVICE_EVENT_ERRATIC_ERROR:
-		sprintf(str, "Erratic Error [%s]",
+		snprintf(str, size, "Erratic Error [%s]",
 				dwc3_gadget_link_string(state));
 		break;
 	case DWC3_DEVICE_EVENT_CMD_CMPL:
-		sprintf(str, "Command Complete [%s]",
+		snprintf(str, size, "Command Complete [%s]",
 				dwc3_gadget_link_string(state));
 		break;
 	case DWC3_DEVICE_EVENT_OVERFLOW:
-		sprintf(str, "Overflow [%s]", dwc3_gadget_link_string(state));
-		break;
-	default:
-		sprintf(str, "UNKNOWN");
-	}
-
-	return str;
-}
-
-static inline void dwc3_decode_get_status(__u8 t, __u16 i, __u16 l, char *str)
-{
-	switch (t & USB_RECIP_MASK) {
-	case USB_RECIP_INTERFACE:
-		sprintf(str, "Get Interface Status(Intf = %d, Length = %d)",
-			i, l);
-		break;
-	case USB_RECIP_ENDPOINT:
-		sprintf(str, "Get Endpoint Status(ep%d%s)",
-			i & ~USB_DIR_IN,
-			i & USB_DIR_IN ? "in" : "out");
-		break;
-	}
-}
-
-static inline void dwc3_decode_set_clear_feature(__u8 t, __u8 b, __u16 v,
-						 __u16 i, char *str)
-{
-	switch (t & USB_RECIP_MASK) {
-	case USB_RECIP_DEVICE:
-		sprintf(str, "%s Device Feature(%s%s)",
-			b == USB_REQ_CLEAR_FEATURE ? "Clear" : "Set",
-			({char *s;
-				switch (v) {
-				case USB_DEVICE_SELF_POWERED:
-					s = "Self Powered";
-					break;
-				case USB_DEVICE_REMOTE_WAKEUP:
-					s = "Remote Wakeup";
-					break;
-				case USB_DEVICE_TEST_MODE:
-					s = "Test Mode";
-					break;
-				case USB_DEVICE_U1_ENABLE:
-					s = "U1 Enable";
-					break;
-				case USB_DEVICE_U2_ENABLE:
-					s = "U2 Enable";
-					break;
-				case USB_DEVICE_LTM_ENABLE:
-					s = "LTM Enable";
-					break;
-				default:
-					s = "UNKNOWN";
-				} s; }),
-			v == USB_DEVICE_TEST_MODE ?
-			({ char *s;
-				switch (i) {
-				case USB_TEST_J:
-					s = ": TEST_J";
-					break;
-				case USB_TEST_K:
-					s = ": TEST_K";
-					break;
-				case USB_TEST_SE0_NAK:
-					s = ": TEST_SE0_NAK";
-					break;
-				case USB_TEST_PACKET:
-					s = ": TEST_PACKET";
-					break;
-				case USB_TEST_FORCE_ENABLE:
-					s = ": TEST_FORCE_EN";
-					break;
-				default:
-					s = ": UNKNOWN";
-				} s; }) : "");
-		break;
-	case USB_RECIP_INTERFACE:
-		sprintf(str, "%s Interface Feature(%s)",
-			b == USB_REQ_CLEAR_FEATURE ? "Clear" : "Set",
-			v == USB_INTRF_FUNC_SUSPEND ?
-			"Function Suspend" : "UNKNOWN");
-		break;
-	case USB_RECIP_ENDPOINT:
-		sprintf(str, "%s Endpoint Feature(%s ep%d%s)",
-			b == USB_REQ_CLEAR_FEATURE ? "Clear" : "Set",
-			v == USB_ENDPOINT_HALT ? "Halt" : "UNKNOWN",
-			i & ~USB_DIR_IN,
-			i & USB_DIR_IN ? "in" : "out");
-		break;
-	}
-}
-
-static inline void dwc3_decode_set_address(__u16 v, char *str)
-{
-	sprintf(str, "Set Address(Addr = %02x)", v);
-}
-
-static inline void dwc3_decode_get_set_descriptor(__u8 t, __u8 b, __u16 v,
-						  __u16 i, __u16 l, char *str)
-{
-	sprintf(str, "%s %s Descriptor(Index = %d, Length = %d)",
-		b == USB_REQ_GET_DESCRIPTOR ? "Get" : "Set",
-		({ char *s;
-			switch (v >> 8) {
-			case USB_DT_DEVICE:
-				s = "Device";
-				break;
-			case USB_DT_CONFIG:
-				s = "Configuration";
-				break;
-			case USB_DT_STRING:
-				s = "String";
-				break;
-			case USB_DT_INTERFACE:
-				s = "Interface";
-				break;
-			case USB_DT_ENDPOINT:
-				s = "Endpoint";
-				break;
-			case USB_DT_DEVICE_QUALIFIER:
-				s = "Device Qualifier";
-				break;
-			case USB_DT_OTHER_SPEED_CONFIG:
-				s = "Other Speed Config";
-				break;
-			case USB_DT_INTERFACE_POWER:
-				s = "Interface Power";
-				break;
-			case USB_DT_OTG:
-				s = "OTG";
-				break;
-			case USB_DT_DEBUG:
-				s = "Debug";
-				break;
-			case USB_DT_INTERFACE_ASSOCIATION:
-				s = "Interface Association";
-				break;
-			case USB_DT_BOS:
-				s = "BOS";
-				break;
-			case USB_DT_DEVICE_CAPABILITY:
-				s = "Device Capability";
-				break;
-			case USB_DT_PIPE_USAGE:
-				s = "Pipe Usage";
-				break;
-			case USB_DT_SS_ENDPOINT_COMP:
-				s = "SS Endpoint Companion";
-				break;
-			case USB_DT_SSP_ISOC_ENDPOINT_COMP:
-				s = "SSP Isochronous Endpoint Companion";
-				break;
-			default:
-				s = "UNKNOWN";
-				break;
-			} s; }), v & 0xff, l);
-}
-
-
-static inline void dwc3_decode_get_configuration(__u16 l, char *str)
-{
-	sprintf(str, "Get Configuration(Length = %d)", l);
-}
-
-static inline void dwc3_decode_set_configuration(__u8 v, char *str)
-{
-	sprintf(str, "Set Configuration(Config = %d)", v);
-}
-
-static inline void dwc3_decode_get_intf(__u16 i, __u16 l, char *str)
-{
-	sprintf(str, "Get Interface(Intf = %d, Length = %d)", i, l);
-}
-
-static inline void dwc3_decode_set_intf(__u8 v, __u16 i, char *str)
-{
-	sprintf(str, "Set Interface(Intf = %d, Alt.Setting = %d)", i, v);
-}
-
-static inline void dwc3_decode_synch_frame(__u16 i, __u16 l, char *str)
-{
-	sprintf(str, "Synch Frame(Endpoint = %d, Length = %d)", i, l);
-}
-
-static inline void dwc3_decode_set_sel(__u16 l, char *str)
-{
-	sprintf(str, "Set SEL(Length = %d)", l);
-}
-
-static inline void dwc3_decode_set_isoch_delay(__u8 v, char *str)
-{
-	sprintf(str, "Set Isochronous Delay(Delay = %d ns)", v);
-}
-
-/**
- * dwc3_decode_ctrl - returns a string represetion of ctrl request
- */
-static inline const char *dwc3_decode_ctrl(char *str, __u8 bRequestType,
-		__u8 bRequest, __u16 wValue, __u16 wIndex, __u16 wLength)
-{
-	switch (bRequest) {
-	case USB_REQ_GET_STATUS:
-		dwc3_decode_get_status(bRequestType, wIndex, wLength, str);
-		break;
-	case USB_REQ_CLEAR_FEATURE:
-	case USB_REQ_SET_FEATURE:
-		dwc3_decode_set_clear_feature(bRequestType, bRequest, wValue,
-					      wIndex, str);
-		break;
-	case USB_REQ_SET_ADDRESS:
-		dwc3_decode_set_address(wValue, str);
-		break;
-	case USB_REQ_GET_DESCRIPTOR:
-	case USB_REQ_SET_DESCRIPTOR:
-		dwc3_decode_get_set_descriptor(bRequestType, bRequest, wValue,
-					       wIndex, wLength, str);
-		break;
-	case USB_REQ_GET_CONFIGURATION:
-		dwc3_decode_get_configuration(wLength, str);
-		break;
-	case USB_REQ_SET_CONFIGURATION:
-		dwc3_decode_set_configuration(wValue, str);
-		break;
-	case USB_REQ_GET_INTERFACE:
-		dwc3_decode_get_intf(wIndex, wLength, str);
-		break;
-	case USB_REQ_SET_INTERFACE:
-		dwc3_decode_set_intf(wValue, wIndex, str);
-		break;
-	case USB_REQ_SYNCH_FRAME:
-		dwc3_decode_synch_frame(wIndex, wLength, str);
-		break;
-	case USB_REQ_SET_SEL:
-		dwc3_decode_set_sel(wLength, str);
-		break;
-	case USB_REQ_SET_ISOCH_DELAY:
-		dwc3_decode_set_isoch_delay(wValue, str);
+		snprintf(str, size, "Overflow [%s]",
+				dwc3_gadget_link_string(state));
 		break;
 	default:
-		sprintf(str, "%02x %02x %02x %02x %02x %02x %02x %02x",
-			bRequestType, bRequest,
-			cpu_to_le16(wValue) & 0xff,
-			cpu_to_le16(wValue) >> 8,
-			cpu_to_le16(wIndex) & 0xff,
-			cpu_to_le16(wIndex) >> 8,
-			cpu_to_le16(wLength) & 0xff,
-			cpu_to_le16(wLength) >> 8);
+		snprintf(str, size, "UNKNOWN");
 	}
 
 	return str;
@@ -490,48 +252,41 @@ static inline const char *dwc3_decode_ctrl(char *str, __u8 bRequestType,
  * dwc3_ep_event_string - returns event name
  * @event: then event code
  */
-static inline const char *
-dwc3_ep_event_string(char *str, const struct dwc3_event_depevt *event,
-		     u32 ep0state)
+static inline const char *dwc3_ep_event_string(char *str, size_t size,
+		const struct dwc3_event_depevt *event, u32 ep0state)
 {
 	u8 epnum = event->endpoint_number;
 	size_t len;
 	int status;
-	int ret;
 
-	ret = sprintf(str, "ep%d%s: ", epnum >> 1,
+	len = scnprintf(str, size, "ep%d%s: ", epnum >> 1,
 			(epnum & 1) ? "in" : "out");
-	if (ret < 0)
-		return "UNKNOWN";
 
 	status = event->status;
 
 	switch (event->endpoint_event) {
 	case DWC3_DEPEVT_XFERCOMPLETE:
-		len = strlen(str);
-		sprintf(str + len, "Transfer Complete (%c%c%c)",
+		len += scnprintf(str + len, size - len,
+				"Transfer Complete (%c%c%c)",
 				status & DEPEVT_STATUS_SHORT ? 'S' : 's',
 				status & DEPEVT_STATUS_IOC ? 'I' : 'i',
 				status & DEPEVT_STATUS_LST ? 'L' : 'l');
 
-		len = strlen(str);
-
 		if (epnum <= 1)
-			sprintf(str + len, " [%s]", dwc3_ep0_state_string(ep0state));
+			scnprintf(str + len, size - len, " [%s]",
+					dwc3_ep0_state_string(ep0state));
 		break;
 	case DWC3_DEPEVT_XFERINPROGRESS:
-		len = strlen(str);
-
-		sprintf(str + len, "Transfer In Progress [%d] (%c%c%c)",
+		scnprintf(str + len, size - len,
+				"Transfer In Progress [%08x] (%c%c%c)",
 				event->parameters,
 				status & DEPEVT_STATUS_SHORT ? 'S' : 's',
 				status & DEPEVT_STATUS_IOC ? 'I' : 'i',
 				status & DEPEVT_STATUS_LST ? 'M' : 'm');
 		break;
 	case DWC3_DEPEVT_XFERNOTREADY:
-		len = strlen(str);
-
-		sprintf(str + len, "Transfer Not Ready [%d]%s",
+		len += scnprintf(str + len, size - len,
+				"Transfer Not Ready [%08x]%s",
 				event->parameters,
 				status & DEPEVT_STATUS_TRANSFER_ACTIVE ?
 				" (Active)" : " (Not Active)");
@@ -542,36 +297,38 @@ dwc3_ep_event_string(char *str, const struct dwc3_event_depevt *event,
 
 			switch (phase) {
 			case DEPEVT_STATUS_CONTROL_DATA:
-				strcat(str, " [Data Phase]");
+				scnprintf(str + len, size - len,
+						" [Data Phase]");
 				break;
 			case DEPEVT_STATUS_CONTROL_STATUS:
-				strcat(str, " [Status Phase]");
+				scnprintf(str + len, size - len,
+						" [Status Phase]");
 			}
 		}
 		break;
 	case DWC3_DEPEVT_RXTXFIFOEVT:
-		strcat(str, "FIFO");
+		scnprintf(str + len, size - len, "FIFO");
 		break;
 	case DWC3_DEPEVT_STREAMEVT:
 		status = event->status;
 
 		switch (status) {
 		case DEPEVT_STREAMEVT_FOUND:
-			sprintf(str + ret, " Stream %d Found",
+			scnprintf(str + len, size - len, " Stream %d Found",
 					event->parameters);
 			break;
 		case DEPEVT_STREAMEVT_NOTFOUND:
 		default:
-			strcat(str, " Stream Not Found");
+			scnprintf(str + len, size - len, " Stream Not Found");
 			break;
 		}
 
 		break;
 	case DWC3_DEPEVT_EPCMDCMPLT:
-		strcat(str, "Endpoint Command Complete");
+		scnprintf(str + len, size - len, "Endpoint Command Complete");
 		break;
 	default:
-		sprintf(str, "UNKNOWN");
+		scnprintf(str + len, size - len, "UNKNOWN");
 	}
 
 	return str;
@@ -596,8 +353,8 @@ static inline const char *dwc3_gadget_event_type_string(u8 event)
 		return "Wake-Up";
 	case DWC3_DEVICE_EVENT_HIBER_REQ:
 		return "Hibernation";
-	case DWC3_DEVICE_EVENT_EOPF:
-		return "End of Periodic Frame";
+	case DWC3_DEVICE_EVENT_SUSPEND:
+		return "Suspend";
 	case DWC3_DEVICE_EVENT_SOF:
 		return "Start of Frame";
 	case DWC3_DEVICE_EVENT_ERRATIC_ERROR:
@@ -611,14 +368,17 @@ static inline const char *dwc3_gadget_event_type_string(u8 event)
 	}
 }
 
-static inline const char *dwc3_decode_event(char *str, u32 event, u32 ep0state)
+static inline const char *dwc3_decode_event(char *str, size_t size, u32 event,
+		u32 ep0state)
 {
-	const union dwc3_event evt = (union dwc3_event) event;
+	union dwc3_event evt;
+
+	memcpy(&evt, &event, sizeof(event));
 
 	if (evt.type.is_devspec)
-		return dwc3_gadget_event_string(str, &evt.devt);
+		return dwc3_gadget_event_string(str, size, &evt.devt);
 	else
-		return dwc3_ep_event_string(str, &evt.depevt, ep0state);
+		return dwc3_ep_event_string(str, size, &evt.depevt, ep0state);
 }
 
 static inline const char *dwc3_ep_cmd_status_string(int status)
@@ -653,9 +413,15 @@ static inline const char *dwc3_gadget_generic_cmd_status_string(int status)
 
 
 #ifdef CONFIG_DEBUG_FS
-extern void dwc3_debugfs_init(struct dwc3 *);
-extern void dwc3_debugfs_exit(struct dwc3 *);
+extern void dwc3_debugfs_create_endpoint_dir(struct dwc3_ep *dep);
+extern void dwc3_debugfs_remove_endpoint_dir(struct dwc3_ep *dep);
+extern void dwc3_debugfs_init(struct dwc3 *d);
+extern void dwc3_debugfs_exit(struct dwc3 *d);
 #else
+static inline void dwc3_debugfs_create_endpoint_dir(struct dwc3_ep *dep)
+{  }
+static inline void dwc3_debugfs_remove_endpoint_dir(struct dwc3_ep *dep)
+{  }
 static inline void dwc3_debugfs_init(struct dwc3 *d)
 {  }
 static inline void dwc3_debugfs_exit(struct dwc3 *d)
diff --git a/drivers/usb/dwc3/ep0.c b/drivers/usb/dwc3/ep0.c
index a8503a2bad..6285566b4b 100644
--- a/drivers/usb/dwc3/ep0.c
+++ b/drivers/usb/dwc3/ep0.c
@@ -1,26 +1,26 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/**
+// SPDX-License-Identifier: GPL-2.0
+/*
  * ep0.c - DesignWare USB3 DRD Controller Endpoint 0 Handling
  *
- * Copyright (C) 2015 Texas Instruments Incorporated - http://www.ti.com
+ * Copyright (C) 2010-2011 Texas Instruments Incorporated - https://www.ti.com
  *
  * Authors: Felipe Balbi <balbi@ti.com>,
  *	    Sebastian Andrzej Siewior <bigeasy@linutronix.de>
- *
- * Taken from Linux Kernel v3.19-rc1 (drivers/usb/dwc3/ep0.c) and ported
- * to uboot.
- *
- * commit c00552ebaf : Merge 3.18-rc7 into usb-next
  */
 
 #include <common.h>
 #include <dma.h>
 #include <linux/kernel.h>
 #include <linux/list.h>
+#include <linux/completion.h>
 
 #include <linux/usb/gadget.h>
+#include <linux/usb/ch9.h>
+#include <linux/usb/gadget.h>
+#include <linux/usb/composite.h>
 
 #include "core.h"
+#include "debug.h"
 #include "gadget.h"
 #include "io.h"
 
@@ -29,11 +29,10 @@ static void __dwc3_ep0_do_control_data(struct dwc3 *dwc,
 		struct dwc3_ep *dep, struct dwc3_request *req);
 
 static void dwc3_ep0_prepare_one_trb(struct dwc3_ep *dep,
-				     dma_addr_t buf_dma, u32 len, u32 type,
-				     bool chain)
+		dma_addr_t buf_dma, u32 len, u32 type, bool chain)
 {
-	struct dwc3_trb *trb;
-	struct dwc3 *dwc;
+	struct dwc3_trb			*trb;
+	struct dwc3			*dwc;
 
 	dwc = dep->dwc;
 	trb = &dwc->ep0_trb[dep->trb_enqueue];
@@ -47,67 +46,47 @@ static void dwc3_ep0_prepare_one_trb(struct dwc3_ep *dep,
 	trb->ctrl = type;
 
 	trb->ctrl |= (DWC3_TRB_CTRL_HWO
-		     | DWC3_TRB_CTRL_ISP_IMI);
+			| DWC3_TRB_CTRL_ISP_IMI);
 
 	if (chain)
 		trb->ctrl |= DWC3_TRB_CTRL_CHN;
 	else
 		trb->ctrl |= (DWC3_TRB_CTRL_IOC
-			     | DWC3_TRB_CTRL_LST);
+				| DWC3_TRB_CTRL_LST);
 }
 
 static int dwc3_ep0_start_trans(struct dwc3_ep *dep)
 {
 	struct dwc3_gadget_ep_cmd_params params;
-	struct dwc3 *dwc;
-	int ret;
+	struct dwc3			*dwc;
+	int				ret;
 
-	dwc = dep->dwc;
-
-	if (dep->flags & DWC3_EP_TRANSFER_STARTED) {
-		dev_err(dwc->dev, "%s: transfer already started\n", dep->name);
+	if (dep->flags & DWC3_EP_TRANSFER_STARTED)
 		return 0;
-	}
+
+	dwc = dep->dwc;
 
 	memset(&params, 0, sizeof(params));
 	params.param0 = upper_32_bits(dwc->ep0_trb_addr);
 	params.param1 = lower_32_bits(dwc->ep0_trb_addr);
 
 	ret = dwc3_send_gadget_ep_cmd(dep, DWC3_DEPCMD_STARTTRANSFER, &params);
-	if (ret < 0) {
-		dev_err(dwc->dev, "%s: STARTTRANSFER failed\n", dep->name);
+	if (ret < 0)
 		return ret;
-	}
 
 	dwc->ep0_next_event = DWC3_EP0_COMPLETE;
 
 	return 0;
 }
 
-static const char *dwc3_ep0_state_string(enum dwc3_ep0_state state)
-{
-	switch (state) {
-	case EP0_UNCONNECTED:
-		return "Unconnected";
-	case EP0_SETUP_PHASE:
-		return "Setup Phase";
-	case EP0_DATA_PHASE:
-		return "Data Phase";
-	case EP0_STATUS_PHASE:
-		return "Status Phase";
-	default:
-		return "UNKNOWN";
-	}
-}
-
 static int __dwc3_gadget_ep0_queue(struct dwc3_ep *dep,
-				   struct dwc3_request *req)
+		struct dwc3_request *req)
 {
-	struct dwc3 *dwc = dep->dwc;
+	struct dwc3		*dwc = dep->dwc;
 
-	req->request.actual = 0;
-	req->request.status = -EINPROGRESS;
-	req->epnum = dep->number;
+	req->request.actual	= 0;
+	req->request.status	= -EINPROGRESS;
+	req->epnum		= dep->number;
 
 	list_add_tail(&req->list, &dep->pending_list);
 
@@ -121,7 +100,7 @@ static int __dwc3_gadget_ep0_queue(struct dwc3_ep *dep,
 	 * IRQ we were waiting for is long gone.
 	 */
 	if (dep->flags & DWC3_EP_PENDING_REQUEST) {
-		unsigned direction;
+		unsigned int direction;
 
 		direction = !!(dep->flags & DWC3_EP0_DIR_IN);
 
@@ -143,16 +122,14 @@ static int __dwc3_gadget_ep0_queue(struct dwc3_ep *dep,
 	 * handle it here.
 	 */
 	if (dwc->delayed_status) {
-		unsigned direction;
+		unsigned int direction;
 
 		direction = !dwc->ep0_expect_in;
 		dwc->delayed_status = false;
-		usb_gadget_set_state(&dwc->gadget, USB_STATE_CONFIGURED);
+		usb_gadget_set_state(dwc->gadget, USB_STATE_CONFIGURED);
 
 		if (dwc->ep0state == EP0_STATUS_PHASE)
 			__dwc3_ep0_do_control_status(dwc, dwc->eps[direction]);
-		else
-			dev_dbg(dwc->dev, "too early for delayed status\n");
 
 		return 0;
 	}
@@ -190,7 +167,7 @@ static int __dwc3_gadget_ep0_queue(struct dwc3_ep *dep,
 	 * XferNotReady(STATUS).
 	 */
 	if (dwc->three_stage_setup) {
-		unsigned direction;
+		unsigned int direction;
 
 		direction = dwc->ep0_expect_in;
 		dwc->ep0state = EP0_DATA_PHASE;
@@ -205,16 +182,18 @@ static int __dwc3_gadget_ep0_queue(struct dwc3_ep *dep,
 
 int dwc3_gadget_ep0_queue(struct usb_ep *ep, struct usb_request *request)
 {
-	struct dwc3_request *req = to_dwc3_request(request);
-	struct dwc3_ep *dep = to_dwc3_ep(ep);
-	struct dwc3 *dwc = dep->dwc;
-	unsigned long flags;
-	int ret;
+	struct dwc3_request		*req = to_dwc3_request(request);
+	struct dwc3_ep			*dep = to_dwc3_ep(ep);
+	struct dwc3			*dwc = dep->dwc;
+
+	unsigned long			flags;
+
+	int				ret;
 
 	spin_lock_irqsave(&dwc->lock, flags);
-	if (!dep->endpoint.desc) {
-		dev_err(dwc->dev, "trying to queue request %p to disabled %s\n",
-			request, dep->name);
+	if (!dep->endpoint.desc || !dwc->pullups_connected || !dwc->connected) {
+		dev_err(dwc->dev, "%s: can't queue to disabled endpoint\n",
+				dep->name);
 		ret = -ESHUTDOWN;
 		goto out;
 	}
@@ -225,10 +204,6 @@ int dwc3_gadget_ep0_queue(struct usb_ep *ep, struct usb_request *request)
 		goto out;
 	}
 
-	dev_dbg(dwc->dev, "queueing request %p to %s length %d state '%s'\n",
-		request, dep->name, request->length,
-		dwc3_ep0_state_string(dwc->ep0state));
-
 	ret = __dwc3_gadget_ep0_queue(dep, req);
 
 out:
@@ -237,9 +212,9 @@ out:
 	return ret;
 }
 
-static void dwc3_ep0_stall_and_restart(struct dwc3 *dwc)
+void dwc3_ep0_stall_and_restart(struct dwc3 *dwc)
 {
-	struct dwc3_ep *dep;
+	struct dwc3_ep		*dep;
 
 	/* reinitialize physical ep1 */
 	dep = dwc->eps[1];
@@ -252,20 +227,22 @@ static void dwc3_ep0_stall_and_restart(struct dwc3 *dwc)
 	dwc->delayed_status = false;
 
 	if (!list_empty(&dep->pending_list)) {
-		struct dwc3_request *req;
+		struct dwc3_request	*req;
 
 		req = next_request(&dep->pending_list);
 		dwc3_gadget_giveback(dep, req, -ECONNRESET);
 	}
 
+	dwc->eps[0]->trb_enqueue = 0;
+	dwc->eps[1]->trb_enqueue = 0;
 	dwc->ep0state = EP0_SETUP_PHASE;
 	dwc3_ep0_out_start(dwc);
 }
 
 int __dwc3_gadget_ep0_set_halt(struct usb_ep *ep, int value)
 {
-	struct dwc3_ep *dep = to_dwc3_ep(ep);
-	struct dwc3 *dwc = dep->dwc;
+	struct dwc3_ep			*dep = to_dwc3_ep(ep);
+	struct dwc3			*dwc = dep->dwc;
 
 	dwc3_ep0_stall_and_restart(dwc);
 
@@ -274,8 +251,8 @@ int __dwc3_gadget_ep0_set_halt(struct usb_ep *ep, int value)
 
 int dwc3_gadget_ep0_set_halt(struct usb_ep *ep, int value)
 {
-	unsigned long flags;
-	int ret;
+	unsigned long			flags;
+	int				ret;
 
 	spin_lock_irqsave(&dwc->lock, flags);
 	ret = __dwc3_gadget_ep0_set_halt(ep, value);
@@ -286,27 +263,49 @@ int dwc3_gadget_ep0_set_halt(struct usb_ep *ep, int value)
 
 void dwc3_ep0_out_start(struct dwc3 *dwc)
 {
-	struct dwc3_ep *dep;
-	int ret;
+	struct dwc3_ep			*dep;
+	int				ret;
+	int                             i;
+
+	complete(&dwc->ep0_in_setup);
 
 	dep = dwc->eps[0];
 	dwc3_ep0_prepare_one_trb(dep, dwc->ep0_trb_addr, 8,
-				 DWC3_TRBCTL_CONTROL_SETUP, false);
+			DWC3_TRBCTL_CONTROL_SETUP, false);
 	ret = dwc3_ep0_start_trans(dep);
 	WARN_ON(ret < 0);
+	for (i = 2; i < DWC3_ENDPOINTS_NUM; i++) {
+		struct dwc3_ep *dwc3_ep;
+
+		dwc3_ep = dwc->eps[i];
+		if (!dwc3_ep)
+			continue;
+
+		if (!(dwc3_ep->flags & DWC3_EP_DELAY_STOP))
+			continue;
+
+		dwc3_ep->flags &= ~DWC3_EP_DELAY_STOP;
+		if (dwc->connected)
+			dwc3_stop_active_transfer(dwc3_ep, true, true);
+		else
+			dwc3_remove_requests(dwc, dwc3_ep, -ESHUTDOWN);
+	}
 }
 
 static struct dwc3_ep *dwc3_wIndex_to_dep(struct dwc3 *dwc, __le16 wIndex_le)
 {
-	struct dwc3_ep *dep;
-	u32 windex = le16_to_cpu(wIndex_le);
-	u32 epnum;
+	struct dwc3_ep		*dep;
+	u32			windex = le16_to_cpu(wIndex_le);
+	u32			epnum;
 
 	epnum = (windex & USB_ENDPOINT_NUMBER_MASK) << 1;
 	if ((windex & USB_ENDPOINT_DIR_MASK) == USB_DIR_IN)
 		epnum |= 1;
 
 	dep = dwc->eps[epnum];
+	if (dep == NULL)
+		return NULL;
+
 	if (dep->flags & DWC3_EP_ENABLED)
 		return dep;
 
@@ -320,14 +319,14 @@ static void dwc3_ep0_status_cmpl(struct usb_ep *ep, struct usb_request *req)
  * ch 9.4.5
  */
 static int dwc3_ep0_handle_status(struct dwc3 *dwc,
-				  struct usb_ctrlrequest *ctrl)
+		struct usb_ctrlrequest *ctrl)
 {
-	struct dwc3_ep *dep;
-	u32 recip;
-	u32 value;
-	u32 reg;
-	u16 usb_status = 0;
-	__le16 *response_pkt;
+	struct dwc3_ep		*dep;
+	u32			recip;
+	u32			value;
+	u32			reg;
+	u16			usb_status = 0;
+	__le16			*response_pkt;
 
 	/* We don't support PTM_STATUS */
 	value = le16_to_cpu(ctrl->wValue);
@@ -340,7 +339,7 @@ static int dwc3_ep0_handle_status(struct dwc3 *dwc,
 		/*
 		 * LTM will be set once we know how to set this in HW.
 		 */
-		usb_status |= dwc->is_selfpowered << USB_DEVICE_SELF_POWERED;
+		usb_status |= dwc->gadget->is_selfpowered;
 
 		if ((dwc->speed == DWC3_DSTS_SUPERSPEED) ||
 		    (dwc->speed == DWC3_DSTS_SUPERSPEED_PLUS)) {
@@ -385,7 +384,7 @@ static int dwc3_ep0_handle_status(struct dwc3 *dwc,
 }
 
 static int dwc3_ep0_handle_u1(struct dwc3 *dwc, enum usb_device_state state,
-			      int set)
+		int set)
 {
 	u32 reg;
 
@@ -394,6 +393,8 @@ static int dwc3_ep0_handle_u1(struct dwc3 *dwc, enum usb_device_state state,
 	if ((dwc->speed != DWC3_DSTS_SUPERSPEED) &&
 			(dwc->speed != DWC3_DSTS_SUPERSPEED_PLUS))
 		return -EINVAL;
+	if (set && dwc->dis_u1_entry_quirk)
+		return -EINVAL;
 
 	reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 	if (set)
@@ -406,15 +407,18 @@ static int dwc3_ep0_handle_u1(struct dwc3 *dwc, enum usb_device_state state,
 }
 
 static int dwc3_ep0_handle_u2(struct dwc3 *dwc, enum usb_device_state state,
-			      int set)
+		int set)
 {
 	u32 reg;
 
+
 	if (state != USB_STATE_CONFIGURED)
 		return -EINVAL;
 	if ((dwc->speed != DWC3_DSTS_SUPERSPEED) &&
 			(dwc->speed != DWC3_DSTS_SUPERSPEED_PLUS))
 		return -EINVAL;
+	if (set && dwc->dis_u2_entry_quirk)
+		return -EINVAL;
 
 	reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 	if (set)
@@ -427,7 +431,7 @@ static int dwc3_ep0_handle_u2(struct dwc3 *dwc, enum usb_device_state state,
 }
 
 static int dwc3_ep0_handle_test(struct dwc3 *dwc, enum usb_device_state state,
-				u32 wIndex, int set)
+		u32 wIndex, int set)
 {
 	if ((wIndex & 0xff) != 0)
 		return -EINVAL;
@@ -451,22 +455,22 @@ static int dwc3_ep0_handle_test(struct dwc3 *dwc, enum usb_device_state state,
 }
 
 static int dwc3_ep0_handle_device(struct dwc3 *dwc,
-				  struct usb_ctrlrequest *ctrl, int set)
+		struct usb_ctrlrequest *ctrl, int set)
 {
-	enum usb_device_state state;
-	u32 wValue;
-	u32 wIndex;
-	int ret = 0;
+	enum usb_device_state	state;
+	u32			wValue;
+	u32			wIndex;
+	int			ret = 0;
 
 	wValue = le16_to_cpu(ctrl->wValue);
 	wIndex = le16_to_cpu(ctrl->wIndex);
-	state = dwc->gadget.state;
+	state = dwc->gadget->state;
 
 	switch (wValue) {
 	case USB_DEVICE_REMOTE_WAKEUP:
 		break;
 	/*
-	 * 9.4.1 says only only for SS, in AddressState only for
+	 * 9.4.1 says only for SS, in AddressState only for
 	 * default control pipe
 	 */
 	case USB_DEVICE_U1_ENABLE:
@@ -489,10 +493,10 @@ static int dwc3_ep0_handle_device(struct dwc3 *dwc,
 }
 
 static int dwc3_ep0_handle_intf(struct dwc3 *dwc,
-				struct usb_ctrlrequest *ctrl, int set)
+		struct usb_ctrlrequest *ctrl, int set)
 {
-	u32 wValue;
-	int ret = 0;
+	u32			wValue;
+	int			ret = 0;
 
 	wValue = le16_to_cpu(ctrl->wValue);
 
@@ -514,11 +518,11 @@ static int dwc3_ep0_handle_intf(struct dwc3 *dwc,
 }
 
 static int dwc3_ep0_handle_endpoint(struct dwc3 *dwc,
-				    struct usb_ctrlrequest *ctrl, int set)
+		struct usb_ctrlrequest *ctrl, int set)
 {
-	struct dwc3_ep *dep;
-	u32 wValue;
-	int ret;
+	struct dwc3_ep		*dep;
+	u32			wValue;
+	int			ret;
 
 	wValue = le16_to_cpu(ctrl->wValue);
 
@@ -534,6 +538,11 @@ static int dwc3_ep0_handle_endpoint(struct dwc3 *dwc,
 		ret = __dwc3_gadget_ep_set_halt(dep, set, true);
 		if (ret)
 			return -EINVAL;
+
+		/* ClearFeature(Halt) may need delayed status */
+		if (!set && (dep->flags & DWC3_EP_END_TRANSFER_PENDING))
+			return USB_GADGET_DELAYED_STATUS;
+
 		break;
 	default:
 		return -EINVAL;
@@ -542,12 +551,11 @@ static int dwc3_ep0_handle_endpoint(struct dwc3 *dwc,
 	return 0;
 }
 
-
 static int dwc3_ep0_handle_feature(struct dwc3 *dwc,
-				   struct usb_ctrlrequest *ctrl, int set)
+		struct usb_ctrlrequest *ctrl, int set)
 {
-	u32 recip;
-	int ret;
+	u32			recip;
+	int			ret;
 
 	recip = ctrl->bRequestType & USB_RECIP_MASK;
 
@@ -570,7 +578,7 @@ static int dwc3_ep0_handle_feature(struct dwc3 *dwc,
 
 static int dwc3_ep0_set_address(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
 {
-	enum usb_device_state state = dwc->gadget.state;
+	enum usb_device_state state = dwc->gadget->state;
 	u32 addr;
 	u32 reg;
 
@@ -581,7 +589,7 @@ static int dwc3_ep0_set_address(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
 	}
 
 	if (state == USB_STATE_CONFIGURED) {
-		dev_err(dwc->dev, "trying to set address when configured\n");
+		dev_err(dwc->dev, "can't SetAddress() from Configured State\n");
 		return -EINVAL;
 	}
 
@@ -591,27 +599,28 @@ static int dwc3_ep0_set_address(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
 	dwc3_writel(dwc->regs, DWC3_DCFG, reg);
 
 	if (addr)
-		usb_gadget_set_state(&dwc->gadget, USB_STATE_ADDRESS);
+		usb_gadget_set_state(dwc->gadget, USB_STATE_ADDRESS);
 	else
-		usb_gadget_set_state(&dwc->gadget, USB_STATE_DEFAULT);
+		usb_gadget_set_state(dwc->gadget, USB_STATE_DEFAULT);
 
 	return 0;
 }
 
 static int dwc3_ep0_delegate_req(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
 {
-	int ret;
+	int ret = -EINVAL;
 
-	spin_unlock(&dwc->lock);
-	ret = dwc->gadget_driver->setup(&dwc->gadget, ctrl);
-	spin_lock(&dwc->lock);
+	if (dwc->async_callbacks) {
+		spin_unlock(&dwc->lock);
+		ret = dwc->gadget_driver->setup(dwc->gadget, ctrl);
+		spin_lock(&dwc->lock);
+	}
 	return ret;
 }
 
-#define USB_GADGET_DELAYED_STATUS	0x7fff	/* Impossibly large value */
 static int dwc3_ep0_set_config(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
 {
-	enum usb_device_state state = dwc->gadget.state;
+	enum usb_device_state state = dwc->gadget->state;
 	u32 cfg;
 	int ret;
 	u32 reg;
@@ -623,6 +632,8 @@ static int dwc3_ep0_set_config(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
 		return -EINVAL;
 
 	case USB_STATE_ADDRESS:
+		dwc3_gadget_clear_tx_fifos(dwc);
+
 		ret = dwc3_ep0_delegate_req(dwc, ctrl);
 		/* if the cfg matches and the cfg is non zero */
 		if (cfg && (!ret || (ret == USB_GADGET_DELAYED_STATUS))) {
@@ -634,7 +645,7 @@ static int dwc3_ep0_set_config(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
 			 * to change the state on the next usb_ep_queue()
 			 */
 			if (ret == 0)
-				usb_gadget_set_state(&dwc->gadget,
+				usb_gadget_set_state(dwc->gadget,
 						USB_STATE_CONFIGURED);
 
 			/*
@@ -642,7 +653,10 @@ static int dwc3_ep0_set_config(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
 			 * nothing is pending from application.
 			 */
 			reg = dwc3_readl(dwc->regs, DWC3_DCTL);
-			reg |= (DWC3_DCTL_ACCEPTU1ENA | DWC3_DCTL_ACCEPTU2ENA);
+			if (!dwc->dis_u1_entry_quirk)
+				reg |= DWC3_DCTL_ACCEPTU1ENA;
+			if (!dwc->dis_u2_entry_quirk)
+				reg |= DWC3_DCTL_ACCEPTU2ENA;
 			dwc3_writel(dwc->regs, DWC3_DCTL, reg);
 		}
 		break;
@@ -650,7 +664,7 @@ static int dwc3_ep0_set_config(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
 	case USB_STATE_CONFIGURED:
 		ret = dwc3_ep0_delegate_req(dwc, ctrl);
 		if (!cfg && !ret)
-			usb_gadget_set_state(&dwc->gadget,
+			usb_gadget_set_state(dwc->gadget,
 					USB_STATE_ADDRESS);
 		break;
 	default:
@@ -661,11 +675,11 @@ static int dwc3_ep0_set_config(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
 
 static void dwc3_ep0_set_sel_cmpl(struct usb_ep *ep, struct usb_request *req)
 {
-	struct dwc3_ep *dep = to_dwc3_ep(ep);
-	struct dwc3 *dwc = dep->dwc;
+	struct dwc3_ep	*dep = to_dwc3_ep(ep);
+	struct dwc3	*dwc = dep->dwc;
 
-	u32 param = 0;
-	u32 reg;
+	u32		param = 0;
+	u32		reg;
 
 	struct timing {
 		u8	u1sel;
@@ -705,9 +719,9 @@ static void dwc3_ep0_set_sel_cmpl(struct usb_ep *ep, struct usb_request *req)
 
 static int dwc3_ep0_set_sel(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
 {
-	struct dwc3_ep *dep;
-	enum usb_device_state state = dwc->gadget.state;
-	u16 wLength;
+	struct dwc3_ep	*dep;
+	enum usb_device_state state = dwc->gadget->state;
+	u16		wLength;
 
 	if (state == USB_STATE_DEFAULT)
 		return -EINVAL;
@@ -737,12 +751,11 @@ static int dwc3_ep0_set_sel(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
 	return __dwc3_gadget_ep0_queue(dep, &dwc->ep0_usb_req);
 }
 
-static int dwc3_ep0_set_isoch_delay(struct dwc3 *dwc,
-				    struct usb_ctrlrequest *ctrl)
+static int dwc3_ep0_set_isoch_delay(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
 {
-	u16 wLength;
-	u16 wValue;
-	u16 wIndex;
+	u16		wLength;
+	u16		wValue;
+	u16		wIndex;
 
 	wValue = le16_to_cpu(ctrl->wValue);
 	wLength = le16_to_cpu(ctrl->wLength);
@@ -751,11 +764,7 @@ static int dwc3_ep0_set_isoch_delay(struct dwc3 *dwc,
 	if (wIndex || wLength)
 		return -EINVAL;
 
-	/*
-	 * REVISIT It's unclear from Databook what to do with this
-	 * value. For now, just cache it.
-	 */
-	dwc->isoch_delay = wValue;
+	dwc->gadget->isoch_delay = wValue;
 
 	return 0;
 }
@@ -766,35 +775,27 @@ static int dwc3_ep0_std_request(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
 
 	switch (ctrl->bRequest) {
 	case USB_REQ_GET_STATUS:
-		dev_dbg(dwc->dev, "USB_REQ_GET_STATUS\n");
 		ret = dwc3_ep0_handle_status(dwc, ctrl);
 		break;
 	case USB_REQ_CLEAR_FEATURE:
-		dev_dbg(dwc->dev, "USB_REQ_CLEAR_FEATURE\n");
 		ret = dwc3_ep0_handle_feature(dwc, ctrl, 0);
 		break;
 	case USB_REQ_SET_FEATURE:
-		dev_dbg(dwc->dev, "USB_REQ_SET_FEATURE\n");
 		ret = dwc3_ep0_handle_feature(dwc, ctrl, 1);
 		break;
 	case USB_REQ_SET_ADDRESS:
-		dev_dbg(dwc->dev, "USB_REQ_SET_ADDRESS\n");
 		ret = dwc3_ep0_set_address(dwc, ctrl);
 		break;
 	case USB_REQ_SET_CONFIGURATION:
-		dev_dbg(dwc->dev, "USB_REQ_SET_CONFIGURATION\n");
 		ret = dwc3_ep0_set_config(dwc, ctrl);
 		break;
 	case USB_REQ_SET_SEL:
-		dev_dbg(dwc->dev, "USB_REQ_SET_SEL\n");
 		ret = dwc3_ep0_set_sel(dwc, ctrl);
 		break;
 	case USB_REQ_SET_ISOCH_DELAY:
-		dev_dbg(dwc->dev, "USB_REQ_SET_ISOCH_DELAY\n");
 		ret = dwc3_ep0_set_isoch_delay(dwc, ctrl);
 		break;
 	default:
-		dev_dbg(dwc->dev, "Forwarding to gadget driver\n");
 		ret = dwc3_ep0_delegate_req(dwc, ctrl);
 		break;
 	}
@@ -803,13 +804,13 @@ static int dwc3_ep0_std_request(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
 }
 
 static void dwc3_ep0_inspect_setup(struct dwc3 *dwc,
-				   const struct dwc3_event_depevt *event)
+		const struct dwc3_event_depevt *event)
 {
 	struct usb_ctrlrequest *ctrl = (void *) dwc->ep0_trb;
 	int ret = -EINVAL;
 	u32 len;
 
-	if (!dwc->gadget_driver)
+	if (!dwc->gadget_driver || !dwc->softconnect || !dwc->connected)
 		goto out;
 
 	len = le16_to_cpu(ctrl->wLength);
@@ -837,16 +838,16 @@ out:
 }
 
 static void dwc3_ep0_complete_data(struct dwc3 *dwc,
-				   const struct dwc3_event_depevt *event)
+		const struct dwc3_event_depevt *event)
 {
-	struct dwc3_request *r = NULL;
-	struct usb_request *ur;
-	struct dwc3_trb *trb;
-	struct dwc3_ep *ep0;
-	u32 transferred = 0;
-	u32 status;
-	u32 length;
-	u8 epnum;
+	struct dwc3_request	*r;
+	struct usb_request	*ur;
+	struct dwc3_trb		*trb;
+	struct dwc3_ep		*ep0;
+	u32			transferred = 0;
+	u32			status;
+	u32			length;
+	u8			epnum;
 
 	epnum = event->endpoint_number;
 	ep0 = dwc->eps[0];
@@ -860,9 +861,7 @@ static void dwc3_ep0_complete_data(struct dwc3 *dwc,
 
 	status = DWC3_TRB_SIZE_TRBSTS(trb->size);
 	if (status == DWC3_TRBSTS_SETUP_PENDING) {
-		dev_dbg(dwc->dev, "Setup Pending received\n");
 		dwc->setup_packet_pending = true;
-
 		if (r)
 			dwc3_gadget_giveback(ep0, r, -ECONNRESET);
 
@@ -876,7 +875,7 @@ static void dwc3_ep0_complete_data(struct dwc3 *dwc,
 	ur->actual += transferred;
 
 	if ((IS_ALIGNED(ur->length, ep0->endpoint.maxpacket) &&
-	    ur->length && ur->zero) || dwc->ep0_bounced) {
+	     ur->length && ur->zero) || dwc->ep0_bounced) {
 		trb++;
 		trb->ctrl &= ~DWC3_TRB_CTRL_HWO;
 
@@ -895,12 +894,12 @@ static void dwc3_ep0_complete_data(struct dwc3 *dwc,
 }
 
 static void dwc3_ep0_complete_status(struct dwc3 *dwc,
-				     const struct dwc3_event_depevt *event)
+		const struct dwc3_event_depevt *event)
 {
-	struct dwc3_request *r;
-	struct dwc3_ep *dep;
-	struct dwc3_trb *trb;
-	u32 status;
+	struct dwc3_request	*r;
+	struct dwc3_ep		*dep;
+	struct dwc3_trb		*trb;
+	u32			status;
 
 	dep = dwc->eps[0];
 	trb = dwc->ep0_trb;
@@ -916,27 +915,25 @@ static void dwc3_ep0_complete_status(struct dwc3 *dwc,
 
 		ret = dwc3_gadget_set_test_mode(dwc, dwc->test_mode_nr);
 		if (ret < 0) {
-			dev_dbg(dwc->dev, "Invalid Test #%d\n",
-				dwc->test_mode_nr);
+			dev_err(dwc->dev, "invalid test #%d\n",
+					dwc->test_mode_nr);
 			dwc3_ep0_stall_and_restart(dwc);
 			return;
 		}
 	}
 
 	status = DWC3_TRB_SIZE_TRBSTS(trb->size);
-	if (status == DWC3_TRBSTS_SETUP_PENDING) {
-		dev_dbg(dwc->dev, "Setup Pending received\n");
+	if (status == DWC3_TRBSTS_SETUP_PENDING)
 		dwc->setup_packet_pending = true;
-	}
 
 	dwc->ep0state = EP0_SETUP_PHASE;
 	dwc3_ep0_out_start(dwc);
 }
 
 static void dwc3_ep0_xfer_complete(struct dwc3 *dwc,
-				   const struct dwc3_event_depevt *event)
+			const struct dwc3_event_depevt *event)
 {
-	struct dwc3_ep *dep = dwc->eps[event->endpoint_number];
+	struct dwc3_ep		*dep = dwc->eps[event->endpoint_number];
 
 	dep->flags &= ~DWC3_EP_TRANSFER_STARTED;
 	dep->resource_index = 0;
@@ -944,17 +941,14 @@ static void dwc3_ep0_xfer_complete(struct dwc3 *dwc,
 
 	switch (dwc->ep0state) {
 	case EP0_SETUP_PHASE:
-		dev_dbg(dwc->dev, "Setup Phase\n");
 		dwc3_ep0_inspect_setup(dwc, event);
 		break;
 
 	case EP0_DATA_PHASE:
-		dev_dbg(dwc->dev, "Data Phase\n");
 		dwc3_ep0_complete_data(dwc, event);
 		break;
 
 	case EP0_STATUS_PHASE:
-		dev_dbg(dwc->dev, "Status Phase\n");
 		dwc3_ep0_complete_status(dwc, event);
 		break;
 	default:
@@ -963,31 +957,29 @@ static void dwc3_ep0_xfer_complete(struct dwc3 *dwc,
 }
 
 static void __dwc3_ep0_do_control_data(struct dwc3 *dwc,
-				       struct dwc3_ep *dep,
-				       struct dwc3_request *req)
+		struct dwc3_ep *dep, struct dwc3_request *req)
 {
-	dma_addr_t dma_addr;
-	int ret;
+	unsigned int		trb_length = 0;
+	int			ret;
 
 	req->direction = !!dep->number;
 
 	if (req->request.length == 0) {
-		dwc3_ep0_prepare_one_trb(dep, dwc->ep0_trb_addr, 0,
-					 DWC3_TRBCTL_CONTROL_DATA, false);
+		if (!req->direction)
+			trb_length = dep->endpoint.maxpacket;
+
+		dwc3_ep0_prepare_one_trb(dep, dwc->bounce_addr, trb_length,
+				DWC3_TRBCTL_CONTROL_DATA, false);
 		ret = dwc3_ep0_start_trans(dep);
-	} else if (!IS_ALIGNED(req->request.length, dep->endpoint.maxpacket) &&
-		   (dep->number == 0)) {
-		u32 maxpacket;
-		u32 rem;
-
-		dma_addr = dma_map_single(dwc->dev, req->request.buf,
-					  req->request.length,
-					  dep->number ?
-					  DMA_TO_DEVICE : DMA_FROM_DEVICE);
-		if (dma_mapping_error(dwc->dev, dma_addr))
-			return;
+	} else if (!IS_ALIGNED(req->request.length, dep->endpoint.maxpacket)
+			&& (dep->number == 0)) {
+		u32	maxpacket;
+		u32	rem;
 
-		req->request.dma = dma_addr;
+		ret = usb_gadget_map_request_by_dev(dwc->sysdev,
+				&req->request, dep->number);
+		if (ret)
+			return;
 
 		maxpacket = dep->endpoint.maxpacket;
 		rem = req->request.length % maxpacket;
@@ -1009,14 +1001,11 @@ static void __dwc3_ep0_do_control_data(struct dwc3 *dwc,
 		ret = dwc3_ep0_start_trans(dep);
 	} else if (IS_ALIGNED(req->request.length, dep->endpoint.maxpacket) &&
 		   req->request.length && req->request.zero) {
-		dma_addr = dma_map_single(dwc->dev, req->request.buf,
-					  req->request.length,
-					  dep->number ?
-					  DMA_TO_DEVICE : DMA_FROM_DEVICE);
-		if (dma_mapping_error(dwc->dev, dma_addr))
-			return;
 
-		req->request.dma = dma_addr;
+		ret = usb_gadget_map_request_by_dev(dwc->sysdev,
+				&req->request, dep->number);
+		if (ret)
+			return;
 
 		/* prepare normal TRB */
 		dwc3_ep0_prepare_one_trb(dep, req->request.dma,
@@ -1026,21 +1015,20 @@ static void __dwc3_ep0_do_control_data(struct dwc3 *dwc,
 
 		req->trb = &dwc->ep0_trb[dep->trb_enqueue - 1];
 
+		if (!req->direction)
+			trb_length = dep->endpoint.maxpacket;
+
 		/* Now prepare one extra TRB to align transfer size */
 		dwc3_ep0_prepare_one_trb(dep, dwc->bounce_addr,
-					 0, DWC3_TRBCTL_CONTROL_DATA,
+					 trb_length, DWC3_TRBCTL_CONTROL_DATA,
 					 false);
 		ret = dwc3_ep0_start_trans(dep);
 	} else {
-		dma_addr = dma_map_single(dwc->dev, req->request.buf,
-					  req->request.length,
-					  dep->number ?
-					  DMA_TO_DEVICE : DMA_FROM_DEVICE);
-		if (dma_mapping_error(dwc->dev, dma_addr))
+		ret = usb_gadget_map_request_by_dev(dwc->sysdev,
+				&req->request, dep->number);
+		if (ret)
 			return;
 
-		req->request.dma = dma_addr;
-
 		dwc3_ep0_prepare_one_trb(dep, req->request.dma,
 				req->request.length, DWC3_TRBCTL_CONTROL_DATA,
 				false);
@@ -1055,8 +1043,8 @@ static void __dwc3_ep0_do_control_data(struct dwc3 *dwc,
 
 static int dwc3_ep0_start_control_status(struct dwc3_ep *dep)
 {
-	struct dwc3 *dwc = dep->dwc;
-	u32 type;
+	struct dwc3		*dwc = dep->dwc;
+	u32			type;
 
 	type = dwc->three_stage_setup ? DWC3_TRBCTL_CONTROL_STATUS3
 		: DWC3_TRBCTL_CONTROL_STATUS2;
@@ -1071,20 +1059,38 @@ static void __dwc3_ep0_do_control_status(struct dwc3 *dwc, struct dwc3_ep *dep)
 }
 
 static void dwc3_ep0_do_control_status(struct dwc3 *dwc,
-				       const struct dwc3_event_depevt *event)
+		const struct dwc3_event_depevt *event)
 {
-	struct dwc3_ep *dep = dwc->eps[event->endpoint_number];
+	struct dwc3_ep		*dep = dwc->eps[event->endpoint_number];
 
 	__dwc3_ep0_do_control_status(dwc, dep);
 }
 
-static void dwc3_ep0_end_control_data(struct dwc3 *dwc, struct dwc3_ep *dep)
+void dwc3_ep0_send_delayed_status(struct dwc3 *dwc)
+{
+	unsigned int direction = !dwc->ep0_expect_in;
+
+	dwc->delayed_status = false;
+	dwc->clear_stall_protocol = 0;
+
+	if (dwc->ep0state != EP0_STATUS_PHASE)
+		return;
+
+	__dwc3_ep0_do_control_status(dwc, dwc->eps[direction]);
+}
+
+void dwc3_ep0_end_control_data(struct dwc3 *dwc, struct dwc3_ep *dep)
 {
 	struct dwc3_gadget_ep_cmd_params params;
-	u32 cmd;
-	int ret;
+	u32			cmd;
+	int			ret;
 
-	if (!dep->resource_index)
+	/*
+	 * For status/DATA OUT stage, TRB will be queued on ep0 out
+	 * endpoint for which resource index is zero. Hence allow
+	 * queuing ENDXFER command for ep0 out endpoint.
+	 */
+	if (!dep->resource_index && dep->number)
 		return;
 
 	cmd = DWC3_DEPCMD_ENDTRANSFER;
@@ -1092,17 +1098,17 @@ static void dwc3_ep0_end_control_data(struct dwc3 *dwc, struct dwc3_ep *dep)
 	cmd |= DWC3_DEPCMD_PARAM(dep->resource_index);
 	memset(&params, 0, sizeof(params));
 	ret = dwc3_send_gadget_ep_cmd(dep, cmd, &params);
-	WARN_ON(ret);
+	WARN_ON_ONCE(ret);
 	dep->resource_index = 0;
 }
 
 static void dwc3_ep0_xfernotready(struct dwc3 *dwc,
-				  const struct dwc3_event_depevt *event)
+		const struct dwc3_event_depevt *event)
 {
 	switch (event->status) {
 	case DEPEVT_STATUS_CONTROL_DATA:
-		dev_dbg(dwc->dev, "Control Data\n");
-
+		if (!dwc->softconnect || !dwc->connected)
+			return;
 		/*
 		 * We already have a DATA transfer in the controller's cache,
 		 * if we receive a XferNotReady(DATA) we will ignore it, unless
@@ -1113,9 +1119,9 @@ static void dwc3_ep0_xfernotready(struct dwc3 *dwc,
 		 * control endpoint.
 		 */
 		if (dwc->ep0_expect_in != event->endpoint_number) {
-			struct dwc3_ep *dep = dwc->eps[dwc->ep0_expect_in];
+			struct dwc3_ep	*dep = dwc->eps[dwc->ep0_expect_in];
 
-			dev_dbg(dwc->dev, "Wrong direction for Data phase\n");
+			dev_err(dwc->dev, "unexpected direction for Data Phase\n");
 			dwc3_ep0_end_control_data(dwc, dep);
 			dwc3_ep0_stall_and_restart(dwc);
 			return;
@@ -1127,15 +1133,17 @@ static void dwc3_ep0_xfernotready(struct dwc3 *dwc,
 		if (dwc->ep0_next_event != DWC3_EP0_NRDY_STATUS)
 			return;
 
-		dev_dbg(dwc->dev, "Control Status\n");
+		if (dwc->setup_packet_pending) {
+			dwc3_ep0_stall_and_restart(dwc);
+			return;
+		}
 
 		dwc->ep0state = EP0_STATUS_PHASE;
 
 		if (dwc->delayed_status) {
 			struct dwc3_ep *dep = dwc->eps[0];
 
-			WARN_ON(event->endpoint_number != 1);
-			dev_dbg(dwc->dev, "Delayed Status\n");
+			WARN_ON_ONCE(event->endpoint_number != 1);
 			/*
 			 * We should handle the delay STATUS phase here if the
 			 * request for handling delay STATUS has been queued
@@ -1143,7 +1151,7 @@ static void dwc3_ep0_xfernotready(struct dwc3 *dwc,
 			 */
 			if (!list_empty(&dep->pending_list)) {
 				dwc->delayed_status = false;
-				usb_gadget_set_state(&dwc->gadget,
+				usb_gadget_set_state(dwc->gadget,
 						     USB_STATE_CONFIGURED);
 				dwc3_ep0_do_control_status(dwc, event);
 			}
@@ -1156,14 +1164,10 @@ static void dwc3_ep0_xfernotready(struct dwc3 *dwc,
 }
 
 void dwc3_ep0_interrupt(struct dwc3 *dwc,
-			const struct dwc3_event_depevt *event)
+		const struct dwc3_event_depevt *event)
 {
-	u8 epnum = event->endpoint_number;
-
-	dev_dbg(dwc->dev, "%s while ep%d%s in state '%s'\n",
-			dwc3_ep_event_string(event->endpoint_event),
-			epnum >> 1, (epnum & 1) ? "in" : "out",
-			dwc3_ep0_state_string(dwc->ep0state));
+	struct dwc3_ep	*dep = dwc->eps[event->endpoint_number];
+	u8		cmd;
 
 	switch (event->endpoint_event) {
 	case DWC3_DEPEVT_XFERCOMPLETE:
@@ -1177,7 +1181,14 @@ void dwc3_ep0_interrupt(struct dwc3 *dwc,
 	case DWC3_DEPEVT_XFERINPROGRESS:
 	case DWC3_DEPEVT_RXTXFIFOEVT:
 	case DWC3_DEPEVT_STREAMEVT:
+		break;
 	case DWC3_DEPEVT_EPCMDCMPLT:
+		cmd = DEPEVT_PARAMETER_CMD(event->parameters);
+
+		if (cmd == DWC3_DEPCMD_ENDTRANSFER) {
+			dep->flags &= ~DWC3_EP_END_TRANSFER_PENDING;
+			dep->flags &= ~DWC3_EP_TRANSFER_STARTED;
+		}
 		break;
 	}
 }
diff --git a/drivers/usb/dwc3/gadget.c b/drivers/usb/dwc3/gadget.c
index b11fccfbfc..48be74f7e9 100644
--- a/drivers/usb/dwc3/gadget.c
+++ b/drivers/usb/dwc3/gadget.c
@@ -1,40 +1,37 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/**
+// SPDX-License-Identifier: GPL-2.0
+/*
  * gadget.c - DesignWare USB3 DRD Controller Gadget Framework Link
  *
- * Copyright (C) 2015 Texas Instruments Incorporated - http://www.ti.com
+ * Copyright (C) 2010-2011 Texas Instruments Incorporated - https://www.ti.com
  *
  * Authors: Felipe Balbi <balbi@ti.com>,
  *	    Sebastian Andrzej Siewior <bigeasy@linutronix.de>
- *
- * Taken from Linux Kernel v3.19-rc1 (drivers/usb/dwc3/gadget.c) and ported
- * to uboot.
- *
- * commit 8e74475b0e : usb: dwc3: gadget: use udc-core's reset notifier
  */
 #include <common.h>
 #include <dma.h>
 #include <io.h>
 #include <linux/list.h>
 
+#include <linux/usb/gadget.h>
+#include <linux/usb/ch9.h>
 #include <linux/usb/gadget.h>
 #include <linux/usb/ch9.h>
 
+#include "debug.h"
 #include "core.h"
 #include "gadget.h"
+#include "io.h"
 
 #define DWC3_ALIGN_FRAME(d, n)	(((d)->frame_number + ((d)->interval * (n))) \
 					& ~((d)->interval - 1))
 
-
 /**
- * dwc3_gadget_set_test_mode - Enables USB2 Test Modes
+ * dwc3_gadget_set_test_mode - enables usb2 test modes
  * @dwc: pointer to our context structure
  * @mode: the mode to set (J, K SE0 NAK, Force Enable)
  *
- * Caller should take care of locking. This function will
- * return 0 on success or -EINVAL if wrong Test Selector
- * is passed
+ * Caller should take care of locking. This function will return 0 on
+ * success or -EINVAL if wrong Test Selector is passed.
  */
 int dwc3_gadget_set_test_mode(struct dwc3 *dwc, int mode)
 {
@@ -55,13 +52,13 @@ int dwc3_gadget_set_test_mode(struct dwc3 *dwc, int mode)
 		return -EINVAL;
 	}
 
-	dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+	dwc3_gadget_dctl_write_safe(dwc, reg);
 
 	return 0;
 }
 
 /**
- * dwc3_gadget_get_link_state - Gets current state of USB Link
+ * dwc3_gadget_get_link_state - gets current state of usb link
  * @dwc: pointer to our context structure
  *
  * Caller should take care of locking. This function will
@@ -69,7 +66,7 @@ int dwc3_gadget_set_test_mode(struct dwc3 *dwc, int mode)
  */
 int dwc3_gadget_get_link_state(struct dwc3 *dwc)
 {
-	u32 reg;
+	u32		reg;
 
 	reg = dwc3_readl(dwc->regs, DWC3_DSTS);
 
@@ -77,7 +74,7 @@ int dwc3_gadget_get_link_state(struct dwc3 *dwc)
 }
 
 /**
- * dwc3_gadget_set_link_state - Sets USB Link to a particular State
+ * dwc3_gadget_set_link_state - sets usb link to a particular state
  * @dwc: pointer to our context structure
  * @state: the state to put link into
  *
@@ -86,14 +83,14 @@ int dwc3_gadget_get_link_state(struct dwc3 *dwc)
  */
 int dwc3_gadget_set_link_state(struct dwc3 *dwc, enum dwc3_link_state state)
 {
-	int retries = 10000;
-	u32 reg;
+	int		retries = 10000;
+	u32		reg;
 
 	/*
 	 * Wait until device controller is ready. Only applies to 1.94a and
 	 * later RTL.
 	 */
-	if (dwc->revision >= DWC3_REVISION_194A) {
+	if (!DWC3_VER_IS_PRIOR(DWC3, 194A)) {
 		while (--retries) {
 			reg = dwc3_readl(dwc->regs, DWC3_DSTS);
 			if (reg & DWC3_DSTS_DCNRD)
@@ -109,6 +106,9 @@ int dwc3_gadget_set_link_state(struct dwc3 *dwc, enum dwc3_link_state state)
 	reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 	reg &= ~DWC3_DCTL_ULSTCHNGREQ_MASK;
 
+	/* set no action before sending new link state change */
+	dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+
 	/* set requested state */
 	reg |= DWC3_DCTL_ULSTCHNGREQ(state);
 	dwc3_writel(dwc->regs, DWC3_DCTL, reg);
@@ -117,7 +117,7 @@ int dwc3_gadget_set_link_state(struct dwc3 *dwc, enum dwc3_link_state state)
 	 * The following code is racy when called from dwc3_gadget_wakeup,
 	 * and is not needed, at least on newer versions
 	 */
-	if (dwc->revision >= DWC3_REVISION_194A)
+	if (!DWC3_VER_IS_PRIOR(DWC3, 194A))
 		return 0;
 
 	/* wait for a change in DSTS */
@@ -131,8 +131,6 @@ int dwc3_gadget_set_link_state(struct dwc3 *dwc, enum dwc3_link_state state)
 		udelay(5);
 	}
 
-	dev_dbg(dwc->dev, "link state change request timed out\n");
-
 	return -ETIMEDOUT;
 }
 
@@ -170,10 +168,9 @@ static void dwc3_ep_inc_deq(struct dwc3_ep *dep)
 }
 
 static void dwc3_gadget_del_and_unmap_request(struct dwc3_ep *dep,
-					      struct dwc3_request *req,
-					      int status)
+		struct dwc3_request *req, int status)
 {
-	struct dwc3 *dwc = dep->dwc;
+	struct dwc3			*dwc = dep->dwc;
 
 	list_del(&req->list);
 	req->remaining = 0;
@@ -182,13 +179,10 @@ static void dwc3_gadget_del_and_unmap_request(struct dwc3_ep *dep,
 	if (req->request.status == -EINPROGRESS)
 		req->request.status = status;
 
-	if (req->request.length == 0)
-		return;
-
 	if (req->trb)
 		dma_unmap_single(dwc->dev, req->request.dma,
-				 req->request.length,
-			 req->direction ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
+				req->request.length,
+				req->direction ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
 
 	req->trb = NULL;
 }
@@ -204,18 +198,13 @@ static void dwc3_gadget_del_and_unmap_request(struct dwc3_ep *dep,
  * layers that it has completed.
  */
 void dwc3_gadget_giveback(struct dwc3_ep *dep, struct dwc3_request *req,
-			  int status)
+		int status)
 {
-	struct dwc3 *dwc = dep->dwc;
-
 	dwc3_gadget_del_and_unmap_request(dep, req, status);
-	dev_dbg(dwc->dev, "request %p from %s completed %d/%d ===> %d\n",
-		req, dep->name, req->request.actual,
-		req->request.length, status);
 	req->status = DWC3_REQUEST_STATUS_COMPLETED;
 
 	spin_unlock(&dwc->lock);
-	req->request.complete(&dep->endpoint, &req->request);
+	usb_gadget_giveback_request(&dep->endpoint, &req->request);
 	spin_lock(&dwc->lock);
 }
 
@@ -228,12 +217,13 @@ void dwc3_gadget_giveback(struct dwc3_ep *dep, struct dwc3_request *req,
  * Caller should take care of locking. Issue @cmd with a given @param to @dwc
  * and wait for its completion.
  */
-int dwc3_send_gadget_generic_command(struct dwc3 *dwc, unsigned cmd, u32 param)
+int dwc3_send_gadget_generic_command(struct dwc3 *dwc, unsigned int cmd,
+		u32 param)
 {
-	u32 timeout = 500;
-	int status = 0;
-	int ret = 0;
-	u32 reg;
+	u32		timeout = 500;
+	int		status = 0;
+	int		ret = 0;
+	u32		reg;
 
 	dwc3_writel(dwc->regs, DWC3_DGCMDPAR, param);
 	dwc3_writel(dwc->regs, DWC3_DGCMD, cmd | DWC3_DGCMD_CMDACT);
@@ -241,16 +231,11 @@ int dwc3_send_gadget_generic_command(struct dwc3 *dwc, unsigned cmd, u32 param)
 	do {
 		reg = dwc3_readl(dwc->regs, DWC3_DGCMD);
 		if (!(reg & DWC3_DGCMD_CMDACT)) {
-			dev_dbg(dwc->dev, "%s: Command Complete --> %d\n",
-				__func__,
-				DWC3_DGCMD_STATUS(reg));
 			status = DWC3_DGCMD_STATUS(reg);
 			if (status)
 				ret = -EINVAL;
 			break;
 		}
-
-		udelay(1);
 	} while (--timeout);
 
 	if (!timeout) {
@@ -262,6 +247,7 @@ int dwc3_send_gadget_generic_command(struct dwc3 *dwc, unsigned cmd, u32 param)
 }
 
 static int __dwc3_gadget_wakeup(struct dwc3 *dwc);
+
 /**
  * dwc3_send_gadget_ep_cmd - issue an endpoint command
  * @dep: the endpoint to which the command is going to be issued
@@ -271,17 +257,17 @@ static int __dwc3_gadget_wakeup(struct dwc3 *dwc);
  * Caller should handle locking. This function will issue @cmd with given
  * @params to @dep and wait for its completion.
  */
-int dwc3_send_gadget_ep_cmd(struct dwc3_ep *dep, unsigned cmd,
-			    struct dwc3_gadget_ep_cmd_params *params)
+int dwc3_send_gadget_ep_cmd(struct dwc3_ep *dep, unsigned int cmd,
+		struct dwc3_gadget_ep_cmd_params *params)
 {
 	const struct usb_endpoint_descriptor *desc = dep->endpoint.desc;
-	struct dwc3 *dwc = dep->dwc;
-	u32 timeout = 1000;
-	u32 saved_config = 0;
-	u32 reg;
+	struct dwc3		*dwc = dep->dwc;
+	u32			timeout = 5000;
+	u32			saved_config = 0;
+	u32			reg;
 
-	int cmd_status = 0;
-	int ret = -EINVAL;
+	int			cmd_status = 0;
+	int			ret = -EINVAL;
 
 	/*
 	 * When operating in USB 2.0 speeds (HS/FS), if GUSB2PHYCFG.ENBLSLPM or
@@ -293,7 +279,8 @@ int dwc3_send_gadget_ep_cmd(struct dwc3_ep *dep, unsigned cmd,
 	 *
 	 * DWC_usb3 3.30a and DWC_usb31 1.90a programming guide section 3.2.2
 	 */
-	if (dwc->gadget.speed <= USB_SPEED_HIGH) {
+	if (dwc->gadget->speed <= USB_SPEED_HIGH ||
+	    DWC3_DEPCMD_CMD(cmd) == DWC3_DEPCMD_ENDTRANSFER) {
 		reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
 		if (unlikely(reg & DWC3_GUSB2PHYCFG_SUSPHY)) {
 			saved_config |= DWC3_GUSB2PHYCFG_SUSPHY;
@@ -310,21 +297,40 @@ int dwc3_send_gadget_ep_cmd(struct dwc3_ep *dep, unsigned cmd,
 	}
 
 	if (DWC3_DEPCMD_CMD(cmd) == DWC3_DEPCMD_STARTTRANSFER) {
-		int		needs_wakeup;
+		int link_state;
 
-		needs_wakeup = (dwc->link_state == DWC3_LINK_STATE_U1 ||
-				dwc->link_state == DWC3_LINK_STATE_U2 ||
-				dwc->link_state == DWC3_LINK_STATE_U3);
+		/*
+		 * Initiate remote wakeup if the link state is in U3 when
+		 * operating in SS/SSP or L1/L2 when operating in HS/FS. If the
+		 * link state is in U1/U2, no remote wakeup is needed. The Start
+		 * Transfer command will initiate the link recovery.
+		 */
+		link_state = dwc3_gadget_get_link_state(dwc);
+		switch (link_state) {
+		case DWC3_LINK_STATE_U2:
+			if (dwc->gadget->speed >= USB_SPEED_SUPER)
+				break;
 
-		if (unlikely(needs_wakeup)) {
+			fallthrough;
+		case DWC3_LINK_STATE_U3:
 			ret = __dwc3_gadget_wakeup(dwc);
-			dev_warn(dwc->dev, "wakeup failed --> %d\n", ret);
+			dev_WARN_ONCE(dwc->dev, ret, "wakeup failed --> %d\n",
+					ret);
+			break;
 		}
 	}
 
-	dwc3_writel(dep->regs, DWC3_DEPCMDPAR0, params->param0);
-	dwc3_writel(dep->regs, DWC3_DEPCMDPAR1, params->param1);
-	dwc3_writel(dep->regs, DWC3_DEPCMDPAR2, params->param2);
+	/*
+	 * For some commands such as Update Transfer command, DEPCMDPARn
+	 * registers are reserved. Since the driver often sends Update Transfer
+	 * command, don't write to DEPCMDPARn to avoid register write delays and
+	 * improve performance.
+	 */
+	if (DWC3_DEPCMD_CMD(cmd) != DWC3_DEPCMD_UPDATETRANSFER) {
+		dwc3_writel(dep->regs, DWC3_DEPCMDPAR0, params->param0);
+		dwc3_writel(dep->regs, DWC3_DEPCMDPAR1, params->param1);
+		dwc3_writel(dep->regs, DWC3_DEPCMDPAR2, params->param2);
+	}
 
 	/*
 	 * Synopsys Databook 2.60a states in section 6.3.2.5.6 of that if we're
@@ -348,6 +354,14 @@ int dwc3_send_gadget_ep_cmd(struct dwc3_ep *dep, unsigned cmd,
 		cmd |= DWC3_DEPCMD_CMDACT;
 
 	dwc3_writel(dep->regs, DWC3_DEPCMD, cmd);
+
+	if (!(cmd & DWC3_DEPCMD_CMDACT) ||
+		(DWC3_DEPCMD_CMD(cmd) == DWC3_DEPCMD_ENDTRANSFER &&
+		!(cmd & DWC3_DEPCMD_CMDIOC))) {
+		ret = 0;
+		goto skip_status;
+	}
+
 	do {
 		reg = dwc3_readl(dep->regs, DWC3_DEPCMD);
 		if (!(reg & DWC3_DEPCMD_CMDACT)) {
@@ -358,6 +372,8 @@ int dwc3_send_gadget_ep_cmd(struct dwc3_ep *dep, unsigned cmd,
 				ret = 0;
 				break;
 			case DEPEVT_TRANSFER_NO_RESOURCE:
+				dev_warn(dwc->dev, "No resource for %s\n",
+					 dep->name);
 				ret = -EINVAL;
 				break;
 			case DEPEVT_TRANSFER_BUS_EXPIRY:
@@ -387,9 +403,14 @@ int dwc3_send_gadget_ep_cmd(struct dwc3_ep *dep, unsigned cmd,
 		cmd_status = -ETIMEDOUT;
 	}
 
-	if (ret == 0 && DWC3_DEPCMD_CMD(cmd) == DWC3_DEPCMD_STARTTRANSFER) {
-		dep->flags |= DWC3_EP_TRANSFER_STARTED;
-		dwc3_gadget_ep_get_transfer_index(dep);
+skip_status:
+
+	if (DWC3_DEPCMD_CMD(cmd) == DWC3_DEPCMD_STARTTRANSFER) {
+		if (ret == 0)
+			dep->flags |= DWC3_EP_TRANSFER_STARTED;
+
+		if (ret != -ETIMEDOUT)
+			dwc3_gadget_ep_get_transfer_index(dep);
 	}
 
 	if (saved_config) {
@@ -399,7 +420,6 @@ int dwc3_send_gadget_ep_cmd(struct dwc3_ep *dep, unsigned cmd,
 	}
 
 	return ret;
-
 }
 
 static int dwc3_send_clear_stall_ep_cmd(struct dwc3_ep *dep)
@@ -416,8 +436,9 @@ static int dwc3_send_clear_stall_ep_cmd(struct dwc3_ep *dep)
 	 * IN transfers due to a mishandled error condition. Synopsys
 	 * STAR 9000614252.
 	 */
-	if (dep->direction && (dwc->revision >= DWC3_REVISION_260A) &&
-	    (dwc->gadget.speed >= USB_SPEED_SUPER))
+	if (dep->direction &&
+	    !DWC3_VER_IS_PRIOR(DWC3, 260A) &&
+	    (dwc->gadget->speed >= USB_SPEED_SUPER))
 		cmd |= DWC3_DEPCMD_CLEARPENDIN;
 
 	memset(&params, 0, sizeof(params));
@@ -426,9 +447,9 @@ static int dwc3_send_clear_stall_ep_cmd(struct dwc3_ep *dep)
 }
 
 static dma_addr_t dwc3_trb_dma_offset(struct dwc3_ep *dep,
-				      struct dwc3_trb *trb)
+		struct dwc3_trb *trb)
 {
-	u32 offset = (char *) trb - (char *) dep->trb_pool;
+	u32		offset = (char *) trb - (char *) dep->trb_pool;
 
 	return dep->trb_pool_dma + offset;
 }
@@ -438,12 +459,11 @@ static int dwc3_alloc_trb_pool(struct dwc3_ep *dep)
 	if (dep->trb_pool)
 		return 0;
 
-	dep->trb_pool = dma_alloc_coherent(sizeof(struct dwc3_trb) *
-					  DWC3_TRB_NUM,
-					  &dep->trb_pool_dma);
+	dep->trb_pool = dma_alloc_coherent(sizeof(struct dwc3_trb) * DWC3_TRB_NUM,
+					   &dep->trb_pool_dma);
 	if (!dep->trb_pool) {
 		dev_err(dep->dwc->dev, "failed to allocate trb pool for %s\n",
-			dep->name);
+				dep->name);
 		return -ENOMEM;
 	}
 
@@ -452,7 +472,8 @@ static int dwc3_alloc_trb_pool(struct dwc3_ep *dep)
 
 static void dwc3_free_trb_pool(struct dwc3_ep *dep)
 {
-	dma_free_coherent(dep->trb_pool, 0, sizeof(dma_addr_t));
+	dma_free_coherent(dep->trb_pool, dep->trb_pool_dma,
+			  sizeof(struct dwc3_trb) * DWC3_TRB_NUM);
 
 	dep->trb_pool = NULL;
 	dep->trb_pool_dma = 0;
@@ -467,7 +488,7 @@ static int dwc3_gadget_set_xfer_resource(struct dwc3_ep *dep)
 	params.param0 = DWC3_DEPXFERCFG_NUM_XFER_RES(1);
 
 	return dwc3_send_gadget_ep_cmd(dep, DWC3_DEPCMD_SETTRANSFRESOURCE,
-				       &params);
+			&params);
 }
 
 /**
@@ -506,10 +527,10 @@ static int dwc3_gadget_set_xfer_resource(struct dwc3_ep *dep)
 static int dwc3_gadget_start_config(struct dwc3_ep *dep)
 {
 	struct dwc3_gadget_ep_cmd_params params;
-	struct dwc3 *dwc;
-	u32 cmd;
-	int i;
-	int ret;
+	struct dwc3		*dwc;
+	u32			cmd;
+	int			i;
+	int			ret;
 
 	if (dep->number)
 		return 0;
@@ -552,9 +573,10 @@ static int dwc3_gadget_set_ep_config(struct dwc3_ep *dep, unsigned int action)
 		| DWC3_DEPCFG_MAX_PACKET_SIZE(usb_endpoint_maxp(desc));
 
 	/* Burst size is only needed in SuperSpeed mode */
-	if (dwc->gadget.speed == USB_SPEED_SUPER) {
-		u32 burst = dep->endpoint.maxburst - 1;
-		params.param0 |= DWC3_DEPCFG_BURST_SIZE(burst);
+	if (dwc->gadget->speed >= USB_SPEED_SUPER) {
+		u32 burst = dep->endpoint.maxburst;
+
+		params.param0 |= DWC3_DEPCFG_BURST_SIZE(burst - 1);
 	}
 
 	params.param0 |= action;
@@ -569,6 +591,7 @@ static int dwc3_gadget_set_ep_config(struct dwc3_ep *dep, unsigned int action)
 
 	if (usb_ss_max_streams(comp_desc) && usb_endpoint_xfer_bulk(desc)) {
 		params.param1 |= DWC3_DEPCFG_STREAM_CAPABLE
+			| DWC3_DEPCFG_XFER_COMPLETE_EN
 			| DWC3_DEPCFG_STREAM_EVENT_EN;
 		dep->stream_capable = true;
 	}
@@ -592,31 +615,239 @@ static int dwc3_gadget_set_ep_config(struct dwc3_ep *dep, unsigned int action)
 		params.param0 |= DWC3_DEPCFG_FIFO_NUMBER(dep->number >> 1);
 
 	if (desc->bInterval) {
-		params.param1 |= DWC3_DEPCFG_BINTERVAL_M1(desc->bInterval - 1);
-		dep->interval = 1 << (desc->bInterval - 1);
+		u8 bInterval_m1;
+
+		/*
+		 * Valid range for DEPCFG.bInterval_m1 is from 0 to 13.
+		 *
+		 * NOTE: The programming guide incorrectly stated bInterval_m1
+		 * must be set to 0 when operating in fullspeed. Internally the
+		 * controller does not have this limitation. See DWC_usb3x
+		 * programming guide section 3.2.2.1.
+		 */
+		bInterval_m1 = min_t(u8, desc->bInterval - 1, 13);
+
+		if (usb_endpoint_type(desc) == USB_ENDPOINT_XFER_INT &&
+		    dwc->gadget->speed == USB_SPEED_FULL)
+			dep->interval = desc->bInterval;
+		else
+			dep->interval = 1 << (desc->bInterval - 1);
+
+		params.param1 |= DWC3_DEPCFG_BINTERVAL_M1(bInterval_m1);
 	}
 
 	return dwc3_send_gadget_ep_cmd(dep, DWC3_DEPCMD_SETEPCONFIG, &params);
 }
 
 /**
- * __dwc3_gadget_ep_enable - Initializes a HW endpoint
+ * dwc3_gadget_calc_tx_fifo_size - calculates the txfifo size value
+ * @dwc: pointer to the DWC3 context
+ * @mult: multiplier to be used when calculating the fifo_size
+ *
+ * Calculates the size value based on the equation below:
+ *
+ * DWC3 revision 280A and prior:
+ * fifo_size = mult * (max_packet / mdwidth) + 1;
+ *
+ * DWC3 revision 290A and onwards:
+ * fifo_size = mult * ((max_packet + mdwidth)/mdwidth + 1) + 1
+ *
+ * The max packet size is set to 1024, as the txfifo requirements mainly apply
+ * to super speed USB use cases.  However, it is safe to overestimate the fifo
+ * allocations for other scenarios, i.e. high speed USB.
+ */
+static int dwc3_gadget_calc_tx_fifo_size(struct dwc3 *dwc, int mult)
+{
+	int max_packet = 1024;
+	int fifo_size;
+	int mdwidth;
+
+	mdwidth = dwc3_mdwidth(dwc);
+
+	/* MDWIDTH is represented in bits, we need it in bytes */
+	mdwidth >>= 3;
+
+	if (DWC3_VER_IS_PRIOR(DWC3, 290A))
+		fifo_size = mult * (max_packet / mdwidth) + 1;
+	else
+		fifo_size = mult * ((max_packet + mdwidth) / mdwidth) + 1;
+	return fifo_size;
+}
+
+/**
+ * dwc3_gadget_clear_tx_fifos - Clears txfifo allocation
+ * @dwc: pointer to the DWC3 context
+ *
+ * Iterates through all the endpoint registers and clears the previous txfifo
+ * allocations.
+ */
+void dwc3_gadget_clear_tx_fifos(struct dwc3 *dwc)
+{
+	struct dwc3_ep *dep;
+	int fifo_depth;
+	int size;
+	int num;
+
+	if (!dwc->do_fifo_resize)
+		return;
+
+	/* Read ep0IN related TXFIFO size */
+	dep = dwc->eps[1];
+	size = dwc3_readl(dwc->regs, DWC3_GTXFIFOSIZ(0));
+	if (DWC3_IP_IS(DWC3))
+		fifo_depth = DWC3_GTXFIFOSIZ_TXFDEP(size);
+	else
+		fifo_depth = DWC31_GTXFIFOSIZ_TXFDEP(size);
+
+	dwc->last_fifo_depth = fifo_depth;
+	/* Clear existing TXFIFO for all IN eps except ep0 */
+	for (num = 3; num < min_t(int, dwc->num_eps, DWC3_ENDPOINTS_NUM);
+	     num += 2) {
+		dep = dwc->eps[num];
+		/* Don't change TXFRAMNUM on usb31 version */
+		size = DWC3_IP_IS(DWC3) ? 0 :
+			dwc3_readl(dwc->regs, DWC3_GTXFIFOSIZ(num >> 1)) &
+				   DWC31_GTXFIFOSIZ_TXFRAMNUM;
+
+		dwc3_writel(dwc->regs, DWC3_GTXFIFOSIZ(num >> 1), size);
+		dep->flags &= ~DWC3_EP_TXFIFO_RESIZED;
+	}
+	dwc->num_ep_resized = 0;
+}
+
+/*
+ * dwc3_gadget_resize_tx_fifos - reallocate fifo spaces for current use-case
+ * @dwc: pointer to our context structure
+ *
+ * This function will a best effort FIFO allocation in order
+ * to improve FIFO usage and throughput, while still allowing
+ * us to enable as many endpoints as possible.
+ *
+ * Keep in mind that this operation will be highly dependent
+ * on the configured size for RAM1 - which contains TxFifo -,
+ * the amount of endpoints enabled on coreConsultant tool, and
+ * the width of the Master Bus.
+ *
+ * In general, FIFO depths are represented with the following equation:
+ *
+ * fifo_size = mult * ((max_packet + mdwidth)/mdwidth + 1) + 1
+ *
+ * In conjunction with dwc3_gadget_check_config(), this resizing logic will
+ * ensure that all endpoints will have enough internal memory for one max
+ * packet per endpoint.
+ */
+static int dwc3_gadget_resize_tx_fifos(struct dwc3_ep *dep)
+{
+	struct dwc3 *dwc = dep->dwc;
+	int fifo_0_start;
+	int ram1_depth;
+	int fifo_size;
+	int min_depth;
+	int num_in_ep;
+	int remaining;
+	int num_fifos = 1;
+	int fifo;
+	int tmp;
+
+	if (!dwc->do_fifo_resize)
+		return 0;
+
+	/* resize IN endpoints except ep0 */
+	if (!usb_endpoint_dir_in(dep->endpoint.desc) || dep->number <= 1)
+		return 0;
+
+	/* bail if already resized */
+	if (dep->flags & DWC3_EP_TXFIFO_RESIZED)
+		return 0;
+
+	ram1_depth = DWC3_RAM1_DEPTH(dwc->hwparams.hwparams7);
+
+	if ((dep->endpoint.maxburst > 1 &&
+	     usb_endpoint_xfer_bulk(dep->endpoint.desc)) ||
+	    usb_endpoint_xfer_isoc(dep->endpoint.desc))
+		num_fifos = 3;
+
+	if (dep->endpoint.maxburst > 6 &&
+	    (usb_endpoint_xfer_bulk(dep->endpoint.desc) ||
+	     usb_endpoint_xfer_isoc(dep->endpoint.desc)) && DWC3_IP_IS(DWC31))
+		num_fifos = dwc->tx_fifo_resize_max_num;
+
+	/* FIFO size for a single buffer */
+	fifo = dwc3_gadget_calc_tx_fifo_size(dwc, 1);
+
+	/* Calculate the number of remaining EPs w/o any FIFO */
+	num_in_ep = dwc->max_cfg_eps;
+	num_in_ep -= dwc->num_ep_resized;
+
+	/* Reserve at least one FIFO for the number of IN EPs */
+	min_depth = num_in_ep * (fifo + 1);
+	remaining = ram1_depth - min_depth - dwc->last_fifo_depth;
+	remaining = max_t(int, 0, remaining);
+	/*
+	 * We've already reserved 1 FIFO per EP, so check what we can fit in
+	 * addition to it.  If there is not enough remaining space, allocate
+	 * all the remaining space to the EP.
+	 */
+	fifo_size = (num_fifos - 1) * fifo;
+	if (remaining < fifo_size)
+		fifo_size = remaining;
+
+	fifo_size += fifo;
+	/* Last increment according to the TX FIFO size equation */
+	fifo_size++;
+
+	/* Check if TXFIFOs start at non-zero addr */
+	tmp = dwc3_readl(dwc->regs, DWC3_GTXFIFOSIZ(0));
+	fifo_0_start = DWC3_GTXFIFOSIZ_TXFSTADDR(tmp);
+
+	fifo_size |= (fifo_0_start + (dwc->last_fifo_depth << 16));
+	if (DWC3_IP_IS(DWC3))
+		dwc->last_fifo_depth += DWC3_GTXFIFOSIZ_TXFDEP(fifo_size);
+	else
+		dwc->last_fifo_depth += DWC31_GTXFIFOSIZ_TXFDEP(fifo_size);
+
+	/* Check fifo size allocation doesn't exceed available RAM size. */
+	if (dwc->last_fifo_depth >= ram1_depth) {
+		dev_err(dwc->dev, "Fifosize(%d) > RAM size(%d) %s depth:%d\n",
+			dwc->last_fifo_depth, ram1_depth,
+			dep->endpoint.name, fifo_size);
+		if (DWC3_IP_IS(DWC3))
+			fifo_size = DWC3_GTXFIFOSIZ_TXFDEP(fifo_size);
+		else
+			fifo_size = DWC31_GTXFIFOSIZ_TXFDEP(fifo_size);
+
+		dwc->last_fifo_depth -= fifo_size;
+		return -ENOMEM;
+	}
+
+	dwc3_writel(dwc->regs, DWC3_GTXFIFOSIZ(dep->number >> 1), fifo_size);
+	dep->flags |= DWC3_EP_TXFIFO_RESIZED;
+	dwc->num_ep_resized++;
+
+	return 0;
+}
+
+/**
+ * __dwc3_gadget_ep_enable - initializes a hw endpoint
  * @dep: endpoint to be initialized
- * @desc: USB Endpoint Descriptor
+ * @action: one of INIT, MODIFY or RESTORE
  *
- * Caller should take care of locking
+ * Caller should take care of locking. Execute all necessary commands to
+ * initialize a HW endpoint so it can be used by a gadget driver.
  */
 static int __dwc3_gadget_ep_enable(struct dwc3_ep *dep, unsigned int action)
 {
 	const struct usb_endpoint_descriptor *desc = dep->endpoint.desc;
-	struct dwc3 *dwc = dep->dwc;
-
-	u32 reg;
-	int ret;
+	struct dwc3		*dwc = dep->dwc;
 
-	dev_dbg(dwc->dev, "Enabling %s\n", dep->name);
+	u32			reg;
+	int			ret;
 
 	if (!(dep->flags & DWC3_EP_ENABLED)) {
+		ret = dwc3_gadget_resize_tx_fifos(dep);
+		if (ret)
+			return ret;
+
 		ret = dwc3_gadget_start_config(dep);
 		if (ret)
 			return ret;
@@ -627,8 +858,8 @@ static int __dwc3_gadget_ep_enable(struct dwc3_ep *dep, unsigned int action)
 		return ret;
 
 	if (!(dep->flags & DWC3_EP_ENABLED)) {
-		struct dwc3_trb *trb_st_hw;
-		struct dwc3_trb *trb_link;
+		struct dwc3_trb	*trb_st_hw;
+		struct dwc3_trb	*trb_link;
 
 		dep->type = usb_endpoint_type(desc);
 		dep->flags |= DWC3_EP_ENABLED;
@@ -637,12 +868,13 @@ static int __dwc3_gadget_ep_enable(struct dwc3_ep *dep, unsigned int action)
 		reg |= DWC3_DALEPENA_EP(dep->number);
 		dwc3_writel(dwc->regs, DWC3_DALEPENA, reg);
 
+		dep->trb_dequeue = 0;
+		dep->trb_enqueue = 0;
+
 		if (usb_endpoint_xfer_control(desc))
-			return 0;
+			goto out;
 
 		/* Initialize the TRB ring */
-		dep->trb_dequeue = 0;
-		dep->trb_enqueue = 0;
 		memset_io(dep->trb_pool, 0,
 		       sizeof(struct dwc3_trb) * DWC3_TRB_NUM);
 
@@ -650,12 +882,8 @@ static int __dwc3_gadget_ep_enable(struct dwc3_ep *dep, unsigned int action)
 		trb_st_hw = &dep->trb_pool[0];
 
 		trb_link = &dep->trb_pool[DWC3_TRB_NUM - 1];
-		memset_io(trb_link, 0, sizeof(*trb_link));
-
-		trb_link->bpl = lower_32_bits(dwc3_trb_dma_offset(dep,
-								 trb_st_hw));
-		trb_link->bph = upper_32_bits(dwc3_trb_dma_offset(dep,
-								 trb_st_hw));
+		trb_link->bpl = lower_32_bits(dwc3_trb_dma_offset(dep, trb_st_hw));
+		trb_link->bph = upper_32_bits(dwc3_trb_dma_offset(dep, trb_st_hw));
 		trb_link->ctrl |= DWC3_TRBCTL_LINK_TRB;
 		trb_link->ctrl |= DWC3_TRB_CTRL_HWO;
 	}
@@ -664,10 +892,10 @@ static int __dwc3_gadget_ep_enable(struct dwc3_ep *dep, unsigned int action)
 	 * Issue StartTransfer here with no-op TRB so we can always rely on No
 	 * Response Update Transfer command.
 	 */
-	if ((usb_endpoint_xfer_bulk(desc) && !dep->stream_capable) ||
+	if (usb_endpoint_xfer_bulk(desc) ||
 			usb_endpoint_xfer_int(desc)) {
 		struct dwc3_gadget_ep_cmd_params params;
-		struct dwc3_trb *trb;
+		struct dwc3_trb	*trb;
 		dma_addr_t trb_dma;
 		u32 cmd;
 
@@ -683,47 +911,88 @@ static int __dwc3_gadget_ep_enable(struct dwc3_ep *dep, unsigned int action)
 		ret = dwc3_send_gadget_ep_cmd(dep, cmd, &params);
 		if (ret < 0)
 			return ret;
+
+		if (dep->stream_capable) {
+			/*
+			 * For streams, at start, there maybe a race where the
+			 * host primes the endpoint before the function driver
+			 * queues a request to initiate a stream. In that case,
+			 * the controller will not see the prime to generate the
+			 * ERDY and start stream. To workaround this, issue a
+			 * no-op TRB as normal, but end it immediately. As a
+			 * result, when the function driver queues the request,
+			 * the next START_TRANSFER command will cause the
+			 * controller to generate an ERDY to initiate the
+			 * stream.
+			 */
+			dwc3_stop_active_transfer(dep, true, true);
+
+			/*
+			 * All stream eps will reinitiate stream on NoStream
+			 * rejection until we can determine that the host can
+			 * prime after the first transfer.
+			 *
+			 * However, if the controller is capable of
+			 * TXF_FLUSH_BYPASS, then IN direction endpoints will
+			 * automatically restart the stream without the driver
+			 * initiation.
+			 */
+			if (!dep->direction ||
+			    !(dwc->hwparams.hwparams9 &
+			      DWC3_GHWPARAMS9_DEV_TXF_FLUSH_BYPASS))
+				dep->flags |= DWC3_EP_FORCE_RESTART_STREAM;
+		}
 	}
 
+out:
 	return 0;
 }
 
-static void dwc3_stop_active_transfer(struct dwc3_ep *dep, bool force,
-				      bool interrupt);
-static void dwc3_remove_requests(struct dwc3 *dwc, struct dwc3_ep *dep)
+void dwc3_remove_requests(struct dwc3 *dwc, struct dwc3_ep *dep, int status)
 {
-	struct dwc3_request *req;
+	struct dwc3_request		*req;
 
 	dwc3_stop_active_transfer(dep, true, false);
 
+	/* If endxfer is delayed, avoid unmapping requests */
+	if (dep->flags & DWC3_EP_DELAY_STOP)
+		return;
+
 	/* - giveback all requests to gadget driver */
 	while (!list_empty(&dep->started_list)) {
 		req = next_request(&dep->started_list);
 
-		dwc3_gadget_giveback(dep, req, -ESHUTDOWN);
+		dwc3_gadget_giveback(dep, req, status);
 	}
 
 	while (!list_empty(&dep->pending_list)) {
 		req = next_request(&dep->pending_list);
 
-		dwc3_gadget_giveback(dep, req, -ESHUTDOWN);
+		dwc3_gadget_giveback(dep, req, status);
+	}
+
+	while (!list_empty(&dep->cancelled_list)) {
+		req = next_request(&dep->cancelled_list);
+
+		dwc3_gadget_giveback(dep, req, status);
 	}
 }
 
 /**
- * __dwc3_gadget_ep_disable - Disables a HW endpoint
+ * __dwc3_gadget_ep_disable - disables a hw endpoint
  * @dep: the endpoint to disable
  *
- * This function also removes requests which are currently processed ny the
- * hardware and those which are not yet scheduled.
+ * This function undoes what __dwc3_gadget_ep_enable did and also removes
+ * requests which are currently being processed by the hardware and those which
+ * are not yet scheduled.
+ *
  * Caller should take care of locking.
  */
 static int __dwc3_gadget_ep_disable(struct dwc3_ep *dep)
 {
-	struct dwc3 *dwc = dep->dwc;
-	u32 reg;
-
-	dwc3_remove_requests(dwc, dep);
+	struct dwc3		*dwc = dep->dwc;
+	u32			reg;
+	u32			mask;
 
 	/* make sure HW endpoint isn't stalled */
 	if (dep->flags & DWC3_EP_STALL)
@@ -733,9 +1002,19 @@ static int __dwc3_gadget_ep_disable(struct dwc3_ep *dep)
 	reg &= ~DWC3_DALEPENA_EP(dep->number);
 	dwc3_writel(dwc->regs, DWC3_DALEPENA, reg);
 
+	dwc3_remove_requests(dwc, dep, -ESHUTDOWN);
+
 	dep->stream_capable = false;
 	dep->type = 0;
-	dep->flags = 0;
+	mask = DWC3_EP_TXFIFO_RESIZED;
+	/*
+	 * dwc3_remove_requests() can exit early if DWC3 EP delayed stop is
+	 * set.  Do not clear DEP flags, so that the end transfer command will
+	 * be reattempted during the next SETUP stage.
+	 */
+	if (dep->flags & DWC3_EP_DELAY_STOP)
+		mask |= (DWC3_EP_DELAY_STOP | DWC3_EP_TRANSFER_STARTED);
+	dep->flags &= mask;
 
 	/* Clear out the ep descriptors for non-ep0 */
 	if (dep->number > 1) {
@@ -749,7 +1028,7 @@ static int __dwc3_gadget_ep_disable(struct dwc3_ep *dep)
 /* -------------------------------------------------------------------------- */
 
 static int dwc3_gadget_ep0_enable(struct usb_ep *ep,
-				  const struct usb_endpoint_descriptor *desc)
+		const struct usb_endpoint_descriptor *desc)
 {
 	return -EINVAL;
 }
@@ -762,12 +1041,12 @@ static int dwc3_gadget_ep0_disable(struct usb_ep *ep)
 /* -------------------------------------------------------------------------- */
 
 static int dwc3_gadget_ep_enable(struct usb_ep *ep,
-				 const struct usb_endpoint_descriptor *desc)
+		const struct usb_endpoint_descriptor *desc)
 {
-	struct dwc3_ep *dep;
-	struct dwc3 *dwc;
-	unsigned long flags;
-	int ret;
+	struct dwc3_ep			*dep;
+	struct dwc3			*dwc;
+	unsigned long			flags;
+	int				ret;
 
 	if (!ep || !desc || desc->bDescriptorType != USB_DT_ENDPOINT) {
 		pr_debug("dwc3: invalid parameters\n");
@@ -782,11 +1061,10 @@ static int dwc3_gadget_ep_enable(struct usb_ep *ep,
 	dep = to_dwc3_ep(ep);
 	dwc = dep->dwc;
 
-	if (dep->flags & DWC3_EP_ENABLED) {
-		WARN(true, "%s is already enabled\n",
-		     dep->name);
+	if (dev_WARN_ONCE(dwc->dev, dep->flags & DWC3_EP_ENABLED,
+					"%s is already enabled\n",
+					dep->name))
 		return 0;
-	}
 
 	spin_lock_irqsave(&dwc->lock, flags);
 	ret = __dwc3_gadget_ep_enable(dep, DWC3_DEPCFG_ACTION_INIT);
@@ -797,10 +1075,10 @@ static int dwc3_gadget_ep_enable(struct usb_ep *ep,
 
 static int dwc3_gadget_ep_disable(struct usb_ep *ep)
 {
-	struct dwc3_ep *dep;
-	struct dwc3 *dwc;
-	unsigned long flags;
-	int ret;
+	struct dwc3_ep			*dep;
+	struct dwc3			*dwc;
+	unsigned long			flags;
+	int				ret;
 
 	if (!ep) {
 		pr_debug("dwc3: invalid parameters\n");
@@ -810,11 +1088,10 @@ static int dwc3_gadget_ep_disable(struct usb_ep *ep)
 	dep = to_dwc3_ep(ep);
 	dwc = dep->dwc;
 
-	if (!(dep->flags & DWC3_EP_ENABLED)) {
-		WARN(true, "%s is already disabled\n",
-		     dep->name);
+	if (dev_WARN_ONCE(dwc->dev, !(dep->flags & DWC3_EP_ENABLED),
+					"%s is already disabled\n",
+					dep->name))
 		return 0;
-	}
 
 	spin_lock_irqsave(&dwc->lock, flags);
 	ret = __dwc3_gadget_ep_disable(dep);
@@ -825,10 +1102,10 @@ static int dwc3_gadget_ep_disable(struct usb_ep *ep)
 
 static struct usb_request *dwc3_gadget_ep_alloc_request(struct usb_ep *ep)
 {
-	struct dwc3_request *req;
-	struct dwc3_ep *dep = to_dwc3_ep(ep);
+	struct dwc3_request		*req;
+	struct dwc3_ep			*dep = to_dwc3_ep(ep);
 
-	req = xzalloc(sizeof(*req));
+	req = kzalloc(sizeof(*req), GFP_KERNEL);
 	if (!req)
 		return NULL;
 
@@ -841,9 +1118,9 @@ static struct usb_request *dwc3_gadget_ep_alloc_request(struct usb_ep *ep)
 }
 
 static void dwc3_gadget_ep_free_request(struct usb_ep *ep,
-					struct usb_request *request)
+		struct usb_request *request)
 {
-	struct dwc3_request *req = to_dwc3_request(request);
+	struct dwc3_request		*req = to_dwc3_request(request);
 
 	kfree(req);
 }
@@ -869,19 +1146,19 @@ static struct dwc3_trb *dwc3_ep_prev_trb(struct dwc3_ep *dep, u8 index)
 
 static u32 dwc3_calc_trbs_left(struct dwc3_ep *dep)
 {
-	struct dwc3_trb *tmp;
-	u8 trbs_left;
+	u8			trbs_left;
 
 	/*
-	 * If enqueue & dequeue are equal than it is either full or empty.
-	 *
-	 * One way to know for sure is if the TRB right before us has HWO bit
-	 * set or not. If it has, then we're definitely full and can't fit any
-	 * more transfers in our ring.
+	 * If the enqueue & dequeue are equal then the TRB ring is either full
+	 * or empty. It's considered full when there are DWC3_TRB_NUM-1 of TRBs
+	 * pending to be processed by the driver.
 	 */
 	if (dep->trb_enqueue == dep->trb_dequeue) {
-		tmp = dwc3_ep_prev_trb(dep, dep->trb_enqueue);
-		if (tmp->ctrl & DWC3_TRB_CTRL_HWO)
+		/*
+		 * If there is any request remained in the started_list at
+		 * this point, that means there is no TRB available.
+		 */
+		if (!list_empty(&dep->started_list))
 			return 0;
 
 		return DWC3_TRB_NUM - 1;
@@ -896,17 +1173,47 @@ static u32 dwc3_calc_trbs_left(struct dwc3_ep *dep)
 	return trbs_left;
 }
 
-static void __dwc3_prepare_one_trb(struct dwc3_ep *dep, struct dwc3_trb *trb,
-				   dma_addr_t dma, unsigned length,
-				   unsigned chain, unsigned node,
-				   unsigned stream_id, unsigned short_not_ok,
-				   unsigned no_interrupt)
+/**
+ * dwc3_prepare_one_trb - setup one TRB from one request
+ * @dep: endpoint for which this request is prepared
+ * @req: dwc3_request pointer
+ * @trb_length: buffer size of the TRB
+ * @chain: should this TRB be chained to the next?
+ * @node: only for isochronous endpoints. First TRB needs different type.
+ * @use_bounce_buffer: set to use bounce buffer
+ * @must_interrupt: set to interrupt on TRB completion
+ */
+static void dwc3_prepare_one_trb(struct dwc3_ep *dep,
+		struct dwc3_request *req, unsigned int trb_length,
+		unsigned int chain, unsigned int node, bool use_bounce_buffer,
+		bool must_interrupt)
 {
-	struct dwc3 *dwc = dep->dwc;
-	struct usb_gadget *gadget = &dwc->gadget;
-	enum usb_device_speed speed = gadget->speed;
+	struct dwc3_trb		*trb;
+	dma_addr_t		dma;
+	unsigned int		stream_id = req->request.stream_id;
+	unsigned int		short_not_ok = req->request.short_not_ok;
+	unsigned int		no_interrupt = req->request.no_interrupt;
+	unsigned int		is_last = req->request.is_last;
+	struct dwc3		*dwc = dep->dwc;
+	struct usb_gadget	*gadget = dwc->gadget;
+	enum usb_device_speed	speed = gadget->speed;
+
+	if (use_bounce_buffer)
+		dma = dep->dwc->bounce_addr;
+	else
+		dma = req->request.dma;
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
 
-	trb->size = DWC3_TRB_SIZE_LENGTH(length);
+	trb->size = DWC3_TRB_SIZE_LENGTH(trb_length);
 	trb->bpl = lower_32_bits(dma);
 	trb->bph = upper_32_bits(dma);
 
@@ -946,10 +1253,10 @@ static void __dwc3_prepare_one_trb(struct dwc3_ep *dep, struct dwc3_trb *trb,
 				unsigned int mult = 2;
 				unsigned int maxp = usb_endpoint_maxp(ep->desc);
 
-				if (length <= (2 * maxp))
+				if (req->request.length <= (2 * maxp))
 					mult--;
 
-				if (length <= maxp)
+				if (req->request.length <= maxp)
 					mult--;
 
 				trb->size |= DWC3_TRB_SIZE_PCM1(mult);
@@ -958,8 +1265,8 @@ static void __dwc3_prepare_one_trb(struct dwc3_ep *dep, struct dwc3_trb *trb,
 			trb->ctrl = DWC3_TRBCTL_ISOCHRONOUS;
 		}
 
-		/* always enable Interrupt on Missed ISOC */
-		trb->ctrl |= DWC3_TRB_CTRL_ISP_IMI;
+		if (!no_interrupt && !chain)
+			trb->ctrl |= DWC3_TRB_CTRL_ISP_IMI;
 		break;
 
 	case USB_ENDPOINT_XFER_BULK:
@@ -972,7 +1279,7 @@ static void __dwc3_prepare_one_trb(struct dwc3_ep *dep, struct dwc3_trb *trb,
 		 * checked it already :)
 		 */
 		dev_warn(dwc->dev, "Unknown endpoint type %d\n",
-			 usb_endpoint_type(dep->endpoint.desc));
+				usb_endpoint_type(dep->endpoint.desc));
 	}
 
 	/*
@@ -987,149 +1294,197 @@ static void __dwc3_prepare_one_trb(struct dwc3_ep *dep, struct dwc3_trb *trb,
 			trb->ctrl |= DWC3_TRB_CTRL_ISP_IMI;
 	}
 
-	if ((!no_interrupt && !chain) ||
-			(dwc3_calc_trbs_left(dep) == 1))
+	/* All TRBs setup for MST must set CSP=1 when LST=0 */
+	if (dep->stream_capable && DWC3_MST_CAPABLE(&dwc->hwparams))
+		trb->ctrl |= DWC3_TRB_CTRL_CSP;
+
+	if ((!no_interrupt && !chain) || must_interrupt)
 		trb->ctrl |= DWC3_TRB_CTRL_IOC;
 
 	if (chain)
 		trb->ctrl |= DWC3_TRB_CTRL_CHN;
+	else if (dep->stream_capable && is_last &&
+		 !DWC3_MST_CAPABLE(&dwc->hwparams))
+		trb->ctrl |= DWC3_TRB_CTRL_LST;
 
 	if (usb_endpoint_xfer_bulk(dep->endpoint.desc) && dep->stream_capable)
 		trb->ctrl |= DWC3_TRB_CTRL_SID_SOFN(stream_id);
 
+	/*
+	 * As per data book 4.2.3.2TRB Control Bit Rules section
+	 *
+	 * The controller autonomously checks the HWO field of a TRB to determine if the
+	 * entire TRB is valid. Therefore, software must ensure that the rest of the TRB
+	 * is valid before setting the HWO field to '1'. In most systems, this means that
+	 * software must update the fourth DWORD of a TRB last.
+	 *
+	 * However there is a possibility of CPU re-ordering here which can cause
+	 * controller to observe the HWO bit set prematurely.
+	 * Add a write memory barrier to prevent CPU re-ordering.
+	 */
+	/* wmb() FIXME */
 	trb->ctrl |= DWC3_TRB_CTRL_HWO;
 
 	dwc3_ep_inc_enq(dep);
 }
 
-/**
- * dwc3_prepare_one_trb - setup one TRB from one request
- * @dep: endpoint for which this request is prepared
- * @req: dwc3_request pointer
- * @chain: should this TRB be chained to the next?
- * @node: only for isochronous endpoints. First TRB needs different type.
- */
-static void dwc3_prepare_one_trb(struct dwc3_ep *dep,
-				 struct dwc3_request *req,
-				 unsigned chain, unsigned node)
+static bool dwc3_needs_extra_trb(struct dwc3_ep *dep, struct dwc3_request *req)
 {
-	struct dwc3_trb *trb;
-	unsigned int length;
-	dma_addr_t dma;
-	unsigned stream_id = req->request.stream_id;
-	unsigned short_not_ok = req->request.short_not_ok;
-	unsigned no_interrupt = req->request.no_interrupt;
-
-	length = req->request.length;
-	dma = req->request.dma;
-
-	trb = &dep->trb_pool[dep->trb_enqueue];
-
-	if (!req->trb) {
-		dwc3_gadget_move_started_request(req);
-		req->trb = trb;
-		req->trb_dma = dwc3_trb_dma_offset(dep, trb);
-	}
+	unsigned int maxp = usb_endpoint_maxp(dep->endpoint.desc);
+	unsigned int rem = req->request.length % maxp;
 
-	req->num_trbs++;
+	if ((req->request.length && req->request.zero && !rem &&
+			!usb_endpoint_xfer_isoc(dep->endpoint.desc)) ||
+			(!req->direction && rem))
+		return true;
 
-	__dwc3_prepare_one_trb(dep, trb, dma, length, chain, node,
-			stream_id, short_not_ok, no_interrupt);
+	return false;
 }
 
-static void dwc3_prepare_one_trb_linear(struct dwc3_ep *dep,
-					struct dwc3_request *req)
+/**
+ * dwc3_prepare_last_sg - prepare TRBs for the last SG entry
+ * @dep: The endpoint that the request belongs to
+ * @req: The request to prepare
+ * @entry_length: The last SG entry size
+ * @node: Indicates whether this is not the first entry (for isoc only)
+ *
+ * Return the number of TRBs prepared.
+ */
+static int dwc3_prepare_last_sg(struct dwc3_ep *dep,
+		struct dwc3_request *req, unsigned int entry_length,
+		unsigned int node)
 {
-	unsigned int length = req->request.length;
 	unsigned int maxp = usb_endpoint_maxp(dep->endpoint.desc);
-	unsigned int rem = length % maxp;
+	unsigned int rem = req->request.length % maxp;
+	unsigned int num_trbs = 1;
 
-	if ((!length || rem) && usb_endpoint_dir_out(dep->endpoint.desc)) {
-		struct dwc3 *dwc = dep->dwc;
-		struct dwc3_trb *trb;
+	if (dwc3_needs_extra_trb(dep, req))
+		num_trbs++;
 
-		req->needs_extra_trb = true;
+	if (dwc3_calc_trbs_left(dep) < num_trbs)
+		return 0;
 
-		/* prepare normal TRB */
-		dwc3_prepare_one_trb(dep, req, true, 0);
+	req->needs_extra_trb = num_trbs > 1;
 
-		/* Now prepare one extra TRB to align transfer size */
-		trb = &dep->trb_pool[dep->trb_enqueue];
-		req->num_trbs++;
-		__dwc3_prepare_one_trb(dep, trb, dwc->bounce_addr, maxp - rem,
-				false, 1, req->request.stream_id,
-				req->request.short_not_ok,
-				req->request.no_interrupt);
-	} else if (req->request.zero && req->request.length &&
-		   (IS_ALIGNED(req->request.length, maxp))) {
-		struct dwc3 *dwc = dep->dwc;
-		struct dwc3_trb *trb;
+	/* Prepare a normal TRB */
+	if (req->direction || req->request.length)
+		dwc3_prepare_one_trb(dep, req, entry_length,
+				req->needs_extra_trb, node, false, false);
 
-		req->needs_extra_trb = true;
+	/* Prepare extra TRBs for ZLP and MPS OUT transfer alignment */
+	if ((!req->direction && !req->request.length) || req->needs_extra_trb)
+		dwc3_prepare_one_trb(dep, req,
+				req->direction ? 0 : maxp - rem,
+				false, 1, true, false);
 
-		/* prepare normal TRB */
-		dwc3_prepare_one_trb(dep, req, true, 0);
+	return num_trbs;
+}
 
-		/* Now prepare one extra TRB to handle ZLP */
-		trb = &dep->trb_pool[dep->trb_enqueue];
-		req->num_trbs++;
-		__dwc3_prepare_one_trb(dep, trb, dwc->bounce_addr, 0,
-				false, 1, req->request.stream_id,
-				req->request.short_not_ok,
-				req->request.no_interrupt);
-	} else {
-		dwc3_prepare_one_trb(dep, req, false, 0);
-	}
+static int dwc3_prepare_trbs_linear(struct dwc3_ep *dep,
+		struct dwc3_request *req)
+{
+	return dwc3_prepare_last_sg(dep, req, req->request.length, 0);
 }
 
 /*
  * dwc3_prepare_trbs - setup TRBs from requests
  * @dep: endpoint for which requests are being prepared
- * @starting: true if the endpoint is idle and no requests are queued.
  *
  * The function goes through the requests list and sets up TRBs for the
  * transfers. The function returns once there are no more TRBs available or
  * it runs out of requests.
+ *
+ * Returns the number of TRBs prepared or negative errno.
  */
-static void dwc3_prepare_trbs(struct dwc3_ep *dep)
+static int dwc3_prepare_trbs(struct dwc3_ep *dep)
 {
-	struct dwc3_request *req, *n;
-	struct dwc3 *dwc = dep->dwc;
-	dma_addr_t dma_addr;
+	struct dwc3_request	*req, *n;
+	int			ret = 0;
 
 	BUILD_BUG_ON_NOT_POWER_OF_2(DWC3_TRB_NUM);
 
+	/*
+	 * We can get in a situation where there's a request in the started list
+	 * but there weren't enough TRBs to fully kick it in the first time
+	 * around, so it has been waiting for more TRBs to be freed up.
+	 *
+	 * In that case, we should check if we have a request with pending_sgs
+	 * in the started list and prepare TRBs for that request first,
+	 * otherwise we will prepare TRBs completely out of order and that will
+	 * break things.
+	 */
+	list_for_each_entry(req, &dep->started_list, list) {
+		if (!dwc3_calc_trbs_left(dep))
+			return ret;
+
+		/*
+		 * Don't prepare beyond a transfer. In DWC_usb32, its transfer
+		 * burst capability may try to read and use TRBs beyond the
+		 * active transfer instead of stopping.
+		 */
+		if (dep->stream_capable && req->request.is_last &&
+		    !DWC3_MST_CAPABLE(&dep->dwc->hwparams))
+			return ret;
+	}
+
 	list_for_each_entry_safe(req, n, &dep->pending_list, list) {
-		dma_addr = dma_map_single(dwc->dev, req->request.buf,
-					  req->request.length,
-					  dep->number ?
-					  DMA_TO_DEVICE : DMA_FROM_DEVICE);
-		if (dma_mapping_error(dwc->dev, dma_addr))
-			return;
+		struct dwc3	*dwc = dep->dwc;
 
-		req->request.dma = dma_addr;
+		ret = usb_gadget_map_request_by_dev(dwc->sysdev, &req->request,
+						    dep->direction);
+		if (ret)
+			return ret;
 
-		dwc3_prepare_one_trb_linear(dep, req);
+		req->sg			= req->request.sg;
+		req->start_sg		= req->sg;
+		req->num_queued_sgs	= 0;
+		req->num_pending_sgs	= req->request.num_mapped_sgs;
 
-		if (!dwc3_calc_trbs_left(dep))
-			return;
+		ret = dwc3_prepare_trbs_linear(dep, req);
+
+		if (!ret || !dwc3_calc_trbs_left(dep))
+			return ret;
+
+		/*
+		 * Don't prepare beyond a transfer. In DWC_usb32, its transfer
+		 * burst capability may try to read and use TRBs beyond the
+		 * active transfer instead of stopping.
+		 */
+		if (dep->stream_capable && req->request.is_last &&
+		    !DWC3_MST_CAPABLE(&dwc->hwparams))
+			return ret;
 	}
+
+	return ret;
 }
 
+static void dwc3_gadget_ep_cleanup_cancelled_requests(struct dwc3_ep *dep);
+
 static int __dwc3_gadget_kick_transfer(struct dwc3_ep *dep)
 {
 	struct dwc3_gadget_ep_cmd_params params;
-	struct dwc3_request *req;
-	int starting;
-	int ret;
-	u32 cmd;
+	struct dwc3_request		*req;
+	int				starting;
+	int				ret;
+	u32				cmd;
 
-	if (!dwc3_calc_trbs_left(dep))
-		return 0;
+	/*
+	 * Note that it's normal to have no new TRBs prepared (i.e. ret == 0).
+	 * This happens when we need to stop and restart a transfer such as in
+	 * the case of reinitiating a stream or retrying an isoc transfer.
+	 */
+	ret = dwc3_prepare_trbs(dep);
+	if (ret < 0)
+		return ret;
 
 	starting = !(dep->flags & DWC3_EP_TRANSFER_STARTED);
 
-	dwc3_prepare_trbs(dep);
+	/*
+	 * If there's no new TRB prepared and we don't need to restart a
+	 * transfer, there's no need to update the transfer.
+	 */
+	if (!ret && !starting)
+		return ret;
 
 	req = next_request(&dep->started_list);
 	if (!req) {
@@ -1156,28 +1511,83 @@ static int __dwc3_gadget_kick_transfer(struct dwc3_ep *dep)
 
 	ret = dwc3_send_gadget_ep_cmd(dep, cmd, &params);
 	if (ret < 0) {
-		/*
-		 * FIXME we need to iterate over the list of requests
-		 * here and stop, unmap, free and del each of the linked
-		 * requests instead of what we do now.
-		 */
-		if (req->trb)
-			memset(req->trb, 0, sizeof(struct dwc3_trb));
-		dwc3_gadget_del_and_unmap_request(dep, req, ret);
+		struct dwc3_request *tmp;
+
+		if (ret == -EAGAIN)
+			return ret;
+
+		dwc3_stop_active_transfer(dep, true, true);
+
+		list_for_each_entry_safe(req, tmp, &dep->started_list, list)
+			dwc3_gadget_move_cancelled_request(req, DWC3_REQUEST_STATUS_DEQUEUED);
+
+		/* If ep isn't started, then there's no end transfer pending */
+		if (!(dep->flags & DWC3_EP_END_TRANSFER_PENDING))
+			dwc3_gadget_ep_cleanup_cancelled_requests(dep);
+
 		return ret;
 	}
 
+	if (dep->stream_capable && req->request.is_last &&
+	    !DWC3_MST_CAPABLE(&dep->dwc->hwparams))
+		dep->flags |= DWC3_EP_WAIT_TRANSFER_COMPLETE;
+
 	return 0;
 }
 
 static int __dwc3_gadget_get_frame(struct dwc3 *dwc)
 {
-	u32 reg;
+	u32			reg;
 
 	reg = dwc3_readl(dwc->regs, DWC3_DSTS);
 	return DWC3_DSTS_SOFFN(reg);
 }
 
+/**
+ * __dwc3_stop_active_transfer - stop the current active transfer
+ * @dep: isoc endpoint
+ * @force: set forcerm bit in the command
+ * @interrupt: command complete interrupt after End Transfer command
+ *
+ * When setting force, the ForceRM bit will be set. In that case
+ * the controller won't update the TRB progress on command
+ * completion. It also won't clear the HWO bit in the TRB.
+ * The command will also not complete immediately in that case.
+ */
+static int __dwc3_stop_active_transfer(struct dwc3_ep *dep, bool force, bool interrupt)
+{
+	struct dwc3_gadget_ep_cmd_params params;
+	u32 cmd;
+	int ret;
+
+	cmd = DWC3_DEPCMD_ENDTRANSFER;
+	cmd |= force ? DWC3_DEPCMD_HIPRI_FORCERM : 0;
+	cmd |= interrupt ? DWC3_DEPCMD_CMDIOC : 0;
+	cmd |= DWC3_DEPCMD_PARAM(dep->resource_index);
+	memset(&params, 0, sizeof(params));
+	ret = dwc3_send_gadget_ep_cmd(dep, cmd, &params);
+	/*
+	 * If the End Transfer command was timed out while the device is
+	 * not in SETUP phase, it's possible that an incoming Setup packet
+	 * may prevent the command's completion. Let's retry when the
+	 * ep0state returns to EP0_SETUP_PHASE.
+	 */
+	if (ret == -ETIMEDOUT && dep->dwc->ep0state != EP0_SETUP_PHASE) {
+		dep->flags |= DWC3_EP_DELAY_STOP;
+		return 0;
+	}
+	WARN_ON_ONCE(ret);
+	dep->resource_index = 0;
+
+	if (!interrupt)
+		dep->flags &= ~DWC3_EP_TRANSFER_STARTED;
+	else if (!ret)
+		dep->flags |= DWC3_EP_END_TRANSFER_PENDING;
+
+	dep->flags &= ~DWC3_EP_DELAY_STOP;
+	return ret;
+}
+
 /**
  * dwc3_gadget_start_isoc_quirk - workaround invalid frame number
  * @dep: isoc endpoint
@@ -1235,7 +1645,7 @@ static int dwc3_gadget_start_isoc_quirk(struct dwc3_ep *dep)
 		 * Check if we can start isoc transfer on the next interval or
 		 * 4 uframes in the future with BIT[15:14] as dep->combo_num
 		 */
-		test_frame_number = dep->frame_number & 0x3fff;
+		test_frame_number = dep->frame_number & DWC3_FRNUMBER_MASK;
 		test_frame_number |= dep->combo_num << 14;
 		test_frame_number += max_t(u32, 4, dep->interval);
 
@@ -1282,7 +1692,7 @@ static int dwc3_gadget_start_isoc_quirk(struct dwc3_ep *dep)
 	else if (test0 && test1)
 		dep->combo_num = 0;
 
-	dep->frame_number &= 0x3fff;
+	dep->frame_number &= DWC3_FRNUMBER_MASK;
 	dep->frame_number |= dep->combo_num << 14;
 	dep->frame_number += max_t(u32, 4, dep->interval);
 
@@ -1295,63 +1705,110 @@ static int dwc3_gadget_start_isoc_quirk(struct dwc3_ep *dep)
 
 static int __dwc3_gadget_start_isoc(struct dwc3_ep *dep)
 {
+	const struct usb_endpoint_descriptor *desc = dep->endpoint.desc;
 	struct dwc3 *dwc = dep->dwc;
 	int ret;
 	int i;
 
-	if (list_empty(&dep->pending_list)) {
+	if (list_empty(&dep->pending_list) &&
+	    list_empty(&dep->started_list)) {
 		dep->flags |= DWC3_EP_PENDING_REQUEST;
 		return -EAGAIN;
 	}
 
-	if (!dwc->dis_start_transfer_quirk && dwc3_is_usb31(dwc) &&
-	    (dwc->revision <= DWC3_USB31_REVISION_160A ||
-	     (dwc->revision == DWC3_USB31_REVISION_170A &&
-	      dwc->version_type >= DWC31_VERSIONTYPE_EA01 &&
-	      dwc->version_type <= DWC31_VERSIONTYPE_EA06))) {
-
-		if (dwc->gadget.speed <= USB_SPEED_HIGH && dep->direction)
+	if (!dwc->dis_start_transfer_quirk &&
+	    (DWC3_VER_IS_PRIOR(DWC31, 170A) ||
+	     DWC3_VER_TYPE_IS_WITHIN(DWC31, 170A, EA01, EA06))) {
+		if (dwc->gadget->speed <= USB_SPEED_HIGH && dep->direction)
 			return dwc3_gadget_start_isoc_quirk(dep);
 	}
 
+	if (desc->bInterval <= 14 &&
+	    dwc->gadget->speed >= USB_SPEED_HIGH) {
+		u32 frame = __dwc3_gadget_get_frame(dwc);
+		bool rollover = frame <
+				(dep->frame_number & DWC3_FRNUMBER_MASK);
+
+		/*
+		 * frame_number is set from XferNotReady and may be already
+		 * out of date. DSTS only provides the lower 14 bit of the
+		 * current frame number. So add the upper two bits of
+		 * frame_number and handle a possible rollover.
+		 * This will provide the correct frame_number unless more than
+		 * rollover has happened since XferNotReady.
+		 */
+
+		dep->frame_number = (dep->frame_number & ~DWC3_FRNUMBER_MASK) |
+				     frame;
+		if (rollover)
+			dep->frame_number += BIT(14);
+	}
+
 	for (i = 0; i < DWC3_ISOC_MAX_RETRIES; i++) {
-		dep->frame_number = DWC3_ALIGN_FRAME(dep, i + 1);
+		int future_interval = i + 1;
+
+		/* Give the controller at least 500us to schedule transfers */
+		if (desc->bInterval < 3)
+			future_interval += 3 - desc->bInterval;
+
+		dep->frame_number = DWC3_ALIGN_FRAME(dep, future_interval);
 
 		ret = __dwc3_gadget_kick_transfer(dep);
 		if (ret != -EAGAIN)
 			break;
 	}
 
+	/*
+	 * After a number of unsuccessful start attempts due to bus-expiry
+	 * status, issue END_TRANSFER command and retry on the next XferNotReady
+	 * event.
+	 */
+	if (ret == -EAGAIN)
+		ret = __dwc3_stop_active_transfer(dep, false, true);
+
 	return ret;
 }
 
 static int __dwc3_gadget_ep_queue(struct dwc3_ep *dep, struct dwc3_request *req)
 {
-	struct dwc3 *dwc = dep->dwc;
+	struct dwc3		*dwc = dep->dwc;
 
-	if (!dep->endpoint.desc) {
-		dev_err(dwc->dev, "%s: can't queue to disabled endpoint\n",
+	if (!dep->endpoint.desc || !dwc->pullups_connected || !dwc->connected) {
+		dev_dbg(dwc->dev, "%s: can't queue to disabled endpoint\n",
 				dep->name);
 		return -ESHUTDOWN;
 	}
 
-	if (req->dep != dep) {
-		WARN(true, "request %p belongs to '%s'\n",
-				&req->request, req->dep->name);
+	if (WARN(req->dep != dep, "request %pK belongs to '%s'\n",
+				&req->request, req->dep->name))
 		return -EINVAL;
-	}
 
-	if (req->status < DWC3_REQUEST_STATUS_COMPLETED) {
-		WARN(true, "request %p already in flight\n", &req->request);
+	if (WARN(req->status < DWC3_REQUEST_STATUS_COMPLETED,
+				"%s: request %pK already in flight\n",
+				dep->name, &req->request))
 		return -EINVAL;
-	}
 
-	req->request.actual = 0;
-	req->request.status = -EINPROGRESS;
+	req->request.actual	= 0;
+	req->request.status	= -EINPROGRESS;
 
 	list_add_tail(&req->list, &dep->pending_list);
 	req->status = DWC3_REQUEST_STATUS_QUEUED;
 
+	if (dep->flags & DWC3_EP_WAIT_TRANSFER_COMPLETE)
+		return 0;
+
+	/*
+	 * Start the transfer only after the END_TRANSFER is completed
+	 * and endpoint STALL is cleared.
+	 */
+	if ((dep->flags & DWC3_EP_END_TRANSFER_PENDING) ||
+	    (dep->flags & DWC3_EP_WEDGE) ||
+	    (dep->flags & DWC3_EP_DELAY_STOP) ||
+	    (dep->flags & DWC3_EP_STALL)) {
+		dep->flags |= DWC3_EP_DELAY_START;
+		return 0;
+	}
+
 	/*
 	 * NOTICE: Isochronous endpoints should NEVER be prestarted. We must
 	 * wait for a XferNotReady event so we will know what's the current
@@ -1361,28 +1818,27 @@ static int __dwc3_gadget_ep_queue(struct dwc3_ep *dep, struct dwc3_request *req)
 	 * errors which will force us issue EndTransfer command.
 	 */
 	if (usb_endpoint_xfer_isoc(dep->endpoint.desc)) {
-		if (!(dep->flags & DWC3_EP_PENDING_REQUEST) &&
-				!(dep->flags & DWC3_EP_TRANSFER_STARTED))
-			return 0;
-
-		if ((dep->flags & DWC3_EP_PENDING_REQUEST)) {
-			if (!(dep->flags & DWC3_EP_TRANSFER_STARTED)) {
+		if (!(dep->flags & DWC3_EP_TRANSFER_STARTED)) {
+			if ((dep->flags & DWC3_EP_PENDING_REQUEST))
 				return __dwc3_gadget_start_isoc(dep);
-			}
+
+			return 0;
 		}
 	}
 
-	return __dwc3_gadget_kick_transfer(dep);
+	__dwc3_gadget_kick_transfer(dep);
+
+	return 0;
 }
 
 static int dwc3_gadget_ep_queue(struct usb_ep *ep, struct usb_request *request)
 {
-	struct dwc3_request *req = to_dwc3_request(request);
-	struct dwc3_ep *dep = to_dwc3_ep(ep);
+	struct dwc3_request		*req = to_dwc3_request(request);
+	struct dwc3_ep			*dep = to_dwc3_ep(ep);
 
-	unsigned long flags;
+	unsigned long			flags;
 
-	int ret;
+	int				ret;
 
 	spin_lock_irqsave(&dwc->lock, flags);
 	ret = __dwc3_gadget_ep_queue(dep, req);
@@ -1391,11 +1847,14 @@ static int dwc3_gadget_ep_queue(struct usb_ep *ep, struct usb_request *request)
 	return ret;
 }
 
-static void dwc3_gadget_ep_skip_trbs(struct dwc3_ep *dep,
-				     struct dwc3_request *req)
+static void dwc3_gadget_ep_skip_trbs(struct dwc3_ep *dep, struct dwc3_request *req)
 {
 	int i;
 
+	/* If req->trb is not set, then the request has not started */
+	if (!req->trb)
+		return;
+
 	/*
 	 * If request was already started, this means we had to
 	 * stop the transfer. With that we also need to ignore
@@ -1409,7 +1868,7 @@ static void dwc3_gadget_ep_skip_trbs(struct dwc3_ep *dep,
 	for (i = 0; i < req->num_trbs; i++) {
 		struct dwc3_trb *trb;
 
-		trb = req->trb + i;
+		trb = &dep->trb_pool[dep->trb_dequeue];
 		trb->ctrl &= ~DWC3_TRB_CTRL_HWO;
 		dwc3_ep_inc_deq(dep);
 	}
@@ -1419,61 +1878,87 @@ static void dwc3_gadget_ep_skip_trbs(struct dwc3_ep *dep,
 
 static void dwc3_gadget_ep_cleanup_cancelled_requests(struct dwc3_ep *dep)
 {
-	struct dwc3_request *req;
-	struct dwc3_request *tmp;
+	struct dwc3_request		*req;
+	struct dwc3			*dwc = dep->dwc;
 
-	list_for_each_entry_safe(req, tmp, &dep->cancelled_list, list) {
+	while (!list_empty(&dep->cancelled_list)) {
+		req = next_request(&dep->cancelled_list);
 		dwc3_gadget_ep_skip_trbs(dep, req);
-		dwc3_gadget_giveback(dep, req, -ECONNRESET);
+		switch (req->status) {
+		case DWC3_REQUEST_STATUS_DISCONNECTED:
+			dwc3_gadget_giveback(dep, req, -ESHUTDOWN);
+			break;
+		case DWC3_REQUEST_STATUS_DEQUEUED:
+			dwc3_gadget_giveback(dep, req, -ECONNRESET);
+			break;
+		case DWC3_REQUEST_STATUS_STALLED:
+			dwc3_gadget_giveback(dep, req, -EPIPE);
+			break;
+		default:
+			dev_err(dwc->dev, "request cancelled with wrong reason:%d\n", req->status);
+			dwc3_gadget_giveback(dep, req, -ECONNRESET);
+			break;
+		}
+		/*
+		 * The endpoint is disabled, let the dwc3_remove_requests()
+		 * handle the cleanup.
+		 */
+		if (!dep->endpoint.desc)
+			break;
 	}
 }
 
 static int dwc3_gadget_ep_dequeue(struct usb_ep *ep,
-				  struct usb_request *request)
+		struct usb_request *request)
 {
-	struct dwc3_request *req = to_dwc3_request(request);
-	struct dwc3_request *r = NULL;
-	struct dwc3_ep *dep = to_dwc3_ep(ep);
-	struct dwc3 *dwc = dep->dwc;
-	unsigned long flags;
-	int ret = 0;
+	struct dwc3_request		*req = to_dwc3_request(request);
+	struct dwc3_request		*r = NULL;
+
+	struct dwc3_ep			*dep = to_dwc3_ep(ep);
+	struct dwc3			*dwc = dep->dwc;
+
+	unsigned long			flags;
+	int				ret = 0;
 
 	spin_lock_irqsave(&dwc->lock, flags);
 
-	list_for_each_entry(r, &dep->pending_list, list) {
+	list_for_each_entry(r, &dep->cancelled_list, list) {
 		if (r == req)
-			break;
+			goto out;
 	}
 
-	if (r != req) {
-		list_for_each_entry(r, &dep->started_list, list) {
-			if (r == req)
-				break;
+	list_for_each_entry(r, &dep->pending_list, list) {
+		if (r == req) {
+			dwc3_gadget_giveback(dep, req, -ECONNRESET);
+			goto out;
 		}
+	}
+
+	list_for_each_entry(r, &dep->started_list, list) {
 		if (r == req) {
+			struct dwc3_request *t;
+
 			/* wait until it is processed */
 			dwc3_stop_active_transfer(dep, true, true);
 
-			if (!r->trb)
-				goto out0;
+			/*
+			 * Remove any started request if the transfer is
+			 * cancelled.
+			 */
+			list_for_each_entry_safe(r, t, &dep->started_list, list)
+				dwc3_gadget_move_cancelled_request(r,
+						DWC3_REQUEST_STATUS_DEQUEUED);
+
+			dep->flags &= ~DWC3_EP_WAIT_TRANSFER_COMPLETE;
 
-			dwc3_gadget_move_cancelled_request(req);
-			if (dep->flags & DWC3_EP_TRANSFER_STARTED)
-				goto out0;
-			else
-				goto out1;
+			goto out;
 		}
-		dev_err(dwc->dev, "request %p was not queued to %s\n",
-				request, ep->name);
-		ret = -EINVAL;
-		goto out0;
 	}
 
-out1:
-	/* giveback the request */
-	dwc3_gadget_giveback(dep, req, -ECONNRESET);
-
-out0:
+	dev_err(dwc->dev, "request %pK was not queued to %s\n",
+		request, ep->name);
+	ret = -EINVAL;
+out:
 	spin_unlock_irqrestore(&dwc->lock, flags);
 
 	return ret;
@@ -1481,9 +1966,11 @@ out0:
 
 int __dwc3_gadget_ep_set_halt(struct dwc3_ep *dep, int value, int protocol)
 {
-	struct dwc3_gadget_ep_cmd_params params;
-	struct dwc3 *dwc = dep->dwc;
-	int ret;
+	struct dwc3_gadget_ep_cmd_params	params;
+	struct dwc3				*dwc = dep->dwc;
+	struct dwc3_request			*req;
+	struct dwc3_request			*tmp;
+	int					ret;
 
 	if (usb_endpoint_xfer_isoc(dep->endpoint.desc)) {
 		dev_err(dwc->dev, "%s is of Isochronous type\n", dep->name);
@@ -1494,8 +1981,9 @@ int __dwc3_gadget_ep_set_halt(struct dwc3_ep *dep, int value, int protocol)
 
 	if (value) {
 		struct dwc3_trb *trb;
-		unsigned transfer_in_flight;
-		unsigned started;
+
+		unsigned int transfer_in_flight;
+		unsigned int started;
 
 		if (dep->number > 1)
 			trb = dwc3_ep_prev_trb(dep, dep->trb_enqueue);
@@ -1511,19 +1999,53 @@ int __dwc3_gadget_ep_set_halt(struct dwc3_ep *dep, int value, int protocol)
 		}
 
 		ret = dwc3_send_gadget_ep_cmd(dep, DWC3_DEPCMD_SETSTALL,
-					      &params);
+				&params);
 		if (ret)
 			dev_err(dwc->dev, "failed to set STALL on %s\n",
 					dep->name);
 		else
 			dep->flags |= DWC3_EP_STALL;
 	} else {
+		/*
+		 * Don't issue CLEAR_STALL command to control endpoints. The
+		 * controller automatically clears the STALL when it receives
+		 * the SETUP token.
+		 */
+		if (dep->number <= 1) {
+			dep->flags &= ~(DWC3_EP_STALL | DWC3_EP_WEDGE);
+			return 0;
+		}
+
+		dwc3_stop_active_transfer(dep, true, true);
+
+		list_for_each_entry_safe(req, tmp, &dep->started_list, list)
+			dwc3_gadget_move_cancelled_request(req, DWC3_REQUEST_STATUS_STALLED);
+
+		if (dep->flags & DWC3_EP_END_TRANSFER_PENDING ||
+		    (dep->flags & DWC3_EP_DELAY_STOP)) {
+			dep->flags |= DWC3_EP_PENDING_CLEAR_STALL;
+			if (protocol)
+				dwc->clear_stall_protocol = dep->number;
+
+			return 0;
+		}
+
+		dwc3_gadget_ep_cleanup_cancelled_requests(dep);
+
 		ret = dwc3_send_clear_stall_ep_cmd(dep);
-		if (ret)
+		if (ret) {
 			dev_err(dwc->dev, "failed to clear STALL on %s\n",
 					dep->name);
-		else
-			dep->flags &= ~(DWC3_EP_STALL | DWC3_EP_WEDGE);
+			return ret;
+		}
+
+		dep->flags &= ~(DWC3_EP_STALL | DWC3_EP_WEDGE);
+
+		if ((dep->flags & DWC3_EP_DELAY_START) &&
+		    !usb_endpoint_xfer_isoc(dep->endpoint.desc))
+			__dwc3_gadget_kick_transfer(dep);
+
+		dep->flags &= ~DWC3_EP_DELAY_START;
 	}
 
 	return ret;
@@ -1531,10 +2053,11 @@ int __dwc3_gadget_ep_set_halt(struct dwc3_ep *dep, int value, int protocol)
 
 static int dwc3_gadget_ep_set_halt(struct usb_ep *ep, int value)
 {
-	struct dwc3_ep *dep = to_dwc3_ep(ep);
-	unsigned long flags;
+	struct dwc3_ep			*dep = to_dwc3_ep(ep);
 
-	int ret;
+	unsigned long			flags;
+
+	int				ret;
 
 	spin_lock_irqsave(&dwc->lock, flags);
 	ret = __dwc3_gadget_ep_set_halt(dep, value, false);
@@ -1545,9 +2068,9 @@ static int dwc3_gadget_ep_set_halt(struct usb_ep *ep, int value)
 
 static int dwc3_gadget_ep_set_wedge(struct usb_ep *ep)
 {
-	struct dwc3_ep *dep = to_dwc3_ep(ep);
-	unsigned long flags;
-	int ret;
+	struct dwc3_ep			*dep = to_dwc3_ep(ep);
+	unsigned long			flags;
+	int				ret;
 
 	spin_lock_irqsave(&dwc->lock, flags);
 	dep->flags |= DWC3_EP_WEDGE;
@@ -1564,13 +2087,13 @@ static int dwc3_gadget_ep_set_wedge(struct usb_ep *ep)
 /* -------------------------------------------------------------------------- */
 
 static struct usb_endpoint_descriptor dwc3_gadget_ep0_desc = {
-	.bLength		= USB_DT_ENDPOINT_SIZE,
-	.bDescriptorType	= USB_DT_ENDPOINT,
-	.bmAttributes		= USB_ENDPOINT_XFER_CONTROL,
+	.bLength	= USB_DT_ENDPOINT_SIZE,
+	.bDescriptorType = USB_DT_ENDPOINT,
+	.bmAttributes	= USB_ENDPOINT_XFER_CONTROL,
 };
 
 static const struct usb_ep_ops dwc3_gadget_ep0_ops = {
-	.enable	= dwc3_gadget_ep0_enable,
+	.enable		= dwc3_gadget_ep0_enable,
 	.disable	= dwc3_gadget_ep0_disable,
 	.alloc_request	= dwc3_gadget_ep_alloc_request,
 	.free_request	= dwc3_gadget_ep_free_request,
@@ -1581,7 +2104,7 @@ static const struct usb_ep_ops dwc3_gadget_ep0_ops = {
 };
 
 static const struct usb_ep_ops dwc3_gadget_ep_ops = {
-	.enable	= dwc3_gadget_ep_enable,
+	.enable		= dwc3_gadget_ep_enable,
 	.disable	= dwc3_gadget_ep_disable,
 	.alloc_request	= dwc3_gadget_ep_alloc_request,
 	.free_request	= dwc3_gadget_ep_free_request,
@@ -1595,20 +2118,19 @@ static const struct usb_ep_ops dwc3_gadget_ep_ops = {
 
 static int dwc3_gadget_get_frame(struct usb_gadget *g)
 {
-	struct dwc3 *dwc = gadget_to_dwc(g);
+	struct dwc3		*dwc = gadget_to_dwc(g);
 
 	return __dwc3_gadget_get_frame(dwc);
 }
 
 static int __dwc3_gadget_wakeup(struct dwc3 *dwc)
 {
-	int retries;
+	int			retries;
 
-	int ret;
-	u32 reg;
+	int			ret;
+	u32			reg;
 
-	u8 link_state;
-	u8 speed;
+	u8			link_state;
 
 	/*
 	 * According to the Databook Remote wakeup request should
@@ -1618,16 +2140,15 @@ static int __dwc3_gadget_wakeup(struct dwc3 *dwc)
 	 */
 	reg = dwc3_readl(dwc->regs, DWC3_DSTS);
 
-	speed = reg & DWC3_DSTS_CONNECTSPD;
-	if ((speed == DWC3_DSTS_SUPERSPEED) ||
-	    (speed == DWC3_DSTS_SUPERSPEED_PLUS))
-		return 0;
-
 	link_state = DWC3_DSTS_USBLNKST(reg);
 
 	switch (link_state) {
+	case DWC3_LINK_STATE_RESET:
 	case DWC3_LINK_STATE_RX_DET:	/* in HS, means Early Suspend */
 	case DWC3_LINK_STATE_U3:	/* in HS, means SUSPEND */
+	case DWC3_LINK_STATE_U2:	/* in HS, means Sleep (L1) */
+	case DWC3_LINK_STATE_U1:
+	case DWC3_LINK_STATE_RESUME:
 		break;
 	default:
 		return -EINVAL;
@@ -1640,7 +2161,7 @@ static int __dwc3_gadget_wakeup(struct dwc3 *dwc)
 	}
 
 	/* Recent versions do this automatically */
-	if (dwc->revision < DWC3_REVISION_194A) {
+	if (DWC3_VER_IS_PRIOR(DWC3, 194A)) {
 		/* write zeroes to Link Change Request */
 		reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 		reg &= ~DWC3_DCTL_ULSTCHNGREQ_MASK;
@@ -1668,9 +2189,9 @@ static int __dwc3_gadget_wakeup(struct dwc3 *dwc)
 
 static int dwc3_gadget_wakeup(struct usb_gadget *g)
 {
-	struct dwc3 *dwc = gadget_to_dwc(g);
-	unsigned long flags;
-	int ret;
+	struct dwc3		*dwc = gadget_to_dwc(g);
+	unsigned long		flags;
+	int			ret;
 
 	spin_lock_irqsave(&dwc->lock, flags);
 	ret = __dwc3_gadget_wakeup(dwc);
@@ -1680,37 +2201,145 @@ static int dwc3_gadget_wakeup(struct usb_gadget *g)
 }
 
 static int dwc3_gadget_set_selfpowered(struct usb_gadget *g,
-				       int is_selfpowered)
+		int is_selfpowered)
 {
-	struct dwc3 *dwc = gadget_to_dwc(g);
-	unsigned long flags;
+	unsigned long		flags;
 
 	spin_lock_irqsave(&dwc->lock, flags);
-	dwc->is_selfpowered = !!is_selfpowered;
+	g->is_selfpowered = !!is_selfpowered;
 	spin_unlock_irqrestore(&dwc->lock, flags);
 
 	return 0;
 }
 
+static void dwc3_stop_active_transfers(struct dwc3 *dwc)
+{
+	u32 epnum;
+
+	for (epnum = 2; epnum < dwc->num_eps; epnum++) {
+		struct dwc3_ep *dep;
+
+		dep = dwc->eps[epnum];
+		if (!dep)
+			continue;
+
+		dwc3_remove_requests(dwc, dep, -ESHUTDOWN);
+	}
+}
+
+static void __dwc3_gadget_set_ssp_rate(struct dwc3 *dwc)
+{
+	enum usb_ssp_rate	ssp_rate = dwc->gadget_ssp_rate;
+	u32			reg;
+
+	if (ssp_rate == USB_SSP_GEN_UNKNOWN)
+		ssp_rate = dwc->max_ssp_rate;
+
+	reg = dwc3_readl(dwc->regs, DWC3_DCFG);
+	reg &= ~DWC3_DCFG_SPEED_MASK;
+	reg &= ~DWC3_DCFG_NUMLANES(~0);
+
+	if (ssp_rate == USB_SSP_GEN_1x2)
+		reg |= DWC3_DCFG_SUPERSPEED;
+	else if (dwc->max_ssp_rate != USB_SSP_GEN_1x2)
+		reg |= DWC3_DCFG_SUPERSPEED_PLUS;
+
+	if (ssp_rate != USB_SSP_GEN_2x1 &&
+	    dwc->max_ssp_rate != USB_SSP_GEN_2x1)
+		reg |= DWC3_DCFG_NUMLANES(1);
+
+	dwc3_writel(dwc->regs, DWC3_DCFG, reg);
+}
+
+static void __dwc3_gadget_set_speed(struct dwc3 *dwc)
+{
+	enum usb_device_speed	speed;
+	u32			reg;
+
+	speed = dwc->gadget_max_speed;
+	if (speed == USB_SPEED_UNKNOWN || speed > dwc->maximum_speed)
+		speed = dwc->maximum_speed;
+
+	if (speed == USB_SPEED_SUPER_PLUS &&
+	    DWC3_IP_IS(DWC32)) {
+		__dwc3_gadget_set_ssp_rate(dwc);
+		return;
+	}
+
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
+	if (DWC3_VER_IS_PRIOR(DWC3, 220A) &&
+	    !dwc->dis_metastability_quirk) {
+		reg |= DWC3_DCFG_SUPERSPEED;
+	} else {
+		switch (speed) {
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
+			if (DWC3_IP_IS(DWC3))
+				reg |= DWC3_DCFG_SUPERSPEED;
+			else
+				reg |= DWC3_DCFG_SUPERSPEED_PLUS;
+			break;
+		default:
+			dev_err(dwc->dev, "invalid speed (%d)\n", speed);
+
+			if (DWC3_IP_IS(DWC3))
+				reg |= DWC3_DCFG_SUPERSPEED;
+			else
+				reg |= DWC3_DCFG_SUPERSPEED_PLUS;
+		}
+	}
+
+	if (DWC3_IP_IS(DWC32) &&
+	    speed > USB_SPEED_UNKNOWN &&
+	    speed < USB_SPEED_SUPER_PLUS)
+		reg &= ~DWC3_DCFG_NUMLANES(~0);
+
+	dwc3_writel(dwc->regs, DWC3_DCFG, reg);
+}
+
 static int dwc3_gadget_run_stop(struct dwc3 *dwc, int is_on, int suspend)
 {
-	u32 reg;
-	u32 timeout = 500;
+	u32			reg;
+	u32			timeout = 2000;
 
 	reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 	if (is_on) {
-		if (dwc->revision <= DWC3_REVISION_187A) {
+		if (DWC3_VER_IS_WITHIN(DWC3, ANY, 187A)) {
 			reg &= ~DWC3_DCTL_TRGTULST_MASK;
 			reg |= DWC3_DCTL_TRGTULST_RX_DET;
 		}
 
-		if (dwc->revision >= DWC3_REVISION_194A)
+		if (!DWC3_VER_IS_PRIOR(DWC3, 194A))
 			reg &= ~DWC3_DCTL_KEEP_CONNECT;
 		reg |= DWC3_DCTL_RUN_STOP;
 
 		if (dwc->has_hibernation)
 			reg |= DWC3_DCTL_KEEP_CONNECT;
 
+		__dwc3_gadget_set_speed(dwc);
 		dwc->pullups_connected = true;
 	} else {
 		reg &= ~DWC3_DCTL_RUN_STOP;
@@ -1721,9 +2350,10 @@ static int dwc3_gadget_run_stop(struct dwc3 *dwc, int is_on, int suspend)
 		dwc->pullups_connected = false;
 	}
 
-	dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+	dwc3_gadget_dctl_write_safe(dwc, reg);
 
 	do {
+		udelay(1000);
 		reg = dwc3_readl(dwc->regs, DWC3_DSTS);
 		reg &= DWC3_DSTS_DEVCTRLHLT;
 	} while (--timeout && !(!is_on ^ !reg));
@@ -1731,54 +2361,104 @@ static int dwc3_gadget_run_stop(struct dwc3 *dwc, int is_on, int suspend)
 	if (!timeout)
 		return -ETIMEDOUT;
 
-	dev_dbg(dwc->dev, "gadget %s data soft-%s\n",
-			dwc->gadget_driver
-			? dwc->gadget_driver->function : "no-function",
-			is_on ? "connect" : "disconnect");
-
 	return 0;
 }
 
-static int dwc3_gadget_pullup(struct usb_gadget *g, int is_on)
+static void dwc3_gadget_disable_irq(struct dwc3 *dwc);
+static void __dwc3_gadget_stop(struct dwc3 *dwc);
+static int __dwc3_gadget_start(struct dwc3 *dwc);
+
+static int dwc3_gadget_soft_disconnect(struct dwc3 *dwc)
 {
-	struct dwc3 *dwc = gadget_to_dwc(g);
 	unsigned long flags;
-	int ret;
 
-	is_on = !!is_on;
+	spin_lock_irqsave(&dwc->lock, flags);
+	dwc->connected = false;
 
 	/*
 	 * Per databook, when we want to stop the gadget, if a control transfer
 	 * is still in process, complete it and get the core into setup phase.
 	 */
-	if (!is_on && dwc->ep0state != EP0_SETUP_PHASE)
-		dev_warn(dwc->dev, "not in SETUP phase\n");
+	if (dwc->ep0state != EP0_SETUP_PHASE) {
+		/*
+		 * Original Linux code waits for ep0state bein in setup
+		 * phase here using completions. Completions are not properly
+		 * implemented in barebox, hence the code is skipped here. I wasn't
+		 * able to trigger this code in barebox, but if you hit this compare
+		 * it with Linux code and implement it here.
+		 */
+		dev_warn(dwc->dev, "%s: unexpected state\n", __func__);
+	}
 
-	spin_lock_irqsave(&dwc->lock, flags);
-	ret = dwc3_gadget_run_stop(dwc, is_on, false);
+	/*
+	 * In the Synopsys DesignWare Cores USB3 Databook Rev. 3.30a
+	 * Section 4.1.8 Table 4-7, it states that for a device-initiated
+	 * disconnect, the SW needs to ensure that it sends "a DEPENDXFER
+	 * command for any active transfers" before clearing the RunStop
+	 * bit.
+	 */
+	dwc3_stop_active_transfers(dwc);
+	__dwc3_gadget_stop(dwc);
 	spin_unlock_irqrestore(&dwc->lock, flags);
 
+	/*
+	 * Note: if the GEVNTCOUNT indicates events in the event buffer, the
+	 * driver needs to acknowledge them before the controller can halt.
+	 * Simply let the interrupt handler acknowledges and handle the
+	 * remaining event generated by the controller while polling for
+	 * DSTS.DEVCTLHLT.
+	 */
+	return dwc3_gadget_run_stop(dwc, false, false);
+}
+
+static int dwc3_gadget_pullup(struct usb_gadget *g, int is_on)
+{
+	struct dwc3		*dwc = gadget_to_dwc(g);
+	int			ret;
+
+	is_on = !!is_on;
+
+	dwc->softconnect = is_on;
+
+	if (!is_on) {
+		ret = dwc3_gadget_soft_disconnect(dwc);
+	} else {
+		/*
+		 * In the Synopsys DWC_usb31 1.90a programming guide section
+		 * 4.1.9, it specifies that for a reconnect after a
+		 * device-initiated disconnect requires a core soft reset
+		 * (DCTL.CSftRst) before enabling the run/stop bit.
+		 */
+		dwc3_core_soft_reset(dwc);
+
+		dwc3_event_buffers_setup(dwc);
+		__dwc3_gadget_start(dwc);
+		ret = dwc3_gadget_run_stop(dwc, true, false);
+	}
+
 	return ret;
 }
 
 static void dwc3_gadget_enable_irq(struct dwc3 *dwc)
 {
-	u32 reg;
+	u32			reg;
 
 	/* Enable all but Start and End of Frame IRQs */
-	reg = (DWC3_DEVTEN_VNDRDEVTSTRCVEDEN |
-		DWC3_DEVTEN_EVNTOVERFLOWEN |
-		DWC3_DEVTEN_CMDCMPLTEN |
-		DWC3_DEVTEN_ERRTICERREN |
-		DWC3_DEVTEN_WKUPEVTEN |
-		DWC3_DEVTEN_ULSTCNGEN |
-		DWC3_DEVTEN_CONNECTDONEEN |
-		DWC3_DEVTEN_USBRSTEN |
-		DWC3_DEVTEN_DISCONNEVTEN);
-
-	if (dwc->revision < DWC3_REVISION_250A)
+	reg = (DWC3_DEVTEN_EVNTOVERFLOWEN |
+			DWC3_DEVTEN_CMDCMPLTEN |
+			DWC3_DEVTEN_ERRTICERREN |
+			DWC3_DEVTEN_WKUPEVTEN |
+			DWC3_DEVTEN_CONNECTDONEEN |
+			DWC3_DEVTEN_USBRSTEN |
+			DWC3_DEVTEN_DISCONNEVTEN);
+
+	if (DWC3_VER_IS_PRIOR(DWC3, 250A))
 		reg |= DWC3_DEVTEN_ULSTCNGEN;
 
+	/* On 2.30a and above this bit enables U3/L2-L1 Suspend Events */
+	if (!DWC3_VER_IS_PRIOR(DWC3, 230A))
+		reg |= DWC3_DEVTEN_U3L2L1SUSPEN;
+
 	dwc3_writel(dwc->regs, DWC3_DEVTEN, reg);
 }
 
@@ -1817,7 +2497,7 @@ static void dwc3_gadget_setup_nump(struct dwc3 *dwc)
 	u32 reg;
 
 	ram2_depth = DWC3_GHWPARAMS7_RAM2_DEPTH(dwc->hwparams.hwparams7);
-	mdwidth = DWC3_GHWPARAMS0_MDWIDTH(dwc->hwparams.hwparams0);
+	mdwidth = dwc3_mdwidth(dwc);
 
 	nump = ((ram2_depth * mdwidth / 8) - 24 - 16) / 1024;
 	nump = min_t(u32, nump, 16);
@@ -1831,9 +2511,20 @@ static void dwc3_gadget_setup_nump(struct dwc3 *dwc)
 
 static int __dwc3_gadget_start(struct dwc3 *dwc)
 {
-	struct dwc3_ep *dep;
-	int ret = 0;
-	u32 reg;
+	struct dwc3_ep		*dep;
+	int			ret = 0;
+	u32			reg;
+
+	/*
+	 * Use IMOD if enabled via dwc->imod_interval. Otherwise, if
+	 * the core supports IMOD, disable it.
+	 */
+	if (dwc->imod_interval) {
+		dwc3_writel(dwc->regs, DWC3_DEV_IMOD(0), dwc->imod_interval);
+		dwc3_writel(dwc->regs, DWC3_GEVNTCOUNT(0), DWC3_GEVNTCOUNT_EHB);
+	} else if (dwc3_has_imod(dwc)) {
+		dwc3_writel(dwc->regs, DWC3_DEV_IMOD(0), 0);
+	}
 
 	/*
 	 * We are telling dwc3 that we want to use DCFG.NUMP as ACK TP's NUMP
@@ -1843,19 +2534,38 @@ static int __dwc3_gadget_start(struct dwc3 *dwc)
 	 * bursts of data without going through any sort of endpoint throttling.
 	 */
 	reg = dwc3_readl(dwc->regs, DWC3_GRXTHRCFG);
-	if (dwc3_is_usb31(dwc))
-		reg &= ~DWC31_GRXTHRCFG_PKTCNTSEL;
-	else
+	if (DWC3_IP_IS(DWC3))
 		reg &= ~DWC3_GRXTHRCFG_PKTCNTSEL;
+	else
+		reg &= ~DWC31_GRXTHRCFG_PKTCNTSEL;
 
 	dwc3_writel(dwc->regs, DWC3_GRXTHRCFG, reg);
 
 	dwc3_gadget_setup_nump(dwc);
 
+	/*
+	 * Currently the controller handles single stream only. So, Ignore
+	 * Packet Pending bit for stream selection and don't search for another
+	 * stream if the host sends Data Packet with PP=0 (for OUT direction) or
+	 * ACK with NumP=0 and PP=0 (for IN direction). This slightly improves
+	 * the stream performance.
+	 */
+	reg = dwc3_readl(dwc->regs, DWC3_DCFG);
+	reg |= DWC3_DCFG_IGNSTRMPP;
+	dwc3_writel(dwc->regs, DWC3_DCFG, reg);
+
+	/* Enable MST by default if the device is capable of MST */
+	if (DWC3_MST_CAPABLE(&dwc->hwparams)) {
+		reg = dwc3_readl(dwc->regs, DWC3_DCFG1);
+		reg &= ~DWC3_DCFG1_DIS_MST_ENH;
+		dwc3_writel(dwc->regs, DWC3_DCFG1, reg);
+	}
+
 	/* Start with SuperSpeed Default */
 	dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(512);
 
 	dep = dwc->eps[0];
+	dep->flags = 0;
 	ret = __dwc3_gadget_ep_enable(dep, DWC3_DEPCFG_ACTION_INIT);
 	if (ret) {
 		dev_err(dwc->dev, "failed to enable %s\n", dep->name);
@@ -1863,6 +2573,7 @@ static int __dwc3_gadget_start(struct dwc3 *dwc)
 	}
 
 	dep = dwc->eps[1];
+	dep->flags = 0;
 	ret = __dwc3_gadget_ep_enable(dep, DWC3_DEPCFG_ACTION_INIT);
 	if (ret) {
 		dev_err(dwc->dev, "failed to enable %s\n", dep->name);
@@ -1871,7 +2582,9 @@ static int __dwc3_gadget_start(struct dwc3 *dwc)
 
 	/* begin to receive SETUP packets */
 	dwc->ep0state = EP0_SETUP_PHASE;
+	dwc->ep0_bounced = false;
 	dwc->link_state = DWC3_LINK_STATE_SS_DIS;
+	dwc->delayed_status = false;
 	dwc3_ep0_out_start(dwc);
 
 	dwc3_gadget_enable_irq(dwc);
@@ -1888,108 +2601,163 @@ err0:
 static int dwc3_gadget_start(struct usb_gadget *g,
 		struct usb_gadget_driver *driver)
 {
-	struct dwc3 *dwc = gadget_to_dwc(g);
-	unsigned long flags;
-	int ret = 0;
+	struct dwc3		*dwc = gadget_to_dwc(g);
+	unsigned long		flags;
 
-	//dwc3_gadget_wakeup(g);
 	spin_lock_irqsave(&dwc->lock, flags);
-	if (dwc->gadget_driver) {
-		dev_err(dwc->dev, "%s is already bound to %s\n",
-			dwc->gadget.name,
-			dwc->gadget_driver->function);
-		ret = -EBUSY;
-		goto err1;
-	}
+	dwc->gadget_driver	= driver;
+	spin_unlock_irqrestore(&dwc->lock, flags);
 
-	dwc->gadget_driver = driver;
+	return 0;
+}
 
-	__dwc3_gadget_start(dwc);
+static void __dwc3_gadget_stop(struct dwc3 *dwc)
+{
+	dwc3_gadget_disable_irq(dwc);
+	__dwc3_gadget_ep_disable(dwc->eps[0]);
+	__dwc3_gadget_ep_disable(dwc->eps[1]);
+}
+
+static int dwc3_gadget_stop(struct usb_gadget *g)
+{
+	struct dwc3		*dwc = gadget_to_dwc(g);
+	unsigned long		flags;
 
+	spin_lock_irqsave(&dwc->lock, flags);
+	dwc->gadget_driver	= NULL;
+	dwc->max_cfg_eps = 0;
 	spin_unlock_irqrestore(&dwc->lock, flags);
 
 	return 0;
+}
 
-err1:
-	spin_unlock_irqrestore(&dwc->lock, flags);
+static void dwc3_gadget_config_params(struct usb_gadget *g,
+				      struct usb_dcd_config_params *params)
+{
+	struct dwc3		*dwc = gadget_to_dwc(g);
 
-	return ret;
+	params->besl_baseline = USB_DEFAULT_BESL_UNSPECIFIED;
+	params->besl_deep = USB_DEFAULT_BESL_UNSPECIFIED;
+
+	/* Recommended BESL */
+	if (!dwc->dis_enblslpm_quirk) {
+		/*
+		 * If the recommended BESL baseline is 0 or if the BESL deep is
+		 * less than 2, Microsoft's Windows 10 host usb stack will issue
+		 * a usb reset immediately after it receives the extended BOS
+		 * descriptor and the enumeration will fail. To maintain
+		 * compatibility with the Windows' usb stack, let's set the
+		 * recommended BESL baseline to 1 and clamp the BESL deep to be
+		 * within 2 to 15.
+		 */
+		params->besl_baseline = 1;
+		if (dwc->is_utmi_l1_suspend)
+			params->besl_deep =
+				clamp_t(u8, dwc->hird_threshold, 2, 15);
+	}
+
+	/* U1 Device exit Latency */
+	if (dwc->dis_u1_entry_quirk)
+		params->bU1devExitLat = 0;
+	else
+		params->bU1devExitLat = DWC3_DEFAULT_U1_DEV_EXIT_LAT;
+
+	/* U2 Device exit Latency */
+	if (dwc->dis_u2_entry_quirk)
+		params->bU2DevExitLat = 0;
+	else
+		params->bU2DevExitLat =
+				cpu_to_le16(DWC3_DEFAULT_U2_DEV_EXIT_LAT);
 }
 
-static int dwc3_gadget_stop(struct usb_gadget *g)
+static void dwc3_gadget_set_speed(struct usb_gadget *g,
+				  enum usb_device_speed speed)
 {
-	struct dwc3 *dwc = gadget_to_dwc(g);
-	unsigned long flags;
+	struct dwc3		*dwc = gadget_to_dwc(g);
+	unsigned long		flags;
 
 	spin_lock_irqsave(&dwc->lock, flags);
+	dwc->gadget_max_speed = speed;
+	spin_unlock_irqrestore(&dwc->lock, flags);
+}
 
-	dwc3_gadget_disable_irq(dwc);
-	__dwc3_gadget_ep_disable(dwc->eps[0]);
-	__dwc3_gadget_ep_disable(dwc->eps[1]);
+static void dwc3_gadget_set_ssp_rate(struct usb_gadget *g,
+				     enum usb_ssp_rate rate)
+{
+	struct dwc3		*dwc = gadget_to_dwc(g);
+	unsigned long		flags;
 
-	dwc->gadget_driver	= NULL;
+	spin_lock_irqsave(&dwc->lock, flags);
+	dwc->gadget_max_speed = USB_SPEED_SUPER_PLUS;
+	dwc->gadget_ssp_rate = rate;
 	spin_unlock_irqrestore(&dwc->lock, flags);
+}
+
+static int dwc3_gadget_vbus_draw(struct usb_gadget *g, unsigned int mA)
+{
+	struct dwc3		*dwc = gadget_to_dwc(g);
+
+	if (dwc->usb2_phy)
+		return usb_phy_set_power(dwc->usb2_phy, mA);
+
+	if (!dwc->usb_psy)
+		return -EOPNOTSUPP;
 
 	return 0;
 }
 
-static void dwc3_gadget_set_speed(struct dwc3 *dwc,
-				  enum usb_device_speed speed)
+/**
+ * dwc3_gadget_check_config - ensure dwc3 can support the USB configuration
+ * @g: pointer to the USB gadget
+ *
+ * Used to record the maximum number of endpoints being used in a USB composite
+ * device. (across all configurations)  This is to be used in the calculation
+ * of the TXFIFO sizes when resizing internal memory for individual endpoints.
+ * It will help ensured that the resizing logic reserves enough space for at
+ * least one max packet.
+ */
+static int dwc3_gadget_check_config(struct usb_gadget *g)
 {
-	unsigned long flags;
-	u32 reg;
-
-	spin_lock_irqsave(&dwc->lock, flags);
-	reg = dwc3_readl(dwc->regs, DWC3_DCFG);
-	reg &= ~(DWC3_DCFG_SPEED_MASK);
+	struct dwc3 *dwc = gadget_to_dwc(g);
+	struct usb_ep *ep;
+	int fifo_size = 0;
+	int ram1_depth;
+	int ep_num = 0;
 
-	/*
-	 * WORKAROUND: DWC3 revision < 2.20a have an issue
-	 * which would cause metastability state on Run/Stop
-	 * bit if we try to force the IP to USB2-only mode.
-	 *
-	 * Because of that, we cannot configure the IP to any
-	 * speed other than the SuperSpeed
-	 *
-	 * Refers to:
-	 *
-	 * STAR#9000525659: Clock Domain Crossing on DCTL in
-	 * USB 2.0 Mode
-	 */
-	if (dwc->revision < DWC3_REVISION_220A &&
-	    !dwc->dis_metastability_quirk) {
-		reg |= DWC3_DCFG_SUPERSPEED;
-	} else {
-		switch (speed) {
-		case USB_SPEED_LOW:
-			reg |= DWC3_DCFG_LOWSPEED;
-			break;
-		case USB_SPEED_FULL:
-			reg |= DWC3_DCFG_FULLSPEED;
-			break;
-		case USB_SPEED_HIGH:
-			reg |= DWC3_DCFG_HIGHSPEED;
-			break;
-		case USB_SPEED_SUPER:
-			reg |= DWC3_DCFG_SUPERSPEED;
-			break;
-		case USB_SPEED_SUPER_PLUS:
-			if (dwc3_is_usb31(dwc))
-				reg |= DWC3_DCFG_SUPERSPEED_PLUS;
-			else
-				reg |= DWC3_DCFG_SUPERSPEED;
-			break;
-		default:
-			dev_err(dwc->dev, "invalid speed (%d)\n", speed);
+	if (!dwc->do_fifo_resize)
+		return 0;
 
-			if (dwc->revision & DWC3_REVISION_IS_DWC31)
-				reg |= DWC3_DCFG_SUPERSPEED_PLUS;
-			else
-				reg |= DWC3_DCFG_SUPERSPEED;
-		}
+	list_for_each_entry(ep, &g->ep_list, ep_list) {
+		/* Only interested in the IN endpoints */
+		if (ep->claimed && (ep->address & USB_DIR_IN))
+			ep_num++;
 	}
-	dwc3_writel(dwc->regs, DWC3_DCFG, reg);
 
+	if (ep_num <= dwc->max_cfg_eps)
+		return 0;
+
+	/* Update the max number of eps in the composition */
+	dwc->max_cfg_eps = ep_num;
+
+	fifo_size = dwc3_gadget_calc_tx_fifo_size(dwc, dwc->max_cfg_eps);
+	/* Based on the equation, increment by one for every ep */
+	fifo_size += dwc->max_cfg_eps;
+
+	/* Check if we can fit a single fifo per endpoint */
+	ram1_depth = DWC3_RAM1_DEPTH(dwc->hwparams.hwparams7);
+	if (fifo_size > ram1_depth)
+		return -ENOMEM;
+
+	return 0;
+}
+
+static void dwc3_gadget_async_callbacks(struct usb_gadget *g, bool enable)
+{
+	struct dwc3		*dwc = gadget_to_dwc(g);
+	unsigned long		flags;
+
+	spin_lock_irqsave(&dwc->lock, flags);
+	dwc->async_callbacks = enable;
 	spin_unlock_irqrestore(&dwc->lock, flags);
 }
 
@@ -1997,12 +2765,18 @@ static void dwc3_gadget_poll(struct usb_gadget *g);
 
 static const struct usb_gadget_ops dwc3_gadget_ops = {
 	.get_frame		= dwc3_gadget_get_frame,
-	.wakeup		= dwc3_gadget_wakeup,
+	.wakeup			= dwc3_gadget_wakeup,
 	.set_selfpowered	= dwc3_gadget_set_selfpowered,
-	.pullup		= dwc3_gadget_pullup,
+	.pullup			= dwc3_gadget_pullup,
 	.udc_start		= dwc3_gadget_start,
 	.udc_stop		= dwc3_gadget_stop,
 	.udc_poll		= dwc3_gadget_poll,
+	.udc_set_speed		= dwc3_gadget_set_speed,
+	.udc_set_ssp_rate	= dwc3_gadget_set_ssp_rate,
+	.get_config_params	= dwc3_gadget_config_params,
+	.vbus_draw		= dwc3_gadget_vbus_draw,
+	.check_config		= dwc3_gadget_check_config,
+	.udc_async_callbacks	= dwc3_gadget_async_callbacks,
 };
 
 /* -------------------------------------------------------------------------- */
@@ -2015,7 +2789,9 @@ static int dwc3_gadget_init_control_endpoint(struct dwc3_ep *dep)
 	dep->endpoint.maxburst = 1;
 	dep->endpoint.ops = &dwc3_gadget_ep0_ops;
 	if (!dep->direction)
-		dwc->gadget.ep0 = &dep->endpoint;
+		dwc->gadget->ep0 = &dep->endpoint;
+
+	dep->endpoint.caps.type_control = true;
 
 	return 0;
 }
@@ -2023,41 +2799,48 @@ static int dwc3_gadget_init_control_endpoint(struct dwc3_ep *dep)
 static int dwc3_gadget_init_in_endpoint(struct dwc3_ep *dep)
 {
 	struct dwc3 *dwc = dep->dwc;
-	int mdwidth;
-	int kbytes;
+	u32 mdwidth;
 	int size;
+	int maxpacket;
+
+	mdwidth = dwc3_mdwidth(dwc);
 
-	mdwidth = DWC3_MDWIDTH(dwc->hwparams.hwparams0);
 	/* MDWIDTH is represented in bits, we need it in bytes */
 	mdwidth /= 8;
 
 	size = dwc3_readl(dwc->regs, DWC3_GTXFIFOSIZ(dep->number >> 1));
-	if (dwc3_is_usb31(dwc))
-		size = DWC31_GTXFIFOSIZ_TXFDEF(size);
+	if (DWC3_IP_IS(DWC3))
+		size = DWC3_GTXFIFOSIZ_TXFDEP(size);
 	else
-		size = DWC3_GTXFIFOSIZ_TXFDEF(size);
-
-	/* FIFO Depth is in MDWDITH bytes. Multiply */
-	size *= mdwidth;
-
-	kbytes = size / 1024;
-	if (kbytes == 0)
-		kbytes = 1;
+		size = DWC31_GTXFIFOSIZ_TXFDEP(size);
 
 	/*
-	 * FIFO sizes account an extra MDWIDTH * (kbytes + 1) bytes for
-	 * internal overhead. We don't really know how these are used,
-	 * but documentation say it exists.
+	 * maxpacket size is determined as part of the following, after assuming
+	 * a mult value of one maxpacket:
+	 * DWC3 revision 280A and prior:
+	 * fifo_size = mult * (max_packet / mdwidth) + 1;
+	 * maxpacket = mdwidth * (fifo_size - 1);
+	 *
+	 * DWC3 revision 290A and onwards:
+	 * fifo_size = mult * ((max_packet + mdwidth)/mdwidth + 1) + 1
+	 * maxpacket = mdwidth * ((fifo_size - 1) - 1) - mdwidth;
 	 */
-	size -= mdwidth * (kbytes + 1);
-	size /= kbytes;
+	if (DWC3_VER_IS_PRIOR(DWC3, 290A))
+		maxpacket = mdwidth * (size - 1);
+	else
+		maxpacket = mdwidth * ((size - 1) - 1) - mdwidth;
 
+	/* Functionally, space for one max packet is sufficient */
+	size = min_t(int, maxpacket, 1024);
 	usb_ep_set_maxpacket_limit(&dep->endpoint, size);
 
-	dep->endpoint.max_streams = 15;
+	dep->endpoint.max_streams = 16;
 	dep->endpoint.ops = &dwc3_gadget_ep_ops;
 	list_add_tail(&dep->endpoint.ep_list,
-			&dwc->gadget.ep_list);
+			&dwc->gadget->ep_list);
+	dep->endpoint.caps.type_iso = true;
+	dep->endpoint.caps.type_bulk = true;
+	dep->endpoint.caps.type_int = true;
 
 	return dwc3_alloc_trb_pool(dep);
 }
@@ -2065,22 +2848,56 @@ static int dwc3_gadget_init_in_endpoint(struct dwc3_ep *dep)
 static int dwc3_gadget_init_out_endpoint(struct dwc3_ep *dep)
 {
 	struct dwc3 *dwc = dep->dwc;
+	u32 mdwidth;
+	int size;
 
-	usb_ep_set_maxpacket_limit(&dep->endpoint, 1024);
-	dep->endpoint.max_streams = 15;
+	mdwidth = dwc3_mdwidth(dwc);
+
+	/* MDWIDTH is represented in bits, convert to bytes */
+	mdwidth /= 8;
+
+	/* All OUT endpoints share a single RxFIFO space */
+	size = dwc3_readl(dwc->regs, DWC3_GRXFIFOSIZ(0));
+	if (DWC3_IP_IS(DWC3))
+		size = DWC3_GRXFIFOSIZ_RXFDEP(size);
+	else
+		size = DWC31_GRXFIFOSIZ_RXFDEP(size);
+
+	/* FIFO depth is in MDWDITH bytes */
+	size *= mdwidth;
+
+	/*
+	 * To meet performance requirement, a minimum recommended RxFIFO size
+	 * is defined as follow:
+	 * RxFIFO size >= (3 x MaxPacketSize) +
+	 * (3 x 8 bytes setup packets size) + (16 bytes clock crossing margin)
+	 *
+	 * Then calculate the max packet limit as below.
+	 */
+	size -= (3 * 8) + 16;
+	if (size < 0)
+		size = 0;
+	else
+		size /= 3;
+
+	usb_ep_set_maxpacket_limit(&dep->endpoint, size);
+	dep->endpoint.max_streams = 16;
 	dep->endpoint.ops = &dwc3_gadget_ep_ops;
 	list_add_tail(&dep->endpoint.ep_list,
-			&dwc->gadget.ep_list);
+			&dwc->gadget->ep_list);
+	dep->endpoint.caps.type_iso = true;
+	dep->endpoint.caps.type_bulk = true;
+	dep->endpoint.caps.type_int = true;
 
 	return dwc3_alloc_trb_pool(dep);
 }
 
 static int dwc3_gadget_init_endpoint(struct dwc3 *dwc, u8 epnum)
 {
-	struct dwc3_ep *dep;
-	bool direction = epnum & 1;
-	int ret;
-	u8 num = epnum >> 1;
+	struct dwc3_ep			*dep;
+	bool				direction = epnum & 1;
+	int				ret;
+	u8				num = epnum >> 1;
 
 	dep = kzalloc(sizeof(*dep), GFP_KERNEL);
 	if (!dep)
@@ -2095,7 +2912,7 @@ static int dwc3_gadget_init_endpoint(struct dwc3 *dwc, u8 epnum)
 	dep->start_cmd_status = 0;
 
 	snprintf(dep->name, sizeof(dep->name), "ep%u%s", num,
-		 direction ? "in" : "out");
+			direction ? "in" : "out");
 
 	dep->endpoint.name = dep->name;
 
@@ -2104,8 +2921,6 @@ static int dwc3_gadget_init_endpoint(struct dwc3 *dwc, u8 epnum)
 		dep->endpoint.comp_desc = NULL;
 	}
 
-	spin_lock_init(&dep->lock);
-
 	if (num == 0)
 		ret = dwc3_gadget_init_control_endpoint(dep);
 	else if (direction)
@@ -2116,21 +2931,26 @@ static int dwc3_gadget_init_endpoint(struct dwc3 *dwc, u8 epnum)
 	if (ret)
 		return ret;
 
+	dep->endpoint.caps.dir_in = direction;
+	dep->endpoint.caps.dir_out = !direction;
+
 	INIT_LIST_HEAD(&dep->pending_list);
 	INIT_LIST_HEAD(&dep->started_list);
 	INIT_LIST_HEAD(&dep->cancelled_list);
 
+	dwc3_debugfs_create_endpoint_dir(dep);
+
 	return 0;
 }
 
 static int dwc3_gadget_init_endpoints(struct dwc3 *dwc, u8 total)
 {
-	u8 epnum;
+	u8				epnum;
 
-	INIT_LIST_HEAD(&dwc->gadget.ep_list);
+	INIT_LIST_HEAD(&dwc->gadget->ep_list);
 
 	for (epnum = 0; epnum < total; epnum++) {
-		int ret;
+		int			ret;
 
 		ret = dwc3_gadget_init_endpoint(dwc, epnum);
 		if (ret)
@@ -2142,8 +2962,8 @@ static int dwc3_gadget_init_endpoints(struct dwc3 *dwc, u8 total)
 
 static void dwc3_gadget_free_endpoints(struct dwc3 *dwc)
 {
-	struct dwc3_ep *dep;
-	u8 epnum;
+	struct dwc3_ep			*dep;
+	u8				epnum;
 
 	for (epnum = 0; epnum < DWC3_ENDPOINTS_NUM; epnum++) {
 		dep = dwc->eps[epnum];
@@ -2163,6 +2983,7 @@ static void dwc3_gadget_free_endpoints(struct dwc3 *dwc)
 			list_del(&dep->endpoint.ep_list);
 		}
 
+		dwc3_debugfs_remove_endpoint_dir(dep);
 		kfree(dep);
 	}
 }
@@ -2170,12 +2991,10 @@ static void dwc3_gadget_free_endpoints(struct dwc3 *dwc)
 /* -------------------------------------------------------------------------- */
 
 static int dwc3_gadget_ep_reclaim_completed_trb(struct dwc3_ep *dep,
-						struct dwc3_request *req,
-						struct dwc3_trb *trb,
-						const struct dwc3_event_depevt *event,
-						int status, int chain)
+		struct dwc3_request *req, struct dwc3_trb *trb,
+		const struct dwc3_event_depevt *event, int status, int chain)
 {
-	unsigned int count;
+	unsigned int		count;
 
 	dwc3_ep_inc_deq(dep);
 
@@ -2204,15 +3023,16 @@ static int dwc3_gadget_ep_reclaim_completed_trb(struct dwc3_ep *dep,
 
 		frame_number = DWC3_TRB_CTRL_GET_SID_SOFN(trb->ctrl);
 		frame_number &= ~(dep->interval - 1);
+		req->request.frame_number = frame_number;
 	}
 
 	/*
-	 * If we're dealing with unaligned size OUT transfer, we will be left
-	 * with one TRB pending in the ring. We need to manually clear HWO bit
-	 * from that TRB.
+	 * We use bounce buffer for requests that needs extra TRB or OUT ZLP. If
+	 * this TRB points to the bounce buffer address, it's a MPS alignment
+	 * TRB. Don't add it to req->remaining calculation.
 	 */
-
-	if (req->needs_extra_trb && !(trb->ctrl & DWC3_TRB_CTRL_CHN)) {
+	if (trb->bpl == lower_32_bits(dep->dwc->bounce_addr) &&
+	    trb->bph == upper_32_bits(dep->dwc->bounce_addr)) {
 		trb->ctrl &= ~DWC3_TRB_CTRL_HWO;
 		return 1;
 	}
@@ -2226,16 +3046,20 @@ static int dwc3_gadget_ep_reclaim_completed_trb(struct dwc3_ep *dep,
 	if (event->status & DEPEVT_STATUS_SHORT && !chain)
 		return 1;
 
-	if (event->status & DEPEVT_STATUS_IOC)
+	if ((trb->ctrl & DWC3_TRB_CTRL_ISP_IMI) &&
+	    DWC3_TRB_SIZE_TRBSTS(trb->size) == DWC3_TRBSTS_MISSED_ISOC)
+		return 1;
+
+	if ((trb->ctrl & DWC3_TRB_CTRL_IOC) ||
+	    (trb->ctrl & DWC3_TRB_CTRL_LST))
 		return 1;
 
 	return 0;
 }
 
 static int dwc3_gadget_ep_reclaim_trb_linear(struct dwc3_ep *dep,
-					     struct dwc3_request *req,
-					     const struct dwc3_event_depevt *event,
-					     int status)
+		struct dwc3_request *req, const struct dwc3_event_depevt *event,
+		int status)
 {
 	struct dwc3_trb *trb = &dep->trb_pool[dep->trb_dequeue];
 
@@ -2243,15 +3067,24 @@ static int dwc3_gadget_ep_reclaim_trb_linear(struct dwc3_ep *dep,
 			event, status, false);
 }
 
+static bool dwc3_gadget_ep_request_completed(struct dwc3_request *req)
+{
+	return req->num_pending_sgs == 0 && req->num_queued_sgs == 0;
+}
+
 static int dwc3_gadget_ep_cleanup_completed_request(struct dwc3_ep *dep,
-						    const struct dwc3_event_depevt *event,
-						    struct dwc3_request *req,
-						    int status)
+		const struct dwc3_event_depevt *event,
+		struct dwc3_request *req, int status)
 {
+	int request_status;
 	int ret;
 
-	ret = dwc3_gadget_ep_reclaim_trb_linear(dep, req, event,
-						status);
+	ret = dwc3_gadget_ep_reclaim_trb_linear(dep, req, event, status);
+
+	req->request.actual = req->request.length - req->remaining;
+
+	if (!dwc3_gadget_ep_request_completed(req))
+		goto out;
 
 	if (req->needs_extra_trb) {
 		ret = dwc3_gadget_ep_reclaim_trb_linear(dep, req, event,
@@ -2259,69 +3092,121 @@ static int dwc3_gadget_ep_cleanup_completed_request(struct dwc3_ep *dep,
 		req->needs_extra_trb = false;
 	}
 
-	req->request.actual = req->request.length - req->remaining;
+	/*
+	 * The event status only reflects the status of the TRB with IOC set.
+	 * For the requests that don't set interrupt on completion, the driver
+	 * needs to check and return the status of the completed TRBs associated
+	 * with the request. Use the status of the last TRB of the request.
+	 */
+	if (req->request.no_interrupt) {
+		struct dwc3_trb *trb;
+
+		trb = dwc3_ep_prev_trb(dep, dep->trb_dequeue);
+		switch (DWC3_TRB_SIZE_TRBSTS(trb->size)) {
+		case DWC3_TRBSTS_MISSED_ISOC:
+			/* Isoc endpoint only */
+			request_status = -EXDEV;
+			break;
+		case DWC3_TRB_STS_XFER_IN_PROG:
+			/* Applicable when End Transfer with ForceRM=0 */
+		case DWC3_TRBSTS_SETUP_PENDING:
+			/* Control endpoint only */
+		case DWC3_TRBSTS_OK:
+		default:
+			request_status = 0;
+			break;
+		}
+	} else {
+		request_status = status;
+	}
 
-	dwc3_gadget_giveback(dep, req, status);
+	dwc3_gadget_giveback(dep, req, request_status);
 
+out:
 	return ret;
 }
 
 static void dwc3_gadget_ep_cleanup_completed_requests(struct dwc3_ep *dep,
-						      const struct dwc3_event_depevt *event,
-						      int status)
+		const struct dwc3_event_depevt *event, int status)
+{
+	struct dwc3_request	*req;
+
+	while (!list_empty(&dep->started_list)) {
+		int ret;
+
+		req = next_request(&dep->started_list);
+		ret = dwc3_gadget_ep_cleanup_completed_request(dep, event,
+				req, status);
+		if (ret)
+			break;
+		/*
+		 * The endpoint is disabled, let the dwc3_remove_requests()
+		 * handle the cleanup.
+		 */
+		if (!dep->endpoint.desc)
+			break;
+	}
+}
+
+static bool dwc3_gadget_ep_should_continue(struct dwc3_ep *dep)
 {
-	struct dwc3_request *req;
-	struct dwc3_request *tmp;
+	struct dwc3_request	*req;
+	struct dwc3		*dwc = dep->dwc;
 
-	list_for_each_entry_safe(req, tmp, &dep->started_list, list) {
-		int ret;
+	if (!dep->endpoint.desc || !dwc->pullups_connected ||
+	    !dwc->connected)
+		return false;
 
-		ret = dwc3_gadget_ep_cleanup_completed_request(dep, event,
-				req, status);
-		if (ret)
-			break;
-	}
+	if (!list_empty(&dep->pending_list))
+		return true;
+
+	/*
+	 * We only need to check the first entry of the started list. We can
+	 * assume the completed requests are removed from the started list.
+	 */
+	req = next_request(&dep->started_list);
+	if (!req)
+		return false;
+
+	return !dwc3_gadget_ep_request_completed(req);
 }
 
 static void dwc3_gadget_endpoint_frame_from_event(struct dwc3_ep *dep,
-						  const struct dwc3_event_depevt *event)
+		const struct dwc3_event_depevt *event)
 {
 	dep->frame_number = event->parameters;
 }
 
-static void dwc3_gadget_endpoint_transfer_in_progress(struct dwc3_ep *dep,
-						      const struct dwc3_event_depevt *event)
+static bool dwc3_gadget_endpoint_trbs_complete(struct dwc3_ep *dep,
+		const struct dwc3_event_depevt *event, int status)
 {
-	struct dwc3 *dwc = dep->dwc;
-	unsigned status = 0;
-	bool stop = false;
-
-	dwc3_gadget_endpoint_frame_from_event(dep, event);
+	struct dwc3		*dwc = dep->dwc;
+	bool			no_started_trb = true;
 
-	if (event->status & DEPEVT_STATUS_BUSERR)
-		status = -ECONNRESET;
-
-	if (event->status & DEPEVT_STATUS_MISSED_ISOC) {
-		status = -EXDEV;
+	dwc3_gadget_ep_cleanup_completed_requests(dep, event, status);
 
-		if (list_empty(&dep->started_list))
-			stop = true;
-	}
+	if (dep->flags & DWC3_EP_END_TRANSFER_PENDING)
+		goto out;
 
-	dwc3_gadget_ep_cleanup_completed_requests(dep, event, status);
+	if (!dep->endpoint.desc)
+		return no_started_trb;
 
-	if (stop) {
+	if (usb_endpoint_xfer_isoc(dep->endpoint.desc) &&
+		list_empty(&dep->started_list) &&
+		(list_empty(&dep->pending_list) || status == -EXDEV))
 		dwc3_stop_active_transfer(dep, true, true);
-		dep->flags = DWC3_EP_ENABLED;
-	}
+	else if (dwc3_gadget_ep_should_continue(dep))
+		if (__dwc3_gadget_kick_transfer(dep) == 0)
+			no_started_trb = false;
 
+out:
 	/*
 	 * WORKAROUND: This is the 2nd half of U1/U2 -> U0 workaround.
 	 * See dwc3_gadget_linksts_change_interrupt() for 1st half.
 	 */
-	if (dwc->revision < DWC3_REVISION_183A) {
-		u32 reg;
-		int i;
+	if (DWC3_VER_IS_PRIOR(DWC3, 183A)) {
+		u32		reg;
+		int		i;
 
 		for (i = 0; i < DWC3_ENDPOINTS_NUM; i++) {
 			dep = dwc->eps[i];
@@ -2330,7 +3215,7 @@ static void dwc3_gadget_endpoint_transfer_in_progress(struct dwc3_ep *dep,
 				continue;
 
 			if (!list_empty(&dep->started_list))
-				return;
+				return no_started_trb;
 		}
 
 		reg = dwc3_readl(dwc->regs, DWC3_DCTL);
@@ -2339,30 +3224,188 @@ static void dwc3_gadget_endpoint_transfer_in_progress(struct dwc3_ep *dep,
 
 		dwc->u1u2 = 0;
 	}
+
+	return no_started_trb;
+}
+
+static void dwc3_gadget_endpoint_transfer_in_progress(struct dwc3_ep *dep,
+		const struct dwc3_event_depevt *event)
+{
+	int status = 0;
+
+	if (!dep->endpoint.desc)
+		return;
+
+	if (usb_endpoint_xfer_isoc(dep->endpoint.desc))
+		dwc3_gadget_endpoint_frame_from_event(dep, event);
+
+	if (event->status & DEPEVT_STATUS_BUSERR)
+		status = -ECONNRESET;
+
+	if (event->status & DEPEVT_STATUS_MISSED_ISOC)
+		status = -EXDEV;
+
+	dwc3_gadget_endpoint_trbs_complete(dep, event, status);
+}
+
+static void dwc3_gadget_endpoint_transfer_complete(struct dwc3_ep *dep,
+		const struct dwc3_event_depevt *event)
+{
+	int status = 0;
+
+	dep->flags &= ~DWC3_EP_TRANSFER_STARTED;
+
+	if (event->status & DEPEVT_STATUS_BUSERR)
+		status = -ECONNRESET;
+
+	if (dwc3_gadget_endpoint_trbs_complete(dep, event, status))
+		dep->flags &= ~DWC3_EP_WAIT_TRANSFER_COMPLETE;
 }
 
 static void dwc3_gadget_endpoint_transfer_not_ready(struct dwc3_ep *dep,
-						    const struct dwc3_event_depevt *event)
+		const struct dwc3_event_depevt *event)
 {
 	dwc3_gadget_endpoint_frame_from_event(dep, event);
+
+	/*
+	 * The XferNotReady event is generated only once before the endpoint
+	 * starts. It will be generated again when END_TRANSFER command is
+	 * issued. For some controller versions, the XferNotReady event may be
+	 * generated while the END_TRANSFER command is still in process. Ignore
+	 * it and wait for the next XferNotReady event after the command is
+	 * completed.
+	 */
+	if (dep->flags & DWC3_EP_END_TRANSFER_PENDING)
+		return;
+
 	(void) __dwc3_gadget_start_isoc(dep);
 }
 
+static void dwc3_gadget_endpoint_command_complete(struct dwc3_ep *dep,
+		const struct dwc3_event_depevt *event)
+{
+	u8 cmd = DEPEVT_PARAMETER_CMD(event->parameters);
+
+	if (cmd != DWC3_DEPCMD_ENDTRANSFER)
+		return;
+
+	/*
+	 * The END_TRANSFER command will cause the controller to generate a
+	 * NoStream Event, and it's not due to the host DP NoStream rejection.
+	 * Ignore the next NoStream event.
+	 */
+	if (dep->stream_capable)
+		dep->flags |= DWC3_EP_IGNORE_NEXT_NOSTREAM;
+
+	dep->flags &= ~DWC3_EP_END_TRANSFER_PENDING;
+	dep->flags &= ~DWC3_EP_TRANSFER_STARTED;
+	dwc3_gadget_ep_cleanup_cancelled_requests(dep);
+
+	if (dep->flags & DWC3_EP_PENDING_CLEAR_STALL) {
+		struct dwc3 *dwc = dep->dwc;
+
+		dep->flags &= ~DWC3_EP_PENDING_CLEAR_STALL;
+		if (dwc3_send_clear_stall_ep_cmd(dep)) {
+			struct usb_ep *ep0 = &dwc->eps[0]->endpoint;
+
+			dev_err(dwc->dev, "failed to clear STALL on %s\n", dep->name);
+			if (dwc->delayed_status)
+				__dwc3_gadget_ep0_set_halt(ep0, 1);
+			return;
+		}
+
+		dep->flags &= ~(DWC3_EP_STALL | DWC3_EP_WEDGE);
+		if (dwc->clear_stall_protocol == dep->number)
+			dwc3_ep0_send_delayed_status(dwc);
+	}
+
+	if ((dep->flags & DWC3_EP_DELAY_START) &&
+	    !usb_endpoint_xfer_isoc(dep->endpoint.desc))
+		__dwc3_gadget_kick_transfer(dep);
+
+	dep->flags &= ~DWC3_EP_DELAY_START;
+}
+
+static void dwc3_gadget_endpoint_stream_event(struct dwc3_ep *dep,
+		const struct dwc3_event_depevt *event)
+{
+	struct dwc3 *dwc = dep->dwc;
+
+	if (event->status == DEPEVT_STREAMEVT_FOUND) {
+		dep->flags |= DWC3_EP_FIRST_STREAM_PRIMED;
+		goto out;
+	}
+
+	/* Note: NoStream rejection event param value is 0 and not 0xFFFF */
+	switch (event->parameters) {
+	case DEPEVT_STREAM_PRIME:
+		/*
+		 * If the host can properly transition the endpoint state from
+		 * idle to prime after a NoStream rejection, there's no need to
+		 * force restarting the endpoint to reinitiate the stream. To
+		 * simplify the check, assume the host follows the USB spec if
+		 * it primed the endpoint more than once.
+		 */
+		if (dep->flags & DWC3_EP_FORCE_RESTART_STREAM) {
+			if (dep->flags & DWC3_EP_FIRST_STREAM_PRIMED)
+				dep->flags &= ~DWC3_EP_FORCE_RESTART_STREAM;
+			else
+				dep->flags |= DWC3_EP_FIRST_STREAM_PRIMED;
+		}
+
+		break;
+	case DEPEVT_STREAM_NOSTREAM:
+		if ((dep->flags & DWC3_EP_IGNORE_NEXT_NOSTREAM) ||
+		    !(dep->flags & DWC3_EP_FORCE_RESTART_STREAM) ||
+		    (!DWC3_MST_CAPABLE(&dwc->hwparams) &&
+		     !(dep->flags & DWC3_EP_WAIT_TRANSFER_COMPLETE)))
+			break;
+
+		/*
+		 * If the host rejects a stream due to no active stream, by the
+		 * USB and xHCI spec, the endpoint will be put back to idle
+		 * state. When the host is ready (buffer added/updated), it will
+		 * prime the endpoint to inform the usb device controller. This
+		 * triggers the device controller to issue ERDY to restart the
+		 * stream. However, some hosts don't follow this and keep the
+		 * endpoint in the idle state. No prime will come despite host
+		 * streams are updated, and the device controller will not be
+		 * triggered to generate ERDY to move the next stream data. To
+		 * workaround this and maintain compatibility with various
+		 * hosts, force to reinitiate the stream until the host is ready
+		 * instead of waiting for the host to prime the endpoint.
+		 */
+		if (DWC3_VER_IS_WITHIN(DWC32, 100A, ANY)) {
+			unsigned int cmd = DWC3_DGCMD_SET_ENDPOINT_PRIME;
+
+			dwc3_send_gadget_generic_command(dwc, cmd, dep->number);
+		} else {
+			dep->flags |= DWC3_EP_DELAY_START;
+			dwc3_stop_active_transfer(dep, true, true);
+			return;
+		}
+		break;
+	}
+
+out:
+	dep->flags &= ~DWC3_EP_IGNORE_NEXT_NOSTREAM;
+}
+
 static void dwc3_endpoint_interrupt(struct dwc3 *dwc,
-				    const struct dwc3_event_depevt *event)
+		const struct dwc3_event_depevt *event)
 {
-	struct dwc3_ep *dep;
-	u8 epnum = event->endpoint_number;
-	u8 cmd;
+	struct dwc3_ep		*dep;
+	u8			epnum = event->endpoint_number;
 
 	dep = dwc->eps[epnum];
 
 	if (!(dep->flags & DWC3_EP_ENABLED)) {
-		if (!(dep->flags & DWC3_EP_TRANSFER_STARTED))
+		if ((epnum > 1) && !(dep->flags & DWC3_EP_TRANSFER_STARTED))
 			return;
 
 		/* Handle only EPCMDCMPLT when EP disabled */
-		if (event->endpoint_event != DWC3_DEPEVT_EPCMDCMPLT)
+		if ((event->endpoint_event != DWC3_DEPEVT_EPCMDCMPLT) &&
+			!(epnum <= 1 && event->endpoint_event == DWC3_DEPEVT_XFERCOMPLETE))
 			return;
 	}
 
@@ -2379,15 +3422,14 @@ static void dwc3_endpoint_interrupt(struct dwc3 *dwc,
 		dwc3_gadget_endpoint_transfer_not_ready(dep, event);
 		break;
 	case DWC3_DEPEVT_EPCMDCMPLT:
-		cmd = DEPEVT_PARAMETER_CMD(event->parameters);
-
-		if (cmd == DWC3_DEPCMD_ENDTRANSFER) {
-			dep->flags &= ~DWC3_EP_TRANSFER_STARTED;
-			dwc3_gadget_ep_cleanup_cancelled_requests(dep);
-		}
+		dwc3_gadget_endpoint_command_complete(dep, event);
 		break;
-	case DWC3_DEPEVT_STREAMEVT:
 	case DWC3_DEPEVT_XFERCOMPLETE:
+		dwc3_gadget_endpoint_transfer_complete(dep, event);
+		break;
+	case DWC3_DEPEVT_STREAMEVT:
+		dwc3_gadget_endpoint_stream_event(dep, event);
+		break;
 	case DWC3_DEPEVT_RXTXFIFOEVT:
 		break;
 	}
@@ -2395,27 +3437,27 @@ static void dwc3_endpoint_interrupt(struct dwc3 *dwc,
 
 static void dwc3_disconnect_gadget(struct dwc3 *dwc)
 {
-	if (dwc->gadget_driver && dwc->gadget_driver->disconnect) {
+	if (dwc->async_callbacks && dwc->gadget_driver->disconnect) {
 		spin_unlock(&dwc->lock);
-		dwc->gadget_driver->disconnect(&dwc->gadget);
+		dwc->gadget_driver->disconnect(dwc->gadget);
 		spin_lock(&dwc->lock);
 	}
 }
 
 static void dwc3_suspend_gadget(struct dwc3 *dwc)
 {
-	if (dwc->gadget_driver && dwc->gadget_driver->suspend) {
+	if (dwc->async_callbacks && dwc->gadget_driver->suspend) {
 		spin_unlock(&dwc->lock);
-		dwc->gadget_driver->suspend(&dwc->gadget);
+		dwc->gadget_driver->suspend(dwc->gadget);
 		spin_lock(&dwc->lock);
 	}
 }
 
 static void dwc3_resume_gadget(struct dwc3 *dwc)
 {
-	if (dwc->gadget_driver && dwc->gadget_driver->resume) {
+	if (dwc->async_callbacks && dwc->gadget_driver->resume) {
 		spin_unlock(&dwc->lock);
-		dwc->gadget_driver->resume(&dwc->gadget);
+		dwc->gadget_driver->resume(dwc->gadget);
 		spin_lock(&dwc->lock);
 	}
 }
@@ -2425,23 +3467,45 @@ static void dwc3_reset_gadget(struct dwc3 *dwc)
 	if (!dwc->gadget_driver)
 		return;
 
-	if (dwc->gadget.speed != USB_SPEED_UNKNOWN) {
+	if (dwc->async_callbacks && dwc->gadget->speed != USB_SPEED_UNKNOWN) {
 		spin_unlock(&dwc->lock);
-		usb_gadget_udc_reset(&dwc->gadget, dwc->gadget_driver);
+		usb_gadget_udc_reset(dwc->gadget, dwc->gadget_driver);
 		spin_lock(&dwc->lock);
 	}
 }
 
-static void dwc3_stop_active_transfer(struct dwc3_ep *dep, bool force,
-				      bool interrupt)
+void dwc3_stop_active_transfer(struct dwc3_ep *dep, bool force,
+	bool interrupt)
 {
 	struct dwc3 *dwc = dep->dwc;
-	struct dwc3_gadget_ep_cmd_params params;
-	u32 cmd;
-	int ret;
 
-	if (!(dep->flags & DWC3_EP_TRANSFER_STARTED))
+	/*
+	 * Only issue End Transfer command to the control endpoint of a started
+	 * Data Phase. Typically we should only do so in error cases such as
+	 * invalid/unexpected direction as described in the control transfer
+	 * flow of the programming guide.
+	 */
+	if (dep->number <= 1 && dwc->ep0state != EP0_DATA_PHASE)
+		return;
+
+	if (interrupt && (dep->flags & DWC3_EP_DELAY_STOP))
+		return;
+
+	if (!(dep->flags & DWC3_EP_TRANSFER_STARTED) ||
+	    (dep->flags & DWC3_EP_END_TRANSFER_PENDING))
+		return;
+
+	/*
+	 * If a Setup packet is received but yet to DMA out, the controller will
+	 * not process the End Transfer command of any endpoint. Polling of its
+	 * DEPCMD.CmdAct may block setting up TRB for Setup packet, causing a
+	 * timeout. Delay issuing the End Transfer command until the Setup TRB is
+	 * prepared.
+	 */
+	if (dwc->ep0state != EP0_SETUP_PHASE && !dwc->delayed_status) {
+		dep->flags |= DWC3_EP_DELAY_STOP;
 		return;
+	}
 
 	/*
 	 * NOTICE: We are violating what the Databook says about the
@@ -2450,28 +3514,27 @@ static void dwc3_stop_active_transfer(struct dwc3_ep *dep, bool force,
 	 * much trouble synchronizing between us and gadget driver.
 	 *
 	 * We have discussed this with the IP Provider and it was
-	 * suggested to giveback all requests here, but give HW some
-	 * extra time to synchronize with the interconnect. We're using
-	 * an arbitraty 100us delay for that.
+	 * suggested to giveback all requests here.
 	 *
 	 * Note also that a similar handling was tested by Synopsys
 	 * (thanks a lot Paul) and nothing bad has come out of it.
-	 * In short, what we're doing is:
+	 * In short, what we're doing is issuing EndTransfer with
+	 * CMDIOC bit set and delay kicking transfer until the
+	 * EndTransfer command had completed.
 	 *
-	 * - Issue EndTransfer WITH CMDIOC bit set
-	 * - Wait 100us
+	 * As of IP version 3.10a of the DWC_usb3 IP, the controller
+	 * supports a mode to work around the above limitation. The
+	 * software can poll the CMDACT bit in the DEPCMD register
+	 * after issuing a EndTransfer command. This mode is enabled
+	 * by writing GUCTL2[14]. This polling is already done in the
+	 * dwc3_send_gadget_ep_cmd() function so if the mode is
+	 * enabled, the EndTransfer command will have completed upon
+	 * returning from this function.
+	 *
+	 * This mode is NOT available on the DWC_usb31 IP.
 	 */
 
-	cmd = DWC3_DEPCMD_ENDTRANSFER;
-	cmd |= force ? DWC3_DEPCMD_HIPRI_FORCERM : 0;
-	cmd |= DWC3_DEPCMD_CMDIOC;
-	cmd |= DWC3_DEPCMD_PARAM(dep->resource_index);
-	memset(&params, 0, sizeof(params));
-	ret = dwc3_send_gadget_ep_cmd(dep, cmd, &params);
-	dep->resource_index = 0;
-
-	if (dwc3_is_usb31(dwc) || dwc->revision < DWC3_REVISION_310A)
-		udelay(100);
+	__dwc3_stop_active_transfer(dep, force, interrupt);
 }
 
 static void dwc3_clear_stall_all_ep(struct dwc3 *dwc)
@@ -2480,6 +3543,7 @@ static void dwc3_clear_stall_all_ep(struct dwc3 *dwc)
 
 	for (epnum = 1; epnum < DWC3_ENDPOINTS_NUM; epnum++) {
 		struct dwc3_ep *dep;
+		int ret;
 
 		dep = dwc->eps[epnum];
 		if (!dep)
@@ -2490,35 +3554,54 @@ static void dwc3_clear_stall_all_ep(struct dwc3 *dwc)
 
 		dep->flags &= ~DWC3_EP_STALL;
 
-		dwc3_send_clear_stall_ep_cmd(dep);
+		ret = dwc3_send_clear_stall_ep_cmd(dep);
+		WARN_ON_ONCE(ret);
 	}
 }
 
 static void dwc3_gadget_disconnect_interrupt(struct dwc3 *dwc)
 {
-	int reg;
+	int			reg;
+
+	dwc3_gadget_set_link_state(dwc, DWC3_LINK_STATE_RX_DET);
 
 	reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 	reg &= ~DWC3_DCTL_INITU1ENA;
-	dwc3_writel(dwc->regs, DWC3_DCTL, reg);
-
 	reg &= ~DWC3_DCTL_INITU2ENA;
-	dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+	dwc3_gadget_dctl_write_safe(dwc, reg);
+
+	dwc->connected = false;
 
 	dwc3_disconnect_gadget(dwc);
 
-	dwc->gadget.speed = USB_SPEED_UNKNOWN;
+	dwc->gadget->speed = USB_SPEED_UNKNOWN;
 	dwc->setup_packet_pending = false;
-	usb_gadget_set_state(&dwc->gadget, USB_STATE_NOTATTACHED);
+	usb_gadget_set_state(dwc->gadget, USB_STATE_NOTATTACHED);
 
-	dwc->connected = false;
+	if (dwc->ep0state != EP0_SETUP_PHASE) {
+		unsigned int    dir;
+
+		dir = !!dwc->ep0_expect_in;
+		if (dwc->ep0state == EP0_DATA_PHASE)
+			dwc3_ep0_end_control_data(dwc, dwc->eps[dir]);
+		else
+			dwc3_ep0_end_control_data(dwc, dwc->eps[!dir]);
+		dwc3_ep0_stall_and_restart(dwc);
+	}
 }
 
 static void dwc3_gadget_reset_interrupt(struct dwc3 *dwc)
 {
-	u32 reg;
+	u32			reg;
 
-	dwc->connected = true;
+	/*
+	 * Ideally, dwc3_reset_gadget() would trigger the function
+	 * drivers to stop any active transfers through ep disable.
+	 * However, for functions which defer ep disable, such as mass
+	 * storage, we will need to rely on the call to stop active
+	 * transfers here, and avoid allowing of request queuing.
+	 */
+	dwc->connected = false;
 
 	/*
 	 * WORKAROUND: DWC3 revisions <1.88a have an issue which
@@ -2546,16 +3629,45 @@ static void dwc3_gadget_reset_interrupt(struct dwc3 *dwc)
 	 * STAR#9000466709: RTL: Device : Disconnect event not
 	 * generated if setup packet pending in FIFO
 	 */
-	if (dwc->revision < DWC3_REVISION_188A) {
+	if (DWC3_VER_IS_PRIOR(DWC3, 188A)) {
 		if (dwc->setup_packet_pending)
 			dwc3_gadget_disconnect_interrupt(dwc);
 	}
 
 	dwc3_reset_gadget(dwc);
 
+	/*
+	 * From SNPS databook section 8.1.2, the EP0 should be in setup
+	 * phase. So ensure that EP0 is in setup phase by issuing a stall
+	 * and restart if EP0 is not in setup phase.
+	 */
+	if (dwc->ep0state != EP0_SETUP_PHASE) {
+		unsigned int	dir;
+
+		dir = !!dwc->ep0_expect_in;
+		if (dwc->ep0state == EP0_DATA_PHASE)
+			dwc3_ep0_end_control_data(dwc, dwc->eps[dir]);
+		else
+			dwc3_ep0_end_control_data(dwc, dwc->eps[!dir]);
+
+		dwc->eps[0]->trb_enqueue = 0;
+		dwc->eps[1]->trb_enqueue = 0;
+
+		dwc3_ep0_stall_and_restart(dwc);
+	}
+
+	/*
+	 * In the Synopsis DesignWare Cores USB3 Databook Rev. 3.30a
+	 * Section 4.1.2 Table 4-2, it states that during a USB reset, the SW
+	 * needs to ensure that it sends "a DEPENDXFER command for any active
+	 * transfers."
+	 */
+	dwc3_stop_active_transfers(dwc);
+	dwc->connected = true;
+
 	reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 	reg &= ~DWC3_DCTL_TSTCTRL_MASK;
-	dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+	dwc3_gadget_dctl_write_safe(dwc, reg);
 	dwc->test_mode = false;
 	dwc3_clear_stall_all_ep(dwc);
 
@@ -2567,22 +3679,45 @@ static void dwc3_gadget_reset_interrupt(struct dwc3 *dwc)
 
 static void dwc3_gadget_conndone_interrupt(struct dwc3 *dwc)
 {
-	struct dwc3_ep *dep;
-	int ret;
-	u32 reg;
-	u8 speed;
+	struct dwc3_ep		*dep;
+	int			ret;
+	u32			reg;
+	u8			lanes = 1;
+	u8			speed;
+
+	if (!dwc->softconnect)
+		return;
 
 	reg = dwc3_readl(dwc->regs, DWC3_DSTS);
 	speed = reg & DWC3_DSTS_CONNECTSPD;
 	dwc->speed = speed;
 
+	if (DWC3_IP_IS(DWC32))
+		lanes = DWC3_DSTS_CONNLANES(reg) + 1;
+
+	dwc->gadget->ssp_rate = USB_SSP_GEN_UNKNOWN;
+
+	/*
+	 * RAMClkSel is reset to 0 after USB reset, so it must be reprogrammed
+	 * each time on Connect Done.
+	 *
+	 * Currently we always use the reset value. If any platform
+	 * wants to set this to a different value, we need to add a
+	 * setting and update GCTL.RAMCLKSEL here.
+	 */
+
 	switch (speed) {
 	case DWC3_DSTS_SUPERSPEED_PLUS:
 		dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(512);
-		dwc->gadget.ep0->maxpacket = 512;
-		dwc->gadget.speed = USB_SPEED_SUPER_PLUS;
+		dwc->gadget->ep0->maxpacket = 512;
+		dwc->gadget->speed = USB_SPEED_SUPER_PLUS;
+
+		if (lanes > 1)
+			dwc->gadget->ssp_rate = USB_SSP_GEN_2x2;
+		else
+			dwc->gadget->ssp_rate = USB_SSP_GEN_2x1;
 		break;
-	case DWC3_DCFG_SUPERSPEED:
+	case DWC3_DSTS_SUPERSPEED:
 		/*
 		 * WORKAROUND: DWC3 revisions <1.90a have an issue which
 		 * would cause a missing USB3 Reset event.
@@ -2596,36 +3731,36 @@ static void dwc3_gadget_conndone_interrupt(struct dwc3 *dwc)
 		 * STAR#9000483510: RTL: SS : USB3 reset event may
 		 * not be generated always when the link enters poll
 		 */
-		if (dwc->revision < DWC3_REVISION_190A)
+		if (DWC3_VER_IS_PRIOR(DWC3, 190A))
 			dwc3_gadget_reset_interrupt(dwc);
 
 		dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(512);
-		dwc->gadget.ep0->maxpacket = 512;
-		dwc->gadget.speed = USB_SPEED_SUPER;
+		dwc->gadget->ep0->maxpacket = 512;
+		dwc->gadget->speed = USB_SPEED_SUPER;
+
+		if (lanes > 1) {
+			dwc->gadget->speed = USB_SPEED_SUPER_PLUS;
+			dwc->gadget->ssp_rate = USB_SSP_GEN_1x2;
+		}
 		break;
-	case DWC3_DCFG_HIGHSPEED:
+	case DWC3_DSTS_HIGHSPEED:
 		dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(64);
-		dwc->gadget.ep0->maxpacket = 64;
-		dwc->gadget.speed = USB_SPEED_HIGH;
+		dwc->gadget->ep0->maxpacket = 64;
+		dwc->gadget->speed = USB_SPEED_HIGH;
 		break;
-	case DWC3_DCFG_FULLSPEED:
-	case DWC3_DCFG_FULLSPEED1:
+	case DWC3_DSTS_FULLSPEED:
 		dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(64);
-		dwc->gadget.ep0->maxpacket = 64;
-		dwc->gadget.speed = USB_SPEED_FULL;
-		break;
-	case DWC3_DCFG_LOWSPEED:
-		dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(8);
-		dwc->gadget.ep0->maxpacket = 8;
-		dwc->gadget.speed = USB_SPEED_LOW;
+		dwc->gadget->ep0->maxpacket = 64;
+		dwc->gadget->speed = USB_SPEED_FULL;
 		break;
 	}
 
-	dwc->eps[1]->endpoint.maxpacket = dwc->gadget.ep0->maxpacket;
+	dwc->eps[1]->endpoint.maxpacket = dwc->gadget->ep0->maxpacket;
 
 	/* Enable USB2 LPM Capability */
 
-	if ((dwc->revision > DWC3_REVISION_194A) &&
+	if (!DWC3_VER_IS_WITHIN(DWC3, ANY, 194A) &&
+	    !dwc->usb2_gadget_lpm_disable &&
 	    (speed != DWC3_DSTS_SUPERSPEED) &&
 	    (speed != DWC3_DSTS_SUPERSPEED_PLUS)) {
 		reg = dwc3_readl(dwc->regs, DWC3_DCFG);
@@ -2635,7 +3770,8 @@ static void dwc3_gadget_conndone_interrupt(struct dwc3 *dwc)
 		reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 		reg &= ~(DWC3_DCTL_HIRD_THRES_MASK | DWC3_DCTL_L1_HIBER_EN);
 
-		reg |= DWC3_DCTL_HIRD_THRES(dwc->hird_threshold);
+		reg |= DWC3_DCTL_HIRD_THRES(dwc->hird_threshold |
+					    (dwc->is_utmi_l1_suspend << 4));
 
 		/*
 		 * When dwc3 revisions >= 2.40a, LPM Erratum is enabled and
@@ -2643,17 +3779,23 @@ static void dwc3_gadget_conndone_interrupt(struct dwc3 *dwc)
 		 * BESL value in the LPM token is less than or equal to LPM
 		 * NYET threshold.
 		 */
-		if (dwc->revision < DWC3_REVISION_240A && dwc->has_lpm_erratum)
-			WARN(true, "LPM Erratum not available on dwc3 revisisions < 2.40a\n");
+		WARN_ONCE(DWC3_VER_IS_PRIOR(DWC3, 240A) && dwc->has_lpm_erratum,
+				"LPM Erratum not available on dwc3 revisions < 2.40a\n");
 
-		if (dwc->has_lpm_erratum && dwc->revision >= DWC3_REVISION_240A)
-			reg |= DWC3_DCTL_LPM_ERRATA(dwc->lpm_nyet_threshold);
+		if (dwc->has_lpm_erratum && !DWC3_VER_IS_PRIOR(DWC3, 240A))
+			reg |= DWC3_DCTL_NYET_THRES(dwc->lpm_nyet_threshold);
 
-		dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+		dwc3_gadget_dctl_write_safe(dwc, reg);
 	} else {
+		if (dwc->usb2_gadget_lpm_disable) {
+			reg = dwc3_readl(dwc->regs, DWC3_DCFG);
+			reg &= ~DWC3_DCFG_LPM_CAP;
+			dwc3_writel(dwc->regs, DWC3_DCFG, reg);
+		}
+
 		reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 		reg &= ~DWC3_DCTL_HIRD_THRES_MASK;
-		dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+		dwc3_gadget_dctl_write_safe(dwc, reg);
 	}
 
 	dep = dwc->eps[0];
@@ -2686,15 +3828,18 @@ static void dwc3_gadget_wakeup_interrupt(struct dwc3 *dwc)
 	 * implemented.
 	 */
 
-	if (dwc->gadget_driver && dwc->gadget_driver->resume)
-		dwc->gadget_driver->resume(&dwc->gadget);
+	if (dwc->async_callbacks && dwc->gadget_driver->resume) {
+		spin_unlock(&dwc->lock);
+		dwc->gadget_driver->resume(dwc->gadget);
+		spin_lock(&dwc->lock);
+	}
 }
 
 static void dwc3_gadget_linksts_change_interrupt(struct dwc3 *dwc,
-						 unsigned int evtinfo)
+		unsigned int evtinfo)
 {
-	enum dwc3_link_state next = evtinfo & DWC3_LINK_STATE_MASK;
-	unsigned int pwropt;
+	enum dwc3_link_state	next = evtinfo & DWC3_LINK_STATE_MASK;
+	unsigned int		pwropt;
 
 	/*
 	 * WORKAROUND: DWC3 < 2.50a have an issue when configured without
@@ -2714,11 +3859,10 @@ static void dwc3_gadget_linksts_change_interrupt(struct dwc3 *dwc,
 	 * operational mode
 	 */
 	pwropt = DWC3_GHWPARAMS1_EN_PWROPT(dwc->hwparams.hwparams1);
-	if ((dwc->revision < DWC3_REVISION_250A) &&
-	    (pwropt != DWC3_GHWPARAMS1_EN_PWROPT_HIB)) {
+	if (DWC3_VER_IS_PRIOR(DWC3, 250A) &&
+			(pwropt != DWC3_GHWPARAMS1_EN_PWROPT_HIB)) {
 		if ((dwc->link_state == DWC3_LINK_STATE_U3) &&
-		    (next == DWC3_LINK_STATE_RESUME)) {
-			dev_dbg(dwc->dev, "ignoring transition U3 -> Resume\n");
+				(next == DWC3_LINK_STATE_RESUME)) {
 			return;
 		}
 	}
@@ -2741,10 +3885,10 @@ static void dwc3_gadget_linksts_change_interrupt(struct dwc3 *dwc,
 	 * STAR#9000446952: RTL: Device SS : if U1/U2 ->U0 takes >128us
 	 * core send LGO_Ux entering U0
 	 */
-	if (dwc->revision < DWC3_REVISION_183A) {
+	if (DWC3_VER_IS_PRIOR(DWC3, 183A)) {
 		if (next == DWC3_LINK_STATE_U0) {
-			u32 u1u2;
-			u32 reg;
+			u32	u1u2;
+			u32	reg;
 
 			switch (dwc->link_state) {
 			case DWC3_LINK_STATE_U1:
@@ -2760,7 +3904,7 @@ static void dwc3_gadget_linksts_change_interrupt(struct dwc3 *dwc,
 
 				reg &= ~u1u2;
 
-				dwc3_writel(dwc->regs, DWC3_DCTL, reg);
+				dwc3_gadget_dctl_write_safe(dwc, reg);
 				break;
 			default:
 				/* do nothing */
@@ -2776,7 +3920,7 @@ static void dwc3_gadget_linksts_change_interrupt(struct dwc3 *dwc,
 		break;
 	case DWC3_LINK_STATE_U2:
 	case DWC3_LINK_STATE_U3:
-		//dwc3_suspend_gadget(dwc);
+		dwc3_suspend_gadget(dwc);
 		break;
 	case DWC3_LINK_STATE_RESUME:
 		dwc3_resume_gadget(dwc);
@@ -2801,12 +3945,12 @@ static void dwc3_gadget_suspend_interrupt(struct dwc3 *dwc,
 }
 
 static void dwc3_gadget_hibernation_interrupt(struct dwc3 *dwc,
-					      unsigned int evtinfo)
+		unsigned int evtinfo)
 {
-	unsigned int is_ss = evtinfo & (1UL << 4);
+	unsigned int is_ss = evtinfo & BIT(4);
 
-	/**
-	 * WORKAROUND: DWC3 revison 2.20a with hibernation support
+	/*
+	 * WORKAROUND: DWC3 revision 2.20a with hibernation support
 	 * have a known issue which can cause USB CV TD.9.23 to fail
 	 * randomly.
 	 *
@@ -2825,9 +3969,8 @@ static void dwc3_gadget_hibernation_interrupt(struct dwc3 *dwc,
 }
 
 static void dwc3_gadget_interrupt(struct dwc3 *dwc,
-				  const struct dwc3_event_devt *event)
+		const struct dwc3_event_devt *event)
 {
-
 	switch (event->type) {
 	case DWC3_DEVICE_EVENT_DISCONNECT:
 		dwc3_gadget_disconnect_interrupt(dwc);
@@ -2842,96 +3985,154 @@ static void dwc3_gadget_interrupt(struct dwc3 *dwc,
 		dwc3_gadget_wakeup_interrupt(dwc);
 		break;
 	case DWC3_DEVICE_EVENT_HIBER_REQ:
-		if (!dwc->has_hibernation) {
-			WARN(1 ,"unexpected hibernation event\n");
+		if (dev_WARN_ONCE(dwc->dev, !dwc->has_hibernation,
+					"unexpected hibernation event\n"))
 			break;
-		}
+
 		dwc3_gadget_hibernation_interrupt(dwc, event->event_info);
 		break;
 	case DWC3_DEVICE_EVENT_LINK_STATUS_CHANGE:
 		dwc3_gadget_linksts_change_interrupt(dwc, event->event_info);
 		break;
-	case DWC3_DEVICE_EVENT_EOPF:
-		dev_dbg(dwc->dev, "End of Periodic Frame\n");
+	case DWC3_DEVICE_EVENT_SUSPEND:
 		/* It changed to be suspend event for version 2.30a and above */
-		if (dwc->revision >= DWC3_REVISION_230A) {
+		if (!DWC3_VER_IS_PRIOR(DWC3, 230A)) {
 			/*
 			 * Ignore suspend event until the gadget enters into
 			 * USB_STATE_CONFIGURED state.
 			 */
-			if (dwc->gadget.state >= USB_STATE_CONFIGURED)
+			if (dwc->gadget->state >= USB_STATE_CONFIGURED)
 				dwc3_gadget_suspend_interrupt(dwc,
 						event->event_info);
 		}
 		break;
 	case DWC3_DEVICE_EVENT_SOF:
-		dev_dbg(dwc->dev, "Start of Periodic Frame\n");
-		break;
 	case DWC3_DEVICE_EVENT_ERRATIC_ERROR:
-		dev_dbg(dwc->dev, "Erratic Error\n");
-		break;
 	case DWC3_DEVICE_EVENT_CMD_CMPL:
-		dev_dbg(dwc->dev, "Command Complete\n");
-		break;
 	case DWC3_DEVICE_EVENT_OVERFLOW:
-		dev_dbg(dwc->dev, "Overflow\n");
 		break;
 	default:
-		dev_dbg(dwc->dev, "UNKNOWN IRQ %d\n", event->type);
+		dev_warn(dwc->dev, "UNKNOWN IRQ %d\n", event->type);
 	}
 }
 
 static void dwc3_process_event_entry(struct dwc3 *dwc,
-				     const union dwc3_event *event)
+		const union dwc3_event *event)
 {
 	if (!event->type.is_devspec)
 		dwc3_endpoint_interrupt(dwc, &event->depevt);
 	else if (event->type.type == DWC3_EVENT_TYPE_DEV)
 		dwc3_gadget_interrupt(dwc, &event->devt);
+	else
+		dev_err(dwc->dev, "UNKNOWN IRQ type %d\n", event->raw);
 }
 
-static void dwc3_gadget_poll(struct usb_gadget * g)
+static irqreturn_t dwc3_process_event_buf(struct dwc3_event_buffer *evt)
 {
-	struct dwc3 *dwc = gadget_to_dwc(g);
-	struct dwc3_event_buffer *evt = dwc->ev_buf;
+	struct dwc3 *dwc = evt->dwc;
+	irqreturn_t ret = IRQ_NONE;
+	int left;
+
+	left = evt->count;
+
+	if (!(evt->flags & DWC3_EVENT_PENDING))
+		return IRQ_NONE;
+
+	while (left > 0) {
+		union dwc3_event event;
+
+		event.raw = *(u32 *) (evt->cache + evt->lpos);
+
+		dwc3_process_event_entry(dwc, &event);
+
+		/*
+		 * FIXME we wrap around correctly to the next entry as
+		 * almost all entries are 4 bytes in size. There is one
+		 * entry which has 12 bytes which is a regular entry
+		 * followed by 8 bytes data. ATM I don't know how
+		 * things are organized if we get next to the a
+		 * boundary so I worry about that once we try to handle
+		 * that.
+		 */
+		evt->lpos = (evt->lpos + 4) % evt->length;
+		left -= 4;
+	}
+
+	evt->count = 0;
+	ret = IRQ_HANDLED;
+
+	/* Unmask interrupt */
+	dwc3_writel(dwc->regs, DWC3_GEVNTSIZ(0),
+		    DWC3_GEVNTSIZ_SIZE(evt->length));
+
+	if (dwc->imod_interval) {
+		dwc3_writel(dwc->regs, DWC3_GEVNTCOUNT(0), DWC3_GEVNTCOUNT_EHB);
+		dwc3_writel(dwc->regs, DWC3_DEV_IMOD(0), dwc->imod_interval);
+	}
+
+	/* Keep the clearing of DWC3_EVENT_PENDING at the end */
+	evt->flags &= ~DWC3_EVENT_PENDING;
+
+	return ret;
+}
+
+static irqreturn_t dwc3_check_event_buf(struct dwc3_event_buffer *evt)
+{
+	struct dwc3 *dwc = evt->dwc;
 	u32 amount;
 	u32 count;
-	void *buf;
-	int pos = 0;
+
+	/*
+	 * With PCIe legacy interrupt, test shows that top-half irq handler can
+	 * be called again after HW interrupt deassertion. Check if bottom-half
+	 * irq event handler completes before caching new event to prevent
+	 * losing events.
+	 */
+	if (evt->flags & DWC3_EVENT_PENDING)
+		return IRQ_HANDLED;
 
 	count = dwc3_readl(dwc->regs, DWC3_GEVNTCOUNT(0));
 	count &= DWC3_GEVNTCOUNT_MASK;
 	if (!count)
-		return;
+		return IRQ_NONE;
 
-	buf = xzalloc(count);
+	evt->count = count;
+	evt->flags |= DWC3_EVENT_PENDING;
+
+	/* Mask interrupt */
+	dwc3_writel(dwc->regs, DWC3_GEVNTSIZ(0),
+		    DWC3_GEVNTSIZ_INTMASK | DWC3_GEVNTSIZ_SIZE(evt->length));
 
 	amount = min(count, evt->length - evt->lpos);
-	memcpy_fromio(buf, evt->buf + evt->lpos, amount);
+	memcpy_fromio(evt->cache + evt->lpos, evt->buf + evt->lpos, amount);
 
 	if (amount < count)
-		memcpy_fromio(buf + amount, evt->buf, count - amount);
-
-	evt->lpos = (evt->lpos + count) % evt->length;
+		memcpy_fromio(evt->cache, evt->buf, count - amount);
 
 	dwc3_writel(dwc->regs, DWC3_GEVNTCOUNT(0), count);
 
-	while (count > 0) {
-		union dwc3_event event;
+	dwc3_process_event_buf(evt);
 
-		event.raw = *(u32 *)(buf + pos);
+	return IRQ_HANDLED;
+}
 
-		dwc3_process_event_entry(dwc, &event);
+static void dwc3_gadget_poll(struct usb_gadget *g)
+{
+	struct dwc3 *dwc = gadget_to_dwc(g);
+	struct dwc3_event_buffer *evt = dwc->ev_buf;
 
-		count -= 4;
-		pos += 4;
-	}
+	dwc3_check_event_buf(evt);
+}
 
-	free(buf);
+static void dwc_gadget_release(struct device *dev)
+{
+	struct usb_gadget *gadget = container_of(dev, struct usb_gadget, dev);
+
+	kfree(gadget);
 }
 
 /**
- * dwc3_gadget_init - Initializes gadget related registers
+ * dwc3_gadget_init - initializes gadget related registers
  * @dwc: pointer to our controller context structure
  *
  * Returns 0 on success otherwise negative errno.
@@ -2939,46 +4140,69 @@ static void dwc3_gadget_poll(struct usb_gadget * g)
 int dwc3_gadget_init(struct dwc3 *dwc)
 {
 	int ret;
+	struct device *dev;
 
 	dwc->ep0_trb = dma_alloc_coherent(sizeof(*dwc->ep0_trb) * 2,
-					 &dwc->ep0_trb_addr);
+					  &dwc->ep0_trb_addr);
 	if (!dwc->ep0_trb) {
 		dev_err(dwc->dev, "failed to allocate ep0 trb\n");
 		ret = -ENOMEM;
-		goto err1;
+		goto err0;
 	}
 
-	dwc->setup_buf = xzalloc(DWC3_EP0_SETUP_SIZE);
+	dwc->setup_buf = kzalloc(DWC3_EP0_SETUP_SIZE, GFP_KERNEL);
 	if (!dwc->setup_buf) {
 		ret = -ENOMEM;
-		goto err2;
+		goto err1;
 	}
 
-	dwc->bounce = dma_alloc_coherent(DWC3_BOUNCE_SIZE,
-					&dwc->bounce_addr);
+	dwc->bounce = dma_alloc_coherent(DWC3_BOUNCE_SIZE, &dwc->bounce_addr);
 	if (!dwc->bounce) {
-		dev_err(dwc->dev, "failed to allocate ep0 bounce buffer\n");
+		ret = -ENOMEM;
+		goto err2;
+	}
+
+	init_completion(&dwc->ep0_in_setup);
+	dwc->gadget = kzalloc(sizeof(struct usb_gadget), GFP_KERNEL);
+	if (!dwc->gadget) {
 		ret = -ENOMEM;
 		goto err3;
 	}
 
-	dwc->gadget.ops	= &dwc3_gadget_ops;
-	dwc->gadget.max_speed	= USB_SPEED_SUPER;
-	dwc->gadget.speed	= USB_SPEED_UNKNOWN;
-	dwc->gadget.name	= "dwc3-gadget";
+
+	usb_initialize_gadget(dwc->dev, dwc->gadget, dwc_gadget_release);
+	dev				= &dwc->gadget->dev;
+	dev->platform_data		= dwc;
+	dwc->gadget->ops		= &dwc3_gadget_ops;
+	dwc->gadget->speed		= USB_SPEED_UNKNOWN;
+	dwc->gadget->ssp_rate		= USB_SSP_GEN_UNKNOWN;
+	dwc->gadget->sg_supported	= true;
+	dwc->gadget->name		= "dwc3-gadget";
+	dwc->gadget->lpm_capable	= !dwc->usb2_gadget_lpm_disable;
 
 	/*
-	 * Per databook, DWC3 needs buffer size to be aligned to MaxPacketSize
-	 * on ep out.
+	 * FIXME We might be setting max_speed to <SUPER, however versions
+	 * <2.20a of dwc3 have an issue with metastability (documented
+	 * elsewhere in this driver) which tells us we can't set max speed to
+	 * anything lower than SUPER.
+	 *
+	 * Because gadget.max_speed is only used by composite.c and function
+	 * drivers (i.e. it won't go into dwc3's registers) we are allowing this
+	 * to happen so we avoid sending SuperSpeed Capability descriptor
+	 * together with our BOS descriptor as that could confuse host into
+	 * thinking we can handle super speed.
+	 *
+	 * Note that, in fact, we won't even support GetBOS requests when speed
+	 * is less than super speed because we don't have means, yet, to tell
+	 * composite.c that we are USB 2.0 + LPM ECN.
 	 */
-	dwc->gadget.quirk_ep_out_aligned_size = true;
-
-	if (dwc->revision < DWC3_REVISION_220A &&
+	if (DWC3_VER_IS_PRIOR(DWC3, 220A) &&
 	    !dwc->dis_metastability_quirk)
 		dev_info(dwc->dev, "changing max_speed on rev %08x\n",
 				dwc->revision);
 
-	dwc->gadget.max_speed = dwc->maximum_speed;
+	dwc->gadget->max_speed		= dwc->maximum_speed;
+	dwc->gadget->max_ssp_rate	= dwc->max_ssp_rate;
 
 	/*
 	 * REVISIT: Here we should clear all pending IRQs to be
@@ -2989,26 +4213,47 @@ int dwc3_gadget_init(struct dwc3 *dwc)
 	if (ret)
 		goto err4;
 
-	ret = usb_add_gadget_udc((struct device *)dwc->dev, &dwc->gadget);
+	ret = usb_add_gadget(dwc->gadget);
 	if (ret) {
-		dev_err(dwc->dev, "failed to register udc\n");
-		goto err4;
+		dev_err(dwc->dev, "failed to add gadget\n");
+		goto err5;
 	}
 
-	dwc3_gadget_set_speed(dwc, dwc->maximum_speed);
+	if (DWC3_IP_IS(DWC32) && dwc->maximum_speed == USB_SPEED_SUPER_PLUS)
+		dwc3_gadget_set_ssp_rate(dwc->gadget, dwc->max_ssp_rate);
+	else
+		dwc3_gadget_set_speed(dwc->gadget, dwc->maximum_speed);
 
 	return 0;
 
-err4:
+err5:
 	dwc3_gadget_free_endpoints(dwc);
+err4:
+	usb_put_gadget(dwc->gadget);
+	dwc->gadget = NULL;
 err3:
-	dma_free_coherent(dwc->bounce, 0, DWC3_BOUNCE_SIZE);
+	dma_free_coherent(dwc->bounce, dwc->bounce_addr, DWC3_BOUNCE_SIZE);
 
 err2:
 	kfree(dwc->setup_buf);
 
 err1:
-	dma_free_coherent(dwc->ep0_trb, 0, sizeof(*dwc->ep0_trb) * 2);
+	dma_free_coherent(dwc->ep0_trb, dwc->ep0_trb_addr, sizeof(*dwc->ep0_trb) * 2);
 
+err0:
 	return ret;
 }
+
+/* -------------------------------------------------------------------------- */
+
+void dwc3_gadget_exit(struct dwc3 *dwc)
+{
+	if (!dwc->gadget)
+		return;
+
+	usb_del_gadget_udc(dwc->gadget);
+	dwc3_gadget_free_endpoints(dwc);
+	dma_free_coherent(dwc->bounce, dwc->bounce_addr, DWC3_BOUNCE_SIZE);
+	kfree(dwc->setup_buf);
+	dma_free_coherent(dwc->ep0_trb, dwc->ep0_trb_addr, sizeof(*dwc->ep0_trb) * 2);
+}
diff --git a/drivers/usb/dwc3/gadget.h b/drivers/usb/dwc3/gadget.h
index 36446b98ce..0afa10b318 100644
--- a/drivers/usb/dwc3/gadget.h
+++ b/drivers/usb/dwc3/gadget.h
@@ -1,18 +1,11 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/**
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
  * gadget.h - DesignWare USB3 DRD Gadget Header
  *
- * Copyright (C) 2015 Texas Instruments Incorporated - http://www.ti.com
+ * Copyright (C) 2010-2011 Texas Instruments Incorporated - https://www.ti.com
  *
  * Authors: Felipe Balbi <balbi@ti.com>,
  *	    Sebastian Andrzej Siewior <bigeasy@linutronix.de>
- *
- * Taken from Linux Kernel v3.19-rc1 (drivers/usb/dwc3/gadget.h) and ported
- * to uboot.
- *
- * commit 7a60855972 : usb: dwc3: gadget: fix set_halt() bug with pending
-		       transfers
- *
  */
 
 #ifndef __DRIVERS_USB_DWC3_GADGET_H
@@ -24,47 +17,59 @@
 
 struct dwc3;
 #define to_dwc3_ep(ep)		(container_of(ep, struct dwc3_ep, endpoint))
-#define gadget_to_dwc(g)	(container_of(g, struct dwc3, gadget))
+#define gadget_to_dwc(g)	(g->dev.platform_data)
 
 /* DEPCFG parameter 1 */
-#define DWC3_DEPCFG_INT_NUM(n)		((n) << 0)
-#define DWC3_DEPCFG_XFER_COMPLETE_EN	(1 << 8)
-#define DWC3_DEPCFG_XFER_IN_PROGRESS_EN (1 << 9)
-#define DWC3_DEPCFG_XFER_NOT_READY_EN	(1 << 10)
-#define DWC3_DEPCFG_FIFO_ERROR_EN	(1 << 11)
-#define DWC3_DEPCFG_STREAM_EVENT_EN	(1 << 13)
-#define DWC3_DEPCFG_BINTERVAL_M1(n)	((n) << 16)
-#define DWC3_DEPCFG_STREAM_CAPABLE	(1 << 24)
-#define DWC3_DEPCFG_EP_NUMBER(n)	((n) << 25)
-#define DWC3_DEPCFG_BULK_BASED		(1 << 30)
-#define DWC3_DEPCFG_FIFO_BASED		(1 << 31)
+#define DWC3_DEPCFG_INT_NUM(n)		(((n) & 0x1f) << 0)
+#define DWC3_DEPCFG_XFER_COMPLETE_EN	BIT(8)
+#define DWC3_DEPCFG_XFER_IN_PROGRESS_EN	BIT(9)
+#define DWC3_DEPCFG_XFER_NOT_READY_EN	BIT(10)
+#define DWC3_DEPCFG_FIFO_ERROR_EN	BIT(11)
+#define DWC3_DEPCFG_STREAM_EVENT_EN	BIT(13)
+#define DWC3_DEPCFG_BINTERVAL_M1(n)	(((n) & 0xff) << 16)
+#define DWC3_DEPCFG_STREAM_CAPABLE	BIT(24)
+#define DWC3_DEPCFG_EP_NUMBER(n)	(((n) & 0x1f) << 25)
+#define DWC3_DEPCFG_BULK_BASED		BIT(30)
+#define DWC3_DEPCFG_FIFO_BASED		BIT(31)
 
 /* DEPCFG parameter 0 */
-#define DWC3_DEPCFG_EP_TYPE(n)		((n) << 1)
-#define DWC3_DEPCFG_MAX_PACKET_SIZE(n)	((n) << 3)
-#define DWC3_DEPCFG_FIFO_NUMBER(n)	((n) << 17)
-#define DWC3_DEPCFG_BURST_SIZE(n)	((n) << 22)
+#define DWC3_DEPCFG_EP_TYPE(n)		(((n) & 0x3) << 1)
+#define DWC3_DEPCFG_MAX_PACKET_SIZE(n)	(((n) & 0x7ff) << 3)
+#define DWC3_DEPCFG_FIFO_NUMBER(n)	(((n) & 0x1f) << 17)
+#define DWC3_DEPCFG_BURST_SIZE(n)	(((n) & 0xf) << 22)
 #define DWC3_DEPCFG_DATA_SEQ_NUM(n)	((n) << 26)
 /* This applies for core versions earlier than 1.94a */
-#define DWC3_DEPCFG_IGN_SEQ_NUM	(1 << 31)
+#define DWC3_DEPCFG_IGN_SEQ_NUM		BIT(31)
 /* These apply for core versions 1.94a and later */
-#define DWC3_DEPCFG_ACTION_INIT	(0 << 30)
-#define DWC3_DEPCFG_ACTION_RESTORE	(1 << 30)
+#define DWC3_DEPCFG_ACTION_INIT		(0 << 30)
+#define DWC3_DEPCFG_ACTION_RESTORE	BIT(30)
 #define DWC3_DEPCFG_ACTION_MODIFY	(2 << 30)
 
 /* DEPXFERCFG parameter 0 */
 #define DWC3_DEPXFERCFG_NUM_XFER_RES(n)	((n) & 0xffff)
 
+/* U1 Device exit Latency */
+#define DWC3_DEFAULT_U1_DEV_EXIT_LAT	0x0A	/* Less then 10 microsec */
+
+/* U2 Device exit Latency */
+#define DWC3_DEFAULT_U2_DEV_EXIT_LAT	0x1FF	/* Less then 511 microsec */
+
+/* Frame/Microframe Number Mask */
+#define DWC3_FRNUMBER_MASK		0x3fff
 /* -------------------------------------------------------------------------- */
 
 #define to_dwc3_request(r)	(container_of(r, struct dwc3_request, request))
 
+/**
+ * next_request - gets the next request on the given list
+ * @list: the request list to operate on
+ *
+ * Caller should take care of locking. This function return %NULL or the first
+ * request available on @list.
+ */
 static inline struct dwc3_request *next_request(struct list_head *list)
 {
-	if (list_empty(list))
-		return NULL;
-
-	return list_first_entry(list, struct dwc3_request, list);
+	return list_first_entry_or_null(list, struct dwc3_request, list);
 }
 
 /**
@@ -76,7 +81,7 @@ static inline struct dwc3_request *next_request(struct list_head *list)
  */
 static inline void dwc3_gadget_move_started_request(struct dwc3_request *req)
 {
-	struct dwc3_ep *dep = req->dep;
+	struct dwc3_ep		*dep = req->dep;
 
 	req->status = DWC3_REQUEST_STATUS_STARTED;
 	list_move_tail(&req->list, &dep->started_list);
@@ -85,15 +90,17 @@ static inline void dwc3_gadget_move_started_request(struct dwc3_request *req)
 /**
  * dwc3_gadget_move_cancelled_request - move @req to the cancelled_list
  * @req: the request to be moved
+ * @reason: cancelled reason for the dwc3 request
  *
  * Caller should take care of locking. This function will move @req from its
  * current list to the endpoint's cancelled_list.
  */
-static inline void dwc3_gadget_move_cancelled_request(struct dwc3_request *req)
+static inline void dwc3_gadget_move_cancelled_request(struct dwc3_request *req,
+		unsigned int reason)
 {
-	struct dwc3_ep *dep = req->dep;
+	struct dwc3_ep		*dep = req->dep;
 
-	req->status = DWC3_REQUEST_STATUS_CANCELLED;
+	req->status = reason;
 	list_move_tail(&req->list, &dep->cancelled_list);
 }
 
@@ -103,11 +110,14 @@ void dwc3_gadget_giveback(struct dwc3_ep *dep, struct dwc3_request *req,
 void dwc3_ep0_interrupt(struct dwc3 *dwc,
 		const struct dwc3_event_depevt *event);
 void dwc3_ep0_out_start(struct dwc3 *dwc);
+void dwc3_ep0_end_control_data(struct dwc3 *dwc, struct dwc3_ep *dep);
+void dwc3_ep0_stall_and_restart(struct dwc3 *dwc);
 int __dwc3_gadget_ep0_set_halt(struct usb_ep *ep, int value);
 int dwc3_gadget_ep0_set_halt(struct usb_ep *ep, int value);
 int dwc3_gadget_ep0_queue(struct usb_ep *ep, struct usb_request *request);
 int __dwc3_gadget_ep_set_halt(struct dwc3_ep *dep, int value, int protocol);
-void dwc3_gadget_handle_interrupt(struct dwc3 *dwc);
+void dwc3_ep0_send_delayed_status(struct dwc3 *dwc);
+void dwc3_stop_active_transfer(struct dwc3_ep *dep, bool force, bool interrupt);
 
 /**
  * dwc3_gadget_ep_get_transfer_index - Gets transfer index from HW
@@ -118,10 +128,24 @@ void dwc3_gadget_handle_interrupt(struct dwc3 *dwc);
  */
 static inline void dwc3_gadget_ep_get_transfer_index(struct dwc3_ep *dep)
 {
-	u32 res_id;
+	u32			res_id;
 
 	res_id = dwc3_readl(dep->regs, DWC3_DEPCMD);
 	dep->resource_index = DWC3_DEPCMD_GET_RSC_IDX(res_id);
 }
 
+/**
+ * dwc3_gadget_dctl_write_safe - write to DCTL safe from link state change
+ * @dwc: pointer to our context structure
+ * @value: value to write to DCTL
+ *
+ * Use this function when doing read-modify-write to DCTL. It will not
+ * send link state change request.
+ */
+static inline void dwc3_gadget_dctl_write_safe(struct dwc3 *dwc, u32 value)
+{
+	value &= ~DWC3_DCTL_ULSTCHNGREQ_MASK;
+	dwc3_writel(dwc->regs, DWC3_DCTL, value);
+}
+
 #endif /* __DRIVERS_USB_DWC3_GADGET_H */
diff --git a/drivers/usb/dwc3/host.c b/drivers/usb/dwc3/host.c
index a3a27db6fb..e377c4068a 100644
--- a/drivers/usb/dwc3/host.c
+++ b/drivers/usb/dwc3/host.c
@@ -34,3 +34,7 @@ int dwc3_host_init(struct dwc3 *dwc)
 	
 	return 0;
 }
+
+void dwc3_host_exit(struct dwc3 *dwc)
+{
+}
-- 
2.30.2



