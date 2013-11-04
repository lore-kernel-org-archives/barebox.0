Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22f.google.com ([2a00:1450:4013:c00::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdT9U-0000qK-0D
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 23:01:45 +0000
Received: by mail-ee0-f47.google.com with SMTP id c13so1422428eek.6
 for <barebox@lists.infradead.org>; Mon, 04 Nov 2013 15:01:22 -0800 (PST)
Received: from mamamia.internal (a89-182-17-100.net-htp.de. [89.182.17.100])
 by mx.google.com with ESMTPSA id s3sm52362808eeo.3.2013.11.04.15.01.20
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Mon, 04 Nov 2013 15:01:21 -0800 (PST)
From: Andre Heider <a.heider@gmail.com>
Date: Tue,  5 Nov 2013 00:01:03 +0100
Message-Id: <1383606064-30494-6-git-send-email-a.heider@gmail.com>
In-Reply-To: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
References: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH v2 5/6] video: add a BCM2835 framebuffer driver
To: barebox@lists.infradead.org

Use the mailbox driver to set up a framebuffer based on the firmware
configuration.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 arch/arm/boards/raspberry-pi/rpi.c        |   1 +
 arch/arm/mach-bcm2835/include/mach/core.h |   5 ++
 drivers/video/Kconfig                     |   6 ++
 drivers/video/Makefile                    |   1 +
 drivers/video/bcm2835.c                   | 136 ++++++++++++++++++++++++++++++
 5 files changed, 149 insertions(+)
 create mode 100644 drivers/video/bcm2835.c

diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
index 2717fee..96025ba 100644
--- a/arch/arm/boards/raspberry-pi/rpi.c
+++ b/arch/arm/boards/raspberry-pi/rpi.c
@@ -140,6 +140,7 @@ static int rpi_env_init(void)
 static int rpi_devices_init(void)
 {
 	bcm2835_register_mci();
+	bcm2835_register_fb();
 	armlinux_set_architecture(MACH_TYPE_BCM2708);
 	armlinux_set_bootparams((void *)(0x00000100));
 	rpi_env_init();
diff --git a/arch/arm/mach-bcm2835/include/mach/core.h b/arch/arm/mach-bcm2835/include/mach/core.h
index a095db8..477ecb9 100644
--- a/arch/arm/mach-bcm2835/include/mach/core.h
+++ b/arch/arm/mach-bcm2835/include/mach/core.h
@@ -27,4 +27,9 @@ static void inline bcm2835_register_mci(void)
 			IORESOURCE_MEM, NULL);
 }
 
+static void inline bcm2835_register_fb(void)
+{
+	add_generic_device("bcm2835_fb", 0, NULL, 0, 0, 0, NULL);
+}
+
 #endif
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 0639d9c..b532e7d 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -71,4 +71,10 @@ config DRIVER_VIDEO_PXA
 	  Add support for the frame buffer device found on the PXA270
 	  CPU.
 
+config DRIVER_VIDEO_BCM2835
+	bool "BCM2835 framebuffer driver"
+	depends on ARCH_BCM2835
+	help
+	  Add support for the BCM2835/VideoCore frame buffer device.
+
 endif
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 67169d1..244feab 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -9,3 +9,4 @@ obj-$(CONFIG_DRIVER_VIDEO_S3C24XX) += s3c24xx.o
 obj-$(CONFIG_DRIVER_VIDEO_PXA) += pxa.o
 obj-$(CONFIG_DRIVER_VIDEO_SDL) += sdl.o
 obj-$(CONFIG_DRIVER_VIDEO_OMAP) += omap.o
