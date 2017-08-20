Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:910:1314:ffff::1] (helo=gnutoo.privatedns.org)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1djXjI-0004qd-B4
 for barebox@lists.infradead.org; Sun, 20 Aug 2017 21:27:18 +0000
From: Denis 'GNUtoo' Carikli <GNUtoo@no-log.org>
Date: Sun, 20 Aug 2017 23:22:53 +0200
Message-Id: <20170820212253.27670-2-GNUtoo@no-log.org>
In-Reply-To: <20170820212253.27670-1-GNUtoo@no-log.org>
References: <20170820212253.27670-1-GNUtoo@no-log.org>
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
Subject: [PATCH] ARM: beagleboard: convert to devicetree
To: barebox@lists.infradead.org
Cc: Denis 'GNUtoo' Carikli <GNUtoo@no-log.org>

Signed-off-by: Denis 'GNUtoo' Carikli <GNUtoo@no-log.org>
---
 arch/arm/boards/beagle/board.c    |  85 ++---------------------
 arch/arm/boards/beagle/lowlevel.c | 137 ++++----------------------------------
 arch/arm/dts/Makefile             |   2 +-
 arch/arm/dts/omap3-beagle.dts     |   1 +
 arch/arm/mach-omap/Kconfig        |   2 +
 5 files changed, 23 insertions(+), 204 deletions(-)
 create mode 100644 arch/arm/dts/omap3-beagle.dts

diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index 460f42ac2..6ce1e9cad 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -15,83 +15,20 @@
  *
  */
 
-#include <common.h>
-#include <console.h>
-#include <init.h>
-#include <driver.h>
-#include <linux/sizes.h>
-#include <io.h>
 #include <bbu.h>
-#include <filetype.h>
+#include <common.h>
 #include <envfs.h>
+#include <init.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
-#include <mach/gpmc.h>
-#include <mach/gpmc_nand.h>
-#include <mach/ehci.h>
-#include <mach/omap3-devices.h>
-#include <i2c/i2c.h>
-#include <linux/err.h>
-#include <usb/ehci.h>
 #include <asm/barebox-arm.h>
-
-#ifdef CONFIG_DRIVER_SERIAL_NS16550
-
-/**
- * @brief UART serial port initialization - remember to enable COM clocks in
- * arch
- *
- * @return result of device registration
- */
-static int beagle_console_init(void)
-{
-	if (barebox_arm_machine() != MACH_TYPE_OMAP3_BEAGLE)
-		return 0;
-
-	barebox_set_model("Texas Instruments beagle");
-	barebox_set_hostname("beagle");
-
-	omap3_add_uart3();
-
-	return 0;
-}
-console_initcall(beagle_console_init);
-#endif /* CONFIG_DRIVER_SERIAL_NS16550 */
-
-#ifdef CONFIG_USB_EHCI_OMAP
-static struct omap_hcd omap_ehci_pdata = {
-	.port_mode[0] = EHCI_HCD_OMAP_MODE_PHY,
-	.port_mode[1] = EHCI_HCD_OMAP_MODE_PHY,
-	.port_mode[2] = EHCI_HCD_OMAP_MODE_UNKNOWN,
-	.phy_reset  = 1,
-	.reset_gpio_port[0]  = -EINVAL,
-	.reset_gpio_port[1]  = 147,
-	.reset_gpio_port[2]  = -EINVAL
-};
-
-static struct ehci_platform_data ehci_pdata = {
-	.flags = 0,
-};
-#endif /* CONFIG_USB_EHCI_OMAP */
-
-static struct i2c_board_info i2c_devices[] = {
-	{
-		I2C_BOARD_INFO("twl4030", 0x48),
-	},
-};
-
-static struct gpmc_nand_platform_data nand_plat = {
-	.device_width = 16,
-	.ecc_mode = OMAP_ECC_HAMMING_CODE_HW_ROMCODE,
-	.nand_cfg = &omap3_nand_cfg,
-};
+#include <generated/mach-types.h>
 
 static int beagle_mem_init(void)
 {
-	if (barebox_arm_machine() != MACH_TYPE_OMAP3_BEAGLE)
+	if (!of_machine_is_compatible("ti,omap3-beagle"))
 		return 0;
 
-	omap_add_ram0(SZ_128M);
+	arm_add_mem_device("ram0", 0x80000000, SZ_128M);
 
 	return 0;
 }
