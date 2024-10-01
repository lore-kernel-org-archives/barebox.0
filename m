Delivery-date: Tue, 01 Oct 2024 08:48:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svWfz-004rrB-0a
	for lore@lore.pengutronix.de;
	Tue, 01 Oct 2024 08:48:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svWfz-0005Oy-3O
	for lore@pengutronix.de; Tue, 01 Oct 2024 08:48:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sRC1k1EMOJSANjAwcIA/iBFm9fIN8LSMDIlEYyvn36Q=; b=rApWEO1hj+zb/d1DE3rpOyRiII
	UAAtvkcaQYXuoskdQjJ+A6FXJW49Lc702S3lNMvMueNZ5nAiP1vQjqeNgyCoYtXPjrxQOpLWDD1aD
	uhP0ZtRDMID8h0A2bTohz8uTcmkaHThslOducLKHY3UJITGhNtCDyEt3Yk0Dg+RYWd4FSvNo56CtP
	soe4/CR8ie7m+Tic1Cwv9saT0Jv5RyejQAqeexm6czslXLSdhlnJIZSUc8T0QeTfw8vzvLqPgAPeX
	AIE1An6vzzAaVvGH6csI+HupfkXnVgCq5cQ1OXACS2LC9CBYMABG2zWWWlscOvVn/16Hg08DrwWSe
	hYeTbZwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svWfO-00000001oCI-41oj;
	Tue, 01 Oct 2024 06:47:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svWfL-00000001oBo-24ej
	for barebox@lists.infradead.org;
	Tue, 01 Oct 2024 06:47:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svWfJ-00057L-IM; Tue, 01 Oct 2024 08:47:21 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svWfJ-002obl-5l; Tue, 01 Oct 2024 08:47:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svWfJ-00GK39-0F;
	Tue, 01 Oct 2024 08:47:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Oct 2024 08:47:20 +0200
Message-Id: <20241001064720.3890312-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_234723_875963_BAC4CF26 
X-CRM114-Status: GOOD (  18.22  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PDS_OTHER_BAD_TLD,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLACK autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH] fbconsole: implement panel orientation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a fbconsolex.orientation property to rotate the console
by 90, 180 or 270 degrees in case the panel is not natively oriented.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fbconsole.c | 328 ++++++++++++++++++++++++++++++++------
 1 file changed, 278 insertions(+), 50 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index eec524318f..24592d00ed 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -18,6 +18,20 @@ enum state_t {
 	CSI_CNT,
 };
 
+enum fbconsole_rotation {
+	FBCONSOLE_ROTATE_0,
+	FBCONSOLE_ROTATE_90,
+	FBCONSOLE_ROTATE_180,
+	FBCONSOLE_ROTATE_270,
+};
+
+static const char * const rotation_names[] = {
+	[FBCONSOLE_ROTATE_0] = "0",
+	[FBCONSOLE_ROTATE_90] = "90",
+	[FBCONSOLE_ROTATE_180] = "180",
+	[FBCONSOLE_ROTATE_270] = "270",
+};
+
 struct fbc_priv {
 	struct console_device cdev;
 	struct fb_info *fb;
@@ -38,6 +52,7 @@ struct fbc_priv {
 	unsigned int cols, rows;
 	unsigned int x, y; /* cursor position */
 
+	unsigned int rotation;
 	enum state_t state;
 
 	int color;
@@ -124,6 +139,10 @@ static void drawchar(struct fbc_priv *priv, int x, int y, int c)
 	int line_length;
 	u32 color, bgcolor;
 	struct rgb *rgb;
+	int xstep;
+	int ystep;
+	int startx;
+	int starty;
 
 	buf = gui_screen_render_buffer(priv->sc);
 
@@ -144,13 +163,44 @@ static void drawchar(struct fbc_priv *priv, int x, int y, int c)
 	rgb = &colors[bgcolor];
 	bgcolor = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0x0);
 
+	adr = buf;
+
+	switch (priv->rotation) {
+	case FBCONSOLE_ROTATE_0:
+		xstep = bpp;
+		ystep = line_length;
+		startx = x * priv->font->width;
+		starty = y * priv->font->height;
+		break;
+	case FBCONSOLE_ROTATE_90:
+		xstep = line_length;
+		ystep = -bpp;
+		startx = (priv->rows - y) * priv->font->height - 1;
+		starty = x * priv->font->width;
+		break;
+	case FBCONSOLE_ROTATE_180:
+		xstep = -bpp;
+		ystep = -line_length;
+		startx = (priv->cols - x) * priv->font->width - 1;
+		starty = (priv->rows - y) * priv->font->height - 1;
+		break;
+	case FBCONSOLE_ROTATE_270:
+		xstep = -line_length;
+		ystep = bpp;
+		startx = priv->font->height * y;
+		starty = (priv->cols - x) * priv->font->width - 1;
+		break;
+	default:
+		return;
+	}
+
+	adr += (priv->margin.left + startx) * bpp;
+	adr += (priv->margin.top + starty) * line_length;
+
 	for (i = 0; i < priv->font->height; i++) {
 		uint8_t mask = 0x80;
 		int j;
 
-		adr = buf + line_length * (priv->margin.top + y * priv->font->height + i) +
-		      (priv->margin.left + x * priv->font->width) * bpp;
-
 		for (j = 0; j < priv->font->width; j++) {
 			if (!mask) {
 				inbuf++;
@@ -158,32 +208,107 @@ static void drawchar(struct fbc_priv *priv, int x, int y, int c)
 			}
 
 			if (*inbuf & mask)
-				gu_set_pixel(priv->fb, adr, color);
+				gu_set_pixel(priv->fb, adr + j * xstep, color);
 			else
-				gu_set_pixel(priv->fb, adr, bgcolor);
+				gu_set_pixel(priv->fb, adr + j * xstep, bgcolor);
 
-			adr += priv->fb->bits_per_pixel >> 3;
 			mask >>= 1;
 
 		}
 
+		adr += ystep;
+
 		inbuf++;
 		mask = 0x80;
 	}
 }
 
