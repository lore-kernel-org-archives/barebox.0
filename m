Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZEEAi-0003Kr-In
 for barebox@lists.infradead.org; Sun, 12 Jul 2015 10:07:45 +0000
Received: by lbbpo10 with SMTP id po10so110982432lbb.3
 for <barebox@lists.infradead.org>; Sun, 12 Jul 2015 03:07:21 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 12 Jul 2015 13:07:12 +0300
Message-Id: <1436695632-20270-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fixup! WIP: video: implement quick-n-dirty framebuffer console
To: barebox@lists.infradead.org

---
Sascha moved fbconsole registration to common fb code.
So we can drop this supefluous code.
---
 drivers/video/sdl.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/video/sdl.c b/drivers/video/sdl.c
index 5407a1a..a568340 100644
--- a/drivers/video/sdl.c
+++ b/drivers/video/sdl.c
@@ -69,13 +69,8 @@ static int sdlfb_probe(struct device_d *dev)
 	dev->priv = fb;
 
 	ret = register_framebuffer(fb);
-	if (!ret) {
-		extern int register_fbconsole(struct fb_info *fb);
-
-		register_fbconsole(fb);
-
+	if (!ret)
 		return 0;
-	}
 
 err:
 	kfree(fb->screen_base);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
