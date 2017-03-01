Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj5IN-00048p-90
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 14:32:38 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cj5I2-0005ON-3Y
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 15:31:38 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  1 Mar 2017 15:31:37 +0100
Message-Id: <20170301143137.11570-9-l.stach@pengutronix.de>
In-Reply-To: <20170301143137.11570-1-l.stach@pengutronix.de>
References: <20170301143137.11570-1-l.stach@pengutronix.de>
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
Subject: [PATCH 9/9] ARM: rpi: switch to DT probe and multi-image build
To: barebox@lists.infradead.org

This commit switches the RaspberryPi arch over to probe Barebox
from the builtin DT and enables multi-image builds.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/Kconfig                              | 30 +++++------
 arch/arm/boards/raspberry-pi/lowlevel.c       | 20 ++++++--
 arch/arm/boards/raspberry-pi/rpi-common.c     | 30 +++++------
 arch/arm/configs/rpi2_defconfig               | 72 ---------------------------
 arch/arm/configs/rpi_defconfig                |  5 +-
 arch/arm/dts/Makefile                         |  2 +
 arch/arm/dts/bcm2835-rpi.dts                  | 11 ++++
 arch/arm/dts/bcm2836-rpi-2.dts                | 11 ++++
 arch/arm/mach-bcm283x/Kconfig                 |  9 ++--
 arch/arm/mach-bcm283x/core.c                  | 15 +-----
 arch/arm/mach-bcm283x/include/mach/core.h     | 18 -------
 arch/arm/mach-bcm283x/include/mach/platform.h | 25 ----------
 images/Makefile                               |  1 +
 images/Makefile.bcm283x                       | 11 ++++
 14 files changed, 87 insertions(+), 173 deletions(-)
 delete mode 100644 arch/arm/configs/rpi2_defconfig
 create mode 100644 arch/arm/dts/bcm2835-rpi.dts
 create mode 100644 arch/arm/dts/bcm2836-rpi-2.dts
 create mode 100644 images/Makefile.bcm283x

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 559cac4016bd..6a4cdc12b1ad 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -19,16 +19,6 @@ config ARM_USE_COMPRESSED_DTB
 	select UNCOMPRESS
 	select LZO_DECOMPRESS
 
-config ARCH_BCM283X
-	bool
-	select GPIOLIB
-	select CLKDEV_LOOKUP
-	select COMMON_CLK
-	select CLOCKSOURCE_BCM283X
-	select ARM_AMBA
-	select HAS_DEBUG_LL
-	select RELOCATABLE
-
 menu "System Type"
 
 config BUILTIN_DTB
@@ -57,15 +47,19 @@ config ARCH_AT91
 	select HAVE_CLK
 	select PINCTRL_AT91
 
-config ARCH_BCM2835
-	bool "Broadcom BCM2835 boards"
-	select ARCH_BCM283X
-	select CPU_ARM1176
 
-config ARCH_BCM2836
-	bool "Broadcom BCM2836 boards"
-	select ARCH_BCM283X
-	select CPU_V7
+config ARCH_BCM283X
+	bool "Broadcom BCM283x based boards"
+	select GPIOLIB
+	select CLKDEV_LOOKUP
+	select COMMON_CLK
+	select CLOCKSOURCE_BCM283X
+	select ARM_AMBA
+	select HAS_DEBUG_LL
+	select RELOCATABLE
+	select OFTREE
+	select OFDEVICE
+	select HAVE_PBL_MULTI_IMAGES
 
 config ARCH_CLPS711X
 	bool "Cirrus Logic EP711x/EP721x/EP731x"
diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index 485171a11659..4e71e29e0c0b 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -4,8 +4,22 @@
 #include <asm/barebox-arm-head.h>
 #include <mach/platform.h>
 
-void __naked barebox_arm_reset_vector(void)
+extern char __dtb_bcm2835_rpi_start[];
+ENTRY_FUNCTION(start_raspberry_pi1, r0, r1, r2)
 {
-        arm_cpu_lowlevel_init();
-	barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_128M, NULL);
+	void *fdt = __dtb_bcm2835_rpi_start - get_runtime_offset();
+
+	arm_cpu_lowlevel_init();
+
+	barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_128M, fdt);
+}
+
+extern char __dtb_bcm2836_rpi_2_start[];
+ENTRY_FUNCTION(start_raspberry_pi2, r0, r1, r2)
+{
+	void *fdt = __dtb_bcm2836_rpi_2_start - get_runtime_offset();
+
+	arm_cpu_lowlevel_init();
+
+	barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_512M, fdt);
 }
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 331e6873bc49..6e375bc984de 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -73,10 +73,9 @@ static int rpi_get_arm_mem(u32 *size)
 	return 0;
 }
 
