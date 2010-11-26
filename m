Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PM4PW-0002uf-ST
	for barebox@lists.infradead.org; Fri, 26 Nov 2010 19:56:51 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 26 Nov 2010 20:52:34 +0100
Message-Id: <1290801161-2417-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 05/12] cfi_flash: synchronize command offsets with Linux CFI
	driver
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>, Patrice Vilchez <patrice.vilchez@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/nor/cfi_flash.h     |    7 +++----
 drivers/nor/cfi_flash_amd.c |   32 +++++++++++++++++++++++++-------
 2 files changed, 28 insertions(+), 11 deletions(-)

diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
index 9a299db..4094b02 100644
--- a/drivers/nor/cfi_flash.h
+++ b/drivers/nor/cfi_flash.h
@@ -59,6 +59,8 @@ struct flash_info {
 	ushort	ext_addr;		/* extended query table address		*/
 	ushort	cfi_version;		/* cfi version				*/
 	ushort	cfi_offset;		/* offset for cfi query 		*/
+	ulong	addr_unlock1;		/* unlock address 1 for AMD flash roms	*/
+	ulong	addr_unlock2;		/* unlock address 2 for AMD flash roms	*/
 	struct cfi_cmd_set *cfi_cmd_set;
 	struct cdev cdev;
 #ifdef CONFIG_PARTITION_NEED_MTD
@@ -117,10 +119,6 @@ extern struct cfi_cmd_set cfi_cmd_set_amd;
 #define AMD_STATUS_TOGGLE		0x40
 #define AMD_STATUS_ERROR		0x20
 
-#define AMD_ADDR_ERASE_START	((info->portwidth == FLASH_CFI_8BIT) ? 0xAAA : 0x555)
-#define AMD_ADDR_START		((info->portwidth == FLASH_CFI_8BIT) ? 0xAAA : 0x555)
-#define AMD_ADDR_ACK		((info->portwidth == FLASH_CFI_8BIT) ? 0x555 : 0x2AA)
-
 #define ATM_CMD_UNLOCK_SECT		0x70
 #define ATM_CMD_SOFTLOCK_START		0x80
 #define ATM_CMD_LOCK_SECT		0x40
@@ -187,6 +185,7 @@ extern struct cfi_cmd_set cfi_cmd_set_amd;
 #define FLASH_CFI_X8		0x00
 #define FLASH_CFI_X16		0x01
 #define FLASH_CFI_X8X16		0x02
+#define FLASH_CFI_X16X32	0x05
 
 /* convert between bit value and numeric value */
 #define CFI_FLASH_SHIFT_WIDTH	3
diff --git a/drivers/nor/cfi_flash_amd.c b/drivers/nor/cfi_flash_amd.c
index dffd6f0..c64377b 100644
--- a/drivers/nor/cfi_flash_amd.c
+++ b/drivers/nor/cfi_flash_amd.c
@@ -4,8 +4,8 @@
 
 static void flash_unlock_seq (struct flash_info *info)
 {
-	flash_write_cmd (info, 0, AMD_ADDR_START, AMD_CMD_UNLOCK_START);
-	flash_write_cmd (info, 0, AMD_ADDR_ACK, AMD_CMD_UNLOCK_ACK);
+	flash_write_cmd (info, 0, info->addr_unlock1, AMD_CMD_UNLOCK_START);
+	flash_write_cmd (info, 0, info->addr_unlock2, AMD_CMD_UNLOCK_ACK);
 }
 
 /*
@@ -20,9 +20,27 @@ static void amd_read_jedec_ids (struct flash_info *info)
 	info->device_id       = 0;
 	info->device_id2      = 0;
 
+	/* calculate command offsets as in the Linux driver */
+	info->addr_unlock1 = 0x555;
+	info->addr_unlock2 = 0x2AA;
+
+	/*
+	 * modify the unlock address if we are in compatibility mode
+	 */
+	if (	/* x8/x16 in x8 mode */
+		((info->chipwidth == FLASH_CFI_BY8) &&
+			(info->interface == FLASH_CFI_X8X16)) ||
+		/* x16/x32 in x16 mode */
+		((info->chipwidth == FLASH_CFI_BY16) &&
+			(info->interface == FLASH_CFI_X16X32)))
+	{
+		info->addr_unlock1 = 0xaaa;
+		info->addr_unlock2 = 0x555;
+	}
+
 	flash_write_cmd(info, 0, 0, AMD_CMD_RESET);
 	flash_unlock_seq(info);
-	flash_write_cmd(info, 0, AMD_ADDR_START, FLASH_CMD_READ_ID);
+	flash_write_cmd(info, 0, info->addr_unlock1, FLASH_CMD_READ_ID);
 	udelay(1000); /* some flash are slow to respond */
 	info->manufacturer_id = flash_read_uchar (info,
 					FLASH_OFFSET_MANUFACTURER_ID);
@@ -74,7 +92,7 @@ static int amd_flash_is_busy (struct flash_info *info, flash_sect_t sect)
 static int amd_flash_erase_one (struct flash_info *info, long sect)
 {
 	flash_unlock_seq(info);
-	flash_write_cmd (info, 0, AMD_ADDR_ERASE_START, AMD_CMD_ERASE_START);
+	flash_write_cmd (info, 0, info->addr_unlock1, AMD_CMD_ERASE_START);
 	flash_unlock_seq(info);
 	flash_write_cmd (info, sect, 0, AMD_CMD_ERASE_SECTOR);
 
@@ -84,7 +102,7 @@ static int amd_flash_erase_one (struct flash_info *info, long sect)
 static void amd_flash_prepare_write(struct flash_info *info)
 {
 	flash_unlock_seq(info);
-	flash_write_cmd (info, 0, AMD_ADDR_START, AMD_CMD_WRITE);
+	flash_write_cmd (info, 0, info->addr_unlock1, AMD_CMD_WRITE);
 }
 
 #ifdef CONFIG_CFI_BUFFER_WRITE
@@ -140,12 +158,12 @@ static int amd_flash_real_protect (struct flash_info *info, long sector, int pro
 
 	if (prot) {
 		flash_unlock_seq (info);
-		flash_write_cmd (info, 0, AMD_ADDR_START,
+		flash_write_cmd (info, 0, info->addr_unlock1,
 				 ATM_CMD_SOFTLOCK_START);
 		flash_unlock_seq (info);
 		flash_write_cmd (info, sector, 0, ATM_CMD_LOCK_SECT);
 	} else {
-		flash_write_cmd (info, 0, AMD_ADDR_START,
+		flash_write_cmd (info, 0, info->addr_unlock1,
 				 AMD_CMD_UNLOCK_START);
 		if (info->device_id == ATM_ID_BV6416)
 			flash_write_cmd (info, sector, 0,
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
