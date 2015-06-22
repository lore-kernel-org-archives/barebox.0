Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6xII-0002zS-H8
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 08:41:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jun 2015 10:41:01 +0200
Message-Id: <1434962466-23590-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/11] mtd: cfi-flash: make flash_detect_width more readable
To: Barebox List <barebox@lists.infradead.org>

Use variables instead of long defines to get the loops into a single
line. Also use goto to move the deeply indented code more to the left.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c | 63 +++++++++++++++++++++++++--------------------
 1 file changed, 35 insertions(+), 28 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 762a6c6..a369b46 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -224,42 +224,49 @@ static void flash_read_cfi (struct flash_info *info, void *buf,
 		p[i] = flash_read_uchar(info, start + i);
 }
 
-static int flash_detect_width (struct flash_info *info, struct cfi_qry *qry)
+static int flash_detect_width(struct flash_info *info, struct cfi_qry *qry)
 {
 	int cfi_offset;
+	int pw, cw;
 
+	for (pw = CFG_FLASH_CFI_WIDTH; pw <= FLASH_CFI_64BIT; pw <<= 1) {
+		for (cw = FLASH_CFI_BY8; cw <= pw; cw <<= 1) {
+			info->chipwidth = cw;
+			info->portwidth = pw;
 
-	for (info->portwidth = CFG_FLASH_CFI_WIDTH;
-	     info->portwidth <= FLASH_CFI_64BIT; info->portwidth <<= 1) {
-		for (info->chipwidth = FLASH_CFI_BY8;
-		     info->chipwidth <= info->portwidth;
-		     info->chipwidth <<= 1) {
-			flash_write_cmd (info, 0, 0, AMD_CMD_RESET);
-			flash_write_cmd (info, 0, 0, FLASH_CMD_RESET);
-			for (cfi_offset=0; cfi_offset < sizeof(flash_offset_cfi)/sizeof(uint); cfi_offset++) {
-				flash_write_cmd (info, 0, flash_offset_cfi[cfi_offset], FLASH_CMD_CFI);
-				if (flash_isequal (info, 0, FLASH_OFFSET_CFI_RESP, 'Q')
-				 && flash_isequal (info, 0, FLASH_OFFSET_CFI_RESP + 1, 'R')
-				 && flash_isequal (info, 0, FLASH_OFFSET_CFI_RESP + 2, 'Y')) {
-					flash_read_cfi(info, qry, FLASH_OFFSET_CFI_RESP,
-						       sizeof(struct cfi_qry));
-					info->interface = le16_to_cpu(qry->interface_desc);
-
-					info->cfi_offset=flash_offset_cfi[cfi_offset];
-					dev_dbg(info->dev, "device interface is %d\n",
-						info->interface);
-					dev_dbg(info->dev, "found port %d chip %d chip_lsb %d ",
-						info->portwidth, info->chipwidth, info->chip_lsb);
-					dev_dbg(info->dev, "port %d bits chip %d bits\n",
-						info->portwidth << CFI_FLASH_SHIFT_WIDTH,
-						info->chipwidth << CFI_FLASH_SHIFT_WIDTH);
-					return 1;
-				}
+			flash_write_cmd(info, 0, 0, AMD_CMD_RESET);
+			flash_write_cmd(info, 0, 0, FLASH_CMD_RESET);
+
+			for (cfi_offset = 0; cfi_offset < sizeof(flash_offset_cfi) / sizeof(uint);
+					cfi_offset++) {
+
+				flash_write_cmd(info, 0, flash_offset_cfi[cfi_offset], FLASH_CMD_CFI);
+
+				if (flash_isequal(info, 0, FLASH_OFFSET_CFI_RESP, 'Q') &&
+				    flash_isequal(info, 0, FLASH_OFFSET_CFI_RESP + 1, 'R') &&
+				    flash_isequal(info, 0, FLASH_OFFSET_CFI_RESP + 2, 'Y'))
+					goto found;
 			}
 		}
 	}
-	dev_dbg(info->dev, "not found\n");
+
+	dev_dbg(info->dev, "no flash found\n");
+
 	return 0;
+
+found:
+	flash_read_cfi(info, qry, FLASH_OFFSET_CFI_RESP,
+			       sizeof(struct cfi_qry));
+	info->interface = le16_to_cpu(qry->interface_desc);
+	info->cfi_offset=flash_offset_cfi[cfi_offset];
+	dev_dbg(info->dev, "device interface is %d\n", info->interface);
+	dev_dbg(info->dev, "found port %d chip %d chip_lsb %d ",
+			info->portwidth, info->chipwidth, info->chip_lsb);
+	dev_dbg(info->dev, "port %d bits chip %d bits\n",
+			info->portwidth << CFI_FLASH_SHIFT_WIDTH,
+			info->chipwidth << CFI_FLASH_SHIFT_WIDTH);
+
+	return 1;
 }
 
 static int flash_detect_cfi (struct flash_info *info, struct cfi_qry *qry)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
