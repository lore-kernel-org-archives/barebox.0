Delivery-date: Mon, 31 Jan 2022 09:04:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERgB-001U43-Ry
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 09:04:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERg9-00079Z-Cn
	for lore@pengutronix.de; Mon, 31 Jan 2022 09:04:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6c1gxeMa9s5/mr4hGNiTiYR8Hy3pHvvF8HNeQHuVmM=; b=UkIU3y2xgKZFJ7
	zyoAi/OqysAHTCeHF53CXEVT2gesRPuvQxWmzVqBxy5w887gGLocAVNAxqHfvcFN8W6HuXS7SitdV
	8u/qXHa/VdKtwsXbH4yzneYsmSMJQu3qajcr8or+gJk28TwguYkeg08pqtpqBt9HU+z+ea7LuZCGW
	pY0UEWz8omadWHZMSSiCOSChmyceO5sL4N6zqKmFJTux0afnvdVF7WdxDd6PXJoaXZsf9RtSMzMGm
	bVBYYsdc2i1Wjsf02NiRUSR/iqA1eLVQCdKxnk24ebmkwNzZvfHtyu0fCElZJ7bI8fVcz9PUv1ytH
	sTZSdl+K9Dz9Mfcvx4UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nERej-008OOg-TR; Mon, 31 Jan 2022 08:03:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nEReV-008OKJ-9w
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 08:03:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nEReU-0006lp-0P; Mon, 31 Jan 2022 09:03:06 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nEReT-007riL-GW; Mon, 31 Jan 2022 09:03:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 31 Jan 2022 09:03:00 +0100
Message-Id: <20220131080302.1873443-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220131080302.1873443-1-a.fatoum@pengutronix.de>
References: <20220131080302.1873443-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220131_000307_764367_D146A09F 
X-CRM114-Status: GOOD (  27.64  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] video: add driver for STM32 LCD-TFT Display Controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This driver has been tested on a STM32F429 connected to an Ilitek 9341
Display for which support is added in a follow-up commit. The same
driver can be used (but wasn't tested in its current form) for the
STM32MP1 as well. The official ST evaluation kits all use MIPI-DSI
for which we still lack support. The LXA MC-1 has a parallel display
connected to the LTDC, but I didn't have one readily available to test.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/Kconfig      |   8 +
 drivers/video/Makefile     |   1 +
 drivers/video/stm32_ltdc.c | 336 +++++++++++++++++++++++++++++++++++++
 drivers/video/stm32_ltdc.h | 130 ++++++++++++++
 4 files changed, 475 insertions(+)
 create mode 100644 drivers/video/stm32_ltdc.c
 create mode 100644 drivers/video/stm32_ltdc.h

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index cfbd541a956e..1b8672fdea82 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -59,6 +59,14 @@ config DRIVER_VIDEO_STM
 	  Say 'Y' here to enable framebuffer and splash screen support for
 	  i.MX23 and i.MX28 based systems.
 
+config DRIVER_VIDEO_STM32_LTDC
+	bool "STM32 LTDC framebuffer driver"
+	select VIDEO_VPL
+	depends on ARCH_STM32 || COMPILE_TEST
+	help
+	  Say 'Y' here to enable framebuffer and splash screen support for
+	  STM32 and STM32MP1.
+
 config DRIVER_VIDEO_S3C24XX
 	bool "S3C244x framebuffer driver"
 	depends on ARCH_S3C24xx
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 8344bdd2af2a..7f4429278987 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_DRIVER_VIDEO_SIMPLE_PANEL) += simple-panel.o
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL) += atmel_lcdfb.o atmel_lcdfb_core.o
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL_HLCD) += atmel_hlcdfb.o atmel_lcdfb_core.o
 obj-$(CONFIG_DRIVER_VIDEO_STM) += stm.o
+obj-$(CONFIG_DRIVER_VIDEO_STM32_LTDC) += stm32_ltdc.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX) += imx.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
 obj-$(CONFIG_DRIVER_VIDEO_S3C24XX) += s3c24xx.o
