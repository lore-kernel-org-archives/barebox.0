Delivery-date: Thu, 05 Dec 2024 07:17:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJ5BK-004DUi-2L
	for lore@lore.pengutronix.de;
	Thu, 05 Dec 2024 07:17:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJ5BJ-0002Zt-H7
	for lore@pengutronix.de; Thu, 05 Dec 2024 07:17:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cnHH42ENckVZ8pDCm/VlAnTrpKZLesTm+ZGPpS0+6Tk=; b=GUBnB0lM5Sd6q7ux79BgQnyX4f
	sNF27spqziQm6n7rFSVCWiqz6IL0XID5V7yoqk4Mj8wEkz7/kvwBLaVqtAFxSZ/dvNTunD153T/Ft
	lhA1oT6mT9edVxtV1ty3ETZoiXFeipQUEeRYSl8BKuH8znx4KG/0r82uAu2L2iMUEJn4hX5s5YqN9
	+AB3QG3yR7zXGatuGbAzqTy45R61z+ZjKvtlJWqfoHoBz11qGZJ5KshHDszfCiAHg9tCCx0UJ4eCF
	r5g60tBuKJd0DXO/nojwZMjbALYYEirOTeLfiId6Es9aPYektgSjtTlnDl4iXEIdfhsCAeATgnUU7
	hCzI+1/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ5AZ-0000000EsGt-1PsF;
	Thu, 05 Dec 2024 06:16:59 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ5AV-0000000EsGE-3XLx
	for barebox@lists.infradead.org;
	Thu, 05 Dec 2024 06:16:57 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-53dd57589c8so1850800e87.1
        for <barebox@lists.infradead.org>; Wed, 04 Dec 2024 22:16:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733379413; x=1733984213; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cnHH42ENckVZ8pDCm/VlAnTrpKZLesTm+ZGPpS0+6Tk=;
        b=A7cxERaOBp5qm22+35NoMJeDlTWA5D1rnmYqq1DADk/2IjNSpToSYEP6OBY4gf49jC
         TxKXyMNsBoc4m7qpyAQyTUebPHcz3J9uS8dB4cWGE5NhNsJDXyIXAer0yunjq1jsytBS
         Y+VPnnXnn0PZxCvWFL//aF4lZ65rqT1h5wbzuIHzw/8S3JmFkU3jNG+am8a4ighk6nqt
         a2SOP7JG3xnjOZQpZ9VveLD+mHI1rlh0Mr+F9h36PJNzZXJ57eDbliG4neHA+7DhDHuM
         ZAdiBJCyf0SSpFZ/vm4n+543cVx32UfP5JlLALNgWsg/wTVKfe7H4DrdpJ2v/Aapga23
         ZwPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733379413; x=1733984213;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cnHH42ENckVZ8pDCm/VlAnTrpKZLesTm+ZGPpS0+6Tk=;
        b=VK28bmSkhTt+4Bx8ct4Ilu6hI0EnG9bIhPrma0S3zLV3hxLe+Qt4E/zTfaJ9wNPyoD
         5bMJQrhtHGGx7x1W1DZMDMOcBH7XNDk9W+tBTW6mTKuV6WM38qr6RGmVj4TSXv7qIaC6
         Z7sqWimCrhIp06LF2QmaeSneHI5sfjqT+bdlnKq7tiVNrIIOh8XFD/AvebIbvQ1GEJJg
         G/yNs50sfL0lP9916j5GCCmgpOugvQVskC83/Zh/FFc6RKucaJnLI27rgxU+NBXpK31y
         739/heGnm6EmYYoyKD817cNKhkoX+y8VXD0JHn2/7Y0XKpo6sSzZ5KkVq8EyFntAe7Ct
         RFQg==
X-Gm-Message-State: AOJu0YwXjza2Y8TUFWRZoWJAwonvJmqGwXPse8Yew/LnRKJqbtZnuAvV
	k+ArxnMBzJjA2i0WEfAqDA1Di9IzhGqTkdovElj2Ws0WQYvcNgIu1pkbDQ==
X-Gm-Gg: ASbGncvnW4kZj7d23YBlO7mlUTjquQ8uqTy0cbpPO5AUtW+BdxUmnlmhb/bW5yCQKNC
	ZwrKwoP9hBW8wjLbYbeeLtoOL1SF5IgrKQBIXIhJ2Oi/omyabMBO6LZkEWgA8ovKbLsZNTvg9RJ
	dgpM0Juc+DVKFtzZvLZUwCh0XR+O3UfNRA8mDg3E/ut3NxXbfpEwEsVbGnQUoLJSVlWd0uIoHhP
	Tu4qD+BUhrY5vjIz+T2gWgabMbhfQT8HORMwammZB4jECR51GMfuna7qItx1ppCBStcQRtAvA==
X-Google-Smtp-Source: AGHT+IGtxQFNg05uhHiD1VPcMnq+Rbe81w/a1L4fULDDRO2mjpFso5S+HrDV71SoOpdPOlwPwcdE9Q==
X-Received: by 2002:a05:6512:3d8d:b0:53e:21e6:76ac with SMTP id 2adb3069b0e04-53e21e67919mr434693e87.3.1733379412962;
        Wed, 04 Dec 2024 22:16:52 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e229ba9f1sm127623e87.153.2024.12.04.22.16.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 22:16:50 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  5 Dec 2024 09:16:41 +0300
