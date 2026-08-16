Delivery-date: Sun, 16 Aug 2026 19:57:55 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvf7L-003pdF-0X
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 19:57:55 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6CA7D201021
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 19:57:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=W7lpyx6z;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9vyN1+5AU9pBC6GNDuGy8JNTaPqLuKwlRvcvgDZVwI8=; b=W7lpyx6zxWXAlbGHtj/d/puTGw
	YkAtzC4g+egEojoqtMAFaGiRBhqynIziDjSbhUdzs6zoIdwPtTIoFQrmlNmwT+igHGJTvm5dwkTS2
	86UE8SVtiNIDyafUAaGwvpHS649jU6Q8HFrrc5eDJ1DHCko/9OXqixCYu4ZaesU/R1tACoc5QvIgD
	0X0dEPk9jNxiDbKL05GtGoCgexp0C5VwIyIiw9PBHophQ+PgKkjjO1L0jwcJWdf75ehus4dgyiZEm
	RbcnL3BAnkcf2YzZUbyTgGK66SGvaCDBZaqHId1z9R+TACYrH/+2AR71wobeXjOx1sZ8UUXfeUC8J
	tFDnrQEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf6B-00000004wkE-34nL;
	Sun, 16 Aug 2026 17:56:43 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf64-00000004wdk-1dML
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 17:56:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id AB540201EBD;
	Sun, 16 Aug 2026 19:56:26 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-001oeP-1H;
	Sun, 16 Aug 2026 19:56:26 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-0uRY;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:22 +0200
