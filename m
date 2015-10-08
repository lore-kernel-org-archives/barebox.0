Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkJKu-0001mW-Ko
 for barebox@lists.infradead.org; Thu, 08 Oct 2015 22:06:55 +0000
Received: by wiclk2 with SMTP id lk2so47137672wic.0
 for <barebox@lists.infradead.org>; Thu, 08 Oct 2015 15:06:30 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  9 Oct 2015 00:06:14 +0200
Message-Id: <1444341979-19157-13-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 12/17] mtd: nand_mrvl_nfc: Add support for 4bit BCH HW ECC
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Add support for 4bit HW ECC modes supported by later IP versions.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: barebox@lists.infradead.org
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 65 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 8a05fc88824b..2fb9823d1497 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -222,6 +222,31 @@ static struct nand_ecclayout ecc_layout_2KB_hwecc = {
 	.oobfree = { {0, 40} }
 };
 
+static struct nand_ecclayout ecc_layout_2KB_bch4bit = {
+	.eccbytes = 32,
+	.eccpos = {
+		32, 33, 34, 35, 36, 37, 38, 39,
+		40, 41, 42, 43, 44, 45, 46, 47,
+		48, 49, 50, 51, 52, 53, 54, 55,
+		56, 57, 58, 59, 60, 61, 62, 63},
+	.oobfree = { {2, 30} }
+};
+
+static struct nand_ecclayout ecc_layout_4KB_bch4bit = {
+	.eccbytes = 64,
+	.eccpos = {
+		32,  33,  34,  35,  36,  37,  38,  39,
+		40,  41,  42,  43,  44,  45,  46,  47,
+		48,  49,  50,  51,  52,  53,  54,  55,
+		56,  57,  58,  59,  60,  61,  62,  63,
+		96,  97,  98,  99,  100, 101, 102, 103,
+		104, 105, 106, 107, 108, 109, 110, 111,
+		112, 113, 114, 115, 116, 117, 118, 119,
+		120, 121, 122, 123, 124, 125, 126, 127},
+	/* Bootrom looks in bytes 0 & 5 for bad blocks */
+	.oobfree = { {1, 4}, {6, 26}, {64, 32} }
+};
+
 #define NDTR0_tCH(c)	(min((c), 7) << 19)
 #define NDTR0_tCS(c)	(min((c), 7) << 16)
 #define NDTR0_tWH(c)	(min((c), 7) << 11)
@@ -859,6 +884,43 @@ static int pxa_ecc_strength1(struct mrvl_nand_host *host,
 	return -ENODEV;
 }
 
+static int pxa_ecc_strength4(struct mrvl_nand_host *host,
+		struct nand_ecc_ctrl *ecc, int ecc_stepsize, int page_size)
+{
+	if (!(host->hwflags & HWFLAGS_ECC_BCH))
+		return -ENODEV;
+
+	/*
+	 * Required ECC: 4-bit correction per 512 bytes
+	 * Select: 16-bit correction per 2048 bytes
+	 */
+	if (ecc_stepsize == 512 && page_size == 2048) {
+		host->chunk_size = 2048;
+		host->spare_size = 32;
+		host->ecc_size = 32;
+		host->ecc_bch = 1;
+		ecc->mode = NAND_ECC_HW;
+		ecc->size = 2048;
+		ecc->layout = &ecc_layout_2KB_bch4bit;
+		ecc->strength = 16;
+		return 0;
+	}
+
+	if (ecc_stepsize == 512 && page_size == 4096) {
+		host->chunk_size = 2048;
+		host->spare_size = 32;
+		host->ecc_size = 32;
+		host->ecc_bch = 1;
+		ecc->mode = NAND_ECC_HW;
+		ecc->size = 2048;
+		ecc->layout = &ecc_layout_4KB_bch4bit;
+		ecc->strength = 16;
+		return 0;
+	}
+
+	return -ENODEV;
+}
+
 static int pxa_ecc_init(struct mrvl_nand_host *host,
 			struct nand_ecc_ctrl *ecc,
 			int strength, int ecc_stepsize, int page_size)
@@ -869,6 +931,9 @@ static int pxa_ecc_init(struct mrvl_nand_host *host,
 	case 1:
 		ret = pxa_ecc_strength1(host, ecc, ecc_stepsize, page_size);
 		break;
+	case 4:
+		ret = pxa_ecc_strength4(host, ecc, ecc_stepsize, page_size);
+		break;
 	}
 
 	if (ret) {
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