Message-Id: <20241205061641.7688-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_221656_011933_8E97D908 
X-CRM114-Status: GOOD (  21.54  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] video: omap-fb: Remove orphan driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since OMAP non-PBL boards are removed from the barebox,
the omap-fb driver remains unused. Let's remove it.

Fixes: b93f8a06c85f ("ARM: remove non PBL OMAP boards")
Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-omap/omap_devices.c |  29 --
 drivers/video/Kconfig             |   8 -
 drivers/video/Makefile            |   1 -
 drivers/video/omap.c              | 510 ------------------------------
 drivers/video/omap.h              | 175 ----------
 include/mach/omap/devices.h       |   3 -
 include/video/omap-fb.h           |  45 ---
 7 files changed, 771 deletions(-)
 delete mode 100644 drivers/video/omap.c
 delete mode 100644 drivers/video/omap.h
 delete mode 100644 include/video/omap-fb.h

diff --git a/arch/arm/mach-omap/omap_devices.c b/arch/arm/mach-omap/omap_devices.c
index 3ade3225df..afa8940ec1 100644
--- a/arch/arm/mach-omap/omap_devices.c
+++ b/arch/arm/mach-omap/omap_devices.c
@@ -20,32 +20,3 @@ struct device *omap_add_uart(int id, unsigned long base)
 	return add_generic_device("omap-uart", id, NULL, base, 1024,
 				  IORESOURCE_MEM | IORESOURCE_MEM_8BIT, NULL);
 }
-
-#if defined(CONFIG_DRIVER_VIDEO_OMAP)
-static struct resource omapfb_resources[] = {
-	{
-		.name	= "omap4_dss",
-		.start	= 0x48040000,
-		.end	= 0x48040000 + 512 - 1,
-		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
-	}, {
-		.name	= "omap4_dispc",
-		.start	= 0x48041000,
-		.end	= 0x48041000 + 3072 - 1,
-		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
-	},
-};
-
-struct device *omap_add_display(struct omapfb_platform_data *o_pdata)
-{
-	return add_generic_device_res("omap_fb", -1,
-				      omapfb_resources,
-				      ARRAY_SIZE(omapfb_resources),
-				      o_pdata);
-}
-#else
-struct device *omap_add_display(struct omapfb_platform_data *o_pdata)
-{
-	return NULL;
-}
-#endif
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 60adc7f30e..0539e2d453 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -68,14 +68,6 @@ config DRIVER_VIDEO_STM32_LTDC
 	  Say 'Y' here to enable framebuffer and splash screen support for
 	  STM32 and STM32MP1.
 
-config DRIVER_VIDEO_OMAP
-	bool "OMAP framebuffer driver"
-	depends on ARCH_OMAP4 || COMPILE_TEST
-	help
-	  Add support for OMAP Display Controller. Currently this
-	  driver only supports OMAP4 SoCs in DISPC parallel mode on
-	  LCD2 (MIPI DPI).
-
 config DRIVER_VIDEO_SDL
 	bool "SDL framebuffer driver"
 	depends on SANDBOX
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 6aa5d50e5d..f851837ebc 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -22,7 +22,6 @@ obj-$(CONFIG_DRIVER_VIDEO_IMX) += imx.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
 obj-$(CONFIG_DRIVER_VIDEO_PXA) += pxa.o
 obj-$(CONFIG_DRIVER_VIDEO_SDL) += sdl.o
-obj-$(CONFIG_DRIVER_VIDEO_OMAP) += omap.o
 obj-$(CONFIG_DRIVER_VIDEO_BCM283X) += bcm2835.o
 obj-$(CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT) += simplefb-client.o
 obj-$(CONFIG_DRIVER_VIDEO_SIMPLEFB) += simplefb-fixup.o
