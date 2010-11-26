Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PM4PW-0002uF-C4
	for barebox@lists.infradead.org; Fri, 26 Nov 2010 19:56:52 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 26 Nov 2010 20:52:40 +0100
Message-Id: <1290801161-2417-11-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 11/12] cfi_flash: introduce flash cmdset fixup
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>, Patrice Vilchez <patrice.vilchez@atmel.com>, Haavard Skinnemoen <hskinnemoen@atmel.com>

Move fixing up like geometry reversal into separate functions.
The geometry reversal fixup is now performed
by altering the qry structure directly, which makes the sector init
code slightly cleaner.

based on U-Boot

Signed-off-by: Haavard Skinnemoen <hskinnemoen@atmel.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/nor/cfi_flash.c       |   43 +++-------------------------------------
 drivers/nor/cfi_flash.h       |    1 +
 drivers/nor/cfi_flash_amd.c   |   35 +++++++++++++++++++++++++++++++++
 drivers/nor/cfi_flash_intel.c |   12 +++++++++++
 4 files changed, 52 insertions(+), 39 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 6d22a53..2fa2c6b 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -314,7 +314,6 @@ static ulong flash_get_size (struct flash_info *info, ulong base)
 	uchar num_erase_regions;
 	int erase_region_size;
 	int erase_region_count;
-	int geometry_reversed = 0;
 	int cur_offset = 0;
 	struct cfi_qry qry;
 
@@ -368,38 +367,7 @@ static ulong flash_get_size (struct flash_info *info, ulong base)
 		info->cfi_cmd_set->flash_read_jedec_ids (info);
 		flash_write_cmd (info, 0, info->cfi_offset, FLASH_CMD_CFI);
 
-		switch (info->vendor) {
-		case CFI_CMDSET_INTEL_STANDARD:
-		case CFI_CMDSET_INTEL_EXTENDED:
-		default:
-#ifdef CFG_FLASH_PROTECTION
-			/* read legacy lock/unlock bit from intel flash */
-			if (info->ext_addr) {
-				info->legacy_unlock = flash_read_uchar (info,
-						info->ext_addr + 5) & 0x08;
-			}
-#endif
-			break;
-		case CFI_CMDSET_AMD_STANDARD:
-		case CFI_CMDSET_AMD_EXTENDED:
-			/* check if flash geometry needs reversal */
-			if (num_erase_regions <= 1)
-				break;
-			/* reverse geometry if top boot part */
-			if (info->cfi_version < 0x3131) {
-				/* CFI < 1.1, try to guess from device id */
-				if ((info->device_id & 0x80) != 0) {
-					geometry_reversed = 1;
-				}
-				break;
-			}
-			/* CFI >= 1.1, deduct from top/bottom flag */
-			/* note: ext_addr is valid since cfi_version > 0 */
-			if (flash_read_uchar(info, info->ext_addr + 0xf) == 3) {
-				geometry_reversed = 1;
-			}
-			break;
-		}
+		info->cfi_cmd_set->flash_fixup (info, &qry);
 
 		debug ("manufacturer is %d\n", info->vendor);
 		debug ("manufacturer id is 0x%x\n", info->manufacturer_id);
@@ -423,7 +391,6 @@ static ulong flash_get_size (struct flash_info *info, ulong base)
 		sector = base;
 
 		for (i = 0; i < num_erase_regions; i++) {
-			unsigned int __region = i;
 			struct mtd_erase_region_info *region = &info->eraseregions[i];
 
 			if (i > NUM_ERASE_REGIONS) {
@@ -431,11 +398,9 @@ static ulong flash_get_size (struct flash_info *info, ulong base)
 					num_erase_regions, NUM_ERASE_REGIONS);
 				break;
 			}
-			if (geometry_reversed)
-				__region = num_erase_regions - 1 - i;
-			
-			tmp = le32_to_cpu(qry.erase_region_info[__region]);
-			debug("erase region %u: 0x%08lx\n", __region, tmp);
+
+			tmp = le32_to_cpu(qry.erase_region_info[i]);
+			debug("erase region %u: 0x%08lx\n", i, tmp);
 
 			erase_region_count = (tmp & 0xffff) + 1;
 			tmp >>= 16;
diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
index 4b3bd25..1a3847d 100644
--- a/drivers/nor/cfi_flash.h
+++ b/drivers/nor/cfi_flash.h
@@ -114,6 +114,7 @@ struct cfi_cmd_set {
 	void (*flash_prepare_write) (struct flash_info *info);
 	int (*flash_status_check) (struct flash_info *info, flash_sect_t sector, uint64_t tout, char *prompt);
 	int (*flash_real_protect) (struct flash_info *info, long sector, int prot);
+	void (*flash_fixup) (struct flash_info *info, struct cfi_qry *qry);
 };
 
 extern struct cfi_cmd_set cfi_cmd_set_intel;
diff --git a/drivers/nor/cfi_flash_amd.c b/drivers/nor/cfi_flash_amd.c
index f225757..b50de22 100644
--- a/drivers/nor/cfi_flash_amd.c
+++ b/drivers/nor/cfi_flash_amd.c
@@ -2,6 +2,23 @@
 #include <stdio.h>
 #include "cfi_flash.h"
 
+/*-----------------------------------------------------------------------
+ * Reverse the order of the erase regions in the CFI QRY structure.
+ * This is needed for chips that are either a) correctly detected as
+ * top-boot, or b) buggy.
+ */
+static void cfi_reverse_geometry(struct cfi_qry *qry)
+{
+	unsigned int i, j;
+	u32 tmp;
+
+	for (i = 0, j = qry->num_erase_regions - 1; i < j; i++, j--) {
+		tmp = qry->erase_region_info[i];
+		qry->erase_region_info[i] = qry->erase_region_info[j];
+		qry->erase_region_info[j] = tmp;
+	}
+}
+
 static void flash_unlock_seq (struct flash_info *info)
 {
 	flash_write_cmd (info, 0, info->addr_unlock1, AMD_CMD_UNLOCK_START);
@@ -184,6 +201,23 @@ static int amd_flash_real_protect (struct flash_info *info, long sector, int pro
 	return 0;
 }
 
+static void amd_flash_fixup (struct flash_info *info, struct cfi_qry *qry)
+{
+	/* check if flash geometry needs reversal */
+	if (qry->num_erase_regions > 1) {
+		/* reverse geometry if top boot part */
+		if (info->cfi_version < 0x3131) {
+			/* CFI < 1.1, try to guess from device id */
+			if ((info->device_id & 0x80) != 0)
+				cfi_reverse_geometry(qry);
+		} else if (flash_read_uchar(info, info->ext_addr + 0xf) == 3) {
+			/* CFI >= 1.1, deduct from top/bottom flag */
+			/* note: ext_addr is valid since cfi_version > 0 */
+			cfi_reverse_geometry(qry);
+		}
+	}
+}
+
 struct cfi_cmd_set cfi_cmd_set_amd = {
 	.flash_write_cfibuffer = amd_flash_write_cfibuffer,
 	.flash_erase_one = amd_flash_erase_one,
@@ -192,5 +226,6 @@ struct cfi_cmd_set cfi_cmd_set_amd = {
 	.flash_prepare_write = amd_flash_prepare_write,
 	.flash_status_check = flash_generic_status_check,
 	.flash_real_protect = amd_flash_real_protect,
+	.flash_fixup = amd_flash_fixup,
 };
 
diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel.c
index 8e8a820..c3cbad5 100644
--- a/drivers/nor/cfi_flash_intel.c
+++ b/drivers/nor/cfi_flash_intel.c
@@ -141,6 +141,17 @@ static int intel_flash_real_protect (struct flash_info *info, long sector, int p
 	return 0;
 }
 
+static void intel_flash_fixup (struct flash_info *info, struct cfi_qry *qry)
+{
+#ifdef CFG_FLASH_PROTECTION
+	/* read legacy lock/unlock bit from intel flash */
+	if (info->ext_addr) {
+		info->legacy_unlock = flash_read_uchar (info,
+				info->ext_addr + 5) & 0x08;
+	}
+#endif
+}
+
 struct cfi_cmd_set cfi_cmd_set_intel = {
 	.flash_write_cfibuffer = intel_flash_write_cfibuffer,
 	.flash_erase_one = intel_flash_erase_one,
@@ -149,5 +160,6 @@ struct cfi_cmd_set cfi_cmd_set_intel = {
 	.flash_prepare_write = intel_flash_prepare_write,
 	.flash_status_check = intel_flash_status_check,
 	.flash_real_protect = intel_flash_real_protect,
+	.flash_fixup = intel_flash_fixup,
 };
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
