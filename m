Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22f.google.com ([2a00:1450:400c:c09::22f])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZzrUG-0000IE-4b
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 19:36:49 +0000
Received: by wmvv187 with SMTP id v187so86249975wmv.1
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:26 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:36:08 +0100
Message-Id: <1448048172-10080-16-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 15/19] mtd: nand_mrvl_nfc: Add support for 8bit BCH HW ECC
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Add support for 8bit HW ECC modes supported by later IP versions.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Tested-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 3e9fccdffefe..f43200dcf2c7 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -252,6 +252,17 @@ static struct nand_ecclayout ecc_layout_4KB_bch4bit = {
 	.oobfree = { {1, 4}, {6, 26}, {64, 32} }
 };
 
+static struct nand_ecclayout ecc_layout_4KB_bch8bit = {
+	.eccbytes = 64,
+	.eccpos = {
+		32,  33,  34,  35,  36,  37,  38,  39,
+		40,  41,  42,  43,  44,  45,  46,  47,
+		48,  49,  50,  51,  52,  53,  54,  55,
+		56,  57,  58,  59,  60,  61,  62,  63},
+	/* Bootrom looks in bytes 0 & 5 for bad blocks */
+	.oobfree = { {1, 4}, {6, 26} }
+};
+
 #define NDTR0_tCH(c)	(min((c), 7) << 19)
 #define NDTR0_tCS(c)	(min((c), 7) << 16)
 #define NDTR0_tWH(c)	(min((c), 7) << 11)
@@ -928,6 +939,31 @@ static int pxa_ecc_strength4(struct mrvl_nand_host *host,
 	return -ENODEV;
 }
 
+static int pxa_ecc_strength8(struct mrvl_nand_host *host,
+		struct nand_ecc_ctrl *ecc, int ecc_stepsize, int page_size)
+{
+	if (!(host->hwflags & HWFLAGS_ECC_BCH))
+		return -ENODEV;
+
+	/*
+	 * Required ECC: 8-bit correction per 512 bytes
+	 * Select: 16-bit correction per 1024 bytes
+	 */
+	if (ecc_stepsize == 512 && page_size == 4096) {
+		host->chunk_size = 1024;
+		host->spare_size = 0;
+		host->ecc_size = 32;
+		host->ecc_bch = 1;
+		ecc->mode = NAND_ECC_HW;
+		ecc->size = 1024;
+		ecc->layout = &ecc_layout_4KB_bch8bit;
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
@@ -941,6 +977,9 @@ static int pxa_ecc_init(struct mrvl_nand_host *host,
 	case 4:
 		ret = pxa_ecc_strength4(host, ecc, ecc_stepsize, page_size);
 		break;
+	case 8:
+		ret = pxa_ecc_strength8(host, ecc, ecc_stepsize, page_size);
+		break;
 	}
 
 	if (ret) {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