diff --git a/drivers/video/omap.c b/drivers/video/omap.c
deleted file mode 100644
index 08b81b42f2..0000000000
--- a/drivers/video/omap.c
+++ /dev/null
@@ -1,510 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * TI Omap Frame Buffer device driver
- *
- * Copyright (C) 2013 Christoph Fritz <chf.fritz@googlemail.com>
- *   Based on work by Enrico Scholz, sponsored by Phytec
- */
-
-#include <driver.h>
-#include <dma.h>
-#include <fb.h>
-#include <errno.h>
-#include <xfuncs.h>
-#include <init.h>
-#include <stdio.h>
-#include <io.h>
-#include <common.h>
-#include <malloc.h>
-#include <clock.h>
-#include <linux/err.h>
-
-#include <video/omap-fb.h>
-
-#include <mmu.h>
-
-#include "omap.h"
-
-struct omapfb_device {
-	struct fb_info info;
-	struct device *dev;
-
-	struct omapfb_display const *cur_display;
-
-	struct omapfb_display const *displays;
-	size_t num_displays;
-
-	void __iomem *dss;
-	void __iomem *dispc;
-
-	struct {
-		void __iomem *addr;
-		size_t size;
-	} prealloc_screen;
-
-	struct {
-		uint32_t dispc_control;
-		uint32_t dispc_pol_freq;
-	} shadow;
-
-	struct {
-		unsigned int dss_clk_hz;
-		unsigned int lckd;
-		unsigned int pckd;
-	} divisor;
-	size_t dma_size;
-	void (*enable_fn)(int);
-
-	struct fb_videomode	video_modes[];
-};
-
-static inline struct omapfb_device *to_omapfb(const struct fb_info *info)
-{
-	return container_of(info, struct omapfb_device, info);
-}
-
-static void omapfb_enable(struct fb_info *info)
-{
-	struct omapfb_device *fbi = to_omapfb(info);
-
-	dev_dbg(fbi->dev, "%s\n", __func__);
-
-	if (!fbi->cur_display) {
-		dev_err(fbi->dev, "no valid mode set\n");
-		return;
-	}
-
-	if (fbi->enable_fn)
-		fbi->enable_fn(1);
-
-	udelay(fbi->cur_display->power_on_delay * 1000u);
-
-	o4_dispc_write(o4_dispc_read(O4_DISPC_CONTROL2) |
-		DSS_DISPC_CONTROL_LCDENABLE |
-		DSS_DISPC_CONTROL_LCDENABLESIGNAL, O4_DISPC_CONTROL2);
-
-	o4_dispc_write(o4_dispc_read(O4_DISPC_VID1_ATTRIBUTES) |
-		DSS_DISPC_VIDn_ATTRIBUTES_VIDENABLE, O4_DISPC_VID1_ATTRIBUTES);
-
-	o4_dispc_write(o4_dispc_read(O4_DISPC_CONTROL2) |
-		DSS_DISPC_CONTROL_GOLCD, O4_DISPC_CONTROL2);
-}
-
-static void omapfb_disable(struct fb_info *info)
-{
-	struct omapfb_device *fbi = to_omapfb(info);
-
-	dev_dbg(fbi->dev, "%s\n", __func__);
-
-	if (!fbi->cur_display) {
-		dev_err(fbi->dev, "no valid mode set\n");
-		return;
-	}
-
-	o4_dispc_write(o4_dispc_read(O4_DISPC_CONTROL2) &
-		~(DSS_DISPC_CONTROL_LCDENABLE |
-		DSS_DISPC_CONTROL_LCDENABLESIGNAL), O4_DISPC_CONTROL2);
-
-	o4_dispc_write(o4_dispc_read(O4_DISPC_VID1_ATTRIBUTES) &
-		~(DSS_DISPC_VIDn_ATTRIBUTES_VIDENABLE),
-		O4_DISPC_VID1_ATTRIBUTES);
-
-	if (fbi->prealloc_screen.addr == NULL) {
-		/* free frame buffer; but only when screen is not
-		* preallocated */
-		if (info->screen_base)
-			dma_free_coherent(DMA_DEVICE_BROKEN,
-					  info->screen_base, 0, fbi->dma_size);
-	}
-
-	info->screen_base = NULL;
-
-	udelay(fbi->cur_display->power_off_delay * 1000u);
-
-	if (fbi->enable_fn)
-		fbi->enable_fn(0);
-}
-
-static void omapfb_calc_divisor(struct omapfb_device *fbi,
-			struct fb_videomode const *mode)
-{
-	unsigned int l, k, t, b;
-
-	b = UINT_MAX;
-	for (l = 1; l < 256; l++) {
-		for (k = 1; k < 256; k++) {
-			t = abs(mode->pixclock * 100 -
-				(fbi->divisor.dss_clk_hz / l / k));
-			if (t <= b) {
-				b = t;
-				fbi->divisor.lckd = l;
-				fbi->divisor.pckd = k;
-			}
-		}
-	}
-}
-
-static unsigned int omapfb_calc_format(struct fb_info const *info)
-{
-	struct omapfb_device *fbi = to_omapfb(info);
-
-	switch (info->bits_per_pixel) {
-	case 24:
-		return 9;
-	case 32:
-		return 0x8; /* xRGB24-8888 (32-bit container) */
-	default:
-		dev_err(fbi->dev, "%s: unsupported bpp %d\n", __func__,
-			info->bits_per_pixel);
-		return 0;
-	}
-}
-
-struct omapfb_colors {
-	struct fb_bitfield	red;
-	struct fb_bitfield	green;
-	struct fb_bitfield	blue;
-	struct fb_bitfield	transp;
-};
-
-static struct omapfb_colors const omapfb_col[] = {
-	[0] = {
-		.red	= { .length = 0, .offset = 0 },
-	},
-	[1] = {
-		.blue	= { .length = 8, .offset = 0 },
-		.green	= { .length = 8, .offset = 8 },
-		.red	= { .length = 8, .offset = 16 },
-	},
-	[2] = {
-		.blue	= { .length = 8, .offset = 0 },
-		.green	= { .length = 8, .offset = 8 },
-		.red	= { .length = 8, .offset = 16 },
-		.transp	= { .length = 8, .offset = 24 },
-	},
-};
-
-static void omapfb_fill_shadow(struct omapfb_device *fbi,
-				struct omapfb_display const *display)
-{
-	fbi->shadow.dispc_control = 0;
-	fbi->shadow.dispc_pol_freq = 0;
-
-	fbi->shadow.dispc_control |= DSS_DISPC_CONTROL_STNTFT;
-
-	switch (display->config & OMAP_DSS_LCD_DATALINES_msk) {
-	case OMAP_DSS_LCD_DATALINES_12:
-		fbi->shadow.dispc_control |= DSS_DISPC_CONTROL_TFTDATALINES_12;
-		break;
-	case OMAP_DSS_LCD_DATALINES_16:
-		fbi->shadow.dispc_control |= DSS_DISPC_CONTROL_TFTDATALINES_16;
-		break;
-	case OMAP_DSS_LCD_DATALINES_18:
-		fbi->shadow.dispc_control |= DSS_DISPC_CONTROL_TFTDATALINES_18;
-		break;
-	case OMAP_DSS_LCD_DATALINES_24:
-		fbi->shadow.dispc_control |= DSS_DISPC_CONTROL_TFTDATALINES_24;
-		break;
-	}
-
-	if (display->config & OMAP_DSS_LCD_IPC)
-		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_IPC;
-
-	if (display->config & OMAP_DSS_LCD_IVS)
-		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_IVS;
-
-	if (display->config & OMAP_DSS_LCD_IHS)
-		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_IHS;
-
-	if (display->config & OMAP_DSS_LCD_IEO)
-		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_IEO;
-
-	if (display->config & OMAP_DSS_LCD_RF)
-		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_RF;
-
-	if (display->config & OMAP_DSS_LCD_ONOFF)
-		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_ONOFF;
-}
-
-static int omapfb_find_display_by_name(struct omapfb_device *fbi,
-		const char *name)
-{
-	int i;
-
-	for (i = 0; i < fbi->num_displays; ++i) {
-		if (strcmp(name, fbi->displays[i].mode.name) == 0)
-			return i;
-	}
-	return -ENXIO;
-}
-
-static int omapfb_activate_var(struct fb_info *info)
-{
-	struct omapfb_device *fbi = to_omapfb(info);
-	struct fb_videomode const *mode = info->mode;
-	size_t size = mode->xres * mode->yres * (info->bits_per_pixel / 8);
-	int rc;
-	unsigned int fmt = omapfb_calc_format(info);
-	struct omapfb_colors const *cols;
-	struct omapfb_display const *new_display = NULL;
-
-	rc = omapfb_find_display_by_name(fbi, mode->name);
-	if (rc < 0) {
-		dev_err(fbi->dev, "no display found for this mode '%s'\n",
-			mode->name);
-		goto out;
-	}
-	new_display = &fbi->displays[rc];
-
-	/*Free old screen buf*/
-	if (!fbi->prealloc_screen.addr && info->screen_base)
-		dma_free_coherent(DMA_DEVICE_BROKEN,
-				  info->screen_base, 0, fbi->dma_size);
-
-	fbi->dma_size = PAGE_ALIGN(size);
-
-	if (!fbi->prealloc_screen.addr) {
-		/* case 1: no preallocated screen */
-		info->screen_base = dma_alloc_coherent(DMA_DEVICE_BROKEN,
-						       size, DMA_ADDRESS_BROKEN);
-	} else if (fbi->prealloc_screen.size < fbi->dma_size) {
-		/* case 2: preallocated screen, but too small */
-		dev_err(fbi->dev,
-			"allocated framebuffer too small (%zu < %zu)\n",
-			fbi->prealloc_screen.size, fbi->dma_size);
-		rc = -ENOMEM;
-		goto out;
-	} else {
-		/* case 3: preallocated screen */
-		info->screen_base = fbi->prealloc_screen.addr;
-	}
-
-	omapfb_fill_shadow(fbi, new_display);
-
-	omapfb_calc_divisor(fbi, mode);
-
-	switch (info->bits_per_pixel) {
-	case 24:
-		cols = &omapfb_col[1];
-		break;
-	case 32:
-		cols = &omapfb_col[2];
-		break;
-	default:
-		cols = &omapfb_col[0];
-	}
-
-	info->red = cols->red;
-	info->green = cols->green;
-	info->blue = cols->blue;
-	info->transp = cols->transp;
-
-	o4_dispc_write(fbi->shadow.dispc_control, O4_DISPC_CONTROL2);
-
-	o4_dispc_write(fbi->shadow.dispc_pol_freq, O4_DISPC_POL_FREQ2);
-
-	o4_dispc_write(DSS_DISPC_TIMING_H_HSW(mode->hsync_len - 1) |
-		DSS_DISPC_TIMING_H_HFP(mode->right_margin - 1) |
-		DSS_DISPC_TIMING_H_HBP(mode->left_margin - 1),
-		O4_DISPC_TIMING_H2);
-
-	o4_dispc_write(DSS_DISPC_TIMING_V_VSW(mode->vsync_len - 1) |
-		DSS_DISPC_TIMING_V_VFP(mode->lower_margin) |
-		DSS_DISPC_TIMING_V_VBP(mode->upper_margin), O4_DISPC_TIMING_V2);
-
-	o4_dispc_write(DSS_DISPC_DIVISOR_ENABLE | DSS_DISPC_DIVISOR_LCD(1),
-		O4_DISPC_DIVISOR);
-
-	o4_dispc_write(DSS_DISPC_DIVISOR2_LCD(fbi->divisor.lckd) |
-		DSS_DISPC_DIVISOR2_PCD(fbi->divisor.pckd), O4_DISPC_DIVISOR2);
-
-	o4_dispc_write(DSS_DISPC_SIZE_LCD_PPL(mode->xres - 1) |
-		DSS_DISPC_SIZE_LCD_LPP(mode->yres - 1), O4_DISPC_SIZE_LCD2);
-
-	o4_dispc_write(0x0000ff00, O4_DISPC_DEFAULT_COLOR2);
-
-	/* we use VID1 */
-	o4_dispc_write((uintptr_t)info->screen_base, O4_DISPC_VID1_BA0);
-	o4_dispc_write((uintptr_t)info->screen_base, O4_DISPC_VID1_BA1);
-
-	o4_dispc_write(DSS_DISPC_VIDn_POSITION_VIDPOSX(0) |
-		DSS_DISPC_VIDn_POSITION_VIDPOSY(0), O4_DISPC_VID1_POSITION);
-	o4_dispc_write(DSS_DISPC_VIDn_SIZE_VIDSIZEX(mode->xres - 1) |
-		DSS_DISPC_VIDn_SIZE_VIDSIZEY(mode->yres - 1),
-		O4_DISPC_VID1_SIZE);
-	o4_dispc_write(DSS_DISPC_VIDn_PICTURE_SIZE_VIDORGSIZEX(mode->xres - 1) |
-		DSS_DISPC_VIDn_PICTURE_SIZE_VIDORGSIZEY(mode->yres - 1),
-		O4_DISPC_VID1_PICTURE_SIZE);
-	o4_dispc_write(1, O4_DISPC_VID1_ROW_INC);
-	o4_dispc_write(1, O4_DISPC_VID1_PIXEL_INC);
-
-	o4_dispc_write(0xfff, O4_DISPC_VID1_PRELOAD);
-
-	o4_dispc_write(DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(fmt) |
-		DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE_8x128 |
-		DSS_DISPC_VIDn_ATTRIBUTES_ZORDERENABLE |
-		DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2_SECONDARY_LCD,
-		O4_DISPC_VID1_ATTRIBUTES);
-
-	rc = wait_on_timeout(OFB_TIMEOUT,
-		!(o4_dispc_read(O4_DISPC_CONTROL2) &
-		DSS_DISPC_CONTROL_GOLCD));
-
-	if (rc) {
-		dev_err(fbi->dev, "timeout: dispc golcd\n");
-		goto out;
-	}
-
-	o4_dispc_write(o4_dispc_read(O4_DISPC_CONTROL2) |
-		DSS_DISPC_CONTROL_GOLCD, O4_DISPC_CONTROL2);
-
-	fbi->cur_display = new_display;
-	info->xres = mode->xres;
-	info->yres = mode->yres;
-
-	rc = 0;
-
-out:
-	return rc;
-}
-
-static int omapfb_reset(struct omapfb_device const *fbi)
-{
-	uint32_t v = o4_dispc_read(O4_DISPC_CONTROL2);
-	int rc;
-
-	/* step 1: stop the LCD controller */
-	if (v & DSS_DISPC_CONTROL_LCDENABLE) {
-		o4_dispc_write(v & ~DSS_DISPC_CONTROL_LCDENABLE,
-			O4_DISPC_CONTROL2);
-
-		o4_dispc_write(DSS_DISPC_IRQSTATUS_FRAMEDONE2,
-			O4_DISPC_IRQSTATUS);
-
-		rc = wait_on_timeout(OFB_TIMEOUT,
-			((o4_dispc_read(O4_DISPC_IRQSTATUS) &
-			DSS_DISPC_IRQSTATUS_FRAMEDONE) != 0));
-
-		if (rc) {
-			dev_err(fbi->dev, "timeout: irqstatus framedone\n");
-			return -ETIMEDOUT;
-		}
-	}
-
-	/* step 2: wait for reset done status */
-	rc = wait_on_timeout(OFB_TIMEOUT,
-		(o4_dss_read(O4_DSS_SYSSTATUS) &
-		DSS_DSS_SYSSTATUS_RESETDONE));
-
-	if (rc) {
-		dev_err(fbi->dev, "timeout: sysstatus resetdone\n");
-		return -ETIMEDOUT;
-	}
-
-	/* DSS_CTL: set to reset value */
-	o4_dss_write(0, O4_DSS_CTRL);
-
-	return 0;
-}
-
-static struct fb_ops omapfb_ops = {
-	.fb_enable		= omapfb_enable,
-	.fb_disable		= omapfb_disable,
-	.fb_activate_var	= omapfb_activate_var,
-};
-
-static int omapfb_probe(struct device *dev)
-{
-	struct omapfb_platform_data const *pdata = dev->platform_data;
-	struct omapfb_device *fbi;
-	struct fb_info *info;
-	int rc;
-	size_t i;
-
-	fbi = xzalloc(sizeof *fbi +
-		pdata->num_displays * sizeof fbi->video_modes[0]);
-	info = &fbi->info;
-
-	fbi->dev = dev;
-
-	/* CM_DSS_CLKSTCTRL (TRM: 935) trigger SW_WKUP */
-	__raw_writel(0x2, 0x4a009100); /* TODO: move this to clockmanagement */
-
-	fbi->dss   = dev_request_mem_region_by_name(dev, "omap4_dss");
-	fbi->dispc = dev_request_mem_region_by_name(dev, "omap4_dispc");
-
-	if (IS_ERR(fbi->dss) || IS_ERR(fbi->dispc)) {
-		dev_err(dev, "Insufficient register description\n");
-		rc = -EINVAL;
-		goto out;
-	}
-
-	dev_info(dev, "HW-Revision 0x%04x 0x%04x\n",
-		o4_dss_read(O4_DISPC_REVISION),
-		o4_dss_read(O4_DSS_REVISION));
-
-	if (!pdata->dss_clk_hz | !pdata->displays | !pdata->num_displays |
-		!pdata->bpp) {
-		dev_err(dev, "Insufficient omapfb_platform_data\n");
-		rc = -EINVAL;
-		goto out;
-	}
-
-	fbi->enable_fn    = pdata->enable;
-	fbi->displays     = pdata->displays;
-	fbi->num_displays = pdata->num_displays;
-	fbi->divisor.dss_clk_hz = pdata->dss_clk_hz;
-
-	for (i = 0; i < pdata->num_displays; ++i)
-		fbi->video_modes[i] = pdata->displays[i].mode;
-
-	info->modes.modes = fbi->video_modes;
-	info->modes.num_modes = pdata->num_displays;
-
-	info->priv = fbi;
-	info->fbops = &omapfb_ops;
-	info->bits_per_pixel = pdata->bpp;
-
-	if (pdata->screen) {
-		if (!IS_ALIGNED(pdata->screen->start, PAGE_SIZE) ||
-			!IS_ALIGNED(resource_size(pdata->screen), PAGE_SIZE)) {
-			dev_err(dev, "screen resource not aligned\n");
-			rc = -EINVAL;
-			goto out;
-		}
-		fbi->prealloc_screen.addr =
-				(void __iomem *)pdata->screen->start;
-		fbi->prealloc_screen.size = resource_size(pdata->screen);
-		remap_range(fbi->prealloc_screen.addr,
-			fbi->prealloc_screen.size, MAP_UNCACHED);
-	}
-
-	rc = omapfb_reset(fbi);
-	if (rc < 0) {
-		dev_err(dev, "failed to reset: %d\n", rc);
-		goto out;
-	}
-
-	info->dev.parent = dev;
-	rc = register_framebuffer(info);
-	if (rc < 0) {
-		dev_err(dev, "failed to register framebuffer: %d\n", rc);
-		goto out;
-	}
-
-	rc = 0;
-	dev_info(dev, "registered\n");
-
-out:
-	if (rc < 0)
-		free(fbi);
-
-	return rc;
-}
-
-static struct driver omapfb_driver = {
-	.name	= "omap_fb",
-	.probe	= omapfb_probe,
-};
-
-device_platform_driver(omapfb_driver);
diff --git a/drivers/video/omap.h b/drivers/video/omap.h
deleted file mode 100644
index 991d7a0f91..0000000000
--- a/drivers/video/omap.h
+++ /dev/null
@@ -1,175 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * TI Omap4 Frame Buffer device driver
- *
- * Copyright (C) 2013 Christoph Fritz <chf.fritz@googlemail.com>
- */
-
-#ifndef H_BAREBOX_DRIVER_VIDEO_OMAP4_REGS_H
-#define H_BAREBOX_DRIVER_VIDEO_OMAP4_REGS_H
-
-#include <types.h>
-#include <common.h>
-
-#define OFB_TIMEOUT	(128 * USECOND)
-
-#define _ofb_read(io, reg)		__raw_readl((io)+(reg))
-#define _ofb_write(val, io, reg)	__raw_writel((val), (io)+(reg))
-
-/* TRM: 10.1.3.2 DSS Registers */
-#define O4_DSS_REVISION	0x0
-#define O4_DSS_SYSSTATUS	0x14
-#define O4_DSS_CTRL		0x40
-#define O4_DSS_STATUS		0x5c
-
-#define o4_dss_read(reg)		_ofb_read(fbi->dss, reg)
-#define o4_dss_write(val, reg)		_ofb_write(val, fbi->dss, reg)
-
-/* TRM: 10.2.7.3 Display Controller Registers */
-#define O4_DISPC_REVISION		0x0
-#define O4_DISPC_IRQSTATUS		0x18
-#define O4_DISPC_VID1_BA0		0xbc
-#define O4_DISPC_VID1_BA1		0xc0
-#define O4_DISPC_VID1_POSITION		0xc4
-#define O4_DISPC_VID1_SIZE		0xc8
-#define O4_DISPC_VID1_ATTRIBUTES	0xcc
-#define O4_DISPC_VID1_ROW_INC		0xd8
-#define O4_DISPC_VID1_PIXEL_INC	0xdc
-#define O4_DISPC_VID1_PICTURE_SIZE	0xe4
-#define O4_DISPC_VID1_PRELOAD		0x230
-#define O4_DISPC_CONTROL2		0x238
-#define O4_DISPC_DEFAULT_COLOR2	0x3ac
-#define O4_DISPC_SIZE_LCD2		0x3cc
-#define O4_DISPC_TIMING_H2		0x400
-#define O4_DISPC_TIMING_V2		0x404
-#define O4_DISPC_POL_FREQ2		0x408
-#define O4_DISPC_DIVISOR2		0x40c
-#define O4_DISPC_DIVISOR		0x804
-
-#define o4_dispc_read(reg)		_ofb_read(fbi->dispc, reg)
-#define o4_dispc_write(val, reg)	_ofb_write(val, fbi->dispc, reg)
-
-#define DSS_DISPC_VIDn_POSITION_VIDPOSX(_x)		((_x) << 0)
-#define DSS_DISPC_VIDn_POSITION_VIDPOSY(_y)		((_y) << 16)
-
-#define DSS_DISPC_VIDn_PICTURE_SIZE_VIDORGSIZEX(_x)	((_x) << 0)
-#define DSS_DISPC_VIDn_PICTURE_SIZE_VIDORGSIZEY(_y)	((_y) << 16)
-
-#define DSS_DISPC_VIDn_SIZE_VIDSIZEX(_x)		((_x) << 0)
-#define DSS_DISPC_VIDn_SIZE_VIDSIZEY(_y)		((_y) << 16)
-
-#define DSS_DISPC_SIZE_LCD_PPL(_x)			((_x) << 0)
-#define DSS_DISPC_SIZE_LCD_LPP(_y)			((_y) << 16)
-
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDENABLE		(1u << 0)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(_fmt)	((_fmt) << 1)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_RGB12	\
-	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(4u)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_ARGB16	\
-	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(5u)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_RGB16	\
-	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(6u)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_ARGB16o	\
-	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(7u)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_xRGB24u	\
-	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(8u)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_RGB24p	\
-	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(9u)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_YUV2	\
-	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(10u)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_UYVY	\
-	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(11u)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_ARGB32	\
-	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(12u)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_RGBA32	\
-	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(13u)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_xRGB32	\
-	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(14u)
-
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE(_b)	((_b) << 14)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE_2x128 \
-	DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE(0u)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE_4x128 \
-	DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE(1u)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE_8x128 \
-	DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE(2u)
-
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDCHANNELOUT	(1u << 16)
-#define DSS_DISPC_VIDn_ATTRIBUTES_SELFREFRESHAUTO	(1u << 17)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFIFOPRELOAD	(1u << 19)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDVERTICALTAPS	(1u << 21)
-#define DSS_DISPC_VIDn_ATTRIBUTES_DOUBLESTRIDE		(1u << 22)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDARBITRATION	(1u << 23)
-#define DSS_DISPC_VIDn_ATTRIBUTES_VIDSELFREFRESH	(1u << 24)
-#define DSS_DISPC_VIDn_ATTRIBUTES_ZORDERENABLE		(1u << 25)
-
-#define DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2(_b)  ((_b) << 30)
-#define DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2_PRIMARY_LCD \
-	DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2(0u)
-#define DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2_SECONDARY_LCD \
-	DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2(1u)
-#define DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2_WRITEBACK_MEM \
-	DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2(3u)
-
-#define DSS_DISPC_CONTROL_LCDENABLE			(1u << 0)
-#define DSS_DISPC_CONTROL_TVENABLE			(1u << 1)
-#define DSS_DISPC_CONTROL_MONOCOLOR			(1u << 2)
-#define DSS_DISPC_CONTROL_STNTFT			(1u << 3)
-#define DSS_DISPC_CONTROL_M8B				(1u << 4)
-#define DSS_DISPC_CONTROL_GOLCD			(1u << 5)
-#define DSS_DISPC_CONTROL_GOTV				(1u << 6)
-#define DSS_DISPC_CONTROL_STDITHERENABLE		(1u << 7)
-
-#define DSS_DISPC_CONTROL_TFTDATALINES(_l)		((_l) << 8)
-#define DSS_DISPC_CONTROL_TFTDATALINES_12 \
-	DSS_DISPC_CONTROL_TFTDATALINES(0u)
-#define DSS_DISPC_CONTROL_TFTDATALINES_16 \
-	DSS_DISPC_CONTROL_TFTDATALINES(1u)
-#define DSS_DISPC_CONTROL_TFTDATALINES_18 \
-	DSS_DISPC_CONTROL_TFTDATALINES(2u)
-#define DSS_DISPC_CONTROL_TFTDATALINES_24 \
-	DSS_DISPC_CONTROL_TFTDATALINES(3u)
-
-#define DSS_DISPC_CONTROL_STALLMODE			(1u << 11)
-#define DSS_DISPC_CONTROL_OVERLAYOPTIMIZATION		(1u << 12)
-#define DSS_DISPC_CONTROL_GPIN0			(1u << 13) /* ro */
-#define DSS_DISPC_CONTROL_GPIN1			(1u << 14) /* ro */
-#define DSS_DISPC_CONTROL_GPOUT0			(1u << 15)
-#define DSS_DISPC_CONTROL_GPOUT1			(1u << 16)
-#define DSS_DISPC_CONTROL_HT(_ht)			((_ht) << 17)
-#define DSS_DISPC_CONTROL_TDMENABLE			(1u << 20)
-#define DSS_DISPC_CONTROL_TDMPARALLELMODE(_pm)		((_pm) << 21)
-#define DSS_DISPC_CONTROL_TDMCYCLEFORMAT(_cf)		((_cf) << 23)
-#define DSS_DISPC_CONTROL_TDMUNUSEDBITS(_ub)		((_ub) << 25)
-#define DSS_DISPC_CONTROL_PCKFREEENABLE		(1u << 27)
-#define DSS_DISPC_CONTROL_LCDENABLESIGNAL		(1u << 28)
-#define DSS_DISPC_CONTROL_LCDENABLEPOL			(1u << 29)
-#define DSS_DISPC_CONTROL_SPATIALTEMPD(_df)		((_df) << 30)
-
-#define DSS_DISPC_POL_FREQ_IVS				(1u << 12)
-#define DSS_DISPC_POL_FREQ_IHS				(1u << 13)
-#define DSS_DISPC_POL_FREQ_IPC				(1u << 14)
-#define DSS_DISPC_POL_FREQ_IEO				(1u << 15)
-#define DSS_DISPC_POL_FREQ_RF				(1u << 16)
-#define DSS_DISPC_POL_FREQ_ONOFF			(1u << 17)
-
-#define DSS_DISPC_TIMING_H_HSW(_hsw)			((_hsw) << 0)
-#define DSS_DISPC_TIMING_H_HFP(_hfp)			((_hfp) << 8)
-#define DSS_DISPC_TIMING_H_HBP(_hbp)			((_hbp) << 20)
-
-#define DSS_DISPC_TIMING_V_VSW(_vsw)			((_vsw) << 0)
-#define DSS_DISPC_TIMING_V_VFP(_vfp)			((_vfp) << 8)
-#define DSS_DISPC_TIMING_V_VBP(_vbp)			((_vbp) << 20)
-
-#define DSS_DISPC_DIVISOR_ENABLE			(1u << 0)
-#define DSS_DISPC_DIVISOR_LCD(_lcd)			((_lcd) << 16)
-
-#define DSS_DISPC_DIVISOR2_PCD(_pcd)			((_pcd) << 0)
-#define DSS_DISPC_DIVISOR2_LCD(_lcd)			((_lcd) << 16)
-
-#define DSS_DISPC_IRQSTATUS_FRAMEDONE			(1u << 0)
-#define DSS_DISPC_IRQSTATUS_FRAMEDONE2			(1u << 22)
-
-#define DSS_DSS_SYSSTATUS_RESETDONE			(1u << 0)
-
-#endif	/* H_BAREBOX_DRIVER_VIDEO_O4_REGS_H */
diff --git a/include/mach/omap/devices.h b/include/mach/omap/devices.h
index ef2e186e14..f3f2fb9837 100644
--- a/include/mach/omap/devices.h
+++ b/include/mach/omap/devices.h
@@ -4,7 +4,6 @@
 #define __MACH_OMAP_DEVICES_H
 
 #include <mach/omap/omap_hsmmc.h>
