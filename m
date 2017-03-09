Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo1.mail-out.ovh.net ([178.32.228.1])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clujS-0008P3-Jp
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 09:51:40 +0000
Received: from player730.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id D89DB5DF1E
 for <barebox@lists.infradead.org>; Thu,  9 Mar 2017 10:51:15 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Mar 2017 10:57:21 +0100
Message-Id: <1489053441-12772-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1489053441-12772-1-git-send-email-plagnioj@jcrosoft.com>
References: <1489053441-12772-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] video: some framebuffer such as efi does support
 enable/disable
To: barebox@lists.infradead.org

so allow them to do not pass this function via fbops
and indicate they are always on.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/video/fb.c | 29 ++++++++++++++++++++++++-----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 6b88f2df9..63a818eb2 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -19,10 +19,12 @@ static int fb_ioctl(struct cdev* cdev, int req, void *data)
 		*fb = info;
 		break;
 	case FBIO_ENABLE:
-		info->fbops->fb_enable(info);
+		if (info->fbops->fb_enable)
+			info->fbops->fb_enable(info);
 		break;
 	case FBIO_DISABLE:
-		info->fbops->fb_disable(info);
+		if (info->fbops->fb_disable)
+			info->fbops->fb_disable(info);
 		break;
 	default:
 		return -ENOSYS;
@@ -94,7 +96,8 @@ int fb_enable(struct fb_info *info)
 	if (ret)
 		return ret;
 
-	info->fbops->fb_enable(info);
+	if (info->fbops->fb_enable)
+		info->fbops->fb_enable(info);
 
 	info->enabled = true;
 
@@ -106,7 +109,8 @@ int fb_disable(struct fb_info *info)
 	if (!info->enabled)
 		return 0;
 
-	info->fbops->fb_disable(info);
+	if (info->fbops->fb_disable)
+		info->fbops->fb_disable(info);
 
 	fb_release_shadowfb(info);
 
@@ -266,6 +270,8 @@ static int fb_set_shadowfb(struct param_d *p, void *priv)
 	return fb_alloc_shadowfb(info);
 }
 
+struct fb_ops dummy_fbops;
+
 int register_framebuffer(struct fb_info *info)
 {
 	int id = get_free_deviceid("fb");
@@ -273,6 +279,16 @@ int register_framebuffer(struct fb_info *info)
 	int ret, num_modes, i;
 	const char **names;
 
+	if (!info->p_enable) {
+		if (!info->fbops)
+			return -EINVAL;
+		if (!info->fbops->fb_enable && !info->fbops->fb_disable)
+			return -EINVAL;
+	} else {
+		if (!info->fbops)
+			info->fbops = &dummy_fbops;
+	}
+
 	dev = &info->dev;
 
 	/*
@@ -308,7 +324,10 @@ int register_framebuffer(struct fb_info *info)
 	if (ret)
 		goto err_free;
 
-	dev_add_param_bool(dev, "enable", fb_enable_set, NULL,
+	if (info->p_enable)
+		dev_add_param_int_ro(dev, "enable", info->p_enable, "%d");
+	else
+		dev_add_param_bool(dev, "enable", fb_enable_set, NULL,
 			&info->p_enable, info);
 
 	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_EDID))
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