+static void fb_blit_area(struct fbc_priv *priv, int x, int y)
+{
+	int startx, starty, width, height, fw, fh;
+	int mx, my;
+
+	mx = priv->margin.left;
+	my = priv->margin.top;
+
+	fw = priv->font->width;
+	fh = priv->font->height;
+
+	switch (priv->rotation) {
+	case FBCONSOLE_ROTATE_0:
+		startx = mx + x * fw;
+		starty = my + y * fh;
+		width = fw;
+		height = fh;
+		break;
+	case FBCONSOLE_ROTATE_90:
+		startx = mx + (priv->rows - y - 1) * fh;
+		starty = my + x * fw;
+		width = fh;
+		height = fw;
+		break;
+	case FBCONSOLE_ROTATE_180:
+		startx = mx + (priv->cols - x - 1) * fw;
+		starty = my + (priv->rows - y - 1) * fh;
+		width = fw;
+		height = fh;
+		break;
+	case FBCONSOLE_ROTATE_270:
+		startx = mx + y * fh;
+		starty = my + (priv->cols - x - 1) * fw;
+		width = fh;
+		height = fw;
+		break;
+	default:
+		return;
+	}
+
+	gu_screen_blit_area(priv->sc, startx, starty, width, height);
+}
+
 static void video_invertchar(struct fbc_priv *priv, int x, int y)
 {
+	int startx, starty, width, height, fw, fh;
 	void *buf;
 
 	buf = gui_screen_render_buffer(priv->sc);
+	buf += priv->margin.top * priv->fb->line_length;
+	buf += priv->margin.left * (priv->fb->bits_per_pixel >> 3);
+
+	fw = priv->font->width;
+	fh = priv->font->height;
+
+	switch (priv->rotation) {
+	case FBCONSOLE_ROTATE_0:
+		startx = x * fw;
+		starty = y * fh;
+		width = fw;
+		height = fh;
+		break;
+	case FBCONSOLE_ROTATE_90:
+		startx = (priv->rows - y - 1) * fh;
+		starty = x * fw;
+		width = fh;
+		height = fw;
+		break;
+	case FBCONSOLE_ROTATE_180:
+		startx = (priv->cols - x - 1) * fw;
+		starty = (priv->rows - y - 1) * fh;
+		width = fw;
+		height = fh;
+		break;
+	case FBCONSOLE_ROTATE_270:
+		startx = y * fh;
+		starty = (priv->cols - x - 1) * fw;
+		width = fh;
+		height = fw;
+		break;
+	default:
+		return;
+	}
 
-	gu_invert_area(priv->fb, buf, priv->margin.left + x * priv->font->width,
-			priv->margin.top + y * priv->font->height,
-			priv->font->width, priv->font->height);
-	gu_screen_blit_area(priv->sc, priv->margin.left + x * priv->font->width,
-			priv->margin.top + y * priv->font->height,
-			priv->font->width, priv->font->height);
+	gu_invert_area(priv->fb, buf, startx, starty, width, height);
+	fb_blit_area(priv, x, y);
 }
 
 static void show_cursor(struct fbc_priv *priv, int x, int y)
