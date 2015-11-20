Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-f43.google.com ([74.125.82.43])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzrUG-00042P-R9
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 19:36:57 +0000
Received: by wmec201 with SMTP id c201so34170564wme.1
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:26 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:36:10 +0100
Message-Id: <1448048172-10080-18-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 17/19] mtd: nand_mrvl_nfc: Add support for NDCB3 register
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Newer versions of PXA3xx NAND controller support a 4th Command Buffer
register. Add the required HWFLAGS and additional write to NDCB0.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>
Tested-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index a5ac66195217..fec18d1fc95a 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -53,6 +53,7 @@
 #define NDCB0		(0x48) /* Command Buffer0 */
 #define NDCB1		(0x4C) /* Command Buffer1 */
 #define NDCB2		(0x50) /* Command Buffer2 */
+#define NDCB3		(0x54) /* Command Buffer3 */
 
 #define NDCR_SPARE_EN		(0x1 << 31)
 #define NDCR_ECC_EN		(0x1 << 30)
@@ -150,6 +151,7 @@ struct mrvl_nand_host {
 	void __iomem		*mmio_base;
 	unsigned int		hwflags;
 #define HWFLAGS_ECC_BCH		BIT(0)
+#define HWFLAGS_HAS_NDCB3	BIT(1)
 
 	unsigned int		buf_start;
 	unsigned int		buf_count;
@@ -465,12 +467,19 @@ static void mrvl_nand_start(struct mrvl_nand_host *host)
 		dev_err(host->dev, "Waiting for command request failed\n");
 	} else {
 		/*
-		 * Writing 12 bytes to NDBC0 sets NDBC0, NDBC1 and NDBC2 !
+		 * Command buffer registers NDCB{0-2,3}
+		 * must be loaded by writing directly either 12 or 16
+		 * bytes directly to NDCB0, four bytes at a time.
+		 *
+		 * Direct write access to NDCB1, NDCB2 and NDCB3 is ignored
+		 * but each NDCBx register can be read.
 		 */
 		nand_writel(host, NDSR, NDSR_WRCMDREQ);
 		nand_writel(host, NDCB0, host->ndcb0);
 		nand_writel(host, NDCB0, host->ndcb1);
 		nand_writel(host, NDCB0, host->ndcb2);
+		if (host->hwflags & HWFLAGS_HAS_NDCB3)
+			nand_writel(host, NDCB0, host->ndcb3);
 	}
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
