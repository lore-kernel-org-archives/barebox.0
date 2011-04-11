Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9IHT-0006QP-KG
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:40:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:39:49 +0200
Message-Id: <1302532791-20664-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
References: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/12] ARM omap beagle: Add noshell support for booting from
	MMC
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/omap/board-beagle.c |   42 +++++++++++++++++++++++++++++++++++
 arch/arm/mach-omap/Kconfig          |    1 +
 2 files changed, 43 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 17a349c..ced3df7 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -56,6 +56,7 @@
 #include <console.h>
 #include <init.h>
 #include <driver.h>
+#include <sizes.h>
 #include <asm/io.h>
 #include <ns16550.h>
 #include <asm/armlinux.h>
@@ -72,6 +73,7 @@
 #include <i2c/i2c.h>
 #include <linux/err.h>
 #include <usb/ehci.h>
+#include <mach/xload.h>
 #include "board.h"
 
 /******************** Board Boot Time *******************/
@@ -313,6 +315,13 @@ static struct i2c_board_info i2c_devices[] = {
 	},
 };
 
+static struct device_d hsmmc_dev = {
+	.id = -1,
+	.name = "omap-hsmmc",
+	.map_base = 0x4809C000,
+	.size = SZ_4K,
+};
+
 static int beagle_devices_init(void)
 {
 	int ret;
@@ -334,6 +343,8 @@ static int beagle_devices_init(void)
 #endif
 	gpmc_generic_nand_devices_init(0, 16, OMAP_ECC_HAMMING_CODE_HW_ROMCODE);
 
+	register_device(&hsmmc_dev);
+
 	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_OMAP3_BEAGLE);
@@ -341,3 +352,34 @@ failed:
 	return ret;
 }
 device_initcall(beagle_devices_init);
+
+#ifdef CONFIG_SHELL_NONE
+
+int run_shell(void)
+{
+	int (*func)(void) = NULL;
+
+	switch (omap3_bootsrc()) {
+	case OMAP_BOOTSRC_MMC1:
+		printf("booting from MMC1\n");
+		func = omap_xload_boot_mmc();
+		break;
+	case OMAP_BOOTSRC_UNKNOWN:
+		printf("unknown boot source. Fall back to nand\n");
+	case OMAP_BOOTSRC_NAND:
+		printf("booting from NAND\n");
+		func = omap_xload_boot_nand(SZ_128K, SZ_256K);
+		break;
+	}
+
+	if (!func) {
+		printf("booting failed\n");
+		while (1);
+	}
+
+	shutdown_barebox();
+	func();
+
+	while (1);
+}
+#endif
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 13966cf..f256310 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -123,6 +123,7 @@ config MACH_BEAGLE
 	bool "Texas Instrument's Beagle Board"
 	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_ALL
+	select HAVE_NOSHELL
 	select HAS_OMAP_NAND
 	depends on ARCH_OMAP3
 	  help
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