-static int rpi_register_clkdev(u32 clock_id, const char *name)
+static struct clk *rpi_register_firmare_clock(u32 clock_id, const char *name)
 {
 	BCM2835_MBOX_STACK_ALIGN(struct msg_get_clock_rate, msg);
-	struct clk *clk;
 	int ret;
 
 	BCM2835_MBOX_INIT_HDR(msg);
@@ -85,16 +84,9 @@ static int rpi_register_clkdev(u32 clock_id, const char *name)
 
 	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg->hdr);
 	if (ret)
-		return ret;
+		return ERR_PTR(ret);
 
-	clk = clk_fixed(name, msg->get_clock_rate.body.resp.rate_hz);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	if (!clk_register_clkdev(clk, NULL, name))
-		return -ENODEV;
-
-	return 0;
+	return clk_fixed(name, msg->get_clock_rate.body.resp.rate_hz);
 }
 
 void rpi_set_usbethaddr(void)
@@ -280,19 +272,25 @@ mem_initcall(rpi_mem_init);
 
 static int rpi_postcore_init(void)
 {
-	bcm2835_register_mbox();
-
 	rpi_get_board_rev();
 	barebox_set_hostname("rpi");
 
-	bcm2835_register_uart();
 	return 0;
 }
 postcore_initcall(rpi_postcore_init);
 
 static int rpi_clock_init(void)
 {
-	rpi_register_clkdev(BCM2835_MBOX_CLOCK_ID_EMMC, "bcm2835_mci0");
+	struct clk *clk;
+
+	clk = rpi_register_firmare_clock(BCM2835_MBOX_CLOCK_ID_EMMC,
+					 "bcm2835_mci0");
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	clk_register_clkdev(clk, NULL, "20300000.sdhci");
+	clk_register_clkdev(clk, NULL, "3f300000.sdhci");
+
 	return 0;
 }
 postconsole_initcall(rpi_clock_init);
