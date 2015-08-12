Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZPRgg-00041X-SF
 for barebox@lists.infradead.org; Wed, 12 Aug 2015 08:47:07 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZPRgL-0000x6-EZ
 for barebox@lists.infradead.org; Wed, 12 Aug 2015 10:46:45 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 12 Aug 2015 10:46:45 +0200
Message-Id: <1439369205-26787-4-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1439369205-26787-1-git-send-email-l.stach@pengutronix.de>
References: <1439369205-26787-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 4/4] video: backlight: add fallbacks for client functions
To: barebox@lists.infradead.org

Add empty static inline function fallbacks if backlight support
is not enabled, so that drivers using the backlight don't fail to
build.

Fixes:
In function `simple_panel_ioctl':
undefined reference to `of_backlight_find'
undefined reference to `backlight_set_brightness_default'
undefined reference to `backlight_set_brightness'

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/video/backlight.h | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/include/video/backlight.h b/include/video/backlight.h
index 56e0341ea470..8dc49dc113e3 100644
--- a/include/video/backlight.h
+++ b/include/video/backlight.h
@@ -1,6 +1,7 @@
 #ifndef __VIDEO_BACKLIGHT_H
 #define __VIDEO_BACKLIGHT_H
 
+#ifdef CONFIG_DRIVER_VIDEO_BACKLIGHT
 struct backlight_device {
 	int brightness;
 	int brightness_cur;
@@ -16,5 +17,21 @@ int backlight_set_brightness(struct backlight_device *, int brightness);
 int backlight_set_brightness_default(struct backlight_device *);
 int backlight_register(struct backlight_device *);
 struct backlight_device *of_backlight_find(struct device_node *node);
+#else
+struct backlight_device ;
+
+static inline int
+backlight_set_brightness(struct backlight_device *dev, int brightness)
+{
+	return 0;
+}
+static inline int
+backlight_set_brightness_default(struct backlight_device *dev)
+{
+	return 0;
+}
+static inline struct backlight_device *
+of_backlight_find(struct device_node *node) { return NULL; }
+#endif
 
 #endif /* __VIDEO_BACKLIGHT_H */
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
