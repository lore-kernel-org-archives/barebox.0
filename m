Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PM4PW-0002uI-4c
	for barebox@lists.infradead.org; Fri, 26 Nov 2010 19:56:49 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 26 Nov 2010 20:52:39 +0100
Message-Id: <1290801161-2417-10-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20101126194353.GH26540@game.jcrosoft.org>
References: <20101126194353.GH26540@game.jcrosoft.org>
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
Subject: [PATCH 10/12] cfi_flash: move reset command assigment to specific
	chipset init function
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>, Patrice Vilchez <patrice.vilchez@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/nor/cfi_flash.c       |    2 --
 drivers/nor/cfi_flash_amd.c   |    5 +++--
 drivers/nor/cfi_flash_intel.c |    5 +++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index a7df3b4..6d22a53 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -372,7 +372,6 @@ static ulong flash_get_size (struct flash_info *info, ulong base)
 		case CFI_CMDSET_INTEL_STANDARD:
 		case CFI_CMDSET_INTEL_EXTENDED:
 		default:
-			info->cmd_reset = FLASH_CMD_RESET;
 #ifdef CFG_FLASH_PROTECTION
 			/* read legacy lock/unlock bit from intel flash */
 			if (info->ext_addr) {
@@ -383,7 +382,6 @@ static ulong flash_get_size (struct flash_info *info, ulong base)
 			break;
 		case CFI_CMDSET_AMD_STANDARD:
 		case CFI_CMDSET_AMD_EXTENDED:
-			info->cmd_reset = AMD_CMD_RESET;
 			/* check if flash geometry needs reversal */
 			if (num_erase_regions <= 1)
 				break;
diff --git a/drivers/nor/cfi_flash_amd.c b/drivers/nor/cfi_flash_amd.c
index 738389c..f225757 100644
--- a/drivers/nor/cfi_flash_amd.c
+++ b/drivers/nor/cfi_flash_amd.c
@@ -16,6 +16,7 @@ static void flash_unlock_seq (struct flash_info *info)
 */
 static void amd_read_jedec_ids (struct flash_info *info)
 {
+	info->cmd_reset		= AMD_CMD_RESET;
 	info->manufacturer_id = 0;
 	info->device_id       = 0;
 	info->device_id2      = 0;
@@ -38,7 +39,7 @@ static void amd_read_jedec_ids (struct flash_info *info)
 		info->addr_unlock2 = 0x555;
 	}
 
-	flash_write_cmd(info, 0, 0, AMD_CMD_RESET);
+	flash_write_cmd(info, 0, 0, info->cmd_reset);
 	flash_unlock_seq(info);
 	flash_write_cmd(info, 0, info->addr_unlock1, FLASH_CMD_READ_ID);
 	udelay(1000); /* some flash are slow to respond */
@@ -54,7 +55,7 @@ static void amd_read_jedec_ids (struct flash_info *info)
 		info->device_id2 |= flash_read_uchar (info,
 					FLASH_OFFSET_DEVICE_ID3);
 	}
-	flash_write_cmd(info, 0, 0, AMD_CMD_RESET);
+	flash_write_cmd(info, 0, 0, info->cmd_reset);
 }
 
 static int flash_toggle (struct flash_info *info, flash_sect_t sect, uint offset, uchar cmd)
diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel.c
index f28301d..8e8a820 100644
--- a/drivers/nor/cfi_flash_intel.c
+++ b/drivers/nor/cfi_flash_intel.c
@@ -9,18 +9,19 @@
 */
 static void intel_read_jedec_ids (struct flash_info *info)
 {
+	info->cmd_reset		= FLASH_CMD_RESET;
 	info->manufacturer_id = 0;
 	info->device_id       = 0;
 	info->device_id2      = 0;
 
-	flash_write_cmd(info, 0, 0, FLASH_CMD_RESET);
+	flash_write_cmd(info, 0, 0, info->cmd_reset);
 	flash_write_cmd(info, 0, 0, FLASH_CMD_READ_ID);
 	udelay(1000); /* some flash are slow to respond */
 
 	info->manufacturer_id = jedec_read_mfr(info);
 	info->device_id = flash_read_uchar (info,
 					FLASH_OFFSET_DEVICE_ID);
-	flash_write_cmd(info, 0, 0, FLASH_CMD_RESET);
+	flash_write_cmd(info, 0, 0, info->cmd_reset);
 }
 
 /*
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
