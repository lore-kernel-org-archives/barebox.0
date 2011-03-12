Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PyUHG-0008Op-0N
	for barebox@lists.infradead.org; Sat, 12 Mar 2011 19:15:07 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 12 Mar 2011 20:14:56 +0100
Message-Id: <1299957297-8539-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1299957297-8539-1-git-send-email-jbe@pengutronix.de>
References: <1299957297-8539-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 5/6] S3C24xx/NFC: Setup ECC handling in accordance to the
	kernel
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

Do the same ECC handling and ECC size in barebox than the kernel does.
Currently its done for S3C2440 based systems only, as I have no idea how to
manage it on a S3C2410 based system.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mtd/nand/nand_s3c2410.c |   21 +++++++++++++++++----
 1 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index 84f6061..2ae9861 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -450,11 +450,24 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 	chip->ecc.correct = s3c2410_nand_correct_data;
 	chip->ecc.hwctl = s3c2410_nand_enable_hwecc;
 
-	/* our hardware capabilities */
+	/*
+	 * Setup ECC handling in accordance to the kernel
+	 * - 1 times 512 bytes with 24 bit ECC for small page
+	 * - 8 times 256 bytes with 24 bit ECC each for large page
+	 */
 	chip->ecc.mode = NAND_ECC_HW;
-	chip->ecc.size = 512;
-	chip->ecc.bytes = 3;
-	chip->ecc.layout = &nand_hw_eccoob;
+	chip->ecc.bytes = 3;	/* always 24 bit ECC per turn */
+#ifdef CONFIG_CPU_S3C2440
+	if (readl(host->base) & 0x8) {
+		/* large page (2048 bytes per page) */
+		chip->ecc.size = 256;
+	} else
+#endif
+	{
+		/* small page (512 bytes per page) */
+		chip->ecc.size = 512;
+		chip->ecc.layout = &nand_hw_eccoob;
+	}
 
 	if (pdata->flash_bbt) {
 		/* use a flash based bbt */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
