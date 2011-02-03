Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PkvwE-00077j-9e
	for barebox@lists.infradead.org; Thu, 03 Feb 2011 09:57:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  3 Feb 2011 10:57:13 +0100
Message-Id: <1296727034-19693-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1296727034-19693-1-git-send-email-s.hauer@pengutronix.de>
References: <1296727034-19693-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] fb: For multiple video modes print the available modes in
	devinfo
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fb.c |   38 ++++++++++++++++++++++++++++++++++++++
 1 files changed, 38 insertions(+), 0 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index cf21c4b..85db904 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -5,6 +5,7 @@
 #include <getopt.h>
 #include <fcntl.h>
 #include <fs.h>
+#include <init.h>
 
 static int fb_ioctl(struct cdev* cdev, int req, void *data)
 {
@@ -135,3 +136,40 @@ int register_framebuffer(struct fb_info *info)
 	return 0;
 }
 
+static void fb_info(struct device_d *dev)
+{
+	struct fb_info *info = dev->priv;
+	int i;
+
+	if (!info->num_modes)
+		return;
+
+	printf("available modes:\n");
+
+	for (i = 0; i < info->num_modes; i++) {
+		struct fb_videomode *mode = &info->mode_list[i];
+
+		printf("%-10s %dx%d@%d\n", mode->name,
+				mode->xres, mode->yres, mode->refresh);
+	}
+
+	printf("\n");
+}
+
+static int fb_probe(struct device_d *hw_dev)
+{
+	return 0;
+}
+
+static struct driver_d fb_driver = {
+	.name  = "fb",
+	.probe = fb_probe,
+	.info = fb_info,
+};
+
+static int fb_init_driver(void)
+{
+	register_driver(&fb_driver);
+	return 0;
+}
+device_initcall(fb_init_driver);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
