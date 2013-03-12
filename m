Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFLWy-0004wO-Tv
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 09:30:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Mar 2013 10:29:56 +0100
Message-Id: <1363080597-10510-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1363080597-10510-1-git-send-email-s.hauer@pengutronix.de>
References: <1363080597-10510-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: i.MX: Add bbu handler for external NAND boot
To: barebox@lists.infradead.org

The external NAND boot code currently does not handle bad blocks
correctly on 2k NAND flashes. This patch adds a barebox_update
handler for external NAND boot which embeds a Bad block table in
the flashed image. The boot code will skip bad blocks found in
this bad block table then.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig                 |   6 +
 arch/arm/mach-imx/Makefile                |   1 +
 arch/arm/mach-imx/external-nand-boot.c    |  22 +++-
 arch/arm/mach-imx/imx-bbu-external-nand.c | 204 ++++++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/bbu.h      |  11 ++
 arch/arm/mach-imx/include/mach/imx-nand.h |   6 +
 6 files changed, 247 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/mach-imx/imx-bbu-external-nand.c

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 1308f3c..7703127 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -149,6 +149,12 @@ config NAND_IMX_BOOT_512_2K
 
 endchoice
 
+config BAREBOX_UPDATE_IMX_EXTERNAL_NAND
+	bool
+	depends on ARCH_IMX_EXTERNAL_BOOT_NAND
+	depends on BAREBOX_UPDATE
+	default y
+
 comment "Freescale i.MX System-on-Chip"
 
 choice
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 4adf522..dd58c62 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -16,4 +16,5 @@ obj-$(CONFIG_COMMON_CLK) += clk-pllv1.o clk-pllv2.o clk-pllv3.o clk-pfd.o
 obj-y += devices.o imx.o esdctl.o
 obj-y += boot.o
 obj-$(CONFIG_BAREBOX_UPDATE) += imx-bbu-internal.o
+obj-$(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND) += imx-bbu-external-nand.o
 pbl-y += esdctl.o
diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index bfefa3c..636f974 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -17,6 +17,7 @@
 #include <linux/mtd/nand.h>
 #include <asm/sections.h>
 #include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
 #include <mach/imx-nand.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
