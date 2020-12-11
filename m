Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knfBv-0002gi-Tr
 for barebox@lists.infradead.org; Fri, 11 Dec 2020 09:58:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Dec 2020 10:58:01 +0100
Message-Id: <20201211095803.22050-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] mtd: spi-nor: Make write support optional
To: Barebox List <barebox@lists.infradead.org>

Write support is optional with the CONFIG_MTD_WRITE option. Bail out
early in the write functions to save some binary space.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/spi-nor/spi-nor.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 350b82a6be..bd748ff5b4 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -470,6 +470,9 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 	uint32_t rem;
 	int ret;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOSYS;
+
 	dev_dbg(nor->dev, "at 0x%llx, len %lld\n", (long long)instr->addr,
 			(long long)instr->len);
 
@@ -928,6 +931,9 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 	size_t actual;
 	int ret;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOSYS;
+
 	dev_dbg(nor->dev, "to 0x%08x, len %zd\n", (u32)to, len);
 
 	ret = spi_nor_lock_and_prep(nor, SPI_NOR_OPS_WRITE);
@@ -1000,6 +1006,9 @@ static int spi_nor_write(struct mtd_info *mtd, loff_t to, size_t len,
 	size_t retval;
 	int ret;
 
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOSYS;
+
 	dev_dbg(nor->dev, "to 0x%08x, len %zd\n", (u32)to, len);
 
 	ret = spi_nor_lock_and_prep(nor, SPI_NOR_OPS_WRITE);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
