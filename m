Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sc6bB-0005Ib-1H
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 03:07:54 +0000
Received: by lbbgg6 with SMTP id gg6so5324068lbb.36
 for <barebox@lists.infradead.org>; Tue, 05 Jun 2012 20:07:50 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  6 Jun 2012 07:07:40 +0400
Message-Id: <1338952060-3333-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] video/s3c24xx.c: fix doxygen comment for s3cfb_activate_var()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/video/s3c24xx.c |    1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/video/s3c24xx.c b/drivers/video/s3c24xx.c
index 564ccbd..5d5d8f6 100644
--- a/drivers/video/s3c24xx.c
+++ b/drivers/video/s3c24xx.c
@@ -193,7 +193,6 @@ static void s3cfb_disable_controller(struct fb_info *fb_info)
 /**
  * Prepare the video hardware for a specified video mode
  * @param fb_info Framebuffer information
- * @param mode The video mode description to initialize
  * @return 0 on success
  */
 static int s3cfb_activate_var(struct fb_info *fb_info)
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
