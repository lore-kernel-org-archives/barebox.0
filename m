Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og117.obsmtp.com ([64.18.0.149])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfCK8-0006QX-2S
 for barebox@lists.infradead.org; Wed, 22 May 2013 16:55:36 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 22 May 2013 17:54:16 +0100
Message-Id: <1369241656-9219-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH] mtd-core: fix mtd erase operation for non-uniform flashes.
To: barebox@lists.infradead.org

This patch supports the erasing of CFI flash with non-uniform sector.
When more than one erase region exists, the mtd_erasesize function
assigns the erase size of the sector to the erase_info structure.

The problem was discovered when erasing /dev/env0 on my PPC board.
This is a partition of size 0x8000 at offset 0 of a 32MB Intel compatible
flash with a bottom boot block i.e 4 32KB sectors followed by 255
128KB sectors.

barebox> unprotect /dev/env0
barebox> erase /dev/env0
cfi_erase: start = 0x0, end = 0x3, count = 0x20000
Flash erase error at address fe008000
Block Erase Error.
Block locked.
erase: I/O error

The error above is that a count of 0x20000 is passed instead of 0x8000
by mtd_op_erase. This is because the code does not take into account
multiple erase regions.

After taking into account the erase regions, only the first sector is
erased:

barebox> unprotect /dev/env0
barebox> erase /dev/env0
cfi_erase: start = 0x0, end = 0x0, count = 0x8000

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 drivers/mtd/core.c |   24 ++++++++++++++++++++++--
 1 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 61744b6..8139b98 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -98,6 +98,23 @@ static ssize_t mtd_op_write(struct cdev* cdev, const void *buf, size_t _count,
 	return ret ? ret : _count;
 }
 
+static void mtd_erasesize(struct erase_info *erase)
+{
+	struct mtd_info *mtd = erase->mtd;
+	int ix, size;
+
+	size = 0;
+	for (ix = 0; ix < mtd->numeraseregions; ix++) {
+		size += mtd->eraseregions[ix].erasesize *
+			mtd->eraseregions[ix].numblocks;
+
+		if (erase->addr < size) {
+			erase->len =  mtd->eraseregions[ix].erasesize;
+			break;
+		}
+	}
+}
+
 static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
 {
 	struct mtd_info *mtd = cdev->priv;
@@ -110,6 +127,9 @@ static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
 	erase.len = mtd->erasesize;
 
 	while (count > 0) {
+		if (mtd->numeraseregions > 1)
+			mtd_erasesize(&erase);
+
 		dev_dbg(cdev->dev, "erase %d %d\n", erase.addr, erase.len);
 
 		if (!mtd->allow_erasebad)
@@ -125,8 +145,8 @@ static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
 				return ret;
 		}
 
-		erase.addr += mtd->erasesize;
-		count -= count > mtd->erasesize ? mtd->erasesize : count;
+		erase.addr += erase.len;
+		count -= count > erase.len ? erase.len : count;
 	}
 
 	return 0;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
