Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1afn16-0005UA-Ci
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:20:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:19:13 +0100
Message-Id: <1458040754-32240-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040754-32240-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040754-32240-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/11] imx-bbu-nand-fcb: Make robust against power cuts
To: Barebox List <barebox@lists.infradead.org>

This patch makes the update to Nand robust against power
failures. With this we make sure that during every step of the
update at least one of the two images on Nand is readable and
valid.

Also this patch makes it possible to refresh/repair the boot
images on Nand. This may become necessary when a previous update
has been interrupted due to a power cut, or when the number of
bitflips is near to the number we can correct. This is also done
in a way that allow power cuts at every step.

We assume the following layout in the Nand flash:

 fwmaxsize = (n_blocks - 4) / 2

 block

 0              ----------------------
                | FCB/DBBT 0         |
 1              ----------------------
                | FCB/DBBT 1         |
 2              ----------------------
                | FCB/DBBT 2         |
 3              ----------------------
                | FCB/DBBT 3         |
 4              ----------------------
                | Firmware slot 0    |
 4 + fwmaxsize  ----------------------
                | Firmware slot 1    |
                ----------------------

When the layout found on the device differs from the above the update
won't be robust, but nevertheless works. Since the layout is changed
to the above during the update, the next update will be robust.

Here's the strategy we use to implement a robust update:

The FCBs contain pointers to the firmware slots in the
Firmware1_startingPage and Firmware2_startingPage fields. Note that
Firmware1_startingPage doesn't necessarily point to slot 0. We
exchange the pointers during update to atomically switch between the
old and the new firmware.

- We read the first valid FCB and the firmware slots.
- We check which firmware slot is currently used by the ROM:
  - if no FCB is found or its layout differs from the above layout,
    continue without robust update
  - if only one firmware slot is readable, the ROM uses it
  - if both slots are readable, the ROM will use slot 0
- Step 1: erase/update the slot currently unused by the ROM
- Step 2: Update FCBs/DBBTs, thereby letting Firmware1_startingPage
          point to the slot we just updated. From this moment
          on the new firmware will be used and running a
          refresh/repair after a power failure after this
          step will complete the update.
- Step 3: erase/update the other firmwre slot
- Step 4: Eventually write FCBs/DBBTs again. This may become
          necessary when step 3 revealed new bad blocks.

Refreshing the firmware which is needed when when blocks
become unreadable due to read disturbance works the same way,
only that the new firmware is the same as the old firmware
and that it will only be written when reading from the device
returns -EUCLEAN indicating that a block needs to be
rewritten.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 372 ++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 341 insertions(+), 31 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 5ded45a..b3dea37 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -31,6 +31,7 @@
 #include <linux/mtd/mtd-abi.h>
 #include <linux/mtd/nand_mxs.h>
 #include <linux/mtd/mtd.h>
+#include <linux/mtd/nand.h>
 #include <linux/stat.h>
 #include <io.h>
 #include <mach/generic.h>
@@ -794,27 +795,218 @@ static int imx_bbu_write_fcbs_dbbts(struct mtd_info *mtd, struct fcb_block *fcb)
 	return valid > 0 ? 0 : -EIO;
 }
 