Subject: [PATCH 02/27] video: remove the PXA framebuffer driver
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-2-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=30204;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=+4TwCtBU5vA9hV1a/xiisRCxPYBoTNJ+9GzJZOPNjDk=;
 b=FX3/B8PmRHxvBHL09HPC7Vv//G5NNyXfQvlXYdAuFRtdDN7y+OYNMaHsoiLwG6ZDDOaFufMVm
 EG/u+6lPk7nD/NZ1vycvc7dtYwOZs1m6jG7b1UMHTvCL5wu1fRonVlB
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_105636_785144_F8105B4C 
X-CRM114-Status: GOOD (  25.74  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The driver only ever worked on PXA27x, which is gone now,
   so it cannot be enabled by anything. Remove it together with the register
   definitions and the platform device helper that existed solely for i [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 58g1tkambt9xxazfeju6jgyzzmwj16mf
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 6CA7D201021

The driver only ever worked on PXA27x, which is gone now, so it cannot be
enabled by anything. Remove it together with the register definitions and
the platform device helper that existed solely for it.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-pxa/devices.c |   6 -
 drivers/video/Kconfig       |   7 -
 drivers/video/Makefile      |   1 -
 drivers/video/pxa.c         | 548 --------------------------------------------
 include/mach/pxa/devices.h  |   2 -
 include/mach/pxa/pxafb.h    |  81 -------
 include/mach/pxa/regs-lcd.h | 182 ---------------
 7 files changed, 827 deletions(-)

diff --git a/arch/arm/mach-pxa/devices.c b/arch/arm/mach-pxa/devices.c
index b5d098bd91..2f05573708 100644
--- a/arch/arm/mach-pxa/devices.c
+++ b/arch/arm/mach-pxa/devices.c
@@ -15,7 +15,6 @@
 #include <common.h>
 #include <driver.h>
 #include <mach/pxa/devices.h>
-#include <mach/pxa/pxafb.h>
 
 static inline struct device *pxa_add_device(char *name, int id, void *base,
 					      int size, void *pdata)
@@ -35,11 +34,6 @@ struct device *pxa_add_uart(void *base, int id)
 	return pxa_add_device("pxa_serial", id, base, 0x1000, NULL);
 }
 
-struct device *pxa_add_fb(void *base, struct pxafb_platform_data *pdata)
-{
-	return pxa_add_device("pxafb", -1, base, 0x1000, pdata);
-}
-
 struct device *pxa_add_mmc(void *base, int id, void *pdata)
 {
 	return pxa_add_device("pxa-mmc", id, base, 0x1000, pdata);
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 2faad19a99..c9dc765894 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -102,13 +102,6 @@ config DRIVER_VIDEO_SDL
 	depends on HAVE_LIBSDL2
 	select SDL
 
-config DRIVER_VIDEO_PXA
-	bool "PXA27x framebuffer driver"
-	depends on ARCH_PXA27X
-	help
-	  Add support for the frame buffer device found on the PXA270
-	  CPU.
-
 config DRIVER_VIDEO_BCM283X
 	bool "BCM283X framebuffer driver"
 	depends on ARCH_BCM283X
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 7b10eda0d8..ff03c63fa2 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -27,7 +27,6 @@ obj-$(CONFIG_DRIVER_VIDEO_STM32_DSI) += stm32_dsi.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX) += imx.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
 obj-$(CONFIG_DRIVER_VIDEO_LCDIF) += lcdif_drv.o lcdif_kms.o
-obj-$(CONFIG_DRIVER_VIDEO_PXA) += pxa.o
 obj-$(CONFIG_DRIVER_VIDEO_SDL) += sdl.o
 obj-$(CONFIG_DRIVER_VIDEO_BCM283X) += bcm2835.o
 obj-$(CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT) += simplefb-client.o
diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
deleted file mode 100644
index f4078b229a..0000000000
--- a/drivers/video/pxa.c
+++ /dev/null
@@ -1,548 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * Copyright (C) 2010 Marc Kleine-Budde, Pengutronix
- *
- * Derived from the linux-2.6 pxa framebuffer driver:
- *
- * Copyright (C) 1999 Eric A. Thomas.
- * Copyright (C) 2004 Jean-Frederic Clere.
- * Copyright (C) 2004 Ian Campbell.
- * Copyright (C) 2004 Jeff Lackey.
- * Based on sa1100fb.c Copyright (C) 1999 Eric A. Thomas
- *   which in turn is:
- * Based on acornfb.c Copyright (C) Russell King.
- *
- */
-
-#include <common.h>
-#include <dma.h>
-#include <driver.h>
-#include <errno.h>
-#include <fb.h>
-#include <init.h>
-#include <malloc.h>
-#include <linux/err.h>
-
-#include <mach/pxa/clock.h>
-#include <mach/pxa/pxa-regs.h>
-#include <mach/pxa/regs-lcd.h>
-#include <mach/pxa/pxafb.h>
-
-#include <asm/io.h>
-#include <linux/math64.h>
-
-/* PXA LCD DMA descriptor */
-struct pxafb_dma_descriptor {
-	unsigned int fdadr;
-	unsigned int fsadr;
-	unsigned int fidr;
-	unsigned int ldcmd;
-};
-
-enum {
-	PAL_NONE	= -1,
-	PAL_BASE	= 0,
-	PAL_MAX,
-};
-
-enum {
-	DMA_BASE	= 0,
-	DMA_UPPER	= 0,
-	DMA_LOWER	= 1,
-	DMA_MAX,
-};
-
-struct pxafb_dma_buff {
-	struct pxafb_dma_descriptor dma_desc[DMA_MAX * 2];
-};
-
-struct pxafb_info {
-	void __iomem		*regs;
-
-	struct pxafb_dma_buff	*dma_buff;
-	dma_addr_t		fdadr[DMA_MAX * 2];
-
-	u32			lccr0;
-	u32			lccr3;
-	u32			lccr4;
-
-	u32			reg_lccr0;
-	u32			reg_lccr1;
-	u32			reg_lccr2;
-	u32			reg_lccr3;
-	u32			reg_lccr4;
-
-	struct pxafb_videomode	*mode;
-	struct fb_info		info;
-	struct device		*dev;
-
-	void			(*lcd_power)(int);
-	void			(*backlight_power)(int);
-};
-
-#define info_to_pxafb_info(_info)	container_of(_info, struct pxafb_info, info)
-
-static inline unsigned long
-lcd_readl(struct pxafb_info *fbi, unsigned int off)
-{
-	return __raw_readl(fbi->regs + off);
-}
-
-static inline void
-lcd_writel(struct pxafb_info *fbi, unsigned int off, unsigned long val)
-{
-	__raw_writel(val, fbi->regs + off);
-}
-
-static inline void pxafb_backlight_power(struct pxafb_info *fbi, int on)
-{
-	pr_debug("pxafb: backlight o%s\n", on ? "n" : "ff");
-
-	if (fbi->backlight_power)
-		fbi->backlight_power(on);
-}
-
-static inline void pxafb_lcd_power(struct pxafb_info *fbi, int on)
-{
-	pr_debug("pxafb: LCD power o%s\n", on ? "n" : "ff");
-
-	if (fbi->lcd_power)
-		fbi->lcd_power(on);
-}
-
-static void pxafb_enable_controller(struct fb_info *info)
-{
-	struct pxafb_info *fbi = info_to_pxafb_info(info);
-
-	pr_debug("pxafb: Enabling LCD controller\n");
-	pr_debug("fdadr0 0x%08x\n", (unsigned int) fbi->fdadr[0]);
-	pr_debug("fdadr1 0x%08x\n", (unsigned int) fbi->fdadr[1]);
-	pr_debug("reg_lccr0 0x%08x\n", (unsigned int) fbi->reg_lccr0);
-	pr_debug("reg_lccr1 0x%08x\n", (unsigned int) fbi->reg_lccr1);
-	pr_debug("reg_lccr2 0x%08x\n", (unsigned int) fbi->reg_lccr2);
-	pr_debug("reg_lccr3 0x%08x\n", (unsigned int) fbi->reg_lccr3);
-	pr_debug("dma_desc  0x%08x\n", (unsigned int) &fbi->dma_buff->dma_desc[DMA_BASE]);
-
-	/* enable LCD controller clock */
-	CKEN |= CKEN_LCD;
-
-	if (fbi->lccr0 & LCCR0_LCDT)
-		return;
-
-	/* Sequence from 11.7.10 */
-	lcd_writel(fbi, LCCR4, fbi->reg_lccr4);
-	lcd_writel(fbi, LCCR3, fbi->reg_lccr3);
-	lcd_writel(fbi, LCCR2, fbi->reg_lccr2);
-	lcd_writel(fbi, LCCR1, fbi->reg_lccr1);
-	lcd_writel(fbi, LCCR0, fbi->reg_lccr0 & ~LCCR0_ENB);
-
-	lcd_writel(fbi, FDADR0, fbi->fdadr[0]);
-	lcd_writel(fbi, FDADR1, fbi->fdadr[1]);
-	lcd_writel(fbi, LCCR0, fbi->reg_lccr0 | LCCR0_ENB);
-
-	pxafb_lcd_power(fbi, 1);
-	pxafb_backlight_power(fbi, 1);
-}
-
-static void pxafb_disable_controller(struct fb_info *info)
-{
-	struct pxafb_info *fbi = info_to_pxafb_info(info);
-	u32 lccr0;
-
-	pxafb_backlight_power(fbi, 0);
-	pxafb_lcd_power(fbi, 0);
-
-	/* Clear LCD Status Register */
-	lcd_writel(fbi, LCSR, 0xffffffff);
-
-	lccr0 = lcd_readl(fbi, LCCR0) & ~LCCR0_LDM;
-	lcd_writel(fbi, LCCR0, lccr0);
-	lcd_writel(fbi, LCCR0, lccr0 | LCCR0_DIS);
-
-	/* disable LCD controller clock */
-	CKEN &= ~CKEN_LCD;
-}
-
-static int setup_frame_dma(struct pxafb_info *fbi, int dma, int pal,
-			   unsigned long start, size_t size)
-{
-	struct pxafb_dma_descriptor *dma_desc;
-
-	if (dma < 0 || dma >= DMA_MAX * 2)
-		return -EINVAL;
-
-	dma_desc = &fbi->dma_buff->dma_desc[dma];
-
-	dma_desc->fsadr = start;
-	dma_desc->fidr  = 0;
-	dma_desc->ldcmd = size;
-
-	if (pal < 0 || pal >= PAL_MAX * 2) {
-		dma_desc->fdadr = virt_to_phys(dma_desc);
-		fbi->fdadr[dma] = virt_to_phys(dma_desc);
-	} else {
-#if 0
-		struct pxafb_dma_descriptor *pal_desc;
-
-		pal_desc = &fbi->dma_buff->pal_desc[pal];
-
-		pal_desc->fsadr = fbi->dma_buff_phys + pal * PALETTE_SIZE;
-		pal_desc->fidr = 0;
-
-		if ((fbi->lccr4 & LCCR4_PAL_FOR_MASK) == LCCR4_PAL_FOR_0)
-			pal_desc->ldcmd = fbi->palette_size * sizeof(u16);
-		else
-			pal_desc->ldcmd = fbi->palette_size * sizeof(u32);
-
-		pal_desc->ldcmd |= LDCMD_PAL;
-
-		/* flip back and forth between palette and frame buffer */
-		pal_desc->fdadr = fbi->dma_buff_phys + dma_desc_off;
-		dma_desc->fdadr = fbi->dma_buff_phys + pal_desc_off;
-		fbi->fdadr[dma] = fbi->dma_buff_phys + dma_desc_off;
-#endif
-	}
-
-	return 0;
-}
-
-static void setup_base_frame(struct pxafb_info *fbi)
-{
-	struct pxafb_videomode *mode = fbi->mode;
-	struct fb_info *info = &fbi->info;
-	int nbytes, dma, pal, bpp = info->bits_per_pixel;
-	unsigned long line_length, offset;
-
-	dma = DMA_BASE;
-	pal = (bpp >= 16) ? PAL_NONE : PAL_BASE;
-
-	line_length = info->xres * info->bits_per_pixel / 8;
-
-	nbytes = line_length * mode->mode.yres;
-	offset = virt_to_phys(info->screen_base);
-
-	if (fbi->lccr0 & LCCR0_SDS) {
-		nbytes = nbytes / 2;
-		setup_frame_dma(fbi, dma + 1, PAL_NONE, offset + nbytes, nbytes);
-	}
-
-	setup_frame_dma(fbi, dma, pal, offset, nbytes);
-}
-
-/*
- * Calculate the PCD value from the clock rate (in picoseconds).
- * We take account of the PPCR clock setting.
- * From PXA Developer's Manual:
- *
- *   PixelClock =      LCLK
- *                -------------
- *                2 ( PCD + 1 )
- *
- *   PCD =      LCLK
- *         ------------- - 1
- *         2(PixelClock)
- *
- * Where:
- *   LCLK = LCD/Memory Clock
- *   PCD = LCCR3[7:0]
- *
- * PixelClock here is in Hz while the pixclock argument given is the
- * period in picoseconds. Hence PixelClock = 1 / ( pixclock * 10^-12 )
- *
- * The function get_lclk_frequency_10khz returns LCLK in units of
- * 10khz. Calling the result of this function lclk gives us the
- * following
- *
- *    PCD = (lclk * 10^4 ) * ( pixclock * 10^-12 )
- *          -------------------------------------- - 1
- *                          2
- *
- * Factoring the 10^4 and 10^-12 out gives 10^-8 == 1 / 100000000 as used below.
- */
-static inline unsigned int get_pcd(struct pxafb_info *fbi,
-				   unsigned int pixclock)
-{
-	unsigned long long pcd;
-
-	/*
-	 * FIXME: Need to take into account Double Pixel Clock mode
-	 * (DPC) bit? or perhaps set it based on the various clock
-	 * speeds
-	 */
-	pcd = (unsigned long long)(pxa_get_lcdclk() / 10000);
-	pcd *= pixclock;
-	do_div(pcd, 100000000 * 2);
-	/* no need for this, since we should subtract 1 anyway. they cancel */
-	/* pcd += 1; */ /* make up for integer math truncations */
-	return (unsigned int)pcd;
-}
-
-static void setup_parallel_timing(struct pxafb_info *fbi)
-{
-	struct fb_info *info = &fbi->info;
-	struct fb_videomode *mode = info->mode;
-
-	unsigned int lines_per_panel, pcd = get_pcd(fbi, mode->pixclock.ps);
-
-	fbi->reg_lccr1 =
-		LCCR1_DisWdth(mode->xres) +
-		LCCR1_HorSnchWdth(mode->hsync_len) +
-		LCCR1_BegLnDel(mode->left_margin) +
-		LCCR1_EndLnDel(mode->right_margin);
-
-	/*
-	 * If we have a dual scan LCD, we need to halve
-	 * the YRES parameter.
-	 */
-	lines_per_panel = mode->yres;
-	if ((fbi->lccr0 & LCCR0_SDS) == LCCR0_Dual)
-		lines_per_panel /= 2;
-
-	fbi->reg_lccr2 =
-		LCCR2_DisHght(lines_per_panel) +
-		LCCR2_VrtSnchWdth(mode->vsync_len) +
-		LCCR2_BegFrmDel(mode->upper_margin) +
-		LCCR2_EndFrmDel(mode->lower_margin);
-
-	fbi->reg_lccr3 = fbi->lccr3 |
-		(mode->sync & FB_SYNC_HOR_HIGH_ACT ?
-		 LCCR3_HorSnchH : LCCR3_HorSnchL) |
-		(mode->sync & FB_SYNC_VERT_HIGH_ACT ?
-		 LCCR3_VrtSnchH : LCCR3_VrtSnchL);
-
-	if (pcd)
-		fbi->reg_lccr3 |= LCCR3_PixClkDiv(pcd);
-}
-
-/* calculate pixel depth, transparency bit included, >=16bpp formats _only_ */
-static inline int var_to_depth(struct fb_info *info)
-{
-	return info->red.length + info->green.length +
-		info->blue.length + info->transp.length;
-}
-
-/* calculate 4-bit BPP value for LCCR3 and OVLxC1 */
-static int pxafb_var_to_bpp(struct fb_info *info)
-{
-	int bpp = -EINVAL;
-
-	switch (info->bits_per_pixel) {
-	case 1:  bpp = 0; break;
-	case 2:  bpp = 1; break;
-	case 4:  bpp = 2; break;
-	case 8:  bpp = 3; break;
-	case 16: bpp = 4; break;
-	case 24:
-		switch (var_to_depth(info)) {
-		case 18: bpp = 6; break; /* 18-bits/pixel packed */
-		case 19: bpp = 8; break; /* 19-bits/pixel packed */
-		case 24: bpp = 9; break;
-		}
-		break;
-	case 32:
-		switch (var_to_depth(info)) {
-		case 18: bpp = 5; break; /* 18-bits/pixel unpacked */
-		case 19: bpp = 7; break; /* 19-bits/pixel unpacked */
-		case 25: bpp = 10; break;
-		}
-		break;
-	}
-	return bpp;
-}
-
-/*
- *  pxafb_var_to_lccr3():
- *    Convert a bits per pixel value to the correct bit pattern for LCCR3
- *
- *  NOTE: for PXA27x with overlays support, the LCCR3_PDFOR_x bits have an
- *  implication of the acutal use of transparency bit,  which we handle it
- *  here separatedly. See PXA27x Developer's Manual, Section <<7.4.6 Pixel
- *  Formats>> for the valid combination of PDFOR, PAL_FOR for various BPP.
- *
- *  Transparency for palette pixel formats is not supported at the moment.
- */
-static uint32_t pxafb_var_to_lccr3(struct fb_info *info)
-{
-	int bpp = pxafb_var_to_bpp(info);
-	uint32_t lccr3;
-
-	if (bpp < 0)
-		return 0;
-
-	lccr3 = LCCR3_BPP(bpp);
-
-	switch (var_to_depth(info)) {
-	case 16: lccr3 |= info->transp.length ? LCCR3_PDFOR_3 : 0; break;
-	case 18: lccr3 |= LCCR3_PDFOR_3; break;
-	case 24: lccr3 |= info->transp.length ? LCCR3_PDFOR_2 : LCCR3_PDFOR_3;
-		 break;
-	case 19:
-	case 25: lccr3 |= LCCR3_PDFOR_0; break;
-	}
-	return lccr3;
-}
-
-/*
- * Configures LCD Controller based on entries in fbi parameter.
- */
-static int pxafb_activate_var(struct pxafb_info *fbi)
-{
-	struct fb_info *info = &fbi->info;
-
-	setup_parallel_timing(fbi);
-
-	setup_base_frame(fbi);
-
-	fbi->reg_lccr0 = fbi->lccr0 |
-		(LCCR0_LDM | LCCR0_SFM | LCCR0_IUM | LCCR0_EFM |
-		 LCCR0_QDM | LCCR0_BM  | LCCR0_OUM);
-
-	fbi->reg_lccr3 |= pxafb_var_to_lccr3(info);
-
-	fbi->reg_lccr4 = lcd_readl(fbi, LCCR4) & ~LCCR4_PAL_FOR_MASK;
-	fbi->reg_lccr4 |= (fbi->lccr4 & LCCR4_PAL_FOR_MASK);
-
-	return 0;
-}
-
-#define SET_PIXFMT(v, r, g, b)					\
-({								\
-	(v)->blue.length   = (b); (v)->blue.offset = 0;		\
-	(v)->green.length  = (g); (v)->green.offset = (b);	\
-	(v)->red.length    = (r); (v)->red.offset = (b) + (g);	\
-})
-
-/*
- * set the RGBT bitfields of fb_var_screeninf according to
- * var->bits_per_pixel and given depth
- */
-static void pxafb_set_pixfmt(struct fb_info *info)
-{
-	if (info->bits_per_pixel < 16) {
-		/* indexed pixel formats */
-		info->red.offset    = 0; info->red.length    = 8;
-		info->green.offset  = 0; info->green.length  = 8;
-		info->blue.offset   = 0; info->blue.length   = 8;
-		info->transp.offset = 0; info->transp.length = 8;
-	}
-
-	switch (info->bits_per_pixel) {
-	case 16: SET_PIXFMT(info, 5, 6, 5); break;	/* RGB565 */
-	case 18: SET_PIXFMT(info, 6, 6, 6); break;	/* RGB666 */
-	case 24: SET_PIXFMT(info, 8, 8, 8); break;	/* RGB888 */
-	}
-}
-
-static void pxafb_decode_mach_info(struct pxafb_info *fbi,
-				   struct pxafb_platform_data *inf)
-{
-	unsigned int lcd_conn = inf->lcd_conn;
-
-	switch (lcd_conn & LCD_TYPE_MASK) {
-	case LCD_TYPE_MONO_STN:
-		fbi->lccr0 = LCCR0_CMS;
-		break;
-	case LCD_TYPE_MONO_DSTN:
-		fbi->lccr0 = LCCR0_CMS | LCCR0_SDS;
-		break;
-	case LCD_TYPE_COLOR_STN:
-		fbi->lccr0 = 0;
-		break;
-	case LCD_TYPE_COLOR_DSTN:
-		fbi->lccr0 = LCCR0_SDS;
-		break;
-	case LCD_TYPE_COLOR_TFT:
-		fbi->lccr0 = LCCR0_PAS;
-		break;
-	case LCD_TYPE_SMART_PANEL:
-		fbi->lccr0 = LCCR0_LCDT | LCCR0_PAS;
-		break;
-	}
-
-	if (lcd_conn == LCD_MONO_STN_8BPP)
-		fbi->lccr0 |= LCCR0_DPD;
-
-	fbi->lccr0 |= (lcd_conn & LCD_ALTERNATE_MAPPING) ? LCCR0_LDDALT : 0;
-
-	fbi->lccr3 = LCCR3_Acb((inf->lcd_conn >> 10) & 0xff) |
-		(lcd_conn & LCD_BIAS_ACTIVE_LOW) ? LCCR3_OEP : 0 |
-		(lcd_conn & LCD_PCLK_EDGE_FALL)  ? LCCR3_PCP : 0;
-
-	pxafb_set_pixfmt(&fbi->info);
-}
-
-static struct fb_ops pxafb_ops = {
-	.fb_enable	= pxafb_enable_controller,
-	.fb_disable	= pxafb_disable_controller,
-};
-
-static int pxafb_probe(struct device *dev)
-{
-	struct resource *iores;
-	struct pxafb_platform_data *pdata = dev->platform_data;
-	struct pxafb_info *fbi;
-	struct fb_info *info;
-	int ret;
-
-	if (!pdata)
-		return -ENODEV;
-
-	fbi = xzalloc(sizeof(*fbi));
-	info = &fbi->info;
-
-	fbi->mode = pdata->mode;
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	fbi->regs = IOMEM(iores->start);
-
-	fbi->dev = dev;
-	fbi->lcd_power = pdata->lcd_power;
-	fbi->backlight_power = pdata->backlight_power;
-	info->mode = &pdata->mode->mode;
-	info->fbops = &pxafb_ops;
-
-	info->xres = pdata->mode->mode.xres;
-	info->yres = pdata->mode->mode.yres;
-	info->bits_per_pixel = pdata->mode->bpp;
-
-	pxafb_decode_mach_info(fbi, pdata);
-
-	dev_info(dev, "PXA Framebuffer driver\n");
-
-	if (pdata->framebuffer)
-		fbi->info.screen_base = pdata->framebuffer;
-	else
-		fbi->info.screen_base =
-			PTR_ALIGN(dma_alloc_coherent(DMA_DEVICE_BROKEN,
-						     info->xres * info->yres *
-						     (info->bits_per_pixel >> 3) + PAGE_SIZE,
-						     DMA_ADDRESS_BROKEN),
-				  PAGE_SIZE);
-
-	if (!fbi->info.screen_base)
-		return -ENOMEM;
-
-	fbi->dma_buff = PTR_ALIGN(dma_alloc_coherent(DMA_DEVICE_BROKEN,
-						     sizeof(struct pxafb_dma_buff) + 16,
-				DMA_ADDRESS_BROKEN), 16);
-	if (!fbi->dma_buff)
-		return -ENOMEM;
-
-	pxafb_activate_var(fbi);
-
-	fbi->info.dev.parent = dev;
-	ret = register_framebuffer(&fbi->info);
-	if (ret < 0) {
-		dev_err(dev, "failed to register framebuffer\n");
-		return ret;
-	}
-
-	return 0;
-}
-
-static struct driver pxafb_driver = {
-	.name	= "pxafb",
-	.probe	= pxafb_probe,
-};
-device_platform_driver(pxafb_driver);
diff --git a/include/mach/pxa/devices.h b/include/mach/pxa/devices.h
index e4d1d07091..e7aeeb35c6 100644
--- a/include/mach/pxa/devices.h
+++ b/include/mach/pxa/devices.h
@@ -13,11 +13,9 @@
  *
  */
 #include <i2c/i2c.h>
-#include <mach/pxa/pxafb.h>
 
 struct device *pxa_add_i2c(void *base, int id,
 			     struct i2c_platform_data *pdata);
 struct device *pxa_add_uart(void *base, int id);
-struct device *pxa_add_fb(void *base, struct pxafb_platform_data *pdata);
 struct device *pxa_add_mmc(void *base, int id, void *pdata);
 struct device *pxa_add_pwm(void *base, int id);
diff --git a/include/mach/pxa/pxafb.h b/include/mach/pxa/pxafb.h
deleted file mode 100644
index 44ac3237a3..0000000000
--- a/include/mach/pxa/pxafb.h
+++ /dev/null
@@ -1,81 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-/*
- * This structure describes the machine which we are running on.
- */
-#ifndef _PXAFB_
-#define _PXAFB_
-
-#include <fb.h>
-
-/*
- * Supported LCD connections
- *
- * bits 0 - 3: for LCD panel type:
- *
- *   STN  - for passive matrix
- *   DSTN - for dual scan passive matrix
- *   TFT  - for active matrix
- *
- * bits 4 - 9 : for bus width
- * bits 10-17 : for AC Bias Pin Frequency
- * bit     18 : for output enable polarity
- * bit     19 : for pixel clock edge
- * bit     20 : for output pixel format when base is RGBT16
- */
-#define LCD_CONN_TYPE(_x)	((_x) & 0x0f)
-#define LCD_CONN_WIDTH(_x)	(((_x) >> 4) & 0x1f)
-
-#define LCD_TYPE_MASK		0xf
-#define LCD_TYPE_UNKNOWN	0
-#define LCD_TYPE_MONO_STN	1
-#define LCD_TYPE_MONO_DSTN	2
-#define LCD_TYPE_COLOR_STN	3
-#define LCD_TYPE_COLOR_DSTN	4
-#define LCD_TYPE_COLOR_TFT	5
-#define LCD_TYPE_SMART_PANEL	6
-#define LCD_TYPE_MAX		7
-
-#define LCD_MONO_STN_4BPP	((4  << 4) | LCD_TYPE_MONO_STN)
-#define LCD_MONO_STN_8BPP	((8  << 4) | LCD_TYPE_MONO_STN)
-#define LCD_MONO_DSTN_8BPP	((8  << 4) | LCD_TYPE_MONO_DSTN)
-#define LCD_COLOR_STN_8BPP	((8  << 4) | LCD_TYPE_COLOR_STN)
-#define LCD_COLOR_DSTN_16BPP	((16 << 4) | LCD_TYPE_COLOR_DSTN)
-#define LCD_COLOR_TFT_8BPP	((8  << 4) | LCD_TYPE_COLOR_TFT)
-#define LCD_COLOR_TFT_16BPP	((16 << 4) | LCD_TYPE_COLOR_TFT)
-#define LCD_COLOR_TFT_18BPP	((18 << 4) | LCD_TYPE_COLOR_TFT)
-#define LCD_SMART_PANEL_8BPP	((8  << 4) | LCD_TYPE_SMART_PANEL)
-#define LCD_SMART_PANEL_16BPP	((16 << 4) | LCD_TYPE_SMART_PANEL)
-#define LCD_SMART_PANEL_18BPP	((18 << 4) | LCD_TYPE_SMART_PANEL)
-
-#define LCD_AC_BIAS_FREQ(x)	(((x) & 0xff) << 10)
-#define LCD_BIAS_ACTIVE_HIGH	(0 << 18)
-#define LCD_BIAS_ACTIVE_LOW	(1 << 18)
-#define LCD_PCLK_EDGE_RISE	(0 << 19)
-#define LCD_PCLK_EDGE_FALL	(1 << 19)
-#define LCD_ALTERNATE_MAPPING	(1 << 20)
-
-struct pxafb_videomode {
-	struct fb_videomode	mode;
-	u8			bpp;
-};
-
-/**
- * Define relevant framebuffer information
- */
-struct pxafb_platform_data {
-	struct pxafb_videomode	*mode;
-	unsigned int		lcd_conn;
-
-	/** force a memory area to be used, else NULL for dynamic allocation */
-	void			*framebuffer;
-
-	void			(*lcd_power)(int);
-	void			(*backlight_power)(int);
-};
-
-/**
- * @file
- * @brief PXA related framebuffer declarations
- */
-#endif
diff --git a/include/mach/pxa/regs-lcd.h b/include/mach/pxa/regs-lcd.h
deleted file mode 100644
index 4d473f23ae..0000000000
--- a/include/mach/pxa/regs-lcd.h
+++ /dev/null
@@ -1,182 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#ifndef __ASM_ARCH_REGS_LCD_H
-#define __ASM_ARCH_REGS_LCD_H
-
-/*
- * LCD Controller Registers and Bits Definitions
- */
-#define LCCR0		(0x000)	/* LCD Controller Control Register 0 */
-#define LCCR1		(0x004)	/* LCD Controller Control Register 1 */
-#define LCCR2		(0x008)	/* LCD Controller Control Register 2 */
-#define LCCR3		(0x00C)	/* LCD Controller Control Register 3 */
-#define LCCR4		(0x010)	/* LCD Controller Control Register 4 */
-#define LCCR5		(0x014)	/* LCD Controller Control Register 5 */
-#define LCSR		(0x038)	/* LCD Controller Status Register 0 */
-#define LCSR1		(0x034)	/* LCD Controller Status Register 1 */
-#define LIIDR		(0x03C)	/* LCD Controller Interrupt ID Register */
-#define TMEDRGBR	(0x040)	/* TMED RGB Seed Register */
-#define TMEDCR		(0x044)	/* TMED Control Register */
-
-#define FBR0		(0x020)	/* DMA Channel 0 Frame Branch Register */
-#define FBR1		(0x024)	/* DMA Channel 1 Frame Branch Register */
-#define FBR2		(0x028) /* DMA Channel 2 Frame Branch Register */
-#define FBR3		(0x02C) /* DMA Channel 2 Frame Branch Register */
-#define FBR4		(0x030) /* DMA Channel 2 Frame Branch Register */
-#define FBR5		(0x110) /* DMA Channel 2 Frame Branch Register */
-#define FBR6		(0x114) /* DMA Channel 2 Frame Branch Register */
-
-#define OVL1C1		(0x050)	/* Overlay 1 Control Register 1 */
-#define OVL1C2		(0x060)	/* Overlay 1 Control Register 2 */
-#define OVL2C1		(0x070)	/* Overlay 2 Control Register 1 */
-#define OVL2C2		(0x080)	/* Overlay 2 Control Register 2 */
-
-#define CMDCR		(0x100)	/* Command Control Register */
-#define PRSR		(0x104)	/* Panel Read Status Register */
-
-#define LCCR3_BPP(x)	((((x) & 0x7) << 24) | (((x) & 0x8) ? (1 << 29) : 0))
-
-#define LCCR3_PDFOR_0	(0 << 30)
-#define LCCR3_PDFOR_1	(1 << 30)
-#define LCCR3_PDFOR_2	(2 << 30)
-#define LCCR3_PDFOR_3	(3 << 30)
-
-#define LCCR4_PAL_FOR_0	(0 << 15)
-#define LCCR4_PAL_FOR_1	(1 << 15)
-#define LCCR4_PAL_FOR_2	(2 << 15)
-#define LCCR4_PAL_FOR_3	(3 << 15)
-#define LCCR4_PAL_FOR_MASK	(3 << 15)
-
-#define FDADR0		(0x200)	/* DMA Channel 0 Frame Descriptor Address Register */
-#define FDADR1		(0x210)	/* DMA Channel 1 Frame Descriptor Address Register */
-#define FDADR2		(0x220)	/* DMA Channel 2 Frame Descriptor Address Register */
-#define FDADR3		(0x230)	/* DMA Channel 3 Frame Descriptor Address Register */
-#define FDADR4		(0x240)	/* DMA Channel 4 Frame Descriptor Address Register */
-#define FDADR5		(0x250)	/* DMA Channel 5 Frame Descriptor Address Register */
-#define FDADR6		(0x260) /* DMA Channel 6 Frame Descriptor Address Register */
-
-#define LCCR0_ENB	(1 << 0)	/* LCD Controller enable */
-#define LCCR0_CMS	(1 << 1)	/* Color/Monochrome Display Select */
-#define LCCR0_Color	(LCCR0_CMS*0)	/*  Color display */
-#define LCCR0_Mono	(LCCR0_CMS*1)	/*  Monochrome display */
-#define LCCR0_SDS	(1 << 2)	/* Single/Dual Panel Display Select */
-#define LCCR0_Sngl	(LCCR0_SDS*0)	/*  Single panel display */
-#define LCCR0_Dual	(LCCR0_SDS*1)	/*  Dual panel display */
-
-#define LCCR0_LDM	(1 << 3)	/* LCD Disable Done Mask */
-#define LCCR0_SFM	(1 << 4)	/* Start of frame mask */
-#define LCCR0_IUM	(1 << 5)	/* Input FIFO underrun mask */
-#define LCCR0_EFM	(1 << 6)	/* End of Frame mask */
-#define LCCR0_PAS	(1 << 7)	/* Passive/Active display Select */
-#define LCCR0_Pas	(LCCR0_PAS*0)	/*  Passive display (STN) */
-#define LCCR0_Act	(LCCR0_PAS*1)	/*  Active display (TFT) */
-#define LCCR0_DPD	(1 << 9)	/* Double Pixel Data (monochrome) */
-#define LCCR0_4PixMono	(LCCR0_DPD*0)	/*  4-Pixel/clock Monochrome display */
-#define LCCR0_8PixMono	(LCCR0_DPD*1)	/*  8-Pixel/clock Monochrome display */
-#define LCCR0_DIS	(1 << 10)	/* LCD Disable */
-#define LCCR0_QDM	(1 << 11)	/* LCD Quick Disable mask */
-#define LCCR0_PDD	(0xff << 12)	/* Palette DMA request delay */
-#define LCCR0_PDD_S	12
-#define LCCR0_BM	(1 << 20)	/* Branch mask */
-#define LCCR0_OUM	(1 << 21)	/* Output FIFO underrun mask */
-#define LCCR0_LCDT	(1 << 22)	/* LCD panel type */
-#define LCCR0_RDSTM	(1 << 23)	/* Read status interrupt mask */
-#define LCCR0_CMDIM	(1 << 24)	/* Command interrupt mask */
-#define LCCR0_OUC	(1 << 25)	/* Overlay Underlay control bit */
-#define LCCR0_LDDALT	(1 << 26)	/* LDD alternate mapping control */
-
-#define LCCR1_DisWdth(Pixel)	(((Pixel) - 1) << 0)	/* Pixels Per Line - 1 */
-#define LCCR1_HorSnchWdth(Tpix)	(((Tpix) - 1) << 10)	/* Horizontal Synchronization */
-#define LCCR1_EndLnDel(Tpix)	(((Tpix) - 1) << 16)	/* End-of-Line pixel clock Wait - 1 */
-#define LCCR1_BegLnDel(Tpix)	(((Tpix) - 1) << 24)	/* Beginning-of-Line pixel clock */
-
-#define LCCR2_DisHght(Line)	(((Line) - 1) << 0)	/* Line Per Panel - 1 */
-#define LCCR2_VrtSnchWdth(Tln)	(((Tln) - 1) << 10)	/* Vertical Synchronization pulse - 1 */
-#define LCCR2_EndFrmDel(Tln)	((Tln) << 16)	/* End-of-Frame line clock Wait */
-#define LCCR2_BegFrmDel(Tln)	((Tln) << 24)	/* Beginning-of-Frame line clock */
-
-#define LCCR3_API	(0xf << 16)	/* AC Bias pin trasitions per interrupt */
-#define LCCR3_API_S	16
-#define LCCR3_VSP	(1 << 20)	/* vertical sync polarity */
-#define LCCR3_HSP	(1 << 21)	/* horizontal sync polarity */
-#define LCCR3_PCP	(1 << 22)	/* Pixel Clock Polarity (L_PCLK) */
-#define LCCR3_PixRsEdg	(LCCR3_PCP*0)	/*  Pixel clock Rising-Edge */
-#define LCCR3_PixFlEdg	(LCCR3_PCP*1)	/*  Pixel clock Falling-Edge */
-
-#define LCCR3_OEP	(1 << 23)	/* Output Enable Polarity */
-#define LCCR3_OutEnH	(LCCR3_OEP*0)	/*  Output Enable active High */
-#define LCCR3_OutEnL	(LCCR3_OEP*1)	/*  Output Enable active Low */
-
-#define LCCR3_DPC	(1 << 27)	/* double pixel clock mode */
-#define LCCR3_PixClkDiv(Div)	((Div) << 0)	/* Pixel Clock Divisor */
-
-#define LCCR3_Acb(Acb)	((Acb) << 8)	/* AC Bias */
-
-#define LCCR3_HorSnchH	(LCCR3_HSP*0)	/*  HSP Active High */
-#define LCCR3_HorSnchL	(LCCR3_HSP*1)	/*  HSP Active Low */
-
-#define LCCR3_VrtSnchH	(LCCR3_VSP*0)	/*  VSP Active High */
-#define LCCR3_VrtSnchL	(LCCR3_VSP*1)	/*  VSP Active Low */
-
-#define LCCR5_IUM(x)	(1 << ((x) + 23)) /* input underrun mask */
-#define LCCR5_BSM(x)	(1 << ((x) + 15)) /* branch mask */
-#define LCCR5_EOFM(x)	(1 << ((x) + 7))  /* end of frame mask */
-#define LCCR5_SOFM(x)	(1 << ((x) + 0))  /* start of frame mask */
-
-#define LCSR_LDD	(1 << 0)	/* LCD Disable Done */
-#define LCSR_SOF	(1 << 1)	/* Start of frame */
-#define LCSR_BER	(1 << 2)	/* Bus error */
-#define LCSR_ABC	(1 << 3)	/* AC Bias count */
-#define LCSR_IUL	(1 << 4)	/* input FIFO underrun Lower panel */
-#define LCSR_IUU	(1 << 5)	/* input FIFO underrun Upper panel */
-#define LCSR_OU		(1 << 6)	/* output FIFO underrun */
-#define LCSR_QD		(1 << 7)	/* quick disable */
-#define LCSR_EOF	(1 << 8)	/* end of frame */
-#define LCSR_BS		(1 << 9)	/* branch status */
-#define LCSR_SINT	(1 << 10)	/* subsequent interrupt */
-#define LCSR_RD_ST	(1 << 11)	/* read status */
-#define LCSR_CMD_INT	(1 << 12)	/* command interrupt */
-
-#define LCSR1_IU(x)	(1 << ((x) + 23)) /* Input FIFO underrun */
-#define LCSR1_BS(x)	(1 << ((x) + 15)) /* Branch Status */
-#define LCSR1_EOF(x)	(1 << ((x) + 7))  /* End of Frame Status */
-#define LCSR1_SOF(x)	(1 << ((x) - 1))  /* Start of Frame Status */
-
-#define LDCMD_PAL	(1 << 26)	/* instructs DMA to load palette buffer */
-#define LDCMD_EOFINT	(1 << 21)	/* End of Frame Interrupt */
-
-/* overlay control registers */
-#define OVLxC1_PPL(x)	((((x) - 1) & 0x3ff) << 0)	/* Pixels Per Line */
-#define OVLxC1_LPO(x)	((((x) - 1) & 0x3ff) << 10)	/* Number of Lines */
-#define OVLxC1_BPP(x)	(((x) & 0xf) << 20)	/* Bits Per Pixel */
-#define OVLxC1_OEN	(1 << 31)		/* Enable bit for Overlay */
-#define OVLxC2_XPOS(x)	(((x) & 0x3ff) << 0)	/* Horizontal Position */
-#define OVLxC2_YPOS(x)	(((x) & 0x3ff) << 10)	/* Vertical Position */
-#define OVL2C2_PFOR(x)	(((x) & 0x7) << 20)	/* Pixel Format */
-
-/* smartpanel related */
-#define PRSR_DATA(x)	((x) & 0xff)	/* Panel Data */
-#define PRSR_A0		(1 << 8)	/* Read Data Source */
-#define PRSR_ST_OK	(1 << 9)	/* Status OK */
-#define PRSR_CON_NT	(1 << 10)	/* Continue to Next Command */
-
-#define SMART_CMD_A0			 (0x1 << 8)
-#define SMART_CMD_READ_STATUS_REG	 (0x0 << 9)
-#define SMART_CMD_READ_FRAME_BUFFER	((0x0 << 9) | SMART_CMD_A0)
-#define SMART_CMD_WRITE_COMMAND		 (0x1 << 9)
-#define SMART_CMD_WRITE_DATA		((0x1 << 9) | SMART_CMD_A0)
-#define SMART_CMD_WRITE_FRAME		((0x2 << 9) | SMART_CMD_A0)
-#define SMART_CMD_WAIT_FOR_VSYNC	 (0x3 << 9)
-#define SMART_CMD_NOOP			 (0x4 << 9)
-#define SMART_CMD_INTERRUPT		 (0x5 << 9)
-
-#define SMART_CMD(x)	(SMART_CMD_WRITE_COMMAND | ((x) & 0xff))
-#define SMART_DAT(x)	(SMART_CMD_WRITE_DATA | ((x) & 0xff))
-
-/* SMART_DELAY() is introduced for software controlled delay primitive which
- * can be inserted between command sequences, unused command 0x6 is used here
- * and delay ranges from 0ms ~ 255ms
- */
-#define SMART_CMD_DELAY		(0x6 << 9)
-#define SMART_DELAY(ms)		(SMART_CMD_DELAY | ((ms) & 0xff))
-#endif /* __ASM_ARCH_REGS_LCD_H */

-- 
2.47.3



