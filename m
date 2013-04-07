Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9U-0001ML-6b
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:46 +0200
Message-Id: <1365343255-26497-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
References: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/21] fb: Use dev_add_param_bool for enable parameter
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fb.c | 33 ++++++++++++---------------------
 include/fb.h       |  1 +
 2 files changed, 13 insertions(+), 21 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index be29695..0e00cb7 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -28,31 +28,22 @@ static int fb_ioctl(struct cdev* cdev, int req, void *data)
 	return 0;
 }
 
-static int fb_enable_set(struct device_d *dev, struct param_d *param,
-		const char *val)
+static int fb_enable_set(struct param_d *param, void *priv)
 {
-	struct fb_info *info = dev->priv;
+	struct fb_info *info = priv;
 	int enable;
-	char *new;
-
-	if (!val)
-		return dev_param_set_generic(dev, param, NULL);
 
-	enable = simple_strtoul(val, NULL, 0);
+	enable = info->p_enable;
 
-	if (enable) {
-		if (!info->enabled)
-			info->fbops->fb_enable(info);
-		new = "1";
-	} else {
-		if (info->enabled)
-			info->fbops->fb_disable(info);
-		new = "0";
-	}
+	if (enable == info->enabled)
+		return 0;
 
-	dev_param_set_generic(dev, param, new);
+	if (enable)
+		info->fbops->fb_enable(info);
+	else
+		info->fbops->fb_disable(info);
 
-	info->enabled = !!enable;
+	info->enabled = enable;
 
 	return 0;
 }
@@ -165,8 +156,8 @@ static int fb_probe(struct device_d *dev)
 {
 	struct fb_info *info = dev->priv;
 
-	dev_add_param(dev, "enable", fb_enable_set, NULL, 0);
-	dev_set_param(dev, "enable", "0");
+	dev_add_param_bool(dev, "enable", fb_enable_set, NULL,
+			&info->p_enable, info);
 
 	if (info->num_modes && (info->mode_list != NULL) &&
 			(info->fbops->fb_activate_var != NULL)) {
diff --git a/include/fb.h b/include/fb.h
index c594418..23d6c6d 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -102,6 +102,7 @@ struct fb_info {
 	struct fb_bitfield transp;	/* transparency			*/
 
 	int enabled;
+	int p_enable;
 };
 
 int register_framebuffer(struct fb_info *info);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
