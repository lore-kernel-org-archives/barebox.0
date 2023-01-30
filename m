Delivery-date: Mon, 30 Jan 2023 19:23:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYop-007spf-Mp
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 19:23:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYom-0001Kx-HG
	for lore@pengutronix.de; Mon, 30 Jan 2023 19:23:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HrWq+SIvQGGLnVuAe+pmvE1z0iQekd4ONge5++oZiVc=; b=aK0n4ljebmPgs+QH/NX3fpYb2J
	wPd7PFI7nnyfh29xjMnY1vkY0FQVu0OvnTkfyKqbyGmtUMKJ83QzPUiCn8YQtNP4O6DKTOHIU0NL6
	kR81L9dA1QGSBiRt8h1VhFnI0//6EYcMAhzzgDpworj+Wgaj0t5C4xjs7MfQzbPATEvuRTvd2rei/
	GDSFUjUklplwPGEDKVJNfb9kMt3hYEfzi6UKm8KL0Jpkrt9E86GKltUnrXOTlUMFgXhfWeLAcPgb6
	HvPHQopOq8eTTQkYw7ApBeXTzGjrOQBhbeuTIbl7TLRIOD/8+RHQxBvpLmugeM1qsIbVW82VSQT0D
	0fmStSrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMOZd-002XfP-My; Mon, 30 Jan 2023 07:27:29 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMOZS-002Xcw-EO
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 07:27:20 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 8ED531C000B;
	Mon, 30 Jan 2023 07:27:16 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>
Date: Mon, 30 Jan 2023 08:27:07 +0100
Message-Id: <20230130072707.2423294-5-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230130072707.2423294-1-ahmad@a3f.at>
References: <20230130072707.2423294-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_232718_770537_0A754867 
X-CRM114-Status: GOOD (  22.61  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/4] video: add support for QEMU ramfb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Adrian Negreanu <adrian.negreanu@nxp.com>

QEMU's ramfb is a very simple Qemu fw_cfg protocol, where the guest
need only write a video settings structure to /etc/ramfb to get
DMA from the framebuffer working. We don't yet have FS support
for fw_cfg, so we use the character device interface.

As barebox display mode handling only supports selecting predefined
modes and has no accommodation yet for arbitrary resolution support
like on QEMU, for now we just provide a fixed 640x480@XRGB8888 mode.

Tested with:

	qemu-system-aarch64 -M virt -vga none -device ramfb \
		-kernel images/barebox-dt-2nd.img -cpu cortex-a57 -serial mon:stdio

Signed-off-by: Adrian Negreanu <adrian.negreanu@nxp.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - rebased on new /dev/fw_cfg API
  - remove Kconfig resolution setup as no other driver does this
  - replace own PACKED definition with __packed
  - use <video/fourcc.h> instead of duplicating DMA_FORMAT_* definitions
  - allocate etc/ramfb buffer with dma_alloc
  - map framebuffer coherent
  - replaces RISC-V example in commit message with arm64, because that's
    what I last tested with (probably too old qemu for RISC-V on my side)
---
 drivers/video/Kconfig  |   6 ++
 drivers/video/Makefile |   1 +
 drivers/video/ramfb.c  | 191 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 198 insertions(+)
 create mode 100644 drivers/video/ramfb.c

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index a20b7bbee9b7..01bdaf47bfca 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -123,6 +123,12 @@ config DRIVER_VIDEO_SIMPLEFB
 	  Add support for setting up the kernel's simple framebuffer driver
 	  based on the active barebox framebuffer.
 
+config DRIVER_VIDEO_RAMFB
+	bool "QEMU RamFB support"
+	select QEMU_FW_CFG
+	help
+	  Add support for setting up a QEMU RamFB driver.
+
 config DRIVER_VIDEO_EDID
 	bool "Add EDID support"
 	help
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 9ec0420ccad1..d50d2d3ba562 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -25,6 +25,7 @@ obj-$(CONFIG_DRIVER_VIDEO_OMAP) += omap.o
 obj-$(CONFIG_DRIVER_VIDEO_BCM283X) += bcm2835.o
 obj-$(CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT) += simplefb-client.o
 obj-$(CONFIG_DRIVER_VIDEO_SIMPLEFB) += simplefb-fixup.o
+obj-$(CONFIG_DRIVER_VIDEO_RAMFB) += ramfb.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPUV3) += imx-ipu-v3/
 obj-$(CONFIG_DRIVER_VIDEO_EFI_GOP) += efi_gop.o
 obj-$(CONFIG_DRIVER_VIDEO_FB_SSD1307) += ssd1307fb.o
