Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6xIM-00030a-Rw
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 08:41:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jun 2015 10:41:02 +0200
Message-Id: <1434962466-23590-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434962466-23590-1-git-send-email-s.hauer@pengutronix.de>
References: <1434962466-23590-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/11] mtd: cfi-flash: return 0 for success
To: Barebox List <barebox@lists.infradead.org>

Use zero as success return code and negative standard error codes
consistently in the driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c       | 55 +++++++++++++++++++--------------------
 drivers/mtd/nor/cfi_flash.h       | 13 ---------
 drivers/mtd/nor/cfi_flash_intel.c | 14 +++++-----
 3 files changed, 33 insertions(+), 49 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index a369b46..4165c88 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -110,10 +110,10 @@ static int flash_write_cfiword (struct flash_info *info, ulong dest,
 	else if (bankwidth_is_8(info))
 		flag = ((flash_read64(dstaddr) & cword) == cword);
 	else
-		return 2;
+		return -EIO;
 
 	if (!flag)
-		return 2;
+		return -EIO;
 
 	info->cfi_cmd_set->flash_prepare_write(info);
 
@@ -252,7 +252,7 @@ static int flash_detect_width(struct flash_info *info, struct cfi_qry *qry)
 
 	dev_dbg(info->dev, "no flash found\n");
 
-	return 0;
+	return -ENODEV;
 
 found:
 	flash_read_cfi(info, qry, FLASH_OFFSET_CFI_RESP,
@@ -266,10 +266,10 @@ found:
 			info->portwidth << CFI_FLASH_SHIFT_WIDTH,
 			info->chipwidth << CFI_FLASH_SHIFT_WIDTH);
 
-	return 1;
+	return 0;
 }
 
-static int flash_detect_cfi (struct flash_info *info, struct cfi_qry *qry)
+static int flash_detect_cfi(struct flash_info *info, struct cfi_qry *qry)
 {
 	int ret;
 
@@ -277,19 +277,19 @@ static int flash_detect_cfi (struct flash_info *info, struct cfi_qry *qry)
 
 	info->chip_lsb = 0;
 	ret = flash_detect_width (info, qry);
-	if (!ret) {
-		info->chip_lsb = 1;
-		ret = flash_detect_width (info, qry);
-	}
-	return ret;
+	if (!ret)
+		return 0;
+
+	info->chip_lsb = 1;
+	return flash_detect_width (info, qry);
 }
 
 /*
  * The following code cannot be run from FLASH!
  */
-static ulong flash_get_size (struct flash_info *info)
+static int flash_detect_size(struct flash_info *info)
 {
-	int i, j;
+	int i, j, ret;
 	flash_sect_t sect_cnt;
 	unsigned long sector;
 	unsigned long tmp;
@@ -313,8 +313,9 @@ static ulong flash_get_size (struct flash_info *info)
 	info->start[0] = base;
 	info->protect = 0;
 
-	if (!flash_detect_cfi (info, &qry))
-		return 0;
+	ret = flash_detect_cfi(info, &qry);
+	if (ret)
+		return ret;
 
 	info->vendor = le16_to_cpu(qry.p_id);
 	info->ext_addr = le16_to_cpu(qry.p_adr);
@@ -346,7 +347,7 @@ static ulong flash_get_size (struct flash_info *info)
 
 	if (!info->cfi_cmd_set) {
 		dev_err(info->dev, "unsupported vendor 0x%04x\n", info->vendor);
-		return 0;
+		return -ENOSYS;
 	}
 
 	info->cfi_cmd_set->flash_read_jedec_ids (info);
@@ -443,7 +444,7 @@ static ulong flash_get_size (struct flash_info *info)
 
 	flash_write_cmd (info, 0, 0, info->cmd_reset);
 
-	return info->size;
+	return 0;
 }
 
 /* loop through the sectors from the highest address
@@ -486,13 +487,7 @@ out:
         return ret;
 }
 
-/*
- * Copy memory to flash, returns:
- * 0 - OK
- * 1 - write timeout
- * 2 - Flash not erased
- */
-static int write_buff (struct flash_info *info, const uchar * src, ulong addr, ulong cnt)
+static int write_buff(struct flash_info *info, const uchar * src, ulong addr, ulong cnt)
 {
 	ulong wp;
 	uchar *p;
@@ -548,8 +543,11 @@ static int write_buff (struct flash_info *info, const uchar * src, ulong addr, u
 		i = buffered_size - (wp % buffered_size);
 		if (i > cnt)
 			i = cnt;
-		if ((rc = info->cfi_cmd_set->flash_write_cfibuffer (info, wp, src, i)) != ERR_OK)
+
+		rc = info->cfi_cmd_set->flash_write_cfibuffer(info, wp, src, i);
+		if (rc)
 			return rc;
+
 		i -= i & (info->portwidth - 1);
 		wp += i;
 		src += i;
@@ -797,11 +795,11 @@ int flash_generic_status_check (struct flash_info *info, flash_sect_t sector,
 				prompt, info->start[sector],
 				flash_read_long (info, sector, 0));
 			flash_write_cmd (info, sector, 0, info->cmd_reset);
-			return ERR_TIMOUT;
+			return -ETIMEDOUT;
 		}
 		udelay (1);		/* also triggers watchdog */
 	}
