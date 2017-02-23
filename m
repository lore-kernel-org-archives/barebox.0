Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgx4P-0001g9-EO
 for barebox@lists.infradead.org; Thu, 23 Feb 2017 17:20:48 +0000
From: Bastian Stender <bst@pengutronix.de>
Date: Thu, 23 Feb 2017 18:20:22 +0100
Message-Id: <20170223172022.858-2-bst@pengutronix.de>
In-Reply-To: <20170223172022.858-1-bst@pengutronix.de>
References: <20170223172022.858-1-bst@pengutronix.de>
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
Subject: [PATCH 2/2] fbconsole: implement vt100 cursor shown/hidden
To: barebox@lists.infradead.org
Cc: Bastian Stender <bst@pengutronix.de>

This implements the vt100 show cursor command '[?25h' and the hide
cursor command '[?25l'. It is useful for displaying text on a non-active
(no stdout/stdin/stderr) console with 'echo'.

Signed-off-by: Bastian Stender <bst@pengutronix.de>
---
 drivers/video/fbconsole.c | 55 ++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 50 insertions(+), 5 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 3879741b2a..b6059e86f5 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -11,6 +11,7 @@ enum state_t {
 	LIT,				/* Literal input */
 	ESC,				/* Start of escape sequence */
 	CSI,				/* Reading arguments in "CSI Pn ;...*/
+	CSI_CNT,
 };
 
 struct fbc_priv {
@@ -34,10 +35,12 @@ struct fbc_priv {
 
 #define ANSI_FLAG_INVERT	(1 << 0)
 #define ANSI_FLAG_BRIGHT	(1 << 1)
+#define HIDE_CURSOR		(1 << 2)
 	unsigned flags;
 
 	int csipos;
 	u8 csi[256];
+	unsigned char csi_cmd;
 
 	int active;
 	int in_console;
@@ -144,6 +147,12 @@ static void video_invertchar(struct fbc_priv *priv, int x, int y)
 			priv->font->width, priv->font->height);
 }
 
+static void show_cursor(struct fbc_priv *priv, int x, int y)
+{
+	if (!(priv->flags & HIDE_CURSOR))
+		video_invertchar(priv, x, y);
+}
+
 static void printchar(struct fbc_priv *priv, int c)
 {
 	video_invertchar(priv, priv->x, priv->y);
@@ -200,7 +209,7 @@ static void printchar(struct fbc_priv *priv, int c)
 		priv->y = priv->rows;
 	}
 
-	video_invertchar(priv, priv->x, priv->y);
+	show_cursor(priv, priv->x, priv->y);
 
 	return;
 }
@@ -258,12 +267,43 @@ static void fbc_parse_csi(struct fbc_priv *priv)
 	case 'm':
 		fbc_parse_colors(priv);
 		return;
+	case '?': /* vt100: show/hide cursor */
+		priv->csi_cmd = last;
+		priv->state = CSI_CNT;
+		return;
+	case 'h':
+		/* suffix for vt100 "[?25h" */
+		switch (priv->csi_cmd) {
+		case '?': /* cursor visible */
+			priv->csi_cmd = -1;
+			if (!(priv->flags & HIDE_CURSOR))
+				break;
+
+			priv->flags &= ~HIDE_CURSOR;
+			/* show cursor now */
+			show_cursor(priv, priv->x, priv->y);
+			break;
+		}
+		break;
+	case 'l':
+		/* suffix for vt100 "[?25l" */
+		switch (priv->csi_cmd) {
+		case '?': /* cursor invisible */
+			priv->csi_cmd = -1;
+
+			/* hide cursor now */
+			video_invertchar(priv, priv->x, priv->y);
+			priv->flags |= HIDE_CURSOR;
+
+			break;
+		}
+		break;
 	case 'J':
 		cls(priv);
-		video_invertchar(priv, priv->x, priv->y);
+		show_cursor(priv, priv->x, priv->y);
 		return;
 	case 'H':
-		video_invertchar(priv, priv->x, priv->y);
+		show_cursor(priv, priv->x, priv->y);
 
 		pos = simple_strtoul(priv->csi, &end, 10);
 		priv->y = (pos && pos <= priv->rows + 1) ? pos - 1 : 0;
@@ -271,7 +311,7 @@ static void fbc_parse_csi(struct fbc_priv *priv)
 		pos = simple_strtoul(end + 1, NULL, 10);
 		priv->x = (pos && pos <= priv->cols + 1) ? pos - 1 : 0;
 
-		video_invertchar(priv, priv->x, priv->y);
+		show_cursor(priv, priv->x, priv->y);
 	case 'K':
 		pos = simple_strtoul(priv->csi, &end, 10);
 		video_invertchar(priv, priv->x, priv->y);
@@ -343,9 +383,14 @@ static void fbc_putc(struct console_device *cdev, char c)
 			break;
 		default:
 			fbc_parse_csi(priv);
-			priv->state = LIT;
+			if (priv->state != CSI_CNT)
+				priv->state = LIT;
 		}
 		break;
+	case CSI_CNT:
+		priv->state = CSI;
+		break;
+
 	}
 	priv->in_console = 0;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
