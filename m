Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PyUHG-0008Oo-0t
	for barebox@lists.infradead.org; Sat, 12 Mar 2011 19:15:13 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 12 Mar 2011 20:14:53 +0100
Message-Id: <1299957297-8539-3-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/6] S3C24xx/NFC: Remove dead code
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@kreuzholzen.de>

From: Juergen Beisert <jbe@kreuzholzen.de>

Something was to be done here. But I do not remember what. As it works also
without it, remove this dead code.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mtd/nand/nand_s3c2410.c |    8 ++------
 1 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index 6ee3b83..05a6a87 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -272,8 +272,7 @@ static int s3c2410_nand_correct_data(struct mtd_info *mtd, uint8_t *dat,
 	 * to see if we have an 0xff,0xff,0xff read ECC and then ignore
 	 * the error, on the assumption that this is an un-eccd page.
 	 */
-	if (read_ecc[0] == 0xff && read_ecc[1] == 0xff && read_ecc[2] == 0xff
-		/* && info->platform->ignore_unset_ecc */)
+	if (read_ecc[0] == 0xff && read_ecc[1] == 0xff && read_ecc[2] == 0xff)
 		return 0;
 
 	/* Can we correct this ECC (ie, one row and column change).
@@ -431,10 +430,7 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 	mtd->priv = chip;
 
 	/* init the default settings */
-#if 0
-	/* TODO: Will follow later */
-	init_nand_chip_bw8(chip);
-#endif
+
 	/* 50 us command delay time */
 	chip->chip_delay = 50;
 	chip->priv = host;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
