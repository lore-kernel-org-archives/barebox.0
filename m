Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUa1-0003nl-Ve
 for barebox@lists.infradead.org; Fri, 03 May 2019 09:34:12 +0000
Received: from [2001:67c:670:c0a8:d4b8:1dff:fe64:e144] (helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZy-000888-CH
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:06 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZx-0007G4-TR
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:05 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  3 May 2019 11:33:59 +0200
Message-Id: <08e78c904dc4c5b81909a7f1f7233614796a821b.1556875750.git-series.s.trumtrar@pengutronix.de>
In-Reply-To: <cover.f11bd6763969bb7d206b1b29aa16d5758acb980a.1556875750.git-series.s.trumtrar@pengutronix.de>
References: <cover.f11bd6763969bb7d206b1b29aa16d5758acb980a.1556875750.git-series.s.trumtrar@pengutronix.de>
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
Subject: [PATCH 09/10] mtd: spi-nor: provide default erase_sector
 implementation
To: Barebox List <barebox@lists.infradead.org>

Based on the Linux v4.4 patch

commit c67cbb839da9cc2757eabfa128556db6a2baf160
Author:     Brian Norris <computersforpeace@gmail.com>
AuthorDate: Tue Nov 10 12:15:27 2015 -0800
Commit:     Brian Norris <computersforpeace@gmail.com>
CommitDate: Thu Nov 19 13:34:44 2015 -0800

    mtd: spi-nor: provide default erase_sector implementation

    Some spi-nor drivers perform sector erase by duplicating their
    write_reg() command. Let's not require that the driver fill this out,
    and provide a default instead.

    Tested on m25p80.c and Medatek's MT8173 SPI NOR flash driver.

    Signed-off-by: Brian Norris <computersforpeace@gmail.com>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mtd/spi-nor/spi-nor.c | 37 ++++++++++++++++++++++++++++++++----
 include/linux/mtd/spi-nor.h   |  3 ++-
 2 files changed, 35 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index e086d868e2e3..9f72df39f015 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -25,6 +25,7 @@
 #include <spi/flash.h>
 
 #define SPI_NOR_MAX_ID_LEN	6
+#define SPI_NOR_MAX_ADDR_WIDTH	4
 
 /*
  * For everything but full-chip erase; probably could be much smaller, but kept
@@ -435,6 +436,29 @@ static void spi_nor_unlock_and_unprep(struct spi_nor *nor, enum spi_nor_ops ops)
 }
 
 /*
+ * Initiate the erasure of a single sector
+ */
+static int spi_nor_erase_sector(struct spi_nor *nor, u32 addr)
+{
+	u8 buf[SPI_NOR_MAX_ADDR_WIDTH];
+	int i;
+
+	if (nor->erase)
+		return nor->erase(nor, addr);
+
+	/*
+	 * Default implementation, if driver doesn't have a specialized HW
+	 * control
+	 */
+	for (i = nor->addr_width - 1; i >= 0; i--) {
+		buf[i] = addr & 0xff;
+		addr >>= 8;
+	}
+
+	return nor->write_reg(nor, nor->erase_opcode, buf, nor->addr_width);
+}
+
+/*
  * Erase an address range on the nor chip.  The address range may extend
  * one or more erase sectors.  Return an error is there is a problem erasing.
  */
@@ -498,10 +522,9 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 		while (len) {
 			write_enable(nor);
 
-			if (nor->erase(nor, addr)) {
-				ret = -EIO;
+			ret = spi_nor_erase_sector(nor, addr);
+			if (ret)
 				goto erase_err;
-			}
 
 			addr += mtd->erasesize;
 			len -= mtd->erasesize;
@@ -988,7 +1011,7 @@ static int spansion_quad_enable(struct spi_nor *nor)
 static int spi_nor_check(struct spi_nor *nor)
 {
 	if (!nor->dev || !nor->read || !nor->write ||
-		!nor->read_reg || !nor->write_reg || !nor->erase) {
+		!nor->read_reg || !nor->write_reg) {
 		pr_err("spi-nor: please fill all the necessary fields!\n");
 		return -EINVAL;
 	}
@@ -1394,6 +1417,12 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 		nor->addr_width = 3;
 	}
 
+	if (nor->addr_width > SPI_NOR_MAX_ADDR_WIDTH) {
+		dev_err(dev, "address width is too large: %u\n",
+			nor->addr_width);
+		return -EINVAL;
+	}
+
 	dev_info(dev, "%s (%lld Kbytes)\n", id->name,
 			(long long)mtd->size >> 10);
 
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index eec5a890ebef..33413ff955bb 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -214,7 +214,8 @@ enum spi_nor_option_flags {
  * @read:		[DRIVER-SPECIFIC] read data from the SPI NOR
  * @write:		[DRIVER-SPECIFIC] write data to the SPI NOR
  * @erase:		[DRIVER-SPECIFIC] erase a sector of the SPI NOR
- *			at the offset @offs
+ *			at the offset @offs; if not provided by the driver,
+ *			spi-nor will send the erase opcode via write_reg()
  * @priv:		the private data
  */
 struct spi_nor {
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
