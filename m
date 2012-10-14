Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNVLa-0004Au-Gd
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 21:03:45 +0000
Received: from mail619.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 201E7FF9674
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 23:10:17 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Oct 2012 23:01:15 +0200
Message-Id: <1350248478-19359-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121014205929.GU13639@game.jcrosoft.org>
 <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 09/12] fb: add bus device
To: barebox@lists.infradead.org

automatically add it as parent of any fb device

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/video/fb.c |   17 +++++++++++++----
 include/fb.h       |    3 ++-
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index ee53272..0933a57 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -125,7 +125,10 @@ int register_framebuffer(struct fb_info *info)
 
 	sprintf(dev->name, "fb");
 
-	info->dev.bus = &fb_bus;
+	info->dev.bus = &fb_bus_type;
+	info->dev.parent = &fb_bus;
+	dev_add_child(info->dev.parent, &info->dev);
+
 	register_device(&info->dev);
 
 	return 0;
@@ -181,7 +184,12 @@ static void fb_remove(struct device_d *dev)
 {
 }
 
-struct bus_type fb_bus = {
+struct device_d fb_bus = {
+	.name = "fb",
+	.id = DEVICE_ID_SINGLE,
+};
+
+struct bus_type fb_bus_type = {
 	.name = "fb",
 	.match = fb_match,
 	.probe = fb_probe,
@@ -190,13 +198,14 @@ struct bus_type fb_bus = {
 
 static int fb_bus_init(void)
 {
-	return bus_register(&fb_bus);
+	register_device(&fb_bus);
+	return bus_register(&fb_bus_type);
 }
 pure_initcall(fb_bus_init);
 
 static int fb_init_driver(void)
 {
-	fb_driver.bus = &fb_bus;
+	fb_driver.bus = &fb_bus_type;
 	register_driver(&fb_driver);
 	return 0;
 }
diff --git a/include/fb.h b/include/fb.h
index c594418..9631733 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -110,7 +110,8 @@ int register_framebuffer(struct fb_info *info);
 #define	FBIO_ENABLE		_IO('F', 2)
 #define	FBIO_DISABLE		_IO('F', 3)
 
-extern struct bus_type fb_bus;
+extern struct device_d fb_bus;
+extern struct bus_type fb_bus_type;
 
 #endif /* __FB_H */
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
