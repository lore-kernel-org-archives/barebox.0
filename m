Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f0Xfd-0000g1-5U
 for barebox@lists.infradead.org; Mon, 26 Mar 2018 19:20:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1f0XfN-0000ll-Jx
 for barebox@lists.infradead.org; Mon, 26 Mar 2018 21:20:25 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 26 Mar 2018 21:20:24 +0200
Message-Id: <20180326192025.28809-9-l.stach@pengutronix.de>
In-Reply-To: <20180326192025.28809-1-l.stach@pengutronix.de>
References: <20180326192025.28809-1-l.stach@pengutronix.de>
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
Subject: [PATCH v3 09/10] ARM: rpi: add raspberry pi 3 support
To: barebox@lists.infradead.org

This adds basic support at the same feature level as the other
supported raspberry pi boards.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Tested-by: Roland Hieber <r.hieber@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/lowlevel.c | 14 ++++++++++++--
 arch/arm/configs/rpi_defconfig          |  2 ++
 arch/arm/dts/Makefile                   |  1 +
 arch/arm/dts/bcm2837-rpi-3.dts          | 15 +++++++++++++++
 arch/arm/mach-bcm283x/Kconfig           |  6 ++++++
 arch/arm/mach-bcm283x/core.c            |  1 +
 images/Makefile.bcm283x                 |  4 ++++
 7 files changed, 41 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/dts/bcm2837-rpi-3.dts

diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index 4e71e29e0c0b..5ca0d3877069 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -1,7 +1,7 @@
+#include <asm/barebox-arm.h>
+#include <asm/cache.h>
 #include <common.h>
 #include <linux/sizes.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
 #include <mach/platform.h>
 
 extern char __dtb_bcm2835_rpi_start[];
@@ -23,3 +23,13 @@ ENTRY_FUNCTION(start_raspberry_pi2, r0, r1, r2)
 
 	barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_512M, fdt);
 }
+
+extern char __dtb_bcm2837_rpi_3_start[];
+ENTRY_FUNCTION(start_raspberry_pi3, r0, r1, r2)
+{
+	void *fdt = __dtb_bcm2837_rpi_3_start - get_runtime_offset();
+
+	arm_cpu_lowlevel_init();
+
+	barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_512M, fdt);
+}
diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index f3aef4290425..cd88b4ac751c 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -1,9 +1,11 @@
 CONFIG_ARCH_BCM283X=y
 CONFIG_MACH_RPI=y
 CONFIG_MACH_RPI2=y
+CONFIG_MACH_RPI3=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_IMAGE_COMPRESSION_NONE=y
 CONFIG_MMU=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 0526a6f40724..0eab313c5011 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -66,6 +66,7 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
 pbl-dtb-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
 pbl-dtb-$(CONFIG_MACH_RPI) += bcm2835-rpi.dtb.o
 pbl-dtb-$(CONFIG_MACH_RPI2) += bcm2836-rpi-2.dtb.o
+pbl-dtb-$(CONFIG_MACH_RPI3) += bcm2837-rpi-3.dtb.o
 pbl-dtb-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
 pbl-dtb-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o
 pbl-dtb-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
diff --git a/arch/arm/dts/bcm2837-rpi-3.dts b/arch/arm/dts/bcm2837-rpi-3.dts
new file mode 100644
index 000000000000..f8c58c570137
--- /dev/null
+++ b/arch/arm/dts/bcm2837-rpi-3.dts
@@ -0,0 +1,15 @@
+#include <arm64/broadcom/bcm2837-rpi-3-b.dts>
+
+/ {
+	chosen {
+		stdout-path = &uart0;
+	};
+
+	memory {
+		reg = <0x0 0x0>;
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
index 1457f114ccaa..af2f88c47acb 100644
--- a/arch/arm/mach-bcm283x/Kconfig
+++ b/arch/arm/mach-bcm283x/Kconfig
@@ -19,6 +19,12 @@ config MACH_RPI2
 	select CPU_V7
 	select MACH_RPI_COMMON
 
+config MACH_RPI3
+	bool "RaspberryPi 3 (BCM2837/CORTEX-A53)"
+	select CPU_V7
+	select MACH_RPI_COMMON
+	select ARM_SECURE_MONITOR
+
 endmenu
 
 config MACH_RPI_DEBUG_UART_BASE
diff --git a/arch/arm/mach-bcm283x/core.c b/arch/arm/mach-bcm283x/core.c
index fddcb0d1a1d4..26f0996b1cb8 100644
--- a/arch/arm/mach-bcm283x/core.c
+++ b/arch/arm/mach-bcm283x/core.c
@@ -41,6 +41,7 @@ static int bcm2835_clk_init(void)
 	clk = clk_fixed("uart0-pl0110", 3 * 1000 * 1000);
 	clk_register_clkdev(clk, NULL, "uart0-pl0110");
 	clk_register_clkdev(clk, NULL, "20201000.serial");
+	clk_register_clkdev(clk, NULL, "3f201000.serial");
 
 	clk = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
 	clk_register_clkdev(clk, NULL, "bcm2835-cs");
diff --git a/images/Makefile.bcm283x b/images/Makefile.bcm283x
index d59ef043f05c..d14e648926ac 100644
--- a/images/Makefile.bcm283x
+++ b/images/Makefile.bcm283x
@@ -9,3 +9,7 @@ image-$(CONFIG_MACH_RPI) += barebox-raspberry-pi-1.img
 pblx-$(CONFIG_MACH_RPI2) += start_raspberry_pi2
 FILE_barebox-raspberry-pi-2.img = start_raspberry_pi2.pblx
 image-$(CONFIG_MACH_RPI2) += barebox-raspberry-pi-2.img
+
+pblx-$(CONFIG_MACH_RPI3) += start_raspberry_pi3
+FILE_barebox-raspberry-pi-3.img = start_raspberry_pi3.pblx
+image-$(CONFIG_MACH_RPI3) += barebox-raspberry-pi-3.img
\ No newline at end of file
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
