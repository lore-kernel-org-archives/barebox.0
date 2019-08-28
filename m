Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2v7d-0002qg-PZ
 for barebox@lists.infradead.org; Wed, 28 Aug 2019 10:24:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Aug 2019 12:24:02 +0200
Message-Id: <20190828102402.18332-7-s.hauer@pengutronix.de>
In-Reply-To: <20190828102402.18332-1-s.hauer@pengutronix.de>
References: <20190828102402.18332-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] ARM: OMAP: bbu: Add an all-in-one NAND update handler
To: Barebox List <barebox@lists.infradead.org>

This adds a NAND update handler which automatically detects on the
filetype which stage shall be updated. It takes a single partition
for both the xload images and the barebox images. It uses a fixed
layout on this partition, so there's no need to configure anything
on the board side.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/am33xx_bbu_nand.c  | 146 ++++++++++++++++++++++++++
 arch/arm/mach-omap/include/mach/bbu.h |   6 ++
 2 files changed, 152 insertions(+)

diff --git a/arch/arm/mach-omap/am33xx_bbu_nand.c b/arch/arm/mach-omap/am33xx_bbu_nand.c
index 4c1a28d37e..8c487c8ebb 100644
--- a/arch/arm/mach-omap/am33xx_bbu_nand.c
+++ b/arch/arm/mach-omap/am33xx_bbu_nand.c
@@ -22,6 +22,8 @@
 #include <fcntl.h>
 #include <libfile.h>
 #include <filetype.h>
+#include <linux/mtd/mtd.h>
+#include <mtd/mtd-peb.h>
 #include <mach/bbu.h>
 
 struct nand_bbu_handler {
@@ -134,3 +136,147 @@ int am33xx_bbu_nand_slots_register_handler(const char *name, char **devicefile,
 
 	return ret;
 }
+
+#define XLOAD_BLOCKS 4
+
+static int nand_update_handler_complete(struct bbu_handler *handler,
+					struct bbu_data *data)
+{
+	const void *image = data->image;
+	size_t size = data->len;
+	enum filetype filetype;
+	struct cdev *cdev;
+	struct mtd_info *mtd;
+	int ret, i;
+	int npebs;
+
+	filetype = file_detect_type(image, size);
+
+	cdev = cdev_by_name(handler->devicefile);
+	if (!cdev) {
+		pr_err("%s: No NAND device found\n", __func__);
+		return -ENODEV;
+	}
+
+        mtd = cdev->mtd;
+	if (!mtd) {
+		pr_err("%s: %s is not a mtd device\n", __func__,
+		       handler->devicefile);
+		return -EINVAL;
+	}
+
+	npebs = mtd_div_by_eb(mtd->size, mtd);
+
+	/*
+	 * Sanity check: We need at minimum 6 eraseblocks: 4 for the four xload
+	 * binaries and 2 for the barebox images.
+	 */
+	if (npebs < XLOAD_BLOCKS + 2)
+		return -EINVAL;
+
+	if (filetype == filetype_arm_barebox) {
+		int npebs_bb = (npebs - XLOAD_BLOCKS) / 2;
+
+		pr_info("Barebox image detected, updating 2nd stage\n");
+
+		/* last chance before erasing the flash */
+		ret = bbu_confirm(data);
+		if (ret)
+			goto out;
+
+		ret = mtd_peb_write_file(mtd, XLOAD_BLOCKS, npebs_bb, data->image,
+					 data->len);
+		if (ret)
+			goto out;
+
+		ret = mtd_peb_write_file(mtd, XLOAD_BLOCKS + npebs_bb, npebs_bb,
+					 data->image, data->len);
+		if (ret)
+			goto out;
+
+	} else if (filetype == filetype_ch_image) {
+		int written = 0;
+		void *buf;
+
+		pr_info("xload image detected, updating 1st stage\n");
+
+		if (data->len > mtd->erasesize) {
+			pr_err("Image is bigger than eraseblock, this is not supported\n");
+			ret = -EINVAL;
+			goto out;
+		}
+
+		/* last chance before erasing the flash */
+		ret = bbu_confirm(data);
+		if (ret)
+			goto out;
+
+		buf = xzalloc(mtd->erasesize);
+		memcpy(buf, data->image, data->len);
+	
+		for (i = 0; i < 4; i++) {
+			if (mtd_peb_is_bad(mtd, i)) {
+				pr_info("PEB%d is bad, skipping\n", i);
+				continue;
+			}
+
+			ret = mtd_peb_erase(mtd, i);
+			if (ret)
+				continue;
+
+			ret = mtd_peb_write(mtd, buf, i, 0, mtd->erasesize);
+			if (ret) {
+				pr_err("Failed to write MLO to PEB%d: %s\n", i,
+				       strerror(-ret));
+				continue;
+			}
+			written++;
+		}
+
+		free(buf);
+
+		if (written)
+			ret = 0;
+		else
+			ret = -EIO;
+	} else {
+		pr_err("%s of type %s is not a valid update file image\n",
+		       data->imagefile, file_type_to_string(filetype));
+		return -EINVAL;
+	}
+out:
+	return ret;
+}
+
+/**
+ * am33xx_bbu_nand_register_handler - register a NAND update handler
+ * @device: The nand cdev name (usually "nand0.barebox")
+ *
+ * This registers an update handler suitable for updating barebox to NAND. This
+ * update handler takes a single NAND partition for both the xload images and the
+ * barebox images. The first four blocks are used for the 4 xload copies, the
+ * remaining space is divided into two equally sized parts for two barebox images.
+ * The update handler automatically detects based on the filetype if the xload
+ * or the 2nd stage barebox shall be updated.
+ *
+ * FIXME: Currently for actually loading a barebox image from an xload image
+ * flashed with this layout a suitable layout has to be registered by the xload
+ * image using omap_set_barebox_part(). In the next step this should be the
+ * default.
+ */
+int am33xx_bbu_nand_register_handler(const char *device)
+{
+	struct bbu_handler *handler;
+	int ret;
+
+	handler = xzalloc(sizeof(*handler));
+	handler->devicefile = device;
+	handler->handler = nand_update_handler_complete;
+	handler->name = "nand";
+
+	ret = bbu_register_handler(handler);
+	if (ret)
+		free(handler);
+
+	return ret;
+}
diff --git a/arch/arm/mach-omap/include/mach/bbu.h b/arch/arm/mach-omap/include/mach/bbu.h
index c8b0a55acb..94d3f96bb4 100644
--- a/arch/arm/mach-omap/include/mach/bbu.h
+++ b/arch/arm/mach-omap/include/mach/bbu.h
@@ -23,6 +23,7 @@ int am33xx_bbu_nand_xloadslots_register_handler(const char *name,
 						int num_devicefiles);
 int am33xx_bbu_nand_slots_register_handler(const char *name, char **devicefile,
 						int num_devicefiles);
+int am33xx_bbu_nand_register_handler(const char *device);
 #else
 static inline int am33xx_bbu_nand_xloadslots_register_handler(const char *name,
 							char **devicefile,
@@ -37,6 +38,11 @@ static inline int am33xx_bbu_nand_slots_register_handler(const char *name,
 {
 	return 0;
 }
+
+static inline int am33xx_bbu_nand_register_handler(const char *device)
+{
+	return 0;
+}
 #endif
 
 #ifdef CONFIG_BAREBOX_UPDATE_AM33XX_EMMC
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
