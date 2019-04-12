Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hErQN-00061l-14
 for barebox@lists.infradead.org; Fri, 12 Apr 2019 08:20:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Apr 2019 10:20:28 +0200
Message-Id: <20190412082028.6195-2-s.hauer@pengutronix.de>
In-Reply-To: <20190412082028.6195-1-s.hauer@pengutronix.de>
References: <20190412082028.6195-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] ARM: i.MX: create i.MX25 internal Nand update handler
To: Barebox List <barebox@lists.infradead.org>

This adds an update handler for booting the i.MX25 from NAND.  This is a
two staged boot process. The first stage barebox is flashed once in the
first NAND block and once in the second block. The remaining space in
the first partition is divided into two equal parts which each contain a
second stage barebox. The stages are marked as such with IMD
information, so the update handler detects which stage shall be flashed
and picks the right blocks automatically.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile                  |   1 +
 arch/arm/mach-imx/imx25-bbu-internal-nand.c | 611 ++++++++++++++++++++
 arch/arm/mach-imx/include/mach/bbu.h        |   4 +
 3 files changed, 616 insertions(+)
 create mode 100644 arch/arm/mach-imx/imx25-bbu-internal-nand.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 2b817e5dd8..b86025cc34 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -23,6 +23,7 @@ lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
 obj-y += devices.o imx.o
 obj-pbl-y += esdctl.o boot.o
 obj-$(CONFIG_BAREBOX_UPDATE) += imx-bbu-internal.o
+obj-y += imx25-bbu-internal-nand.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND) += imx-bbu-external-nand.o
 obj-$(CONFIG_RESET_IMX_SRC) += src.o
 lwl-y += cpu_init.o
