Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFdeR-0004Bw-Go
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 07:32:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 09:31:49 +0200
Message-Id: <1437031912-24754-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1437031912-24754-1-git-send-email-s.hauer@pengutronix.de>
References: <1437031912-24754-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/12] fb: Add fb_enable/disable functions
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fb.c | 29 ++++++++++++++++++++++++-----
 include/fb.h       |  3 +++
 2 files changed, 27 insertions(+), 5 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index e30ab59..25f089a 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -29,6 +29,30 @@ static int fb_ioctl(struct cdev* cdev, int req, void *data)
 	return 0;
 }
 
+int fb_enable(struct fb_info *info)
+{
+	if (info->enabled)
+		return 0;
+
+	info->fbops->fb_enable(info);
+
+	info->enabled = true;
+
+	return 0;
+}
+
+int fb_disable(struct fb_info *info)
+{
+	if (!info->enabled)
+		return 0;
+
+	info->fbops->fb_disable(info);
+
+	info->enabled = false;
+
+	return 0;
+}
+
 static int fb_enable_set(struct param_d *param, void *priv)
 {
 	struct fb_info *info = priv;
@@ -36,16 +60,11 @@ static int fb_enable_set(struct param_d *param, void *priv)
 
 	enable = info->p_enable;
 
-	if (enable == info->enabled)
-		return 0;
-
 	if (enable)
 		info->fbops->fb_enable(info);
 	else
 		info->fbops->fb_disable(info);
 
-	info->enabled = enable;
-
 	return 0;
 }
 
diff --git a/include/fb.h b/include/fb.h
index 2db6ad6..9221618 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -146,6 +146,9 @@ struct display_timings *of_get_display_timings(struct device_node *np);
 
 int register_framebuffer(struct fb_info *info);
 
+int fb_enable(struct fb_info *info);
+int fb_disable(struct fb_info *info);
+
 #define FBIOGET_SCREENINFO	_IOR('F', 1, loff_t)
 #define	FBIO_ENABLE		_IO('F', 2)
 #define	FBIO_DISABLE		_IO('F', 3)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
