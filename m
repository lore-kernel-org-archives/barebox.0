Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNhyI-00039j-FE
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:46:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:45:40 +0200
Message-Id: <1438955141-8850-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] fb: fbconsole: print cursor after clearing the screen
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fbconsole.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 8805b55..745833a 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -251,6 +251,7 @@ static void fbc_parse_csi(struct fbc_priv *priv)
 		return;
 	case 'J':
 		cls(priv);
+		video_invertchar(priv, priv->x, priv->y);
 		return;
 	case 'H':
 		video_invertchar(priv, priv->x, priv->y);
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
