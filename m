Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PyUHG-0008Om-0Z
	for barebox@lists.infradead.org; Sat, 12 Mar 2011 19:15:07 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 12 Mar 2011 20:14:54 +0100
Message-Id: <1299957297-8539-4-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/6] S3C24xx/NFC: Remove double function setup
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

Three lines above this setting is already done.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mtd/nand/nand_s3c2410.c |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index 05a6a87..94c075e 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -449,7 +449,6 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 	chip->ecc.calculate = s3c2410_nand_calculate_ecc;
 	chip->ecc.correct = s3c2410_nand_correct_data;
 	chip->ecc.hwctl = s3c2410_nand_enable_hwecc;
-	chip->ecc.calculate = s3c2410_nand_calculate_ecc;
 
 	/* our hardware capabilities */
 	chip->ecc.mode = NAND_ECC_HW;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
