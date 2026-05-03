Delivery-date: Sun, 03 May 2026 10:45:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS5-000U7j-0i
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS0-0004Ty-7i
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CdGVXOu+9usN/eSGwjtdzLW2TtteEjmQiyq1usGpRpo=; b=yKXJYX5GOd9aDfxmk9+y4obaTf
	d/VOoJZrMEPYivHaeZaDd8Ror0pBlkbJhQ1Tyt6sr+Y5w2rpKb1rIyFYeVevniKsbD1APBdS32IWK
	YrY9GxZPktJZsxKvop5/vmvzn4ZcKETIABAWMfZ0ddzO1F03Pk2NUYKJkgokwrxEb2HM4rpSZ11hR
	6Rf9GExsBtudVPqNjANYi4rF3Od+MnNaY7nmX9oZRlGyABNVHtreWvDCd4R3xxHQ9nu+p5AlSRZFl
	ES3NEAD1HCLObBiILsgAJdlU5n0vZFgjCXPTvtY/nEo4xO9jjShQGRjWTvo8NztxbW4b1mrjbARox
	N0bz1CCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRO-0000000AeyE-2obR;
	Sun, 03 May 2026 08:44:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRJ-0000000Aeo3-2R8L
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRI-0003oP-02; Sun, 03 May 2026 10:44:36 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:11 +0200
Message-ID: <20260503084430.2765761-10-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014437_617955_EA80DB9A 
X-CRM114-Status: GOOD (  14.22  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/20] fbconsole: precompute foreground/background colors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We did color format conversion on every drawchar(), when it would have
been sufficient to do this only when the color is actually changed.

As clearing the screen should also be color aware and doesn't
necessarily involve a call to drawchar(), optimize the color conversion
to happen on only when the color actually changes.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 77 ++++++++++++++++++++++++++-------------
 1 file changed, 52 insertions(+), 25 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 285f22901573..74b37b429f2a 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -39,6 +39,7 @@ enum ansi_color {
 };
 
 #define DEFAULT_COLOR	WHITE
+#define DEFAULT_BGCOLOR	BLACK
 
 struct fbc_priv {
 	struct console_device cdev;
@@ -66,6 +67,9 @@ struct fbc_priv {
 	int color;
 	int bgcolor;
 
+	u32 color_rgb;
+	u32 bgcolor_rgb;
+
 #define ANSI_FLAG_INVERT	(1 << 0)
 #define ANSI_FLAG_BRIGHT	(1 << 1)
 #define SGR_ATTRIBUTES		(ANSI_FLAG_INVERT | ANSI_FLAG_BRIGHT)
@@ -200,8 +204,6 @@ static void drawchar(struct fbc_priv *priv, int x, int y, int c)
 	int i;
 	const uint8_t *inbuf;
 	int line_length;
-	u32 color, bgcolor;
-	struct rgb *rgb;
 	int xstep;
 	int ystep;
 	int startx;
@@ -214,18 +216,6 @@ static void drawchar(struct fbc_priv *priv, int x, int y, int c)
 
 	line_length = priv->fb->line_length;
 
-	color = priv->flags & ANSI_FLAG_INVERT ? priv->bgcolor : priv->color;
-	bgcolor = priv->flags & ANSI_FLAG_INVERT ? priv->color : priv->bgcolor;
-
-	if (priv->flags & ANSI_FLAG_BRIGHT)
-		color += BRIGHT;
-
-	rgb = &colors[color];
-	color = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0xff);
-
-	rgb = &colors[bgcolor];
-	bgcolor = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0x0);
-
 	adr = buf;
 
 	switch (priv->rotation) {
@@ -271,9 +261,11 @@ static void drawchar(struct fbc_priv *priv, int x, int y, int c)
 			}
 
 			if (*inbuf & mask)
-				gu_set_pixel(priv->fb, adr + j * xstep, color);
+				gu_set_pixel(priv->fb, adr + j * xstep,
+					     priv->color_rgb);
 			else
-				gu_set_pixel(priv->fb, adr + j * xstep, bgcolor);
+				gu_set_pixel(priv->fb, adr + j * xstep,
+					     priv->bgcolor_rgb);
 
 			mask >>= 1;
 
@@ -497,8 +489,41 @@ static void printchar(struct fbc_priv *priv, int c)
 	toggle_cursor_visibility(priv);
 }
 
+static void fbc_update_colors(struct fbc_priv *priv, int color, int bgcolor)
+{
+	struct rgb *rgb;
+
+	if (color >= 0)
+		priv->color = color;
+	if (bgcolor >= 0)
+		priv->bgcolor = bgcolor;
+
+	if (priv->flags & ANSI_FLAG_INVERT) {
+		color = priv->bgcolor;
+		bgcolor = priv->color;
+	} else {
+		color = priv->color;
+		bgcolor = priv->bgcolor;
+	}
+
+	if (priv->flags & ANSI_FLAG_BRIGHT)
+		color += BRIGHT;
+
+	rgb = &colors[color];
+	priv->color_rgb = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0xff);
+
+	rgb = &colors[bgcolor];
+	priv->bgcolor_rgb = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0x0);
+}
+
+static void fbc_reset_colors(struct fbc_priv *priv)
+{
+	fbc_update_colors(priv, DEFAULT_COLOR, DEFAULT_BGCOLOR);
+}
+
 static void fbc_parse_colors(struct fbc_priv *priv)
 {
+	int color = -1, bgcolor = -1;
 	int code;
 	char *str;
 
@@ -509,8 +534,8 @@ static void fbc_parse_colors(struct fbc_priv *priv)
 		switch (code) {
 		case 0:
 			priv->flags &= ~SGR_ATTRIBUTES;
-			priv->color = DEFAULT_COLOR;
-			priv->bgcolor = BLACK;
+			color = DEFAULT_COLOR;
+			bgcolor = DEFAULT_BGCOLOR;
 			break;
 		case 1:
 			priv->flags |= ANSI_FLAG_BRIGHT;
@@ -519,20 +544,20 @@ static void fbc_parse_colors(struct fbc_priv *priv)
 			priv->flags |= ANSI_FLAG_INVERT;
 			break;
 		case 30 ... 37:
-			priv->color = code - 30;
+			color = code - 30;
 			break;
 		case 39:
-			priv->color = DEFAULT_COLOR;
+			color = DEFAULT_COLOR;
 			break;
 		case 40 ... 47:
-			priv->bgcolor = code - 40;
+			bgcolor = code - 40;
 			break;
 		case 49:
-			priv->bgcolor = BLACK;
+			bgcolor = DEFAULT_BGCOLOR;
 			break;
 		case 90 ... 97:
 			priv->flags |= ANSI_FLAG_BRIGHT;
-			priv->color = code - 90;
+			color = code - 90;
 			break;
 		}
 
@@ -540,6 +565,8 @@ static void fbc_parse_colors(struct fbc_priv *priv)
 			break;
 		str++;
 	}
+
+	fbc_update_colors(priv, color, bgcolor);
 }
 
 static void fbc_set_cursor_row(struct fbc_priv *priv, int y)
@@ -872,8 +899,8 @@ int register_fbconsole(struct fb_info *fb)
 	priv->fb = fb;
 	priv->x = 0;
 	priv->y = 0;
-	priv->color = WHITE;
-	priv->bgcolor = BLACK;
+
+	fbc_reset_colors(priv);
 
 	cdev = &priv->cdev;
 	cdev->dev = &fb->dev;
-- 
2.47.3



