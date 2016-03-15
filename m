Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1afn0o-0005Ty-AE
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:19:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:19:05 +0100
Message-Id: <1458040754-32240-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040754-32240-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040754-32240-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/11] mtd: nand: export nand_check_erased_buf
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c | 2 +-
 include/linux/mtd/nand.h     | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 7eef287..79c1edd 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -957,7 +957,7 @@ EXPORT_SYMBOL(nand_lock);
  * bitflips_threshold, or -ERROR_CODE for bitflips in excess of the
  * threshold.
  */
-static int nand_check_erased_buf(void *buf, int len, int bitflips_threshold)
+int nand_check_erased_buf(void *buf, int len, int bitflips_threshold)
 {
 	const unsigned char *bitmap = buf;
 	int bitflips = 0;
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index b787842..5beec39 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -50,6 +50,7 @@ extern int nand_check_erased_ecc_chunk(void *data, int datalen,
 				       void *ecc, int ecclen,
 				       void *extraoob, int extraooblen,
 				       int bitflips_threshold);
+int nand_check_erased_buf(void *buf, int len, int bitflips_threshold);
 
 /* The maximum number of NAND chips in an array */
 #define NAND_MAX_CHIPS		8
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
