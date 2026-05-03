Delivery-date: Sun, 03 May 2026 10:45:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSSC-000UBk-2V
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS9-0004ey-Fg
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f1kVpPO01WTTOJdjVGeqk1ycTx2r5h8QRKM4yrxfJQY=; b=dNYG2CxAA6nE370rBM1T4+mC2m
	Qed/m93+W1IghNqpuDFWpoDh+Wzt0mnatdJPslviuesT2ksvltjFyZBmMa1B0z6ktWt0dIqmSTxpk
	e8rHvzsr1QK26O2jlqS0pb/BRgDDqB8la1CYgedc8J/j1Log/q2RMjrWF8VtTipzltivNIg0Gq0zy
	TDsFVhCjHc7mm2wgynUwqmbhXJKcwiDgYV93SpKoSk+HiBVfK53EH2g4QicHbtVn+sKZS4/Dw52kW
	GpQPEqbVmImnbwzuCsBNAOXdVwq1NybyIzOC9krW2IS3zJWCPuCmx4xywW/KVHL8UluDjLHnub/pJ
	LexFlH4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRP-0000000Aezj-15jz;
	Sun, 03 May 2026 08:44:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRJ-0000000Aeoc-4BXm
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRI-0003oP-EE; Sun, 03 May 2026 10:44:36 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:12 +0200
Message-ID: <20260503084430.2765761-11-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014438_222106_6A014D7C 
X-CRM114-Status: GOOD (  19.28  )
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
Subject: [PATCH 10/20] fbconsole: collect renderable state into struct fbc_screen_state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Group the cursor position, color and attribute flag state that together
describe what the terminal is currently rendering into a single
struct fbc_screen_state.

