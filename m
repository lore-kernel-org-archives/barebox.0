Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VCTey-0006CZ-VR
 for barebox@lists.infradead.org; Thu, 22 Aug 2013 12:06:43 +0000
From: Shravan Kumar <shravan.k@phytec.in>
Date: Thu, 22 Aug 2013 14:05:36 +0200
Message-Id: <1377173137-27320-1-git-send-email-shravan.k@phytec.in>
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
Subject: [PATCH 1/2] ARM: omap: barebox update spi nor MLO handler
To: barebox@lists.infradead.org
Cc: shravan <shravan.k@phytec.in>

From: shravan <shravan.k@phytec.in>

	-Added mlo spi NOR copy handler
	-This handler will convert the MLO to big endian
	-Tested with pcm051 board

Signed-off-by: shravan <shravan.k@phytec.in>
---
 arch/arm/mach-omap/Kconfig            |    8 +++
 arch/arm/mach-omap/Makefile           |    1 +
 arch/arm/mach-omap/include/mach/bbu.h |   15 ++++++
 arch/arm/mach-omap/omap_bbu_spi_mlo.c |   88 +++++++++++++++++++++++++++++++++
 4 files changed, 112 insertions(+)
 create mode 100644 arch/arm/mach-omap/include/mach/bbu.h
 create mode 100644 arch/arm/mach-omap/omap_bbu_spi_mlo.c

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 3ec18f0..e137961 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -90,6 +90,14 @@ config OMAP_BUILD_SPI
 	  Say Y here if you want to build an barebox.spi image as used
 	  on the AM35xx chips when booting from SPI NOR flash.
 
+config BAREBOX_UPDATE_OMAP_SPI_NOR_MLO
+	prompt "barebox update SPI NOR MLO handler"
+	bool
+	depends on BAREBOX_UPDATE
+	help
+          Say Y for barebox update SPI NOR MLO handler.
+          AM35xx, AM33xx chips use big endian MLO for SPI NOR flash.
+
 config ARCH_TEXT_BASE
 	hex
 	default 0x80e80000 if MACH_OMAP343xSDP
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index d42de48..e90b350 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -32,3 +32,4 @@ obj-$(CONFIG_MFD_TWL6030) += omap4_twl6030_mmc.o
 obj-$(CONFIG_OMAP4_USBBOOT) += omap4_rom_usb.o
 obj-$(CONFIG_CMD_BOOT_ORDER) += boot_order.o
 obj-y += gpio.o
+obj-$(CONFIG_BAREBOX_UPDATE_OMAP_SPI_NOR_MLO) += omap_bbu_spi_mlo.o
diff --git a/arch/arm/mach-omap/include/mach/bbu.h b/arch/arm/mach-omap/include/mach/bbu.h
new file mode 100644
index 0000000..b9df835
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/bbu.h
@@ -0,0 +1,15 @@
+#ifndef __MACH_BBU_H
+#define __MACH_BBU_H
+
+#include <bbu.h>
+
+#ifdef CONFIG_BAREBOX_UPDATE_OMAP_SPI_NOR_MLO
+int omap_bbu_spi_nor_mlo_register_handler(const char *name, char *devicefile);
+#else
+int omap_bbu_spi_nor_mlo_register_handler(const char *name, char *devicefile)
+{
+	return 0;
+}
+#endif
+
+#endif
diff --git a/arch/arm/mach-omap/omap_bbu_spi_mlo.c b/arch/arm/mach-omap/omap_bbu_spi_mlo.c
new file mode 100644
index 0000000..4fe0014
--- /dev/null
+++ b/arch/arm/mach-omap/omap_bbu_spi_mlo.c
@@ -0,0 +1,88 @@
+/*
+ * omap_bbu_spi_mlo.c - am35xx and am33xx specific MLO
+ *	update handler for SPI NOR flash
+ *
+ * Copyright (c) 2013 Sharavn kumar <shravan.k@phytec.in>, Phytec
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
+
+/*
+ * AM35xx, AM33xx chips use big endian MLO for SPI NOR flash
+ * This handler converting MLO to big endian and write to SPI NOR
+ */
+static int spi_nor_mlo_handler(struct bbu_handler *handler,
+					struct bbu_data *data)
+{
+	int dstfd = 0;
+	int ret = 0;
+	uint32_t readbuf;
+	int size = data->len;
+	void *image = data->image;
+
+	dstfd = open(data->devicefile, O_WRONLY);
+	if (dstfd < 0) {
+		printf("could not open %s: %s", data->devicefile, errno_str());
+		ret = dstfd;
+		goto out;
+	}
+
+	ret = erase(dstfd, ~0, 0);
+	if (ret < 0) {
+		printf("could not erase %s: %s", data->devicefile, errno_str());
+		goto out1;
+	}
+
+	for (; size >= 0; size -= 4) {
+		memcpy((char *)&readbuf, image, 4);
+
+		readbuf = cpu_to_be32(readbuf);
+		ret = write(dstfd, &readbuf, 4);
+		if (ret < 0) {
+			perror("write");
+			goto out1;
+		}
+
+		image = image + 4;
+	}
+
+	ret = 0;
+out1:
+	close(dstfd);
+out:
+	return ret;
+}
+
+/*
+ * Register a omap MLO update handler for SPI NOR
+ */
+int omap_bbu_spi_nor_mlo_register_handler(const char *name, char *devicefile)
+{
+	struct bbu_handler *handler;
+	int ret;
+
+	handler = xzalloc(sizeof(*handler));
+	handler->devicefile = devicefile;
+	handler->name = name;
+	handler->handler = spi_nor_mlo_handler;
+
+	ret = bbu_register_handler(handler);
+
+	if (ret)
+		free(handler);
+
+	return ret;
+}
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
