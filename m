Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gP0og-0001vr-VL
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 07:51:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Nov 2018 08:49:00 +0100
Message-Id: <20181120074901.22338-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] ARM: i.MX: GuF Vincell: Use DCD table to setup SDRAM
To: Barebox List <barebox@lists.infradead.org>

This patch removes the xload mechanism to configure SDRAM and instead
installs a DCD table. The DCD table has been generated from the FSL
DDR3 script aid Excel sheet (version 0.0.1). The calibration values
were taken from a calibration run with the barebox internal functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boards/guf-vincell/flash-header.imxcfg    | 129 +++++++++++++++++-
 arch/arm/boards/guf-vincell/lowlevel.c        | 126 -----------------
 arch/arm/configs/imx_v7_defconfig             |   1 -
 arch/arm/mach-imx/Kconfig                     |   9 --
 images/Makefile.imx                           |  14 +-
 5 files changed, 132 insertions(+), 147 deletions(-)

diff --git a/arch/arm/boards/guf-vincell/flash-header.imxcfg b/arch/arm/boards/guf-vincell/flash-header.imxcfg
index bb0c318b7b..8bfb5d0508 100644
--- a/arch/arm/boards/guf-vincell/flash-header.imxcfg
+++ b/arch/arm/boards/guf-vincell/flash-header.imxcfg
@@ -1,3 +1,130 @@
+loadaddr 0x71000000
 soc imx53
-loadaddr 0xf8020000
 dcdofs 0x400