This will allow us later on to implement DEC save/restore (\e7/\e8)
as single struct assignment.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 129 ++++++++++++++++++++------------------
 1 file changed, 69 insertions(+), 60 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 74b37b429f2a..1c4418757b43 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -41,6 +41,22 @@ enum ansi_color {
 #define DEFAULT_COLOR	WHITE
 #define DEFAULT_BGCOLOR	BLACK
 
+struct fbc_screen_state {
+	unsigned int x, y; /* cursor position */
+
+	int color;
+	int bgcolor;
+
+	u32 color_rgb;
+	u32 bgcolor_rgb;
+
+#define ANSI_FLAG_INVERT	(1 << 0)
+#define ANSI_FLAG_BRIGHT	(1 << 1)
+#define SGR_ATTRIBUTES		(ANSI_FLAG_INVERT | ANSI_FLAG_BRIGHT)
+#define HIDE_CURSOR		(1 << 2)
+	unsigned flags;
+};
+
 struct fbc_priv {
 	struct console_device cdev;
 	struct fb_info *fb;
@@ -59,23 +75,12 @@ struct fbc_priv {
 	const struct font_desc *font;
 
 	unsigned int cols, rows;
-	unsigned int x, y; /* cursor position */
+
+	struct fbc_screen_state cur;
 
 	unsigned int rotation;
 	enum state_t state;
 
-	int color;
-	int bgcolor;
-
-	u32 color_rgb;
-	u32 bgcolor_rgb;
-
-#define ANSI_FLAG_INVERT	(1 << 0)
-#define ANSI_FLAG_BRIGHT	(1 << 1)
-#define SGR_ATTRIBUTES		(ANSI_FLAG_INVERT | ANSI_FLAG_BRIGHT)
-#define HIDE_CURSOR		(1 << 2)
-	unsigned flags;
-
 	int csipos;
 	u8 csi[256];
 	unsigned char csi_cmd;
@@ -262,10 +267,10 @@ static void drawchar(struct fbc_priv *priv, int x, int y, int c)
 
 			if (*inbuf & mask)
 				gu_set_pixel(priv->fb, adr + j * xstep,
-					     priv->color_rgb);
+					     priv->cur.color_rgb);
 			else
 				gu_set_pixel(priv->fb, adr + j * xstep,
-					     priv->bgcolor_rgb);
+					     priv->cur.bgcolor_rgb);
 
 			mask >>= 1;
 
@@ -327,8 +332,8 @@ static void video_invertchar(struct fbc_priv *priv, int x, int y)
 
 static void toggle_cursor_visibility(struct fbc_priv *priv)
 {
-	if (!(priv->flags & HIDE_CURSOR))
-		video_invertchar(priv, priv->x, priv->y);
+	if (!(priv->cur.flags & HIDE_CURSOR))
+		video_invertchar(priv, priv->cur.x, priv->cur.y);
 }
 
 static void fb_scroll_up_0(struct fbc_priv *priv, void *adr, int width, int height)
@@ -445,45 +450,47 @@ static void fb_scroll_up(struct fbc_priv *priv)
 
 static void printchar(struct fbc_priv *priv, int c)
 {
+	struct fbc_screen_state *cur = &priv->cur;
+
 	toggle_cursor_visibility(priv);
 
 	switch (c) {
 	case '\007': /* bell: ignore */
 		break;
 	case '\b':
-		if (priv->x > 0) {
-			priv->x--;
-		} else if (priv->y > 0) {
-			priv->x = priv->cols - 1;
-			priv->y--;
+		if (cur->x > 0) {
+			cur->x--;
+		} else if (cur->y > 0) {
+			cur->x = priv->cols - 1;
+			cur->y--;
 		}
 		break;
 	case '\n':
 	case '\013': /* Vertical tab is the same as Line Feed */
-		priv->y++;
+		cur->y++;
 		break;
 
 	case '\r':
-		priv->x = 0;
+		cur->x = 0;
 		break;
 
 	case '\t':
-		priv->x = (priv->x + 8) & ~0x3;
+		cur->x = (cur->x + 8) & ~0x3;
 		break;
 
 	default:
-		drawchar(priv, priv->x, priv->y, c);
+		drawchar(priv, priv->cur.x, priv->cur.y, c);
 
-		priv->x++;
-		if (priv->x >= priv->cols) {
-			priv->y++;
-			priv->x = 0;
+		cur->x++;
+		if (cur->x >= priv->cols) {
+			cur->y++;
+			cur->x = 0;
 		}
 	}
 
-	if (priv->y >= priv->rows) {
+	if (cur->y >= priv->rows) {
 		fb_scroll_up(priv);
-		priv->y = priv->rows - 1;
+		cur->y = priv->rows - 1;
 	}
 
 	toggle_cursor_visibility(priv);
@@ -491,29 +498,30 @@ static void printchar(struct fbc_priv *priv, int c)
 
 static void fbc_update_colors(struct fbc_priv *priv, int color, int bgcolor)
 {
+	struct fbc_screen_state *cur = &priv->cur;
 	struct rgb *rgb;
 
 	if (color >= 0)
-		priv->color = color;
+		cur->color = color;
 	if (bgcolor >= 0)
-		priv->bgcolor = bgcolor;
+		cur->bgcolor = bgcolor;
 
-	if (priv->flags & ANSI_FLAG_INVERT) {
-		color = priv->bgcolor;
-		bgcolor = priv->color;
+	if (cur->flags & ANSI_FLAG_INVERT) {
+		color = cur->bgcolor;
+		bgcolor = cur->color;
 	} else {
-		color = priv->color;
-		bgcolor = priv->bgcolor;
+		color = cur->color;
+		bgcolor = cur->bgcolor;
 	}
 
-	if (priv->flags & ANSI_FLAG_BRIGHT)
+	if (cur->flags & ANSI_FLAG_BRIGHT)
 		color += BRIGHT;
 
 	rgb = &colors[color];
-	priv->color_rgb = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0xff);
+	cur->color_rgb = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0xff);
 
 	rgb = &colors[bgcolor];
-	priv->bgcolor_rgb = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0x0);
+	cur->bgcolor_rgb = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0x0);
 }
 
 static void fbc_reset_colors(struct fbc_priv *priv)
@@ -523,6 +531,7 @@ static void fbc_reset_colors(struct fbc_priv *priv)
 
 static void fbc_parse_colors(struct fbc_priv *priv)
 {
+	struct fbc_screen_state *cur = &priv->cur;
 	int color = -1, bgcolor = -1;
 	int code;
 	char *str;
@@ -533,15 +542,15 @@ static void fbc_parse_colors(struct fbc_priv *priv)
 		code = simple_strtoul(str, &str, 10);
 		switch (code) {
 		case 0:
-			priv->flags &= ~SGR_ATTRIBUTES;
+			cur->flags &= ~SGR_ATTRIBUTES;
 			color = DEFAULT_COLOR;
 			bgcolor = DEFAULT_BGCOLOR;
 			break;
 		case 1:
-			priv->flags |= ANSI_FLAG_BRIGHT;
+			cur->flags |= ANSI_FLAG_BRIGHT;
 			break;
 		case 7:
-			priv->flags |= ANSI_FLAG_INVERT;
+			cur->flags |= ANSI_FLAG_INVERT;
 			break;
 		case 30 ... 37:
 			color = code - 30;
@@ -556,7 +565,7 @@ static void fbc_parse_colors(struct fbc_priv *priv)
 			bgcolor = DEFAULT_BGCOLOR;
 			break;
 		case 90 ... 97:
-			priv->flags |= ANSI_FLAG_BRIGHT;
+			cur->flags |= ANSI_FLAG_BRIGHT;
 			color = code - 90;
 			break;
 		}
@@ -571,12 +580,12 @@ static void fbc_parse_colors(struct fbc_priv *priv)
 
 static void fbc_set_cursor_row(struct fbc_priv *priv, int y)
 {
-	priv->y = clamp_t(int, y, 0, priv->rows - 1);
+	priv->cur.y = clamp_t(int, y, 0, priv->rows - 1);
 }
 
 static void fbc_set_cursor_col(struct fbc_priv *priv, unsigned int x)
 {
-	priv->x = clamp_t(int, x, 0, priv->cols - 1);
+	priv->cur.x = clamp_t(int, x, 0, priv->cols - 1);
 }
 
 static bool fbc_parse_csi(struct fbc_priv *priv)
@@ -595,10 +604,10 @@ static bool fbc_parse_csi(struct fbc_priv *priv)
 		/* suffix for vt100 "[?25h" */
 		switch (priv->csi_cmd) {
 		case '?': /* cursor visible */
-			if (!(priv->flags & HIDE_CURSOR))
+			if (!(priv->cur.flags & HIDE_CURSOR))
 				break;
 
-			priv->flags &= ~HIDE_CURSOR;
+			priv->cur.flags &= ~HIDE_CURSOR;
 			/* show cursor now */
 			toggle_cursor_visibility(priv);
 			return true;
@@ -610,7 +619,7 @@ static bool fbc_parse_csi(struct fbc_priv *priv)
 		case '?': /* cursor invisible */
 			/* hide cursor now */
 			toggle_cursor_visibility(priv);
-			priv->flags |= HIDE_CURSOR;
+			priv->cur.flags |= HIDE_CURSOR;
 			return true;
 		}
 		break;
@@ -634,12 +643,12 @@ static bool fbc_parse_csi(struct fbc_priv *priv)
 		toggle_cursor_visibility(priv);
 		switch (pos) {
 		case 0:
-			for (i = priv->x; i < priv->cols; i++)
-				drawchar(priv, i, priv->y, ' ');
+			for (i = priv->cur.x; i < priv->cols; i++)
+				drawchar(priv, i, priv->cur.y, ' ');
 			break;
 		case 1:
-			for (i = 0; i <= priv->x; i++)
-				drawchar(priv, i, priv->y, ' ');
+			for (i = 0; i <= priv->cur.x; i++)
+				drawchar(priv, i, priv->cur.y, ' ');
 			break;
 		}
 		toggle_cursor_visibility(priv);
@@ -771,7 +780,7 @@ static int setup_font(struct fbc_priv *priv)
 	if (priv->rows != newrows || priv->cols != newcols) {
 		priv->rows = newrows;
 		priv->cols = newcols;
-		priv->x = priv->y = 0;
+		priv->cur.x = priv->cur.y = 0;
 	}
 
 	return 0;
@@ -866,8 +875,8 @@ static int set_rotation(struct param_d *p, void *vpriv)
 	struct fbc_priv *priv = vpriv;
 
 	cls(priv);
-	priv->x = 0;
-	priv->y = 0;
+	priv->cur.x = 0;
+	priv->cur.y = 0;
 	setup_font(priv);
 
 	return 0;
@@ -897,8 +906,8 @@ int register_fbconsole(struct fb_info *fb)
 		fbname += 2;
 
 	priv->fb = fb;
-	priv->x = 0;
-	priv->y = 0;
+	priv->cur.x = 0;
+	priv->cur.y = 0;
 
 	fbc_reset_colors(priv);
 
-- 
2.47.3



