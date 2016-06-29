Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bICLJ-000559-Fi
 for barebox@lists.infradead.org; Wed, 29 Jun 2016 10:03:39 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id AC406A001DD
 for <barebox@lists.infradead.org>; Wed, 29 Jun 2016 12:04:23 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Jun 2016 12:01:05 +0200
Message-Id: <1467194468-31049-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 1/4] OMAP: xload: Factor out reading image from mtd partition
To: barebox@lists.infradead.org

Remove code duplication of reading images out of mtd partitions.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/mach-omap/xload.c | 71 ++++++++++++++--------------------------------
 1 file changed, 22 insertions(+), 49 deletions(-)

diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 7793819..91890b2 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -36,7 +36,7 @@ static void *read_image_head(const char *name)
 
 	cdev = cdev_open(name, O_RDONLY);
 	if (!cdev) {
-		printf("failed to open partition\n");
+		printf("failed to open %s\n", name);
 		return NULL;
 	}
 
@@ -44,7 +44,7 @@ static void *read_image_head(const char *name)
 	cdev_close(cdev);
 
 	if (ret != ARM_HEAD_SIZE) {
-		printf("failed to read from partition\n");
+		printf("failed to read from %s\n", name);
 		return NULL;
 	}
 
@@ -63,18 +63,14 @@ static unsigned int get_image_size(void *head)
 	return ret;
 }
 
-static void *omap_xload_boot_nand(int offset, int part_size)
+static void *read_mtd_barebox(const char *partition)
 {
 	int ret;
 	int size;
 	void *to, *header;
 	struct cdev *cdev;
 
-	devfs_add_partition("nand0", offset, part_size,
-					DEVFS_PARTITION_FIXED, "x");
-	dev_add_bb_dev("x", "bbx");
-
-	header = read_image_head("bbx");
+	header = read_image_head(partition);
 	if (header == NULL)
 		return NULL;
 
@@ -86,21 +82,30 @@ static void *omap_xload_boot_nand(int offset, int part_size)
 
 	to = xmalloc(size);
 
-	cdev = cdev_open("bbx", O_RDONLY);
+	cdev = cdev_open(partition, O_RDONLY);
 	if (!cdev) {
-		printf("failed to open nand\n");
+		printf("failed to open partition\n");
 		return NULL;
 	}
 
 	ret = cdev_read(cdev, to, size, 0, 0);
 	if (ret != size) {
-		printf("failed to read from nand\n");
+		printf("failed to read from partition\n");
 		return NULL;
 	}
 
 	return to;
 }
 
+static void *omap_xload_boot_nand(struct omap_barebox_part *part)
+{
+	devfs_add_partition("nand0", part->nand_offset, part->nand_size,
+					DEVFS_PARTITION_FIXED, "x");
+	dev_add_bb_dev("x", "bbx");
+
+	return read_mtd_barebox("bbx");
+}
+
 static void *omap_xload_boot_mmc(void)
 {
 	int ret;
@@ -138,41 +143,12 @@ static void *omap_xload_boot_mmc(void)
 	return buf;
 }
 
-static void *omap_xload_boot_spi(int offset, int part_size)
+static void *omap_xload_boot_spi(struct omap_barebox_part *part)
 {
-	int ret;
-	int size;
-	void *to, *header;
-	struct cdev *cdev;
-
-	devfs_add_partition("m25p0", offset, part_size,
+	devfs_add_partition("m25p0", part->nor_offset, part->nor_size,
 					DEVFS_PARTITION_FIXED, "x");
 
-	header = read_image_head("x");
-	if (header == NULL)
-		return NULL;
-
-	size = get_image_size(header);
-	if (!size) {
-		printf("failed to get image size\n");
-		return NULL;
-	}
-
-	to = xmalloc(size);
-
-	cdev = cdev_open("x", O_RDONLY);
-	if (!cdev) {
-		printf("failed to open spi flash\n");
-		return NULL;
-	}
-
-	ret = cdev_read(cdev, to, size, 0, 0);
-	if (ret != size) {
-		printf("failed to read from spi flash\n");
-		return NULL;
-	}
-
-	return to;
+	return read_mtd_barebox("x");
 }
 
 static void *omap4_xload_boot_usb(void){
@@ -323,13 +299,11 @@ static __noreturn int omap_xload(void)
 		break;
 	case BOOTSOURCE_NAND:
 		printf("booting from NAND\n");
-		func = omap_xload_boot_nand(barebox_part->nand_offset,
-					barebox_part->nand_size);
+		func = omap_xload_boot_nand(barebox_part);
 		break;
 	case BOOTSOURCE_SPI:
 		printf("booting from SPI\n");
-		func = omap_xload_boot_spi(barebox_part->nor_offset,
-					barebox_part->nor_size);
+		func = omap_xload_boot_spi(barebox_part);
 		break;
 	case BOOTSOURCE_SERIAL:
 		if (IS_ENABLED(CONFIG_OMAP_SERIALBOOT)) {
@@ -347,8 +321,7 @@ static __noreturn int omap_xload(void)
 		}
 	default:
 		printf("unknown boot source. Fall back to nand\n");
-		func = omap_xload_boot_nand(barebox_part->nand_offset,
-					barebox_part->nand_size);
+		func = omap_xload_boot_nand(barebox_part);
 		break;
 	}
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
