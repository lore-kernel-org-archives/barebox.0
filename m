Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S4zlS-0008UE-Js
 for barebox@lists.infradead.org; Tue, 06 Mar 2012 19:09:39 +0000
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue,  6 Mar 2012 20:09:55 +0100
Message-Id: <1331060995-17978-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: [PATCH] fb: added flush() method to synchronize the used DMA buffer
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Patch adds an fb_flush() method which drains DMA buffers allocated by
the framebuffer driver. This allows to use non-coherent memory which
can be flushed by tools like 'bmp' or 'mw' by calling flush().

Unfortunately, DMA stuff is very specific to the architecture so that
patch has an effect to ARM only.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 drivers/video/Kconfig |    8 ++++++++
 drivers/video/fb.c    |   24 ++++++++++++++++++++++++
 2 files changed, 32 insertions(+), 0 deletions(-)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 509ba64..a38e472 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -5,6 +5,14 @@ menuconfig VIDEO
 
 if VIDEO
 
+config DRIVER_FB_ENABLE_FLUSH
+	bool
+	depends on ARM
+	default y if MMU
+	help
+	  Drain DMA buffers with flush().  For ARM, this is required
+	  for setups with enabled MMU only
+
 config DRIVER_VIDEO_IMX
 	bool "i.MX framebuffer driver"
 	depends on ARCH_IMX1 || ARCH_IMX21 || ARCH_IMX25 || ARCH_IMX27
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 338d182..235e2e3 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -7,6 +7,10 @@
 #include <fs.h>
 #include <init.h>
 
+#ifdef CONFIG_ARM
+#  include <asm/mmu.h>
+#endif
+
 static int fb_ioctl(struct cdev* cdev, int req, void *data)
 {
 	struct fb_info *info = cdev->priv;
@@ -94,12 +98,32 @@ static int fb_setup_mode(struct device_d *dev, struct param_d *param,
 	return ret;
 }
 
+#ifdef CONFIG_DRIVER_FB_ENABLE_FLUSH
+static int fb_flush(struct cdev *cdev)
+{
+	struct fb_info *info = cdev->priv;
+
+	if (info->dev.resource[0].size > 0) {
+#ifdef CONFIG_ARM
+		dma_flush_range(info->dev.resource[0].start,
+				info->dev.resource[0].start +
+				info->dev.resource[0].size);
+#endif
+	}
+
+	return 0;
+}
+#else
+#  define fb_flush	NULL
+#endif	/* CONFIG_DRIVER_FB_ENABLE_FLUSH */
+
 static struct file_operations fb_ops = {
 	.read	= mem_read,
 	.write	= mem_write,
 	.memmap	= generic_memmap_rw,
 	.lseek	= dev_lseek_default,
 	.ioctl	= fb_ioctl,
+	.flush  = fb_flush,
 };
 
 int register_framebuffer(struct fb_info *info)
-- 
1.7.7.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
