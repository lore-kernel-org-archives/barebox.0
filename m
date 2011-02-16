Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pplsz-0001nN-8x
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 18:14:02 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Feb 2011 19:13:30 +0100
Message-Id: <1297880025-7184-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
References: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 05/20] MACH-S3C2440: Fix NAND controller for this CPU
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

There are a few but important differences in S3C2410 and S3C2440. This patch
fixes them for the S3C2440 CPU.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 drivers/mtd/nand/nand_s3c2410.c |   18 +++++++++++++++---
 1 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index 8a47dc6..76ea9db 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -77,14 +77,13 @@
 #define NFCMD 0x08
 #define NFADDR 0x0C
 #define NFDATA 0x10
-
-#define NFECC 0x1C
 #define NFSTAT 0x20
+#define NFECC 0x2C
 
 /* S3C2440 specific bits */
 #define NFSTAT_BUSY (1)
 #define NFCONT_nFCE (1 << 1)
-#define NFCONF_INITECC (1 << 12)
+#define NFCONT_INITECC (1 << 4)
 #define NFCONT_EN (1)
 
 #endif	/* CONFIG_CPU_S3C2440 */
@@ -272,7 +271,12 @@ static void s3c2410_nand_enable_hwecc(struct mtd_info *mtd, int mode)
 	struct nand_chip *nand_chip = mtd->priv;
 	struct s3c24x0_nand_host *host = nand_chip->priv;
 
+#ifdef CONFIG_CPU_S3C2410
 	writel(readl(host->base + NFCONF) | NFCONF_INITECC , host->base + NFCONF);
+#endif
+#ifdef CONFIG_CPU_S3C2440
+	writel(readl(host->base + NFCONT) | NFCONT_INITECC , host->base + NFCONT);
+#endif
 }
 
 static int s3c2410_nand_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat, uint8_t *ecc_code)
@@ -280,10 +284,18 @@ static int s3c2410_nand_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
 	struct nand_chip *nand_chip = mtd->priv;
 	struct s3c24x0_nand_host *host = nand_chip->priv;
 
+#ifdef CONFIG_CPU_S3C2410
 	ecc_code[0] = readb(host->base + NFECC);
 	ecc_code[1] = readb(host->base + NFECC + 1);
 	ecc_code[2] = readb(host->base + NFECC + 2);
+#endif
+#ifdef CONFIG_CPU_S3C2440
+	unsigned long ecc = readl(host->base + NFECC);
 
+	ecc_code[0] = ecc;
+	ecc_code[1] = ecc >> 8;
+	ecc_code[2] = ecc >> 16;
+#endif
 	return 0;
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
