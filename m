Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U07x3-0005AG-BE
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 09:58:01 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 29 Jan 2013 10:58:02 +0100
Message-Id: <1359453482-6583-2-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1359453482-6583-1-git-send-email-jlu@pengutronix.de>
References: <1359453482-6583-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 2/2] nand_omap_gpmc: use 0x00 for ECC padding in BCH ROM mode
To: barebox@lists.infradead.org

The kernel uses these bytes to differentiate between erased/programmed
pages.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c |   30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 9050a8d..b81ad53 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -751,6 +751,35 @@ static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
 	return 0;
 }
 
+static void omap_gpmc_write_page_bch_rom_mode(struct mtd_info *mtd, struct nand_chip *chip,
+				  const uint8_t *buf)
+{
+	int i, eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	uint8_t *ecc_calc = chip->buffers->ecccalc;
+	const uint8_t *p = buf;
+	uint32_t *eccpos = chip->ecc.layout->eccpos;
+
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
+		chip->ecc.hwctl(mtd, NAND_ECC_WRITE);
+		chip->write_buf(mtd, p, eccsize);
+		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
+	}
+
+	for (i = 0; i < chip->ecc.total; i++)
+		chip->oob_poi[eccpos[i]] = ecc_calc[i];
+
+	/*
+	 * set padding byte for each subpage to 0x00, so the kernel
+	 * can detect erased pages
+	 */
+	for (i = 0; i < 4; i++) {
+		chip->oob_poi[1+14*(i+1)] = 0x00;
+	}
+
+	chip->write_buf(mtd, chip->oob_poi, mtd->oobsize);
+}
 static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 		enum gpmc_ecc_mode mode)
 {
@@ -823,6 +852,7 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 		oinfo->nand.ecc.bytes    = 4 * 13;
 		oinfo->nand.ecc.size     = 4 * 512;
 		nand->ecc.read_page = omap_gpmc_read_page_bch_rom_mode;
+		nand->ecc.write_page = omap_gpmc_write_page_bch_rom_mode;
 		omap_oobinfo.oobfree->length = 0;
 		j = 0;
 		for (i = 2; i < 15; i++)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
