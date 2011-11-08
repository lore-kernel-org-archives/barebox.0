Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RNlJV-0005Dh-Gc
 for barebox@lists.infradead.org; Tue, 08 Nov 2011 13:02:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2011 14:01:50 +0100
Message-Id: <1320757313-12568-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1320757313-12568-1-git-send-email-s.hauer@pengutronix.de>
References: <1320757313-12568-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] mtd nand omap: make debugging output more useful
To: barebox@lists.infradead.org

- add missing '\n' at line ends
- fix wrong argument type warnings
- remove too noisy debug in omap_hwcontrol
- add function names to debug printfs
- add 0x prefixes to hex values

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c |   27 ++++++++++-----------------
 1 files changed, 10 insertions(+), 17 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 50e0544..e3c77ec 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -194,14 +194,13 @@ static int omap_dev_ready(struct mtd_info *mtd)
 	uint64_t start = get_time_ns();
 	unsigned long comp;
 
-	debug("mtd=%x", (unsigned int)mtd);
 	/* What do we mean by assert and de-assert? */
 	comp = (oinfo->wait_pol == NAND_WAITPOL_HIGH) ?
 	    oinfo->wait_mon_mask : 0x0;
 	while (1) {
 		/* Breakout condition */
 		if (is_timeout(start, oinfo->timeout)) {
-			debug("timedout\n");
+			debug("%s timedout\n", __func__);
 			return -ETIMEDOUT;
 		}
 		/* if the wait is released, we are good to go */
@@ -226,7 +225,8 @@ static void gpmc_nand_wp(struct gpmc_nand_info *oinfo, int mode)
 {
 	unsigned long config = readl(oinfo->gpmc_base + GPMC_CFG);
 
-	debug("mode=%x", mode);
+	debug("%s: mode=%x\n", __func__, mode);
+
 	if (mode)
 		config &= ~(NAND_WP_BIT);	/* WP is ON */
 	else
@@ -251,8 +251,7 @@ static void omap_hwcontrol(struct mtd_info *mtd, int cmd, unsigned int ctrl)
 {
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-	debug("mtd=%x nand=%x cmd=%x ctrl = %x", (unsigned int)mtd, nand,
-		  cmd, ctrl);
+
 	switch (ctrl) {
 	case NAND_CTRL_CHANGE | NAND_CTRL_CLE:
 		nand->IO_ADDR_W = oinfo->gpmc_command;
@@ -285,8 +284,9 @@ static void omap_hwcontrol(struct mtd_info *mtd, int cmd, unsigned int ctrl)
  */
 static unsigned int gen_true_ecc(u8 *ecc_buf)
 {
-	debug("ecc_buf=%x 1, 2 3 = %x %x %x", (unsigned int)ecc_buf,
+	debug("%s: eccbuf:  0x%02x 0x%02x 0x%02x\n", __func__,
 		  ecc_buf[0], ecc_buf[1], ecc_buf[2]);
+
 	return ecc_buf[0] | (ecc_buf[1] << 16) | ((ecc_buf[2] & 0xF0) << 20) |
 	    ((ecc_buf[2] & 0x0F) << 8);
 }
@@ -476,9 +476,7 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
 
-	debug("mtd=%x dat=%x read_ecc=%x calc_ecc=%x", (unsigned int)mtd,
-		  (unsigned int)dat, (unsigned int)read_ecc,
-		  (unsigned int)calc_ecc);
+	debug("%s\n", __func__);
 
 	switch (oinfo->ecc_mode) {
 	case OMAP_ECC_HAMMING_CODE_HW_ROMCODE:
@@ -766,14 +764,9 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	oinfo->gpmc_address = (void *)(cs_base + GPMC_CS_NAND_ADDRESS);
 	oinfo->gpmc_data = (void *)(cs_base + GPMC_CS_NAND_DATA);
 	oinfo->timeout = pdata->max_timeout;
-	debug("GPMC Details:\n"
-		"GPMC BASE=%x\n"
-		"CMD=%x\n"
-		"ADDRESS=%x\n"
-		"DATA=%x\n"
-		"CS_BASE=%x\n",
-		oinfo->gpmc_base, oinfo->gpmc_command,
-		oinfo->gpmc_address, oinfo->gpmc_data, cs_base);
+	dev_dbg(pdev, "GPMC base=0x%p cmd=0x%p address=0x%p data=0x%p cs_base=0x%p\n",
+		oinfo->gpmc_base, oinfo->gpmc_command, oinfo->gpmc_address,
+		oinfo->gpmc_data, cs_base);
 
 	/* If we are 16 bit dev, our gpmc config tells us that */
 	if ((readl(cs_base) & 0x3000) == 0x1000) {
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