diff --git a/arch/arm/mach-imx/imx25-bbu-internal-nand.c b/arch/arm/mach-imx/imx25-bbu-internal-nand.c
new file mode 100644
index 0000000000..e6d76b6846
--- /dev/null
+++ b/arch/arm/mach-imx/imx25-bbu-internal-nand.c
@@ -0,0 +1,611 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <bbu.h>
+#include <filetype.h>
+#include <errno.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <image-metadata.h>
+#include <linux/sizes.h>
+#include <linux/mtd/mtd-abi.h>
+#include <linux/mtd/mtd.h>
+#include <mtd/mtd-peb.h>
+#include <linux/stat.h>
+#include <mach/bbu.h>
+
+struct imx_internal_bbu_handler {
+	struct bbu_handler handler;
+	unsigned long flags;
+};
+
+static int imx25_bbu_nand_internal_update(struct bbu_handler *handler, struct bbu_data *data)
+{
+	int ret;
+	struct cdev *cdev;
+	struct mtd_info *mtd;
+	const void *buf;
+	int i, size;
+	int num_blocks;
+
+	if (file_detect_type(data->image, data->len) != filetype_arm_barebox) {
+		if (!bbu_force(data, "Not an ARM barebox image"))
+			return -EINVAL;
+	}
+
+	ret = bbu_confirm(data);
+	if (ret)
+		return ret;
+
+	printf("updating to %s\n", data->devicefile);
+
+	cdev = cdev_open(handler->devicefile, O_RDWR);
+	if (!cdev) {
+		printf("Cannot open %s\n", handler->devicefile);
+		return -ENOENT;
+	}
+
+	mtd = cdev->mtd;
+
+	if (mtd->size < data->len) {
+		ret = -ENOSPC;
+		goto out;
+	}
+
+	num_blocks = DIV_ROUND_UP(data->len, mtd->erasesize);
+
+	for (i = 0; i < num_blocks; i++) {
+		if (mtd_peb_is_bad(mtd, i)) {
+			pr_err("Block %d is bad, cannot write image\n", i);
+			ret = -EINVAL;
+			goto out;
+		}
+	}
+
+	buf = data->image;
+	size = data->len;
+
+	for (i = 0; i < num_blocks; i++) {
+		int now = min_t(int, mtd->erasesize, size);
+
+		ret = mtd_peb_erase(mtd, i);
+		if (ret) {
+			pr_err("Cannot erase block %d: %s\n", i, strerror(-ret));
+			goto out;
+		}
+
+		printf("Writing %d bytes to peb %d\n", now, i);
+
+		ret = mtd_peb_write(mtd, buf, i, 0, now);
+		if (ret) {
+			pr_err("Cannot write block %d: %s\n", i, strerror(-ret));
+			goto out;
+		}
+
+		buf += mtd->erasesize;
+		size -= mtd->erasesize;
+	}
+
+	ret = 0;
+out:
+	cdev_close(cdev);
+
+	return ret;
+}
+
+int imx25_bbu_internal_nand_register_handler(const char *name, unsigned long flags)
+{
+	struct imx_internal_bbu_handler *imx_handler;
+	struct bbu_handler *handler;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_BAREBOX_UPDATE))
+		return -ENOSYS;
+
+	imx_handler = xzalloc(sizeof(*imx_handler));
+	imx_handler->handler.handler = imx25_bbu_nand_internal_update;
+	handler = &imx_handler->handler;
+	handler->devicefile = "/dev/nand0.barebox";
+	handler->name = name;
+	handler->flags = flags;
+
+	ret = bbu_register_handler(&imx_handler->handler);
+	if (ret)
+		free(imx_handler);
+
+	return ret;
+}
+
+static int imx25_bbu_nand_write_1st_stage(struct mtd_info *mtd, int block, void *fw)
+{
+	int ret;
+
+	if (mtd_peb_is_bad(mtd, block))
+		return -EIO;
+
+	ret = mtd_peb_erase(mtd, block);
+	if (ret)
+		return ret;
+
+	ret = mtd_peb_write(mtd, fw, block, 0, mtd->erasesize);
+	if (ret) {
+		pr_err("Cannot write block %d: %s\n", block, strerror(-ret));
+		return ret;
+	}
+
+	return 0;
+}
+
+static int imx25_bbu_nand_update_1st_stage(struct bbu_handler *handler,
+				       struct bbu_data *data, struct mtd_info *mtd)
+{
+	int ret, err = 0;
+	void *buf = NULL;
+
+	if (data->len > mtd->erasesize) {
+		pr_err("Image is bigger than one eraseblock\n");
+		err = -ENOSPC;
+		goto out;
+	}
+
+	buf = xzalloc(mtd->erasesize);
+	memcpy(buf, data->image, data->len);
+
+	ret = imx25_bbu_nand_write_1st_stage(mtd, 0, buf);
+	if (ret)
+		err = ret;
+
+	ret = imx25_bbu_nand_write_1st_stage(mtd, 1, buf);
+	if (ret)
+		err = ret;
+
+out:
+	free(buf);
+
+	return err;
+}
+
+static int flash_fw(struct bbu_data *data, struct mtd_info *mtd, const void *fw,
+		    int len, int block, int num_blocks)
+{
+	int i, ret;
+	int left = len;
+
+	for (i = 0; i < num_blocks; i++) {
+		if (mtd_peb_is_bad(mtd, block + i))
+			continue;
+
+		ret = mtd_peb_erase(mtd, block + i);
+		if (ret)
+			return ret;
+	}
+
+	for (i = 0; i < num_blocks; i++) {
+		int now = min_t(int, left, mtd->erasesize);
+
+		if (mtd_peb_is_bad(mtd, block + i))
+			continue;
+
+		ret = mtd_peb_write(mtd, fw, block + i, 0, now);
+		if (ret)
+			return ret;
+
+		left -= now;
+		fw += now;
+
+		if (!left)
+			break;
+	}
+
+	if (left)
+		return -ENOSPC;
+
+	return 0;
+}
+
+static int read_fw(struct mtd_info *mtd, int block, int num_blocks, void **fw, unsigned int *len)
+{
+	int i, ret;
+	void *blockbuf, *buf, *fwbuf = NULL;
+	int size = mtd->erasesize, found_header = 0;
+	int needs_cleanup = 0;
+
+	buf = blockbuf = xmalloc(mtd->erasesize);
+
+	for (i = 0; i < num_blocks; i++) {
+		int now;
+
+		ret = mtd_peb_is_bad(mtd, block + i);
+		if (ret > 0)
+			continue;
+		if (ret < 0)
+			goto out;
+
+		now = min_t(int, size, mtd->erasesize);
+
+		ret = mtd_peb_is_empty(mtd, block + i);
+		if (ret > 0) {
+			printf("Block %d is empty, cannot read firmware\n", block + i);
+			ret = -EIO;
+			goto out;
+		}
+
+		ret = mtd_peb_read(mtd, buf, block + i, 0, now);
+		if (ret < 0)
+			goto out;
+		if (ret > 0)
+			needs_cleanup = 1;
+
+		if (!found_header) {
+			if (*(u32 *)(buf + 0x20) != 0x65726162 ||
+			    *(u32 *)(buf + 0x24) != 0x00786f62) {
+				pr_err("No valid barebox image found on block %d\n", block + i);
+				ret = -EINVAL;
+				goto out;
+			}
+
+			*len = size = *(u32 *)(buf + 0x2c);
+			printf("Reading firmware of size %d\n", size);
+			fwbuf = malloc(size);
+			if (!fwbuf) {
+				ret = -ENOMEM;
+				goto out;
+			}
+
+			now = min_t(int, size, mtd->erasesize);
+
+			memcpy(fwbuf, buf, now);
+			buf = fwbuf + mtd->erasesize;
+			size -= now;
+			if (!size) {
+				ret = 0;
+				goto out;
+			}
+
+			found_header = 1;
+			continue;
+		}
+
+		buf += now;
+		size -= now;
+
+		if (!size) {
+			ret = 0;
+			goto out;
+		}
+	}
+
+	ret = -EINVAL;
+out:
+	free(blockbuf);
+
+	if (ret) {
+		free(fwbuf);
+		return ret;
+	}
+
+	*fw = fwbuf;
+
+	return needs_cleanup ? -EUCLEAN : 0;
+}
+
+int imx25_nand_read_second_stage(void **fw, int *len)
+{
+	int num_blocks;
+	int fw_blocks, start_fw1, start_fw2;
+	int ret;
+	struct cdev *cdev;
+	struct mtd_info *mtd;
+
+	cdev = cdev_open("nand0.barebox", O_RDONLY);
+	if (!cdev) {
+		pr_err("Cannot open nand0.barebox\n");
+		return -ENOENT;
+	}
+
+	mtd = cdev->mtd;
+
+	num_blocks = mtd_div_by_eb(mtd->size, mtd);
+
+	if (num_blocks < 4) {
+		ret = -ENOSPC;
+		goto out;
+	}
+
+	fw_blocks = (num_blocks - 2) / 2;
+	start_fw1 = 2;
+	start_fw2 = start_fw1 + fw_blocks;
+
+	ret = read_fw(mtd, start_fw1, fw_blocks, fw, len);
+	if (ret && ret != -EUCLEAN) {
+		pr_err("Cannot read primary firmware slot\n");
+		ret = read_fw(mtd, start_fw2, fw_blocks, fw, len);
+		if (ret && ret != -EUCLEAN) {
+			pr_err("Cannot read secondary firmware slot\n");
+		}
+	}
+
+	cdev_close(cdev);
+
+	if (ret)
+		pr_err("No firmware could be read\n");
+
+out:
+	return ret;
+}
+
+static int imx25_bbu_nand_update_2nd_stage(struct bbu_handler *handler,
+				      struct bbu_data *data,
+				      struct mtd_info *mtd)
+{
+	int num_blocks = mtd_div_by_eb(mtd->size, mtd);
+	int fw_blocks, fw_start[2], fw_cleanup[2] = {};
+	int ret;
+	int active;
+	void *fw_current[2] = {};
+	const void *fw;
+	int fw_current_len[2], fw_len;
+
+	if (num_blocks < 4)
+		return -ENOSPC;
+
+	fw_blocks = (num_blocks - 2) / 2;
+	fw_start[0] = 2;
+	fw_start[1] = fw_start[0] + fw_blocks;
+
+	if (data->len > num_blocks * mtd->erasesize)
+		return -ENOSPC;
+
+	ret = read_fw(mtd, fw_start[0], fw_blocks, &fw_current[0], &fw_current_len[0]);
+	if (ret) {
+		if (ret == -EUCLEAN)
+			ret = 0;
+		fw_cleanup[0] = 1;
+	}
+
+	ret = read_fw(mtd, fw_start[1], fw_blocks, &fw_current[1], &fw_current_len[1]);
+	if (ret) {
+		if (ret == -EUCLEAN)
+			ret = 0;
+		fw_cleanup[1] = 1;
+	}
+
+	if (fw_current[0])
+		active = 0;
+	else
+		active = 1;
+
+	if (data->image) {
+		fw = data->image;
+		fw_len = data->len;
+	} else {
+		if (fw_current[0]) {
+			fw = fw_current[0];
+			fw_len = fw_current_len[0];
+		} else if (fw_current[1]) {
+			fw = fw_current[1];
+			fw_len = fw_current_len[1];
+		} else {
+			pr_err("No current firmware found, cannot refresh\n");
+			goto out;
+		}
+	}
+
+	if (data->image || fw_cleanup[!active] ) {
+		pr_info("%sing firmware slot %d\n",
+			data->image ? "updat" : "refresh", !active);
+		ret = flash_fw(data, mtd, fw, fw_len, fw_start[!active], fw_blocks);
+		if (ret)
+			goto out;
+	}
+
+	if (data->image || fw_cleanup[active] ) {
+		pr_info("%sing firmware slot %d\n",
+			data->image ? "updat" : "refresh", active);
+		ret = flash_fw(data, mtd, fw, fw_len, fw_start[active], fw_blocks);
+		if (ret)
+			goto out;
+	}
+
+	ret = 0;
+out:
+	free(fw_current[0]);
+	free(fw_current[1]);
+
+	return ret;
+}
+
+static int imx25_bbu_nand_refresh(struct bbu_handler *handler,
+				  struct bbu_data *data, struct mtd_info *mtd)
+{
+	int ret;
+	int fw_cleanup[2] = {};
+	void *fw_current = NULL, *fw[2];
+
+	fw[0] = xzalloc(mtd->erasesize);
+	fw[1] = xzalloc(mtd->erasesize);
+
+	ret = mtd_peb_read(mtd, fw[0], 0, 0, mtd->erasesize);
+	if (!ret || ret == -EUCLEAN)
+		fw_current = fw[0];
+	if (ret)
+		fw_cleanup[0] = 1;
+
+	ret = mtd_peb_read(mtd, fw[1], 1, 0, mtd->erasesize);
+	if (!ret || ret == -EUCLEAN)
+		fw_current = fw[1];
+	if (ret)
+		fw_cleanup[1] = 1;
+
+	if (!fw_current) {
+		pr_err("No current firmware found, cannot refresh\n");
+		ret = -EINVAL;
+		goto out;
+	}
+
+	/*
+	 * When the first block is erased the i.MX25 ROM will not try
+	 * the second block. This means once we erase the block and we
+	 * have a power cut the board will not boot anymore. There's
+	 * nothing we can do about it, so we don't need to be clever
+	 * here, just rewrite the blocks in a fixed order.
+	 */
+	if (fw_cleanup[0]) {
+		pr_info("Refreshing xload slot %d\n", 0);
+		ret = imx25_bbu_nand_write_1st_stage(mtd, 0, fw_current);
+		if (ret)
+			goto out;
+	}
+
+	if (fw_cleanup[1]) {
+		pr_info("Refreshing xload slot %d\n", 1);
+		ret = imx25_bbu_nand_write_1st_stage(mtd, 1, fw_current);
+		if (ret)
+			goto out;
+	}
+
+	ret = imx25_bbu_nand_update_2nd_stage(handler, data, mtd);
+out:
+	free(fw[0]);
+	free(fw[1]);
+
+	return ret;
+}
+
+static int imx25_bbu_nand_redundant_internal_update(struct bbu_handler *handler,
+						    struct bbu_data *data)
+{
+	int ret;
+	struct cdev *cdev;
+	struct mtd_info *mtd;
+	const char *stage;
+	int stageno;
+
+	cdev = cdev_open(handler->devicefile, O_RDWR);
+	if (!cdev) {
+		printf("Cannot open %s\n", handler->devicefile);
+		return -ENOENT;
+	}
+
+	mtd = cdev->mtd;
+
+	if (!data->image) {
+		ret = imx25_bbu_nand_refresh(handler, data, mtd);
+		goto out;
+	}
+
+	if (file_detect_type(data->image, data->len) != filetype_arm_barebox) {
+		if (!bbu_force(data, "Not an ARM barebox image")) {
+			ret = -EINVAL;
+			goto out;
+		}
+	}
+
+	printf("updating to %s\n", data->devicefile);
+
+	if (!data->imd_data) {
+		pr_err("Image has no metadata information\n");
+		ret = -EINVAL;
+		goto out;
+	}
+
+	stage = imd_get_param(data->imd_data, "stage");
+	if (!stage) {
+		pr_err("Don't know which stage this is\n");
+		ret = -EINVAL;
+		goto out;
+	}
+
+	stageno = simple_strtoul(stage, NULL, 0);
+	if (stageno != 1 && stageno != 2) {
+		pr_err("Invalid stage \"%s\"\n", stage);
+		ret = -EINVAL;
+		goto out;
+	}
+
+	pr_info("Updating %s stage loader\n", stageno == 1 ? "first" : "second");
+
+	ret = bbu_confirm(data);
+	if (ret)
+		goto out;
+
+	if (stageno == 1)
+		ret = imx25_bbu_nand_update_1st_stage(handler, data, mtd);
+	else
+		ret = imx25_bbu_nand_update_2nd_stage(handler, data, mtd);
+out:
+	cdev_close(cdev);
+
+	return ret;
+}
+
+/*
+ * imx25_bbu_internal_nand_redundant_register_handler - register a
+ * redundant update handler for i.MX25 NAND
+ *
+ * @name: The name of the handler
+ * @flags: flags
+ *
+ * This creates an update handler for booting a i.MX25 redundantely. The i.MX25
+ * ROM can detect read errors on the first Nand block and tries the second block
+ * afterwards. This only works when the firmwre the ROM loads is smaller than a
+ * single block. Since one block is not big enough to hold a full barebox image
+ * this relies on a two staged boot process. We use the following layout in
+ * Nand, nand0.barebox is the partition holding all barebox data. It should be
+ * big enough to hold two second stage loaders and two additional blocks for the
+ * first stage loaders.
+ *
+ * block 0:                               Primary first stage
+ * block 1:                               Secondary first stage
+ * block 2 until half of remaining space: Primary second stage
+ * the rest:                              Secondary second stage
+ *
+ * The update handler automatically detects which stage shall be updated. It
+ * does so by reading the IMD from the update image it should contain a
+ * "stage=1" tag for the first stage or a "stage=2" tag for the second stage.
+ * Images without IMD or without a stage tag are rejected.
+ *
+ * The update handler can work in refresh mode in which it restores missing data from
+ * the redundant information or rewrites the data if the bitflip threshold has been
+ * reached.
+ *
+ * Note that the ROM only skips to the second block if there are ecc
+ * errors on the first block. It does not skip to the second block when
+ * the first block is erased. This means when we have to erase the first
+ * block in order to rewrite it there's a small moment when the system
+ * is in a non bootable state.
+ */
+int imx25_bbu_internal_nand_redundant_register_handler(const char *name,
+						       unsigned long flags)
+{
+	struct imx_internal_bbu_handler *imx_handler;
+	struct bbu_handler *handler;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_BAREBOX_UPDATE))
+		return -ENOSYS;
+
+	imx_handler = xzalloc(sizeof(*imx_handler));
+	imx_handler->handler.handler = imx25_bbu_nand_redundant_internal_update;
+	handler = &imx_handler->handler;
+	handler->devicefile = "/dev/nand0.barebox";
+	handler->name = name;
+	handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
+
+	ret = bbu_register_handler(&imx_handler->handler);
+	if (ret)
+		free(imx_handler);
+
+	return ret;
+}
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index 10638a7fc7..59dcb5e50b 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -207,4 +207,8 @@ static inline int imx_bbu_external_nand_register_handler(const char *name, const
 }
 #endif
 
+int imx25_nand_read_second_stage(void **fw, int *len);
+int imx25_bbu_internal_nand_register_handler(const char *name, unsigned long flags);
+int imx25_bbu_internal_nand_redundant_register_handler(const char *name, unsigned long flags);
+
 #endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