+static int block_is_empty(struct mtd_info *mtd, int block)
+{
+	int rawsize = mtd->writesize + mtd->oobsize;
+	u8 *rawpage = xmalloc(rawsize);
+	int ret;
+	loff_t offset = (loff_t)block * mtd->erasesize;
+
+	ret = raw_read_page(mtd, rawpage, offset);
+	if (ret)
+		goto err;
+
+	ret = nand_check_erased_buf(rawpage, rawsize, 4 * 13);
+
+	if (ret == -EBADMSG)
+		ret = 0;
+	else if (ret >= 0)
+		ret = 1;
+
+err:
+	free(rawpage);
+	return ret;
+}
+
+static int read_firmware(struct mtd_info *mtd, int first_page, int num_pages,
+			 void **firmware)
+{
+	void *buf, *pos;
+	int pages_per_block = mtd->erasesize / mtd->writesize;
+	int now, size, block, ret, need_cleaning = 0;
+
+	pr_debug("%s: reading %d pages from page %d\n", __func__, num_pages, first_page);
+
+	buf = pos = malloc(num_pages * mtd->writesize);
+	if (!buf)
+		return -ENOMEM;
+
+	if (first_page % pages_per_block) {
+		pr_err("Firmware does not begin on eraseblock boundary\n");
+		ret = -EINVAL;
+		goto err;
+	}
+
+	block = first_page / pages_per_block;
+	size = num_pages * mtd->writesize;
+
+	while (size) {
+		if (block >= mtd_num_pebs(mtd)) {
+			ret = -EIO;
+			goto err;
+		}
+
+		if (mtd_peb_is_bad(mtd, block)) {
+			block++;
+			continue;
+		}
+
+		now = min_t(unsigned int , size, mtd->erasesize);
+
+		ret = mtd_peb_read(mtd, pos, block, 0, now);
+		if (ret == -EUCLEAN) {
+			pr_info("Block %d needs cleaning\n", block);
+			need_cleaning = 1;
+		} else if (ret < 0) {
+			pr_err("Reading PEB %d failed with %d\n", block, ret);
+			goto err;
+		}
+
+		if (mtd_buf_all_ff(pos, now)) {
+			/*
+			 * At this point we do not know if this is a
+			 * block that contains only 0xff or if it is
+			 * really empty. We test this by reading a raw
+			 * page and check if it's empty
+			 */
+			ret = block_is_empty(mtd, block);
+			if (ret < 0)
+				goto err;
+			if (ret) {
+				ret = -EINVAL;
+				goto err;
+			}
+		}
+
+		pos += now;
+		size -= now;
+		block++;
+	}
+
+	ret = 0;
+
+	*firmware = buf;
+
+	pr_info("Firmware @ page %d, size %d pages has crc32: 0x%08x\n",
+	       first_page, num_pages, crc32(0, buf, num_pages * mtd->writesize));
+
+err:
+	if (ret < 0) {
+		free(buf);
+		pr_warn("Firmware at page %d is not readable\n", first_page);
+		return ret;
+	}
+
+	if (need_cleaning) {
+		pr_warn("Firmware at page %d needs cleanup\n", first_page);
+		return -EUCLEAN;
+	}
+
+	return 0;
+}
+
+static void read_firmware_all(struct mtd_info *mtd, struct fcb_block *fcb, void **data, int *len,
+			     int *used_refresh, int *unused_refresh, int *used)
+{
+	void *primary = NULL, *secondary = NULL;
+	int pages_per_block = mtd->erasesize / mtd->writesize;
+	int fw0 = imx_bbu_firmware_start_block(mtd, 0) * pages_per_block;
+	int fw1 = imx_bbu_firmware_start_block(mtd, 1) * pages_per_block;
+	int first, ret, primary_refresh = 0, secondary_refresh = 0;
+
+	*used_refresh = 0;
+	*unused_refresh = 0;
+
+	if (fcb->Firmware1_startingPage == fw0 &&
+	    fcb->Firmware2_startingPage == fw1) {
+		first = 0;
+	} else if (fcb->Firmware1_startingPage == fw1 &&
+	    fcb->Firmware2_startingPage == fw0) {
+		first = 1;
+	} else {
+		pr_warn("FCB is not what we expect. Update will not be robust");
+		*used = 0;
+		return;
+	}
+
+	if (fcb->PagesInFirmware1 != fcb->PagesInFirmware2) {
+		pr_warn("FCB is not what we expect. Update will not be robust");
+		return;
+	}
+
+	*len = fcb->PagesInFirmware1 * mtd->writesize;
+
+	ret = read_firmware(mtd, fcb->Firmware1_startingPage, fcb->PagesInFirmware1, &primary);
+	if (ret > 0)
+		primary_refresh = 1;
+
+	ret = read_firmware(mtd, fcb->Firmware2_startingPage, fcb->PagesInFirmware2, &secondary);
+	if (ret > 0)
+		secondary_refresh = 1;
+
+	if (!primary && !secondary) {
+		*unused_refresh = 1;
+		*used_refresh = 1;
+		*used = 0;
+		*data = NULL;
+	} else if (primary && !secondary) {
+		*used_refresh = primary_refresh;
+		*unused_refresh = 1;
+		*used = first;
+		*data = primary;
+		return;
+	} else if (secondary && !primary) {
+		*used_refresh = secondary_refresh;
+		*unused_refresh = 1;
+		*used = !first;
+		*data = secondary;
+	} else {
+		if (memcmp(primary, secondary, fcb->PagesInFirmware1 * mtd->writesize))
+			*unused_refresh = 1;
+
+		*used_refresh = primary_refresh;
+		*used = first;
+		*data = primary;
+		free(secondary);
+	}
+
+	pr_info("Primary firmware is on pages %d-%d, %svalid, %s\n", fcb->Firmware1_startingPage,
+		fcb->Firmware1_startingPage + fcb->PagesInFirmware1, primary ? "" : "in",
+		primary_refresh ? "needs cleanup" : "clean");
+
+	pr_info("secondary firmware is on pages %d-%d, %svalid, %s\n", fcb->Firmware2_startingPage,
+		fcb->Firmware2_startingPage + fcb->PagesInFirmware2, secondary ? "" : "in",
+		secondary_refresh ? "needs cleanup" : "clean");
+
+	pr_info("ROM uses slot %d\n", *used);
+}
+
 static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *data)
 {
 	struct imx_nand_fcb_bbu_handler *imx_handler =
 		container_of(handler, struct imx_nand_fcb_bbu_handler, handler);
 	struct cdev *bcb_cdev;
 	struct mtd_info *mtd;
-	int ret;
-	struct fcb_block fcb = {};
-	void *fw;
+	int ret, i;
+	struct fcb_block *fcb = NULL;
+	void *fw = NULL, *fw_orig = NULL;
 	unsigned fw_size, partition_size;
 	enum filetype filetype;
 	unsigned num_blocks_fw;
 	int pages_per_block;
+	int used = 0;
+	int fw_orig_len;
+	int used_refresh = 0, unused_refresh = 0;
 
-	filetype = file_detect_type(data->image, data->len);
+	if (data->image) {
+		filetype = file_detect_type(data->image, data->len);
 
-	if (filetype != imx_handler->filetype &&
+		if (filetype != imx_handler->filetype &&
 			!bbu_force(data, "Image is not of type %s but of type %s",
 				file_type_to_string(imx_handler->filetype),
 				file_type_to_string(filetype)))
-		return -EINVAL;
+			return -EINVAL;
+	}
 
 	bcb_cdev = cdev_by_name(handler->devicefile);
 	if (!bcb_cdev) {
@@ -826,48 +1018,166 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	partition_size = mtd->size;
 	pages_per_block = mtd->erasesize / mtd->writesize;
 
+	for (i = 0; i < 4; i++) {
+		read_fcb(mtd, i, &fcb);
+		if (fcb)
+			break;
+	}
+
 	/*
-	 * We have to write one additional page to make the ROM happy.
-	 * Maybe the PagesInFirmwarex fields are really the number of pages - 1.
-	 * kobs-ng has the same.
+	 * This code uses the following layout in the Nand flash:
+	 *
+	 * fwmaxsize = (n_blocks - 4) / 2
+	 *
+	 * block
+	 *
+	 * 0              ----------------------
+	 *                | FCB/DBBT 0         |
+	 * 1              ----------------------
+	 *                | FCB/DBBT 1         |
+	 * 2              ----------------------
+	 *                | FCB/DBBT 2         |
+	 * 3              ----------------------
+	 *                | FCB/DBBT 3         |
+	 * 4              ----------------------
+	 *                | Firmware slot 0    |
+	 * 4 + fwmaxsize  ----------------------
+	 *                | Firmware slot 1    |
+	 *                ----------------------
+	 *
+	 * We want a robust update in which a power failure may occur
+	 * everytime without bricking the board, so here's the strategy:
+	 *
+	 * The FCBs contain pointers to the firmware slots in the
+	 * Firmware1_startingPage and Firmware2_startingPage fields. Note that
+	 * Firmware1_startingPage doesn't necessarily point to slot 0. We
+	 * exchange the pointers during update to atomically switch between the
+	 * old and the new firmware.
+	 *
+	 * - We read the first valid FCB and the firmware slots.
+	 * - We check which firmware slot is currently used by the ROM:
+	 *    - if no FCB is found or its layout differs from the above layout,
+	 *      continue without robust update
+	 *   - if only one firmware slot is readable, the ROM uses it
+	 *   - if both slots are readable, the ROM will use slot 0
+	 * - Step 1: erase/update the slot currently unused by the ROM
+	 * - Step 2: Update FCBs/DBBTs, thereby letting Firmware1_startingPage
+	 *           point to the slot we just updated. From this moment
+	 *           on the new firmware will be used and running a
+	 *           refresh/repair after a power failure after this
+	 *           step will complete the update.
+	 * - Step 3: erase/update the other firmwre slot
+	 * - Step 4: Eventually write FCBs/DBBTs again. This may become
+	 *           necessary when step 3 revealed new bad blocks.
+	 *
+	 * This robust update only works when the original FCBs on the device
+	 * uses the same layout as this code does. In other cases update will
+	 * also work, but it won't be robust against power failures.
+	 *
+	 * Refreshing the firmware which is needed when blocks become unreadable
+	 * due to read disturbance works the same way, only that the new firmware
+	 * is the same as the old firmware and that it will only be written when
+	 * reading from the device returns -EUCLEAN indicating that a block needs
+	 * to be rewritten.
 	 */
-	fw_size = ALIGN(data->len + mtd->writesize, mtd->writesize);
-	fw = xzalloc(fw_size);
-	memcpy(fw, data->image, data->len);
+	if (fcb)
+		read_firmware_all(mtd, fcb, &fw_orig, &fw_orig_len,
+				  &used_refresh, &unused_refresh, &used);
+
+	if (data->image) {
+		/*
+		 * We have to write one additional page to make the ROM happy.
+		 * Maybe the PagesInFirmwarex fields are really the number of pages - 1.
+		 * kobs-ng has the same.
+		 */
+		fw_size = ALIGN(data->len + mtd->writesize, mtd->writesize);
+		fw = xzalloc(fw_size);
+		memcpy(fw, data->image, data->len);
+		free(fw_orig);
+		used_refresh = 1;
+		unused_refresh = 1;
+
+		free(fcb);
+		fcb = xzalloc(sizeof(*fcb));
+		fcb->Firmware1_startingPage = imx_bbu_firmware_start_block(mtd, !used) * pages_per_block;
+		fcb->Firmware2_startingPage = imx_bbu_firmware_start_block(mtd, used) * pages_per_block;
+		fcb->PagesInFirmware1 = fw_size / mtd->writesize;
+		fcb->PagesInFirmware2 = fcb->PagesInFirmware1;
+
+		fcb_create(imx_handler, fcb, mtd);
+	} else {
+		if (!fcb) {
+			pr_err("No FCB found on device, cannot refresh\n");
+			ret = -EINVAL;
+			goto out;
+		}
 
-	num_blocks_fw = imx_bbu_firmware_max_blocks(mtd);
+		if (!fw_orig) {
+			pr_err("No firmware found on device, cannot refresh\n");
+			ret = -EINVAL;
+			goto out;
+		}
+
+		fw = fw_orig;
+		fw_size = fw_orig_len;
+		pr_info("Refreshing existing firmware\n");
+	}
 
-	pr_info("maximum size per firmware: 0x%08x bytes\n",
-			num_blocks_fw * mtd->erasesize);
+	num_blocks_fw = imx_bbu_firmware_max_blocks(mtd);
 
-	if (num_blocks_fw * mtd->erasesize < fw_size)
+	if (num_blocks_fw * mtd->erasesize < fw_size) {
+		pr_err("Not enough space for update\n");
 		return -ENOSPC;
+	}
 
 	ret = bbu_confirm(data);
 	if (ret)
 		goto out;
 
-	ret = imx_bbu_write_firmware(mtd, 0, fw, fw_size);
-	if (ret < 0)
-		goto out;
+	/* Step 1: write firmware which is currently unused by the ROM */
+	if (unused_refresh) {
+		pr_info("%sing slot %d\n", data->image ? "updat" : "refresh", !used);
+		ret = imx_bbu_write_firmware(mtd, !used, fw, fw_size);
+		if (ret < 0)
+			goto out;
+	} else {
+		pr_info("firmware slot %d still ok, nothing to do\n", !used);
+	}
 
-	ret = imx_bbu_write_firmware(mtd, 1, fw, fw_size);
+	/*
+	 * Step 2: Write FCBs/DBBTs. This will use the firmware we have
+	 * just written as primary firmware. From now on the new
+	 * firmware will be booted.
+	 */
+	ret = imx_bbu_write_fcbs_dbbts(mtd, fcb);
 	if (ret < 0)
 		goto out;
 
-	fcb.Firmware1_startingPage = imx_bbu_firmware_start_block(mtd, 0) * pages_per_block;
-	fcb.Firmware2_startingPage = imx_bbu_firmware_start_block(mtd, 1) * pages_per_block;
-	fcb.PagesInFirmware1 = ALIGN(data->len, mtd->writesize) / mtd->writesize;
-	fcb.PagesInFirmware2 = fcb.PagesInFirmware1;
-
-	fcb_create(imx_handler, &fcb, mtd);
+	/* Step 3: Write the secondary firmware */
+	if (used_refresh) {
+		pr_info("%sing slot %d\n", data->image ? "updat" : "refresh", used);
+		ret = imx_bbu_write_firmware(mtd, used, fw, fw_size);
+		if (ret < 0)
+			goto out;
+	} else {
+		pr_info("firmware slot %d still ok, nothing to do\n", used);
+	}
 
-	ret = imx_bbu_write_fcbs_dbbts(mtd, &fcb);
-	if (ret < 0)
-		goto out;
+	/*
+	 * Step 4: If writing the secondary firmware discovered new bad
+	 * blocks, write the FCBs/DBBTs again with updated bad block
+	 * information.
+	 */
+	if (ret > 0) {
+		pr_info("New bad blocks detected, writing FCBs/DBBTs again\n");
+		ret = imx_bbu_write_fcbs_dbbts(mtd, fcb);
+		if (ret < 0)
+			goto out;
+	}
 
 out:
 	free(fw);
+	free(fcb);
 
 	return ret;
 }
@@ -896,7 +1206,7 @@ int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
 	handler = &imx_handler->handler;
 	handler->devicefile = "nand0.barebox";
 	handler->name = name;
-	handler->flags = flags;
+	handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
 	handler->handler = imx_bbu_nand_update;
 
 	ret = bbu_register_handler(handler);
@@ -973,7 +1283,7 @@ int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
 	handler = &imx_handler->handler;
 	handler->devicefile = "nand0.barebox";
 	handler->name = name;
-	handler->flags = flags;
+	handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
 	handler->handler = imx_bbu_nand_update;
 
 	ret = bbu_register_handler(handler);
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
