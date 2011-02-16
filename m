Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pplsz-0001nM-95
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 18:14:00 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Feb 2011 19:13:29 +0100
Message-Id: <1297880025-7184-5-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 04/20] MACH-S3C24XX: Add support for flash based BBT
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

The default configuration of the current 2.6.37 kernel uses a flash based BBT.
So, barebox must also use one, to be in sync with the kernel about bad blocks
in the flash.

Due to the used OOB layout, the generic BBT description coming with the
framework can be used.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h |    1 +
 drivers/mtd/nand/nand_s3c2410.c                   |    6 ++++++
 2 files changed, 7 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h b/arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h
index 05f9cf0..d06287e 100644
--- a/arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h
+++ b/arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h
@@ -45,6 +45,7 @@ extern void s3c24x0_nand_load_image(void*, int, int, int);
  */
 struct s3c24x0_nand_platform_data {
 	uint32_t nand_timing;	/**< value for the NFCONF register (timing bits only) */
+	char flash_bbt;	/**< force a flash based BBT */
 };
 
 /**
diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index fa4acf4..8a47dc6 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -349,6 +349,7 @@ static int s3c24x0_nand_inithw(struct s3c24x0_nand_host *host)
 static int s3c24x0_nand_probe(struct device_d *dev)
 {
 	struct nand_chip *chip;
+	struct s3c24x0_nand_platform_data *pdata = dev->platform_data;
 	struct mtd_info *mtd;
 	struct s3c24x0_nand_host *host;
 	int ret;
@@ -393,6 +394,11 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 	chip->ecc.bytes = 3;
 	chip->ecc.layout = &nand_hw_eccoob;
 
+	if (pdata->flash_bbt) {
+		/* use a flash based bbt */
+		chip->options |= NAND_USE_FLASH_BBT;
+	}
+
 	ret = s3c24x0_nand_inithw(host);
 	if (ret != 0)
 		goto on_error;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
