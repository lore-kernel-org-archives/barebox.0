Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYxFj-0003sM-W0
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 13:14:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Sep 2014 15:10:29 +0200
Message-Id: <1412082632-25290-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1412082632-25290-1-git-send-email-s.hauer@pengutronix.de>
References: <1412082632-25290-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] ARM: am335x: Add a NAND update handler for the regular
 barebox
To: barebox@lists.infradead.org

To be able to not only update the MLO in NAND but also the
regular barebox image.
Since this is implemented with help of the corresponding xload
handler this also removes the 'xload' from the Kconfig options
and the filename.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/am335x_defconfig               |   2 +-
 arch/arm/mach-omap/Kconfig                      |  11 +-
 arch/arm/mach-omap/Makefile                     |   2 +-
 arch/arm/mach-omap/am33xx_bbu_nand.c            | 161 ++++++++++++++++++++++++
 arch/arm/mach-omap/am33xx_bbu_nand_xloadslots.c | 122 ------------------
 arch/arm/mach-omap/include/mach/bbu.h           |   8 +-
 6 files changed, 176 insertions(+), 130 deletions(-)
 create mode 100644 arch/arm/mach-omap/am33xx_bbu_nand.c
 delete mode 100644 arch/arm/mach-omap/am33xx_bbu_nand_xloadslots.c

diff --git a/arch/arm/configs/am335x_defconfig b/arch/arm/configs/am335x_defconfig
index 5542524..762038c 100644
--- a/arch/arm/configs/am335x_defconfig
+++ b/arch/arm/configs/am335x_defconfig
@@ -1,6 +1,6 @@
 CONFIG_ARCH_OMAP=y
 CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO=y
-CONFIG_BAREBOX_UPDATE_AM33XX_NAND_XLOADSLOTS=y
+CONFIG_BAREBOX_UPDATE_AM33XX_NAND=y
 CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_AFI_GF=y
 CONFIG_MACH_BEAGLEBONE=y
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 8b35187..e30027e 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -93,15 +93,16 @@ config BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO
 	  Say Y for barebox update SPI NOR MLO handler.
 	  AM35xx, AM33xx chips use big endian MLO for SPI NOR flash.
 
-config BAREBOX_UPDATE_AM33XX_NAND_XLOADSLOTS
-	prompt "barebox update nand xload slots handler"
+config BAREBOX_UPDATE_AM33XX_NAND
+	prompt "barebox update NAND handler"
 	bool
 	depends on BAREBOX_UPDATE
 	help
-	  Say Y for barebox update nand xload slots handler.
-	  This update handler updates 4 default nand xload slots
-	  with a single command.
+	  Say Y for barebox update NAND handler. This update handler updates
+	  4 default NAND xload slots with a single command.
 	  The Handler also checks if the given image has a valid CH header.
+	  This also includes a handler for updating the regular barebox binary
+	  in NAND.
 
 config ARCH_TEXT_BASE
 	hex
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 0ebfae7..bef1d05 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -33,4 +33,4 @@ obj-$(CONFIG_MFD_TWL6030) += omap4_twl6030_mmc.o
 obj-$(CONFIG_OMAP4_USBBOOT) += omap4_rom_usb.o
 obj-$(CONFIG_CMD_BOOT_ORDER) += boot_order.o
 obj-$(CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO) += am33xx_bbu_spi_mlo.o
