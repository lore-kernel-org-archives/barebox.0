Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1VlLmZ-0001vK-Md
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:46:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:46:01 +0100
Message-Id: <1385484367-15366-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
References: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/17] ARM: beaglebone: Switch to devicetree and multiimage
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beaglebone/beaglebone.h          |   2 +
 arch/arm/boards/beaglebone/board.c               | 121 ++---------------------
 arch/arm/boards/beaglebone/lowlevel.c            |  67 ++++++++++---
 arch/arm/configs/am335x_beaglebone_defconfig     |   7 +-
 arch/arm/configs/am335x_beaglebone_mlo_defconfig |  11 ++-
 arch/arm/dts/Makefile                            |   1 +
 arch/arm/mach-omap/Kconfig                       |   1 +
 images/Makefile.am33xx                           |   8 ++
 8 files changed, 86 insertions(+), 132 deletions(-)

diff --git a/arch/arm/boards/beaglebone/beaglebone.h b/arch/arm/boards/beaglebone/beaglebone.h
index 25c5b0e..a4f48e5 100644
--- a/arch/arm/boards/beaglebone/beaglebone.h
+++ b/arch/arm/boards/beaglebone/beaglebone.h
@@ -1,6 +1,8 @@
 #ifndef __BOARD_BEAGLEBONE_H
 #define __BOARD_BEAGLEBONE_H
 
