Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhgJP-0006hG-4p
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 11:44:20 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RhgJA-0002o7-2y
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 12:44:04 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RhgJ9-0002T8-Vy
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 12:44:03 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon,  2 Jan 2012 12:43:54 +0100
Message-Id: <1325504642-9324-7-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 06/14] MACH SAMSUNG/S3C: Reflect the CPU name the LCD driver
 is for
To: barebox@lists.infradead.org

This LCD driver is for the LCD controller in the S3C2410/S3C2440 CPUs only.
Change its name to reflect its usage and free the way to add LCD controller
drivers for more recent Samsung CPUs.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/mini2440/mini2440.c                |    2 +-
 .../include/mach/{fb.h => s3c24xx-fb.h}            |    0
 drivers/video/Kconfig                              |    2 +-
 drivers/video/Makefile                             |    2 +-
 drivers/video/{s3c.c => s3c24xx.c}                 |    4 ++--
 5 files changed, 5 insertions(+), 5 deletions(-)
 rename arch/arm/mach-samsung/include/mach/{fb.h => s3c24xx-fb.h} (100%)
 rename drivers/video/{s3c.c => s3c24xx.c} (99%)

diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 233f337..0186465 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -42,7 +42,7 @@
 #include <mach/s3c24xx-nand.h>
 #include <mach/s3c-generic.h>
 #include <mach/s3c-mci.h>
-#include <mach/fb.h>
+#include <mach/s3c24xx-fb.h>
 
 static struct s3c24x0_nand_platform_data nand_info = {
 	.nand_timing = CALC_NFCONF_TIMING(MINI2440_TACLS, MINI2440_TWRPH0,
diff --git a/arch/arm/mach-samsung/include/mach/fb.h b/arch/arm/mach-samsung/include/mach/s3c24xx-fb.h
similarity index 100%
rename from arch/arm/mach-samsung/include/mach/fb.h
rename to arch/arm/mach-samsung/include/mach/s3c24xx-fb.h
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index df2157e..4a05af9 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -27,7 +27,7 @@ config DRIVER_VIDEO_STM
 	  Say 'Y' here to enable framebuffer and splash screen support for
 	  i.MX23 and i.MX28 based systems.
 
-config DRIVER_VIDEO_S3C
+config DRIVER_VIDEO_S3C24XX
 	bool "S3C244x framebuffer driver"
 	depends on ARCH_S3C24xx
 	help
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 123c46f..913c78d 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -3,5 +3,5 @@ obj-$(CONFIG_VIDEO) += fb.o
 obj-$(CONFIG_DRIVER_VIDEO_STM) += stm.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX) += imx.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
-obj-$(CONFIG_DRIVER_VIDEO_S3C) += s3c.o
+obj-$(CONFIG_DRIVER_VIDEO_S3C24XX) += s3c24xx.o
 obj-$(CONFIG_DRIVER_VIDEO_PXA) += pxa.o
diff --git a/drivers/video/s3c.c b/drivers/video/s3c24xx.c
similarity index 99%
rename from drivers/video/s3c.c
rename to drivers/video/s3c24xx.c
index a03ec3d..75677c3 100644
--- a/drivers/video/s3c.c
+++ b/drivers/video/s3c24xx.c
@@ -30,9 +30,9 @@
 #include <malloc.h>
 #include <errno.h>
 #include <io.h>
-#include <mach/gpio.h>
+#include <mach/s3c-gpio.h>
 #include <mach/s3c-generic.h>
-#include <mach/fb.h>
+#include <mach/s3c24xx-fb.h>
 
 #define LCDCON1 0x00
 # define PNRMODE(x) (((x) & 3) << 5)
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
