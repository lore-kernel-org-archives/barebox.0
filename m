Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rh0qL-0000MK-MP
 for barebox@lists.infradead.org; Sat, 31 Dec 2011 15:27:37 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 46E7BDC37BB
 for <barebox@lists.infradead.org>; Sat, 31 Dec 2011 16:28:25 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 31 Dec 2011 16:21:29 +0100
Message-Id: <1325344898-7076-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111231151655.GB945@game.jcrosoft.org>
References: <20111231151655.GB945@game.jcrosoft.org>
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
Subject: [PATCH 03/12] mtd: atmel_nand: optimize read/write buffer functions
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

For PIO NAND access functions, we use the features of the SMC:
 - no need to take into account the NAND bus width: SMC will deal with this
 - use of an IO memcpy on the NAND chip-select space is able to generate
   proper SMC behavior.

Signed-off-by: Nicolas Ferre <nicolas.ferre@atmel.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/nand/atmel_nand.c |   33 ++++++++-------------------------
 1 files changed, 8 insertions(+), 25 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index d539a25..731ec0b 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -148,30 +148,16 @@ static int atmel_nand_device_ready(struct mtd_info *mtd)
  */
 static void atmel_read_buf(struct mtd_info *mtd, u8 *buf, int len)
 {
-	struct nand_chip	*nand_chip = mtd->priv;
+	struct nand_chip *chip = mtd->priv;
 
-	readsb(nand_chip->IO_ADDR_R, buf, len);
-}
-
-static void atmel_read_buf16(struct mtd_info *mtd, u8 *buf, int len)
-{
-	struct nand_chip	*nand_chip = mtd->priv;
-
-	readsw(nand_chip->IO_ADDR_R, buf, len / 2);
+	memcpy_fromio(buf, chip->IO_ADDR_R, len);
 }
 
 static void atmel_write_buf(struct mtd_info *mtd, const u8 *buf, int len)
 {
-	struct nand_chip	*nand_chip = mtd->priv;
+	struct nand_chip *chip = mtd->priv;
 
-	writesb(nand_chip->IO_ADDR_W, buf, len);
-}
-
-static void atmel_write_buf16(struct mtd_info *mtd, const u8 *buf, int len)
-{
-	struct nand_chip	*nand_chip = mtd->priv;
-
-	writesw(nand_chip->IO_ADDR_W, buf, len / 2);
+	memcpy_toio(chip->IO_ADDR_W, buf, len);
 }
 
 /*
@@ -417,14 +403,11 @@ static int __init atmel_nand_probe(struct device_d *dev)
 
 	nand_chip->chip_delay = 20;		/* 20us command delay time */
 
-	if (host->board->bus_width_16) {	/* 16-bit bus width */
+	if (host->board->bus_width_16)		/* 16-bit bus width */
 		nand_chip->options |= NAND_BUSWIDTH_16;
-		nand_chip->read_buf = atmel_read_buf16;
-		nand_chip->write_buf = atmel_write_buf16;
-	} else {
-		nand_chip->read_buf = atmel_read_buf;
-		nand_chip->write_buf = atmel_write_buf;
-	}
+
+	nand_chip->read_buf = atmel_read_buf;
+	nand_chip->write_buf = atmel_write_buf;
 
 	atmel_nand_enable(host);
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