+#include <mach/am33xx-generic.h>
+
 static inline int is_beaglebone_black(void)
 {
 	return am33xx_get_cpu_rev() != AM335X_ES1_0;
diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index dfeb47c..66e8438 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -22,142 +22,34 @@
  */
 
 #include <common.h>
-#include <console.h>
 #include <init.h>
 #include <driver.h>
 #include <envfs.h>
 #include <environment.h>
 #include <globalvar.h>
 #include <sizes.h>
-#include <io.h>
-#include <ns16550.h>
 #include <net.h>
 #include <bootsource.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <mach/am33xx-silicon.h>
-#include <mach/am33xx-clock.h>
-#include <mach/sdrc.h>
 #include <mach/sys_info.h>
 #include <mach/syslib.h>
 #include <mach/gpmc.h>
-#include <mach/ehci.h>
-#include <i2c/i2c.h>
 #include <linux/err.h>
-#include <linux/phy.h>
-#include <usb/ehci.h>
-#include <mach/am33xx-devices.h>
-#include <mach/am33xx-mux.h>
-#include <mach/wdt.h>
-#include <mach/am33xx-generic.h>
-#include <mach/cpsw.h>
 
 #include "beaglebone.h"
 
-#ifdef CONFIG_DRIVER_SERIAL_NS16550
-
-/**
- * @brief UART serial port initialization - remember to enable COM clocks in
- * arch
- *
- * @return result of device registration
- */
-static int beaglebone_console_init(void)
-{
-	barebox_set_model("Texas Instruments beaglebone");
-	barebox_set_hostname("beaglebone");
-
-	am33xx_add_uart0();
-
-	return 0;
-}
-console_initcall(beaglebone_console_init);
-#endif /* CONFIG_DRIVER_SERIAL_NS16550 */
-
-static int beaglebone_mem_init(void)
-{
-	if (is_beaglebone_black())
-		omap_add_ram0(SZ_512M);
-	else
-		omap_add_ram0(SZ_256M);
-
-	return 0;
-}
-mem_initcall(beaglebone_mem_init);
-
-static struct cpsw_slave_data cpsw_slaves[] = {
-	{
-		.phy_id		= 0,
-		.phy_if		= PHY_INTERFACE_MODE_MII,
-	},
-};
-
-static struct cpsw_platform_data cpsw_data = {
-	.slave_data		= cpsw_slaves,
-	.num_slaves		= ARRAY_SIZE(cpsw_slaves),
-};
-
-static void beaglebone_eth_init(void)
-{
-	am33xx_register_ethaddr(0, 0);
-
-	writel(0, AM33XX_MAC_MII_SEL);
-
-	am33xx_enable_mii1_pin_mux();
-
-	am33xx_add_cpsw(&cpsw_data);
-}
-
-static struct i2c_board_info i2c0_devices[] = {
-	{
-		I2C_BOARD_INFO("24c256", 0x50)
-	},
-};
-
-static const __maybe_unused struct module_pin_mux mmc1_pin_mux[] = {
-	{OFFSET(gpmc_ad0), (MODE(1) | RXACTIVE)},	/* MMC1_DAT0 */
-	{OFFSET(gpmc_ad1), (MODE(1) | RXACTIVE)},	/* MMC1_DAT1 */
-	{OFFSET(gpmc_ad2), (MODE(1) | RXACTIVE)},	/* MMC1_DAT2 */
-	{OFFSET(gpmc_ad3), (MODE(1) | RXACTIVE)},	/* MMC1_DAT3 */
-	{OFFSET(gpmc_ad4), (MODE(1) | RXACTIVE)},	/* MMC1_DAT4 */
-	{OFFSET(gpmc_ad5), (MODE(1) | RXACTIVE)},	/* MMC1_DAT5 */
-	{OFFSET(gpmc_ad6), (MODE(1) | RXACTIVE)},	/* MMC1_DAT6 */
-	{OFFSET(gpmc_ad7), (MODE(1) | RXACTIVE)},	/* MMC1_DAT7 */
-	{OFFSET(gpmc_csn1), (MODE(2) | RXACTIVE | PULLUP_EN)},	/* MMC1_CLK */
-	{OFFSET(gpmc_csn2), (MODE(2) | RXACTIVE | PULLUP_EN)},	/* MMC1_CMD */
-	{-1},
-};
-
-static struct omap_hsmmc_platform_data beaglebone_sd = {
-	.devname = "sd",
-};
-
-static struct omap_hsmmc_platform_data beaglebone_emmc = {
-	.devname = "emmc",
-};
-
 static int beaglebone_devices_init(void)
 {
-	am33xx_enable_mmc0_pin_mux();
-	am33xx_add_mmc0(&beaglebone_sd);
-
-	if (is_beaglebone_black()) {
-		configure_module_pin_mux(mmc1_pin_mux);
-		am33xx_add_mmc1(&beaglebone_emmc);
-	}
-
 	if (bootsource_get() == BOOTSOURCE_MMC) {
 		if (bootsource_get_instance() == 0)
-			omap_set_bootmmc_devname("sd");
+			omap_set_bootmmc_devname("mmc0");
 		else
-			omap_set_bootmmc_devname("emmc");
+			omap_set_bootmmc_devname("mmc1");
 	}
 
-	am33xx_enable_i2c0_pin_mux();
-	i2c_register_board_info(0, i2c0_devices, ARRAY_SIZE(i2c0_devices));
-	am33xx_add_i2c0(NULL);
-
-	beaglebone_eth_init();
+	am33xx_register_ethaddr(0, 0);
 
 	return 0;
 }
@@ -165,7 +57,12 @@ device_initcall(beaglebone_devices_init);
 
 static int beaglebone_env_init(void)
 {
-	int black = is_beaglebone_black();
+	int black;
+
+	if (!of_machine_is_compatible("ti,am335x-bone"))
+		return 0;
+
+	black = is_beaglebone_black();
 
 	globalvar_add_simple("board.variant", black ? "boneblack" : "bone");
 
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 992e3e4..92389a9 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -1,6 +1,7 @@
 #include <init.h>
 #include <sizes.h>
 #include <io.h>
+#include <linux/string.h>
 #include <debug_ll.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
@@ -102,6 +103,11 @@ static const struct am33xx_emif_regs ddr3_regs = {
 	.sdram_ref_ctrl		= 0xC30,
 };
 
+extern char __dtb_am335x_boneblack_start[];
+extern char __dtb_am335x_boneblack_end[];
+extern char __dtb_am335x_bone_start[];
+extern char __dtb_am335x_bone_end[];
+
 /**
  * @brief The basic entry point for board initialization.
  *
@@ -111,8 +117,22 @@ static const struct am33xx_emif_regs ddr3_regs = {
  *
  * @return void
  */
-static int beaglebone_board_init(void)
+static noinline int beaglebone_sram_init(void)
 {
+	uint32_t fdt, fdt_end, sdram_start, sdram_size;
+
+	sdram_start = 0x80000000;
+
+	if (is_beaglebone_black()) {
+		sdram_size = SZ_512M;
+		fdt = (uint32_t)__dtb_am335x_boneblack_start;
+		fdt_end = (uint32_t)__dtb_am335x_boneblack_end;
+	} else {
+		sdram_size = SZ_256M;
+		fdt = (uint32_t)__dtb_am335x_bone_start;
+		fdt_end = (uint32_t)__dtb_am335x_bone_end;
+	}
+
 	/* WDT1 is already running when the bootloader gets control
 	 * Disable it to avoid "random" resets
 	 */
@@ -121,9 +141,6 @@ static int beaglebone_board_init(void)
 	__raw_writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
 	while(__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
 
-	if (am33xx_running_in_sdram())
-		return 0;
-
 	/* Setup the PLLs and the clocks for the peripherals */
 	if (is_beaglebone_black()) {
 		am33xx_pll_init(MPUPLL_M_500, 24, DDRPLL_M_400);
@@ -140,23 +157,43 @@ static int beaglebone_board_init(void)
 	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
 	putc_ll('>');
 
-	return 0;
+	/*
+	 * Copy the devicetree blob to sdram so that the barebox code finds it
+	 * inside valid SDRAM instead of SRAM.
+	 */
+	memcpy((void *)sdram_start, (void *)fdt, fdt_end - fdt);
+	fdt = sdram_start;
+
+	barebox_arm_entry(sdram_start, sdram_size, fdt);
 }
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t *data)
+ENTRY_FUNCTION(start_am33xx_beaglebone_sram, bootinfo, r1, r2)
 {
-	unsigned sdram;
+	am33xx_save_bootinfo((void *)bootinfo);
+
+	/*
+	 * Setup C environment, the board init code uses global variables.
+	 * Stackpointer has already been initialized by the ROM code.
+	 */
+	relocate_to_current_adr();
+	setup_c();
 
-	am33xx_save_bootinfo(data);
+	beaglebone_sram_init();
+}
 
-	arm_cpu_lowlevel_init();
+ENTRY_FUNCTION(start_am33xx_beaglebone_sdram, r0, r1, r2)
+{
+	uint32_t fdt, sdram_size;
 
-	beaglebone_board_init();
+	if (is_beaglebone_black()) {
+		sdram_size = SZ_512M;
+		fdt = (uint32_t)__dtb_am335x_boneblack_start;
+	} else {
+		sdram_size = SZ_256M;
+		fdt = (uint32_t)__dtb_am335x_bone_start;
+	}
 
-	if (is_beaglebone_black())
-		sdram = SZ_512M;
-	else
-		sdram = SZ_256M;
+	fdt -= get_runtime_offset();
 
-	barebox_arm_entry(0x80000000, sdram, 0);
+	barebox_arm_entry(0x80000000, sdram_size, fdt);
 }
diff --git a/arch/arm/configs/am335x_beaglebone_defconfig b/arch/arm/configs/am335x_beaglebone_defconfig
index 4bcee24..c80adc9 100644
--- a/arch/arm/configs/am335x_beaglebone_defconfig
+++ b/arch/arm/configs/am335x_beaglebone_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_OMAP=y
-CONFIG_ARCH_AM33XX=y
+CONFIG_OMAP_MULTI_BOARDS=y
+CONFIG_MACH_BEAGLEBONE=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -63,6 +64,8 @@ CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_NET_CPSW=y
@@ -71,6 +74,8 @@ CONFIG_I2C=y
 CONFIG_I2C_OMAP=y
 CONFIG_MCI=y
 CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_PINCTRL=y
+CONFIG_PINCTRL_SINGLE=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
diff --git a/arch/arm/configs/am335x_beaglebone_mlo_defconfig b/arch/arm/configs/am335x_beaglebone_mlo_defconfig
index ea29c24..ac682cc 100644
--- a/arch/arm/configs/am335x_beaglebone_mlo_defconfig
+++ b/arch/arm/configs/am335x_beaglebone_mlo_defconfig
@@ -1,28 +1,31 @@
 CONFIG_ARCH_OMAP=y
-CONFIG_ARCH_AM33XX=y
 # CONFIG_OMAP_GPMC is not set
 CONFIG_OMAP_BUILD_IFT=y
+CONFIG_MACH_BEAGLEBONE=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 # CONFIG_BANNER is not set
 # CONFIG_MEMINFO is not set
 CONFIG_ENVIRONMENT_VARIABLES=y
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x402F0400
-CONFIG_STACK_SIZE=0x1600
-CONFIG_MALLOC_SIZE=0x1000000
+CONFIG_TEXT_BASE=0x0
+CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
+CONFIG_RELOCATABLE=y
 CONFIG_PROMPT="MLO>"
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 # CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_OFDEVICE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
 CONFIG_MCI=y
 # CONFIG_MCI_WRITE is not set
 CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_PINCTRL=y
+CONFIG_PINCTRL_SINGLE=y
 # CONFIG_FS_RAMFS is not set
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index cff294b..ec75b5b 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -25,6 +25,7 @@ dtb-$(CONFIG_ARCH_TEGRA) += \
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 
+pbl-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o
 pbl-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 1cfc22f..3a53333 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -133,6 +133,7 @@ config MACH_BEAGLE
 config MACH_BEAGLEBONE
 	bool "Texas Instrument's Beagle Bone"
 	select ARCH_AM33XX
+	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using Beagle Bone
 
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index 8efef2a..dacc2d1 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -15,6 +15,14 @@ pblx-$(CONFIG_MACH_PCM051) += start_am33xx_phytec_phycore_sram
 FILE_barebox-am33xx-phytec-phycore-mlo.img = start_am33xx_phytec_phycore_sram.pblx.mlo
 am33xx-mlo-$(CONFIG_MACH_PCM051) += barebox-am33xx-phytec-phycore-mlo.img
 
+pblx-$(CONFIG_MACH_BEAGLEBONE) += start_am33xx_beaglebone_sdram
+FILE_barebox-am33xx-beaglebone.img = start_am33xx_beaglebone_sdram.pblx
+am33xx-barebox-$(CONFIG_MACH_BEAGLEBONE) += barebox-am33xx-beaglebone.img
+
+pblx-$(CONFIG_MACH_BEAGLEBONE) += start_am33xx_beaglebone_sram
+FILE_barebox-am33xx-beaglebone-mlo.img = start_am33xx_beaglebone_sram.pblx.mlo
+am33xx-mlo-$(CONFIG_MACH_BEAGLEBONE) += barebox-am33xx-beaglebone-mlo.img
+
 ifdef CONFIG_OMAP_BUILD_IFT
 image-y += $(am33xx-mlo-y)
 else
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
