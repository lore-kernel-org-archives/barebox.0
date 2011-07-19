Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj5qk-0000eU-3y
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 08:40:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jul 2011 10:40:00 +0200
Message-Id: <1311064803-6305-17-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
References: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/19] cfi: convert to struct resource
To: barebox@lists.infradead.org

This is the non invasive approach. All this type casting
shows this driver should be really cleaned up (or retired)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/cfi_flash.c |   36 +++++++++++++++++-------------------
 1 files changed, 17 insertions(+), 19 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 39c2bf1..c995962 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -283,7 +283,7 @@ static int flash_detect_cfi (struct flash_info *info, struct cfi_qry *qry)
 /*
  * The following code cannot be run from FLASH!
  */
-static ulong flash_get_size (struct flash_info *info, ulong base)
+static ulong flash_get_size (struct flash_info *info)
 {
 	int i, j;
 	flash_sect_t sect_cnt;
@@ -295,6 +295,7 @@ static ulong flash_get_size (struct flash_info *info, ulong base)
 	int erase_region_count;
 	int cur_offset = 0;
 	struct cfi_qry qry;
+	unsigned long base = (unsigned long)info->base;
 
 	memset(&qry, 0, sizeof(qry));
 
@@ -464,8 +465,9 @@ static int __cfi_erase(struct cdev *cdev, size_t count, unsigned long offset,
 
 	debug("%s: erase 0x%08lx (size %d)\n", __func__, offset, count);
 
-        start = find_sector(finfo, cdev->dev->map_base + offset);
-        end   = find_sector(finfo, cdev->dev->map_base + offset + count - 1);
+        start = find_sector(finfo, (unsigned long)finfo->base + offset);
+        end   = find_sector(finfo, (unsigned long)finfo->base + offset +
+			count - 1);
 
 	if (verbose)
 		init_progression_bar(end - start);
@@ -633,11 +635,11 @@ static int cfi_protect(struct cdev *cdev, size_t count, unsigned long offset, in
 	int i, ret = 0;
 	const char *action = (prot? "protect" : "unprotect");
 
-	printf("%s: %s 0x%08lx (size %d)\n", __FUNCTION__,
-	       action, cdev->dev->map_base + offset, count);
+	printf("%s: %s 0x%p (size %d)\n", __func__,
+	       action, finfo->base + offset, count);
 
-	start = find_sector(finfo, cdev->dev->map_base + offset);
-	end   = find_sector(finfo, cdev->dev->map_base + offset + count - 1);
+	start = find_sector(finfo, (unsigned long)finfo->base + offset);
+	end   = find_sector(finfo, (unsigned long)finfo->base + offset + count - 1);
 
 	for (i = start; i <= end; i++) {
 		ret = flash_real_protect (finfo, i, prot);
@@ -654,10 +656,10 @@ static ssize_t cfi_write(struct cdev *cdev, const void *buf, size_t count, unsig
         struct flash_info *finfo = (struct flash_info *)cdev->priv;
         int ret;
 
-	debug("cfi_write: buf=0x%p addr=0x%08lx count=0x%08x\n",buf, cdev->dev->map_base + offset, count);
+	debug("cfi_write: buf=0x%p addr=0x%08lx count=0x%08x\n",buf, finfo->base + offset, count);
 
-        ret = write_buff (finfo, buf, cdev->dev->map_base + offset, count);
-        return ret == 0 ? count : -1;
+	ret = write_buff(finfo, buf, (unsigned long)finfo->base + offset, count);
+	return ret == 0 ? count : -1;
 }
 
 static void cfi_info (struct device_d* dev)
@@ -978,18 +980,11 @@ static int cfi_probe (struct device_d *dev)
 
 	dev->priv = (void *)info;
 
-	printf("cfi_probe: %s base: 0x%08x size: 0x%08x\n", dev->name, dev->map_base, dev->size);
-
 	/* Init: no FLASHes known */
 	info->flash_id = FLASH_UNKNOWN;
 	info->cmd_reset = FLASH_CMD_RESET;
-	info->size = flash_get_size(info, dev->map_base);
-	info->base = (void __iomem *)dev->map_base;
-
-	if (dev->size == 0) {
-		printf("cfi_probe: size : 0x%08lx\n", info->size);
-		dev->size = info->size;
-	}
+	info->base = dev_request_mem_region(dev, 0);
+	info->size = flash_get_size(info);
 
 	if (info->flash_id == FLASH_UNKNOWN) {
 		printf ("## Unknown FLASH on Bank at 0x%08x - Size = 0x%08lx = %ld MB\n",
@@ -997,6 +992,9 @@ static int cfi_probe (struct device_d *dev)
 		return -ENODEV;
 	}
 
+	dev_info(dev, "found cfi flash at %p, size %ld\n",
+			info->base, info->size);
+
 	info->cdev.name = asprintf("nor%d", dev->id);
 	info->cdev.size = info->size;
 	info->cdev.dev = dev;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
