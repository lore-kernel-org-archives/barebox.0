Delivery-date: Wed, 05 Apr 2023 15:08:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pk2s0-00AuLu-Ou
	for lore@lore.pengutronix.de; Wed, 05 Apr 2023 15:08:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pk2s0-0003Kw-E4
	for lore@pengutronix.de; Wed, 05 Apr 2023 15:08:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=q7VkrsJyMFp8B3ar3xeOGi4uGqZtqls/o9o9h7zi6js=; b=VzqwS2XBpWm11F7XZ2tmq6Dc+S
	yKxAE2WISfpl4NIlbl4sNjBtgu8duOxUrGKvuCOkSpNZGStv0IIViujmi8PnRJNsVArCzoEoaMAI6
	2GDhfb9ecECcr4o+jzv9pP3oSwS03f6HL6A68NCzSC7NKgTeOhISOSfnHZ1mWqEDkFvbyOSP2xoIl
	vq83XkbPASIfT2hUrTXQhTRpfmZkw4j7WeoyErNUC4MRMsk8y8Mi6GbvqyPxFo7hpBYR1AXtWA/xU
	Zst73GKK4w7eZlXOXDBRwnoZEetxROdcYCMQ9zrshR9/EptmStj8Uqq56XJQSqlxVix/CbUifpRND
	nURcRgmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2qk-004TgH-2l;
	Wed, 05 Apr 2023 13:06:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2qg-004TfX-2T
	for barebox@lists.infradead.org;
	Wed, 05 Apr 2023 13:06:52 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pk2qe-0002wA-I8; Wed, 05 Apr 2023 15:06:48 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  5 Apr 2023 15:06:45 +0200
