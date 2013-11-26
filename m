Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlLmR-0000cc-85
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:46:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:45:54 +0100
Message-Id: <1385484367-15366-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/17] ARM: am335x phytec phyCORE: Switch to devicetree probe
 support
To: barebox@lists.infradead.org

This switches the am335x Phytec phyCORE to devicetree probe support.
For now we use a linked in dtb.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm051/Makefile       |   2 +-
 arch/arm/boards/pcm051/board.c        | 149 ++--------------------------------
 arch/arm/boards/pcm051/mux.c          |  65 ---------------
 arch/arm/boards/pcm051/mux.h          |   4 -
 arch/arm/configs/pcm051_defconfig     |  26 ++++--
 arch/arm/configs/pcm051_mlo_defconfig |   8 +-
 6 files changed, 32 insertions(+), 222 deletions(-)
 delete mode 100644 arch/arm/boards/pcm051/mux.c
 delete mode 100644 arch/arm/boards/pcm051/mux.h

diff --git a/arch/arm/boards/pcm051/Makefile b/arch/arm/boards/pcm051/Makefile
index 69d48e1..092c31d 100644
--- a/arch/arm/boards/pcm051/Makefile
+++ b/arch/arm/boards/pcm051/Makefile
@@ -1,2 +1,2 @@
 lwl-y += lowlevel.o
-obj-y += board.o mux.o
+obj-y += board.o
diff --git a/arch/arm/boards/pcm051/board.c b/arch/arm/boards/pcm051/board.c
index e7a7b79..4b76f4c 100644
--- a/arch/arm/boards/pcm051/board.c
+++ b/arch/arm/boards/pcm051/board.c
@@ -19,107 +19,17 @@
 
 #include <bootsource.h>
 #include <common.h>
+#include <nand.h>
 #include <init.h>
 #include <io.h>
-#include <nand.h>
 #include <sizes.h>
-#include <ns16550.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <linux/phy.h>
-#include <mach/am33xx-devices.h>
 #include <mach/am33xx-generic.h>
-#include <mach/am33xx-mux.h>
 #include <mach/am33xx-silicon.h>
-#include <mach/cpsw.h>
-#include <mach/generic.h>
-#include <mach/gpmc.h>
-#include <mach/gpmc_nand.h>
-#include <spi/spi.h>
-#include <spi/flash.h>
-#include <i2c/i2c.h>
-#include <i2c/at24.h>
 #include <mach/bbu.h>
 