+
+//=============================================================================
+//init script for i.MX53 DDR3
+//=============================================================================
+
+//=============================================================================
+// Enable all clocks (they are disabled by ROM code)
+//=============================================================================
+
+//=============================================================================
+// IOMUX
+//=============================================================================
+//DDR IO TYPE:
+wm 32	0x53fa8724 	0x00000000	// IOMUXC_SW_PAD_CTL_GRP_DDR_TYPE
+wm 32	0x53fa86fc 	0x00000000	// IOMUXC_SW_PAD_CTL_GRP_DDRPKE
+
+//CLOCK:
+wm 32	0x53fa8578 	0x00300000	// IOMUXC_SW_PAD_CTL_PAD_DRAM_SDCLK_0
+wm 32	0x53fa8570 	0x00300000	// IOMUXC_SW_PAD_CTL_PAD_DRAM_SDCLK_1
+
+//ADDRESS:
+wm 32	0x53fa8574 	0x00300000	// IOMUXC_SW_PAD_CTL_PAD_DRAM_CAS
+wm 32	0x53fa8588 	0x00300000	// IOMUXC_SW_PAD_CTL_PAD_DRAM_RAS
+wm 32	0x53fa86f0 	0x00300000	// IOMUXC_SW_PAD_CTL_GRP_ADDDS
+
+//Control:
+wm 32	0x53fa856c 	0x00300040	// IOMUXC_SW_PAD_CTL_PAD_DRAM_RESET
+wm 32	0x53fa8580 	0x00300040	// IOMUXC_SW_PAD_CTL_PAD_DRAM_SDODT0
+wm 32	0x53fa8564 	0x00300040	// IOMUXC_SW_PAD_CTL_PAD_DRAM_SDODT1
+wm 32	0x53fa8720 	0x00300000	// IOMUXC_SW_PAD_CTL_GRP_CTLDS
+
+//Data Strobes:
+wm 32	0x53fa86f4 	0x00000000	// IOMUXC_SW_PAD_CTL_GRP_DDRMODE_CTL
+wm 32	0x53fa857c 	0x00300040	// IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS0
+wm 32	0x53fa8590 	0x00300040	// IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS1
+wm 32	0x53fa8568 	0x00300040	// IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS2
+wm 32	0x53fa8558 	0x00300040	// IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS3
+
+//Data:
+wm 32	0x53fa8714	0x00000000	// IOMUXC_SW_PAD_CTL_GRP_DDRMODE
+wm 32	0x53fa8718 	0x00300000	// IOMUXC_SW_PAD_CTL_GRP_B0DS
+wm 32	0x53fa871c 	0x00300000	// IOMUXC_SW_PAD_CTL_GRP_B1DS
+wm 32	0x53fa8728 	0x00300000	// IOMUXC_SW_PAD_CTL_GRP_B2DS
+wm 32	0x53fa872c 	0x00300000	// IOMUXC_SW_PAD_CTL_GRP_B3DS
+
+wm 32	0x53fa8584 	0x00300000	// IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM0
+wm 32	0x53fa8594 	0x00300000	// IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM1
+wm 32	0x53fa8560 	0x00300000	// IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM2
+wm 32	0x53fa8554 	0x00300000	// IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM3
+
+
+//=============================================================================
+// DDR Controller Registers
+//=============================================================================
+// Manufacturer:	Micron
+// Device Part Number:	MT41J128M16HA-15E
+// Clock Freq.: 	400MHz
+// Density per CS in Gb: 	4
+// Chip Selects used:	1
+// Number of Banks:	8
+// Row address:    	14
+// Column address: 	10
+// Data bus width	32
+//=============================================================================
+wm 32	0x63fd901c 	0x00008000	//ESDSCR, set the Configuration request bit during MMDC set up
+
+//=============================================================================
+// Calibration setup.
+//=============================================================================
+wm 32	0x63fd9040 	0x05390003	// ZQHWCTRL, enable both one-time & periodic HW ZQ calibration.
+
+// For target board, may need to run write leveling calibration to fine tune these settings.
+wm 32	0x63fd904c 	0x00000000	//WLDECTRL0
+wm 32	0x63fd9050 	0x00000000	//WLDECTRL1
+
+////Read DQS Gating calibration
+wm 32	0x63fd907c 	0x01320135	// DGCTRL0
+wm 32	0x63fd9080 	0x01370137	// DGCTRL1
+
+//Read calibration
+wm 32	0x63fd9088 	0x3a413c3f	// RDDLCTL
+
+//Write calibration
+wm 32	0x63fd9090 	0x49434b43	// WRDLCTL
+
+// Complete calibration by forced measurement:
+wm 32	0x63fd90F8 	0x00000800	// MUR
+//=============================================================================
+// Calibration setup end
+//=============================================================================
+
+//MMDC init:
+wm 32	0x63fd9004 	0x0002002D	// ESDPDC
+wm 32	0x63fd9008 	0x00333030	// ESDOTC
+wm 32	0x63fd900c 	0x3F435333	// ESDCFG0
+wm 32	0x63fd9010 	0xB5058B63	// ESDCFG1
+wm 32	0x63fd9014 	0x01FF00DB	// ESDCFG2
+
+//MDMISC: RALAT kept to the high level of 5.
+//MDMISC: consider reducing RALAT if your 528MHz board design allow that. Lower RALAT benefits:
+//a. better operation at low frequency, for LPDDR2 freq < 100MHz, change RALAT to 3
+//b. Small performence improvment
+wm 32	0x63fd9018 	0x00011740	// ESDMISC
+wm 32	0x63fd902c 	0x000026D2	// ESDRWD
+wm 32	0x63fd9030 	0x00430E21	// ESDOR
+wm 32	0x63fd9000 	0x83190000	// ESDCTL
+
+//Mode register writes
+wm 32	0x63fd901c 	0x02008032	// ESDSCR, MR2 write, CS0
+wm 32	0x63fd901c 	0x00008033	// ESDSCR, MR3 write, CS0
+wm 32	0x63fd901c 	0x00448031	// ESDSCR, MR1 write, CS0
+wm 32	0x63fd901c 	0x15208030	// ESDSCR, MR0write, CS0
+wm 32	0x63fd901c 	0x04008040	// ESDSCR, ZQ calibration command sent to device on CS0
+
+//wm 32	0x63fd901c 	0x0200803A	// ESDSCR, MR2 write, CS1
+//wm 32	0x63fd901c 	0x0000803B	// ESDSCR, MR3 write, CS1
+//wm 32	0x63fd901c 	0x00448039	// ESDSCR, MR1 write, CS1
+//wm 32	0x63fd901c 	0x15208038	// ESDSCR, MR0write, CS1
+//wm 32	0x63fd901c 	0x04008048	// ESDSCR, ZQ calibration command sent to device on CS1
+
+wm 32	0x63fd9020 	0x00001800	// ESDREF
+
+wm 32	0x63fd9058 	0x00033337	// ODTCTRL
+
+wm 32	0x63fd901c 	0x00000000	// MMDC0_ESDSCR, clear this register (especially the configuration bit as initialization is complete)
+
+wm 32	0x53fa8004 	0x00194005	// For TO2 only, increase LDO for VDIG_PLL to 1.3V
diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
index 0d2216f265..cd887df17c 100644
--- a/arch/arm/boards/guf-vincell/lowlevel.c
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -12,118 +12,6 @@
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/cache.h>
-#include <mach/xload.h>
-
-#define IOMUX_PADCTL_DDRI_DDR (1 << 9)
-
-#define IOMUX_PADCTL_DDRDSE(x)	((x) << 19)
-#define IOMUX_PADCTL_DDRSEL(x)	((x) << 25)
-
-#define IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM3		0x554
-#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS3	0x558
-#define IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM2		0x560
-#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDODT1	0x564
-#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS2	0x568
-#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDCLK_1	0x570
-#define IOMUXC_SW_PAD_CTL_PAD_DRAM_CAS		0x574
-#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDCLK_0	0x578
-#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS0	0x57c
-#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDODT0	0x580
-#define IOMUXC_SW_PAD_CTL_PAD_DRAM_RAS		0x588
-#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS1	0x590
-#define IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM1		0x594
-#define IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM0		0x584
-#define IOMUXC_SW_PAD_CTL_GRP_ADDDS		0x6f0
-#define IOMUXC_SW_PAD_CTL_GRP_DDRMODE_CTL	0x6f4
-#define IOMUXC_SW_PAD_CTL_GRP_DDRPKE		0x6fc
-#define IOMUXC_SW_PAD_CTL_GRP_DDRHYS		0x710
-#define IOMUXC_SW_PAD_CTL_GRP_DDRMODE		0x714
-#define IOMUXC_SW_PAD_CTL_GRP_B0DS		0x718
-#define IOMUXC_SW_PAD_CTL_GRP_B1DS		0x71c
-#define IOMUXC_SW_PAD_CTL_GRP_CTLDS		0x720
-#define IOMUXC_SW_PAD_CTL_GRP_DDR_TYPE		0x724
-#define IOMUXC_SW_PAD_CTL_GRP_B2DS		0x728
-#define IOMUXC_SW_PAD_CTL_GRP_B3DS		0x72c
-
-
-static void configure_dram_iomux(void)
-{
-	void __iomem *iomux = (void *)MX53_IOMUXC_BASE_ADDR;
-	u32 r1, r2, r4, r5, r6;
-
-	/* define the INPUT mode for DRAM_D[31:0] */
-	writel(0, iomux + IOMUXC_SW_PAD_CTL_GRP_DDRMODE);
-
-	/*
-	 * define the INPUT mode for SDQS[3:0]
-	 * (Freescale's documentation suggests DDR-mode for the
-	 * control line, but their source actually uses CMOS)
-	 */
-	writel(IOMUX_PADCTL_DDRI_DDR, iomux + IOMUXC_SW_PAD_CTL_GRP_DDRMODE_CTL);
-
-	r1 = IOMUX_PADCTL_DDRDSE(5);
-	r2 = IOMUX_PADCTL_DDRDSE(5) | PAD_CTL_PUE;
-	r4 = IOMUX_PADCTL_DDRSEL(2);
-	r5 = IOMUX_PADCTL_DDRDSE(5) | PAD_CTL_PKE | PAD_CTL_PUE | IOMUX_PADCTL_DDRI_DDR | PAD_CTL_PUS_47K_UP;
-	r6 = IOMUX_PADCTL_DDRDSE(4);
-
-	/*
-	 * this will adisable the Pull/Keeper for DRAM_x pins EXCEPT,
-	 * for DRAM_SDQS[3:0] and DRAM_SDODT[1:0]
-	 */
-	writel(0, iomux + IOMUXC_SW_PAD_CTL_GRP_DDRPKE);
-
-	/* set global drive strength for all DRAM_x pins */
-	writel(r4, iomux + IOMUXC_SW_PAD_CTL_GRP_DDR_TYPE);
-
-	/* set data dqs dqm drive strength */
-	writel(r6, iomux + IOMUXC_SW_PAD_CTL_GRP_B0DS);
-	writel(r6, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM0);
-	writel(r5, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS0);
-
-	writel(r1, iomux + IOMUXC_SW_PAD_CTL_GRP_B1DS);
-	writel(r1, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM1);
-	writel(r5, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS1);
-
-	writel(r6, iomux + IOMUXC_SW_PAD_CTL_GRP_B2DS);
-	writel(r6, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM2);
-	writel(r5, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS2);
-
-	writel(r1, iomux + IOMUXC_SW_PAD_CTL_GRP_B3DS);
-	writel(r1, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM3);
-	writel(r5, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS3);
-
-	/* SDCLK pad drive strength control options */
-	writel(r1, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_SDCLK_0);
-	writel(r1, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_SDCLK_1);
-
-	/* Control and addr bus pad drive strength control options */
-	writel(r1, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_RAS);
-	writel(r1, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_CAS);
-	writel(r1, iomux + IOMUXC_SW_PAD_CTL_GRP_ADDDS);
-	writel(r1, iomux + IOMUXC_SW_PAD_CTL_GRP_CTLDS);
-	writel(r2, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_SDODT0);
-	writel(r2, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_SDODT1);
-
-	/*
-	 * enable hysteresis on input pins
-	 * (Freescale's documentation suggests that enable hysteresis
-	 * would be better, but their source-code doesn't)
-	 */
-	writel(PAD_CTL_HYS, iomux + IOMUXC_SW_PAD_CTL_GRP_DDRHYS);
-}
-
-static void disable_watchdog(void)
-{
-	/*
-	 * configure WDOG to generate external reset on trigger
-	 * and disable power down counter
-	 */
-	writew(0x38, MX53_WDOG1_BASE_ADDR);
-	writew(0x0, MX53_WDOG1_BASE_ADDR + 8);
-	writew(0x38, MX53_WDOG2_BASE_ADDR);
-	writew(0x0, MX53_WDOG2_BASE_ADDR + 8);
-}
 
 extern char __dtb_imx53_guf_vincell_lt_start[];
 extern char __dtb_imx53_guf_vincell_start[];
