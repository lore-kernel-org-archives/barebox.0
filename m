Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZX1hy-0008Fd-QL
 for barebox@lists.infradead.org; Wed, 02 Sep 2015 06:39:47 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0ADACA00226
 for <barebox@lists.infradead.org>; Wed,  2 Sep 2015 08:41:26 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Wed, 2 Sep 2015 08:36:56 +0200
Message-Id: <1441175817-37597-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 1/2] ARM: am33xx: Add barebox_update eMMC option
To: barebox@lists.infradead.org

With this patch the barebox_update command will be extended by the possibility
to flash the MLO to eMMC devices.

The MLO will be flashed to the following addresses:
0x20000
0x40000
0x60000

The MBR at addr. 0x0 won't be overwritten.
Therefore it's necessary to remove the MLO in the boot partition.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/configs/am335x_defconfig     |  1 +
 arch/arm/mach-omap/Kconfig            |  7 ++++
 arch/arm/mach-omap/Makefile           |  1 +
 arch/arm/mach-omap/am33xx_bbu_emmc.c  | 78 +++++++++++++++++++++++++++++++++++
 arch/arm/mach-omap/include/mach/bbu.h | 18 ++++++++
 5 files changed, 105 insertions(+)
 create mode 100644 arch/arm/mach-omap/am33xx_bbu_emmc.c

diff --git a/arch/arm/configs/am335x_defconfig b/arch/arm/configs/am335x_defconfig
index 559f56a..c5ab3c9 100644
--- a/arch/arm/configs/am335x_defconfig
+++ b/arch/arm/configs/am335x_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_OMAP=y
 CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO=y
 CONFIG_BAREBOX_UPDATE_AM33XX_NAND=y
+CONFIG_BAREBOX_UPDATE_AM33XX_EMMC=y
 CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_AFI_GF=y
 CONFIG_MACH_BEAGLEBONE=y
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index fb17df0..0df38e1 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -105,6 +105,13 @@ config BAREBOX_UPDATE_AM33XX_NAND
 	  This also includes a handler for updating the regular barebox binary
 	  in NAND.
 
+config BAREBOX_UPDATE_AM33XX_EMMC
+	prompt "barebox update eMMC handler"
+	bool
+	depends on BAREBOX_UPDATE
+	help
+	  Say Y for barebox update eMMC handler.
+
 config ARCH_TEXT_BASE
 	hex
 	default 0x80e80000 if MACH_OMAP343xSDP
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index bef1d05..82f1a9e 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -34,3 +34,4 @@ obj-$(CONFIG_OMAP4_USBBOOT) += omap4_rom_usb.o
 obj-$(CONFIG_CMD_BOOT_ORDER) += boot_order.o
 obj-$(CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO) += am33xx_bbu_spi_mlo.o
 obj-$(CONFIG_BAREBOX_UPDATE_AM33XX_NAND) += am33xx_bbu_nand.o
+obj-$(CONFIG_BAREBOX_UPDATE_AM33XX_EMMC) += am33xx_bbu_emmc.o
diff --git a/arch/arm/mach-omap/am33xx_bbu_emmc.c b/arch/arm/mach-omap/am33xx_bbu_emmc.c
new file mode 100644
index 0000000..1c1bebc
--- /dev/null
+++ b/arch/arm/mach-omap/am33xx_bbu_emmc.c
@@ -0,0 +1,78 @@
+/*
+ * Copyright (c) 2015 Phytec Messtechnik GmbH
+ * Author: Daniel Schultz <d.schultz@phytec.de>
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
+#include <bbu.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <filetype.h>
+
+static int emmc_mlo_handler(struct bbu_handler *handler, struct bbu_data *data)
+{
+	int ret = 0;
+	int i = 0;
+	int fd;
+	const void *image = data->image;
+	size_t size = data->len;
+
+	if (file_detect_type(image, size) != filetype_ch_image) {
+		pr_err("%s is not a valid ch-image\n", data->imagefile);
+		return -EINVAL;
+	}
+	ret = bbu_confirm(data);
+	if (ret != 0)
+		return ret;
+
+	fd = open(handler->devicefile, O_WRONLY);
+	if (fd < 0) {
+		pr_err("could not open %s: %s\n", handler->devicefile,
+			errno_str());
+		return fd;
+	}
+
+	for (i = 1; i < 4; i++) {
+		ret = pwrite(fd, image, size, i * 0x20000);
+		if (ret < 0) {
+			pr_err("could not write to fd %s: %s\n",
+				handler->devicefile, errno_str());
+			close(fd);
+			return ret;
+		}
+	}
+	close(fd);
+
+	printf("Remove the MLO from the %s boot partition.\nOtherwise the wrong MLO may be loaded!\n",
+		handler->devicefile);
+
+	return 0;
+}
+
+int am33xx_bbu_emmc_mlo_register_handler(const char *name, char *devicefile)
+{
+	struct bbu_handler *handler;
+	int ret;
+
+	handler = xzalloc(sizeof(*handler));
+	handler->devicefile = devicefile;
+	handler->name = name;
+	handler->handler = emmc_mlo_handler;
+
+	ret = bbu_register_handler(handler);
+
+	if (ret)
+		free(handler);
+
+	return ret;
+}
diff --git a/arch/arm/mach-omap/include/mach/bbu.h b/arch/arm/mach-omap/include/mach/bbu.h
index 36d87e1..4d1b4fa 100644
--- a/arch/arm/mach-omap/include/mach/bbu.h
+++ b/arch/arm/mach-omap/include/mach/bbu.h
@@ -37,4 +37,22 @@ static inline int am33xx_bbu_nand_register_handler(const char *name, char *devic
 }
 #endif
 
+#ifdef CONFIG_BAREBOX_UPDATE_AM33XX_EMMC
+int am33xx_bbu_emmc_mlo_register_handler(const char *name, char *devicefile);
+int am33xx_bbu_emmc_register_handler(const char *name, char *devicefile);
+#else
+static inline int am33xx_bbu_emmc_mlo_register_handler(const char *name,
+							char *devicefile)
+{
+	return 0;
+}
+
+static inline int am33xx_bbu_emmc_register_handler(const char *name,
+							char *devicefile)
+{
+	return 0;
+}
+#endif
+
+
 #endif
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
