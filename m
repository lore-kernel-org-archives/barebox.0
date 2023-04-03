Delivery-date: Mon, 03 Apr 2023 14:20:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjJAJ-008VOj-Rz
	for lore@lore.pengutronix.de; Mon, 03 Apr 2023 14:20:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjJAJ-00039a-IP
	for lore@pengutronix.de; Mon, 03 Apr 2023 14:20:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FUcRMYeeDEYi1wuXjVzwetZPPzrrakbqB9K5QpqyHjU=; b=t98Q8Xx2B/NjEll3w/dhbTxefB
	1t/XiwxL1laAVtpyx+cuBbrVBaSVav9vw0AWr9zg6LlhmpNrqoC3odbXEiX1llkbPA0IFmMKoG16k
	N56uJF61BZUgbKuX1DmnF1FrEsLVQqX3N2DkOCK3dc7hM/hf9AWPvoZ6u+ykTHnaNNduo/ybWO/Eg
	P45Y+Z/HrukLP964VXkxAhknJ039T9TD5P6pgBumffxCIPM8ZnyKJJNjGsndD/gTzQ60aeDTlZVK7
	krHYwYFiAttP7tqANj3wLe5w7xSKNahQrAsZvY87bSOOEX64RtWLe0hQ6f7Y2yqvsKwBXtlpCyudu
	dU2jpoKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjJ99-00FFHw-3D;
	Mon, 03 Apr 2023 12:18:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjJ95-00FFGV-30
	for barebox@lists.infradead.org;
	Mon, 03 Apr 2023 12:18:49 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pjJ94-000303-LA; Mon, 03 Apr 2023 14:18:46 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  3 Apr 2023 14:18:43 +0200
Message-Id: <20230403121844.3447836-2-p.zabel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230403121844.3447836-1-p.zabel@pengutronix.de>
References: <20230403121844.3447836-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_051847_991035_FB1E8EB0 
X-CRM114-Status: GOOD (  12.47  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] video: fbconsole: add optional damage tracking
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Annotate framebuffer updates with damage rectangles so drivers may
implement partial updates for displays with an integrated framebuffer.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/video/fbconsole.c | 32 ++++++++++++++++++++++++++++----
 1 file changed, 28 insertions(+), 4 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 070378aa2352..25d7ea685ff6 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -18,6 +18,7 @@ enum state_t {
 struct fbc_priv {
 	struct console_device cdev;
 	struct fb_info *fb;
+	struct fb_rect rect;
 
 	struct screen *sc;
 
@@ -60,9 +61,11 @@ static int fbc_tstc(struct console_device *cdev)
 static void cls(struct fbc_priv *priv)
 {
 	void *buf = gui_screen_render_buffer(priv->sc);
+	struct fb_info *fb = priv->fb;
 
 	memset(buf, 0, priv->fb->line_length * priv->fb->yres);
 	gu_screen_blit(priv->sc);
+	fb_damage(fb, &priv->rect);
 }
 
 struct rgb {
@@ -139,13 +142,20 @@ static void drawchar(struct fbc_priv *priv, int x, int y, int c)
 static void video_invertchar(struct fbc_priv *priv, int x, int y)
 {
 	void *buf;
+	struct fb_rect rect;
+
+	rect.x1 = x * priv->font->width;
+	rect.y1 = y * priv->font->height;
+	rect.x2 = rect.x1 + priv->font->width;
+	rect.y2 = rect.y1 + priv->font->height;
 
 	buf = gui_screen_render_buffer(priv->sc);
 
-	gu_invert_area(priv->fb, buf, x * priv->font->width, y * priv->font->height,
+	gu_invert_area(priv->fb, buf, rect.x1, rect.y1,
 			priv->font->width, priv->font->height);
-	gu_screen_blit_area(priv->sc, x * priv->font->width, y * priv->font->height,
+	gu_screen_blit_area(priv->sc, rect.x1, rect.y1,
 			priv->font->width, priv->font->height);
+	fb_damage(priv->fb, &rect);
 }
 
 static void show_cursor(struct fbc_priv *priv, int x, int y)
@@ -156,6 +166,9 @@ static void show_cursor(struct fbc_priv *priv, int x, int y)
 
 static void printchar(struct fbc_priv *priv, int c)
 {
+	struct fb_info *fb = priv->fb;
+	struct fb_rect rect;
+
 	video_invertchar(priv, priv->x, priv->y);
 
 	switch (c) {
@@ -185,9 +198,14 @@ static void printchar(struct fbc_priv *priv, int c)
 	default:
 		drawchar(priv, priv->x, priv->y, c);
 
-		gu_screen_blit_area(priv->sc, priv->x * priv->font->width,
-				priv->y * priv->font->height,
+		rect.x1 = priv->x * priv->font->width;
+		rect.y1 = priv->y * priv->font->height;
+		rect.x2 =  rect.x1 + priv->font->width;
+		rect.y2 =  rect.y1 + priv->font->height;
+
+		gu_screen_blit_area(priv->sc, rect.x1, rect.y1,
 				priv->font->width, priv->font->height);
+		fb_damage(fb, &rect);
 
 		priv->x++;
 		if (priv->x > priv->cols) {
@@ -207,6 +225,7 @@ static void printchar(struct fbc_priv *priv, int c)
 		memset(buf + line_height * priv->rows, 0, line_height);
 
 		gu_screen_blit(priv->sc);
+		fb_damage(fb, &priv->rect);
 		priv->y = priv->rows;
 	}
 
@@ -508,6 +527,11 @@ int register_fbconsole(struct fb_info *fb)
 			set_font, NULL,
 			&priv->par_font_val, priv);
 
+	priv->rect.x1 = 0;
+	priv->rect.y1 = 0;
+	priv->rect.x2 = fb->xres;
+	priv->rect.y2 = fb->yres;
+
 	pr_info("registered as %s%d\n", cdev->class_dev.name, cdev->class_dev.id);
 
 	return 0;
-- 
2.39.2