-#include <video/omap-fb.h>
 
 void omap_add_ram0(resource_size_t size);
 
@@ -12,6 +11,4 @@ void omap_add_sram0(resource_size_t base, resource_size_t size);
 
 struct device *omap_add_uart(int id, unsigned long base);
 
-struct device *omap_add_display(struct omapfb_platform_data *o_pdata);
-
 #endif /* __MACH_OMAP_DEVICES_H */
diff --git a/include/video/omap-fb.h b/include/video/omap-fb.h
deleted file mode 100644
index 519460f0d5..0000000000
--- a/include/video/omap-fb.h
+++ /dev/null
@@ -1,45 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#ifndef OMAP_FB_H
-#define OMAP_FB_H
-
-#include <fb.h>
-
-#define OMAP_DSS_LCD_TFT	(1u << 0)
-#define OMAP_DSS_LCD_IVS	(1u << 1)
-#define OMAP_DSS_LCD_IHS	(1u << 2)
-#define OMAP_DSS_LCD_IPC	(1u << 3)
-#define OMAP_DSS_LCD_IEO	(1u << 4)
-#define OMAP_DSS_LCD_RF	(1u << 5)
-#define OMAP_DSS_LCD_ONOFF	(1u << 6)
-
-#define OMAP_DSS_LCD_DATALINES(_l)	((_l) << 10)
-#define OMAP_DSS_LCD_DATALINES_msk	OMAP_DSS_LCD_DATALINES(3u)
-#define OMAP_DSS_LCD_DATALINES_12	OMAP_DSS_LCD_DATALINES(0u)
-#define OMAP_DSS_LCD_DATALINES_16	OMAP_DSS_LCD_DATALINES(1u)
-#define OMAP_DSS_LCD_DATALINES_18	OMAP_DSS_LCD_DATALINES(2u)
-#define OMAP_DSS_LCD_DATALINES_24	OMAP_DSS_LCD_DATALINES(3u)
-
-struct omapfb_display {
-	struct fb_videomode mode;
-
-	unsigned long config;
-
-	unsigned int power_on_delay;
-	unsigned int power_off_delay;
-};
-
-struct omapfb_platform_data {
-	struct omapfb_display const *displays;
-	size_t num_displays;
-
-	unsigned int dss_clk_hz;
-
-	unsigned int bpp;
-
-	struct resource const *screen;
-
-	void (*enable)(int p);
-};
-
-#endif /* OMAP_FB_H */
-- 
2.39.1