@@ -326,8 +324,6 @@ static int rpi_env_init(void)
 static int rpi_devices_init(void)
 {
 	rpi_model_init();
-	bcm2835_register_wd();
-	bcm2835_register_mci();
 	bcm2835_register_fb();
 	armlinux_set_architecture(MACH_TYPE_BCM2708);
 	rpi_env_init();
diff --git a/arch/arm/configs/rpi2_defconfig b/arch/arm/configs/rpi2_defconfig
deleted file mode 100644
index dbb31e62e21e..000000000000
--- a/arch/arm/configs/rpi2_defconfig
+++ /dev/null
@@ -1,72 +0,0 @@
-CONFIG_ARCH_BCM2836=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_PROMPT="R-Pi> "
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BLSPEC=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/raspberry-pi/env"
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_SERIAL_AMBA_PL011=y
-CONFIG_MCI=y
-CONFIG_MCI_BCM283X=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_GPIO_BCM283X=y
-CONFIG_REGULATOR=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_DIGEST_SHA1_GENERIC=y
-CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index 386522dcd33b..6dc90c59b36d 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -1,4 +1,6 @@
-CONFIG_ARCH_BCM2835=y
+CONFIG_ARCH_BCM283X=y
+CONFIG_MACH_RPI=y
+CONFIG_MACH_RPI2=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
@@ -63,6 +65,7 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_GPIO_BCM283X=y
+# CONFIG_PINCTRL is not set
 CONFIG_REGULATOR=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_FAT=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 70359d8242a5..0c9e0e8dadb9 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -58,6 +58,8 @@ pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
 pbl-dtb-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
+pbl-dtb-$(CONFIG_MACH_RPI) += bcm2835-rpi.dtb.o
+pbl-dtb-$(CONFIG_MACH_RPI2) += bcm2836-rpi-2.dtb.o
 pbl-dtb-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
 pbl-dtb-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o
 pbl-dtb-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
diff --git a/arch/arm/dts/bcm2835-rpi.dts b/arch/arm/dts/bcm2835-rpi.dts
new file mode 100644
index 000000000000..0095f58a3ce8
--- /dev/null
+++ b/arch/arm/dts/bcm2835-rpi.dts
@@ -0,0 +1,11 @@
+#include <arm/bcm2835-rpi-a.dts>
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
diff --git a/arch/arm/dts/bcm2836-rpi-2.dts b/arch/arm/dts/bcm2836-rpi-2.dts
new file mode 100644
index 000000000000..42b6abb180de
--- /dev/null
+++ b/arch/arm/dts/bcm2836-rpi-2.dts
@@ -0,0 +1,11 @@
+#include <arm/bcm2836-rpi-2-b.dts>
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
diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
index bb4fe95ab2f1..1457f114ccaa 100644
--- a/arch/arm/mach-bcm283x/Kconfig
+++ b/arch/arm/mach-bcm283x/Kconfig
@@ -7,20 +7,19 @@ config ARCH_TEXT_BASE
 config MACH_RPI_COMMON
 	bool
 
-choice
-	prompt "Broadcom Board type"
+menu "select Broadcom BCM283X boards to be built"
 
 config MACH_RPI
 	bool "RaspberryPi (BCM2835/ARM1176JZF-S)"
-	depends on ARCH_BCM2835
+	select CPU_V6
 	select MACH_RPI_COMMON
 
 config MACH_RPI2
 	bool "RaspberryPi 2 (BCM2836/CORTEX-A7)"
-	depends on ARCH_BCM2836
+	select CPU_V7
 	select MACH_RPI_COMMON
 
-endchoice
+endmenu
 
 config MACH_RPI_DEBUG_UART_BASE
 	hex
diff --git a/arch/arm/mach-bcm283x/core.c b/arch/arm/mach-bcm283x/core.c
index 3319ad63c3d7..fddcb0d1a1d4 100644
--- a/arch/arm/mach-bcm283x/core.c
+++ b/arch/arm/mach-bcm283x/core.c
@@ -40,21 +40,15 @@ static int bcm2835_clk_init(void)
 
 	clk = clk_fixed("uart0-pl0110", 3 * 1000 * 1000);
 	clk_register_clkdev(clk, NULL, "uart0-pl0110");
+	clk_register_clkdev(clk, NULL, "20201000.serial");
 
 	clk = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
 	clk_register_clkdev(clk, NULL, "bcm2835-cs");
 
-	add_generic_device("bcm2835-cs", DEVICE_ID_SINGLE, NULL, BCM2835_ST_BASE, 0x1C, IORESOURCE_MEM, NULL);
-
 	return 0;
 }
 postcore_initcall(bcm2835_clk_init);
 
-void bcm2835_register_uart(void)
-{
-	amba_apb_device_add(NULL, "uart0-pl011", 0, BCM2835_UART0_BASE, 4096, NULL, 0);
-}
-
 void bcm2835_add_device_sdram(u32 size)
 {
 	if (!size)
@@ -62,10 +56,3 @@ void bcm2835_add_device_sdram(u32 size)
 
 	arm_add_mem_device("ram0", BCM2835_SDRAM_BASE, size);
 }
-
-static int bcm2835_dev_init(void)
-{
-	add_generic_device("bcm2835-gpio", 0, NULL, BCM2835_GPIO_BASE, 0xB0, IORESOURCE_MEM, NULL);
-	return 0;
-}
-coredevice_initcall(bcm2835_dev_init);
diff --git a/arch/arm/mach-bcm283x/include/mach/core.h b/arch/arm/mach-bcm283x/include/mach/core.h
index 5edd99efa25f..a1c47f915448 100644
--- a/arch/arm/mach-bcm283x/include/mach/core.h
+++ b/arch/arm/mach-bcm283x/include/mach/core.h
@@ -18,29 +18,11 @@
 
 #include <mach/platform.h>
 
-void bcm2835_register_uart(void);
 void bcm2835_add_device_sdram(u32 size);
 
-static void inline bcm2835_register_mci(void)
-{
-	add_generic_device("bcm2835_mci", 0, NULL, BCM2835_EMMC_BASE, 0xFC,
-			   IORESOURCE_MEM, NULL);
-}
-
 static void inline bcm2835_register_fb(void)
 {
 	add_generic_device("bcm2835_fb", 0, NULL, 0, 0, 0, NULL);
 }
 
-static void inline bcm2835_register_mbox(void)
-{
-	add_generic_device("bcm2835_mbox", 0, NULL, BCM2835_MBOX_BASE, 0x40,
-			   IORESOURCE_MEM, NULL);
-}
-static void inline bcm2835_register_wd(void)
-{
-	add_generic_device("bcm2835_wd", 0, NULL, BCM2835_PM_BASE, 0x28,
-			   IORESOURCE_MEM, NULL);
-}
-
 #endif
