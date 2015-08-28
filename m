Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZVFhz-0005vk-DN
 for barebox@lists.infradead.org; Fri, 28 Aug 2015 09:12:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Aug 2015 11:12:03 +0200
Message-Id: <1440753123-26716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: spi-nor: mostly drop lock/unlock code
To: Barebox List <barebox@lists.infradead.org>

The lock/unlock code is broken beyond repair.

First of all the algorithm doesn't work properly. SPI NOR flashes
can only protect a certain amount of blocks from the end of the device
which is incompatible to the protect(start,len) API we have. The
algorithm tries to be clever by doing protection only when it does
not protect unrelated blocks and unprotection only when it does not
unprotect unrelated blocks. This breaks for example when some code
protects the last blocks (which may contain the bootloader), then
protects the blocks before the last ones (which may contain the
environment). Then if we try to overwrite the bootloader this won't
work since it would unprotect the environment aswell, so the driver
will not unprotect anything resulting in a failed erase/write later.

Then the protection behaviour is different between different flashes.
Some have three protection bits, some have four. For some the smallest
protection are is 1/16 of the device, others have 1/256 or 1/64. Some
have a bit which selects the lower area instead of upper area for
protection. The position of this bit differs on different flashes.

This patch removes the lock code completely and always unprotects
the whole device. This way we can unprotect a device for writing to
it and never protect it again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/spi-nor/spi-nor.c | 74 +++++--------------------------------------
 1 file changed, 8 insertions(+), 66 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index edf0dd5..32501a9 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -370,85 +370,27 @@ erase_err:
 
 static int spi_nor_lock(struct mtd_info *mtd, loff_t ofs, size_t len)
 {
-	struct spi_nor *nor = mtd_to_spi_nor(mtd);
-	uint32_t offset = ofs;
-	uint8_t status_old, status_new;
-	int ret = 0;
-
-	ret = spi_nor_lock_and_prep(nor, SPI_NOR_OPS_LOCK);
-	if (ret)
-		return ret;
-
-	status_old = read_sr(nor);
-
-	if (offset < mtd->size - (mtd->size / 2))
-		status_new = status_old | SR_BP2 | SR_BP1 | SR_BP0;
-	else if (offset < mtd->size - (mtd->size / 4))
-		status_new = (status_old & ~SR_BP0) | SR_BP2 | SR_BP1;
-	else if (offset < mtd->size - (mtd->size / 8))
-		status_new = (status_old & ~SR_BP1) | SR_BP2 | SR_BP0;
-	else if (offset < mtd->size - (mtd->size / 16))
-		status_new = (status_old & ~(SR_BP0 | SR_BP1)) | SR_BP2;
-	else if (offset < mtd->size - (mtd->size / 32))
-		status_new = (status_old & ~SR_BP2) | SR_BP1 | SR_BP0;
-	else if (offset < mtd->size - (mtd->size / 64))
-		status_new = (status_old & ~(SR_BP2 | SR_BP0)) | SR_BP1;
-	else
-		status_new = (status_old & ~(SR_BP2 | SR_BP1)) | SR_BP0;
-
-	/* Only modify protection if it will not unlock other areas */
-	if ((status_new & (SR_BP2 | SR_BP1 | SR_BP0)) >
-				(status_old & (SR_BP2 | SR_BP1 | SR_BP0))) {
-		write_enable(nor);
-		ret = write_sr(nor, status_new);
-		if (ret)
-			goto err;
-	}
-
-err:
-	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_LOCK);
-	return ret;
+	return 0;
 }
 
 static int spi_nor_unlock(struct mtd_info *mtd, loff_t ofs, size_t len)
 {
 	struct spi_nor *nor = mtd_to_spi_nor(mtd);
-	uint32_t offset = ofs;
-	uint8_t status_old, status_new;
-	int ret = 0;
+	uint8_t status;
+	int ret;
 
 	ret = spi_nor_lock_and_prep(nor, SPI_NOR_OPS_UNLOCK);
 	if (ret)
 		return ret;
 
-	status_old = read_sr(nor);
-
-	if (offset+len > mtd->size - (mtd->size / 64))
-		status_new = status_old & ~(SR_BP2 | SR_BP1 | SR_BP0);
-	else if (offset+len > mtd->size - (mtd->size / 32))
-		status_new = (status_old & ~(SR_BP2 | SR_BP1)) | SR_BP0;
-	else if (offset+len > mtd->size - (mtd->size / 16))
-		status_new = (status_old & ~(SR_BP2 | SR_BP0)) | SR_BP1;
-	else if (offset+len > mtd->size - (mtd->size / 8))
-		status_new = (status_old & ~SR_BP2) | SR_BP1 | SR_BP0;
-	else if (offset+len > mtd->size - (mtd->size / 4))
-		status_new = (status_old & ~(SR_BP0 | SR_BP1)) | SR_BP2;
-	else if (offset+len > mtd->size - (mtd->size / 2))
-		status_new = (status_old & ~SR_BP1) | SR_BP2 | SR_BP0;
-	else
-		status_new = (status_old & ~SR_BP0) | SR_BP2 | SR_BP1;
+	status = read_sr(nor);
+	status &= ~(SR_BP2 | SR_BP1 | SR_BP0);
+	write_enable(nor);
 
-	/* Only modify protection if it will not lock other areas */
-	if ((status_new & (SR_BP2 | SR_BP1 | SR_BP0)) <
-				(status_old & (SR_BP2 | SR_BP1 | SR_BP0))) {
-		write_enable(nor);
-		ret = write_sr(nor, status_new);
-		if (ret)
-			goto err;
-	}
+	ret = write_sr(nor, status);
 
-err:
 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_UNLOCK);
+
 	return ret;
 }
 
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
