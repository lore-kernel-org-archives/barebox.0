Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1agVna-0000S5-7f
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 11:09:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Mar 2016 12:08:34 +0100
Message-Id: <1458212919-30507-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] mtd: nand-imx: Fix v1 controller ECC code
To: Barebox List <barebox@lists.infradead.org>

The driver returns wrong values for the ECC correction. For 2k pages
the controller reads and corrects in chunks of 512 bytes. The ECC status
register values are overwritten with each each new chunk read, so after
reading for chunks the .correct callback wil only return the ECC errors
for the last 512 byte chunk. ECC errors in the other three chunks remain
undetected.
Fix this by accumulating the ECC status while reading the chunks and
return the accumulated value in the .correct callback. Also return
-EBADMSG for a bad message and not -1.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c | 33 +++++++++++++++++++++------------
 1 file changed, 21 insertions(+), 12 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 6ea82a1..f0b4afb 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -100,6 +100,7 @@ struct imx_nand_host {
 	unsigned int		buf_start;
 	int			spare_len;
 	int			eccsize;
+	int			eccstatus_v1;
 
 	int			hw_ecc;
 	int			data_width;
@@ -335,12 +336,17 @@ static void send_page_v1_v2(struct imx_nand_host *host,
 {
 	int bufs, i;
 
+	host->eccstatus_v1 = 0;
+
 	if (nfc_is_v1() && host->pagesize_2k)
 		bufs = 4;
 	else
 		bufs = 1;
 
 	for (i = 0; i < bufs; i++) {
+		u16 status;
+		int errors;
+
 		/* NANDFC buffer 0 is used for page read/write */
 		writew(i, host->regs + NFC_V1_V2_BUF_ADDR);
 
@@ -348,6 +354,14 @@ static void send_page_v1_v2(struct imx_nand_host *host,
 
 		/* Wait for operation to complete */
 		wait_op_done(host);
+
+		status = readw(host->regs + NFC_V1_ECC_STATUS_RESULT);
+		errors = max(status & 0x3, status >> 2);
+
+		if (errors == 1 && host->eccstatus_v1 >= 0)
+			host->eccstatus_v1++;
+		if (errors == 2)
+			host->eccstatus_v1 = -EBADMSG;
 	}
 }
 
@@ -489,20 +503,15 @@ static int imx_nand_correct_data_v1(struct mtd_info *mtd, u_char * dat,
 	struct nand_chip *nand_chip = mtd->priv;
 	struct imx_nand_host *host = nand_chip->priv;
 
-	/*
-	 * 1-Bit errors are automatically corrected in HW.  No need for
-	 * additional correction.  2-Bit errors cannot be corrected by
-	 * HW ECC, so we need to return failure
-	 */
-	u16 ecc_status = readw(host->regs + NFC_V1_ECC_STATUS_RESULT);
+	if (host->eccstatus_v1 < 0)
+		return host->eccstatus_v1;
 
-	if (((ecc_status & 0x3) == 2) || ((ecc_status >> 2) == 2)) {
-		MTD_DEBUG(MTD_DEBUG_LEVEL0,
-		      "MXC_NAND: HWECC uncorrectable 2-bit ECC error\n");
-		return -1;
-	}
+	mtd->ecc_stats.corrected += host->eccstatus_v1;
 
-	return 0;
+	if (host->eccstatus_v1 > 0)
+		return 1;
+	else
+		return 0;
 }
 
 static int imx_nand_correct_data_v2_v3(struct mtd_info *mtd, u_char *dat,
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