+obj-$(CONFIG_DRIVER_VIDEO_BCM2835) += bcm2835.o
diff --git a/drivers/video/bcm2835.c b/drivers/video/bcm2835.c
new file mode 100644
index 0000000..3d52f8b
--- /dev/null
+++ b/drivers/video/bcm2835.c
@@ -0,0 +1,136 @@
+/*
+ * BCM2835 framebuffer driver
+ *
+ * Copyright (C) 2013 Andre Heider
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+#include <fb.h>
+#include <init.h>
+#include <malloc.h>
+#include <xfuncs.h>
+
+#include <mach/mbox.h>
+
+struct bcm2835fb_info {
+	struct fb_info fbi;
+	struct fb_videomode mode;
+};
+
+struct msg_fb_query {
+	struct bcm2835_mbox_hdr hdr;
+	struct bcm2835_mbox_tag_physical_w_h physical_w_h;
+	u32 end_tag;
+};
+
+struct msg_fb_setup {
+	struct bcm2835_mbox_hdr hdr;
+	struct bcm2835_mbox_tag_physical_w_h physical_w_h;
+	struct bcm2835_mbox_tag_virtual_w_h virtual_w_h;
+	struct bcm2835_mbox_tag_depth depth;
+	struct bcm2835_mbox_tag_pixel_order pixel_order;
+	struct bcm2835_mbox_tag_alpha_mode alpha_mode;
+	struct bcm2835_mbox_tag_virtual_offset virtual_offset;
+	struct bcm2835_mbox_tag_allocate_buffer allocate_buffer;
+	struct bcm2835_mbox_tag_pitch pitch;
+	u32 end_tag;
+};
+
+static void bcm2835fb_enable(struct fb_info *info)
+{
+}
+
+static void bcm2835fb_disable(struct fb_info *info)
+{
+}
+
+static struct fb_ops bcm2835fb_ops = {
+	.fb_enable		= bcm2835fb_enable,
+	.fb_disable		= bcm2835fb_disable,
+};
+
+static int bcm2835fb_probe(struct device_d *dev)
+{
+	BCM2835_MBOX_STACK_ALIGN(struct msg_fb_query, msg_query);
+	BCM2835_MBOX_STACK_ALIGN(struct msg_fb_setup, msg_setup);
+	struct bcm2835fb_info *info;
+	u32 w, h;
+	int ret;
+
+	BCM2835_MBOX_INIT_HDR(msg_query);
+	BCM2835_MBOX_INIT_TAG_NO_REQ(&msg_query->physical_w_h,
+					GET_PHYSICAL_W_H);
+	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg_query->hdr);
+	if (ret) {
+		dev_err(dev, "could not query display resolution\n");
+		return ret;
+	}
+
+	w = msg_query->physical_w_h.body.resp.width;
+	h = msg_query->physical_w_h.body.resp.height;
+
+	BCM2835_MBOX_INIT_HDR(msg_setup);
+	BCM2835_MBOX_INIT_TAG(&msg_setup->physical_w_h, SET_PHYSICAL_W_H);
+	msg_setup->physical_w_h.body.req.width = w;
+	msg_setup->physical_w_h.body.req.height = h;
+	BCM2835_MBOX_INIT_TAG(&msg_setup->virtual_w_h, SET_VIRTUAL_W_H);
+	msg_setup->virtual_w_h.body.req.width = w;
+	msg_setup->virtual_w_h.body.req.height = h;
+	BCM2835_MBOX_INIT_TAG(&msg_setup->depth, SET_DEPTH);
+	msg_setup->depth.body.req.bpp = 16;
+	BCM2835_MBOX_INIT_TAG(&msg_setup->pixel_order, SET_PIXEL_ORDER);
+	msg_setup->pixel_order.body.req.order = BCM2835_MBOX_PIXEL_ORDER_BGR;
+	BCM2835_MBOX_INIT_TAG(&msg_setup->alpha_mode, SET_ALPHA_MODE);
+	msg_setup->alpha_mode.body.req.alpha = BCM2835_MBOX_ALPHA_MODE_IGNORED;
+	BCM2835_MBOX_INIT_TAG(&msg_setup->virtual_offset, SET_VIRTUAL_OFFSET);
+	msg_setup->virtual_offset.body.req.x = 0;
+	msg_setup->virtual_offset.body.req.y = 0;
+	BCM2835_MBOX_INIT_TAG(&msg_setup->allocate_buffer, ALLOCATE_BUFFER);
+	msg_setup->allocate_buffer.body.req.alignment = 0x100;
+	BCM2835_MBOX_INIT_TAG_NO_REQ(&msg_setup->pitch, GET_PITCH);
+
+	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg_setup->hdr);
+	if (ret) {
+		dev_err(dev, "could not configure display\n");
+		return ret;
+	}
+
+	info = xzalloc(sizeof *info);
+	info->fbi.fbops = &bcm2835fb_ops;
+	info->fbi.screen_base =
+	   (void *)msg_setup->allocate_buffer.body.resp.fb_address;
+	info->fbi.xres = msg_setup->physical_w_h.body.resp.width;
+	info->fbi.yres = msg_setup->physical_w_h.body.resp.height;
+	info->fbi.bits_per_pixel = 16;
+	info->fbi.line_length = msg_setup->pitch.body.resp.pitch;
+	info->fbi.red.length = 5;
+	info->fbi.red.offset = 11;
+	info->fbi.green.length = 6;
+	info->fbi.green.offset = 5;
+	info->fbi.blue.length = 5;
+	info->fbi.blue.offset = 0;
+
+	info->fbi.mode = &info->mode;
+	info->fbi.mode->xres = info->fbi.xres;
+	info->fbi.mode->yres = info->fbi.yres;
+
+	ret = register_framebuffer(&info->fbi);
+	if (ret) {
+		free(info);
+		dev_err(dev, "failed to register framebuffer: %d\n", ret);
+		return ret;
+	}
+
+	dev_info(dev, "registered\n");
+	return 0;
+}
+
+static struct driver_d bcm2835fb_driver = {
+	.name	= "bcm2835_fb",
+	.probe	= bcm2835fb_probe,
+};
+device_platform_driver(bcm2835fb_driver);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
