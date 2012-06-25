Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj9kO-0003Tu-0d
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 13:54:37 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 25 Jun 2012 15:54:28 +0200
Message-Id: <1340632468-9972-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] drivers/video: support three ways to select default video mode
To: barebox@lists.infradead.org

Currently the first entry in the board's mode list is the default.
In cases where the connected panel is not fixed, it is better to
configure it at runtime via the fb0.mode_name variable.

This patch allows choosing between:
 - First mode in the board's list (old behavior)
 - No default mode
 - Default mode selection by mode name (from string config variable)

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/video/Kconfig |   23 +++++++++++++++++++++++
 drivers/video/fb.c    |   17 ++++++++++++++++-
 2 files changed, 39 insertions(+), 1 deletion(-)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 519cdbf..baadb54 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -51,4 +51,27 @@ config DRIVER_VIDEO_PXA
 	  Add support for the frame buffer device found on the PXA270
 	  CPU.
 
+choice
+	prompt "Default mode selection"
+	default VIDEO_DEFAULT_FIRST
+
+	config VIDEO_DEFAULT_FIRST
+		bool "First mode from the board's list"
+
+	config VIDEO_DEFAULT_NONE
+		bool "Do not activate a mode by default"
+
+	config VIDEO_DEFAULT_NAME
+		bool "Select the default mode by name"
+
+endchoice
+
+if VIDEO_DEFAULT_NAME
+
+config VIDEO_DEFAULT_MODE
+	string
+	prompt "Default mode name (as defined by the board)"
+
+endif
+
 endif
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 0be465f..4b39eac 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -40,6 +40,11 @@ static int fb_enable_set(struct device_d *dev, struct param_d *param,
 
 	enable = simple_strtoul(val, NULL, 0);
 
+	if (enable && info->mode == NULL) {
+		dev_err(dev, "cannot enable unconfigured framebuffer\n");
+		return -EPERM;
+	}
+
 	if (enable) {
 		if (!info->enabled)
 			info->fbops->fb_enable(info);
@@ -66,8 +71,10 @@ static int fb_setup_mode(struct device_d *dev, struct param_d *param,
 	if (info->enabled != 0)
 		return -EPERM;
 
-	if (!val)
+	if (!val) {
+		info->mode = NULL;
 		return dev_param_set_generic(dev, param, NULL);
+	}
 
 	for (mode = 0; mode < info->num_modes; mode++) {
 		if (!strcmp(info->mode_list[mode].name, val))
@@ -132,7 +139,15 @@ int register_framebuffer(struct fb_info *info)
 	if (info->num_modes && (info->mode_list != NULL) &&
 			(info->fbops->fb_activate_var != NULL)) {
 		dev_add_param(dev, "mode_name", fb_setup_mode, NULL, 0);
+#ifdef CONFIG_VIDEO_DEFAULT_FIRST
 		dev_set_param(dev, "mode_name", info->mode_list[0].name);
+#endif
+#ifdef CONFIG_VIDEO_DEFAULT_NONE
+		dev_set_param(dev, "mode_name", NULL);
+#endif
+#ifdef CONFIG_VIDEO_DEFAULT_NAME
+		dev_set_param(dev, "mode_name", CONFIG_VIDEO_DEFAULT_MODE);
+#endif
 	}
 
 	devfs_create(&info->cdev);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
