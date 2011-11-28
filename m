Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUzgU-0004VE-7j
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 11:47:47 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Mon, 28 Nov 2011 12:46:56 +0100
Message-Id: <1322480816-9598-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] nand: base: Improve error reporting if reading NAND-ID fails
To: barebox@lists.infradead.org

- use KERN_ERR for messages when NAND-ID detection fails
- report the IDs also if not found
- print the errno if nand_scan failed

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c |    8 +++++---
 1 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 2710f6a..ec0f4a3 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -1067,7 +1067,7 @@ static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
 	tmp_id = chip->read_byte(mtd);
 
 	if (tmp_manf != *maf_id || tmp_id != dev_id) {
-		printk(KERN_INFO "%s: second ID read did not match "
+		printk(KERN_ERR "%s: second ID read did not match "
 		       "%02x,%02x against %02x,%02x\n", __func__,
 		       *maf_id, dev_id, tmp_manf, tmp_id);
 		return ERR_PTR(-ENODEV);
@@ -1081,8 +1081,10 @@ static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
 		}
 	}
 
-	if (!type)
+	if (!type) {
+		printk(KERN_ERR "NAND type unknown: %02x,%02x\n", *maf_id, dev_id);
 		return ERR_PTR(-ENODEV);
+	}
 
 	if (!mtd->name)
 		mtd->name = type->name;
@@ -1209,7 +1211,7 @@ int nand_scan_ident(struct mtd_info *mtd, int maxchips)
 	type = nand_get_flash_type(mtd, chip, busw, &nand_maf_id);
 
 	if (IS_ERR(type)) {
-		printk(KERN_WARNING "No NAND device found!!!\n");
+		printk(KERN_WARNING "No NAND device found (%ld)!\n", PTR_ERR(type));
 		chip->select_chip(mtd, -1);
 		return PTR_ERR(type);
 	}
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
