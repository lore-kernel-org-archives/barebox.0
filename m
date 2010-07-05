Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVlXN-0000kp-9x
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 13:16:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Jul 2010 15:16:30 +0200
Message-Id: <1278335795-16289-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
References: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 07/12] cfi_flash: Add mtd partition support for UBI
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/cfi_flash.c |   95 +++++++++++++++++++++++++++++++++++++++++++++--
 drivers/nor/cfi_flash.h |    7 +++
 2 files changed, 98 insertions(+), 4 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index ce30c98..fa5e5ee 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -302,6 +302,7 @@ static ulong flash_get_size (struct flash_info *info, ulong base)
 	int erase_region_size;
 	int erase_region_count;
 	int geometry_reversed = 0;
+	int cur_offset = 0;
 
 	info->ext_addr = 0;
 	info->cfi_version = 0;
@@ -401,10 +402,14 @@ static ulong flash_get_size (struct flash_info *info, ulong base)
 		       size_ratio, info->portwidth << CFI_FLASH_SHIFT_WIDTH,
 		       info->chipwidth << CFI_FLASH_SHIFT_WIDTH);
 		debug ("found %d erase regions\n", num_erase_regions);
+		info->eraseregions = xzalloc(sizeof(*(info->eraseregions)) * num_erase_regions);
+		info->numeraseregions = num_erase_regions;
 		sect_cnt = 0;
 		sector = base;
 
 		for (i = 0; i < num_erase_regions; i++) {
+			struct mtd_erase_region_info *region = &info->eraseregions[i];
+
 			if (i > NUM_ERASE_REGIONS) {
 				printf ("%d erase regions found, only %d used\n",
 					num_erase_regions, NUM_ERASE_REGIONS);
@@ -425,6 +430,11 @@ static ulong flash_get_size (struct flash_info *info, ulong base)
 			debug ("erase_region_count = %d erase_region_size = %d\n",
 				erase_region_count, erase_region_size);
 
+			region->offset = cur_offset;
+			region->erasesize = erase_region_size;
+			region->numblocks = erase_region_count;
+			cur_offset += erase_region_size * erase_region_count;
+
 			/* increase the space malloced for the sector start addresses */
 			info->start = realloc(info->start, sizeof(ulong) * (erase_region_count + sect_cnt));
 			info->protect = realloc(info->protect, sizeof(uchar) * (erase_region_count + sect_cnt));
@@ -489,7 +499,8 @@ flash_sect_t find_sector (struct flash_info *info, ulong addr)
 	return sector;
 }
 
-static int cfi_erase(struct cdev *cdev, size_t count, unsigned long offset)
+static int __cfi_erase(struct cdev *cdev, size_t count, unsigned long offset,
+		int verbose)
 {
         struct flash_info *finfo = (struct flash_info *)cdev->priv;
         unsigned long start, end;
@@ -500,19 +511,28 @@ static int cfi_erase(struct cdev *cdev, size_t count, unsigned long offset)
         start = find_sector(finfo, cdev->dev->map_base + offset);
         end   = find_sector(finfo, cdev->dev->map_base + offset + count - 1);
 
-	init_progression_bar(end - start);
+	if (verbose)
+		init_progression_bar(end - start);
 
         for (i = start; i <= end; i++) {
                 ret = finfo->cfi_cmd_set->flash_erase_one(finfo, i);
                 if (ret)
                         goto out;
-		show_progress(i - start);
+
+		if (verbose)
+			show_progress(i - start);
         }
 out:
-        putchar('\n');
+	if (verbose)
+	        putchar('\n');
         return ret;
 }
 
+static int cfi_erase(struct cdev *cdev, size_t count, unsigned long offset)
+{
+	return __cfi_erase(cdev, count, offset, 1);
+}
+
 /*
  * Copy memory to flash, returns:
  * 0 - OK
@@ -934,6 +954,68 @@ struct file_operations cfi_ops = {
 	.memmap  = generic_memmap_ro,
 };
 
+#ifdef CONFIG_PARTITION_NEED_MTD
+static int cfi_mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
+		size_t *retlen, u_char *buf)
+{
+	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
+
+	memcpy(buf, info->base + from, len);
+	*retlen = len;
+
+	return 0;
+}
+
+static int cfi_mtd_write(struct mtd_info *mtd, loff_t to, size_t len,
+		size_t *retlen, const u_char *buf)
+{
+	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
+	int ret;
+
+	ret = write_buff(info, buf, (unsigned long)info->base + to, len);
+	*retlen = len;
+
+        return ret;
+}
+
+static int cfi_mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
+{
+	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
+	struct cdev *cdev = &info->cdev;
+	int ret;
+
+	ret = __cfi_erase(cdev, instr->len, instr->addr, 0);
+
+	if (ret) {
+		instr->state = MTD_ERASE_FAILED;
+		return -EIO;
+	}
+
+	instr->state = MTD_ERASE_DONE;
+	mtd_erase_callback(instr);
+
+	return 0;
+}
+
+static void cfi_init_mtd(struct flash_info *info)
+{
+	struct mtd_info *mtd = &info->mtd;
+
+	mtd->read = cfi_mtd_read;
+	mtd->write = cfi_mtd_write;
+	mtd->erase = cfi_mtd_erase;
+	mtd->size = info->size;
+	mtd->name = info->cdev.name;
+	mtd->erasesize = info->eraseregions[1].erasesize; /* FIXME */
+	mtd->writesize = 1;
+	mtd->subpage_sft = 0;
+	mtd->eraseregions = info->eraseregions;
+	mtd->numeraseregions = info->numeraseregions;
+	mtd->flags = MTD_CAP_NORFLASH;
+	info->cdev.mtd = mtd;
+}
+#endif
+
 static int cfi_probe (struct device_d *dev)
 {
 	unsigned long size = 0;
@@ -946,6 +1028,7 @@ static int cfi_probe (struct device_d *dev)
 	/* Init: no FLASHes known */
 	info->flash_id = FLASH_UNKNOWN;
 	size += info->size = flash_get_size(info, dev->map_base);
+	info->base = (void __iomem *)dev->map_base;
 
 	if (dev->size == 0) {
 		printf("cfi_probe: size : 0x%08x\n", info->size);
@@ -963,6 +1046,10 @@ static int cfi_probe (struct device_d *dev)
 	info->cdev.dev = dev;
 	info->cdev.ops = &cfi_ops;
 	info->cdev.priv = info;
+
+#ifdef CONFIG_PARTITION_NEED_MTD
+	cfi_init_mtd(info);
+#endif
 	devfs_create(&info->cdev);
 
 	return 0;
diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
index 8e76c3e..057e56c 100644
--- a/drivers/nor/cfi_flash.h
+++ b/drivers/nor/cfi_flash.h
@@ -26,6 +26,7 @@
 
 #include <driver.h>
 #include <asm/io.h>
+#include <linux/mtd/mtd.h>
 
 typedef unsigned long flash_sect_t;
 struct cfi_cmd_set;
@@ -60,6 +61,12 @@ struct flash_info {
 	ushort	cfi_offset;		/* offset for cfi query 		*/
 	struct cfi_cmd_set *cfi_cmd_set;
 	struct cdev cdev;
+#ifdef CONFIG_PARTITION_NEED_MTD
+	struct mtd_info mtd;
+#endif
+	int numeraseregions;
+	struct mtd_erase_region_info *eraseregions;
+	void *base;
 };
 
 struct cfi_cmd_set {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
