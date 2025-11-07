Delivery-date: Fri, 07 Nov 2025 22:01:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHTaH-00GQ5R-07
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 22:01:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHTaF-0000aL-VQ
	for lore@pengutronix.de; Fri, 07 Nov 2025 22:01:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TbrzZisFJ1tvKpd/pGf1U9Z1B1IdqnL+Ee7TFudYNf4=; b=u0gGhLyDsI2LQ9Yq2Nnh7mKYc8
	xVzgS9syUHvhQr3+VHgQvgHOhgrSFNQvi8d6e9KjJCyed6PKs8E1TaWoCXyh9fVDR3Z9ofUY20j+N
	ydc31+xG7eMqEibs+zF5RPl1k0RFw9rstlbClY0gL2ZwEJFmfX6uVpa9ymiKn7YhuMwAbJ/p3Olz/
	RJ+xz8pcBamhxT/upSR9SaoGNIZ4rKZZII7Lpxkdzl2V9pWQxYrI60YWMDyfG7LkmHd+tHwtTGHz7
	FHfp3UF0YdUvYdG4+qotdY4elayugFzgeBdvxWBir+K0un3toXqqseHT1xSQts8IspSSvcOU49jmO
	44BZ5Utw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHTZa-000000013t2-21q9;
	Fri, 07 Nov 2025 21:00:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHTZX-000000013rL-2jqh
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 21:00:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vHTZU-00009d-7p; Fri, 07 Nov 2025 22:00:36 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  7 Nov 2025 22:00:29 +0100
Message-ID: <20251107210033.2229781-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_130039_843816_9DB2C17B 
X-CRM114-Status: GOOD (  21.04  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] video: stm: make multi-image compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unlike newer platforms, it's not possible to mix i.MX23 and i.MX28 SoC
support in the same build. The stmfb driver is used on newer SoCs
however like the i.MX6SX and i.MX8MQ/M/N, so remove the #ifdeffery in
the driver.