@@ -192,6 +317,118 @@ static void show_cursor(struct fbc_priv *priv, int x, int y)
 		video_invertchar(priv, x, y);
 }
 
+static void fb_scroll_up_0(struct fbc_priv *priv, void *adr, int width, int height)
+{
+	u32 line_length = priv->fb->line_length;
+	int line_height = line_length * priv->font->height;
+
+	if (!priv->margin.left && !priv->margin.right) {
+		memcpy(adr, adr + line_height, line_height * (priv->rows - 1));
+		memset(adr + line_height * (priv->rows - 1), 0, line_height);
+	} else {
+		int bpp = priv->fb->bits_per_pixel >> 3;
+		int y;
+
+		for (y = 0; y < height - priv->font->height; y++) {
+			memcpy(adr, adr + line_height, width * bpp);
+			adr += line_length;
+		}
+
+		for (y = height - priv->font->height; y < height; y++) {
+			memset(adr, 0, width * bpp);
+			adr += line_length;
+		}
+	}
+}
+
+static void fb_scroll_up_180(struct fbc_priv *priv, void *adr, int width, int height)
+{
+	u32 line_length = priv->fb->line_length;
+	int line_height = line_length * priv->font->height;
+
+	if (!priv->margin.left && !priv->margin.right) {
+		memmove(adr + line_height, adr, line_height * (priv->rows - 1));
+		memset(adr, 0, line_height);
+	} else {
+		int bpp = priv->fb->bits_per_pixel >> 3;
+		int y;
+
+		adr += (height - 1) * line_length;
+
+		for (y = height; y > priv->font->height; y--) {
+			memcpy(adr, adr - line_height, width * bpp);
+			adr -= line_length;
+		}
+
+		for (y = 0; y < priv->font->height; y++) {
+			memset(adr, 0, width * bpp);
+			adr -= line_length;
+		}
+	}
+}
+
+static void fb_scroll_up_90(struct fbc_priv *priv, void *adr, int width, int height)
+{
+	u32 line_length = priv->fb->line_length;
+	int bpp = priv->fb->bits_per_pixel >> 3;
+	int y;
+
+	for (y = 0; y < priv->cols * priv->font->width; y++) {
+		memmove(adr + priv->font->height * bpp,
+			adr,
+			(priv->rows - 1) * priv->font->height * bpp);
+		memset(adr, 0, priv->font->height * bpp);
+		adr += line_length;
+	}
+}
+
+static void fb_scroll_up_270(struct fbc_priv *priv, void *adr, int width, int height)
+{
+	u32 line_length = priv->fb->line_length;
+	int bpp = priv->fb->bits_per_pixel >> 3;
+	int y;
+
+	for (y = 0; y < priv->cols * priv->font->width; y++) {
+		memmove(adr,
+			adr + priv->font->height * bpp,
+			(priv->rows - 1) * priv->font->height * bpp);
+		memset(adr + priv->font->height * bpp * (priv->rows - 1),
+		       0x0,
+		       priv->font->height * bpp);
+		adr += line_length;
+	}
+}
+
+static void fb_scroll_up(struct fbc_priv *priv)
+{
+	int width = priv->fb->xres - priv->margin.left - priv->margin.right;
+	int height = priv->fb->yres - priv->margin.top - priv->margin.bottom;
+	int bpp = priv->fb->bits_per_pixel >> 3;
+	void *adr;
+
+	adr = gui_screen_render_buffer(priv->sc);
+	adr += priv->margin.top * priv->fb->line_length;
+	adr += priv->margin.left * bpp;
+
+	switch (priv->rotation) {
+	case FBCONSOLE_ROTATE_0:
+		fb_scroll_up_0(priv, adr, width, height);
+		break;
+	case FBCONSOLE_ROTATE_90:
+		fb_scroll_up_90(priv, adr, width, height);
+		break;
+	case FBCONSOLE_ROTATE_180:
+		fb_scroll_up_180(priv, adr, width, height);
+		break;
+	case FBCONSOLE_ROTATE_270:
+		fb_scroll_up_270(priv, adr, width, height);
+		break;
+	}
+
+	gu_screen_blit_area(priv->sc, priv->margin.left, priv->margin.top,
+			    width, height);
+}
+
 static void printchar(struct fbc_priv *priv, int c)
 {
 	video_invertchar(priv, priv->x, priv->y);
@@ -222,11 +459,7 @@ static void printchar(struct fbc_priv *priv, int c)
 
 	default:
 		drawchar(priv, priv->x, priv->y, c);
-
-		gu_screen_blit_area(priv->sc,
-				priv->margin.left + priv->x * priv->font->width,
-				priv->margin.top + priv->y * priv->font->height,
-				priv->font->width, priv->font->height);
+		fb_blit_area(priv, priv->x, priv->y);
 
 		priv->x++;
 		if (priv->x >= priv->cols) {
@@ -236,37 +469,7 @@ static void printchar(struct fbc_priv *priv, int c)
 	}
 
 	if (priv->y >= priv->rows) {
-		void *buf;
-		void *adr;
-		u32 line_length = priv->fb->line_length;
-		int line_height = line_length * priv->font->height;
-		int width = priv->fb->xres - priv->margin.left - priv->margin.right;
-		int height = priv->rows * priv->font->height;
-
-		buf = gui_screen_render_buffer(priv->sc);
-		adr = buf + priv->margin.top * line_length;
-
-		if (!priv->margin.left && !priv->margin.right) {
-			memcpy(adr, adr + line_height, line_height * (priv->rows - 1));
-			memset(adr + line_height * (priv->rows - 1), 0, line_height);
-		} else {
-			int bpp = priv->fb->bits_per_pixel >> 3;
-			int y;
-
-			adr += priv->margin.left * bpp;
-
-			for (y = 0; y < height - priv->font->height; y++) {
-				memcpy(adr, adr + line_height, width * bpp);
-				adr += line_length;
-			}
-			for (y = height - priv->font->height; y < height; y++) {
-				memset(adr, 0, width * bpp);
-				adr += line_length;
-			}
-		}
-
-		gu_screen_blit_area(priv->sc, priv->margin.left, priv->margin.top,
-				width, height);
+		fb_scroll_up(priv);
 		priv->y = priv->rows - 1;
 	}
 
@@ -472,8 +675,18 @@ static int setup_font(struct fbc_priv *priv)
 
 	priv->font = font;
 
-	priv->rows = height / priv->font->height;
-	priv->cols = width / priv->font->width;
+	switch (priv->rotation) {
+	case FBCONSOLE_ROTATE_0:
+	case FBCONSOLE_ROTATE_180:
+		priv->rows = height / priv->font->height;
+		priv->cols = width / priv->font->width;
+		break;
+	case FBCONSOLE_ROTATE_90:
+	case FBCONSOLE_ROTATE_270:
+		priv->rows = width / priv->font->height;
+		priv->cols = height / priv->font->width;
+		break;
+	}
 
 	return 0;
 }
@@ -562,6 +775,18 @@ static int set_margin(struct param_d *p, void *vpriv)
 	return 0;
 }
 
+static int set_rotation(struct param_d *p, void *vpriv)
+{
+	struct fbc_priv *priv = vpriv;
+
+	cls(priv);
+	priv->x = 0;
+	priv->y = 0;
+	setup_font(priv);
+
+	return 0;
+}
+
 int register_fbconsole(struct fb_info *fb)
 {
 	struct fbc_priv *priv;
@@ -621,6 +846,9 @@ int register_fbconsole(struct fb_info *fb)
 			NULL, &priv->margin.bottom, "%u", priv);
 	dev_add_param_uint32(&cdev->class_dev, "margin.right", set_margin,
 			NULL, &priv->margin.right, "%u", priv);
+	dev_add_param_enum(&cdev->class_dev, "rotation", set_rotation, NULL,
+                           &priv->rotation, rotation_names,
+                           ARRAY_SIZE(rotation_names), priv);
 
 	pr_info("registered as %s%d\n", cdev->class_dev.name, cdev->class_dev.id);
 
-- 
2.39.5