@@ -151,20 +39,6 @@ static noinline void imx53_guf_vincell_init(int is_lt)
 	pbl_set_putc(imx_uart_putc, uart);
 	pr_debug("GuF Vincell\n");
 
-	/* Skip SDRAM initialization if we run from RAM */
-	r = get_pc();
-	if (!(r > 0x70000000 && r < 0xf0000000)) {
-		disable_watchdog();
-		configure_dram_iomux();
-		imx_esdctlv4_init();
-
-		imx53_get_boot_source(&src, &instance);
-
-		if (src == BOOTSOURCE_NAND &&
-		    IS_ENABLED(CONFIG_MACH_GUF_VINCELL_XLOAD))
-			imx53_nand_start_image();
-	}
-
 	if (is_lt)
 		fdt = __dtb_imx53_guf_vincell_lt_start;
 	else
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index bf84dfa9f8..64b202b9dc 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -7,7 +7,6 @@ CONFIG_MACH_FREESCALE_MX51_PDK=y
 CONFIG_MACH_CCMX53=y
 CONFIG_MACH_FREESCALE_MX53_LOCO=y
 CONFIG_MACH_GUF_VINCELL=y
-CONFIG_MACH_GUF_VINCELL_XLOAD=y
 CONFIG_MACH_TQMA53=y
 CONFIG_MACH_FREESCALE_MX53_VMX53=y
 CONFIG_MACH_TX53=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index edfc851138..3e863e4781 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -284,15 +284,6 @@ config MACH_GUF_VINCELL
 	bool "Garz-Fricke Vincell"
 	select ARCH_IMX53
 