diff --git a/drivers/video/ramfb.c b/drivers/video/ramfb.c
new file mode 100644
index 000000000000..26e01196fc02
--- /dev/null
+++ b/drivers/video/ramfb.c
@@ -0,0 +1,191 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: (C) 2022 Adrian Negreanu
+
+#define pr_fmt(fmt) "ramfb: " fmt
+
+#include <common.h>
+#include <fb.h>
+#include <fcntl.h>
+#include <dma.h>
+#include <init.h>
+#include <unistd.h>
+#include <sys/ioctl.h>
+#include <fs.h>
+#include <linux/qemu_fw_cfg.h>
+#include <video/fourcc.h>
+
+struct ramfb {
+	int fd;
+	struct fb_info info;
+	dma_addr_t screen_dma;
+	struct fb_videomode mode;
+	u16 etcfb_select;
+};
+
+struct fw_cfg_etc_ramfb {
+	u64 addr;
+	u32 fourcc;
+	u32 flags;
+	u32 width;
+	u32 height;
+	u32 stride;
+} __packed;
+
+static int fw_cfg_find_file(struct device *dev, int fd, const char *filename)
+{
+	size_t filename_len = strlen(filename);
+	ssize_t ret;
+	__be32 count;
+	int i;
+
+	ioctl(fd, FW_CFG_SELECT, &(u16) { FW_CFG_FILE_DIR });
+
+	lseek(fd, 0, SEEK_SET);
+
+	ret = read(fd, &count, sizeof(count));
+	if (ret < 0)
+		return ret;
+
+	for (i = 0; i < be32_to_cpu(count); i++) {
+		struct fw_cfg_file qfile;
+
+		read(fd, &qfile, sizeof(qfile));
+
+		dev_dbg(dev, "enumerating file %s\n", qfile.name);
+
+		if (memcmp(qfile.name, filename, filename_len))
+			continue;
+
+		return be16_to_cpu(qfile.select);
+	}
+
+	return -ENOENT;
+}
+
+static void ramfb_populate_modes(struct ramfb *ramfb)
+{
+	struct fb_info *info = &ramfb->info;
+
+	ramfb->mode.name = "x8r8g8b8";
+	info->xres = ramfb->mode.xres = 640;
+	info->yres = ramfb->mode.yres = 480;
+
+	info->mode = &ramfb->mode;
+	info->bits_per_pixel = 32;
+	info->red	= (struct fb_bitfield) {16, 8};
+	info->green	= (struct fb_bitfield) {8, 8};
+	info->blue	= (struct fb_bitfield) {0, 8};
+	info->transp	= (struct fb_bitfield) {0, 0};
+}
+
+static int ramfb_activate_var(struct fb_info *fbi)
+{
+	struct ramfb *ramfb = fbi->priv;
+
+	if (fbi->screen_base)
+		dma_free_coherent(fbi->screen_base, ramfb->screen_dma, fbi->screen_size);
+
+	fbi->screen_size = fbi->xres * fbi->yres * fbi->bits_per_pixel;
+	fbi->screen_base = dma_alloc_coherent(fbi->screen_size, &ramfb->screen_dma);
+
+	return 0;
+}
+
+static void ramfb_enable(struct fb_info *fbi)
+{
+	struct ramfb *ramfb = fbi->priv;
+	struct fw_cfg_etc_ramfb *etc_ramfb;
+
+	etc_ramfb = dma_alloc(sizeof(*etc_ramfb));
+
+	etc_ramfb->addr = cpu_to_be64(ramfb->screen_dma);
+	etc_ramfb->fourcc = cpu_to_be32(DRM_FORMAT_XRGB8888);
+	etc_ramfb->flags  = cpu_to_be32(0);
+	etc_ramfb->width  = cpu_to_be32(fbi->xres);
+	etc_ramfb->height = cpu_to_be32(fbi->yres);
+	etc_ramfb->stride = cpu_to_be32(fbi->line_length);
+
+	ioctl(ramfb->fd, FW_CFG_SELECT, &ramfb->etcfb_select);
+
+	pwrite(ramfb->fd, etc_ramfb, sizeof(*etc_ramfb), 0);
+
+	dma_free(etc_ramfb);
+}
+
+static struct fb_ops ramfb_ops = {
+	.fb_activate_var = ramfb_activate_var,
+	.fb_enable = ramfb_enable,
+};
+
+static int ramfb_probe(struct device *parent_dev, int fd)
+{
+	int ret;
+	struct ramfb *ramfb;
+	struct fb_info *fbi;
+
+	ret = -ENODEV;
+
+	ramfb = xzalloc(sizeof(*ramfb));
+
+	ramfb->fd = fd;
+
+	ret = fw_cfg_find_file(parent_dev, fd, "etc/ramfb");
+	if (ret < 0) {
+		dev_err(parent_dev, "ramfb: fw_cfg (etc/ramfb) file not found\n");
+		return -ENODEV;
+	}
+
+	ramfb->etcfb_select = ret;
+	dev_dbg(parent_dev, "etc/ramfb file at slot 0x%x\n", ramfb->etcfb_select);
+
+	fbi = &ramfb->info;
+	fbi->priv = ramfb;
+	fbi->fbops = &ramfb_ops;
+	fbi->dev.parent = parent_dev;
+
+	ramfb_populate_modes(ramfb);
+
+	ret = register_framebuffer(fbi);
+	if (ret < 0) {
+		dev_err(parent_dev, "Unable to register ramfb: %d\n", ret);
+		return ret;
+	}
+
+	dev_info(parent_dev, "ramfb registered\n");
+
+	return 0;
+}
+
+static int ramfb_driver_init(void)
+{
+	struct cdev *cdev;
+	int err = 0;
+
+	for_each_cdev(cdev) {
+		int fd, ret;
+
+		if (!strstarts(cdev->name, "fw_cfg"))
+			continue;
+
+		fd = cdev_fdopen(cdev, O_RDWR);
+		if (fd < 0) {
+			err = fd;
+			continue;
+		}
+
+		ret = ramfb_probe(cdev->dev, fd);
+		if (ret == 0)
+			continue;
+		if (ret != -ENODEV && ret != -ENXIO)
+			err = ret;
+
+		close(fd);
+	}
+
+	return err;
+}
+device_initcall(ramfb_driver_init);
+
+MODULE_AUTHOR("Adrian Negreanu <adrian.negreanu@nxp.com>");
+MODULE_DESCRIPTION("QEMU RamFB driver");
+MODULE_LICENSE("GPL v2");
-- 
2.38.1



