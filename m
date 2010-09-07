Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Ot3HE-000842-PF
	for barebox@lists.infradead.org; Tue, 07 Sep 2010 18:52:19 +0000
Received: by vws11 with SMTP id 11so4796178vws.36
	for <barebox@lists.infradead.org>; Tue, 07 Sep 2010 11:52:14 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 7 Sep 2010 20:52:13 +0200
Message-ID: <AANLkTinY-pU+97DMxkFddz6qj+ayQh=5nC1Or++A1qfh@mail.gmail.com>
From: Marek Belisko <marek.belisko@open-nandra.com>
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
Subject: [PATCH] mach-s3c24xx: Fix compilation problem when make a9m2410 or
	a9m2440 defconfig.
To: barebox@lists.infradead.org

Following steps lead to compilation error (barebox v2010.09.0):

1. make a9m2440_defconfig (or a9m2410) ARCH=arm
2. make CROSS_COMPILE=arm-linux- ARCH=arm

This patch should fix problems.

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 arch/arm/mach-s3c24xx/Kconfig |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-s3c24xx/Kconfig b/arch/arm/mach-s3c24xx/Kconfig
index 37ccf2f..297fdbb 100644
--- a/arch/arm/mach-s3c24xx/Kconfig
+++ b/arch/arm/mach-s3c24xx/Kconfig
@@ -81,7 +81,9 @@ config S3C24XX_SDRAM_INIT
 config S3C24XX_NAND_BOOT
 	bool
 	prompt "Booting from NAND"
-	select NAND_S3C24X0
+	select MTD
+	select NAND
+	select NAND_S3C24X0
 	help
 	  Add generic support to boot from NAND flash. Image loading will be
 	  skipped if the code is running from NOR or already from SDRAM.
-- 
1.7.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
