Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22c.google.com ([2a00:1450:4010:c07::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aRFxU-0006uL-Mv
 for barebox@lists.infradead.org; Thu, 04 Feb 2016 09:12:13 +0000
Received: by mail-lf0-x22c.google.com with SMTP id 78so31679655lfy.3
 for <barebox@lists.infradead.org>; Thu, 04 Feb 2016 01:11:51 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  4 Feb 2016 12:11:43 +0300
Message-Id: <1454577103-30998-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] drivers: video: fb: make locally used fb_set_shadowfb() static
To: barebox@lists.infradead.org

The patch fixes this compiler's warning:

    drivers/video/fb.c:233:5: warning: no previous prototype for
    'fb_set_shadowfb' [-Wmissing-prototypes]
     int fb_set_shadowfb(struct param_d *p, void *priv)
         ^

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/video/fb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index d159d60..09bba00 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -230,7 +230,7 @@ void *fb_get_screen_base(struct fb_info *info)
 		info->screen_base_shadow : info->screen_base;
 }
 
-int fb_set_shadowfb(struct param_d *p, void *priv)
+static int fb_set_shadowfb(struct param_d *p, void *priv)
 {
 	struct fb_info *info = priv;
 
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
