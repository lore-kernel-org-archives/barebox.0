Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGVAr-0006Mi-T5
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 13:27:42 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 388F3FFAB95
 for <barebox@lists.infradead.org>; Tue, 25 Sep 2012 15:33:40 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 25 Sep 2012 15:25:07 +0200
Message-Id: <1348579509-8255-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120925132132.GM26553@game.jcrosoft.org>
References: <20120925132132.GM26553@game.jcrosoft.org>
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
Subject: [PATCH 1/3] fb: move add param to bus probe
To: barebox@lists.infradead.org

so the param add added only of the device successed to register.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/video/fb.c |   23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index ae6ff74..ee53272 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -127,16 +127,6 @@ int register_framebuffer(struct fb_info *info)
 
 	info->dev.bus = &fb_bus;
 	register_device(&info->dev);
-	dev_add_param(dev, "enable", fb_enable_set, NULL, 0);
-	dev_set_param(dev, "enable", "0");
-
-	if (info->num_modes && (info->mode_list != NULL) &&
-			(info->fbops->fb_activate_var != NULL)) {
-		dev_add_param(dev, "mode_name", fb_setup_mode, NULL, 0);
-		dev_set_param(dev, "mode_name", info->mode_list[0].name);
-	}
-
-	devfs_create(&info->cdev);
 
 	return 0;
 }
@@ -173,7 +163,18 @@ static int fb_match(struct device_d *dev, struct driver_d *drv)
 
 static int fb_probe(struct device_d *dev)
 {
-	return 0;
+	struct fb_info *info = dev->priv;
+
+	dev_add_param(dev, "enable", fb_enable_set, NULL, 0);
+	dev_set_param(dev, "enable", "0");
+
+	if (info->num_modes && (info->mode_list != NULL) &&
+			(info->fbops->fb_activate_var != NULL)) {
+		dev_add_param(dev, "mode_name", fb_setup_mode, NULL, 0);
+		dev_set_param(dev, "mode_name", info->mode_list[0].name);
+	}
+
+	return devfs_create(&info->cdev);
 }
 
 static void fb_remove(struct device_d *dev)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
