Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PGC3p-0005Pj-7w
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 14:54:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Nov 2010 15:53:52 +0100
Message-Id: <1289400839-5937-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
References: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/13] imx nand: do not read-modify-write SPAS register
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c |   31 ++++++++-----------------------
 1 files changed, 8 insertions(+), 23 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 22251e4..62a23d5 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -975,19 +975,11 @@ static int __init imxnd_probe(struct device_d *dev)
 	if (mtd->writesize == 2048) {
 		this->ecc.layout = oob_largepage;
 		host->pagesize_2k = 1;
-		if (nfc_is_v21()) {
-			tmp = readw(host->regs + NFC_SPAS);
-			tmp &= 0xff00;
-			tmp |= NFC_SPAS_64;
-			writew(tmp, host->regs + NFC_SPAS);
-		}
+		if (nfc_is_v21())
+			writew(NFC_SPAS_64, host->regs + NFC_SPAS);
 	} else {
-		if (nfc_is_v21()) {
-			tmp = readw(host->regs + NFC_SPAS);
-			tmp &= 0xff00;
-			tmp |= NFC_SPAS_16;
-			writew(tmp, host->regs + NFC_SPAS);
-		}
+		if (nfc_is_v21())
+			writew(NFC_SPAS_16, host->regs + NFC_SPAS);
 	}
 
 	/* second phase scan */
@@ -1186,17 +1178,10 @@ void __nand_boot_init imx_nand_load_image(void *dest, int size)
 	writew(tmp, regs + NFC_CONFIG1);
 
 	if (nfc_is_v21()) {
-		if (pagesize_2k) {
-			tmp = readw(regs + NFC_SPAS);
-			tmp &= 0xff00;
-			tmp |= NFC_SPAS_64;
-			writew(tmp, regs + NFC_SPAS);
-		} else {
-			tmp = readw(regs + NFC_SPAS);
-			tmp &= 0xff00;
-			tmp |= NFC_SPAS_16;
-			writew(tmp, regs + NFC_SPAS);
-		}
+		if (pagesize_2k)
+			writew(NFC_SPAS_64, regs + NFC_SPAS);
+		else
+			writew(NFC_SPAS_16, regs + NFC_SPAS);
 	}
 
 	block = page = 0;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
