Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZYtDu-0002bm-Qa
 for barebox@lists.infradead.org; Mon, 07 Sep 2015 10:00:27 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 15739A00399
 for <barebox@lists.infradead.org>; Mon,  7 Sep 2015 12:00:07 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Mon, 7 Sep 2015 11:59:53 +0200
Message-Id: <1441619994-22444-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v2 1/2] ARM: am33xx: Add barebox_update eMMC option
To: barebox@lists.infradead.org

With this patch the barebox_update command will be extended by the possibility
to flash the MLO to eMMC devices.

The MLO will be flashed to the following addresses:
0x00000
0x20000
0x40000
0x60000

Because the first 512 Bytes of the MLO are reserved for the CHSETTINGS header
and this only use ~80 Bytes, there is space for the partition table in the
header.

The command will overwrite the bootstrap code area and will hold the
partition table and the Boot signature.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---

Changes:
	v2:
	The MLO will also written to 0x0

 arch/arm/configs/am335x_defconfig     |  1 +
 arch/arm/mach-omap/Kconfig            |  7 +++
 arch/arm/mach-omap/Makefile           |  1 +
 arch/arm/mach-omap/am33xx_bbu_emmc.c  | 96 +++++++++++++++++++++++++++++++++++
 arch/arm/mach-omap/include/mach/bbu.h | 18 +++++++
 5 files changed, 123 insertions(+)
 create mode 100644 arch/arm/mach-omap/am33xx_bbu_emmc.c

diff --git a/arch/arm/configs/am335x_defconfig b/arch/arm/configs/am335x_defconfig
index 0db2075..234042f 100644
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
index 0b59afc..5c68062 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -97,6 +97,13 @@ config BAREBOX_UPDATE_AM33XX_NAND
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
index db2856d..a84e94e 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -36,3 +36,4 @@ pbl-$(CONFIG_OMAP3_USBBOOT) += omap3_xload_usb.o
 obj-$(CONFIG_CMD_BOOT_ORDER) += boot_order.o
 obj-$(CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO) += am33xx_bbu_spi_mlo.o
 obj-$(CONFIG_BAREBOX_UPDATE_AM33XX_NAND) += am33xx_bbu_nand.o
+obj-$(CONFIG_BAREBOX_UPDATE_AM33XX_EMMC) += am33xx_bbu_emmc.o
diff --git a/arch/arm/mach-omap/am33xx_bbu_emmc.c b/arch/arm/mach-omap/am33xx_bbu_emmc.c
new file mode 100644
index 0000000..418cf61
--- /dev/null
+++ b/arch/arm/mach-omap/am33xx_bbu_emmc.c
@@ -0,0 +1,96 @@
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
+#define PART_TABLE_SIZE		66
+#define PART_TABLE_OFFSET	0x1BE
+
+static int emmc_mlo_handler(struct bbu_handler *handler, struct bbu_data *data)
+{
+	int ret = 0;
+	int i = 0;
+	int fd;
+	const void *image = data->image;
+	size_t size = data->len;
+	u8 *part_table = 0;
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
+	/* save the partition table */
+	part_table = xmalloc(PART_TABLE_SIZE);
+	ret = pread(fd, part_table, PART_TABLE_SIZE, PART_TABLE_OFFSET);
+	if (ret < 0) {
+		pr_err("could not read partition table from fd %s: %s\n",
+			handler->devicefile, errno_str());
+		goto error;
+	}
+
+	/* write the MLOs */
+	for (i = 0; i < 4; i++) {
+		ret = pwrite(fd, image, size, i * 0x20000);
+		if (ret < 0) {
+			pr_err("could not write MLO %i/4 to fd %s: %s\n",
+				i + 1, handler->devicefile, errno_str());
+			goto error_save_part_table;
+		}
+	}
+
+error_save_part_table:
+	/* write the partition table back */
+	ret = pwrite(fd, part_table, PART_TABLE_SIZE, PART_TABLE_OFFSET);
+	if (ret < 0)
+		pr_err("could not write partition table to fd %s: %s\n",
+			handler->devicefile, errno_str());
+
+error:
+	close(fd);
+	return ret;
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
index da5c214..7c5dcbd 100644
--- a/arch/arm/mach-omap/include/mach/bbu.h
+++ b/arch/arm/mach-omap/include/mach/bbu.h
@@ -36,4 +36,22 @@ static inline int am33xx_bbu_nand_register_handler(const char *name, char *devic
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
