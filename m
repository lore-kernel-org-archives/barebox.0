Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22d.google.com ([2a00:1450:400c:c09::22d])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZzrUF-0000IA-Pg
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 19:36:48 +0000
Received: by wmec201 with SMTP id c201so34169902wme.1
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:25 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:36:05 +0100
Message-Id: <1448048172-10080-13-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 12/19] mtd: nand_mrvl_nfc: Prepare for different HW ECC
 strengths
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Newer versions of Marvell PXA3xx NFC also support BCH and therefore
higher ECC strengths than 1. Prepare for different ECC strength by
factoring out ECC init into separate functions by strength. Also,
add a new host variable that indicates BCH ECC.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Tested-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 36 +++++++++++++++++++++++++++++-------
 1 file changed, 29 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 8dcbc3dc045e..217aacd7201a 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -156,6 +156,7 @@ struct mrvl_nand_host {
 	int			num_cs;		/* avaiable CS signals */
 	int			cs;		/* selected chip 0/1 */
 	int			use_ecc;	/* use HW ECC ? */
+	int			ecc_bch;	/* HW ECC is BCH */
 	int			use_spare;	/* use spare ? */
 	int			flash_bbt;
 
@@ -824,32 +825,53 @@ static void mrvl_nand_config_flash(struct mrvl_nand_host *host)
 	host->reg_ndcr = ndcr;
 }
 
-static int pxa_ecc_init(struct mrvl_nand_host *host,
-			struct nand_ecc_ctrl *ecc,
-			int strength, int ecc_stepsize, int page_size)
+static int pxa_ecc_strength1(struct mrvl_nand_host *host,
+		struct nand_ecc_ctrl *ecc, int ecc_stepsize, int page_size)
 {
-	if (strength == 1 && ecc_stepsize == 512 && page_size == 2048) {
+	if (ecc_stepsize == 512 && page_size == 2048) {
 		host->chunk_size = 2048;
 		host->spare_size = 40;
 		host->ecc_size = 24;
+		host->ecc_bch = 0;
 		ecc->mode = NAND_ECC_HW;
 		ecc->size = 512;
 		ecc->strength = 1;
 		ecc->layout = &ecc_layout_2KB_hwecc;
+		return 0;
+	}
 
-	} else if (strength == 1 && ecc_stepsize == 512 && page_size == 512) {
+	if (ecc_stepsize == 512 && page_size == 512) {
 		host->chunk_size = 512;
 		host->spare_size = 8;
 		host->ecc_size = 8;
+		host->ecc_bch = 0;
 		ecc->mode = NAND_ECC_HW;
 		ecc->size = 512;
 		ecc->layout = &ecc_layout_512B_hwecc;
 		ecc->strength = 1;
-	} else {
+		return 0;
+	}
+
+	return -ENODEV;
+}
+
+static int pxa_ecc_init(struct mrvl_nand_host *host,
+			struct nand_ecc_ctrl *ecc,
+			int strength, int ecc_stepsize, int page_size)
+{
+	int ret = -ENODEV;
+
+	switch (strength) {
+	case 1:
+		ret = pxa_ecc_strength1(host, ecc, ecc_stepsize, page_size);
+		break;
+	}
+
+	if (ret) {
 		dev_err(host->dev,
 			"ECC strength %d at page size %d is not supported\n",
 			strength, page_size);
-		return -ENODEV;
+		return ret;
 	}
 
 	dev_info(host->dev, "ECC strength %d, ECC step size %d\n",
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
