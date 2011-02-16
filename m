Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pplsz-0001nX-9I
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 18:14:02 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Feb 2011 19:13:40 +0100
Message-Id: <1297880025-7184-16-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 15/20] mini2440: Add MCI support
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

---
 arch/arm/boards/mini2440/mini2440.c |   16 ++++++++++++++++
 1 files changed, 16 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 30dff07..b30a9e2 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -33,12 +33,14 @@
 #include <partition.h>
 #include <dm9000.h>
 #include <nand.h>
+#include <mci.h>
 #include <asm/armlinux.h>
 #include <asm/io.h>
 #include <mach/gpio.h>
 #include <mach/s3c24x0-iomap.h>
 #include <mach/s3c24x0-nand.h>
 #include <mach/s3c24xx-generic.h>
+#include <mach/mci.h>
 
 static struct memory_platform_data ram_pdata = {
 	.name		= "ram0",
@@ -83,6 +85,19 @@ static struct device_d dm9000_dev = {
 	.platform_data = &dm9000_data,
 };
 
+static struct s3c_mci_platform_data mci_data = {
+	.caps = MMC_MODE_4BIT | MMC_MODE_HS | MMC_MODE_HS_52MHz,
+	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,
+	.gpio_detect = 232,	/* GPG8_GPIO */
+	.detect_invert = 0,
+};
+
+static struct device_d mci_dev = {
+	.name     = "s3c_mci",
+	.map_base = S3C2410_SDI_BASE,
+	.platform_data	= &mci_data,
+};
+
 static const unsigned pin_usage[] = {
 	/* address bus, used by NOR, SDRAM */
 	GPA1_ADDR16,
@@ -252,6 +267,7 @@ static int mini2440_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", NULL);
 #endif
+	register_device(&mci_dev);
 	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)sdram_dev.map_base + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MINI2440);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
