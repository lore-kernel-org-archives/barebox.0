Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22e.google.com ([2a00:1450:400c:c09::22e])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZzrUF-0000IC-Pm
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 19:36:49 +0000
Received: by wmdw130 with SMTP id w130so31972880wmd.0
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:25 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:36:07 +0100
Message-Id: <1448048172-10080-15-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 14/19] mtd: nand_mrvl_nfc: Add support for 4bit BCH HW ECC
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Add support for 4bit HW ECC modes supported by later IP versions.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Tested-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 65 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index ac1cb3fa9ae3..3e9fccdffefe 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -227,6 +227,31 @@ static struct nand_ecclayout ecc_layout_2KB_hwecc = {
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
@@ -866,6 +891,43 @@ static int pxa_ecc_strength1(struct mrvl_nand_host *host,
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
@@ -876,6 +938,9 @@ static int pxa_ecc_init(struct mrvl_nand_host *host,
 	case 1:
 		ret = pxa_ecc_strength1(host, ecc, ecc_stepsize, page_size);
 		break;
+	case 4:
+		ret = pxa_ecc_strength4(host, ecc, ecc_stepsize, page_size);
+		break;
 	}
 
 	if (ret) {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
