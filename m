Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tbvcn-0005TK-HJ
 for barebox@lists.infradead.org; Fri, 23 Nov 2012 15:57:07 +0000
Received: from mail607.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 31AF8FF9871
 for <barebox@lists.infradead.org>; Fri, 23 Nov 2012 17:08:11 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 23 Nov 2012 16:55:04 +0100
Message-Id: <1353686104-31295-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1353686104-31295-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121123155224.GV8327@game.jcrosoft.org>
 <1353686104-31295-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] Revert "mtd: atmel_nand: optimize read/write buffer
 functions"
To: barebox@lists.infradead.org

As in the kernel we revert as this was supposed to work but does not yet
this may need more work on the smc to be able to use it
So for now revert it

This reverts commit 809f0f6327241504b5071622a8d573255f91a875.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/nand/atmel_nand.c |   33 +++++++++++++++++++++++++--------
 1 file changed, 25 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 0477178..69e8171 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -159,16 +159,30 @@ static int atmel_nand_device_ready(struct mtd_info *mtd)
  */
 static void atmel_read_buf(struct mtd_info *mtd, u8 *buf, int len)
 {
-	struct nand_chip *chip = mtd->priv;
+	struct nand_chip	*nand_chip = mtd->priv;
 
-	memcpy_fromio(buf, chip->IO_ADDR_R, len);
+	readsb(nand_chip->IO_ADDR_R, buf, len);
+}
+
+static void atmel_read_buf16(struct mtd_info *mtd, u8 *buf, int len)
+{
+	struct nand_chip	*nand_chip = mtd->priv;
+
+	readsw(nand_chip->IO_ADDR_R, buf, len / 2);
 }
 
 static void atmel_write_buf(struct mtd_info *mtd, const u8 *buf, int len)
 {
-	struct nand_chip *chip = mtd->priv;
+	struct nand_chip	*nand_chip = mtd->priv;
 
-	memcpy_toio(chip->IO_ADDR_W, buf, len);
+	writesb(nand_chip->IO_ADDR_W, buf, len);
+}
+
+static void atmel_write_buf16(struct mtd_info *mtd, const u8 *buf, int len)
+{
+	struct nand_chip	*nand_chip = mtd->priv;
+
+	writesw(nand_chip->IO_ADDR_W, buf, len / 2);
 }
 
 /*
@@ -1112,11 +1126,14 @@ static int __init atmel_nand_probe(struct device_d *dev)
 
 	nand_chip->chip_delay = 20;		/* 20us command delay time */
 
-	if (host->board->bus_width_16)		/* 16-bit bus width */
+	if (host->board->bus_width_16) {	/* 16-bit bus width */
 		nand_chip->options |= NAND_BUSWIDTH_16;
-
-	nand_chip->read_buf = atmel_read_buf;
-	nand_chip->write_buf = atmel_write_buf;
+		nand_chip->read_buf = atmel_read_buf16;
+		nand_chip->write_buf = atmel_write_buf16;
+	} else {
+		nand_chip->read_buf = atmel_read_buf;
+		nand_chip->write_buf = atmel_write_buf;
+	}
 
 	atmel_nand_enable(host);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
