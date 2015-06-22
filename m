Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6xII-0002zU-H7
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 08:41:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jun 2015 10:40:59 +0200
Message-Id: <1434962466-23590-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/11] mtd: cfi-flash: replace ifdef with IS_ENABLED
To: Barebox List <barebox@lists.infradead.org>

TO get rid of some ifdefs. While at it add the vendor code of
the unsupported vendor to the error message.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index caa93b6..98ce791 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -329,22 +329,23 @@ static ulong flash_get_size (struct flash_info *info)
 #endif
 
 	switch (info->vendor) {
-#ifdef CONFIG_DRIVER_CFI_INTEL
 	case CFI_CMDSET_INTEL_EXTENDED:
 	case CFI_CMDSET_INTEL_STANDARD:
-		info->cfi_cmd_set = &cfi_cmd_set_intel;
+		if (IS_ENABLED(CONFIG_DRIVER_CFI_INTEL))
+			info->cfi_cmd_set = &cfi_cmd_set_intel;
 		break;
-#endif
-#ifdef CONFIG_DRIVER_CFI_AMD
 	case CFI_CMDSET_AMD_STANDARD:
 	case CFI_CMDSET_AMD_EXTENDED:
-		info->cfi_cmd_set = &cfi_cmd_set_amd;
+		if (IS_ENABLED(CONFIG_DRIVER_CFI_AMD))
+			info->cfi_cmd_set = &cfi_cmd_set_amd;
 		break;
-#endif
-	default:
-		dev_err(info->dev, "unsupported vendor\n");
+	}
+
+	if (!info->cfi_cmd_set) {
+		dev_err(info->dev, "unsupported vendor 0x%04x\n", info->vendor);
 		return 0;
 	}
+
 	info->cfi_cmd_set->flash_read_jedec_ids (info);
 	flash_write_cmd (info, 0, info->cfi_offset, FLASH_CMD_CFI);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