-config MACH_GUF_VINCELL_XLOAD
-	depends on MACH_GUF_VINCELL
-	bool "Garz-Fricke Vincell NAND xload support"
-	help
-	  The Vincell initializes SDRAM from board code. This normally limits
-	  the image size to the size of the SoC internal SRAM. Enable this
-	  option to be able to use bigger images when booting from NAND. Images
-	  built with this option are no longer bootable from USB though.
-
 config MACH_TQMA53
 	bool "TQ i.MX53 TQMa53"
 	select ARCH_IMX53
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 9b5cd577d2..d654b3860a 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -109,20 +109,14 @@ CFG_start_imx53_vmx53.pblx.imximg = $(board)/freescale-mx53-vmx53/flash-header-i
 FILE_barebox-freescale-imx53-vmx53.img = start_imx53_vmx53.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += barebox-freescale-imx53-vmx53.img
 
-ifdef CONFIG_MACH_GUF_VINCELL_XLOAD
-VINCELL_IMAGE := imx-sram-img
-else
-VINCELL_IMAGE := pblx.imximg
-endif
-
 pblx-$(CONFIG_MACH_GUF_VINCELL) += start_imx53_guf_vincell
-CFG_start_imx53_guf_vincell.$(VINCELL_IMAGE) = $(board)/guf-vincell/flash-header.imxcfg
-FILE_barebox-guf-vincell.img = start_imx53_guf_vincell.$(VINCELL_IMAGE)
+CFG_start_imx53_guf_vincell.pblx.imximg = $(board)/guf-vincell/flash-header.imxcfg
+FILE_barebox-guf-vincell.img = start_imx53_guf_vincell.pblx.imximg
 image-$(CONFIG_MACH_GUF_VINCELL) += barebox-guf-vincell.img
 
 pblx-$(CONFIG_MACH_GUF_VINCELL) += start_imx53_guf_vincell_lt
-CFG_start_imx53_guf_vincell_lt.$(VINCELL_IMAGE) = $(board)/guf-vincell/flash-header.imxcfg
-FILE_barebox-guf-vincell-lt.img = start_imx53_guf_vincell_lt.$(VINCELL_IMAGE)
+CFG_start_imx53_guf_vincell_lt.pblx.imximg = $(board)/guf-vincell/flash-header.imxcfg
+FILE_barebox-guf-vincell-lt.img = start_imx53_guf_vincell_lt.pblx.imximg
 image-$(CONFIG_MACH_GUF_VINCELL) += barebox-guf-vincell-lt.img
 
 pblx-$(CONFIG_MACH_TQMA53) += start_imx53_mba53_512mib
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
