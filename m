Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNhyL-00057r-2P
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:46:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:45:36 +0200
Message-Id: <1438955141-8850-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1438955141-8850-1-git-send-email-s.hauer@pengutronix.de>
References: <1438955141-8850-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] fb: Add shadowfb support
To: Barebox List <barebox@lists.infradead.org>

For speeding up rendering we need shadow framebuffers. This is currently
implemented in the gui functions. This does not work properly when two
users (splash and fbconsole) use the same framebuffer since in this case
two different shadow framebuffers will be used. This patch implements
shadowfb handling in the fb core directly. With this the fb device gets
a parameter 'shadowfb'. When this is true the fb core will allocate a
shadow fb and provide it to the users.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fb.c | 47 +++++++++++++++++++++++++++++++++++++++++++++++
 include/fb.h       |  3 +++
 2 files changed, 50 insertions(+)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index dbda8d4..3672c44 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -31,11 +31,40 @@ static int fb_ioctl(struct cdev* cdev, int req, void *data)
 	return 0;
 }
 
+static int fb_alloc_shadowfb(struct fb_info *info)
+{
+	if (info->screen_base_shadow && info->shadowfb)
+		return 0;
+
+	if (!info->screen_base_shadow && !info->shadowfb)
+		return 0;
+
+	if (info->shadowfb) {
+		info->screen_base_shadow = memalign(PAGE_SIZE,
+				info->line_length * info->yres);
+		if (!info->screen_base_shadow)
+			return -ENOMEM;
+		memcpy(info->screen_base_shadow, info->screen_base,
+				info->line_length * info->yres);
+	} else {
+		free(info->screen_base_shadow);
+		info->screen_base_shadow = NULL;
+	}
+
+	return 0;
+}
+
 int fb_enable(struct fb_info *info)
 {
+	int ret;
+
 	if (info->enabled)
 		return 0;
 
+	ret = fb_alloc_shadowfb(info);
+	if (ret)
+		return ret;
+
 	info->fbops->fb_enable(info);
 
 	info->enabled = true;
@@ -188,6 +217,22 @@ static void fb_info(struct device_d *dev)
 	fb_print_modes(&info->edid_modes);
 }
 
+void *fb_get_screen_base(struct fb_info *info)
+{
+	return info->screen_base_shadow ?
+		info->screen_base_shadow : info->screen_base;
+}
+
+int fb_set_shadowfb(struct param_d *p, void *priv)
+{
+	struct fb_info *info = priv;
+
+	if (!info->enabled)
+		return 0;
+
+	return fb_alloc_shadowfb(info);
+}
+
 int register_framebuffer(struct fb_info *info)
 {
 	int id = get_free_deviceid("fb");
@@ -245,6 +290,8 @@ int register_framebuffer(struct fb_info *info)
 	for (i = 0; i < info->edid_modes.num_modes; i++)
 		names[i + info->modes.num_modes] = info->edid_modes.modes[i].name;
 	dev_add_param_enum(dev, "mode_name", fb_set_modename, NULL, &info->current_mode, names, num_modes, info);
+	info->shadowfb = 1;
+	dev_add_param_bool(dev, "shadowfb", fb_set_shadowfb, NULL, &info->shadowfb, info);
 
 	info->mode = fb_num_to_mode(info, 0);
 
diff --git a/include/fb.h b/include/fb.h
index 311d5db..cf113c4 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -118,6 +118,7 @@ struct fb_info {
 	struct device_d dev;		/* This is this fb device */
 
 	void *screen_base;
+	void *screen_base_shadow;
 	unsigned long screen_size;
 
 	void *priv;
@@ -141,6 +142,7 @@ struct fb_info {
 	int register_simplefb;		/* If true a simplefb device node will
 					 * be created.
 					 */
+	int shadowfb;
 };
 
 struct display_timings *of_get_display_timings(struct device_node *np);
@@ -167,5 +169,6 @@ void fb_edid_add_modes(struct fb_info *info);
 void fb_of_reserve_add_fixup(struct fb_info *info);
 
 int register_fbconsole(struct fb_info *fb);
+void *fb_get_screen_base(struct fb_info *info);
 
 #endif /* __FB_H */
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