-#include "mux.h"
-
-/**
- * @brief UART serial port initialization
- * arch
- *
- * @return result of device registration
- */
-static int pcm051_console_init(void)
-{
-	barebox_set_model("Phytec phyCORE-AM335x");
-	barebox_set_hostname("phycore-am335x");
-
-	am33xx_enable_uart0_pin_mux();
-	/* Register the serial port */
-	am33xx_add_uart0();
-
-	return 0;
-}
-console_initcall(pcm051_console_init);
-
-static int pcm051_mem_init(void)
-{
-	omap_add_ram0(SZ_512M);
-
-	return 0;
-}
-mem_initcall(pcm051_mem_init);
-
-/*
-* SPI Flash works at 80Mhz however the SPI controller runs with 48MHz.
-* So setup Max speed to be less than the controller speed.
-*/
-static struct spi_board_info pcm051_spi_board_info[] = {
-	{
-		.name		= "m25p80",
-		.max_speed_hz	= 24000000,
-		.bus_num	= 0,
-		.chip_select	= 0,
-	},
-};
-
-static struct cpsw_slave_data cpsw_slaves[] = {
-	{
-		.phy_id		= 0,
-		.phy_if		= PHY_INTERFACE_MODE_RMII,
-	},
-};
-
-static struct cpsw_platform_data cpsw_data = {
-	.slave_data	= cpsw_slaves,
-	.num_slaves	= ARRAY_SIZE(cpsw_slaves),
-};
-
-static struct i2c_board_info i2c0_devices[] = {
-	{
-		I2C_BOARD_INFO("24c32", 0x52),
-	},
-};
-
-static struct gpmc_config pcm051_nand_cfg = {
-	.cfg = {
-		0x00000800,	/* CONF1 */
-		0x00030300,	/* CONF2 */
-		0x00030300,	/* CONF3 */
-		0x02000311,	/* CONF4 */
-		0x00030303,	/* CONF5 */
-		0x03000540,	/* CONF6 */
-	},
-	.base = 0x08000000,
-	.size = GPMC_SIZE_16M,
-};
-
-static struct gpmc_nand_platform_data nand_plat = {
-	.wait_mon_pin = 1,
-	.ecc_mode = OMAP_ECC_BCH8_CODE_HW,
-	.nand_cfg = &pcm051_nand_cfg,
-};
-
 static struct omap_barebox_part pcm051_barebox_part = {
 	.nand_offset = SZ_512K,
 	.nand_size = SZ_512K,
@@ -127,59 +37,13 @@ static struct omap_barebox_part pcm051_barebox_part = {
 	.nor_size = SZ_512K,
 };
 
-static void pcm051_spi_init(void)
-{
-	int ret;
-
-	am33xx_enable_spi0_pin_mux();
-
-	ret = spi_register_board_info(pcm051_spi_board_info,
-					ARRAY_SIZE(pcm051_spi_board_info));
-	am33xx_add_spi0();
-}
-
-static void pcm051_eth_init(void)
-{
-	am33xx_register_ethaddr(0, 0);
-
-	writel(0x49, AM33XX_MAC_MII_SEL);
-
-	am33xx_enable_rmii1_pin_mux();
-
-	am33xx_add_cpsw(&cpsw_data);
-}
-
-static void pcm051_i2c_init(void)
-{
-	am33xx_enable_i2c0_pin_mux();
-
-	i2c_register_board_info(0, i2c0_devices, ARRAY_SIZE(i2c0_devices));
-
-	am33xx_add_i2c0(NULL);
-}
-
-static void pcm051_nand_init(void)
-{
-	pcm051_enable_nand_pin_mux();
-
-	gpmc_generic_init(0x12);
-
-	omap_add_gpmc_nand_device(&nand_plat);
-}
-
 static int pcm051_devices_init(void)
 {
-	pcm051_enable_mmc0_pin_mux();
-
-	am33xx_add_mmc0(NULL);
+	if (!of_machine_is_compatible("phytec,phycore-am335x"))
+		return 0;
 
-	pcm051_spi_init();
-	pcm051_eth_init();
-	pcm051_i2c_init();
-	pcm051_nand_init();
-
-	pcm051_enable_user_led_pin_mux();
-	pcm051_enable_user_btn_pin_mux();
+	am33xx_register_ethaddr(0, 0);
+	writel(0x69, AM33XX_MAC_MII_SEL);
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_SPI:
@@ -190,6 +54,9 @@ static int pcm051_devices_init(void)
 		devfs_add_partition("m25p0", SZ_128K + SZ_512K, SZ_128K,
 					DEVFS_PARTITION_FIXED, "env0");
 		break;
+	case BOOTSOURCE_MMC:
+		omap_set_bootmmc_devname("mmc0");
+		break;
 	default:
 		devfs_add_partition("nand0", 0x00000, SZ_128K,
 					DEVFS_PARTITION_FIXED, "xload_raw");
diff --git a/arch/arm/boards/pcm051/mux.c b/arch/arm/boards/pcm051/mux.c
deleted file mode 100644
index e1127ac..0000000
--- a/arch/arm/boards/pcm051/mux.c
+++ /dev/null
@@ -1,65 +0,0 @@
-#include <common.h>
-#include <config.h>
-#include <asm/io.h>
-#include <mach/am33xx-mux.h>
-
-static const struct module_pin_mux mmc0_pin_mux[] = {
-	{OFFSET(mmc0_dat3), (MODE(0) | RXACTIVE | PULLUP_EN)},	/* MMC0_DAT3 */
-	{OFFSET(mmc0_dat2), (MODE(0) | RXACTIVE | PULLUP_EN)},	/* MMC0_DAT2 */
-	{OFFSET(mmc0_dat1), (MODE(0) | RXACTIVE | PULLUP_EN)},	/* MMC0_DAT1 */
-	{OFFSET(mmc0_dat0), (MODE(0) | RXACTIVE | PULLUP_EN)},	/* MMC0_DAT0 */
-	{OFFSET(mmc0_clk), (MODE(0) | RXACTIVE | PULLUP_EN)},	/* MMC0_CLK */
-	{OFFSET(mmc0_cmd), (MODE(0) | RXACTIVE | PULLUP_EN)},	/* MMC0_CMD */
-	{OFFSET(spi0_cs1), (MODE(7) | RXACTIVE | PULLUP_EN)},	/* MMC0_CD */
-	{-1},
-};
-
-static const struct module_pin_mux nand_pin_mux[] = {
-	{OFFSET(gpmc_ad0), (MODE(0) | PULLUP_EN | RXACTIVE)},	/* NAND AD0 */
-	{OFFSET(gpmc_ad1), (MODE(0) | PULLUP_EN | RXACTIVE)},	/* NAND AD1 */
-	{OFFSET(gpmc_ad2), (MODE(0) | PULLUP_EN | RXACTIVE)},	/* NAND AD2 */
-	{OFFSET(gpmc_ad3), (MODE(0) | PULLUP_EN | RXACTIVE)},	/* NAND AD3 */
-	{OFFSET(gpmc_ad4), (MODE(0) | PULLUP_EN | RXACTIVE)},	/* NAND AD4 */
-	{OFFSET(gpmc_ad5), (MODE(0) | PULLUP_EN | RXACTIVE)},	/* NAND AD5 */
-	{OFFSET(gpmc_ad6), (MODE(0) | PULLUP_EN | RXACTIVE)},	/* NAND AD6 */
-	{OFFSET(gpmc_ad7), (MODE(0) | PULLUP_EN | RXACTIVE)},	/* NAND AD7 */
-	{OFFSET(gpmc_wait0), (MODE(0) | RXACTIVE | PULLUP_EN)},	/* NAND WAIT */
-	{OFFSET(gpmc_csn0), (MODE(0) | PULLUDEN)},	/* NAND_CS0 */
-	{OFFSET(gpmc_advn_ale), (MODE(0) | PULLUDEN)},	/* NAND_ADV_ALE */
-	{OFFSET(gpmc_oen_ren), (MODE(0) | PULLUDEN)},	/* NAND_OE */
-	{OFFSET(gpmc_wen), (MODE(0) | PULLUDEN)},	/* NAND_WEN */
-	{OFFSET(gpmc_be0n_cle), (MODE(0) | PULLUDEN)},	/* NAND_BE_CLE */
-	{-1},
-};
-
-static const struct module_pin_mux user_led_pin_mux[] = {
-	{OFFSET(gpmc_csn1), MODE(7) | PULLUDEN}, /* USER LED1 */
-	{OFFSET(gpmc_csn2), MODE(7) | PULLUDEN}, /* USER LED2 */
-	{-1},
-};
-
-static const struct module_pin_mux user_btn_pin_mux[] = {
-	{OFFSET(emu0), MODE(7) | RXACTIVE | PULLUP_EN},
-	{OFFSET(emu1), MODE(7) | RXACTIVE | PULLUP_EN},
-	{-1},
-};
-
-void pcm051_enable_mmc0_pin_mux(void)
-{
-	configure_module_pin_mux(mmc0_pin_mux);
-}
-
-void pcm051_enable_nand_pin_mux(void)
-{
-	configure_module_pin_mux(nand_pin_mux);
-}
-
-void pcm051_enable_user_led_pin_mux(void)
-{
-	configure_module_pin_mux(user_led_pin_mux);
-}
-
-void pcm051_enable_user_btn_pin_mux(void)
-{
-	configure_module_pin_mux(user_btn_pin_mux);
-}
diff --git a/arch/arm/boards/pcm051/mux.h b/arch/arm/boards/pcm051/mux.h
deleted file mode 100644
index 5cdbe0c..0000000
--- a/arch/arm/boards/pcm051/mux.h
+++ /dev/null
@@ -1,4 +0,0 @@
-extern void pcm051_enable_mmc0_pin_mux(void);
-extern void pcm051_enable_nand_pin_mux(void);
-extern void pcm051_enable_user_led_pin_mux(void);
-extern void pcm051_enable_user_btn_pin_mux(void);
diff --git a/arch/arm/configs/pcm051_defconfig b/arch/arm/configs/pcm051_defconfig
index 97e0940..e55ac47 100644
--- a/arch/arm/configs/pcm051_defconfig
+++ b/arch/arm/configs/pcm051_defconfig
@@ -1,16 +1,21 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="am335x-phytec-phycore"
 CONFIG_ARCH_OMAP=y
-CONFIG_ARCH_AM33XX=y
 CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO=y
 CONFIG_MACH_PCM051=y
-CONFIG_OMAP_UART1=y
-CONFIG_AEABI=y
+CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_PBL_IMAGE=y
+CONFIG_PBL_RELOCATABLE=y
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x8f000000
-CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_TEXT_BASE=0x0
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
 CONFIG_PROMPT="barebox@pcm051>"
 CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
@@ -21,9 +26,6 @@ CONFIG_MENU=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pcm051/env"
 CONFIG_DEBUG_INFO=y
-CONFIG_ENABLE_FLASH_NOISE=y
-CONFIG_ENABLE_PARTITION_NOISE=y
-CONFIG_ENABLE_DEVICE_NOISE=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -44,6 +46,7 @@ CONFIG_CMD_UBIFORMAT=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_BOOTZ=y
+# CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_BAREBOX_UPDATE=y
@@ -57,6 +60,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_NET_CPSW=y
@@ -67,13 +72,16 @@ CONFIG_MTD=y
 CONFIG_MTD_M25P80=y
 CONFIG_NAND=y
 CONFIG_NAND_OMAP_GPMC=y
-CONFIG_UBI=y
+CONFIG_MTD_UBI=y
 CONFIG_USB=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
 CONFIG_EEPROM_AT24=y
 CONFIG_GPIO_GENERIC_PLATFORM=y
+CONFIG_PINCTRL=y
+CONFIG_PINCTRL_SINGLE=y
+CONFIG_BUS_OMAP_GPMC=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
diff --git a/arch/arm/configs/pcm051_mlo_defconfig b/arch/arm/configs/pcm051_mlo_defconfig
index ea65979..4f6a7b1 100644
--- a/arch/arm/configs/pcm051_mlo_defconfig
+++ b/arch/arm/configs/pcm051_mlo_defconfig
@@ -1,8 +1,8 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="am335x-phytec-phycore"
 CONFIG_ARCH_OMAP=y
-CONFIG_ARCH_AM33XX=y
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_MACH_PCM051=y
-CONFIG_OMAP_UART1=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 # CONFIG_MEMINFO is not set
@@ -17,6 +17,7 @@ CONFIG_SHELL_NONE=y
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_OFDEVICE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_SPI_OMAP3=y
@@ -27,6 +28,9 @@ CONFIG_NAND_OMAP_GPMC=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_PINCTRL=y
+CONFIG_PINCTRL_SINGLE=y
+CONFIG_BUS_OMAP_GPMC=y
 # CONFIG_FS_RAMFS is not set
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
