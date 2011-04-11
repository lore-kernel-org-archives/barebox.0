Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9HpA-0005wN-9v
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:10:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:10:34 +0200
Message-Id: <1302531036-27906-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302531036-27906-1-git-send-email-s.hauer@pengutronix.de>
References: <1302531036-27906-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] nand omap: use standard debug functions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c |   27 ++++++++-------------------
 1 files changed, 8 insertions(+), 19 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 74f2da6..7874810 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -76,16 +76,6 @@
 #include <mach/gpmc.h>
 #include <mach/gpmc_nand.h>
 
-/* Enable me to get tons of debug messages -for use without jtag */
-#if 0
-#define gpmcnand_dbg(FORMAT, ARGS...) fprintf(stdout,\
-		"gpmc_nand:%s:%d:Entry:"FORMAT"\n",\
-		__func__, __LINE__, ARGS)
-#else
-#define gpmcnand_dbg(FORMAT, ARGS...)
-#endif
-#define gpmcnand_err(ARGS...) fprintf(stderr, "omapnand: " ARGS);
-
 int decode_bch(int select_4_8, unsigned char *ecc, unsigned int *err_loc);
 
 static char *ecc_mode_strings[] = {
@@ -190,14 +180,14 @@ static int omap_dev_ready(struct mtd_info *mtd)
 	uint64_t start = get_time_ns();
 	unsigned long comp;
 
-	gpmcnand_dbg("mtd=%x", (unsigned int)mtd);
+	debug("mtd=%x", (unsigned int)mtd);
 	/* What do we mean by assert and de-assert? */
 	comp = (oinfo->wait_pol == NAND_WAITPOL_HIGH) ?
 	    oinfo->wait_mon_mask : 0x0;
 	while (1) {
 		/* Breakout condition */
 		if (is_timeout(start, oinfo->timeout)) {
-			gpmcnand_err("timedout\n");
+			debug("timedout\n");
 			return -ETIMEDOUT;
 		}
 		/* if the wait is released, we are good to go */
@@ -222,7 +212,7 @@ static void gpmc_nand_wp(struct gpmc_nand_info *oinfo, int mode)
 {
 	unsigned long config = readl(oinfo->gpmc_base + GPMC_CFG);
 
-	gpmcnand_dbg("mode=%x", mode);
+	debug("mode=%x", mode);
 	if (mode)
 		config &= ~(NAND_WP_BIT);	/* WP is ON */
 	else
@@ -247,7 +237,7 @@ static void omap_hwcontrol(struct mtd_info *mtd, int cmd, unsigned int ctrl)
 {
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-	gpmcnand_dbg("mtd=%x nand=%x cmd=%x ctrl = %x", (unsigned int)mtd, nand,
+	debug("mtd=%x nand=%x cmd=%x ctrl = %x", (unsigned int)mtd, nand,
 		  cmd, ctrl);
 	switch (ctrl) {
 	case NAND_CTRL_CHANGE | NAND_CTRL_CLE:
@@ -281,7 +271,7 @@ static void omap_hwcontrol(struct mtd_info *mtd, int cmd, unsigned int ctrl)
  */
 static unsigned int gen_true_ecc(u8 *ecc_buf)
 {
-	gpmcnand_dbg("ecc_buf=%x 1, 2 3 = %x %x %x", (unsigned int)ecc_buf,
+	debug("ecc_buf=%x 1, 2 3 = %x %x %x", (unsigned int)ecc_buf,
 		  ecc_buf[0], ecc_buf[1], ecc_buf[2]);
 	return ecc_buf[0] | (ecc_buf[1] << 16) | ((ecc_buf[2] & 0xF0) << 20) |
 	    ((ecc_buf[2] & 0x0F) << 8);
@@ -375,7 +365,7 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 	int blockCnt = 0;
 	int select_4_8;
 
-	gpmcnand_dbg("mtd=%x dat=%x read_ecc=%x calc_ecc=%x", (unsigned int)mtd,
+	debug("mtd=%x dat=%x read_ecc=%x calc_ecc=%x", (unsigned int)mtd,
 		  (unsigned int)dat, (unsigned int)read_ecc,
 		  (unsigned int)calc_ecc);
 
@@ -404,11 +394,11 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 				/* Flip the bit to correct */
 				dat[byte] ^= (0x1 << bit);
 			} else if (hm == 1) {
-				gpmcnand_err("Ecc is wrong\n");
+				printf("Ecc is wrong\n");
 				/* ECC itself is corrupted */
 				return 2;
 			} else {
-				gpmcnand_err("bad compare! failed\n");
+				printf("bad compare! failed\n");
 				/* detected 2 bit error */
 				return -1;
 			}
@@ -679,7 +669,6 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	int err;
 	struct nand_ecclayout *layout, *lsp, *llp;
 
-	gpmcnand_dbg("pdev=%x", (unsigned int)pdev);
 	pdata = (struct gpmc_nand_platform_data *)pdev->platform_data;
 	if (pdata == NULL) {
 		dev_dbg(pdev, "platform data missing\n");
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
