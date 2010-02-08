Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NeTxk-00058W-9b
	for barebox@lists.infradead.org; Mon, 08 Feb 2010 13:47:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Feb 2010 14:47:27 +0100
Message-Id: <1265636852-19054-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1265636852-19054-1-git-send-email-s.hauer@pengutronix.de>
References: <1265636852-19054-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] cfi_flash_new: Fix Intel chips
To: barebox@lists.infradead.org

There was some mixup when to to a full status check and
when to do a status check only. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/cfi_flash_intel.c |   42 ++--------------------------------------
 1 files changed, 3 insertions(+), 39 deletions(-)

diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel.c
index 4c3e4ca..968b9d0 100644
--- a/drivers/nor/cfi_flash_intel.c
+++ b/drivers/nor/cfi_flash_intel.c
@@ -24,42 +24,6 @@ static void intel_read_jedec_ids (flash_info_t * info)
 }
 
 /*
- * Wait for XSR.7 to be set, if it times out print an error, otherwise do a full status check.
- * This routine sets the flash to read-array mode.
- */
-static int flash_full_status_check (flash_info_t * info, flash_sect_t sector,
-				    uint64_t tout, char *prompt)
-{
-	int retcode;
-
-	retcode = flash_status_check (info, sector, tout, prompt);
-
-	if ((retcode == ERR_OK)
-	    && !flash_isequal (info, sector, 0, FLASH_STATUS_DONE)) {
-		retcode = ERR_INVAL;
-		printf ("Flash %s error at address %lx\n", prompt,
-			info->start[sector]);
-		if (flash_isset (info, sector, 0, FLASH_STATUS_ECLBS | FLASH_STATUS_PSLBS)) {
-			puts ("Command Sequence Error.\n");
-		} else if (flash_isset (info, sector, 0, FLASH_STATUS_ECLBS)) {
-			puts ("Block Erase Error.\n");
-			retcode = ERR_NOT_ERASED;
-		} else if (flash_isset (info, sector, 0, FLASH_STATUS_PSLBS)) {
-			puts ("Locking Error\n");
-		}
-		if (flash_isset (info, sector, 0, FLASH_STATUS_DPS)) {
-			puts ("Block locked.\n");
-			retcode = ERR_PROTECTED;
-		}
-		if (flash_isset (info, sector, 0, FLASH_STATUS_VPENS))
-			puts ("Vpp Low Error.\n");
-	}
-	flash_write_cmd (info, sector, 0, info->cmd_reset);
-
-	return retcode;
-}
-
-/*
  * flash_is_busy - check to see if the flash is busy
  * This routine checks the status of the chip and returns true if the chip is busy
  */
@@ -76,7 +40,7 @@ static int intel_flash_erase_one (flash_info_t * info, long sect)
 	flash_write_cmd (info, sect, 0, FLASH_CMD_BLOCK_ERASE);
 	flash_write_cmd (info, sect, 0, FLASH_CMD_ERASE_CONFIRM);
 
-	if (flash_full_status_check
+	if (flash_status_check
 	    (info, sect, info->erase_blk_tout, "erase")) {
 		rcode = 1;
 	} else
@@ -105,7 +69,7 @@ static int intel_flash_write_cfibuffer (flash_info_t * info, ulong dest, const u
 	sector = find_sector (info, dest);
 	flash_write_cmd (info, sector, 0, FLASH_CMD_CLEAR_STATUS);
 	flash_write_cmd (info, sector, 0, FLASH_CMD_WRITE_TO_BUFFER);
-	if ((retcode = flash_status_check (info, sector, info->buffer_write_tout,
+	if ((retcode = flash_generic_status_check (info, sector, info->buffer_write_tout,
 					   "write to buffer")) == ERR_OK) {
 		/* reduce the number of loops by the width of the port	*/
 		cnt = len >> (info->portwidth - 1);
@@ -124,7 +88,7 @@ static int intel_flash_write_cfibuffer (flash_info_t * info, ulong dest, const u
 		}
 		flash_write_cmd (info, sector, 0,
 				 FLASH_CMD_WRITE_BUFFER_CONFIRM);
-		retcode = flash_full_status_check (info, sector,
+		retcode = flash_status_check (info, sector,
 						   info->buffer_write_tout,
 						   "buffer write");
 	}
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
