Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6xII-0002zV-H2
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 08:41:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jun 2015 10:41:06 +0200
Message-Id: <1434962466-23590-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/11] mtd: cfi-flash: remove dead code
To: Barebox List <barebox@lists.infradead.org>

CFG_FLASH_PROTECTION is never defined, remove the code. Also
remove code inside #if 0.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c       | 36 ------------------------------------
 drivers/mtd/nor/cfi_flash.h       |  6 ------
 drivers/mtd/nor/cfi_flash_intel.c |  6 ------
 3 files changed, 48 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index b93c663..f9aecad 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -308,9 +308,6 @@ static int flash_detect_size(struct flash_info *info)
 
 	info->ext_addr = 0;
 	info->cfi_version = 0;
-#ifdef CFG_FLASH_PROTECTION
-	info->legacy_unlock = 0;
-#endif
 
 	/* first only malloc space for the first sector */
 	info->start = xmalloc(sizeof(*info->eraseregions));
@@ -763,39 +760,6 @@ static void cfi_info (struct device_d* dev)
 	return;
 }
 
-#if 0
-/*
- * flash_read_user_serial - read the OneTimeProgramming cells
- */
-static void flash_read_user_serial (struct flash_info *info, void *buffer, int offset,
-			     int len)
-{
-	uchar *src;
-	uchar *dst;
-
-	dst = buffer;
-	src = flash_make_addr (info, 0, FLASH_OFFSET_USER_PROTECTION);
-	flash_write_cmd (info, 0, 0, FLASH_CMD_READ_ID);
-	memcpy (dst, src + offset, len);
-	flash_write_cmd (info, 0, 0, info->cmd_reset);
-}
-
-/*
- * flash_read_factory_serial - read the device Id from the protection area
- */
-static void flash_read_factory_serial (struct flash_info *info, void *buffer, int offset,
-				int len)
-{
-	uchar *src;
-
-	src = flash_make_addr (info, 0, FLASH_OFFSET_INTEL_PROTECTION);
-	flash_write_cmd (info, 0, 0, FLASH_CMD_READ_ID);
-	memcpy (buffer, src + offset, len);
-	flash_write_cmd (info, 0, 0, info->cmd_reset);
-}
-
-#endif
-
 int flash_status_check(struct flash_info *info, flash_sect_t sector,
 			       u64 tout, char *prompt)
 {
diff --git a/drivers/mtd/nor/cfi_flash.h b/drivers/mtd/nor/cfi_flash.h
index 6d975b9..e82eb28 100644
--- a/drivers/mtd/nor/cfi_flash.h
+++ b/drivers/mtd/nor/cfi_flash.h
@@ -355,12 +355,6 @@ extern void flash_protect(int flag, unsigned long from, unsigned long to,
 		struct flash_info *info);
 extern int flash_write(char *, unsigned long, unsigned long);
 
-#if defined(CFG_FLASH_PROTECTION)
-extern int flash_real_protect(struct flash_info *info, long sector, int prot);
-extern void flash_read_user_serial(struct flash_info *info, void *buffer, int offset, int len);
-extern void flash_read_factory_serial(struct flash_info *info, void *buffer, int offset, int len);
-#endif	/* CFG_FLASH_PROTECTION */
-
 /*-----------------------------------------------------------------------
  * Protection Flags for flash_protect():
  */
diff --git a/drivers/mtd/nor/cfi_flash_intel.c b/drivers/mtd/nor/cfi_flash_intel.c
index 835734d..6108d7c 100644
--- a/drivers/mtd/nor/cfi_flash_intel.c
+++ b/drivers/mtd/nor/cfi_flash_intel.c
@@ -154,12 +154,6 @@ static int intel_flash_real_protect(struct flash_info *info, long sector, int pr
 
 static void intel_flash_fixup(struct flash_info *info, struct cfi_qry *qry)
 {
-#ifdef CFG_FLASH_PROTECTION
-	/* read legacy lock/unlock bit from intel flash */
-	if (info->ext_addr)
-		info->legacy_unlock = flash_read_uchar(info,
-				info->ext_addr + 5) & 0x08;
-#endif
 }
 
 struct cfi_cmd_set cfi_cmd_set_intel = {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
