Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NeTxk-00058Z-9v
	for barebox@lists.infradead.org; Mon, 08 Feb 2010 13:47:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Feb 2010 14:47:29 +0100
Message-Id: <1265636852-19054-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1265636852-19054-3-git-send-email-s.hauer@pengutronix.de>
References: <1265636852-19054-1-git-send-email-s.hauer@pengutronix.de>
	<1265636852-19054-2-git-send-email-s.hauer@pengutronix.de>
	<1265636852-19054-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] cfi_flash_new: generate flash erase dots in common
	function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/cfi_flash_amd.c   |    9 +--------
 drivers/nor/cfi_flash_intel.c |    9 +--------
 drivers/nor/cfi_flash_new.c   |    1 +
 3 files changed, 3 insertions(+), 16 deletions(-)

diff --git a/drivers/nor/cfi_flash_amd.c b/drivers/nor/cfi_flash_amd.c
index b92836b..44eb881 100644
--- a/drivers/nor/cfi_flash_amd.c
+++ b/drivers/nor/cfi_flash_amd.c
@@ -73,20 +73,13 @@ static int amd_flash_is_busy (flash_info_t * info, flash_sect_t sect)
 
 static int amd_flash_erase_one (flash_info_t * info, long sect)
 {
-	int rcode = 0;
-
 	flash_unlock_seq (info, sect);
 	flash_write_cmd (info, sect, AMD_ADDR_ERASE_START,
 				AMD_CMD_ERASE_START);
 	flash_unlock_seq (info, sect);
 	flash_write_cmd (info, sect, 0, AMD_CMD_ERASE_SECTOR);
 
-	if (flash_status_check
-	    (info, sect, info->erase_blk_tout, "erase")) {
-		rcode = 1;
-	} else
-		putchar('.');
-	return rcode;
+	return flash_status_check(info, sect, info->erase_blk_tout, "erase");
 }
 
 static void amd_flash_prepare_write(flash_info_t * info)
diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel.c
index 142fb0e..c2d92e7 100644
--- a/drivers/nor/cfi_flash_intel.c
+++ b/drivers/nor/cfi_flash_intel.c
@@ -34,18 +34,11 @@ static int intel_flash_is_busy (flash_info_t * info, flash_sect_t sect)
 
 static int intel_flash_erase_one (flash_info_t * info, long sect)
 {
-	int rcode = 0;
-
 	flash_write_cmd (info, sect, 0, FLASH_CMD_CLEAR_STATUS);
 	flash_write_cmd (info, sect, 0, FLASH_CMD_BLOCK_ERASE);
 	flash_write_cmd (info, sect, 0, FLASH_CMD_ERASE_CONFIRM);
 
-	if (flash_status_check
-	    (info, sect, info->erase_blk_tout, "erase")) {
-		rcode = 1;
-	} else
-		putchar('.');
-	return rcode;
+	return flash_status_check(info, sect, info->erase_blk_tout, "erase");
 }
 
 static void intel_flash_prepare_write(flash_info_t * info)
diff --git a/drivers/nor/cfi_flash_new.c b/drivers/nor/cfi_flash_new.c
index d85e0be..f9306cb 100644
--- a/drivers/nor/cfi_flash_new.c
+++ b/drivers/nor/cfi_flash_new.c
@@ -521,6 +521,7 @@ static int cfi_erase(struct cdev *cdev, size_t count, unsigned long offset)
                 ret = finfo->cfi_cmd_set->flash_erase_one(finfo, i);
                 if (ret)
                         goto out;
+		printf(".");
         }
 out:
         putchar('\n');
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
