Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PM4PW-0002uN-EP
	for barebox@lists.infradead.org; Fri, 26 Nov 2010 19:56:49 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 26 Nov 2010 20:52:35 +0100
Message-Id: <1290801161-2417-6-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 06/12] cfi_flash: update manufacturer id flash support
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>, Patrice Vilchez <patrice.vilchez@atmel.com>

several first banks can contain 0x7f instead of actual ID

support as done in linux

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/nor/cfi_flash.c       |   18 ++++++++++++++++++
 drivers/nor/cfi_flash.h       |    3 +++
 drivers/nor/cfi_flash_amd.c   |    4 ++--
 drivers/nor/cfi_flash_intel.c |    4 ++--
 4 files changed, 25 insertions(+), 4 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index fb5935e..a1e0726 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -269,6 +269,24 @@ static ulong flash_read_long (struct flash_info *info, flash_sect_t sect, uint o
  * http://www.jedec.org/download/search/jesd68.pdf
  *
 */
+u32 jedec_read_mfr(struct flash_info *info)
+{
+	int bank = 0;
+	uchar mfr;
+
+	/* According to JEDEC "Standard Manufacturer's Identification Code"
+	 * (http://www.jedec.org/download/search/jep106W.pdf)
+	 * several first banks can contain 0x7f instead of actual ID
+	 */
+	do {
+		mfr = flash_read_uchar (info,
+				(bank << 8) | FLASH_OFFSET_MANUFACTURER_ID);
+		bank++;
+	} while (mfr == FLASH_ID_CONTINUATION);
+
+	return mfr;
+}
+
 static int flash_detect_cfi (struct flash_info *info)
 {
 	int cfi_offset;
diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
index 4094b02..877822a 100644
--- a/drivers/nor/cfi_flash.h
+++ b/drivers/nor/cfi_flash.h
@@ -107,6 +107,8 @@ extern struct cfi_cmd_set cfi_cmd_set_amd;
 #define FLASH_STATUS_R			0x01
 #define FLASH_STATUS_PROTECT		0x01
 
+#define FLASH_ID_CONTINUATION		0x7F
+
 #define AMD_CMD_RESET			0xF0
 #define AMD_CMD_WRITE			0xA0
 #define AMD_CMD_ERASE_START		0x80
@@ -211,6 +213,7 @@ static inline uchar *flash_make_addr (struct flash_info *info, flash_sect_t sect
 }
 
 uchar flash_read_uchar (struct flash_info *info, uint offset);
+u32 jedec_read_mfr(struct flash_info *info);
 
 #ifdef CONFIG_DRIVER_CFI_BANK_WIDTH_1
 #define bankwidth_is_1(info) (info->portwidth == 1)
diff --git a/drivers/nor/cfi_flash_amd.c b/drivers/nor/cfi_flash_amd.c
index c64377b..54e764d 100644
--- a/drivers/nor/cfi_flash_amd.c
+++ b/drivers/nor/cfi_flash_amd.c
@@ -42,8 +42,8 @@ static void amd_read_jedec_ids (struct flash_info *info)
 	flash_unlock_seq(info);
 	flash_write_cmd(info, 0, info->addr_unlock1, FLASH_CMD_READ_ID);
 	udelay(1000); /* some flash are slow to respond */
-	info->manufacturer_id = flash_read_uchar (info,
-					FLASH_OFFSET_MANUFACTURER_ID);
+
+	info->manufacturer_id = jedec_read_mfr(info);
 	info->device_id = flash_read_uchar (info,
 					FLASH_OFFSET_DEVICE_ID);
 	if (info->device_id == 0x7E) {
diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel.c
index a71f7c4..649f83b 100644
--- a/drivers/nor/cfi_flash_intel.c
+++ b/drivers/nor/cfi_flash_intel.c
@@ -16,8 +16,8 @@ static void intel_read_jedec_ids (struct flash_info *info)
 	flash_write_cmd(info, 0, 0, FLASH_CMD_RESET);
 	flash_write_cmd(info, 0, 0, FLASH_CMD_READ_ID);
 	udelay(1000); /* some flash are slow to respond */
-	info->manufacturer_id = flash_read_uchar (info,
-					FLASH_OFFSET_MANUFACTURER_ID);
+
+	info->manufacturer_id = jedec_read_mfr(info);
 	info->device_id = flash_read_uchar (info,
 					FLASH_OFFSET_DEVICE_ID);
 	flash_write_cmd(info, 0, 0, FLASH_CMD_RESET);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
