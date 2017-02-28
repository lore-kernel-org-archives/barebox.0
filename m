Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciiog-0006N2-Tx
 for barebox@lists.infradead.org; Tue, 28 Feb 2017 14:31:52 +0000
From: Bastian Stender <bst@pengutronix.de>
Date: Tue, 28 Feb 2017 15:31:26 +0100
Message-Id: <20170228143127.2945-4-bst@pengutronix.de>
In-Reply-To: <20170228143127.2945-1-bst@pengutronix.de>
References: <20170228143127.2945-1-bst@pengutronix.de>
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
Subject: [PATCH v2 3/4] fb: introduce flush for virtual framebuffer
To: barebox@lists.infradead.org
Cc: Bastian Stender <bst@pengutronix.de>

Some drivers need an explicit sync method to flush the virtual
framebuffer to the display. It is called fb_flush().

fb_flush() gets called on fbc_putc, on fb_close and in the pattern cycle
in the fbtest command.

Signed-off-by: Bastian Stender <bst@pengutronix.de>
---
 commands/fbtest.c         |  1 +
 drivers/video/fb.c        | 26 ++++++++++++++++++++++++++
 drivers/video/fbconsole.c |  3 +++
 include/fb.h              |  2 ++
 4 files changed, 32 insertions(+)

diff --git a/commands/fbtest.c b/commands/fbtest.c
index bd0e140d07..ca6ec21991 100644
--- a/commands/fbtest.c
+++ b/commands/fbtest.c
@@ -169,6 +169,7 @@ static int do_fbtest(int argc, char *argv[])
 			pattern = patterns[i++ % ARRAY_SIZE(patterns)].func;
 			pattern(sc, color);
 			gu_screen_blit(sc);
+			fb_flush(sc->info);
 
 			start = get_time_ns();
 			while (!is_timeout(start, 2 * SECOND))
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 4d2d3aa650..6b88f2df97 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -31,6 +31,30 @@ static int fb_ioctl(struct cdev* cdev, int req, void *data)
 	return 0;
 }
 
+static int fb_close(struct cdev *cdev)
+{
+	struct fb_info *info = cdev->priv;
+
+	if (info->fbops->fb_flush)
+		info->fbops->fb_flush(info);
+	return 0;
+}
+
+static int fb_op_flush(struct cdev *cdev)
+{
+	struct fb_info *info = cdev->priv;
+
+	if (info->fbops->fb_flush)
+		info->fbops->fb_flush(info);
+	return 0;
+}
+
+void fb_flush(struct fb_info *info)
+{
+	if (info->fbops->fb_flush)
+		info->fbops->fb_flush(info);
+}
+
 static void fb_release_shadowfb(struct fb_info *info)
 {
 	free(info->screen_base_shadow);
@@ -199,6 +223,8 @@ static struct file_operations fb_ops = {
 	.memmap	= generic_memmap_rw,
 	.lseek	= dev_lseek_default,
 	.ioctl	= fb_ioctl,
+	.close  = fb_close,
+	.flush  = fb_op_flush,
 };
 
 static void fb_print_mode(struct fb_videomode *mode)
diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 64f7d7364e..4cf8338ed8 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -292,6 +292,7 @@ static void fbc_putc(struct console_device *cdev, char c)
 {
 	struct fbc_priv *priv = container_of(cdev,
 					struct fbc_priv, cdev);
+	struct fb_info *fb = priv->fb;
 
 	if (priv->in_console)
 		return;
@@ -345,6 +346,8 @@ static void fbc_putc(struct console_device *cdev, char c)
 		break;
 	}
 	priv->in_console = 0;
+
+	fb_flush(fb);
 }
 
 static int setup_font(struct fbc_priv *priv)
diff --git a/include/fb.h b/include/fb.h
index b2a9c7152b..271b939968 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -86,6 +86,7 @@ struct fb_ops {
 	void (*fb_enable)(struct fb_info *info);
 	void (*fb_disable)(struct fb_info *info);
 	int (*fb_activate_var)(struct fb_info *info);
+	void (*fb_flush)(struct fb_info *info);
 };
 
 /*
@@ -152,6 +153,7 @@ int register_framebuffer(struct fb_info *info);
 
 int fb_enable(struct fb_info *info);
 int fb_disable(struct fb_info *info);
+void fb_flush(struct fb_info *info);
 
 #define FBIOGET_SCREENINFO	_IOR('F', 1, loff_t)
 #define	FBIO_ENABLE		_IO('F', 2)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
