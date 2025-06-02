Delivery-date: Mon, 02 Jun 2025 08:16:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLyTW-002rhG-1h
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 08:16:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLyTV-0001pf-I8
	for lore@pengutronix.de; Mon, 02 Jun 2025 08:16:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rt9Yvli8TnW4csAhn2itsqWsbPcc5XmTT1ES9bYJzMU=; b=ZghB79TRVfMkxY9YR8hM+za7E4
	zxLnX5QVrUx9DqmHR3v+BCCUhvvm9SWYF8GfRKBXknM32iT2JgCmglYZefr1sOsuWnmx9oHwDCUqu
	m7Z2F8bwxJ1wEw+Mk8ILGSwpESzaR3xJ853n26u0+nShaPcUsXyJMPeKuvM3xjBFp5QdUe4ekh58s
	RjgWt59HjP+XPwfqqI3ZEiJHcHRoMwnR03InDfmEk5ckfvQoWLwsrg5nzRYKSwsUz8VqoDMgESkLY
	4QvzHw9Kjy/hIyRL1ZQ65cQ42YFXi89H2K3AX/MfJyFXTLKB6cb+RyPfEDPKcm/gV+uDOsexVsJm1
	yWt+DZMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLyT1-00000006pBj-18dS;
	Mon, 02 Jun 2025 06:16:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLySy-00000006pAq-3fEF
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 06:16:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uLySx-0001ZH-JU; Mon, 02 Jun 2025 08:16:11 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Jun 2025 08:16:10 +0200
Message-Id: <20250602061610.752815-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250602061610.752815-1-a.fatoum@barebox.org>
References: <20250602061610.752815-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250601_231613_063817_97940208 
X-CRM114-Status: GOOD (  20.43  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] video: give struct fb_videomode::pixclock a strong picoseconds_t type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To avoid confusion between struct fb_videomode::pixclock, which in
picoseconds and other timing structs, which are in
struct videomode::pixelclock, which is in Hz, let's make it an error to
assign one to the other. This should nudge video driver ports into the
right direction in future.

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/boards/karo-tx25/board.c             |  2 +-
 arch/arm/boards/phytec-phycore-imx27/pcm038.c |  2 +-
 drivers/video/atmel_lcdfb_core.c              |  2 +-
 drivers/video/edid.c                          |  4 +---
 drivers/video/imx.c                           |  2 +-
 drivers/video/mode-helpers.c                  |  7 ++-----
 drivers/video/mtl017.c                        |  2 +-
 drivers/video/of_display_timing.c             |  2 +-
 drivers/video/panel-mipi-dbi.c                |  2 +-
 drivers/video/pxa.c                           |  2 +-
 drivers/video/tc358767.c                      |  2 +-
 include/fb.h                                  | 21 ++++++++++++++++---
 12 files changed, 30 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 00c2a3aa833e..dbd1d569c541 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -110,7 +110,7 @@ static iomux_v3_cfg_t tx25_lcdc_gpios[] = {
 
 static struct fb_videomode stk5_fb_mode = {
 	.name = "G-ETV570G0DMU",
-	.pixclock	= 33333,
+	.pixclock.ps	= 33333,
 
 	.xres		= 640,
 	.yres		= 480,
diff --git a/arch/arm/boards/phytec-phycore-imx27/pcm038.c b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
index 879e94293ccb..5b12e16d61f3 100644
--- a/arch/arm/boards/phytec-phycore-imx27/pcm038.c
+++ b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
@@ -27,7 +27,7 @@ static struct fb_videomode imxfb_mode = {
 	.refresh	= 60,
 	.xres		= 240,
 	.yres		= 320,
-	.pixclock	= 188679, /* in ps (5.3MHz) */
+	.pixclock.ps	= 188679, /* in ps (5.3MHz) */
 	.hsync_len	= 7,
 	.left_margin	= 5,
 	.right_margin	= 16,
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index 02fa753c298f..002ddb8d1665 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -71,7 +71,7 @@ static int atmel_lcdfb_check_var(struct fb_info *info)
 
 	dev_dbg(dev, "%s:\n", __func__);
 
-	if (!(mode->pixclock && info->bits_per_pixel)) {
+	if (!(mode->pixclock.ps && info->bits_per_pixel)) {
 		dev_err(dev, "needed value not specified\n");
 		return -EINVAL;
 	}
diff --git a/drivers/video/edid.c b/drivers/video/edid.c
index 7e6747ccd521..21e13de73acd 100644
--- a/drivers/video/edid.c
+++ b/drivers/video/edid.c
@@ -684,9 +684,7 @@ static void get_detailed_timing(unsigned char *block,
 {
 	mode->xres = H_ACTIVE;
 	mode->yres = V_ACTIVE;
-	mode->pixclock = PIXEL_CLOCK;
-	mode->pixclock /= 1000;
-	mode->pixclock = KHZ2PICOS(mode->pixclock);
+	mode->pixclock = KHZ2PICOS(PIXEL_CLOCK / 1000);
 	mode->right_margin = H_SYNC_OFFSET;
 	mode->left_margin = (H_ACTIVE + H_BLANKING) -
 		(H_ACTIVE + H_SYNC_OFFSET + H_SYNC_WIDTH);
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index cb1c11b4cbb5..65a188fa6548 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -320,7 +320,7 @@ static int imxfb_activate_var(struct fb_info *info)
 
 	lcd_clk = clk_get_rate(fbi->per_clk);
 
-	tmp = mode->pixclock * (unsigned long long)lcd_clk;
+	tmp = mode->pixclock.ps * (unsigned long long)lcd_clk;
 
 	do_div(tmp, 1000000);
 
diff --git a/drivers/video/mode-helpers.c b/drivers/video/mode-helpers.c
index 2ad3d6b8c09c..4a1d31813e79 100644
--- a/drivers/video/mode-helpers.c
+++ b/drivers/video/mode-helpers.c
@@ -96,9 +96,7 @@ int videomode_to_fb_videomode(const struct videomode *vm,
 	fbmode->lower_margin = vm->vfront_porch;
 	fbmode->vsync_len = vm->vsync_len;
 
-	/* prevent division by zero in KHZ2PICOS macro */
-	fbmode->pixclock = vm->pixelclock ?
-			KHZ2PICOS(vm->pixelclock / 1000) : 0;
+	fb_videomode_set_pixclock_hz(fbmode, vm->pixelclock);
 
 	fbmode->sync = 0;
 	fbmode->vmode = 0;
@@ -131,8 +129,7 @@ int videomode_to_fb_videomode(const struct videomode *vm,
 void fb_videomode_to_videomode(const struct fb_videomode *fbmode,
 			       struct videomode *vm)
 {
-	vm->pixelclock = fbmode->pixclock ?
-			 (PICOS2KHZ(fbmode->pixclock) * 1000) : 0;
+	vm->pixelclock = fb_videomode_get_pixclock_hz(fbmode);
 	vm->hactive = fbmode->xres;
 	vm->hfront_porch = fbmode->right_margin;
 	vm->hback_porch = fbmode->left_margin;
diff --git a/drivers/video/mtl017.c b/drivers/video/mtl017.c
index ba214b47aeed..d478052488d4 100644
--- a/drivers/video/mtl017.c
+++ b/drivers/video/mtl017.c
@@ -85,7 +85,7 @@ static struct fb_videomode auo_bw101aw02_mode = {
 	.refresh = 60,
 	.xres = 1024,
 	.yres = 600,
-	.pixclock = 22800,
+	.pixclock.ps = 22800,
 	.left_margin = 80,
 	.right_margin = 40,
 	.upper_margin = 21,
diff --git a/drivers/video/of_display_timing.c b/drivers/video/of_display_timing.c
index 74b01239cb1f..37617425880e 100644
--- a/drivers/video/of_display_timing.c
+++ b/drivers/video/of_display_timing.c
@@ -76,7 +76,7 @@ static int of_parse_display_timing(const struct device_node *np,
 	ret |= parse_timing_property(np, "vsync-len", &mode->vsync_len);
 	ret |= parse_timing_property(np, "clock-frequency", &pixelclock);
 
-	mode->pixclock = pixelclock ? KHZ2PICOS(pixelclock / 1000) : 0;
+	fb_videomode_set_pixclock_hz(mode, pixelclock);
 
 	if (!of_property_read_u32(np, "vsync-active", &val))
 		mode->sync |= val ? FB_SYNC_VERT_HIGH_ACT : 0;
diff --git a/drivers/video/panel-mipi-dbi.c b/drivers/video/panel-mipi-dbi.c
index 10812c9d7bbd..ed08b58a41bb 100644
--- a/drivers/video/panel-mipi-dbi.c
+++ b/drivers/video/panel-mipi-dbi.c
@@ -247,7 +247,7 @@ static int panel_mipi_dbi_get_mode(struct mipi_dbi_dev *dbidev, struct fb_videom
 	}
 
 	/* The driver doesn't use the pixel clock but it is mandatory so fake one if not set */
-	if (!mode->pixclock) {
+	if (!mode->pixclock.ps) {
 		unsigned htotal = mode->left_margin + mode->xres +
 				mode->right_margin + mode->hsync_len;
 		unsigned vtotal = mode->upper_margin + mode->yres +
diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
index a9accd537789..9d7dfb185f17 100644
--- a/drivers/video/pxa.c
+++ b/drivers/video/pxa.c
@@ -282,7 +282,7 @@ static void setup_parallel_timing(struct pxafb_info *fbi)
 	struct fb_info *info = &fbi->info;
 	struct fb_videomode *mode = info->mode;
 
-	unsigned int lines_per_panel, pcd = get_pcd(fbi, mode->pixclock);
+	unsigned int lines_per_panel, pcd = get_pcd(fbi, mode->pixclock.ps);
 
 	fbi->reg_lccr1 =
 		LCCR1_DisWdth(mode->xres) +
diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index da106496fc5d..ba5db9aaf4a4 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -1206,7 +1206,7 @@ static int tc_filter_videomodes(struct tc_data *tc, struct display_timings *timi
 		mode = &timings->modes[i];
 
 		/* minimum Pixel Clock Period for DPI is 6.5 nS = 6500 pS */
-		if (mode->pixclock < 6500) {
+		if (mode->pixclock.ps < 6500) {
 			dev_dbg(tc->dev, "%dx%d@%d (%d KHz, flags 0x%08x, sync 0x%08x) skipped\n",
 				mode->xres, mode->yres, mode->refresh,
 				(int)PICOS2KHZ(mode->pixclock), mode->display_flags,
diff --git a/include/fb.h b/include/fb.h
index 76f0c9944975..01c5ce0bf377 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -31,8 +31,12 @@
 #define FB_VMODE_SMOOTH_XPAN	512	/* smooth xpan possible (internally used) */
 #define FB_VMODE_CONUPDATE	512	/* don't update x/yoffset	*/
 
-#define PICOS2KHZ(a) (1000000000UL/(a))
-#define KHZ2PICOS(a) (1000000000UL/(a))
+typedef struct {
+	u32 ps;
+} picoseconds_t;
+
+#define PICOS2KHZ(a) (1000000000UL/(a).ps)
+#define KHZ2PICOS(a) ((picoseconds_t){1000000000UL/(a)})
 
 enum display_flags {
 	DISPLAY_FLAGS_HSYNC_LOW		= BIT(0),
@@ -61,7 +65,7 @@ struct fb_videomode {
 	u32 refresh;		/* optional */
 	u32 xres;
 	u32 yres;
-	u32 pixclock;
+	picoseconds_t pixclock;
 	u32 left_margin;
 	u32 right_margin;
 	u32 upper_margin;
@@ -73,6 +77,17 @@ struct fb_videomode {
 	u32 display_flags;
 };
 
+static inline ulong fb_videomode_get_pixclock_hz(const struct fb_videomode *mode)
+{
+	return mode->pixclock.ps ? PICOS2KHZ(mode->pixclock) * 1000UL : 0;
+}
+
+static inline void fb_videomode_set_pixclock_hz(struct fb_videomode *mode,
+						ulong rate)
+{
+	mode->pixclock = rate ? KHZ2PICOS(rate / 1000UL) : (picoseconds_t){0};
+}
+
 /* Interpretation of offset for color fields: All offsets are from the right,
  * inside a "pixel" value, which is exactly 'bits_per_pixel' wide (means: you
  * can use the offset as right argument to <<). A pixel afterwards is a bit
-- 
2.39.5



