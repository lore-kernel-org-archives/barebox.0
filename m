Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PM4PU-0002tG-Qj
	for barebox@lists.infradead.org; Fri, 26 Nov 2010 19:56:46 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 26 Nov 2010 20:52:30 +0100
Message-Id: <1290801161-2417-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 01/12] cfi_flash: move intel real protect flash support to
	cfi_flash_intel.c
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>, Patrice Vilchez <patrice.vilchez@atmel.com>

let an empty function for amd as we will add later atmel real protect flash

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/nor/cfi_flash.c       |   10 ++++------
 drivers/nor/cfi_flash.h       |    1 +
 drivers/nor/cfi_flash_amd.c   |    6 ++++++
 drivers/nor/cfi_flash_intel.c |   13 +++++++++++++
 4 files changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index fa5e5ee..08e45ef 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -638,12 +638,10 @@ static int flash_real_protect (struct flash_info *info, long sector, int prot)
 {
 	int retcode = 0;
 
-	flash_write_cmd (info, sector, 0, FLASH_CMD_CLEAR_STATUS);
-	flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT);
-	if (prot)
-		flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT_SET);
-	else
-		flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT_CLEAR);
+	retcode = info->cfi_cmd_set->flash_real_protect(info, sector, prot);
+
+	if (retcode)
+		return retcode;
 
 	if ((retcode =
 	     flash_status_check (info, sector, info->erase_blk_tout,
diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
index 057e56c..ee1a6f0 100644
--- a/drivers/nor/cfi_flash.h
+++ b/drivers/nor/cfi_flash.h
@@ -76,6 +76,7 @@ struct cfi_cmd_set {
 	void (*flash_read_jedec_ids) (struct flash_info *info);
 	void (*flash_prepare_write) (struct flash_info *info);
 	int (*flash_status_check) (struct flash_info *info, flash_sect_t sector, uint64_t tout, char *prompt);
+	int (*flash_real_protect) (struct flash_info *info, long sector, int prot);
 };
 
 extern struct cfi_cmd_set cfi_cmd_set_intel;
diff --git a/drivers/nor/cfi_flash_amd.c b/drivers/nor/cfi_flash_amd.c
index 45b7e5c..b10f7b2 100644
--- a/drivers/nor/cfi_flash_amd.c
+++ b/drivers/nor/cfi_flash_amd.c
@@ -133,6 +133,11 @@ static int amd_flash_write_cfibuffer (struct flash_info *info, ulong dest, const
 #define amd_flash_write_cfibuffer NULL
 #endif /* CONFIG_CFI_BUFFER_WRITE */
 
+static int amd_flash_real_protect (struct flash_info *info, long sector, int prot)
+{
+	return 0;
+}
+
 struct cfi_cmd_set cfi_cmd_set_amd = {
 	.flash_write_cfibuffer = amd_flash_write_cfibuffer,
 	.flash_erase_one = amd_flash_erase_one,
@@ -140,5 +145,6 @@ struct cfi_cmd_set cfi_cmd_set_amd = {
 	.flash_read_jedec_ids = amd_read_jedec_ids,
 	.flash_prepare_write = amd_flash_prepare_write,
 	.flash_status_check = flash_generic_status_check,
+	.flash_real_protect = amd_flash_real_protect,
 };
 
diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel.c
index 4344760..a71f7c4 100644
--- a/drivers/nor/cfi_flash_intel.c
+++ b/drivers/nor/cfi_flash_intel.c
@@ -126,6 +126,18 @@ static int intel_flash_status_check (struct flash_info *info, flash_sect_t secto
 	return retcode;
 }
 
+static int intel_flash_real_protect (struct flash_info *info, long sector, int prot)
+{
+	flash_write_cmd (info, sector, 0, FLASH_CMD_CLEAR_STATUS);
+	flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT);
+	if (prot)
+		flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT_SET);
+	else
+		flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT_CLEAR);
+
+	return 0;
+}
+
 struct cfi_cmd_set cfi_cmd_set_intel = {
 	.flash_write_cfibuffer = intel_flash_write_cfibuffer,
 	.flash_erase_one = intel_flash_erase_one,
@@ -133,5 +145,6 @@ struct cfi_cmd_set cfi_cmd_set_intel = {
 	.flash_read_jedec_ids = intel_read_jedec_ids,
 	.flash_prepare_write = intel_flash_prepare_write,
 	.flash_status_check = intel_flash_status_check,
+	.flash_real_protect = intel_flash_real_protect,
 };
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