@@ -99,23 +36,13 @@ mem_initcall(beagle_mem_init);
 
 static int beagle_devices_init(void)
 {
-	if (barebox_arm_machine() != MACH_TYPE_OMAP3_BEAGLE)
+	if (!of_machine_is_compatible("ti,omap3-beagle"))
 		return 0;
 
-	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	omap3_add_i2c1(NULL);
-
-#ifdef CONFIG_USB_EHCI_OMAP
-	if (ehci_omap_init(&omap_ehci_pdata) >= 0)
-		omap3_add_ehci(&ehci_pdata);
-#endif /* CONFIG_USB_EHCI_OMAP */
 #ifdef CONFIG_OMAP_GPMC
 	/* WP is made high and WAIT1 active Low */
 	gpmc_generic_init(0x10);
 #endif
-	omap_add_gpmc_nand_device(&nand_plat);
-
-	omap3_add_mmc1(NULL);
 
 	armlinux_set_architecture(MACH_TYPE_OMAP3_BEAGLE);
 
diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
index 30cc1f2c5..2557ab9b3 100644
--- a/arch/arm/boards/beagle/lowlevel.c
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -1,109 +1,11 @@
 #include <init.h>
 #include <debug_ll.h>
-#include <io.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/control.h>
-#include <mach/generic.h>
-#include <mach/omap3-silicon.h>
 #include <mach/omap3-generic.h>
-#include <mach/omap3-mux.h>
 #include <mach/sdrc.h>
 #include <mach/syslib.h>
-#include <mach/sys_info.h>
-#include <generated/mach-types.h>
 
-/**
- * @brief Do the pin muxing required for Board operation.
- * We enable ONLY the pins we require to set. OMAP provides pins which do not
- * have alternate modes. Such pins done need to be set.
- *
- * See @ref MUX_VAL for description of the muxing mode.
- *
- * @return void
- */
-static void mux_config(void)
-{
-	/* SDRC_D0 - SDRC_D31 default mux mode is mode0 */
-
-	/* GPMC */
-	MUX_VAL(CP(GPMC_A1), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A2), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A3), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A4), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A5), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A6), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A7), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A8), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A9), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A10), (IDIS | PTD | DIS | M0));
-
-	/* D0-D7 default mux mode is mode0 */
-	MUX_VAL(CP(GPMC_D8), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D9), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D10), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D11), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D12), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D13), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D14), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D15), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_CLK), (IDIS | PTD | DIS | M0));
-	/* GPMC_NADV_ALE default mux mode is mode0 */
-	/* GPMC_NOE default mux mode is mode0 */
-	/* GPMC_NWE default mux mode is mode0 */
-	/* GPMC_NBE0_CLE default mux mode is mode0 */
-	MUX_VAL(CP(GPMC_NBE0_CLE), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_NBE1), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_NWP), (IEN | PTD | DIS | M0));
-	/* GPMC_WAIT0 default mux mode is mode0 */
-	MUX_VAL(CP(GPMC_WAIT1), (IEN | PTU | EN | M0));
-
-	/* SERIAL INTERFACE */
-	MUX_VAL(CP(UART3_CTS_RCTX), (IEN | PTD | EN | M0));
-	MUX_VAL(CP(UART3_RTS_SD), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(UART3_RX_IRRX), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(UART3_TX_IRTX), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_CLK), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_STP), (IDIS | PTU | EN | M0));
-	MUX_VAL(CP(HSUSB0_DIR), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_NXT), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_DATA0), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_DATA1), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_DATA2), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_DATA3), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_DATA4), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_DATA5), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_DATA6), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_DATA7), (IEN | PTD | DIS | M0));
-	/* I2C1_SCL default mux mode is mode0 */
-	/* I2C1_SDA default mux mode is mode0 */
-	/* USB EHCI (port 2) */
-	MUX_VAL(CP(MCSPI1_CS3),		(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(MCSPI2_CLK),		(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(MCSPI2_SIMO),	(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(MCSPI2_SOMI),	(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(MCSPI2_CS0),		(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(MCSPI2_CS1),		(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(ETK_D10_ES2),	(IDIS | PTU | DIS | M3));
-	MUX_VAL(CP(ETK_D11_ES2),	(IDIS | PTU | DIS | M3));
-	MUX_VAL(CP(ETK_D12_ES2),	(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(ETK_D13_ES2),	(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(ETK_D14_ES2),	(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(ETK_D15_ES2),	(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(UART2_RX),		(IEN  | PTD | DIS | M4)) /*GPIO_147*/;
-	/* Expansion card */
-	MUX_VAL(CP(MMC1_CLK),		(IDIS | PTU | EN  | M0)); /* MMC1_CLK */
-	MUX_VAL(CP(MMC1_CMD),		(IEN  | PTU | EN  | M0)); /* MMC1_CMD */
-	MUX_VAL(CP(MMC1_DAT0),		(IEN  | PTU | EN  | M0)); /* MMC1_DAT0 */
-	MUX_VAL(CP(MMC1_DAT1),		(IEN  | PTU | EN  | M0)); /* MMC1_DAT1 */
-	MUX_VAL(CP(MMC1_DAT2),		(IEN  | PTU | EN  | M0)); /* MMC1_DAT2 */
-	MUX_VAL(CP(MMC1_DAT3),		(IEN  | PTU | EN  | M0)); /* MMC1_DAT3 */
-	MUX_VAL(CP(MMC1_DAT4),		(IEN  | PTU | EN  | M0)); /* MMC1_DAT4 */
-	MUX_VAL(CP(MMC1_DAT5),		(IEN  | PTU | EN  | M0)); /* MMC1_DAT5 */
-	MUX_VAL(CP(MMC1_DAT6),		(IEN  | PTU | EN  | M0)); /* MMC1_DAT6 */
-	MUX_VAL(CP(MMC1_DAT7),		(IEN  | PTU | EN  | M0)); /* MMC1_DAT7 */
-}
+extern char __dtb_z_omap3_beagle_start[];
 
 /**
  * @brief Do the SDRC initialization for 128Meg Micron DDR for CS0
@@ -159,20 +61,14 @@ static void sdrc_init(void)
 	return;
 }
 
-static noinline int beagle_board_init_sdram(void)
+ENTRY_FUNCTION(start_omap3_beagleboard_sdram, r0, r1, r2)
 {
-	struct barebox_arm_boarddata *bd = (void *)OMAP3_SRAM_SCRATCH_SPACE + 0x10;
+	void *fdt;
 
-	boarddata_create(bd, MACH_TYPE_OMAP3_BEAGLE);
+	fdt = __dtb_z_omap3_beagle_start;
+	fdt -= get_runtime_offset();
 
-	barebox_arm_entry(0x80000000, SZ_128M, bd);
-}
-
-ENTRY_FUNCTION(start_omap3_beagleboard_sdram, bootinfo, r1, r2)
-{
-	omap3_save_bootinfo((void *)bootinfo);
-
-	beagle_board_init_sdram();
+	barebox_arm_entry(0x80000000, SZ_128M, fdt);
 }
 
 /**
@@ -184,25 +80,18 @@ ENTRY_FUNCTION(start_omap3_beagleboard_sdram, bootinfo, r1, r2)
  *
  * @return void
  */
-static noinline int beagle_board_init(void)
+static noinline int beagle_board_sram_init(void)
 {
-	int in_sdram = omap3_running_in_sdram();
-	struct barebox_arm_boarddata bd;
-
-	if (!in_sdram)
-		omap3_core_init();
+	void *fdt;
+	fdt = __dtb_z_omap3_beagle_start;
 
-	mux_config();
+	omap3_core_init();
 
 	omap_uart_lowlevel_init((void *)OMAP3_UART3_BASE);
 
-	/* Dont reconfigure SDRAM while running in SDRAM! */
-	if (!in_sdram)
-		sdrc_init();
-
-	boarddata_create(&bd, MACH_TYPE_OMAP3_BEAGLE);
+	sdrc_init();
 
-	barebox_arm_entry(0x80000000, SZ_128M, &bd);
+	barebox_arm_entry(0x80000000, SZ_128M, fdt);
 }
 
 ENTRY_FUNCTION(start_omap3_beagleboard_sram, bootinfo, r1, r2)
@@ -216,5 +105,5 @@ ENTRY_FUNCTION(start_omap3_beagleboard_sram, bootinfo, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
-	beagle_board_init();
+	beagle_board_sram_init();
 }
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 0ec03bc81..58755ca4d 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -6,7 +6,7 @@ endif
 # just to build a built-in.o. Otherwise compilation fails when no devicetree is
 # created.
 obj- += dummy.o
-
+pbl-dtb-$(CONFIG_MACH_BEAGLE) += omap3-beagle.dtb.o
 pbl-dtb-$(CONFIG_MACH_AFI_GF) += am335x-afi-gf.dtb.o
 pbl-dtb-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
 pbl-dtb-$(CONFIG_MACH_CM_FX6) += imx6dl-cm-fx6.dtb.o imx6q-cm-fx6.dtb.o imx6q-utilite.dtb.o
diff --git a/arch/arm/dts/omap3-beagle.dts b/arch/arm/dts/omap3-beagle.dts
new file mode 100644
index 000000000..9dd74b199
--- /dev/null
+++ b/arch/arm/dts/omap3-beagle.dts
@@ -0,0 +1 @@
+#include <arm/omap3-beagle.dts>
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 9c41741b5..5f53e1f56 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -26,7 +26,9 @@ config ARCH_OMAP3
 	bool
 	select CPU_V7
 	select GENERIC_GPIO
+	select OFTREE
 	select OMAP_CLOCK_SOURCE_S32K
+	select ARM_USE_COMPRESSED_DTB
 	help
 	  Say Y here if you are using Texas Instrument's OMAP343x based platform
 
-- 
2.13.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
