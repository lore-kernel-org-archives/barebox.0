Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kuED4-0002Eq-IL
 for barebox@lists.infradead.org; Tue, 29 Dec 2020 12:34:43 +0000
Received: from geraet.fritz.box (muedsl-82-207-223-085.citykom.de
 [82.207.223.85]) (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 116AE200005
 for <barebox@lists.infradead.org>; Tue, 29 Dec 2020 12:34:37 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 29 Dec 2020 13:34:33 +0100
Message-Id: <20201229123433.1054113-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] video: sdl: delete useless debug output
To: barebox@lists.infradead.org

The information on the color mode is only populated at framebuffer
enable time. At probe time, it's all zero, so it's useless to print it
out. Drop it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/video/sdl.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/video/sdl.c b/drivers/video/sdl.c
index 8f5b409efb4a..9811b2cf128e 100644
--- a/drivers/video/sdl.c
+++ b/drivers/video/sdl.c
@@ -59,15 +59,6 @@ static int sdlfb_probe(struct device_d *dev)
 	fb->screen_base = xzalloc(fb->xres * fb->yres *
 				  fb->bits_per_pixel >> 3);
 
-	dev_dbg(dev, "red: length = %d, offset = %d\n",
-		fb->red.length, fb->red.offset);
-	dev_dbg(dev, "green: length = %d, offset = %d\n",
-		fb->green.length, fb->green.offset);
-	dev_dbg(dev, "blue: length = %d, offset = %d\n",
-		fb->blue.length, fb->blue.offset);
-	dev_dbg(dev, "transp: length = %d, offset = %d\n",
-		fb->transp.length, fb->transp.offset);
-
 	/* add runtime hardware info */
 	dev->priv = fb;
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