Message-Id: <20230405130645.2407719-1-p.zabel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_060650_808249_AE50333D 
X-CRM114-Status: GOOD (  14.97  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_PDS_OTHER_BAD_TLD,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] video: fbconsole: implement non-fullscreen fbconsole
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Let fbconsole cover only part of the screen.
Configurable via margin.{left,top,right,bottom} device parameters.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/video/fbconsole.c | 115 +++++++++++++++++++++++++++++++++-----
 1 file changed, 101 insertions(+), 14 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 070378aa2352..6c85e8e06a8c 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -18,6 +18,12 @@ enum state_t {
 struct fbc_priv {
 	struct console_device cdev;
 	struct fb_info *fb;
+	struct {
+		u32 top;
+		u32 left;
+		u32 bottom;
+		u32 right;
+	} margin;
 
 	struct screen *sc;
 
@@ -60,9 +66,26 @@ static int fbc_tstc(struct console_device *cdev)
 static void cls(struct fbc_priv *priv)
 {
 	void *buf = gui_screen_render_buffer(priv->sc);
+	struct fb_info *fb = priv->fb;
+	int width = fb->xres - priv->margin.left - priv->margin.right;
+	int height = fb->yres - priv->margin.top - priv->margin.bottom;
+	void *adr;
+
+	adr = buf + priv->fb->line_length * priv->margin.top;
+
+	if (!priv->margin.left && !priv->margin.right) {
+		memset(adr, 0, priv->fb->line_length * height);
+	} else {
+		int bpp = priv->fb->bits_per_pixel >> 3;
+		int y;
 
-	memset(buf, 0, priv->fb->line_length * priv->fb->yres);
-	gu_screen_blit(priv->sc);
+		for (y = 0; y < height; y++) {
+			memset(adr + priv->margin.left * bpp, 0, width * bpp);
+			adr += priv->fb->line_length;
+		}
+	}
+	gu_screen_blit_area(priv->sc, priv->margin.left, priv->margin.top,
+			    width, height);
 }
 
 struct rgb {
@@ -122,7 +145,8 @@ static void drawchar(struct fbc_priv *priv, int x, int y, int c)
 		uint8_t t = inbuf[i];
 		int j;
 
-		adr = buf + line_length * (y * priv->font->height + i) + x * priv->font->width * bpp;
+		adr = buf + line_length * (priv->margin.top + y * priv->font->height + i) +
+		      (priv->margin.left + x * priv->font->width) * bpp;
 
 		for (j = 0; j < priv->font->width; j++) {
 			if (t & 0x80)
@@ -142,9 +166,11 @@ static void video_invertchar(struct fbc_priv *priv, int x, int y)
 
 	buf = gui_screen_render_buffer(priv->sc);
 
-	gu_invert_area(priv->fb, buf, x * priv->font->width, y * priv->font->height,
+	gu_invert_area(priv->fb, buf, priv->margin.left + x * priv->font->width,
+			priv->margin.top + y * priv->font->height,
 			priv->font->width, priv->font->height);
-	gu_screen_blit_area(priv->sc, x * priv->font->width, y * priv->font->height,
+	gu_screen_blit_area(priv->sc, priv->margin.left + x * priv->font->width,
+			priv->margin.top + y * priv->font->height,
 			priv->font->width, priv->font->height);
 }
 
@@ -185,8 +211,9 @@ static void printchar(struct fbc_priv *priv, int c)
 	default:
 		drawchar(priv, priv->x, priv->y, c);
 
-		gu_screen_blit_area(priv->sc, priv->x * priv->font->width,
-				priv->y * priv->font->height,
+		gu_screen_blit_area(priv->sc,
+				priv->margin.left + priv->x * priv->font->width,
+				priv->margin.top + priv->y * priv->font->height,
 				priv->font->width, priv->font->height);
 
 		priv->x++;
@@ -198,15 +225,36 @@ static void printchar(struct fbc_priv *priv, int c)
 
 	if (priv->y > priv->rows) {
 		void *buf;
+		void *adr;
 		u32 line_length = priv->fb->line_length;
 		int line_height = line_length * priv->font->height;
+		int width = priv->fb->xres - priv->margin.left - priv->margin.right;
+		int height = (priv->rows + 1) * priv->font->height;
 
 		buf = gui_screen_render_buffer(priv->sc);
+		adr = buf + priv->margin.top * line_length;
+
+		if (!priv->margin.left && !priv->margin.right) {
+			memcpy(adr, adr + line_height, line_height * priv->rows);
+			memset(adr + line_height * priv->rows, 0, line_height);
+		} else {
+			int bpp = priv->fb->bits_per_pixel >> 3;
+			int y;
+
+			adr += priv->margin.left * bpp;
+
+			for (y = 0; y < height - priv->font->height; y++) {
+				memcpy(adr, adr + line_height, width * bpp);
+				adr += line_length;
+			}
+			for (y = height - priv->font->height; y < height; y++) {
+				memset(adr, 0, width * bpp);
+				adr += line_length;
+			}
+		}
 
-		memcpy(buf, buf + line_height, line_height * priv->rows);
-		memset(buf + line_height * priv->rows, 0, line_height);
-
-		gu_screen_blit(priv->sc);
+		gu_screen_blit_area(priv->sc, priv->margin.left, priv->margin.top,
+				width, height);
 		priv->y = priv->rows;
 	}
 
@@ -401,8 +449,9 @@ static void fbc_putc(struct console_device *cdev, char c)
 
 static int setup_font(struct fbc_priv *priv)
 {
-	struct fb_info *fb = priv->fb;
 	const struct font_desc *font;
+	unsigned int height = priv->fb->yres - priv->margin.top - priv->margin.bottom;
+	unsigned int width = priv->fb->xres - priv->margin.left - priv->margin.right;
 
 	font = find_font_enum(priv->par_font_val);
 	if (!font) {
@@ -411,8 +460,8 @@ static int setup_font(struct fbc_priv *priv)
 
 	priv->font = font;
 
-	priv->rows = fb->yres / priv->font->height - 1;
-	priv->cols = fb->xres / priv->font->width - 1;
+	priv->rows = height / priv->font->height - 1;
+	priv->cols = width / priv->font->width - 1;
 
 	return 0;
 }
@@ -472,6 +521,35 @@ static int set_font(struct param_d *p, void *vpriv)
 	return 0;
 }
 
+static int set_margin(struct param_d *p, void *vpriv)
+{
+	struct fbc_priv *priv = vpriv;
+	struct console_device *cdev = &priv->cdev;
+	int ret;
+
+	if (!priv->font) {
+		ret = setup_font(priv);
+		if (ret)
+			return ret;
+	}
+
+	priv->margin.left = min(priv->margin.left,
+			priv->fb->xres - priv->margin.right - priv->font->width);
+	priv->margin.top = min(priv->margin.top,
+			priv->fb->yres - priv->margin.bottom - priv->font->height);
+	priv->margin.right = min(priv->margin.right,
+			priv->fb->xres - priv->margin.left - priv->font->width);
+	priv->margin.bottom = min(priv->margin.bottom,
+			priv->fb->yres - priv->margin.top - priv->font->height);
+
+	if (cdev->f_active & (CONSOLE_STDOUT | CONSOLE_STDERR)) {
+		cls(priv);
+		setup_font(priv);
+	}
+
+	return 0;
+}
+
 int register_fbconsole(struct fb_info *fb)
 {
 	struct fbc_priv *priv;
@@ -508,6 +586,15 @@ int register_fbconsole(struct fb_info *fb)
 			set_font, NULL,
 			&priv->par_font_val, priv);
 
+	dev_add_param_uint32(&cdev->class_dev, "margin.top", set_margin,
+			NULL, &priv->margin.top, "%u", priv);
+	dev_add_param_uint32(&cdev->class_dev, "margin.left", set_margin,
+			NULL, &priv->margin.left, "%u", priv);
+	dev_add_param_uint32(&cdev->class_dev, "margin.bottom", set_margin,
+			NULL, &priv->margin.bottom, "%u", priv);
+	dev_add_param_uint32(&cdev->class_dev, "margin.right", set_margin,
+			NULL, &priv->margin.right, "%u", priv);
+
 	pr_info("registered as %s%d\n", cdev->class_dev.name, cdev->class_dev.id);
 
 	return 0;
-- 
2.39.2



