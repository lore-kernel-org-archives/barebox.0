Delivery-date: Thu, 13 Nov 2025 09:56:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJT7g-000U1R-1v
	for lore@lore.pengutronix.de;
	Thu, 13 Nov 2025 09:56:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJT7e-0001pP-K1
	for lore@pengutronix.de; Thu, 13 Nov 2025 09:56:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gb/rr18I+mINw1kg6MgZOyLLIsEx4PFfrrl5Y5KP4zY=; b=G/s0v0FNONA5jv
	yoIzWYgxjKRqKIfX0fgVklnZQHri2k0SqbiTQxpcaFaPz7nZjsLbnxmhc3fJA+1e/b/Ek7rAym82Z
	/40BV9jh3U/iAjNEOHn4WuobnLkIAIjF0GWVJFA6p0Va4yFrSWzWzu2qGs3/Z1faozl369zw9Wj6F
	U8C779EHyv/eAeWW6zsIOan7/vMIz+KrvUab9a8zyn/sqZMMzS8GI55swREMz6+dUw0rLnnx20spO
	cufHt9a7yQRYMS9xfMyVvYN3OnmbQtAx7uNpKpHp+iQ7D0wQKKKMCUSEp1XxzcuIkpSL7sQEYjujd
	c8rEwDV0RBAr1JS/ZXJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJT6z-0000000A90E-37wd;
	Thu, 13 Nov 2025 08:55:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJT6x-0000000A8zo-0WRd
	for barebox@lists.infradead.org;
	Thu, 13 Nov 2025 08:55:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vJT6u-0001gB-5g; Thu, 13 Nov 2025 09:55:20 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vJT6t-000E0b-3B;
	Thu, 13 Nov 2025 09:55:19 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vJT6t-0000000AaBh-3ssQ;
	Thu, 13 Nov 2025 09:55:19 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 13 Nov 2025 09:55:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251113-imx-lcdif-v1-1-8c4b6e2cc444@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAPKcFWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQ0Nj3czcCt2c5JTMNN1Uc0tD01TLNIPUFAMloPqCotS0zAqwWdGxtbU
 AixPX9VsAAAA=
X-Change-ID: 20251113-imx-lcdif-e7915e9f0ed0
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=31706;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=aQle43hkuLS9l817e5A+da1lA0NiQayiQes3JqKid0Y=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBpFZz3Eka7e0V610I3od8r1z+ZIrtq7jzZUwtA8
 YelOyiP4gaJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaRWc9wAKCRC/aVhE+XH0
 q2m4EACcTbMYI13izH45bmNhk9IR3JA8iFWn2Kfh7yHYv126PVfzFmxPFFkhprWtSQ0DHiL4747
 ZpymB/iTl1KefVpygMwl6EKrKk6Fn2c8F6L7930tet7AVBfQ3YRWLcpo9J8y9T1L78nlJrZm3Tz
 R375wUBPl7sDELvgkbFk5e7jEOAk2ITs33WMkSlnzBkUYQfp0GqZKtpVbnJBM5+1+IlA4yDM4gO
 yOfx1YDD561NNfY1wT68+5fe0gI7MTjBEfkRnKZKirpmiPPYjw0MNjcn9CdK22LZC88n/GjZCoq
 2SQ2VdR8aGpnqvFIm2cPwALnGw5oBVP0q2y/vQUDGf6zKhzkLYBTMECC1T2Vq2AjJDRL/VFwAGP
 Bsj69+s5/e/f5mVT3JIoQJzCxWxjuV8XdNvWAWRjgsLgLZYjUx88FMGwkoLkJHdXhBFH2Qqn+MS
 5tovkSl5sjHRD47XPsb8VXGlpxcawgUquP5NkMzyoZig33uO46JbPYx7U2rVRLU+2xC/hN3i9xc
 YkHrIdcZsqLaC6WxPaWCMFn1GG4i5/MVCMfcS508JJKbiwf5oT/fFtOMK5HdxerWIljHtvcPE5Y
 dwA+AO0MseHQL9RxIvz4aWIW4h3uxhpjg0pXOLW9qQnlu7zav8Vpg3x+KQVw6XHoRoZOvGGHPbt
 xhyiHCRGyrrkVYQ==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_005523_495413_236C03A7 
X-CRM114-Status: GOOD (  26.80  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] video: lcdif_drv: add ported driver from linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch is adding support for the for the LCDIFv3 LCD controller
found on i.MX8MP and i.MX93 SoCs.

It is currently supporting DRM_FORMAT_XRGB8888 media_bus format for now.

While porting from linux mainline the following changes were made:

- limited parallel support to DRM_FORMAT_XBGR8888
- added support for MEDIA_BUS_FMT_RGB888_1X24 bus_format
- when converting yuv to rgb mode only support limited range BT.601
- also support PARA_LINE_PATTERN for BGR888 on MEDIA_BUS_FMT_RGB888_1X24
- added an initial flush on atomic_enable

This was tested on i.MX93.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/video/Kconfig      |   7 +
 drivers/video/Makefile     |   1 +
 drivers/video/lcdif_drv.c  |  74 +++++++
 drivers/video/lcdif_drv.h  |  39 ++++
 drivers/video/lcdif_kms.c  | 495 +++++++++++++++++++++++++++++++++++++++++++++
 drivers/video/lcdif_regs.h | 266 ++++++++++++++++++++++++
 6 files changed, 882 insertions(+)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index b2eccd5db7fe05999f3fe64db214fb569b3fb1df..739eb721253351ff0ab028aca094e5f1e4bcf487 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -52,6 +52,13 @@ config DRIVER_VIDEO_IMX_IPU_OVERLAY
 	bool "i.MX31/35 framebuffer overlay support"
 	depends on DRIVER_VIDEO_IMX_IPU && (ARCH_IMX35 || ARCH_IMX31)
 
+config DRIVER_VIDEO_LCDIF
+	bool "i.MX9 framebuffer driver"
+	depends on ARCH_IMX9 || ARCH_IMX93
+	help
+	  Add support for the LCDIFv3 LCD controller found on
+	  i.MX8MP and i.MX93 SoCs.
+
 config DRIVER_VIDEO_STM
 	bool "i.MX23/28 framebuffer driver"
 	depends on ARCH_MXS
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 470a5abaa450b6477b7cf5a78b2a747f9a3ec743..e4f3f2a88561c230ffbe2b708fa24d23420c84d5 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -24,6 +24,7 @@ obj-$(CONFIG_DRIVER_VIDEO_STM32_LTDC) += stm32_ltdc.o
 obj-$(CONFIG_DRIVER_VIDEO_STM32_DSI) += stm32_dsi.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX) += imx.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
