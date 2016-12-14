Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cH4UD-00018D-F4
 for barebox@lists.infradead.org; Wed, 14 Dec 2016 08:00:26 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 435D6A00419
 for <barebox@lists.infradead.org>; Wed, 14 Dec 2016 09:00:54 +0100 (CET)
From: Jan Remmet <j.remmet@phytec.de>
Date: Wed, 14 Dec 2016 09:00:03 +0100
Message-Id: <1481702404-8748-1-git-send-email-j.remmet@phytec.de>
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
Subject: [PATCH 1/2] imx-bbu-nand-fcb: split up read_fcb
To: barebox@lists.infradead.org

There are other ecc modes for the fcb out there.

Signed-off-by: Jan Remmet <j.remmet@phytec.de>
---
 common/imx-bbu-nand-fcb.c | 83 +++++++++++++++++++++++++++--------------------
 1 file changed, 47 insertions(+), 36 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 1db4c5a..34a5f83 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -167,6 +167,46 @@ static uint32_t calc_chksum(void *buf, size_t size)
 	return ~chksum;
 }
 
+struct fcb_block *read_fcb_hamming_13_8(void *rawpage)
+{
+	int i;
+	int bitflips = 0, bit_to_flip;
+	u8 parity, np, syndrome;
+	u8 *fcb, *ecc;
+
+	fcb = rawpage + 12;
+	ecc = rawpage + 512 + 12;
+
+	for (i = 0; i < 512; i++) {
+		parity = ecc[i];
+		np = calculate_parity_13_8(fcb[i]);
+
+		syndrome = np ^ parity;
+		if (syndrome == 0)
+			continue;
+
+		if (!(hweight8(syndrome) & 1)) {
+			pr_err("Uncorrectable error at offset %d\n", i);
+			return ERR_PTR(-EIO);
+		}
+
+		bit_to_flip = lookup_single_error_13_8(syndrome);
+		if (bit_to_flip < 0) {
+			pr_err("Uncorrectable error at offset %d\n", i);
+			return ERR_PTR(-EIO);
+		}
+
+		bitflips++;
+
+		if (bit_to_flip > 7)
+			ecc[i] ^= 1 << (bit_to_flip - 8);
+		else
+			fcb[i] ^= 1 << bit_to_flip;
+	}
+
+	return xmemdup(rawpage + 12, 512);
+}
+
 static __maybe_unused void dump_fcb(void *buf)
 {
 	struct fcb_block *fcb = buf;
@@ -258,11 +298,8 @@ static ssize_t raw_write_page(struct mtd_info *mtd, void *buf, loff_t offset)
 
 static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
 {
-	int i;
-	int bitflips = 0, bit_to_flip;
-	u8 parity, np, syndrome;
-	u8 *fcb, *ecc;
 	int ret;
+	struct fcb_block *fcb;
 	void *rawpage;
 
 	*retfcb = NULL;
@@ -275,40 +312,14 @@ static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
 		goto err;
 	}
 
-	fcb = rawpage + 12;
-	ecc = rawpage + 512 + 12;
-
-	for (i = 0; i < 512; i++) {
-		parity = ecc[i];
-		np = calculate_parity_13_8(fcb[i]);
-
-		syndrome = np ^ parity;
-		if (syndrome == 0)
-			continue;
-
-		if (!(hweight8(syndrome) & 1)) {
-			pr_err("Uncorrectable error at offset %d\n", i);
-			ret = -EIO;
-			goto err;
-		}
-
-		bit_to_flip = lookup_single_error_13_8(syndrome);
-		if (bit_to_flip < 0) {
-			pr_err("Uncorrectable error at offset %d\n", i);
-			ret = -EIO;
-			goto err;
-		}
-
-		bitflips++;
-
-		if (bit_to_flip > 7)
-			ecc[i] ^= 1 << (bit_to_flip - 8);
-		else
-			fcb[i] ^= 1 << bit_to_flip;
+	fcb = read_fcb_hamming_13_8(rawpage);
+	if (IS_ERR(fcb)) {
+		pr_err("Cannot read fcb\n");
+		ret = PTR_ERR(fcb);
+		goto err;
 	}
 
-	*retfcb = xmemdup(rawpage + 12, 512);
-
+	*retfcb = fcb;
 	ret = 0;
 err:
 	free(rawpage);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