diff --git a/drivers/video/stm32_ltdc.c b/drivers/video/stm32_ltdc.c
new file mode 100644
index 000000000000..645c20b5545f
--- /dev/null
+++ b/drivers/video/stm32_ltdc.c
@@ -0,0 +1,336 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2017-2018 STMicroelectronics - All Rights Reserved
+ * Author(s): Philippe Cornu <philippe.cornu@st.com> for STMicroelectronics.
+ *	      Yannick Fertre <yannick.fertre@st.com> for STMicroelectronics.
+ *	      Ahmad Fatoum <a.fatoum@pengutronix.de>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/clk.h>
+#include <linux/reset.h>
+#include <io.h>
+#include <fb.h>
+#include <dma.h>
+#include <video/media-bus-format.h>
+#include <video/vpl.h>
+#include <of_graph.h>
+
+#include "stm32_ltdc.h"
+
+struct ltdc_hw {
+	void __iomem *regs;
+	struct device_d *dev;
+	struct clk *pclk;
+	bool claimed;
+};
+
+struct ltdc_fb {
+	int id;
+	struct fb_info info;
+	u32 bg_col_argb;
+	u32 alpha;
+	u32 bus_format;
+	enum stm32_ltdc_pixfmt pixfmt;
+	struct vpl vpl;
+	struct ltdc_hw *hw;
+};
+
+static bool has_alpha(enum stm32_ltdc_pixfmt pixfmt)
+{
+	switch (pixfmt) {
+	case PF_ARGB8888:
+	case PF_ARGB1555:
+	case PF_ARGB4444:
+	case PF_AL44:
+	case PF_AL88:
+		return true;
+	case PF_RGB888:
+	case PF_RGB565:
+	case PF_L8:
+	default:
+		return false;
+	}
+}
+
+static void ltdc_set_mode(struct ltdc_fb *priv,
+			  struct fb_videomode *mode)
+{
+	void __iomem *regs = priv->hw->regs;
+	u32 hsync, vsync, acc_hbp, acc_vbp, acc_act_w, acc_act_h;
+	u32 total_w, total_h;
+	u32 val;
+
+	/* Convert video timings to ltdc timings */
+	hsync = mode->hsync_len - 1;
+	vsync = mode->vsync_len - 1;
+	acc_hbp = hsync + mode->left_margin;
+	acc_vbp = vsync + mode->upper_margin;
+	acc_act_w = acc_hbp + mode->xres;
+	acc_act_h = acc_vbp + mode->yres;
+	total_w = acc_act_w + mode->right_margin;
+	total_h = acc_act_h + mode->lower_margin;
+
+	/* Synchronization sizes */
+	val = (hsync << 16) | vsync;
+	clrsetbits_le32(regs + LTDC_SSCR, SSCR_VSH | SSCR_HSW, val);
+
+	/* Accumulated back porch */
+	val = (acc_hbp << 16) | acc_vbp;
+	clrsetbits_le32(regs + LTDC_BPCR, BPCR_AVBP | BPCR_AHBP, val);
+
+	/* Accumulated active width */
+	val = (acc_act_w << 16) | acc_act_h;
+	clrsetbits_le32(regs + LTDC_AWCR, AWCR_AAW | AWCR_AAH, val);
+
+	/* Total width & height */
+	val = (total_w << 16) | total_h;
+	clrsetbits_le32(regs + LTDC_TWCR, TWCR_TOTALH | TWCR_TOTALW, val);
+
+	setbits_le32(regs + LTDC_LIPCR, acc_act_h + 1);
+
+	/* Signal polarities */
+	val = 0;
+	dev_dbg(priv->hw->dev, "mode->display_flags 0x%x mode->sync 0x%x\n",
+		mode->display_flags, mode->sync);
+	if (mode->sync & FB_SYNC_HOR_HIGH_ACT)
+		val |= GCR_HSPOL;
+	if (mode->sync & FB_SYNC_VERT_HIGH_ACT)
+		val |= GCR_VSPOL;
+	if (mode->display_flags & DISPLAY_FLAGS_DE_HIGH)
+		val |= GCR_DEPOL;
+	if (mode->display_flags & DISPLAY_FLAGS_PIXDATA_NEGEDGE)
+		val |= GCR_PCPOL;
+
+	clrsetbits_le32(regs + LTDC_GCR,
+			GCR_HSPOL | GCR_VSPOL | GCR_DEPOL | GCR_PCPOL, val);
+
+	/* Overall background color */
+	writel(priv->bg_col_argb, regs + LTDC_BCCR);
+}
+
+static void ltdc_set_layer1(struct ltdc_fb *priv)
+{
+	void __iomem *regs = priv->hw->regs;
+	u32 x0, x1, y0, y1;
+	u32 pitch_in_bytes;
+	u32 line_length;
+	u32 bus_width;
+	u32 val, tmp, bpp;
+	struct fb_videomode *mode = priv->info.mode;
+
+	x0 = y0 = 0;
+	x1 = mode->xres - 1;
+	y1 = mode->yres - 1;
+
+	/* Horizontal start and stop position */
+	tmp = (readl(regs + LTDC_BPCR) & BPCR_AHBP) >> 16;
+	val = ((x1 + 1 + tmp) << 16) + (x0 + 1 + tmp);
+	clrsetbits_le32(regs + LTDC_L1WHPCR, LXWHPCR_WHSTPOS | LXWHPCR_WHSPPOS,
+			val);
+
+	/* Vertical start & stop position */
+	tmp = readl(regs + LTDC_BPCR) & BPCR_AVBP;
+	val = ((y1 + 1 + tmp) << 16) + (y0 + 1 + tmp);
+	clrsetbits_le32(regs + LTDC_L1WVPCR, LXWVPCR_WVSTPOS | LXWVPCR_WVSPPOS,
+			val);
+
+	/* Layer background color */
+	writel(priv->bg_col_argb, regs + LTDC_L1DCCR);
+
+	/* Color frame buffer pitch in bytes & line length */
+	bpp = priv->info.bits_per_pixel;
+	pitch_in_bytes = mode->xres * (bpp >> 3);
+	bus_width = 8 << ((readl(regs + LTDC_GC2R) & GC2R_BW) >> 4);
+	line_length = ((bpp >> 3) * mode->xres) + (bus_width >> 3) - 1;
+	val = (pitch_in_bytes << 16) | line_length;
+	clrsetbits_le32(regs + LTDC_L1CFBLR, LXCFBLR_CFBLL | LXCFBLR_CFBP, val);
+
+	/* Pixel format */
+	clrsetbits_le32(regs + LTDC_L1PFCR, LXPFCR_PF, priv->pixfmt);
+
+	/* Constant alpha value */
+	clrsetbits_le32(regs + LTDC_L1CACR, LXCACR_CONSTA, priv->alpha);
+
+	/* Specifies the blending factors : with or without pixel alpha */
+	/* Manage hw-specific capabilities */
+	val = has_alpha(priv->pixfmt) ? BF1_PAXCA | BF2_1PAXCA : BF1_CA | BF2_1CA;
+
+	/* Blending factors */
+	clrsetbits_le32(regs + LTDC_L1BFCR, LXBFCR_BF2 | LXBFCR_BF1, val);
+
+	/* Frame buffer line number */
+	clrsetbits_le32(regs + LTDC_L1CFBLNR, LXCFBLNR_CFBLN, mode->yres);
+
+	/* Frame buffer address */
+	writel((unsigned long)priv->info.screen_base, regs + LTDC_L1CFBAR);
+
+	/* Enable layer 1 */
+	setbits_le32(regs + LTDC_L1CR, LXCR_LEN);
+}
+
+static int ltdc_activate_var(struct fb_info *info)
+{
+	info->line_length = info->xres * (info->bits_per_pixel >> 3);
+
+	info->screen_base = dma_alloc_writecombine(info->line_length * info->yres,
+						   DMA_ADDRESS_BROKEN);
+	if (!info->screen_base)
+		return -ENOMEM;
+
+	return 0;
+}
+
+static void ltdc_enable(struct fb_info *info)
+{
+	struct fb_videomode *mode = info->mode;
+	struct ltdc_fb *priv = info->priv;
+	struct ltdc_hw *hw = priv->hw;
+	u32 pixclock;
+	int ret;
+
+	if (hw->claimed) {
+		dev_warn(hw->dev, "CRTC currently claimed by other frame buffer!\n");
+		return;
+	}
+
+	vpl_ioctl_prepare(&priv->vpl, priv->id, mode);
+
+	pixclock = PICOS2KHZ(mode->pixclock) * 1000;
+
+	ret = clk_enable(hw->pclk);
+	if (ret) {
+		dev_err(hw->dev, "peripheral clock enable error %d\n", ret);
+		return;
+	}
+
+	clk_set_rate(clk_get_parent(hw->pclk), pixclock);
+	if (!ret)
+		ret = clk_set_rate(hw->pclk, pixclock);
+	if (ret < 0) {
+		dev_err(hw->dev, "fail to set pixel clock %d hz: %d\n",
+			pixclock, ret);
+		return;
+	}
+
+	ret = device_reset_us(hw->dev, 100000);
+	if (ret) {
+		dev_err(hw->dev, "error resetting controller %d\n", ret);
+		return;
+	}
+
+	/* Configure & start LTDC */
+	ltdc_set_mode(priv, mode);
+	ltdc_set_layer1(priv);
+
+	/* Reload configuration immediately & enable LTDC */
+	setbits_le32(hw->regs + LTDC_SRCR, SRCR_IMR);
+	setbits_le32(hw->regs + LTDC_GCR, GCR_LTDCEN);
+
+	vpl_ioctl_enable(&priv->vpl, priv->id);
+
+	hw->claimed = true;
+}
+
+static void ltdc_disable(struct fb_info *info)
+{
+	struct ltdc_fb *priv = info->priv;
+
+	vpl_ioctl_disable(&priv->vpl, priv->id);
+
+	clrbits_le32(priv->hw->regs + LTDC_GCR, GCR_LTDCEN);
+	clk_disable(priv->hw->pclk);
+	priv->hw->claimed = false;
+
+	vpl_ioctl_unprepare(&priv->vpl, priv->id);
+}
+
+static struct fb_ops ltdc_ops = {
+	.fb_activate_var	= ltdc_activate_var,
+	.fb_enable		= ltdc_enable,
+	.fb_disable		= ltdc_disable,
+};
+
+static int ltdc_probe(struct device_d *dev)
+{
+	struct device_node *np;
+	struct resource *iores;
+	struct ltdc_hw *hw;
+	int ret;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	hw = xzalloc(sizeof *hw);
+	hw->dev = dev;
+	hw->regs = IOMEM(iores->start);
+
+	hw->pclk = clk_get(dev, NULL);
+	if (IS_ERR(hw->pclk)) {
+		dev_err(dev, "peripheral clock get error %d\n", ret);
+		return PTR_ERR(hw->pclk);
+	}
+
+	for_each_available_child_of_node(dev->device_node, np) {
+		struct ltdc_fb *priv;
+		struct of_endpoint ep;
+		struct fb_info *info;
+
+		if (!of_graph_port_is_available(np))
+			continue;
+
+		ret = of_graph_parse_endpoint(np, &ep);
+		if (ret)
+			return ret;
+
+		dev_dbg(hw->dev, "register vpl for %s\n", np->full_name);
+
+		priv = xzalloc(sizeof(*priv));
+		priv->hw = hw;
+		priv->id = ep.id;
+		priv->vpl.node = dev->device_node;
+
+		ret = vpl_register(&priv->vpl);
+		if (ret)
+			return ret;
+
+		info = &priv->info;
+		info->priv = priv;
+		info->fbops = &ltdc_ops;
+
+		info->red	= (struct fb_bitfield){ .offset = 11, .length = 5, };
+		info->green	= (struct fb_bitfield){ .offset =  5, .length = 6, };
+		info->blue	= (struct fb_bitfield){ .offset =  0, .length = 5, };
+		info->bits_per_pixel = 16,
+		priv->pixfmt = PF_RGB565;
+		/* TODO Below parameters are hard-coded for the moment... */
+		priv->bg_col_argb = 0xFFFFFFFF; /* white no transparency */
+		priv->alpha = 0xFF;
+
+		ret = vpl_ioctl(&priv->vpl, priv->id, VPL_GET_VIDEOMODES, &info->modes);
+		if (ret)
+			dev_dbg(dev, "failed to get modes: %s\n", strerror(-ret));
+
+		ret = register_framebuffer(info);
+		if (ret < 0) {
+			dev_err(dev, "failed to register framebuffer\n");
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id ltdc_ids[] = {
+	{ .compatible = "st,stm32-ltdc" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d ltdc_driver = {
+	.name = "stm32-ltdc",
+	.probe = ltdc_probe,
+	.of_compatible = DRV_OF_COMPAT(ltdc_ids),
+};
+device_platform_driver(ltdc_driver);
diff --git a/drivers/video/stm32_ltdc.h b/drivers/video/stm32_ltdc.h
new file mode 100644
index 000000000000..6481f2613b95
--- /dev/null
+++ b/drivers/video/stm32_ltdc.h
@@ -0,0 +1,130 @@
+#ifndef STM32_LTDC_H__
+#define STM32_LTDC_H__
+
+/* LTDC main registers */
+#define LTDC_IDR	0x00	/* IDentification */
+#define LTDC_LCR	0x04	/* Layer Count */
+#define LTDC_SSCR	0x08	/* Synchronization Size Configuration */
+#define LTDC_BPCR	0x0C	/* Back Porch Configuration */
+#define LTDC_AWCR	0x10	/* Active Width Configuration */
+#define LTDC_TWCR	0x14	/* Total Width Configuration */
+#define LTDC_GCR	0x18	/* Global Control */
+#define LTDC_GC1R	0x1C	/* Global Configuration 1 */
+#define LTDC_GC2R	0x20	/* Global Configuration 2 */
+#define LTDC_SRCR	0x24	/* Shadow Reload Configuration */
+#define LTDC_GACR	0x28	/* GAmma Correction */
+#define LTDC_BCCR	0x2C	/* Background Color Configuration */
+#define LTDC_IER	0x34	/* Interrupt Enable */
+#define LTDC_ISR	0x38	/* Interrupt Status */
+#define LTDC_ICR	0x3C	/* Interrupt Clear */
+#define LTDC_LIPCR	0x40	/* Line Interrupt Position Conf. */
+#define LTDC_CPSR	0x44	/* Current Position Status */
+#define LTDC_CDSR	0x48	/* Current Display Status */
+
+/* LTDC layer 1 registers */
+#define LTDC_L1LC1R	0x80	/* L1 Layer Configuration 1 */
+#define LTDC_L1LC2R	0x84	/* L1 Layer Configuration 2 */
+#define LTDC_L1CR	0x84	/* L1 Control */
+#define LTDC_L1WHPCR	0x88	/* L1 Window Hor Position Config */
+#define LTDC_L1WVPCR	0x8C	/* L1 Window Vert Position Config */
+#define LTDC_L1CKCR	0x90	/* L1 Color Keying Configuration */
+#define LTDC_L1PFCR	0x94	/* L1 Pixel Format Configuration */
+#define LTDC_L1CACR	0x98	/* L1 Constant Alpha Config */
+#define LTDC_L1DCCR	0x9C	/* L1 Default Color Configuration */
+#define LTDC_L1BFCR	0xA0	/* L1 Blend Factors Configuration */
+#define LTDC_L1FBBCR	0xA4	/* L1 FrameBuffer Bus Control */
+#define LTDC_L1AFBCR	0xA8	/* L1 AuxFB Control */
+#define LTDC_L1CFBAR	0xAC	/* L1 Color FrameBuffer Address */
+#define LTDC_L1CFBLR	0xB0	/* L1 Color FrameBuffer Length */
+#define LTDC_L1CFBLNR	0xB4	/* L1 Color FrameBuffer Line Nb */
+#define LTDC_L1AFBAR	0xB8	/* L1 AuxFB Address */
+#define LTDC_L1AFBLR	0xBC	/* L1 AuxFB Length */
+#define LTDC_L1AFBLNR	0xC0	/* L1 AuxFB Line Number */
+#define LTDC_L1CLUTWR	0xC4	/* L1 CLUT Write */
+
+/* Bit definitions */
+#define SSCR_VSH	GENMASK(10, 0)	/* Vertical Synchronization Height */
+#define SSCR_HSW	GENMASK(27, 16)	/* Horizontal Synchronization Width */
+
+#define BPCR_AVBP	GENMASK(10, 0)	/* Accumulated Vertical Back Porch */
+#define BPCR_AHBP	GENMASK(27, 16)	/* Accumulated Horizontal Back Porch */
+
+#define AWCR_AAH	GENMASK(10, 0)	/* Accumulated Active Height */
+#define AWCR_AAW	GENMASK(27, 16)	/* Accumulated Active Width */
+
+#define TWCR_TOTALH	GENMASK(10, 0)	/* TOTAL Height */
+#define TWCR_TOTALW	GENMASK(27, 16)	/* TOTAL Width */
+
+#define GCR_LTDCEN	BIT(0)		/* LTDC ENable */
+#define GCR_DEN		BIT(16)		/* Dither ENable */
+#define GCR_PCPOL	BIT(28)		/* Pixel Clock POLarity-Inverted */
+#define GCR_DEPOL	BIT(29)		/* Data Enable POLarity-High */
+#define GCR_VSPOL	BIT(30)		/* Vertical Synchro POLarity-High */
+#define GCR_HSPOL	BIT(31)		/* Horizontal Synchro POLarity-High */
+
+#define GC1R_WBCH	GENMASK(3, 0)	/* Width of Blue CHannel output */
+#define GC1R_WGCH	GENMASK(7, 4)	/* Width of Green Channel output */
+#define GC1R_WRCH	GENMASK(11, 8)	/* Width of Red Channel output */
+#define GC1R_PBEN	BIT(12)		/* Precise Blending ENable */
+#define GC1R_DT		GENMASK(15, 14)	/* Dithering Technique */
+#define GC1R_GCT	GENMASK(19, 17)	/* Gamma Correction Technique */
+#define GC1R_SHREN	BIT(21)		/* SHadow Registers ENabled */
+#define GC1R_BCP	BIT(22)		/* Background Colour Programmable */
+#define GC1R_BBEN	BIT(23)		/* Background Blending ENabled */
+#define GC1R_LNIP	BIT(24)		/* Line Number IRQ Position */
+#define GC1R_TP		BIT(25)		/* Timing Programmable */
+#define GC1R_IPP	BIT(26)		/* IRQ Polarity Programmable */
+#define GC1R_SPP	BIT(27)		/* Sync Polarity Programmable */
+#define GC1R_DWP	BIT(28)		/* Dither Width Programmable */
+#define GC1R_STREN	BIT(29)		/* STatus Registers ENabled */
+#define GC1R_BMEN	BIT(31)		/* Blind Mode ENabled */
+
+#define GC2R_EDCA	BIT(0)		/* External Display Control Ability  */
+#define GC2R_STSAEN	BIT(1)		/* Slave Timing Sync Ability ENabled */
+#define GC2R_DVAEN	BIT(2)		/* Dual-View Ability ENabled */
+#define GC2R_DPAEN	BIT(3)		/* Dual-Port Ability ENabled */
+#define GC2R_BW		GENMASK(6, 4)	/* Bus Width (log2 of nb of bytes) */
+#define GC2R_EDCEN	BIT(7)		/* External Display Control ENabled */
+
+#define SRCR_IMR	BIT(0)		/* IMmediate Reload */
+#define SRCR_VBR	BIT(1)		/* Vertical Blanking Reload */
+
+#define LXCR_LEN	BIT(0)		/* Layer ENable */
+#define LXCR_COLKEN	BIT(1)		/* Color Keying Enable */
+#define LXCR_CLUTEN	BIT(4)		/* Color Look-Up Table ENable */
+
+#define LXWHPCR_WHSTPOS	GENMASK(11, 0)	/* Window Horizontal StarT POSition */
+#define LXWHPCR_WHSPPOS	GENMASK(27, 16)	/* Window Horizontal StoP POSition */
+
+#define LXWVPCR_WVSTPOS	GENMASK(10, 0)	/* Window Vertical StarT POSition */
+#define LXWVPCR_WVSPPOS	GENMASK(26, 16)	/* Window Vertical StoP POSition */
+
+#define LXPFCR_PF	GENMASK(2, 0)	/* Pixel Format */
+
+#define LXCACR_CONSTA	GENMASK(7, 0)	/* CONSTant Alpha */
+
+#define LXBFCR_BF2	GENMASK(2, 0)	/* Blending Factor 2 */
+#define LXBFCR_BF1	GENMASK(10, 8)	/* Blending Factor 1 */
+
+#define LXCFBLR_CFBLL	GENMASK(12, 0)	/* Color Frame Buffer Line Length */
+#define LXCFBLR_CFBP	GENMASK(28, 16)	/* Color Frame Buffer Pitch in bytes */
+
+#define LXCFBLNR_CFBLN	GENMASK(10, 0)	/* Color Frame Buffer Line Number */
+
+#define BF1_PAXCA	0x600		/* Pixel Alpha x Constant Alpha */
+#define BF1_CA		0x400		/* Constant Alpha */
+#define BF2_1PAXCA	0x007		/* 1 - (Pixel Alpha x Constant Alpha) */
+#define BF2_1CA		0x005		/* 1 - Constant Alpha */
+
+enum stm32_ltdc_pixfmt {
+	PF_ARGB8888 = 0,
+	PF_RGB888,
+	PF_RGB565,
+	PF_ARGB1555,
+	PF_ARGB4444,
+	PF_L8,
+	PF_AL44,
+	PF_AL88
+};
+
+#endif
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