-obj-$(CONFIG_BAREBOX_UPDATE_AM33XX_NAND_XLOADSLOTS) += am33xx_bbu_nand_xloadslots.o
+obj-$(CONFIG_BAREBOX_UPDATE_AM33XX_NAND) += am33xx_bbu_nand.o
diff --git a/arch/arm/mach-omap/am33xx_bbu_nand.c b/arch/arm/mach-omap/am33xx_bbu_nand.c
new file mode 100644
index 0000000..ed55fd1
--- /dev/null
+++ b/arch/arm/mach-omap/am33xx_bbu_nand.c
@@ -0,0 +1,161 @@
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
+
+static int nand_update_handler(struct bbu_handler *handler,
+		struct bbu_data *data)
+{
+	int ret = 0;
+	const void *image = data->image;
+	size_t size = data->len;
+	struct nand_bbu_handler *nh;
+
+	if (file_detect_type(image, size) != filetype_arm_barebox) {
+		pr_err("%s is not a valid barebox image\n", data->imagefile);
+		return -EINVAL;
+	}
+
+	nh = container_of(handler, struct nand_bbu_handler, bbu_handler);
+
+	ret = bbu_confirm(data);
+	if (ret != 0)
+		return ret;
+
+	return write_image(data->devicefile, image, size);
+}
+
+int am33xx_bbu_nand_register_handler(const char *name, char *devicefile)
+{
+	struct nand_bbu_handler *handler;
+	int ret;
+
+	handler = xzalloc(sizeof(*handler));
+	handler->bbu_handler.devicefile = devicefile;
+	handler->bbu_handler.handler = nand_update_handler;
+	handler->bbu_handler.name = name;
+
+	ret = bbu_register_handler(&handler->bbu_handler);
+	if (ret)
+		free(handler);
+
+	return ret;
+}
diff --git a/arch/arm/mach-omap/am33xx_bbu_nand_xloadslots.c b/arch/arm/mach-omap/am33xx_bbu_nand_xloadslots.c
deleted file mode 100644
index 0b4f1cc..0000000
--- a/arch/arm/mach-omap/am33xx_bbu_nand_xloadslots.c
+++ /dev/null
@@ -1,122 +0,0 @@
-/*
- * am33xx_bbu_nand_xloadslots.c - barebox update handler for
- * the nand xload slots.
- *
- * Copyright (c) 2014 Wadim Egorov <w.egorov@phytec.de>, Phytec
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#include <common.h>
-#include <malloc.h>
-#include <errno.h>
-#include <bbu.h>
-#include <fs.h>
-#include <fcntl.h>
-#include <filetype.h>
-
-struct nand_bbu_handler {
-	struct bbu_handler bbu_handler;
-	char **devicefile;
-	int num_devicefiles;
-};
-
-static int write_image(const char *devfile, const void *image, size_t size)
-{
-	int fd = 0;
-	int ret = 0;
-
-	fd = open(devfile, O_WRONLY);
-	if (fd < 0) {
-		pr_err("could not open %s: %s\n", devfile,
-			errno_str());
-		return fd;
-	}
-
-	ret = erase(fd, ~0, 0);
-	if (ret < 0) {
-		pr_err("could not erase %s: %s\n", devfile,
-			errno_str());
-		close(fd);
-		return ret;
-	}
-
-	ret = write(fd, image, size);
-	if (ret < 0) {
-		pr_err("could not write to fd %s: %s\n", devfile,
-			errno_str());
-		close(fd);
-		return ret;
-	}
-
-	close(fd);
-
-	return 0;
-}
-
-/*
- * This handler updates all given xload slots in nand with an image.
- */
-static int nand_xloadslots_update_handler(struct bbu_handler *handler,
-					struct bbu_data *data)
-{
-	int ret = 0;
-	const void *image = data->image;
-	size_t size = data->len;
-	struct nand_bbu_handler *nh;
-	int i = 0;
-
-	if (file_detect_type(image, size) != filetype_ch_image) {
-		pr_err("%s is not a valid ch-image\n", data->imagefile);
-		return -EINVAL;
-	}
-
-	nh = container_of(handler, struct nand_bbu_handler, bbu_handler);
-
-	/* check if the devicefile has been overwritten */
-	if (strcmp(data->devicefile, nh->devicefile[0]) != 0) {
-		ret = bbu_confirm(data);
-		if (ret != 0)
-			return ret;
-
-		ret = write_image(data->devicefile, image, size);
-		if (ret != 0)
-			return ret;
-	} else {
-		for (i = 0; i < nh->num_devicefiles; i++) {
-			ret =  write_image(nh->devicefile[i], image, size);
-			if (ret != 0)
-				return ret;
-		}
-	}
-
-	return 0;
-}
-
-int am33xx_bbu_nand_xloadslots_register_handler(const char *name,
-						char **devicefile,
-						int num_devicefiles)
-{
-	struct nand_bbu_handler *handler;
-	int ret;
-
-	handler = xzalloc(sizeof(*handler));
-	handler->devicefile = devicefile;
-	handler->num_devicefiles = num_devicefiles;
-	handler->bbu_handler.devicefile = devicefile[0];
-	handler->bbu_handler.handler = nand_xloadslots_update_handler;
-	handler->bbu_handler.name = name;
-
-	ret = bbu_register_handler(&handler->bbu_handler);
-	if (ret)
-		free(handler);
-
-	return ret;
-}
diff --git a/arch/arm/mach-omap/include/mach/bbu.h b/arch/arm/mach-omap/include/mach/bbu.h
index 8c4c5e3..36d87e1 100644
--- a/arch/arm/mach-omap/include/mach/bbu.h
+++ b/arch/arm/mach-omap/include/mach/bbu.h
@@ -18,10 +18,11 @@ static inline int am33xx_bbu_spi_nor_register_handler(const char *name, char *de
 }
 #endif
 
-#ifdef CONFIG_BAREBOX_UPDATE_AM33XX_NAND_XLOADSLOTS
+#ifdef CONFIG_BAREBOX_UPDATE_AM33XX_NAND
 int am33xx_bbu_nand_xloadslots_register_handler(const char *name,
 						char **devicefile,
 						int num_devicefiles);
+int am33xx_bbu_nand_register_handler(const char *name, char *devicefile);
 #else
 static inline int am33xx_bbu_nand_xloadslots_register_handler(const char *name,
 							char **devicefile,
@@ -29,6 +30,11 @@ static inline int am33xx_bbu_nand_xloadslots_register_handler(const char *name,
 {
 	return 0;
 }
+
+static inline int am33xx_bbu_nand_register_handler(const char *name, char *devicefile)
+{
+	return 0;
+}
 #endif
 
 #endif
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
