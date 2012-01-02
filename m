Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhgJS-0002ma-I5
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 11:44:23 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RhgJA-0002o3-0s
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 12:44:04 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RhgJ9-0002T2-U1
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 12:44:03 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon,  2 Jan 2012 12:43:52 +0100
Message-Id: <1325504642-9324-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1325504642-9324-1-git-send-email-jbe@pengutronix.de>
References: <1325504642-9324-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 04/14] MACH SAMSUNG/S3C: Use the correct CPU family name to
 reflect NAND driver's usage
To: barebox@lists.infradead.org

The aready existing NAND controller driver in Barebox is for the S3C24XX family
only. Change the name of the file to reflect this fact (and free the way to add
more recent Samsung NAND controllers)

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/a9m2410/a9m2410.c                  |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                  |    2 +-
 arch/arm/boards/mini2440/mini2440.c                |    2 +-
 arch/arm/mach-samsung/Kconfig                      |    2 +-
 .../mach/{s3c24x0-nand.h => s3c24xx-nand.h}        |    0
 drivers/mtd/nand/Kconfig                           |    4 ++--
 drivers/mtd/nand/Makefile                          |    2 +-
 .../mtd/nand/{nand_s3c2410.c => nand_s3c24xx.c}    |    6 +++---
 8 files changed, 10 insertions(+), 10 deletions(-)
 rename arch/arm/mach-samsung/include/mach/{s3c24x0-nand.h => s3c24xx-nand.h} (100%)
 rename drivers/mtd/nand/{nand_s3c2410.c => nand_s3c24xx.c} (99%)

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index 14eaa1b..989dcf7 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -33,7 +33,7 @@
 #include <nand.h>
 #include <io.h>
 #include <mach/s3c-iomap.h>
-#include <mach/s3c24x0-nand.h>
+#include <mach/s3c24xx-nand.h>
 
 // {"NAND 1MiB 3,3V 8-bit", 0xec, 256, 1, 0x1000, 0},
 static struct s3c24x0_nand_platform_data nand_info = {
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 9002052..1986efb 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -33,7 +33,7 @@
 #include <nand.h>
 #include <io.h>
 #include <mach/s3c-iomap.h>
-#include <mach/s3c24x0-nand.h>
+#include <mach/s3c24xx-nand.h>
 #include <mach/s3c-generic.h>
 
 #include "baseboards.h"
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 5e6910b..dca9083 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -39,7 +39,7 @@
 #include <io.h>
 #include <mach/gpio.h>
 #include <mach/s3c-iomap.h>
-#include <mach/s3c24x0-nand.h>
+#include <mach/s3c24xx-nand.h>
 #include <mach/s3c-generic.h>
 #include <mach/mci.h>
 #include <mach/fb.h>
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index a800cb8..bc283dc 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -105,7 +105,7 @@ config S3C24XX_NAND_BOOT
 	prompt "Booting from NAND"
 	select MTD
 	select NAND
-	select NAND_S3C24X0
+	select NAND_S3C24XX
 	help
 	  Add generic support to boot from NAND flash. Image loading will be
 	  skipped if the code is running from NOR or already from SDRAM.
diff --git a/arch/arm/mach-samsung/include/mach/s3c24x0-nand.h b/arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
similarity index 100%
rename from arch/arm/mach-samsung/include/mach/s3c24x0-nand.h
rename to arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index bda0529..926a64b 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -65,9 +65,9 @@ config NAND_ATMEL
 	prompt "Atmel (AT91SAM9xxx) NAND driver"
 	depends on ARCH_AT91
 
-config NAND_S3C24X0
+config NAND_S3C24XX
 	bool
-	prompt "Samsung S3C24X0 NAND driver"
+	prompt "Samsung S3C24XX NAND driver"
 	depends on ARCH_S3C24xx
 	help
 	  Add support for processor's NAND device controller.
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index 00b7b27..5c6d8b3 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -14,4 +14,4 @@ obj-$(CONFIG_MTD_NAND_NOMADIK)		+= nomadik_nand.o
 obj-$(CONFIG_NAND_IMX)			+= nand_imx.o
 obj-$(CONFIG_NAND_OMAP_GPMC)		+= nand_omap_gpmc.o nand_omap_bch_decoder.o
 obj-$(CONFIG_NAND_ATMEL)		+= atmel_nand.o
-obj-$(CONFIG_NAND_S3C24X0)		+= nand_s3c2410.o
+obj-$(CONFIG_NAND_S3C24XX)		+= nand_s3c24xx.o
diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c24xx.c
similarity index 99%
rename from drivers/mtd/nand/nand_s3c2410.c
rename to drivers/mtd/nand/nand_s3c24xx.c
index 3117614..c4fd13e 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -32,7 +32,7 @@
 #include <linux/mtd/nand.h>
 #include <mach/s3c-generic.h>
 #include <mach/s3c-iomap.h>
-#include <mach/s3c24x0-nand.h>
+#include <mach/s3c24xx-nand.h>
 #include <io.h>
 #include <asm-generic/errno.h>
 
@@ -485,8 +485,8 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 		goto on_error;
 	}
 
-	return add_mtd_device(mtd, "nand");
-	
+	return add_mtd_device(mtd);
+
 on_error:
 	free(host);
 	return ret;
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