-	return ERR_OK;
+	return 0;
 }
 
 /*
@@ -962,6 +960,7 @@ static void cfi_init_mtd(struct flash_info *info)
 static int cfi_probe (struct device_d *dev)
 {
 	struct flash_info *info = xzalloc(sizeof(*info));
+	int ret;
 
 	dev->priv = (void *)info;
 
@@ -973,9 +972,9 @@ static int cfi_probe (struct device_d *dev)
 		return PTR_ERR(info->base);
 
 	info->dev = dev;
-	info->size = flash_get_size(info);
 
-	if (info->flash_id == FLASH_UNKNOWN) {
+	ret = flash_detect_size(info);
+	if (ret) {
 		dev_warn(dev, "## Unknown FLASH on Bank at 0x%08x - Size = 0x%08lx = %ld MB\n",
 			dev->resource[0].start, info->size, info->size << 20);
 		return -ENODEV;
diff --git a/drivers/mtd/nor/cfi_flash.h b/drivers/mtd/nor/cfi_flash.h
index aeaf751..8f33bdf 100644
--- a/drivers/mtd/nor/cfi_flash.h
+++ b/drivers/mtd/nor/cfi_flash.h
@@ -364,19 +364,6 @@ extern void flash_read_factory_serial(struct flash_info *info, void * buffer, in
 #endif	/* CFG_FLASH_PROTECTION */
 
 /*-----------------------------------------------------------------------
- * return codes from flash_write():
- */
-#define ERR_OK				0
-#define ERR_TIMOUT			1
-#define ERR_NOT_ERASED			2
-#define ERR_PROTECTED			4
-#define ERR_INVAL			8
-#define ERR_ALIGN			16
-#define ERR_UNKNOWN_FLASH_VENDOR	32
-#define ERR_UNKNOWN_FLASH_TYPE		64
-#define ERR_PROG_ERROR			128
-
-/*-----------------------------------------------------------------------
  * Protection Flags for flash_protect():
  */
 #define FLAG_PROTECT_SET	0x01
diff --git a/drivers/mtd/nor/cfi_flash_intel.c b/drivers/mtd/nor/cfi_flash_intel.c
index 32e581a..dcf8d97 100644
--- a/drivers/mtd/nor/cfi_flash_intel.c
+++ b/drivers/mtd/nor/cfi_flash_intel.c
@@ -67,7 +67,7 @@ static int intel_flash_write_cfibuffer (struct flash_info *info, ulong dest, con
 
 	retcode = flash_generic_status_check (info, sector, info->buffer_write_tout,
 					   "write to buffer");
-	if (retcode != ERR_OK)
+	if (retcode)
 		return retcode;
 
 	/* reduce the number of loops by the width of the port	*/
@@ -110,24 +110,22 @@ static int intel_flash_status_check (struct flash_info *info, flash_sect_t secto
 {
 	int retcode;
 
-	retcode = flash_generic_status_check (info, sector, tout, prompt);
-
-	if ((retcode == ERR_OK)
-	    && !flash_isequal (info, sector, 0, FLASH_STATUS_DONE)) {
-		retcode = ERR_INVAL;
+	retcode = flash_generic_status_check(info, sector, tout, prompt);
+	if (!retcode && !flash_isequal(info, sector, 0, FLASH_STATUS_DONE)) {
+		retcode = -EINVAL;
 		printf ("Flash %s error at address %lx\n", prompt,
 			info->start[sector]);
 		if (flash_isset (info, sector, 0, FLASH_STATUS_ECLBS | FLASH_STATUS_PSLBS)) {
 			puts ("Command Sequence Error.\n");
 		} else if (flash_isset (info, sector, 0, FLASH_STATUS_ECLBS)) {
 			puts ("Block Erase Error.\n");
-			retcode = ERR_NOT_ERASED;
+			retcode = -EIO;
 		} else if (flash_isset (info, sector, 0, FLASH_STATUS_PSLBS)) {
 			puts ("Locking Error\n");
 		}
 		if (flash_isset (info, sector, 0, FLASH_STATUS_DPS)) {
 			puts ("Block locked.\n");
-			retcode = ERR_PROTECTED;
+			retcode = -EROFS;
 		}
 		if (flash_isset (info, sector, 0, FLASH_STATUS_VPENS))
 			puts ("Vpp Low Error.\n");
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