diff --git a/arch/arm/mach-bcm283x/include/mach/platform.h b/arch/arm/mach-bcm283x/include/mach/platform.h
index 09fe78fd41f6..80b529a46fe5 100644
--- a/arch/arm/mach-bcm283x/include/mach/platform.h
+++ b/arch/arm/mach-bcm283x/include/mach/platform.h
@@ -28,32 +28,7 @@
  * This file is manually generated.
  */
 
-#ifdef CONFIG_ARCH_BCM2835
-#define BCM2835_PERI_BASE	0x20000000
-#define BCM2835_CACHELINE_SIZE	32
-#elif defined CONFIG_ARCH_BCM2836
-#define BCM2835_PERI_BASE	0x3f000000
 #define BCM2835_CACHELINE_SIZE	64
-#else
-#error "no CONFIG_ARCH_BCM283X defined"
-#endif
-
-#define BCM2835_ST_BASE		(BCM2835_PERI_BASE + 0x3000)	/* System Timer */
-#define BCM2835_DMA_BASE	(BCM2835_PERI_BASE + 0x7000)	/* DMA controller */
-#define BCM2835_ARM_BASE	(BCM2835_PERI_BASE + 0xB000)	/* BCM2708 ARM control block */
-#define BCM2835_MBOX_BASE	(BCM2835_ARM_BASE + 0x880)	/* BCM2835 mailbox */
-#define BCM2835_PM_BASE		(BCM2835_PERI_BASE + 0x100000)	/* Power Management, Reset controller and Watchdog registers */
-#define BCM2835_GPIO_BASE	(BCM2835_PERI_BASE + 0x200000)	/* GPIO */
-#define BCM2835_UART0_BASE	(BCM2835_PERI_BASE + 0x201000)	/* Uart 0 */
-#define BCM2835_MMCI0_BASE	(BCM2835_PERI_BASE + 0x202000)	/* MMC interface */
-#define BCM2835_SPI0_BASE	(BCM2835_PERI_BASE + 0x204000)	/* SPI0 */
-#define BCM2835_BSC0_BASE	(BCM2835_PERI_BASE + 0x205000)	/* BSC0 I2C/TWI */
-#define BCM2835_UART1_BASE	(BCM2835_PERI_BASE + 0x215000)	/* Uart 1 */
-#define BCM2835_EMMC_BASE	(BCM2835_PERI_BASE + 0x300000)	/* eMMC interface */
-#define BCM2835_SMI_BASE	(BCM2835_PERI_BASE + 0x600000)	/* SMI */
-#define BCM2835_BSC1_BASE	(BCM2835_PERI_BASE + 0x804000)	/* BSC1 I2C/TWI */
-#define BCM2835_USB_BASE	(BCM2835_PERI_BASE + 0x980000)	/* DTC_OTG USB controller */
-#define BCM2835_MCORE_BASE	(BCM2835_PERI_BASE + 0x0000)	/* Fake frame buffer device (actually the multicore sync block*/
 
 #endif
 
diff --git a/images/Makefile b/images/Makefile
index 0537af1f6d9f..68876e5de97e 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -103,6 +103,7 @@ board = $(srctree)/arch/$(ARCH)/boards
 objboard = $(objtree)/arch/$(ARCH)/boards
 
 include $(srctree)/images/Makefile.am33xx
+include $(srctree)/images/Makefile.bcm283x
 include $(srctree)/images/Makefile.imx
 include $(srctree)/images/Makefile.mvebu
 include $(srctree)/images/Makefile.mxs
diff --git a/images/Makefile.bcm283x b/images/Makefile.bcm283x
new file mode 100644
index 000000000000..d59ef043f05c
--- /dev/null
+++ b/images/Makefile.bcm283x
@@ -0,0 +1,11 @@
+#
+# barebox image generation Makefile for BCM283x images
+#
+
+pblx-$(CONFIG_MACH_RPI) += start_raspberry_pi1
+FILE_barebox-raspberry-pi-1.img = start_raspberry_pi1.pblx
+image-$(CONFIG_MACH_RPI) += barebox-raspberry-pi-1.img
+
+pblx-$(CONFIG_MACH_RPI2) += start_raspberry_pi2
+FILE_barebox-raspberry-pi-2.img = start_raspberry_pi2.pblx
+image-$(CONFIG_MACH_RPI2) += barebox-raspberry-pi-2.img
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
