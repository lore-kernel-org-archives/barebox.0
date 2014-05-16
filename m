Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WlDLy-0005K8-HH
 for barebox@lists.infradead.org; Fri, 16 May 2014 08:18:55 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id ED45EBF0E7
 for <barebox@lists.infradead.org>; Fri, 16 May 2014 10:18:30 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Fri, 16 May 2014 10:18:29 +0200
Message-Id: <1400228310-10292-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH v3 3/4] ARM: omap: barebox update nand xloadslots handler
To: barebox@lists.infradead.org

- Added barebox nand xloadslots update handler
- This handler updates all given xload slots in nand

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
v3:
  - added static inline to bbu register function
---
 arch/arm/mach-omap/Kconfig                      |   10 ++
 arch/arm/mach-omap/Makefile                     |    1 +
 arch/arm/mach-omap/am33xx_bbu_nand_xloadslots.c |  122 +++++++++++++++++++++++
 arch/arm/mach-omap/include/mach/bbu.h           |   13 +++
 4 files changed, 146 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-omap/am33xx_bbu_nand_xloadslots.c

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 12b9c1f..ee6d548 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -93,6 +93,16 @@ config BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO
 	  Say Y for barebox update SPI NOR MLO handler.
 	  AM35xx, AM33xx chips use big endian MLO for SPI NOR flash.
 
+config BAREBOX_UPDATE_AM33XX_NAND_XLOADSLOTS
+	prompt "barebox update nand xload slots handler"
+	bool
+	depends on BAREBOX_UPDATE
+	help
+	  Say Y for barebox update nand xload slots handler.
+	  This update handler updates 4 default nand xload slots
+	  with a single command.
+	  The Handler also checks if the given image has a valid CH header.
+
 config ARCH_TEXT_BASE
 	hex
 	default 0x80e80000 if MACH_OMAP343xSDP
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 81a771e..c9b6f4b 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -32,3 +32,4 @@ obj-$(CONFIG_MFD_TWL6030) += omap4_twl6030_mmc.o
 obj-$(CONFIG_OMAP4_USBBOOT) += omap4_rom_usb.o
 obj-$(CONFIG_CMD_BOOT_ORDER) += boot_order.o
 obj-$(CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO) += am33xx_bbu_spi_mlo.o
+obj-$(CONFIG_BAREBOX_UPDATE_AM33XX_NAND_XLOADSLOTS) += am33xx_bbu_nand_xloadslots.o
diff --git a/arch/arm/mach-omap/am33xx_bbu_nand_xloadslots.c b/arch/arm/mach-omap/am33xx_bbu_nand_xloadslots.c
new file mode 100644
index 0000000..0b4f1cc
--- /dev/null
+++ b/arch/arm/mach-omap/am33xx_bbu_nand_xloadslots.c
@@ -0,0 +1,122 @@
+/*
+ * am33xx_bbu_nand_xloadslots.c - barebox update handler for
+ * the nand xload slots.
+ *
+ * Copyright (c) 2014 Wadim Egorov <w.egorov@phytec.de>, Phytec
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <errno.h>
+#include <bbu.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <filetype.h>
+
+struct nand_bbu_handler {
+	struct bbu_handler bbu_handler;
+	char **devicefile;
+	int num_devicefiles;
+};
+
+static int write_image(const char *devfile, const void *image, size_t size)
+{
+	int fd = 0;
+	int ret = 0;
+
+	fd = open(devfile, O_WRONLY);
+	if (fd < 0) {
+		pr_err("could not open %s: %s\n", devfile,
+			errno_str());
+		return fd;
+	}
+
+	ret = erase(fd, ~0, 0);
+	if (ret < 0) {
+		pr_err("could not erase %s: %s\n", devfile,
+			errno_str());
+		close(fd);
+		return ret;
+	}
+
+	ret = write(fd, image, size);
+	if (ret < 0) {
+		pr_err("could not write to fd %s: %s\n", devfile,
+			errno_str());
+		close(fd);
+		return ret;
+	}
+
+	close(fd);
+
+	return 0;
+}
+
+/*
+ * This handler updates all given xload slots in nand with an image.
+ */
+static int nand_xloadslots_update_handler(struct bbu_handler *handler,
+					struct bbu_data *data)
+{
+	int ret = 0;
+	const void *image = data->image;
+	size_t size = data->len;
+	struct nand_bbu_handler *nh;
+	int i = 0;
+
+	if (file_detect_type(image, size) != filetype_ch_image) {
+		pr_err("%s is not a valid ch-image\n", data->imagefile);
+		return -EINVAL;
+	}
+
+	nh = container_of(handler, struct nand_bbu_handler, bbu_handler);
+
+	/* check if the devicefile has been overwritten */
+	if (strcmp(data->devicefile, nh->devicefile[0]) != 0) {
+		ret = bbu_confirm(data);
+		if (ret != 0)
+			return ret;
+
+		ret = write_image(data->devicefile, image, size);
+		if (ret != 0)
+			return ret;
+	} else {
+		for (i = 0; i < nh->num_devicefiles; i++) {
+			ret =  write_image(nh->devicefile[i], image, size);
+			if (ret != 0)
+				return ret;
+		}
+	}
+
+	return 0;
+}
+
+int am33xx_bbu_nand_xloadslots_register_handler(const char *name,
+						char **devicefile,
+						int num_devicefiles)
+{
+	struct nand_bbu_handler *handler;
+	int ret;
+
+	handler = xzalloc(sizeof(*handler));
+	handler->devicefile = devicefile;
+	handler->num_devicefiles = num_devicefiles;
+	handler->bbu_handler.devicefile = devicefile[0];
+	handler->bbu_handler.handler = nand_xloadslots_update_handler;
+	handler->bbu_handler.name = name;
+
+	ret = bbu_register_handler(&handler->bbu_handler);
+	if (ret)
+		free(handler);
+
+	return ret;
+}
diff --git a/arch/arm/mach-omap/include/mach/bbu.h b/arch/arm/mach-omap/include/mach/bbu.h
index 6d4b70f..0cb411d 100644
--- a/arch/arm/mach-omap/include/mach/bbu.h
+++ b/arch/arm/mach-omap/include/mach/bbu.h
@@ -12,4 +12,17 @@ int am33xx_bbu_spi_nor_mlo_register_handler(const char *name, char *devicefile)
 }
 #endif
 
+#ifdef CONFIG_BAREBOX_UPDATE_AM33XX_NAND_XLOADSLOTS
+int am33xx_bbu_nand_xloadslots_register_handler(const char *name,
+						char **devicefile,
+						int num_devicefiles);
+#else
+static inline int am33xx_bbu_nand_xloadslots_register_handler(const char *name,
+							char **devicefile,
+							int num_devicefiles)
+{
+	return 0;
+}
+#endif
+
 #endif
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
