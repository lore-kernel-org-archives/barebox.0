Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6xII-0002zT-H6
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 08:41:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jun 2015 10:41:04 +0200
Message-Id: <1434962466-23590-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/11] mtd: cfi-flash: use unaligned accessor functions
To: Barebox List <barebox@lists.infradead.org>

Some members in struct cfi_qry are unaligned. Use get_unaligned_*
to access them. Fixes unaligned aborts on busses which don't support
unaligned accesses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index eb16749..021f3b9 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -40,6 +40,7 @@
 #include <errno.h>
 #include <progress.h>
 #include <linux/err.h>
+#include <asm/unaligned.h>
 #include "cfi_flash.h"
 
 /*
@@ -257,8 +258,8 @@ static int flash_detect_width(struct flash_info *info, struct cfi_qry *qry)
 found:
 	flash_read_cfi(info, qry, FLASH_OFFSET_CFI_RESP,
 			       sizeof(struct cfi_qry));
-	info->interface = le16_to_cpu(qry->interface_desc);
-	info->cfi_offset=flash_offset_cfi[cfi_offset];
+	info->interface = get_unaligned_le16(&qry->interface_desc);
+	info->cfi_offset = flash_offset_cfi[cfi_offset];
 	dev_dbg(info->dev, "device interface is %d\n", info->interface);
 	dev_dbg(info->dev, "found port %d chip %d chip_lsb %d ",
 			info->portwidth, info->chipwidth, info->chip_lsb);
@@ -317,8 +318,8 @@ static int flash_detect_size(struct flash_info *info)
 	if (ret)
 		return ret;
 
-	info->vendor = le16_to_cpu(qry.p_id);
-	info->ext_addr = le16_to_cpu(qry.p_adr);
+	info->vendor = get_unaligned_le16(&qry.p_id);
+	info->ext_addr = get_unaligned_le16(&qry.p_adr);
 	num_erase_regions = qry.num_erase_regions;
 
 	if (info->ext_addr) {
@@ -386,7 +387,7 @@ static int flash_detect_size(struct flash_info *info)
 			break;
 		}
 
-		tmp = le32_to_cpu(qry.erase_region_info[i]);
+		tmp = get_unaligned_le32(&qry.erase_region_info[i]);
 		dev_dbg(info->dev, "erase region %u: 0x%08lx\n", i, tmp);
 
 		erase_region_count = (tmp & 0xffff) + 1;
@@ -431,7 +432,7 @@ static int flash_detect_size(struct flash_info *info)
 	info->sector_count = sect_cnt;
 	/* multiply the size by the number of chips */
 	info->size = (1 << qry.dev_size) * size_ratio;
-	info->buffer_size = (1 << le16_to_cpu(qry.max_buf_write_size));
+	info->buffer_size = (1 << get_unaligned_le16(&qry.max_buf_write_size));
 	info->erase_blk_tout = 1 << (qry.block_erase_timeout_typ +
 				     qry.block_erase_timeout_max);
 	info->buffer_write_tout = 1 << (qry.buf_write_timeout_typ +
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
