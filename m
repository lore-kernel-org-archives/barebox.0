Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YQf9D-000095-5Z
 for barebox@lists.infradead.org; Wed, 25 Feb 2015 16:49:20 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Wed, 25 Feb 2015 17:48:42 +0100
Message-Id: <1424882922-10174-1-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <20150225073406.GS12209@pengutronix.de>
References: <20150225073406.GS12209@pengutronix.de>
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
Subject: [PATCH] ARM Samsung: add simple NAND barebox update handler
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
v2: write to the non bb device.

That means, write() will fail, when it hits a bad block, right?

Michael

 arch/arm/boards/friendlyarm-mini2440/mini2440.c |  3 +
 arch/arm/mach-samsung/Kconfig                   |  6 ++
 arch/arm/mach-samsung/Makefile                  |  1 +
 arch/arm/mach-samsung/bbu-nand-s3c24x0.c        | 87 +++++++++++++++++++++++++
 arch/arm/mach-samsung/include/mach/bbu.h        | 20 ++++++
 5 files changed, 117 insertions(+)
 create mode 100644 arch/arm/mach-samsung/bbu-nand-s3c24x0.c
 create mode 100644 arch/arm/mach-samsung/include/mach/bbu.h

diff --git a/arch/arm/boards/friendlyarm-mini2440/mini2440.c b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
index 2dcb7db4dbde..b9e1b6bb9d52 100644
--- a/arch/arm/boards/friendlyarm-mini2440/mini2440.c
+++ b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
@@ -29,6 +29,7 @@
 #include <asm/sections.h>
 #include <io.h>
 #include <gpio.h>
+#include <mach/bbu.h>
 #include <mach/iomux.h>
 #include <mach/s3c-iomap.h>
 #include <mach/devices-s3c24xx.h>
@@ -300,6 +301,8 @@ static int mini2440_devices_init(void)
 	devfs_del_partition("env_raw");
 	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
+
+	s3c24x0_bbu_nand_register_handler();
 #endif
 	s3c24xx_add_mci(&mci_data);
 	s3c24xx_add_fb(&s3c24x0_fb_data);
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index 13dac29dcc88..8f421bb83970 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -166,6 +166,12 @@ config S3C_NAND_BOOT
 	  Add generic support to boot from NAND flash. Image loading will be
 	  skipped if the code is running from NOR or already from SDRAM.
 
+config BAREBOX_UPDATE_NAND_S3C24XX
+	bool
+	depends on BAREBOX_UPDATE
+	depends on S3C_NAND_BOOT
+	default y
+
 endmenu
 
 endif
diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index 46393e17257c..284c80a2ad43 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -8,4 +8,5 @@ obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o clocks-s3c24xx.o mem-s3c24x0.o
 obj-$(CONFIG_ARCH_S3C64xx) += gpio-s3c64xx.o clocks-s3c64xx.o mem-s3c64xx.o
 obj-$(CONFIG_ARCH_S5PCxx) += gpio-s5pcxx.o clocks-s5pcxx.o mem-s5pcxx.o
 pbl-$(CONFIG_ARCH_S5PCxx) += mem-s5pcxx.o
+obj-$(CONFIG_BAREBOX_UPDATE_NAND_S3C24XX) += bbu-nand-s3c24x0.o
 obj-$(CONFIG_S3C_LOWLEVEL_INIT) += $(obj-lowlevel-y)
diff --git a/arch/arm/mach-samsung/bbu-nand-s3c24x0.c b/arch/arm/mach-samsung/bbu-nand-s3c24x0.c
new file mode 100644
index 000000000000..f3584eaa5a0c
--- /dev/null
+++ b/arch/arm/mach-samsung/bbu-nand-s3c24x0.c
@@ -0,0 +1,87 @@
+/*
+ * Copyright (C) 2014 Michael Olbrich, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation.
+ *
+ */
+
+#define DEBUG
+#include <common.h>
+#include <malloc.h>
+#include <bbu.h>
+#include <fs.h>
+#include <fcntl.h>
+
+static int nand_update(struct bbu_handler *handler, struct bbu_data *data)
+{
+	int fd, ret;
+
+	if (file_detect_type(data->image, data->len) != filetype_arm_barebox &&
+			!bbu_force(data, "Not an ARM barebox image"))
+		return -EINVAL;
+
+	ret = bbu_confirm(data);
+	if (ret)
+		return ret;
+
+	fd = open(data->devicefile, O_WRONLY);
+	if (fd < 0)
+		return fd;
+
+	debug("%s: eraseing %s from 0 to 0x%08x\n", __func__,
+			data->devicefile, data->len);
+	ret = erase(fd, data->len, 0);
+	if (ret) {
+		printf("erasing %s failed with %s\n", data->devicefile,
+				strerror(-ret));
+		goto err_close;
+	}
+
+	ret = write(fd, data->image, data->len);
+	if (ret < 0) {
+		printf("writing update to %s failed with %s\n", data->devicefile,
+				strerror(-ret));
+		goto err_close;
+	}
+
+	ret = 0;
+
+err_close:
+	close(fd);
+
+	return ret;
+}
+
+/*
+ * Register a s3c24x0 update handler for NAND
+ */
+int s3c24x0_bbu_nand_register_handler(void)
+{
+	struct bbu_handler *handler;
+	int ret;
+
+	handler = xzalloc(sizeof(*handler));
+	handler->devicefile = "/dev/nand0.barebox";
+	handler->name = "nand";
+	handler->handler = nand_update;
+	handler->flags = BBU_HANDLER_FLAG_DEFAULT;
+
+	ret = bbu_register_handler(handler);
+	if (ret)
+		free(handler);
+
+	return ret;
+}
+
diff --git a/arch/arm/mach-samsung/include/mach/bbu.h b/arch/arm/mach-samsung/include/mach/bbu.h
new file mode 100644
index 000000000000..2a3e25cb666e
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/bbu.h
@@ -0,0 +1,20 @@
+
+#ifndef __MACH_BBU_H
+#define __MACH_BBU_H
+
+#include <bbu.h>
+#include <errno.h>
+
+struct imx_dcd_entry;
+struct imx_dcd_v2_entry;
+
+#ifdef CONFIG_BAREBOX_UPDATE_NAND_S3C24XX
+int s3c24x0_bbu_nand_register_handler(void);
+#else
+static inline int s3c24x0_bbu_nand_register_handler(void)
+{
+	return -ENOSYS;
+}
+#endif
+
+#endif
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
