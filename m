Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC3lN-0002TB-Tk
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 10:36:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Jul 2015 12:36:13 +0200
Message-Id: <1436178974-20064-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1436178974-20064-1-git-send-email-s.hauer@pengutronix.de>
References: <1436178974-20064-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] video: Add generic fixup handler to reserve fb memory
To: Barebox List <barebox@lists.infradead.org>

When a framebuffer is kept enabled when Linux starts its framebuffer
memory should be reserved. Otherwise Linux may overwrite its contents.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fb.c | 21 +++++++++++++++++++++
 include/fb.h       |  1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index e30ab59..931c99c 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -103,6 +103,27 @@ static int fb_setup_mode(struct fb_info *info)
 	return 0;
 }
 
+static int fb_of_reserve_fixup(struct device_node *root, void *context)
+{
+	struct fb_info *info = context;
+
+	if (!info->enabled)
+		return 0;
+
+	of_add_reserve_entry((unsigned long)info->screen_base,
+			(unsigned long)info->screen_base + info->screen_size);
+
+	return 0;
+}
+
+void fb_of_reserve_add_fixup(struct fb_info *info)
+{
+	if (!IS_ENABLED(CONFIG_OFDEVICE))
+		return;
+
+	of_register_fixup(fb_of_reserve_fixup, info);
+}
+
 static int fb_set_modename(struct param_d *param, void *priv)
 {
 	struct fb_info *info = priv;
diff --git a/include/fb.h b/include/fb.h
index 2db6ad6..a693f4b 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -159,5 +159,6 @@ int fb_register_simplefb(struct fb_info *info);
 int edid_to_display_timings(struct display_timings *, unsigned char *edid);
 void *edid_read_i2c(struct i2c_adapter *adapter);
 void fb_edid_add_modes(struct fb_info *info);
+void fb_of_reserve_add_fixup(struct fb_info *info);
 
 #endif /* __FB_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
