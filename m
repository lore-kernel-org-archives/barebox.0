Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pohyb-0003Ri-Ab
	for barebox@lists.infradead.org; Sun, 13 Feb 2011 19:51:26 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1PohyZ-0004lD-Bq
	for barebox@lists.infradead.org; Sun, 13 Feb 2011 20:51:19 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 13 Feb 2011 20:49:19 +0100
References: <1297606252-802-1-git-send-email-jbe@pengutronix.de>
	<1297606252-802-16-git-send-email-jbe@pengutronix.de>
	<201102132001.04701.jbe@pengutronix.de>
In-Reply-To: <201102132001.04701.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201102132049.20291.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: mini2440: Forgotten patches to make it work (2 of 2)
To: barebox@lists.infradead.org

From: Juergen Beisert <juergen@kreuzholzen.de>
Subject: MACH-S3C24XX: Add support for flash based BBT

The default configuration of the current 2.6.37 kernel uses a flash based BBT.
So, barebox must also use one, to be in sync with the kernel about bad blocks
in the flash.

Due to the used OOB layout, the generic BBT description coming with the
framework can be used.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>

---
 arch/arm/boards/mini2440/mini2440.c               |    3 ++-
 arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h |    1 +
 drivers/mtd/nand/nand_s3c2410.c                   |    6 ++++++
 3 files changed, 9 insertions(+), 1 deletion(-)

Index: barebox-2011.01.0/arch/arm/boards/mini2440/mini2440.c
===================================================================
--- barebox-2011.01.0.orig/arch/arm/boards/mini2440/mini2440.c
+++ barebox-2011.01.0/arch/arm/boards/mini2440/mini2440.c
@@ -55,7 +55,8 @@ static struct device_d sdram_dev = {
 };
 
 static struct s3c24x0_nand_platform_data nand_info = {
-	.nand_timing = CALC_NFCONF_TIMING(A9M2440_TACLS, A9M2440_TWRPH0, A9M2440_TWRPH1)
+	.nand_timing = CALC_NFCONF_TIMING(A9M2440_TACLS, A9M2440_TWRPH0, A9M2440_TWRPH1),
+	.flash_bbt = 1,	/* same as the kernel */
 };
 
 static struct device_d nand_dev = {
Index: barebox-2011.01.0/arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h
===================================================================
--- barebox-2011.01.0.orig/arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h
+++ barebox-2011.01.0/arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h
@@ -45,6 +45,7 @@ extern void s3c24x0_nand_load_image(void
  */
 struct s3c24x0_nand_platform_data {
 	uint32_t nand_timing;	/**< value for the NFCONF register (timing bits only) */
+	char flash_bbt;	/**< not 0 if a flash based BBT should be used */
 };
 
 /**
Index: barebox-2011.01.0/drivers/mtd/nand/nand_s3c2410.c
===================================================================
--- barebox-2011.01.0.orig/drivers/mtd/nand/nand_s3c2410.c
+++ barebox-2011.01.0/drivers/mtd/nand/nand_s3c2410.c
@@ -349,6 +349,7 @@ static int s3c24x0_nand_inithw(struct s3
 static int s3c24x0_nand_probe(struct device_d *dev)
 {
 	struct nand_chip *chip;
+	struct s3c24x0_nand_platform_data *pdata = dev->platform_data;
 	struct mtd_info *mtd;
 	struct s3c24x0_nand_host *host;
 	int ret;
@@ -393,6 +394,11 @@ static int s3c24x0_nand_probe(struct dev
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

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
