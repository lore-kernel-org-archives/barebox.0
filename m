Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xS-0003Yf-1F
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:51 +0100
Message-Id: <20201106133900.2656-18-s.hauer@pengutronix.de>
In-Reply-To: <20201106133900.2656-1-s.hauer@pengutronix.de>
References: <20201106133900.2656-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/26] mtd: nand: marvell: Use nand_to_mtd()
To: Barebox List <barebox@lists.infradead.org>

We have a function for getting from the struct nand_chip * to the struct
mtd_info *, so use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 26 ++++++++++++++++++--------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 76b487c3f8..892ce507a5 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -419,9 +419,12 @@ static void mrvl_nand_select_chip(struct nand_chip *chip, int chipnr)
  */
 static unsigned int mrvl_datasize(struct mrvl_nand_host *host)
 {
+	struct nand_chip *chip = &host->chip;
+	struct mtd_info *mtd = nand_to_mtd(chip);
+
 	unsigned int datasize;
 
-	datasize = host->chip.mtd.writesize;
+	datasize = mtd->writesize;
 	if (host->use_spare) {
 		datasize += host->spare_size;
 		if (!host->use_ecc)
@@ -531,6 +534,9 @@ static void set_command_address(struct mrvl_nand_host *host,
 
 static void prepare_start_command(struct mrvl_nand_host *host, int command)
 {
+	struct nand_chip *chip = &host->chip;
+	struct mtd_info *mtd = nand_to_mtd(chip);
+
 	/* reset data and oob column point to handle data */
 	host->buf_start		= 0;
 	host->buf_count		= 0;
@@ -573,7 +579,7 @@ static void prepare_start_command(struct mrvl_nand_host *host, int command)
 	if (command == NAND_CMD_READ0 ||
 	    command == NAND_CMD_READOOB ||
 	    command == NAND_CMD_SEQIN) {
-		host->buf_count = host->chip.mtd.writesize + host->chip.mtd.oobsize;
+		host->buf_count = mtd->writesize + mtd->oobsize;
 		memset(host->data_buff, 0xFF, host->buf_count);
 	}
 
@@ -590,10 +596,10 @@ static void prepare_start_command(struct mrvl_nand_host *host, int command)
 static int prepare_set_command(struct mrvl_nand_host *host, int command,
 		int ext_cmd_type, uint16_t column, int page_addr)
 {
+	struct nand_chip *chip = &host->chip;
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int addr_cycle, exec_cmd;
-	struct mtd_info *mtd;
 
-	mtd = &host->chip.mtd;
 	exec_cmd = 1;
 
 	if (host->cs != 0)
@@ -880,7 +886,7 @@ static void mrvl_nand_write_buf(struct nand_chip *chip,
 static void mrvl_nand_config_flash(struct mrvl_nand_host *host)
 {
 	struct nand_chip *chip = &host->chip;
-	struct mtd_info *mtd = &host->chip.mtd;
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	uint32_t ndcr = host->reg_ndcr;
 
 	/* calculate flash information */
@@ -1117,7 +1123,7 @@ static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
 	host = xzalloc(sizeof(*host));
 	host->num_cs = 1;
 	host->cs = 0;
-	mtd = &host->chip.mtd;
+	mtd = nand_to_mtd(&host->chip);
 	mtd->dev.parent = dev;
 	mtd->name = "mrvl_nand";
 
@@ -1204,6 +1210,8 @@ static int mrvl_nand_probe_dt(struct mrvl_nand_host *host)
 static int mrvl_nand_probe(struct device_d *dev)
 {
 	struct mrvl_nand_host *host;
+	struct nand_chip *chip;
+	struct mtd_info *mtd;
 	int ret;
 
 	host = alloc_nand_resource(dev);
@@ -1216,8 +1224,10 @@ static int mrvl_nand_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
-	host->chip.controller = &host->chip.hwcontrol;
-	ret = mrvl_nand_scan(&host->chip);
+	chip = &host->chip;
+	mtd = nand_to_mtd(chip);
+
+	ret = mrvl_nand_scan(chip);
 	if (ret) {
 		dev_warn(dev, "failed to scan nand at cs %d\n",
 			 host->cs);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
