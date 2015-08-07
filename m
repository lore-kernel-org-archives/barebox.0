Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZNhyK-0008Ru-NN
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:46:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:45:41 +0200
Message-Id: <1438955141-8850-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1438955141-8850-1-git-send-email-s.hauer@pengutronix.de>
References: <1438955141-8850-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 8/8] fb: fbconsole: Add missing blits
To: Barebox List <barebox@lists.infradead.org>

When using offscreen rendering we need some more points where we
blit the offscreen buffer to the screen. Add them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fbconsole.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 745833a..b10503e 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -58,6 +58,7 @@ static void cls(struct fbc_priv *priv)
 	void *buf = gui_screen_render_buffer(priv->sc);
 
 	memset(buf, 0, priv->fb->line_length * priv->fb->yres);
+	gu_screen_blit(priv->sc);
 }
 
 struct rgb {
@@ -138,6 +139,8 @@ static void video_invertchar(struct fbc_priv *priv, int x, int y)
 
 	gu_invert_area(priv->fb, buf, x * priv->font_width, y * priv->font_height,
 			priv->font_width, priv->font_height);
+	gu_screen_blit_area(priv->sc, x * priv->font_width, y * priv->font_height,
+			priv->font_width, priv->font_height);
 }
 
 static void printchar(struct fbc_priv *priv, int c)
@@ -170,7 +173,10 @@ static void printchar(struct fbc_priv *priv, int c)
 
 	default:
 		drawchar(priv, priv->x, priv->y, c);
-		gu_screen_blit(priv->sc);
+
+		gu_screen_blit_area(priv->sc, priv->x * priv->font_width,
+				priv->y * priv->font_height,
+				priv->font_width, priv->font_height);
 
 		priv->x++;
 		if (priv->x > priv->cols) {
@@ -188,6 +194,7 @@ static void printchar(struct fbc_priv *priv, int c)
 
 		memcpy(buf, buf + line_height, line_height * (priv->rows + 1));
 		memset(buf + line_height * priv->rows, 0, line_height);
+		gu_screen_blit(priv->sc);
 		priv->y = priv->rows;
 	}
 
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