+obj-$(CONFIG_DRIVER_VIDEO_LCDIF) += lcdif_drv.o lcdif_kms.o
 obj-$(CONFIG_DRIVER_VIDEO_PXA) += pxa.o
 obj-$(CONFIG_DRIVER_VIDEO_SDL) += sdl.o
 obj-$(CONFIG_DRIVER_VIDEO_BCM283X) += bcm2835.o
diff --git a/drivers/video/lcdif_drv.c b/drivers/video/lcdif_drv.c
new file mode 100644
index 0000000000000000000000000000000000000000..c89f4c197f7d9cce6df1885743fe50ad78e57547
--- /dev/null
+++ b/drivers/video/lcdif_drv.c
@@ -0,0 +1,74 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2022 Marek Vasut <marex@denx.de>
+ *
+ * This code is based on drivers/gpu/drm/mxsfb/mxsfb*
+ */
+
+#include <linux/clk.h>
+#include <dma.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/kernel.h>
+
+#include <video/videomode.h>
+
+#include "lcdif_drv.h"
+#include "lcdif_regs.h"
+
+#include <fb.h>
+#include <video/vpl.h>
+
+static int lcdif_probe(struct device *dev)
+{
+	struct lcdif_drm_private *lcdif;
+	struct resource *res;
+	int ret;
+
+	lcdif = xzalloc(sizeof(*lcdif));
+	if (!lcdif)
+		return -ENOMEM;
+
+	lcdif->dev = dev;
+
+	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	lcdif->base = IOMEM(res->start);
+	if (IS_ERR(lcdif->base))
+		return PTR_ERR(lcdif->base);
+
+	lcdif->clk = clk_get(lcdif->dev, "pix");
+	if (IS_ERR(lcdif->clk))
+		return PTR_ERR(lcdif->clk);
+
+	lcdif->clk_axi = clk_get(lcdif->dev, "axi");
+	if (IS_ERR(lcdif->clk_axi))
+		return PTR_ERR(lcdif->clk_axi);
+
+	lcdif->clk_disp_axi = clk_get(lcdif->dev, "disp_axi");
+	if (IS_ERR(lcdif->clk_disp_axi))
+		return PTR_ERR(lcdif->clk_disp_axi);
+
+	ret = lcdif_kms_init(lcdif);
+	if (ret < 0) {
+		dev_err(lcdif->dev, "Failed to initialize KMS pipeline\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static const struct of_device_id lcdif_dt_ids[] = {
+	{ .compatible = "fsl,imx8mp-lcdif" },
+	{ .compatible = "fsl,imx93-lcdif" },
+	{ /* sentinel */ }
+};
+
+static struct driver lcdif_platform_driver = {
+	.probe		= lcdif_probe,
+	.name		= "imx-lcdif",
+	.of_compatible	= lcdif_dt_ids,
+};
+device_platform_driver(lcdif_platform_driver);
diff --git a/drivers/video/lcdif_drv.h b/drivers/video/lcdif_drv.h
new file mode 100644
index 0000000000000000000000000000000000000000..991ba273ccf59b921a5c10d6ccd5d9bfe2db7504
--- /dev/null
+++ b/drivers/video/lcdif_drv.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2022 Marek Vasut <marex@denx.de>
+ *
+ * i.MX8MP/i.MXRT LCDIFv3 LCD controller driver.
+ */
+
+#ifndef __LCDIF_DRV_H__
+#define __LCDIF_DRV_H__
+
+#include <video/vpl.h>
+
+struct clk;
+
+struct lcdif_drm_private {
+	void __iomem			*base;	/* registers */
+
+	int				id;
+
+	u32				line_length;
+	u32				max_yres;
+	int				crtc_endpoint_id;
+	struct device_node		*port;
+	struct fb_info			info;
+
+	dma_addr_t			paddr;
+
+	struct clk			*clk;
+	struct clk			*clk_axi;
+	struct clk			*clk_disp_axi;
+
+	struct device			*dev;
+	struct vpl			vpl;
+	struct fb_videomode		*mode;
+};
+
+int lcdif_kms_init(struct lcdif_drm_private *lcdif);
+
+#endif /* __LCDIF_DRV_H__ */
diff --git a/drivers/video/lcdif_kms.c b/drivers/video/lcdif_kms.c
new file mode 100644
index 0000000000000000000000000000000000000000..033df231869a61df19f0cd60dbee0124aeec45bc
--- /dev/null
+++ b/drivers/video/lcdif_kms.c
@@ -0,0 +1,495 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2022 Marek Vasut <marex@denx.de>
+ *
+ * This code is based on drivers/gpu/drm/mxsfb/mxsfb*
+ */
+
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/iopoll.h>
+#include <linux/kernel.h>
+#include <video/media-bus-format.h>
+
+#include <video/drm/drm_connector.h>
+#include <of_graph.h>
+#include <fb.h>
+#include <dma.h>
+
+#include <video/vpl.h>
+#include <video/videomode.h>
+
+#include <video/fourcc.h>
+
+#include "lcdif_drv.h"
+#include "lcdif_regs.h"
+
+struct lcdif_crtc_state {
+	u32			bus_format;
+	u32			bus_flags;
+};
+
+static void lcdif_set_formats(struct lcdif_drm_private *lcdif,
+			      const u32 format,
+			      const u32 bus_format)
+{
+	bool in_yuv = false;
+	bool out_yuv = false;
+
+	switch (bus_format) {
+	case MEDIA_BUS_FMT_RGB565_1X16:
+		writel(DISP_PARA_LINE_PATTERN_RGB565,
+		       lcdif->base + LCDC_V8_DISP_PARA);
+		break;
+	case MEDIA_BUS_FMT_BGR888_1X24:
+		writel(DISP_PARA_LINE_PATTERN_BGR888,
+		       lcdif->base + LCDC_V8_DISP_PARA);
+		break;
+	case MEDIA_BUS_FMT_RGB888_1X24:
+		writel(DISP_PARA_LINE_PATTERN_RGB888,
+		       lcdif->base + LCDC_V8_DISP_PARA);
+		break;
+	case MEDIA_BUS_FMT_UYVY8_1X16:
+		writel(DISP_PARA_LINE_PATTERN_UYVY_H,
+		       lcdif->base + LCDC_V8_DISP_PARA);
+		out_yuv = true;
+		break;
+	default:
+		dev_err(lcdif->dev, "Unknown media bus format 0x%x\n", bus_format);
+		break;
+	}
+
+	switch (format) {
+	/* RGB Formats */
+	case DRM_FORMAT_RGB565:
+		writel(CTRLDESCL0_5_BPP_16_RGB565,
+		       lcdif->base + LCDC_V8_CTRLDESCL0_5);
+		break;
+	case DRM_FORMAT_RGB888:
+		writel(CTRLDESCL0_5_BPP_24_RGB888,
+		       lcdif->base + LCDC_V8_CTRLDESCL0_5);
+		break;
+	case DRM_FORMAT_XRGB1555:
+		writel(CTRLDESCL0_5_BPP_16_ARGB1555,
+		       lcdif->base + LCDC_V8_CTRLDESCL0_5);
+		break;
+	case DRM_FORMAT_XRGB4444:
+		writel(CTRLDESCL0_5_BPP_16_ARGB4444,
+		       lcdif->base + LCDC_V8_CTRLDESCL0_5);
+		break;
+	case DRM_FORMAT_XBGR8888:
+		writel(CTRLDESCL0_5_BPP_32_ABGR8888,
+		       lcdif->base + LCDC_V8_CTRLDESCL0_5);
+		break;
+	case DRM_FORMAT_XRGB8888:
+		writel(CTRLDESCL0_5_BPP_32_ARGB8888,
+		       lcdif->base + LCDC_V8_CTRLDESCL0_5);
+		break;
+
+	/* YUV Formats */
+	case DRM_FORMAT_YUYV:
+		writel(CTRLDESCL0_5_BPP_YCbCr422 | CTRLDESCL0_5_YUV_FORMAT_VY2UY1,
+		       lcdif->base + LCDC_V8_CTRLDESCL0_5);
+		in_yuv = true;
+		break;
+	case DRM_FORMAT_YVYU:
+		writel(CTRLDESCL0_5_BPP_YCbCr422 | CTRLDESCL0_5_YUV_FORMAT_UY2VY1,
+		       lcdif->base + LCDC_V8_CTRLDESCL0_5);
+		in_yuv = true;
+		break;
+	case DRM_FORMAT_UYVY:
+		writel(CTRLDESCL0_5_BPP_YCbCr422 | CTRLDESCL0_5_YUV_FORMAT_Y2VY1U,
+		       lcdif->base + LCDC_V8_CTRLDESCL0_5);
+		in_yuv = true;
+		break;
+	case DRM_FORMAT_VYUY:
+		writel(CTRLDESCL0_5_BPP_YCbCr422 | CTRLDESCL0_5_YUV_FORMAT_Y2UY1V,
+		       lcdif->base + LCDC_V8_CTRLDESCL0_5);
+		in_yuv = true;
+		break;
+
+	default:
+		dev_err(lcdif->dev, "Unknown pixel format 0x%x\n", format);
+		break;
+	}
+
+	/*
+	 * The CSC differentiates between "YCbCr" and "YUV", but the reference
+	 * manual doesn't detail how they differ. Experiments showed that the
+	 * luminance value is unaffected, only the calculations involving chroma
+	 * values differ. The YCbCr mode behaves as expected, with chroma values
+	 * being offset by 128. The YUV mode isn't fully understood.
+	 */
+	if (!in_yuv && out_yuv) {
+		/* RGB -> YCbCr */
+		writel(CSC0_CTRL_CSC_MODE_RGB2YCbCr,
+		       lcdif->base + LCDC_V8_CSC0_CTRL);
+
+		/*
+		 * CSC: BT.601 Limited Range RGB to YCbCr coefficients.
+		 *
+		 * |Y |   | 0.2568  0.5041  0.0979|   |R|   |16 |
+		 * |Cb| = |-0.1482 -0.2910  0.4392| * |G| + |128|
+		 * |Cr|   | 0.4392  0.4392 -0.3678|   |B|   |128|
+		 */
+		writel(CSC0_COEF0_A2(0x081) | CSC0_COEF0_A1(0x041),
+		       lcdif->base + LCDC_V8_CSC0_COEF0);
+		writel(CSC0_COEF1_B1(0x7db) | CSC0_COEF1_A3(0x019),
+		       lcdif->base + LCDC_V8_CSC0_COEF1);
+		writel(CSC0_COEF2_B3(0x070) | CSC0_COEF2_B2(0x7b6),
+		       lcdif->base + LCDC_V8_CSC0_COEF2);
+		writel(CSC0_COEF3_C2(0x7a2) | CSC0_COEF3_C1(0x070),
+		       lcdif->base + LCDC_V8_CSC0_COEF3);
+		writel(CSC0_COEF4_D1(0x010) | CSC0_COEF4_C3(0x7ee),
+		       lcdif->base + LCDC_V8_CSC0_COEF4);
+		writel(CSC0_COEF5_D3(0x080) | CSC0_COEF5_D2(0x080),
+		       lcdif->base + LCDC_V8_CSC0_COEF5);
+	} else if (in_yuv && !out_yuv) {
+		/* YCbCr -> RGB */
+		/*
+		 * BT.601 limited range:
+		 *
+		 * |R|	 |1.1644  0.0000  1.5960|   |Y	- 16 |
+		 * |G| = |1.1644 -0.3917 -0.8129| * |Cb - 128|
+		 * |B|	 |1.1644  2.0172  0.0000|   |Cr - 128|
+		 */
+		const u32 coeffs[6] = {
+				CSC0_COEF0_A1(0x12a) | CSC0_COEF0_A2(0x000),
+				CSC0_COEF1_A3(0x199) | CSC0_COEF1_B1(0x12a),
+				CSC0_COEF2_B2(0x79c) | CSC0_COEF2_B3(0x730),
+				CSC0_COEF3_C1(0x12a) | CSC0_COEF3_C2(0x204),
+				CSC0_COEF4_C3(0x000) | CSC0_COEF4_D1(0x1f0),
+				CSC0_COEF5_D2(0x180) | CSC0_COEF5_D3(0x180),
+			};
+
+		writel(CSC0_CTRL_CSC_MODE_YCbCr2RGB,
+		       lcdif->base + LCDC_V8_CSC0_CTRL);
+
+		writel(coeffs[0], lcdif->base + LCDC_V8_CSC0_COEF0);
+		writel(coeffs[1], lcdif->base + LCDC_V8_CSC0_COEF1);
+		writel(coeffs[2], lcdif->base + LCDC_V8_CSC0_COEF2);
+		writel(coeffs[3], lcdif->base + LCDC_V8_CSC0_COEF3);
+		writel(coeffs[4], lcdif->base + LCDC_V8_CSC0_COEF4);
+		writel(coeffs[5], lcdif->base + LCDC_V8_CSC0_COEF5);
+	} else {
+		/* RGB -> RGB, YCbCr -> YCbCr: bypass colorspace converter. */
+		writel(CSC0_CTRL_BYPASS, lcdif->base + LCDC_V8_CSC0_CTRL);
+	}
+}
+
+static void lcdif_set_mode(struct lcdif_drm_private *lcdif,
+			   struct drm_display_mode *m,
+			   u32 bus_flags)
+{
+	u32 ctrl = 0;
+
+	if (m->flags & DRM_MODE_FLAG_NHSYNC)
+		ctrl |= CTRL_INV_HS;
+	if (m->flags & DRM_MODE_FLAG_NVSYNC)
+		ctrl |= CTRL_INV_VS;
+	if (bus_flags & DRM_BUS_FLAG_DE_LOW)
+		ctrl |= CTRL_INV_DE;
+	if (bus_flags & DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE)
+		ctrl |= CTRL_INV_PXCK;
+
+	writel(ctrl, lcdif->base + LCDC_V8_CTRL);
+
+	writel(DISP_SIZE_DELTA_Y(m->vdisplay) |
+	       DISP_SIZE_DELTA_X(m->hdisplay),
+	       lcdif->base + LCDC_V8_DISP_SIZE);
+
+	writel(HSYN_PARA_BP_H(m->htotal - m->hsync_end) |
+	       HSYN_PARA_FP_H(m->hsync_start - m->hdisplay),
+	       lcdif->base + LCDC_V8_HSYN_PARA);
+
+	writel(VSYN_PARA_BP_V(m->vtotal - m->vsync_end) |
+	       VSYN_PARA_FP_V(m->vsync_start - m->vdisplay),
+	       lcdif->base + LCDC_V8_VSYN_PARA);
+
+	writel(VSYN_HSYN_WIDTH_PW_V(m->vsync_end - m->vsync_start) |
+	       VSYN_HSYN_WIDTH_PW_H(m->hsync_end - m->hsync_start),
+	       lcdif->base + LCDC_V8_VSYN_HSYN_WIDTH);
+
+	writel(CTRLDESCL0_1_HEIGHT(m->vdisplay) |
+	       CTRLDESCL0_1_WIDTH(m->hdisplay),
+	       lcdif->base + LCDC_V8_CTRLDESCL0_1);
+
+	/*
+	 * Undocumented P_SIZE and T_SIZE register but those written in the
+	 * downstream kernel those registers control the AXI burst size. As of
+	 * now there are two known values:
+	 *  1 - 128Byte
+	 *  2 - 256Byte
+	 * Downstream set it to 256B burst size to improve the memory
+	 * efficiency so set it here too.
+	 */
+	/* NOTE: Since this driver is currently fixed to DRM_FORMAT_XRGB8888
+	 * we asume a stride of vdisplay * 4
+	 */
+	ctrl = CTRLDESCL0_3_P_SIZE(2) | CTRLDESCL0_3_T_SIZE(2) |
+	       CTRLDESCL0_3_PITCH(m->hdisplay * 4);
+	writel(ctrl, lcdif->base + LCDC_V8_CTRLDESCL0_3);
+}
+
+static void lcdif_enable_controller(struct lcdif_drm_private *lcdif)
+{
+	u32 reg;
+
+	/* Set FIFO Panic watermarks, low 1/3, high 2/3 . */
+	writel(FIELD_PREP(PANIC0_THRES_LOW_MASK, 1 * PANIC0_THRES_MAX / 3) |
+	       FIELD_PREP(PANIC0_THRES_HIGH_MASK, 2 * PANIC0_THRES_MAX / 3),
+	       lcdif->base + LCDC_V8_PANIC0_THRES);
+
+	/*
+	 * Enable FIFO Panic, this does not generate interrupt, but
+	 * boosts NoC priority based on FIFO Panic watermarks.
+	 */
+	writel(INT_ENABLE_D1_PLANE_PANIC_EN,
+	       lcdif->base + LCDC_V8_INT_ENABLE_D1);
+
+	reg = readl(lcdif->base + LCDC_V8_DISP_PARA);
+	reg |= DISP_PARA_DISP_ON;
+	writel(reg, lcdif->base + LCDC_V8_DISP_PARA);
+
+	reg = readl(lcdif->base + LCDC_V8_CTRLDESCL0_5);
+	reg |= CTRLDESCL0_5_EN;
+	writel(reg, lcdif->base + LCDC_V8_CTRLDESCL0_5);
+}
+
+static void lcdif_disable_controller(struct lcdif_drm_private *lcdif)
+{
+	u32 reg;
+	int ret;
+
+	reg = readl(lcdif->base + LCDC_V8_CTRLDESCL0_5);
+	reg &= ~CTRLDESCL0_5_EN;
+	writel(reg, lcdif->base + LCDC_V8_CTRLDESCL0_5);
+
+	ret = readl_poll_timeout(lcdif->base + LCDC_V8_CTRLDESCL0_5,
+				 reg, !(reg & CTRLDESCL0_5_EN),
+				 36000);	/* Wait ~2 frame times max */
+	if (ret)
+		dev_err(lcdif->dev, "Failed to disable controller!\n");
+
+	reg = readl(lcdif->base + LCDC_V8_DISP_PARA);
+	reg &= ~DISP_PARA_DISP_ON;
+	writel(reg, lcdif->base + LCDC_V8_DISP_PARA);
+
+	/* Disable FIFO Panic NoC priority booster. */
+	writel(0, lcdif->base + LCDC_V8_INT_ENABLE_D1);
+}
+
+static void lcdif_reset_block(struct lcdif_drm_private *lcdif)
+{
+	writel(CTRL_SW_RESET, lcdif->base + LCDC_V8_CTRL + REG_SET);
+	readl(lcdif->base + LCDC_V8_CTRL);
+	writel(CTRL_SW_RESET, lcdif->base + LCDC_V8_CTRL + REG_CLR);
+	readl(lcdif->base + LCDC_V8_CTRL);
+}
+
+static void lcdif_crtc_mode_set_nofb(struct lcdif_drm_private *lcdif,
+				     struct drm_display_mode *m,
+				     struct lcdif_crtc_state *lcdif_crtc_state)
+{
+	dev_dbg(lcdif->dev, "Pixel clock: %dkHz (actual: %dkHz)\n",
+			     m->clock, (int)(clk_get_rate(lcdif->clk) / 1000));
+	dev_dbg(lcdif->dev, "Bridge bus_flags: 0x%08X\n",
+			     lcdif_crtc_state->bus_flags);
+	dev_dbg(lcdif->dev, "Mode flags: 0x%08X\n", m->flags);
+
+	/* Mandatory eLCDIF reset as per the Reference Manual */
+	lcdif_reset_block(lcdif);
+
+	/* NOTE: This driver is currently fixed to DRM_FORMAT_XRGB8888 */
+	lcdif_set_formats(lcdif, DRM_FORMAT_XRGB8888, lcdif_crtc_state->bus_format);
+
+	lcdif_set_mode(lcdif, m, lcdif_crtc_state->bus_flags);
+}
+
+static void lcdif_crtc_atomic_flush(struct fb_info *info)
+{
+	struct lcdif_drm_private *lcdif = container_of(info, struct lcdif_drm_private, info);
+	u32 reg;
+
+	reg = readl(lcdif->base + LCDC_V8_CTRLDESCL0_5);
+	reg |= CTRLDESCL0_5_SHADOW_LOAD_EN;
+	writel(reg, lcdif->base + LCDC_V8_CTRLDESCL0_5);
+}
+
+static void lcdif_crtc_atomic_enable(struct lcdif_drm_private *lcdif,
+				     struct drm_display_mode *mode,
+				     struct lcdif_crtc_state *vcstate)
+{
+	dma_addr_t paddr;
+	u32 reg;
+
+	clk_set_rate(lcdif->clk, mode->clock * 1000);
+
+	lcdif_crtc_mode_set_nofb(lcdif, mode, vcstate);
+
+	/* Write cur_buf as well to avoid an initial corrupt frame */
+	paddr = lcdif->paddr;
+	if (paddr) {
+		writel(lower_32_bits(paddr),
+		       lcdif->base + LCDC_V8_CTRLDESCL_LOW0_4);
+		writel(CTRLDESCL_HIGH0_4_ADDR_HIGH(upper_32_bits(paddr)),
+		       lcdif->base + LCDC_V8_CTRLDESCL_HIGH0_4);
+		/* initial flush of the current data */
+		reg = readl(lcdif->base + LCDC_V8_CTRLDESCL0_5);
+		reg |= CTRLDESCL0_5_SHADOW_LOAD_EN;
+		writel(reg, lcdif->base + LCDC_V8_CTRLDESCL0_5);
+	}
+	lcdif_enable_controller(lcdif);
+}
+
+static void lcdif_enable_fb_controller(struct fb_info *info)
+{
+	struct lcdif_drm_private *lcdif = container_of(info, struct lcdif_drm_private, info);
+	struct drm_display_mode mode = {};
+	struct lcdif_crtc_state vcstate = {
+		.bus_format = 0,
+		.bus_flags = 0,
+	};
+	struct drm_display_info display_info = {};
+	int ret;
+
+	if (!info->mode) {
+		dev_err(lcdif->dev, "no modes, cannot enable\n");
+		return;
+	}
+
+	fb_videomode_to_drm_display_mode(info->mode, &mode);
+
+	ret = vpl_ioctl(&lcdif->vpl, lcdif->id, VPL_GET_BUS_FORMAT, &vcstate.bus_format);
+	if (ret < 0) {
+		dev_err(lcdif->dev, "Cannot determine bus format\n");
+		return;
+	}
+
+	ret = vpl_ioctl(&lcdif->vpl, lcdif->id, VPL_GET_DISPLAY_INFO, &display_info);
+	if (ret < 0) {
+		dev_err(lcdif->dev, "Cannot get display info\n");
+		return;
+	}
+
+	vcstate.bus_flags = display_info.bus_flags;
+
+	dev_info(lcdif->dev, "vp%d: bus_format: 0x%08x bus_flags: 0x%08x\n",
+		 lcdif->id, vcstate.bus_format, display_info.bus_flags);
+
+	vpl_ioctl_prepare(&lcdif->vpl, lcdif->id, info->mode);
+
+	lcdif_crtc_atomic_enable(lcdif, &mode, &vcstate);
+
+	vpl_ioctl_enable(&lcdif->vpl, lcdif->id);
+}
+
+static void lcdif_disable_fb_controller(struct fb_info *info)
+{
+	struct lcdif_drm_private *lcdif = container_of(info, struct lcdif_drm_private, info);
+
+	lcdif_disable_controller(lcdif);
+}
+
+static struct fb_ops lcdif_fb_ops = {
+	.fb_enable = lcdif_enable_fb_controller,
+	.fb_disable = lcdif_disable_fb_controller,
+	.fb_flush = lcdif_crtc_atomic_flush,
+};
+
+/* -----------------------------------------------------------------------------
+ * Initialization
+ */
+
+static struct fb_bitfield red    = { .offset = 16, .length = 8, };
+static struct fb_bitfield green  = { .offset =  8, .length = 8, };
+static struct fb_bitfield blue   = { .offset =  0, .length = 8, };
+static struct fb_bitfield transp = { .offset = 24, .length = 8, };
+
+static int lcdif_register_fb(struct lcdif_drm_private *lcdif)
+{
+	struct fb_info *info = &lcdif->info;
+	u32 xmax = 0, ymax = 0;
+	int i, ret;
+
+	info->fbops = &lcdif_fb_ops;
+	info->bits_per_pixel = 32;
+	info->red = red;
+	info->green = green;
+	info->blue = blue;
+	info->transp = transp;
+	info->dev.parent = lcdif->dev;
+
+	ret = vpl_ioctl(&lcdif->vpl, 0, VPL_GET_VIDEOMODES, &info->modes);
+	if (ret) {
+		dev_err(lcdif->dev, "failed to get modes: %s\n", strerror(-ret));
+		return ret;
+	}
+
+	if (info->modes.num_modes) {
+		for (i = 0; i < info->modes.num_modes; i++) {
+			xmax = max(xmax, info->modes.modes[i].xres);
+			ymax = max(ymax, info->modes.modes[i].yres);
+		}
+		info->xres = info->modes.modes[info->modes.native_mode].xres;
+		info->yres = info->modes.modes[info->modes.native_mode].yres;
+	} else {
+		dev_notice(lcdif->dev, "no modes found on lcdif%d\n", lcdif->id);
+		xmax = info->xres = 640;
+		ymax = info->yres = 480;
+	}
+
+	lcdif->line_length = xmax * (info->bits_per_pixel >> 3);
+	lcdif->max_yres = ymax;
+
+	info->line_length = lcdif->line_length;
+	info->screen_base = dma_alloc_writecombine(DMA_DEVICE_BROKEN,
+				info->line_length * lcdif->max_yres,
+				&lcdif->paddr);
+
+	if (!info->screen_base)
+		return -ENOMEM;
+
+	ret = register_framebuffer(info);
+	if (ret)
+		return ret;
+
+	dev_info(lcdif->dev, "Registered %s on LCDIF%d, type primary\n",
+		 info->cdev.name, lcdif->id);
+
+	return 0;
+}
+
+int lcdif_kms_init(struct lcdif_drm_private *lcdif)
+{
+	struct device *dev;
+	struct device_node *port;
+	struct device_node *ep;
+	struct of_endpoint endpoint;
+	int ret;
+
+	dev = lcdif->dev;
+
+	port = of_graph_get_port_by_id(dev->of_node, 0);
+	if (!port) {
+		dev_err(lcdif->dev, "no port node found for video_port0\n");
+		return -ENOENT;
+	}
+
+	for_each_child_of_node(port, ep) {
+		of_graph_parse_endpoint(ep, &endpoint);
+		lcdif->crtc_endpoint_id = endpoint.id;
+	}
+
+	lcdif->port = port;
+	lcdif->vpl.node = dev->of_node;
+
+	ret = vpl_register(&lcdif->vpl);
+	if (ret)
+		return ret;
+
+	lcdif_register_fb(lcdif);
+
+	return 0;
+}
diff --git a/drivers/video/lcdif_regs.h b/drivers/video/lcdif_regs.h
new file mode 100644
index 0000000000000000000000000000000000000000..91ef697f494d580957f4ef43c0e675c4cdca92e4
--- /dev/null
+++ b/drivers/video/lcdif_regs.h
@@ -0,0 +1,266 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2022 Marek Vasut <marex@denx.de>
+ *
+ * i.MX8MP/i.MXRT LCDIF LCD controller driver.
+ */
+
+#ifndef __LCDIF_REGS_H__
+#define __LCDIF_REGS_H__
+
+#define REG_SET	4
+#define REG_CLR	8
+
+/* V8 register set */
+#define LCDC_V8_CTRL			0x00
+#define LCDC_V8_DISP_PARA		0x10
+#define LCDC_V8_DISP_SIZE		0x14
+#define LCDC_V8_HSYN_PARA		0x18
+#define LCDC_V8_VSYN_PARA		0x1c
+#define LCDC_V8_VSYN_HSYN_WIDTH		0x20
+#define LCDC_V8_INT_STATUS_D0		0x24
+#define LCDC_V8_INT_ENABLE_D0		0x28
+#define LCDC_V8_INT_STATUS_D1		0x30
+#define LCDC_V8_INT_ENABLE_D1		0x34
+#define LCDC_V8_CTRLDESCL0_1		0x200
+#define LCDC_V8_CTRLDESCL0_3		0x208
+#define LCDC_V8_CTRLDESCL_LOW0_4	0x20c
+#define LCDC_V8_CTRLDESCL_HIGH0_4	0x210
+#define LCDC_V8_CTRLDESCL0_5		0x214
+#define LCDC_V8_CSC0_CTRL		0x21c
+#define LCDC_V8_CSC0_COEF0		0x220
+#define LCDC_V8_CSC0_COEF1		0x224
+#define LCDC_V8_CSC0_COEF2		0x228
+#define LCDC_V8_CSC0_COEF3		0x22c
+#define LCDC_V8_CSC0_COEF4		0x230
+#define LCDC_V8_CSC0_COEF5		0x234
+#define LCDC_V8_PANIC0_THRES		0x238
+
+#define CTRL_SFTRST			BIT(31)
+#define CTRL_CLKGATE			BIT(30)
+#define CTRL_BYPASS_COUNT		BIT(19)
+#define CTRL_VSYNC_MODE			BIT(18)
+#define CTRL_DOTCLK_MODE		BIT(17)
+#define CTRL_DATA_SELECT		BIT(16)
+#define CTRL_BUS_WIDTH_16		(0 << 10)
+#define CTRL_BUS_WIDTH_8		(1 << 10)
+#define CTRL_BUS_WIDTH_18		(2 << 10)
+#define CTRL_BUS_WIDTH_24		(3 << 10)
+#define CTRL_BUS_WIDTH_MASK		(0x3 << 10)
+#define CTRL_WORD_LENGTH_16		(0 << 8)
+#define CTRL_WORD_LENGTH_8		(1 << 8)
+#define CTRL_WORD_LENGTH_18		(2 << 8)
+#define CTRL_WORD_LENGTH_24		(3 << 8)
+#define CTRL_MASTER			BIT(5)
+#define CTRL_DF16			BIT(3)
+#define CTRL_DF18			BIT(2)
+#define CTRL_DF24			BIT(1)
+#define CTRL_RUN			BIT(0)
+
+#define CTRL1_RECOVER_ON_UNDERFLOW	BIT(24)
+#define CTRL1_FIFO_CLEAR		BIT(21)
+#define CTRL1_SET_BYTE_PACKAGING(x)	(((x) & 0xf) << 16)
+#define CTRL1_GET_BYTE_PACKAGING(x)	(((x) >> 16) & 0xf)
+#define CTRL1_CUR_FRAME_DONE_IRQ_EN	BIT(13)
+#define CTRL1_CUR_FRAME_DONE_IRQ	BIT(9)
+
+#define CTRL2_SET_OUTSTANDING_REQS_1	0
+#define CTRL2_SET_OUTSTANDING_REQS_2	(0x1 << 21)
+#define CTRL2_SET_OUTSTANDING_REQS_4	(0x2 << 21)
+#define CTRL2_SET_OUTSTANDING_REQS_8	(0x3 << 21)
+#define CTRL2_SET_OUTSTANDING_REQS_16	(0x4 << 21)
+#define CTRL2_SET_OUTSTANDING_REQS_MASK	(0x7 << 21)
+
+#define TRANSFER_COUNT_SET_VCOUNT(x)	(((x) & 0xffff) << 16)
+#define TRANSFER_COUNT_GET_VCOUNT(x)	(((x) >> 16) & 0xffff)
+#define TRANSFER_COUNT_SET_HCOUNT(x)	((x) & 0xffff)
+#define TRANSFER_COUNT_GET_HCOUNT(x)	((x) & 0xffff)
+
+#define VDCTRL0_ENABLE_PRESENT		BIT(28)
+#define VDCTRL0_VSYNC_ACT_HIGH		BIT(27)
+#define VDCTRL0_HSYNC_ACT_HIGH		BIT(26)
+#define VDCTRL0_DOTCLK_ACT_FALLING	BIT(25)
+#define VDCTRL0_ENABLE_ACT_HIGH		BIT(24)
+#define VDCTRL0_VSYNC_PERIOD_UNIT	BIT(21)
+#define VDCTRL0_VSYNC_PULSE_WIDTH_UNIT	BIT(20)
+#define VDCTRL0_HALF_LINE		BIT(19)
+#define VDCTRL0_HALF_LINE_MODE		BIT(18)
+#define VDCTRL0_SET_VSYNC_PULSE_WIDTH(x) ((x) & 0x3ffff)
+#define VDCTRL0_GET_VSYNC_PULSE_WIDTH(x) ((x) & 0x3ffff)
+
+#define VDCTRL2_SET_HSYNC_PERIOD(x)	((x) & 0x3ffff)
+#define VDCTRL2_GET_HSYNC_PERIOD(x)	((x) & 0x3ffff)
+
+#define VDCTRL3_MUX_SYNC_SIGNALS	BIT(29)
+#define VDCTRL3_VSYNC_ONLY		BIT(28)
+#define SET_HOR_WAIT_CNT(x)		(((x) & 0xfff) << 16)
+#define GET_HOR_WAIT_CNT(x)		(((x) >> 16) & 0xfff)
+#define SET_VERT_WAIT_CNT(x)		((x) & 0xffff)
+#define GET_VERT_WAIT_CNT(x)		((x) & 0xffff)
+
+#define VDCTRL4_SET_DOTCLK_DLY(x)	(((x) & 0x7) << 29) /* v4 only */
+#define VDCTRL4_GET_DOTCLK_DLY(x)	(((x) >> 29) & 0x7) /* v4 only */
+#define VDCTRL4_SYNC_SIGNALS_ON		BIT(18)
+#define SET_DOTCLK_H_VALID_DATA_CNT(x)	((x) & 0x3ffff)
+
+#define DEBUG0_HSYNC			BIT(26)
+#define DEBUG0_VSYNC			BIT(25)
+
+#define AS_CTRL_PS_DISABLE		BIT(23)
+#define AS_CTRL_ALPHA_INVERT		BIT(20)
+#define AS_CTRL_ALPHA(a)		(((a) & 0xff) << 8)
+#define AS_CTRL_FORMAT_RGB565		(0xe << 4)
+#define AS_CTRL_FORMAT_RGB444		(0xd << 4)
+#define AS_CTRL_FORMAT_RGB555		(0xc << 4)
+#define AS_CTRL_FORMAT_ARGB4444		(0x9 << 4)
+#define AS_CTRL_FORMAT_ARGB1555		(0x8 << 4)
+#define AS_CTRL_FORMAT_RGB888		(0x4 << 4)
+#define AS_CTRL_FORMAT_ARGB8888		(0x0 << 4)
+#define AS_CTRL_ENABLE_COLORKEY		BIT(3)
+#define AS_CTRL_ALPHA_CTRL_ROP		(3 << 1)
+#define AS_CTRL_ALPHA_CTRL_MULTIPLY	(2 << 1)
+#define AS_CTRL_ALPHA_CTRL_OVERRIDE	(1 << 1)
+#define AS_CTRL_ALPHA_CTRL_EMBEDDED	(0 << 1)
+#define AS_CTRL_AS_ENABLE		BIT(0)
+
+/* V8 register set */
+#define CTRL_SW_RESET			BIT(31)
+#define CTRL_FETCH_START_OPTION_FPV	0
+#define CTRL_FETCH_START_OPTION_PWV	BIT(8)
+#define CTRL_FETCH_START_OPTION_BPV	BIT(9)
+#define CTRL_FETCH_START_OPTION_RESV	GENMASK(9, 8)
+#define CTRL_FETCH_START_OPTION_MASK	GENMASK(9, 8)
+#define CTRL_NEG			BIT(4)
+#define CTRL_INV_PXCK			BIT(3)
+#define CTRL_INV_DE			BIT(2)
+#define CTRL_INV_VS			BIT(1)
+#define CTRL_INV_HS			BIT(0)
+
+#define DISP_PARA_DISP_ON		BIT(31)
+#define DISP_PARA_SWAP_EN		BIT(30)
+#define DISP_PARA_LINE_PATTERN_UYVY_H	(0xd << 26)
+#define DISP_PARA_LINE_PATTERN_RGB565	(0x7 << 26)
+#define DISP_PARA_LINE_PATTERN_BGR888	(0x5 << 26)
+#define DISP_PARA_LINE_PATTERN_RGB888	(0x0 << 26)
+#define DISP_PARA_LINE_PATTERN_MASK	GENMASK(29, 26)
+#define DISP_PARA_DISP_MODE_MASK	GENMASK(25, 24)
+#define DISP_PARA_BGND_R_MASK		GENMASK(23, 16)
+#define DISP_PARA_BGND_G_MASK		GENMASK(15, 8)
+#define DISP_PARA_BGND_B_MASK		GENMASK(7, 0)
+
+#define DISP_SIZE_DELTA_Y(n)		(((n) & 0xffff) << 16)
+#define DISP_SIZE_DELTA_Y_MASK		GENMASK(31, 16)
+#define DISP_SIZE_DELTA_X(n)		((n) & 0xffff)
+#define DISP_SIZE_DELTA_X_MASK		GENMASK(15, 0)
+
+#define HSYN_PARA_BP_H(n)		(((n) & 0xffff) << 16)
+#define HSYN_PARA_BP_H_MASK		GENMASK(31, 16)
+#define HSYN_PARA_FP_H(n)		((n) & 0xffff)
+#define HSYN_PARA_FP_H_MASK		GENMASK(15, 0)
+
+#define VSYN_PARA_BP_V(n)		(((n) & 0xffff) << 16)
+#define VSYN_PARA_BP_V_MASK		GENMASK(31, 16)
+#define VSYN_PARA_FP_V(n)		((n) & 0xffff)
+#define VSYN_PARA_FP_V_MASK		GENMASK(15, 0)
+
+#define VSYN_HSYN_WIDTH_PW_V(n)		(((n) & 0xffff) << 16)
+#define VSYN_HSYN_WIDTH_PW_V_MASK	GENMASK(31, 16)
+#define VSYN_HSYN_WIDTH_PW_H(n)		((n) & 0xffff)
+#define VSYN_HSYN_WIDTH_PW_H_MASK	GENMASK(15, 0)
+
+#define INT_STATUS_D0_FIFO_EMPTY	BIT(24)
+#define INT_STATUS_D0_DMA_DONE		BIT(16)
+#define INT_STATUS_D0_DMA_ERR		BIT(8)
+#define INT_STATUS_D0_VS_BLANK		BIT(2)
+#define INT_STATUS_D0_UNDERRUN		BIT(1)
+#define INT_STATUS_D0_VSYNC		BIT(0)
+
+#define INT_ENABLE_D0_FIFO_EMPTY_EN	BIT(24)
+#define INT_ENABLE_D0_DMA_DONE_EN	BIT(16)
+#define INT_ENABLE_D0_DMA_ERR_EN	BIT(8)
+#define INT_ENABLE_D0_VS_BLANK_EN	BIT(2)
+#define INT_ENABLE_D0_UNDERRUN_EN	BIT(1)
+#define INT_ENABLE_D0_VSYNC_EN		BIT(0)
+
+#define INT_STATUS_D1_PLANE_PANIC	BIT(0)
+
+#define INT_ENABLE_D1_PLANE_PANIC_EN	BIT(0)
+
+#define CTRLDESCL0_1_HEIGHT(n)		(((n) & 0xffff) << 16)
+#define CTRLDESCL0_1_HEIGHT_MASK	GENMASK(31, 16)
+#define CTRLDESCL0_1_WIDTH(n)		((n) & 0xffff)
+#define CTRLDESCL0_1_WIDTH_MASK		GENMASK(15, 0)
+
+#define CTRLDESCL0_3_P_SIZE(n)		(((n) << 20) & CTRLDESCL0_3_P_SIZE_MASK)
+#define CTRLDESCL0_3_P_SIZE_MASK	GENMASK(22, 20)
+#define CTRLDESCL0_3_T_SIZE(n)		(((n) << 16) & CTRLDESCL0_3_T_SIZE_MASK)
+#define CTRLDESCL0_3_T_SIZE_MASK	GENMASK(17, 16)
+#define CTRLDESCL0_3_PITCH(n)		((n) & 0xffff)
+#define CTRLDESCL0_3_PITCH_MASK		GENMASK(15, 0)
+
+#define CTRLDESCL_HIGH0_4_ADDR_HIGH(n)	((n) & 0xf)
+#define CTRLDESCL_HIGH0_4_ADDR_HIGH_MASK	GENMASK(3, 0)
+
+#define CTRLDESCL0_5_EN			BIT(31)
+#define CTRLDESCL0_5_SHADOW_LOAD_EN	BIT(30)
+#define CTRLDESCL0_5_BPP_16_RGB565	(0x4 << 24)
+#define CTRLDESCL0_5_BPP_16_ARGB1555	(0x5 << 24)
+#define CTRLDESCL0_5_BPP_16_ARGB4444	(0x6 << 24)
+#define CTRLDESCL0_5_BPP_YCbCr422	(0x7 << 24)
+#define CTRLDESCL0_5_BPP_24_RGB888	(0x8 << 24)
+#define CTRLDESCL0_5_BPP_32_ARGB8888	(0x9 << 24)
+#define CTRLDESCL0_5_BPP_32_ABGR8888	(0xa << 24)
+#define CTRLDESCL0_5_BPP_MASK		GENMASK(27, 24)
+#define CTRLDESCL0_5_YUV_FORMAT_Y2VY1U	(0x0 << 14)
+#define CTRLDESCL0_5_YUV_FORMAT_Y2UY1V	(0x1 << 14)
+#define CTRLDESCL0_5_YUV_FORMAT_VY2UY1	(0x2 << 14)
+#define CTRLDESCL0_5_YUV_FORMAT_UY2VY1	(0x3 << 14)
+#define CTRLDESCL0_5_YUV_FORMAT_MASK	GENMASK(15, 14)
+
+#define CSC0_CTRL_CSC_MODE_YUV2RGB	(0x0 << 1)
+#define CSC0_CTRL_CSC_MODE_YCbCr2RGB	(0x1 << 1)
+#define CSC0_CTRL_CSC_MODE_RGB2YUV	(0x2 << 1)
+#define CSC0_CTRL_CSC_MODE_RGB2YCbCr	(0x3 << 1)
+#define CSC0_CTRL_CSC_MODE_MASK		GENMASK(2, 1)
+#define CSC0_CTRL_BYPASS		BIT(0)
+
+#define CSC0_COEF0_A2(n)		(((n) << 16) & CSC0_COEF0_A2_MASK)
+#define CSC0_COEF0_A2_MASK		GENMASK(26, 16)
+#define CSC0_COEF0_A1(n)		((n) & CSC0_COEF0_A1_MASK)
+#define CSC0_COEF0_A1_MASK		GENMASK(10, 0)
+
+#define CSC0_COEF1_B1(n)		(((n) << 16) & CSC0_COEF1_B1_MASK)
+#define CSC0_COEF1_B1_MASK		GENMASK(26, 16)
+#define CSC0_COEF1_A3(n)		((n) & CSC0_COEF1_A3_MASK)
+#define CSC0_COEF1_A3_MASK		GENMASK(10, 0)
+
+#define CSC0_COEF2_B3(n)		(((n) << 16) & CSC0_COEF2_B3_MASK)
+#define CSC0_COEF2_B3_MASK		GENMASK(26, 16)
+#define CSC0_COEF2_B2(n)		((n) & CSC0_COEF2_B2_MASK)
+#define CSC0_COEF2_B2_MASK		GENMASK(10, 0)
+
+#define CSC0_COEF3_C2(n)		(((n) << 16) & CSC0_COEF3_C2_MASK)
+#define CSC0_COEF3_C2_MASK		GENMASK(26, 16)
+#define CSC0_COEF3_C1(n)		((n) & CSC0_COEF3_C1_MASK)
+#define CSC0_COEF3_C1_MASK		GENMASK(10, 0)
+
+#define CSC0_COEF4_D1(n)		(((n) << 16) & CSC0_COEF4_D1_MASK)
+#define CSC0_COEF4_D1_MASK		GENMASK(24, 16)
+#define CSC0_COEF4_C3(n)		((n) & CSC0_COEF4_C3_MASK)
+#define CSC0_COEF4_C3_MASK		GENMASK(10, 0)
+
+#define CSC0_COEF5_D3(n)		(((n) << 16) & CSC0_COEF5_D3_MASK)
+#define CSC0_COEF5_D3_MASK		GENMASK(24, 16)
+#define CSC0_COEF5_D2(n)		((n) & CSC0_COEF5_D2_MASK)
+#define CSC0_COEF5_D2_MASK		GENMASK(8, 0)
+
+#define PANIC0_THRES_LOW_MASK		GENMASK(24, 16)
+#define PANIC0_THRES_HIGH_MASK		GENMASK(8, 0)
+#define PANIC0_THRES_MAX		511
+
+#define LCDIF_MIN_XRES			120
+#define LCDIF_MIN_YRES			120
+#define LCDIF_MAX_XRES			0xffff
+#define LCDIF_MAX_YRES			0xffff
+
+#endif /* __LCDIF_REGS_H__ */

---
base-commit: 0633a4db9d2351234b565b55978ce068b387eb2d
change-id: 20251113-imx-lcdif-e7915e9f0ed0

Best regards,
-- 
Michael Grzeschik <m.grzeschik@pengutronix.de>