@@ -164,8 +165,8 @@ static noinline void __bare_init imx_nandboot_get_page(void *regs,
 
 void __bare_init imx_nand_load_image(void *dest, int size)
 {
-	u32 tmp, page, block, blocksize, pagesize;
-	int pagesize_2k = 1;
+	u32 tmp, page, block, blocksize, pagesize, badblocks;
+	int pagesize_2k = 1, bbt = 0;
 	void *regs, *base, *spare0;
 
 #if defined(CONFIG_NAND_IMX_BOOT_512)
@@ -231,6 +232,16 @@ void __bare_init imx_nand_load_image(void *dest, int size)
 			writew(NFC_V2_SPAS_SPARESIZE(16), regs + NFC_V2_SPAS);
 	}
 
+	/*
+	 * Check if this image has a bad block table embedded. See
+	 * imx_bbu_external_nand_register_handler for more information
+	 */
+	badblocks = *(uint32_t *)(base + ARM_HEAD_SPARE_OFS);
+	if (badblocks == IMX_NAND_BBT_MAGIC) {
+		bbt = 1;
+		badblocks = *(uint32_t *)(base + ARM_HEAD_SPARE_OFS + 4);
+	}
+
 	block = page = 0;
 
 	while (1) {
@@ -239,7 +250,12 @@ void __bare_init imx_nand_load_image(void *dest, int size)
 		imx_nandboot_get_page(regs, block * blocksize +
 				page * pagesize, pagesize_2k);
 
-		if (pagesize_2k) {
+		if (bbt) {
+			if (badblocks & (1 << block)) {
+				block++;
+				continue;
+			}
+		} else if (pagesize_2k) {
 			if ((readw(spare0) & 0xff) != 0xff) {
 				block++;
 				continue;
diff --git a/arch/arm/mach-imx/imx-bbu-external-nand.c b/arch/arm/mach-imx/imx-bbu-external-nand.c
new file mode 100644
index 0000000..a438b00
--- /dev/null
+++ b/arch/arm/mach-imx/imx-bbu-external-nand.c
@@ -0,0 +1,204 @@
+/*
+ * imx-bbu-external-nand.c - i.MX specific update functions for external
+ *			     nand boot
+ *
+ * Copyright (c) 2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+#include <filetype.h>
+#include <errno.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <sizes.h>
+#include <linux/mtd/mtd-abi.h>
+#include <linux/stat.h>
+#include <ioctl.h>
+#include <mach/bbu.h>
+#include <mach/imx-nand.h>
+#include <asm/barebox-arm-head.h>
+
+static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_data *data)
+{
+	struct mtd_info_user meminfo;
+	int fd;
+	struct stat s;
+	int size_available, size_need;
+	int ret;
+	uint32_t num_bb = 0, bbt = 0;
+	uint64_t offset;
+	int block = 0, len, now, blocksize;
+	void *image = data->image;
+
+	ret = stat(data->devicefile, &s);
+	if (ret)
+		return ret;
+
+	size_available = s.st_size;
+
+	fd = open(data->devicefile, O_RDWR);
+	if (fd < 0)
+		return fd;
+
+	ret = ioctl(fd, MEMGETINFO, &meminfo);
+	if (ret)
+		goto out;
+
+	blocksize = meminfo.erasesize;
+
+	size_need = data->len + 0x8000;
+
+	/*
+	 * Collect bad blocks and construct BBT
+	 */
+	while (size_need > 0) {
+		ret = ioctl(fd, MEMGETBADBLOCK, &offset);
+		if (ret < 0)
+			goto out;
+
+		if (ret) {
+			if (!offset) {
+				printf("1st block is bad. This is not supported\n");
+				ret = -EINVAL;
+				goto out;
+			}
+
+			debug("bad block at 0x%08llx\n", offset);
+			num_bb++;
+			bbt |= (1 << block);
+			offset += blocksize;
+			block++;
+			continue;
+		}
+		size_need -= blocksize;
+		size_available -= blocksize;
+		offset += blocksize;
+		block++;
+
+		if (size_available < 0) {
+			printf("device is too small\n");
+			ret = -ENOSPC;
+			goto out;
+		}
+	}
+
+	debug("total image size: 0x%08x. Space needed including bad blocks: 0x%08x\n",
+			data->len, data->len + num_bb * blocksize);
+
+	if (meminfo.writesize >= 2048) {
+		uint32_t *image_bbt = image + ARM_HEAD_SPARE_OFS;
+
+		debug(">= 2k nand detected. Creating in-image bbt\n");
+
+		if (*image_bbt != ARM_HEAD_SPARE_MARKER) {
+			if (!bbu_force(data, "Cannot find space for the BBT")) {
+				ret = -EINVAL;
+				goto out;
+			}
+		} else {
+			*image_bbt++ = IMX_NAND_BBT_MAGIC;
+			*image_bbt++ = bbt;
+		}
+	}
+
+	if (data->len + num_bb * blocksize > s.st_size) {
+		printf("needed space (0x%08x) exceeds partition space (0x%08llx)\n",
+				data->len + num_bb * blocksize, s.st_size);
+		ret = -ENOSPC;
+		goto out;
+	}
+
+	len = data->len;
+	offset = 0;
+
+	/* last chance before erasing the flash */
+	ret = bbu_confirm(data);
+	if (ret)
+		return ret;
+
+	/*
+	 * Write image to NAND skipping bad blocks
+	 */
+	while (len > 0) {
+		now = min(len, blocksize);
+
+		ret = ioctl(fd, MEMGETBADBLOCK, &offset);
+		if (ret < 0)
+			goto out;
+
+		if (ret) {
+			ret = lseek(fd, offset + blocksize, SEEK_SET);
+			if (ret < 0)
+				goto out;
+			offset += blocksize;
+			continue;
+		}
+
+		debug("writing %d bytes at 0x%08llx\n", now, offset);
+
+		ret = erase(fd, blocksize, offset);
+		if (ret)
+			goto out;
+
+		ret = write(fd, image, now);
+		if (ret < 0)
+			goto out;
+
+		len -= now;
+		image += now;
+		offset += now;
+	}
+
+	ret = 0;
+
+out:
+	close(fd);
+
+	return ret;
+}
+
+/*
+ * Register a i.MX external nand boot update handler.
+ *
+ * For 512b page NANDs this handler simply writes the image to NAND skipping
+ * bad blocks.
+ *
+ * For 2K page NANDs this handler embeds a bad block table in the flashed image.
+ * This is necessary since we rely on an on-flash BBT for these flashes, but the
+ * regular mtd BBT is too complex to be handled in the 2k the i.MX is able to
+ * initially load from NAND. The BBT consists of a single 32bit value in which
+ * each bit represents a single block. With 2k NAND flashes this is enough for
+ * 4MiB size including bad blocks.
+ */
+int imx_bbu_external_nand_register_handler(const char *name, char *devicefile,
+		unsigned long flags)
+{
+	struct bbu_handler *handler;
+	int ret;
+
+	handler = xzalloc(sizeof(*handler));
+	handler->devicefile = devicefile;
+	handler->name = name;
+	handler->flags = flags;
+	handler->handler = imx_bbu_external_nand_update;
+
+	ret = bbu_register_handler(handler);
+	if (ret)
+		free(handler);
+
+	return ret;
+}
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index ad7c754..077133a 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -78,6 +78,17 @@ static inline int imx6_bbu_internal_spi_i2c_register_handler(const char *name, c
 
 #endif
 
+#if defined(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND)
+int imx_bbu_external_nand_register_handler(const char *name, char *devicefile,
+		unsigned long flags);
+#else
+static inline int imx_bbu_external_nand_register_handler(const char *name, char *devicefile,
+		unsigned long flags)
+{
+	return -ENOSYS;
+}
+#endif
+
 struct dcd_table {
 	void *data;
 	unsigned int size;
diff --git a/arch/arm/mach-imx/include/mach/imx-nand.h b/arch/arm/mach-imx/include/mach/imx-nand.h
index 8352d79..9e6416e 100644
--- a/arch/arm/mach-imx/include/mach/imx-nand.h
+++ b/arch/arm/mach-imx/include/mach/imx-nand.h
@@ -70,4 +70,10 @@ struct imx_nand_platform_data {
 #define NFC_ID				(1 << 4)
 #define NFC_STATUS			(1 << 5)
 
+/*
+ * For external NAND boot this defines the magic value for the bad block table
+ * This is found at offset ARM_HEAD_SPARE_OFS in the image on NAND.
+ */
+#define IMX_NAND_BBT_MAGIC 0xbadb10c0
+
 #endif /* __ASM_ARCH_NAND_H */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