While at it, we also drop unused macros as well as the unused dotclk_delay.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 .../arm/boards/chumby_falconwing/falconwing.c |   1 +
 arch/arm/boards/karo-tx28/tx28-stk5.c         |   1 +
 drivers/video/Kconfig                         |   2 +-
 drivers/video/stm.c                           | 115 ++++++++++--------
 include/mach/mxs/fb.h                         |  24 ++++
 5 files changed, 93 insertions(+), 50 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 922159045540..e884c9e108bf 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -76,6 +76,7 @@ static struct imx_fb_platformdata fb_mode = {
 	.enable = chumby_fb_enable,
 	.fixed_screen = (void *)(0x40000000 + SZ_64M - MAX_FB_SIZE),
 	.fixed_screen_size = MAX_FB_SIZE,
+	.devdata = MXSFB_DEVDATA(MXSFB_V3),
 };
 
 static const uint32_t pad_setup[] = {
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index 737691d68b61..09b4e2755800 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -192,6 +192,7 @@ static struct imx_fb_platformdata tx28_fb_pdata = {
 	.fixed_screen = (void *)(0x40000000 + SZ_128M - MAX_FB_SIZE),
 	.fixed_screen_size = MAX_FB_SIZE,
 	.enable = tx28_fb_enable,
+	.devdata = MXSFB_DEVDATA(MXSFB_V4),
 };
 
 static const uint32_t tx28_starterkit_pad_setup[] = {
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 4605634bb581..192e05bd59d8 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -54,7 +54,7 @@ config DRIVER_VIDEO_IMX_IPU_OVERLAY
 
 config DRIVER_VIDEO_STM
 	bool "i.MX23/28 framebuffer driver"
-	depends on ARCH_MXS
+	depends on ARCH_MXS || COMPILE_TEST
 	help
 	  Say 'Y' here to enable framebuffer and splash screen support for
 	  i.MX23 and i.MX28 based systems.
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 86510b939790..c5dadb823251 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -8,6 +8,9 @@
  * Copyright 2008-2009 Freescale Semiconductor, Inc. All Rights Reserved.
  * Copyright 2008 Embedded Alley Solutions, Inc All Rights Reserved.
  */
+
+#define pr_fmt(fmt) "stmfb: " fmt
+
 #include <common.h>
 #include <init.h>
 #include <driver.h>
@@ -47,24 +50,16 @@
 # define GET_BYTE_PACKAGING(x) (((x) >> 16) & 0xf)
 # define CTRL1_RESET (1 << 0)
 
-#ifdef CONFIG_ARCH_IMX28
-# define HW_LCDIF_CTRL2 0x20
-# define HW_LCDIF_TRANSFER_COUNT 0x30
-#endif
-#ifdef CONFIG_ARCH_IMX23
-# define HW_LCDIF_TRANSFER_COUNT 0x20
-#endif
+#define LCDC_V3_TRANSFER_COUNT		0x20
+#define LCDC_V4_TRANSFER_COUNT		0x30
+
 # define SET_VCOUNT(x) (((x) & 0xffff) << 16)
 # define SET_HCOUNT(x) ((x) & 0xffff)
 
-#ifdef CONFIG_ARCH_IMX28
-# define HW_LCDIF_CUR_BUF 0x40
-# define HW_LCDIF_NEXT_BUF 0x50
-#endif
-#ifdef CONFIG_ARCH_IMX23
-# define HW_LCDIF_CUR_BUF 0x30
-# define HW_LCDIF_NEXT_BUF 0x40
-#endif
+#define LCDC_V3_CUR_BUF			0x30
+#define LCDC_V3_NEXT_BUF		0x40
+#define LCDC_V4_CUR_BUF			0x40
+#define LCDC_V4_NEXT_BUF		0x50
 
 #define HW_LCDIF_TIMING 0x60
 # define SET_CMD_HOLD(x) (((x) & 0xff) << 24)
@@ -87,12 +82,8 @@
 #define HW_LCDIF_VDCTRL1 0x80
 
 #define HW_LCDIF_VDCTRL2 0x90
-#ifdef CONFIG_ARCH_IMX28
-# define SET_HSYNC_PULSE_WIDTH(x) (((x) & 0x3fff) << 18)
-#endif
-#ifdef CONFIG_ARCH_IMX23
-# define SET_HSYNC_PULSE_WIDTH(x) (((x) & 0xff) << 24)
-#endif
+# define SET_HSYNC_PULSE_WIDTH(devdata, x) \
+	(((x) & (devdata)->hs_wdth_mask) << (devdata)->hs_wdth_shift)
 # define SET_HSYNC_PERIOD(x) ((x) & 0x3ffff)
 
 #define HW_LCDIF_VDCTRL3 0xa0
@@ -102,9 +93,6 @@
 # define SET_VERT_WAIT_CNT(x) ((x) & 0xffff)
 
 #define HW_LCDIF_VDCTRL4 0xb0
-#ifdef CONFIG_ARCH_IMX28
-# define SET_DOTCLK_DLY(x) (((x) & 0x7) << 29)
-#endif
 # define VDCTRL4_SYNC_SIGNALS_ON (1 << 18)
 # define SET_DOTCLK_H_VALID_DATA_CNT(x) ((x) & 0x3ffff)
 
@@ -114,19 +102,9 @@
 #define HW_LCDIF_DVICTRL3 0xf0
 #define HW_LCDIF_DVICTRL4 0x100
 
-#ifdef CONFIG_ARCH_IMX28
-# define HW_LCDIF_DATA 0x180
-#endif
-#ifdef CONFIG_ARCH_IMX23
-# define HW_LCDIF_DATA 0x1b0
-#endif
+#define LCDC_V3_DEBUG0 0x1f0
+#define LCDC_V4_DEBUG0 0x1d0
 
-#ifdef CONFIG_ARCH_IMX28
-# define HW_LCDIF_DEBUG0 0x1d0
-#endif
-#ifdef CONFIG_ARCH_IMX23
-# define HW_LCDIF_DEBUG0 0x1f0
-#endif
 # define DEBUG_HSYNC (1 < 26)
 # define DEBUG_VSYNC (1 < 25)
 
@@ -146,7 +124,7 @@ struct imxfb_info {
 	unsigned flags;
 	unsigned ld_intf_width;
 	void (*enable)(int enable);
-	unsigned dotclk_delay;
+	const struct mxsfb_devdata *devdata;
 };
 
 /* the RGB565 true colour mode */
@@ -216,6 +194,7 @@ static inline unsigned calc_line_length(unsigned ppl, unsigned bpp)
 static void stmfb_enable_controller(struct fb_info *fb_info)
 {
 	struct imxfb_info *fbi = fb_info->priv;
+	const struct mxsfb_devdata *devdata = fbi->devdata;
 	uint32_t reg, last_reg;
 	unsigned loop, edges;
 
@@ -244,9 +223,9 @@ static void stmfb_enable_controller(struct fb_info *fb_info)
 
 	while (edges != 0) {
 		loop = 800;
-		last_reg = readl(fbi->base + HW_LCDIF_DEBUG0) & DEBUG_VSYNC;
+		last_reg = readl(fbi->base + devdata->debug0) & DEBUG_VSYNC;
 		do {
-			reg = readl(fbi->base + HW_LCDIF_DEBUG0) & DEBUG_VSYNC;
+			reg = readl(fbi->base + devdata->debug0) & DEBUG_VSYNC;
 			if (reg != last_reg)
 				break;
 			last_reg = reg;
@@ -307,6 +286,7 @@ static void stmfb_disable_controller(struct fb_info *fb_info)
 static int stmfb_activate_var(struct fb_info *fb_info)
 {
 	struct imxfb_info *fbi = fb_info->priv;
+	const struct mxsfb_devdata *devdata = fbi->devdata;
 	struct fb_videomode *mode = fb_info->mode;
 	uint32_t reg;
 	unsigned size;
@@ -430,8 +410,8 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 	writel(reg, fbi->base + HW_LCDIF_CTRL);
 	pr_debug("Setting up CTRL to %08X\n", reg);
 
-	writel(SET_VCOUNT(mode->yres) |
-		SET_HCOUNT(mode->xres), fbi->base + HW_LCDIF_TRANSFER_COUNT);
+	writel(SET_VCOUNT(mode->yres) | SET_HCOUNT(mode->xres),
+	       fbi->base + devdata->transfer_count);
 
 	reg = VDCTRL0_ENABLE_PRESENT |	/* always in DOTCLOCK mode */
 		VDCTRL0_VSYNC_PERIOD_UNIT |
@@ -457,7 +437,7 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 		fbi->base + HW_LCDIF_VDCTRL1);
 
 	/* line length in units of clocks or pixels */
-	writel(SET_HSYNC_PULSE_WIDTH(mode->hsync_len) |
+	writel(SET_HSYNC_PULSE_WIDTH(devdata, mode->hsync_len) |
 		SET_HSYNC_PERIOD(mode->left_margin + mode->hsync_len +
 			mode->right_margin + mode->xres),
 		fbi->base + HW_LCDIF_VDCTRL2);
@@ -466,15 +446,11 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 		SET_VERT_WAIT_CNT(mode->upper_margin + mode->vsync_len),
 		fbi->base + HW_LCDIF_VDCTRL3);
 
-	writel(
-#ifdef CONFIG_ARCH_IMX28
-		SET_DOTCLK_DLY(fbi->dotclk_delay) |
-#endif
-		SET_DOTCLK_H_VALID_DATA_CNT(mode->xres),
+	writel(SET_DOTCLK_H_VALID_DATA_CNT(mode->xres),
 		fbi->base + HW_LCDIF_VDCTRL4);
 
-	writel((uint32_t)fb_info->screen_base, fbi->base + HW_LCDIF_CUR_BUF);
-	writel((uint32_t)fb_info->screen_base, fbi->base + HW_LCDIF_NEXT_BUF);
+	writel((uintptr_t)fb_info->screen_base, fbi->base + devdata->cur_buf);
+	writel((uintptr_t)fb_info->screen_base, fbi->base + devdata->next_buf);
 
 	return 0;
 }
@@ -519,6 +495,21 @@ static int stmfb_probe(struct device *hw_dev)
 
 	/* add runtime video info */
 	if (pdata) {
+		if (!pdata->devdata) {
+			const char *name;
+
+			if (IS_ENABLED(CONFIG_ARCH_IMX23)) {
+				pdata->devdata = &mxsfb_devdata[MXSFB_V3];
+				name = "MXSFB_V3";
+			} else {
+				pdata->devdata = &mxsfb_devdata[MXSFB_V4];
+				name = "MXSFB_V4";
+			}
+
+			pr_warn("imx_fb_platformdata::devdata unset. Assuming %s\n",
+				name);
+		}
+
 		fbi.info.modes.modes = pdata->mode_list;
 		fbi.info.modes.num_modes = pdata->mode_cnt;
 		fbi.info.mode = &fbi.info.modes.modes[0];
@@ -536,6 +527,10 @@ static int stmfb_probe(struct device *hw_dev)
 		if (!IS_ENABLED(CONFIG_OFDEVICE) || !hw_dev->of_node)
 			return -EINVAL;
 
+		fbi.devdata = device_get_match_data(hw_dev);
+		if (!fbi.devdata)
+			return -EINVAL;
+
 		display = of_parse_phandle(hw_dev->of_node, "display", 0);
 		if (!display) {
 			dev_err(hw_dev, "no display phandle\n");
@@ -573,11 +568,33 @@ static int stmfb_probe(struct device *hw_dev)
 	return 0;
 }
 
+const struct mxsfb_devdata mxsfb_devdata[] = {
+	[MXSFB_V3] = {
+		.transfer_count	= LCDC_V3_TRANSFER_COUNT,
+		.cur_buf	= LCDC_V3_CUR_BUF,
+		.next_buf	= LCDC_V3_NEXT_BUF,
+		.debug0		= LCDC_V3_DEBUG0,
+		.hs_wdth_mask	= 0xff,
+		.hs_wdth_shift	= 24,
+	},
+	[MXSFB_V4] = {
+		.transfer_count	= LCDC_V4_TRANSFER_COUNT,
+		.cur_buf	= LCDC_V4_CUR_BUF,
+		.next_buf	= LCDC_V4_NEXT_BUF,
+		.debug0		= LCDC_V4_DEBUG0,
+		.hs_wdth_mask	= 0x3fff,
+		.hs_wdth_shift	= 18,
+	},
+};
+EXPORT_SYMBOL(mxsfb_devdata);
+
 static __maybe_unused struct of_device_id stmfb_compatible[] = {
 	{
 		.compatible = "fsl,imx23-lcdif",
+		.data = &mxsfb_devdata[MXSFB_V3],
 	}, {
 		.compatible = "fsl,imx28-lcdif",
+		.data = &mxsfb_devdata[MXSFB_V4],
 	}, {
 		/* sentinel */
 	}
diff --git a/include/mach/mxs/fb.h b/include/mach/mxs/fb.h
index 8fcfe8652067..da2ed2f2ebee 100644
--- a/include/mach/mxs/fb.h
+++ b/include/mach/mxs/fb.h
@@ -18,6 +18,28 @@
 
 #define USE_LCD_RESET		1
 
+enum mxsfb_devtype {
+	MXSFB_V3,
+	MXSFB_V4,
+};
+
+struct mxsfb_devdata {
+	unsigned int	transfer_count;
+	unsigned int	cur_buf;
+	unsigned int	next_buf;
+	unsigned int	debug0;
+	unsigned int	hs_wdth_mask;
+	unsigned int	hs_wdth_shift;
+};
+
+extern const struct mxsfb_devdata mxsfb_devdata[];
+
+#ifdef CONFIG_DRIVER_VIDEO_STM
+#define MXSFB_DEVDATA(devtype) (&mxsfb_devdata[devtype])
+#else
+#define MXSFB_DEVDATA(devtype) 0
+#endif
+
 struct imx_fb_platformdata {
 	struct fb_videomode *mode_list;
 	unsigned mode_cnt;
@@ -31,6 +53,8 @@ struct imx_fb_platformdata {
 
 	unsigned flags;
 	void (*enable)(int enable); /**< hook to enable backlight */
+
+	const struct mxsfb_devdata *devdata;
 };
 
 #endif /* __MACH_FB_H */
-- 
2.47.3



