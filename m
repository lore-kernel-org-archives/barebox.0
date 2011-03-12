Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PyUHG-0008Ol-0H
	for barebox@lists.infradead.org; Sat, 12 Mar 2011 19:15:13 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 12 Mar 2011 20:14:57 +0100
Message-Id: <1299957297-8539-7-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 6/6] S3C24xx/NFC: Add OOB/ECC handling documentation for
	different NANDs
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mtd/nand/nand_s3c2410.c |   21 ++++++++++++++++++---
 1 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index 2ae9861..88e89cd 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -99,7 +99,7 @@ struct s3c24x0_nand_host {
 };
 
 /**
- * oob placement block for use with hardware ecc generation
+ * oob placement block for use with hardware ecc generation on small page
  */
 static struct nand_ecclayout nand_hw_eccoob = {
 	.eccbytes = 3,
@@ -247,13 +247,13 @@ static void s3c2440_nand_write_buf(struct mtd_info *mtd, const uint8_t *buf,
 
 /**
  * Check the ECC and try to repair the data if possible
- * @param[in] mtd_info FIXME
+ * @param[in] mtd_info Not used
  * @param[inout] dat Pointer to the data buffer that might contain a bit error
  * @param[in] read_ecc ECC data from the OOB space
  * @param[in] calc_ecc ECC data calculated from the data
  * @return 0 no error, 1 repaired error, -1 no way...
  *
- * @note: Alsways 512 byte of data
+ * @note: This routine works always on a 24 bit ECC
  */
 static int s3c2410_nand_correct_data(struct mtd_info *mtd, uint8_t *dat,
 				uint8_t *read_ecc, uint8_t *calc_ecc)
@@ -648,3 +648,18 @@ static int __init s3c24x0_nand_init(void)
 }
 
 device_initcall(s3c24x0_nand_init);
+
+/**
+ * @file
+ * @brief Support for various kinds of NAND devices
+ *
+ * ECC handling in this driver (in accordance to the current 2.6.38 kernel):
+ * - for small page NANDs it generates 3 ECC bytes out of 512 data bytes
+ * - for large page NANDs it generates 24 ECC bytes out of 2048 data bytes
+ *
+ * As small page NANDs are using 48 bits ECC per default, this driver uses a
+ * local OOB layout description, to shrink it down to 24 bits. This is a bad
+ * idea, but we cannot change it here, as the kernel is using this layout.
+ *
+ * For large page NANDs this driver uses the default layout, as the kernel does.
+ */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
