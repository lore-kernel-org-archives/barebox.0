Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x231.google.com ([2a00:1450:4010:c07::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZuZxC-0003d5-01
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 05:52:51 +0000
Received: by lfbn126 with SMTP id n126so67733259lfb.2
 for <barebox@lists.infradead.org>; Thu, 05 Nov 2015 21:52:28 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  6 Nov 2015 08:52:18 +0300
Message-Id: <1446789139-4781-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1446789139-4781-1-git-send-email-antonynpavlov@gmail.com>
References: <1446789139-4781-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3] fb: satisfy semantics for shadowfb's alloc/free
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

From: Aleksey Kuleshov <rndfax@yandex.ru>

Console enable -> alloc shadowfb.
Console disable -> free shadowfb.
Otherwise, if resolution gets changed, shadowfb will not be affected.

Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
---
 drivers/video/fb.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 3672c44..bd8bab0 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -31,6 +31,12 @@ static int fb_ioctl(struct cdev* cdev, int req, void *data)
 	return 0;
 }
 
+static void fb_release_shadowfb(struct fb_info *info)
+{
+	free(info->screen_base_shadow);
+	info->screen_base_shadow = NULL;
+}
+
 static int fb_alloc_shadowfb(struct fb_info *info)
 {
 	if (info->screen_base_shadow && info->shadowfb)
@@ -47,8 +53,7 @@ static int fb_alloc_shadowfb(struct fb_info *info)
 		memcpy(info->screen_base_shadow, info->screen_base,
 				info->line_length * info->yres);
 	} else {
-		free(info->screen_base_shadow);
-		info->screen_base_shadow = NULL;
+		fb_release_shadowfb(info);
 	}
 
 	return 0;
@@ -79,6 +84,8 @@ int fb_disable(struct fb_info *info)
 
 	info->fbops->fb_disable(info);
 
+	fb_release_shadowfb(info);
+
 	info->enabled = false;
 
 	return 0;
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
