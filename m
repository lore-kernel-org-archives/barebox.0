Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9IHT-0006QJ-8S
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:40:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:39:43 +0200
Message-Id: <1302532791-20664-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/12] ARM omap: Add omap4 support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig                      |   13 +-
 arch/arm/mach-omap/Makefile                     |    1 +
 arch/arm/mach-omap/gpio.c                       |   18 +
 arch/arm/mach-omap/include/mach/omap4-clock.h   |  320 ++++++++++++++++++
 arch/arm/mach-omap/include/mach/omap4-mux.h     |  344 +++++++++++++++++++
 arch/arm/mach-omap/include/mach/omap4-silicon.h |  179 ++++++++++
 arch/arm/mach-omap/include/mach/silicon.h       |    3 +
 arch/arm/mach-omap/omap4_clock.c                |  380 +++++++++++++++++++++
 arch/arm/mach-omap/omap4_generic.c              |  406 +++++++++++++++++++++++
 9 files changed, 1663 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/mach-omap/include/mach/omap4-clock.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap4-mux.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap4-silicon.h
 create mode 100644 arch/arm/mach-omap/omap4_clock.c
 create mode 100644 arch/arm/mach-omap/omap4_generic.c

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 351c469..df83b17 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -38,6 +38,14 @@ config ARCH_OMAP3
 	help
 	  Say Y here if you are using Texas Instrument's OMAP343x based platform
 
+config ARCH_OMAP4
+	bool "OMAP4"
+	select CPU_V7
+	select GENERIC_GPIO
+	select OMAP_CLOCK_SOURCE_S32K
+	help
+	  Say Y here if you are using Texas Instrument's OMAP4 based platform
+
 endchoice
 
 ### Generic Clock configurations to be enabled by Mach - invisible to enable.
@@ -76,7 +84,7 @@ config OMAP3_COPY_CLOCK_SRAM
 config OMAP_GPMC
 	prompt "Support for GPMC configuration"
 	bool
-	depends on  (ARCH_OMAP2 || ARCH_OMAP3)
+	depends on  (ARCH_OMAP2 || ARCH_OMAP3 || ARCH_OMAP4)
 	default y
 	help
 	  Enable this if you use Texas Instrument's General purpose Memory
@@ -106,6 +114,7 @@ config MACH_OMAP343xSDP
 	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_ALL
 	select HAS_OMAP_NAND
+	depends on ARCH_OMAP3
 	help
 	  Say Y here if you are using SDP343x platform
 
@@ -114,6 +123,7 @@ config MACH_BEAGLE
 	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_ALL
 	select HAS_OMAP_NAND
+	depends on ARCH_OMAP3
 	  help
 	  Say Y here if you are using Beagle Board
 
@@ -122,6 +132,7 @@ config MACH_OMAP3EVM
 	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_ALL
 	select HAS_OMAP_NAND
+	depends on ARCH_OMAP3
 	  help
 	  Say Y here if you are using OMAP3EVM
 
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 13c327c..9c31456 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -22,6 +22,7 @@
 obj-$(CONFIG_ARCH_OMAP) += syslib.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o
+obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock_core.o omap3_clock.o
 obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
 obj-y += omap-uart.o gpio.o
diff --git a/arch/arm/mach-omap/gpio.c b/arch/arm/mach-omap/gpio.c
index 68b7890..b0bd805 100644
--- a/arch/arm/mach-omap/gpio.c
+++ b/arch/arm/mach-omap/gpio.c
@@ -58,6 +58,24 @@ static void __iomem *gpio_bank[] = {
 };
 #endif
 
+#ifdef CONFIG_ARCH_OMAP4
+
+#define OMAP_GPIO_OE		0x0134
+#define OMAP_GPIO_DATAIN	0x0138
+#define OMAP_GPIO_DATAOUT	0x013c
+#define OMAP_GPIO_CLEARDATAOUT	0x0190
+#define OMAP_GPIO_SETDATAOUT	0x0194
+
+static void __iomem *gpio_bank[] = {
+	(void *)0x4a310000,
+	(void *)0x48055000,
+	(void *)0x48057000,
+	(void *)0x48059000,
+	(void *)0x4805b000,
+	(void *)0x4805d000,
+};
+#endif
+
 static inline void __iomem *get_gpio_base(int gpio)
 {
 	return gpio_bank[gpio >> 5];
diff --git a/arch/arm/mach-omap/include/mach/omap4-clock.h b/arch/arm/mach-omap/include/mach/omap4-clock.h
new file mode 100644
index 0000000..0a31d09
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/omap4-clock.h
@@ -0,0 +1,320 @@
+  /* PRCM */
+#define CM_SYS_CLKSEL				0x4a306110
+
+#define CM_SYS_CLKSEL_19M2		0x4
+#define CM_SYS_CLKSEL_38M4		0x7
+
+/* PRM.CKGEN module registers */
+#define CM_ABE_PLL_REF_CLKSEL		0x4a30610c
+
+
+/* PRM.WKUP_CM module registers */
+#define CM_WKUP_CLKSTCTRL		0x4a307800
+#define CM_WKUP_L4WKUP_CLKCTRL		0x4a307820
+#define CM_WKUP_WDT1_CLKCTRL		0x4a307828
+#define CM_WKUP_WDT2_CLKCTRL		0x4a307830
+#define CM_WKUP_GPIO1_CLKCTRL		0x4a307838
+#define CM_WKUP_TIMER1_CLKCTRL		0x4a307840
+#define CM_WKUP_TIMER12_CLKCTRL		0x4a307848
+#define CM_WKUP_SYNCTIMER_CLKCTRL	0x4a307850
+#define CM_WKUP_USIM_CLKCTRL		0x4a307858
+#define CM_WKUP_SARRAM_CLKCTRL		0x4a307860
+#define CM_WKUP_KEYBOARD_CLKCTRL	0x4a307878
+#define CM_WKUP_RTC_CLKCTRL		0x4a307880
+#define CM_WKUP_BANDGAP_CLKCTRL		0x4a307888
+
+/* CM1.CKGEN module registers */
+#define CM_CLKSEL_CORE				0x4a004100
+#define CM_CLKSEL_ABE				0x4a004108
+#define CM_DLL_CTRL				0x4a004110
+#define CM_CLKMODE_DPLL_CORE			0x4a004120
+#define CM_IDLEST_DPLL_CORE			0x4a004124
+#define CM_AUTOIDLE_DPLL_CORE			0x4a004128
+#define CM_CLKSEL_DPLL_CORE			0x4a00412c
+#define CM_DIV_M2_DPLL_CORE			0x4a004130
+#define CM_DIV_M3_DPLL_CORE			0x4a004134
+#define CM_DIV_M4_DPLL_CORE			0x4a004138
+#define CM_DIV_M5_DPLL_CORE			0x4a00413c
+#define CM_DIV_M6_DPLL_CORE			0x4a004140
+#define CM_DIV_M7_DPLL_CORE			0x4a004144
+#define CM_SSC_DELTAMSTEP_DPLL_CORE		0x4a004148
+#define CM_SSC_MODFREQDIV_DPLL_CORE		0x4a00414c
+#define CM_EMU_OVERRIDE_DPLL_CORE		0x4a004150
+#define CM_CLKMODE_DPLL_MPU			0x4a004160
+#define CM_IDLEST_DPLL_MPU			0x4a004164
+#define CM_AUTOIDLE_DPLL_MPU			0x4a004168
+#define CM_CLKSEL_DPLL_MPU			0x4a00416c
+#define CM_DIV_M2_DPLL_MPU			0x4a004170
+#define CM_SSC_DELTAMSTEP_DPLL_MPU		0x4a004188
+#define CM_SSC_MODFREQDIV_DPLL_MPU		0x4a00418c
+#define CM_BYPCLK_DPLL_MPU			0x4a00419c
+#define CM_CLKMODE_DPLL_IVA			0x4a0041a0
+#define CM_IDLEST_DPLL_IVA			0x4a0041a4
+#define CM_AUTOIDLE_DPLL_IVA			0x4a0041a8
+#define CM_CLKSEL_DPLL_IVA			0x4a0041ac
+#define CM_DIV_M4_DPLL_IVA			0x4a0041b8
+#define CM_DIV_M5_DPLL_IVA			0x4a0041bc
+#define CM_SSC_DELTAMSTEP_DPLL_IVA		0x4a0041c8
+#define CM_SSC_MODFREQDIV_DPLL_IVA		0x4a0041cc
+#define CM_BYPCLK_DPLL_IVA			0x4a0041dc
+#define CM_CLKMODE_DPLL_ABE			0x4a0041e0
+#define CM_IDLEST_DPLL_ABE			0x4a0041e4
+#define CM_AUTOIDLE_DPLL_ABE			0x4a0041e8
+#define CM_CLKSEL_DPLL_ABE			0x4a0041ec
+#define CM_DIV_M2_DPLL_ABE			0x4a0041f0
+#define CM_DIV_M3_DPLL_ABE			0x4a0041f4
+#define CM_SSC_DELTAMSTEP_DPLL_ABE		0x4a004208
+#define CM_SSC_MODFREQDIV_DPLL_ABE		0x4a00420c
+#define CM_CLKMODE_DPLL_DDRPHY			0x4a004220
+#define CM_IDLEST_DPLL_DDRPHY			0x4a004224
+#define CM_AUTOIDLE_DPLL_DDRPHY			0x4a004228
+#define CM_CLKSEL_DPLL_DDRPHY			0x4a00422c
+#define CM_DIV_M2_DPLL_DDRPHY			0x4a004230
+#define CM_DIV_M4_DPLL_DDRPHY			0x4a004238
+#define CM_DIV_M5_DPLL_DDRPHY			0x4a00423c
+#define CM_DIV_M6_DPLL_DDRPHY			0x4a004240
+#define CM_SSC_DELTAMSTEP_DPLL_DDRPHY		0x4a004248
+
+/* CM1.ABE register offsets */
+#define CM1_ABE_CLKSTCTRL		0x4a004500
+#define CM1_ABE_L4ABE_CLKCTRL		0x4a004520
+#define CM1_ABE_AESS_CLKCTRL		0x4a004528
+#define CM1_ABE_PDM_CLKCTRL		0x4a004530
+#define CM1_ABE_DMIC_CLKCTRL		0x4a004538
+#define CM1_ABE_MCASP_CLKCTRL		0x4a004540
+#define CM1_ABE_MCBSP1_CLKCTRL		0x4a004548
+#define CM1_ABE_MCBSP2_CLKCTRL		0x4a004550
+#define CM1_ABE_MCBSP3_CLKCTRL		0x4a004558
+#define CM1_ABE_SLIMBUS_CLKCTRL		0x4a004560
+#define CM1_ABE_TIMER5_CLKCTRL		0x4a004568
+#define CM1_ABE_TIMER6_CLKCTRL		0x4a004570
+#define CM1_ABE_TIMER7_CLKCTRL		0x4a004578
+#define CM1_ABE_TIMER8_CLKCTRL		0x4a004580
+#define CM1_ABE_WDT3_CLKCTRL		0x4a004588
+
+/* CM1.DSP register offsets */
+#define DSP_CLKSTCTRL			0x4a004400
+#define	DSP_DSP_CLKCTRL			0x4a004420
+
+/* CM2.CKGEN module registers */
+#define CM_CLKSEL_DUCATI_ISS_ROOT		0x4a008100
+#define CM_CLKSEL_USB_60MHz			0x4a008104
+#define CM_SCALE_FCLK				0x4a008108
+#define CM_CORE_DVFS_PERF1			0x4a008110
+#define CM_CORE_DVFS_PERF2			0x4a008114
+#define CM_CORE_DVFS_PERF3			0x4a008118
+#define CM_CORE_DVFS_PERF4			0x4a00811c
+#define CM_CORE_DVFS_CURRENT			0x4a008124
+#define CM_IVA_DVFS_PERF_TESLA			0x4a008128
+#define CM_IVA_DVFS_PERF_IVAHD			0x4a00812c
+#define CM_IVA_DVFS_PERF_ABE			0x4a008130
+#define CM_IVA_DVFS_CURRENT			0x4a008138
+#define CM_CLKMODE_DPLL_PER			0x4a008140
+#define CM_IDLEST_DPLL_PER			0x4a008144
+#define CM_AUTOIDLE_DPLL_PER			0x4a008148
+#define CM_CLKSEL_DPLL_PER			0x4a00814c
+#define CM_DIV_M2_DPLL_PER			0x4a008150
+#define CM_DIV_M3_DPLL_PER			0x4a008154
+#define CM_DIV_M4_DPLL_PER			0x4a008158
+#define CM_DIV_M5_DPLL_PER			0x4a00815c
+#define CM_DIV_M6_DPLL_PER			0x4a008160
+#define CM_DIV_M7_DPLL_PER			0x4a008164
+#define CM_SSC_DELTAMSTEP_DPLL_PER		0x4a008168
+#define CM_SSC_MODFREQDIV_DPLL_PER		0x4a00816c
+#define CM_EMU_OVERRIDE_DPLL_PER		0x4a008170
+#define CM_CLKMODE_DPLL_USB			0x4a008180
+#define CM_IDLEST_DPLL_USB			0x4a008184
+#define CM_AUTOIDLE_DPLL_USB			0x4a008188
+#define CM_CLKSEL_DPLL_USB			0x4a00818c
+#define CM_DIV_M2_DPLL_USB			0x4a008190
+#define CM_SSC_DELTAMSTEP_DPLL_USB		0x4a0081a8
+#define CM_SSC_MODFREQDIV_DPLL_USB		0x4a0081ac
+#define CM_CLKDCOLDO_DPLL_USB			0x4a0081b4
+#define CM_CLKMODE_DPLL_UNIPRO			0x4a0081c0
+#define CM_IDLEST_DPLL_UNIPRO			0x4a0081c4
+#define CM_AUTOIDLE_DPLL_UNIPRO			0x4a0081c8
+#define CM_CLKSEL_DPLL_UNIPRO			0x4a0081cc
+#define CM_DIV_M2_DPLL_UNIPRO			0x4a0081d0
+#define CM_SSC_DELTAMSTEP_DPLL_UNIPRO		0x4a0081e8
+#define CM_SSC_MODFREQDIV_DPLL_UNIPRO		0x4a0081ec
+
+/* CM2.CORE module registers */
+#define CM_L3_1_CLKSTCTRL		0x4a008700
+#define CM_L3_1_DYNAMICDEP		0x4a008708
+#define CM_L3_1_L3_1_CLKCTRL		0x4a008720
+#define CM_L3_2_CLKSTCTRL		0x4a008800
+#define CM_L3_2_DYNAMICDEP		0x4a008808
+#define CM_L3_2_L3_2_CLKCTRL		0x4a008820
+#define CM_L3_2_GPMC_CLKCTRL		0x4a008828
+#define CM_L3_2_OCMC_RAM_CLKCTRL	0x4a008830
+#define CM_DUCATI_CLKSTCTRL		0x4a008900
+#define CM_DUCATI_STATICDEP		0x4a008904
+#define CM_DUCATI_DYNAMICDEP		0x4a008908
+#define CM_DUCATI_DUCATI_CLKCTRL	0x4a008920
+#define CM_SDMA_CLKSTCTRL		0x4a008a00
+#define CM_SDMA_STATICDEP		0x4a008a04
+#define CM_SDMA_DYNAMICDEP		0x4a008a08
+#define CM_SDMA_SDMA_CLKCTRL		0x4a008a20
+#define CM_MEMIF_CLKSTCTRL		0x4a008b00
+#define CM_MEMIF_DMM_CLKCTRL		0x4a008b20
+#define CM_MEMIF_EMIF_FW_CLKCTRL	0x4a008b28
+#define CM_MEMIF_EMIF_1_CLKCTRL		0x4a008b30
+#define CM_MEMIF_EMIF_2_CLKCTRL		0x4a008b38
+#define CM_MEMIF_DLL_CLKCTRL		0x4a008b40
+#define CM_MEMIF_EMIF_H1_CLKCTRL	0x4a008b50
+#define CM_MEMIF_EMIF_H2_CLKCTRL	0x4a008b58
+#define CM_MEMIF_DLL_H_CLKCTRL		0x4a008b60
+#define CM_D2D_CLKSTCTRL		0x4a008c00
+#define CM_D2D_STATICDEP		0x4a008c04
+#define CM_D2D_DYNAMICDEP		0x4a008c08
+#define CM_D2D_SAD2D_CLKCTRL		0x4a008c20
+#define CM_D2D_MODEM_ICR_CLKCTRL	0x4a008c28
+#define CM_D2D_SAD2D_FW_CLKCTRL		0x4a008c30
+#define CM_L4CFG_CLKSTCTRL		0x4a008d00
+#define CM_L4CFG_DYNAMICDEP		0x4a008d08
+#define CM_L4CFG_L4_CFG_CLKCTRL		0x4a008d20
+#define CM_L4CFG_HW_SEM_CLKCTRL		0x4a008d28
+#define CM_L4CFG_MAILBOX_CLKCTRL	0x4a008d30
+#define CM_L4CFG_SAR_ROM_CLKCTRL	0x4a008d38
+#define CM_L3INSTR_CLKSTCTRL		0x4a008e00
+#define CM_L3INSTR_L3_3_CLKCTRL		0x4a008e20
+#define CM_L3INSTR_L3_INSTR_CLKCTRL	0x4a008e28
+#define CM_L3INSTR_OCP_WP1_CLKCTRL	0x4a008e40
+
+/* CM2.L4PER register offsets */
+#define CM_L4PER_CLKSTCTRL		0x4a009400
+#define CM_L4PER_DYNAMICDEP		0x4a009408
+#define CM_L4PER_ADC_CLKCTRL		0x4a009420
+#define CM_L4PER_DMTIMER10_CLKCTRL	0x4a009428
+#define CM_L4PER_DMTIMER11_CLKCTRL	0x4a009430
+#define CM_L4PER_DMTIMER2_CLKCTRL	0x4a009438
+#define CM_L4PER_DMTIMER3_CLKCTRL	0x4a009440
+#define CM_L4PER_DMTIMER4_CLKCTRL	0x4a009448
+#define CM_L4PER_DMTIMER9_CLKCTRL	0x4a009450
+#define CM_L4PER_ELM_CLKCTRL		0x4a009458
+#define CM_L4PER_GPIO2_CLKCTRL		0x4a009460
+#define CM_L4PER_GPIO3_CLKCTRL		0x4a009468
+#define CM_L4PER_GPIO4_CLKCTRL		0x4a009470
+#define CM_L4PER_GPIO5_CLKCTRL		0x4a009478
+#define CM_L4PER_GPIO6_CLKCTRL		0x4a009480
+#define CM_L4PER_HDQ1W_CLKCTRL		0x4a009488
+#define CM_L4PER_HECC1_CLKCTRL		0x4a009490
+#define CM_L4PER_HECC2_CLKCTRL		0x4a009498
+#define CM_L4PER_I2C1_CLKCTRL		0x4a0094a0
+#define CM_L4PER_I2C2_CLKCTRL		0x4a0094a8
+#define CM_L4PER_I2C3_CLKCTRL		0x4a0094b0
+#define CM_L4PER_I2C4_CLKCTRL		0x4a0094b8
+#define CM_L4PER_L4PER_CLKCTRL		0x4a0094c0
+#define CM_L4PER_MCASP2_CLKCTRL		0x4a0094d0
+#define CM_L4PER_MCASP3_CLKCTRL		0x4a0094d8
+#define CM_L4PER_MCBSP4_CLKCTRL		0x4a0094e0
+#define CM_L4PER_MGATE_CLKCTRL		0x4a0094e8
+#define CM_L4PER_MCSPI1_CLKCTRL		0x4a0094f0
+#define CM_L4PER_MCSPI2_CLKCTRL		0x4a0094f8
+#define CM_L4PER_MCSPI3_CLKCTRL		0x4a009500
+#define CM_L4PER_MCSPI4_CLKCTRL		0x4a009508
+#define CM_L4PER_MMCSD3_CLKCTRL		0x4a009520
+#define CM_L4PER_MMCSD4_CLKCTRL		0x4a009528
+#define CM_L4PER_MSPROHG_CLKCTRL	0x4a009530
+#define CM_L4PER_SLIMBUS2_CLKCTRL	0x4a009538
+#define CM_L4PER_UART1_CLKCTRL		0x4a009540
+#define CM_L4PER_UART2_CLKCTRL		0x4a009548
+#define CM_L4PER_UART3_CLKCTRL		0x4a009550
+#define CM_L4PER_UART4_CLKCTRL		0x4a009558
+#define CM_L4PER_MMCSD5_CLKCTRL		0x4a009560
+#define CM_L4PER_I2C5_CLKCTRL		0x4a009568
+#define CM_L4SEC_CLKSTCTRL		0x4a009580
+#define CM_L4SEC_STATICDEP		0x4a009584
+#define CM_L4SEC_DYNAMICDEP		0x4a009588
+#define CM_L4SEC_AES1_CLKCTRL		0x4a0095a0
+#define CM_L4SEC_AES2_CLKCTRL		0x4a0095a8
+#define CM_L4SEC_DES3DES_CLKCTRL	0x4a0095b0
+#define CM_L4SEC_PKAEIP29_CLKCTRL	0x4a0095b8
+#define CM_L4SEC_RNG_CLKCTRL		0x4a0095c0
+#define CM_L4SEC_SHA2MD51_CLKCTRL	0x4a0095c8
+#define CM_L4SEC_CRYPTODMA_CLKCTRL	0x4a0095d8
+
+/* CM2.IVAHD */
+#define IVAHD_CLKSTCTRL			0x4a008f00
+#define IVAHD_IVAHD_CLKCTRL		0x4a008f20
+#define IVAHD_SL2_CLKCTRL		0x4a008f28
+
+/* CM2.L3INIT */
+#define CM_L3INIT_HSMMC1_CLKCTRL	0x4a009328
+#define CM_L3INIT_HSMMC2_CLKCTRL	0x4a009330
+#define CM_L3INIT_HSI_CLKCTRL           0x4a009338
+#define CM_L3INIT_UNIPRO1_CLKCTRL       0x4a009340
+#define CM_L3INIT_HSUSBHOST_CLKCTRL     0x4a009358
+#define CM_L3INIT_HSUSBOTG_CLKCTRL      0x4a009360
+#define CM_L3INIT_HSUSBTLL_CLKCTRL      0x4a009368
+#define CM_L3INIT_P1500_CLKCTRL         0x4a009378
+#define CM_L3INIT_FSUSB_CLKCTRL         0x4a0093d0
+#define CM_L3INIT_USBPHY_CLKCTRL        0x4a0093e0
+
+/* CM2.CAM */
+#define CM_CAM_CLKSTCTRL                0x4a009000
+#define CM_CAM_ISS_CLKCTRL              0x4a009020
+#define CM_CAM_FDIF_CLKCTRL             0x4a009028
+
+/* CM2.DSS */
+#define CM_DSS_CLKSTCTRL                0x4a009100
+#define CM_DSS_DSS_CLKCTRL              0x4a009120
+#define CM_DSS_DEISS_CLKCTRL            0x4a009128
+
+/* CM2.SGX */
+#define CM_SGX_CLKSTCTRL                0x4a009200
+#define CM_SGX_SGX_CLKCTRL              0x4a009220
+
+#define PLL_STOP		1 /* PER & IVA */
+#define PLL_MN_POWER_BYPASS	4
+#define PLL_LOW_POWER_BYPASS	5 /* MPU, IVA & CORE */
+#define PLL_FAST_RELOCK_BYPASS	6 /* CORE */
+#define PLL_LOCK		7 /* MPU, IVA, CORE & PER */
+
+/* Used to index into DPLL parameter tables */
+struct dpll_param {
+	unsigned int m;
+	unsigned int n;
+	unsigned int m2;
+	unsigned int m3;
+	unsigned int m4;
+	unsigned int m5;
+	unsigned int m6;
+	unsigned int m7;
+};
+
+#define OMAP4_MPU_DPLL_PARAM_19M2		{0x34, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00}
+#define OMAP4_MPU_DPLL_PARAM_19M2_MPU600	{0x7d, 0x03, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00}
+#define OMAP4_MPU_DPLL_PARAM_19M2_MPU1000	{0x69, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00}
+#define OMAP4_MPU_DPLL_PARAM_38M4		{0x1a, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00}
+#define OMAP4_MPU_DPLL_PARAM_38M4_MPU600	{0x7d, 0x07, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00}
+#define OMAP4_MPU_DPLL_PARAM_38M4_MPU1000	{0x69, 0x03, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00}
+
+#define OMAP4_IVA_DPLL_PARAM_19M2		{0x61, 0x01, 0x00, 0x00, 0x04, 0x07, 0x00, 0x00}
+#define OMAP4_IVA_DPLL_PARAM_38M4		{0x61, 0x03, 0x00, 0x00, 0x04, 0x07, 0x00, 0x00}
+
+#define OMAP4_PER_DPLL_PARAM_19M2		{0x28, 0x00, 0x08, 0x06, 0x0c, 0x09, 0x04, 0x05}
+#define OMAP4_PER_DPLL_PARAM_38M4		{0x14, 0x00, 0x08, 0x06, 0x0c, 0x09, 0x04, 0x05}
+
+#define OMAP4_ABE_DPLL_PARAM_19M2		{0x80, 0x18, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00}
+#define OMAP4_ABE_DPLL_PARAM_38M4		{0x40, 0x18, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00}
+
+#define OMAP4_USB_DPLL_PARAM_19M2		{0x32, 0x0, 0x2, 0x0, 0x0, 0x0, 0x0, 0x0}
+#define OMAP4_USB_DPLL_PARAM_38M4		{0x32, 0x1, 0x2, 0x0, 0x0, 0x0, 0x0, 0x0}
+
+#define OMAP4_CORE_DPLL_PARAM_19M2_DDR200	{0x7d, 0x02, 0x02, 0x05, 0x08, 0x04, 0x06, 0x05}
+#define OMAP4_CORE_DPLL_PARAM_19M2_DDR333	{0x410,	0x09, 0x03, 0x0c, 0x14, 0x0a, 0x0f, 0x0c}
+#define OMAP4_CORE_DPLL_PARAM_19M2_DDR400	{0x7d, 0x02, 0x01, 0x05, 0x08, 0x04, 0x06, 0x05}
+#define OMAP4_CORE_DPLL_PARAM_38M4_DDR200	{0x7d, 0x05, 0x02, 0x05, 0x08, 0x04, 0x06, 0x05}
+#define OMAP4_CORE_DPLL_PARAM_38M4_DDR400	{0x7d, 0x05, 0x01, 0x05, 0x08, 0x04, 0x06, 0x05}
+
+void omap4_configure_mpu_dpll(const struct dpll_param *dpll_param);
+void omap4_configure_iva_dpll(const struct dpll_param *dpll_param);
+void omap4_configure_per_dpll(const struct dpll_param *dpll_param);
+void omap4_configure_abe_dpll(const struct dpll_param *dpll_param);
+void omap4_configure_usb_dpll(const struct dpll_param *dpll_param);
+void omap4_configure_core_dpll_no_lock(const struct dpll_param *param);
+void omap4_lock_core_dpll(void);
+void omap4_lock_core_dpll_shadow(const struct dpll_param *param);
+void omap4_enable_all_clocks(void);
+
diff --git a/arch/arm/mach-omap/include/mach/omap4-mux.h b/arch/arm/mach-omap/include/mach/omap4-mux.h
new file mode 100644
index 0000000..019574b
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/omap4-mux.h
@@ -0,0 +1,344 @@
+/*
+ * (C) Copyright 2004-2009
+ * Texas Instruments Incorporated
+ * Richard Woodruff		<r-woodruff2@ti.com>
+ * Aneesh V			<aneesh@ti.com>
+ * Balaji Krishnamoorthy	<balajitk@ti.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+#ifndef _MUX_OMAP4_H_
+#define _MUX_OMAP4_H_
+
+#include <asm/types.h>
+
+struct pad_conf_entry {
+
+	u16 offset;
+
+	u16 val;
+
+} __attribute__ ((packed));
+
+#ifdef CONFIG_OFF_PADCONF
+#define OFF_PD          (1 << 12)
+#define OFF_PU          (3 << 12)
+#define OFF_OUT_PTD     (0 << 10)
+#define OFF_OUT_PTU     (2 << 10)
+#define OFF_IN          (1 << 10)
+#define OFF_OUT         (0 << 10)
+#define OFF_EN          (1 << 9)
+#else
+#define OFF_PD          (0 << 12)
+#define OFF_PU          (0 << 12)
+#define OFF_OUT_PTD     (0 << 10)
+#define OFF_OUT_PTU     (0 << 10)
+#define OFF_IN          (0 << 10)
+#define OFF_OUT         (0 << 10)
+#define OFF_EN          (0 << 9)
+#endif
+
+#define IEN             (1 << 8)
+#define IDIS            (0 << 8)
+#define PTU             (3 << 3)
+#define PTD             (1 << 3)
+#define EN              (1 << 3)
+#define DIS             (0 << 3)
+
+#define M0              0
+#define M1              1
+#define M2              2
+#define M3              3
+#define M4              4
+#define M5              5
+#define M6              6
+#define M7              7
+
+#define SAFE_MODE	M7
+
+#ifdef CONFIG_OFF_PADCONF
+#define OFF_IN_PD       (OFF_PD | OFF_IN | OFF_EN)
+#define OFF_IN_PU       (OFF_PU | OFF_IN | OFF_EN)
+#define OFF_OUT_PD      (OFF_OUT_PTD | OFF_OUT | OFF_EN)
+#define OFF_OUT_PU      (OFF_OUT_PTU | OFF_OUT | OFF_EN)
+#else
+#define OFF_IN_PD       0
+#define OFF_IN_PU       0
+#define OFF_OUT_PD      0
+#define OFF_OUT_PU      0
+#endif
+
+#define CORE_REVISION		0x0000
+#define CORE_HWINFO		0x0004
+#define CORE_SYSCONFIG		0x0010
+#define GPMC_AD0		0x0040
+#define GPMC_AD1		0x0042
+#define GPMC_AD2		0x0044
+#define GPMC_AD3		0x0046
+#define GPMC_AD4		0x0048
+#define GPMC_AD5		0x004A
+#define GPMC_AD6		0x004C
+#define GPMC_AD7		0x004E
+#define GPMC_AD8		0x0050
+#define GPMC_AD9		0x0052
+#define GPMC_AD10		0x0054
+#define GPMC_AD11		0x0056
+#define GPMC_AD12		0x0058
+#define GPMC_AD13		0x005A
+#define GPMC_AD14		0x005C
+#define GPMC_AD15		0x005E
+#define GPMC_A16		0x0060
+#define GPMC_A17		0x0062
+#define GPMC_A18		0x0064
+#define GPMC_A19		0x0066
+#define GPMC_A20		0x0068
+#define GPMC_A21		0x006A
+#define GPMC_A22		0x006C
+#define GPMC_A23		0x006E
+#define GPMC_A24		0x0070
+#define GPMC_A25		0x0072
+#define GPMC_NCS0		0x0074
+#define GPMC_NCS1		0x0076
+#define GPMC_NCS2		0x0078
+#define GPMC_NCS3		0x007A
+#define GPMC_NWP		0x007C
+#define GPMC_CLK		0x007E
+#define GPMC_NADV_ALE		0x0080
+#define GPMC_NOE		0x0082
+#define GPMC_NWE		0x0084
+#define GPMC_NBE0_CLE		0x0086
+#define GPMC_NBE1		0x0088
+#define GPMC_WAIT0		0x008A
+#define GPMC_WAIT1		0x008C
+#define C2C_DATA11		0x008E
+#define C2C_DATA12		0x0090
+#define C2C_DATA13		0x0092
+#define C2C_DATA14		0x0094
+#define C2C_DATA15		0x0096
+#define HDMI_HPD		0x0098
+#define HDMI_CEC		0x009A
+#define HDMI_DDC_SCL		0x009C
+#define HDMI_DDC_SDA		0x009E
+#define CSI21_DX0		0x00A0
+#define CSI21_DY0		0x00A2
+#define CSI21_DX1		0x00A4
+#define CSI21_DY1		0x00A6
+#define CSI21_DX2		0x00A8
+#define CSI21_DY2		0x00AA
+#define CSI21_DX3		0x00AC
+#define CSI21_DY3		0x00AE
+#define CSI21_DX4		0x00B0
+#define CSI21_DY4		0x00B2
+#define CSI22_DX0		0x00B4
+#define CSI22_DY0		0x00B6
+#define CSI22_DX1		0x00B8
+#define CSI22_DY1		0x00BA
+#define CAM_SHUTTER		0x00BC
+#define CAM_STROBE		0x00BE
+#define CAM_GLOBALRESET		0x00C0
+#define USBB1_ULPITLL_CLK	0x00C2
+#define USBB1_ULPITLL_STP	0x00C4
+#define USBB1_ULPITLL_DIR	0x00C6
+#define USBB1_ULPITLL_NXT	0x00C8
+#define USBB1_ULPITLL_DAT0	0x00CA
+#define USBB1_ULPITLL_DAT1	0x00CC
+#define USBB1_ULPITLL_DAT2	0x00CE
+#define USBB1_ULPITLL_DAT3	0x00D0
+#define USBB1_ULPITLL_DAT4	0x00D2
+#define USBB1_ULPITLL_DAT5	0x00D4
+#define USBB1_ULPITLL_DAT6	0x00D6
+#define USBB1_ULPITLL_DAT7	0x00D8
+#define USBB1_HSIC_DATA		0x00DA
+#define USBB1_HSIC_STROBE	0x00DC
+#define USBC1_ICUSB_DP		0x00DE
+#define USBC1_ICUSB_DM		0x00E0
+#define SDMMC1_CLK		0x00E2
+#define SDMMC1_CMD		0x00E4
+#define SDMMC1_DAT0		0x00E6
+#define SDMMC1_DAT1		0x00E8
+#define SDMMC1_DAT2		0x00EA
+#define SDMMC1_DAT3		0x00EC
+#define SDMMC1_DAT4		0x00EE
+#define SDMMC1_DAT5		0x00F0
+#define SDMMC1_DAT6		0x00F2
+#define SDMMC1_DAT7		0x00F4
+#define ABE_MCBSP2_CLKX		0x00F6
+#define ABE_MCBSP2_DR		0x00F8
+#define ABE_MCBSP2_DX		0x00FA
+#define ABE_MCBSP2_FSX		0x00FC
+#define ABE_MCBSP1_CLKX		0x00FE
+#define ABE_MCBSP1_DR		0x0100
+#define ABE_MCBSP1_DX		0x0102
+#define ABE_MCBSP1_FSX		0x0104
+#define ABE_PDM_UL_DATA		0x0106
+#define ABE_PDM_DL_DATA		0x0108
+#define ABE_PDM_FRAME		0x010A
+#define ABE_PDM_LB_CLK		0x010C
+#define ABE_CLKS		0x010E
+#define ABE_DMIC_CLK1		0x0110
+#define ABE_DMIC_DIN1		0x0112
+#define ABE_DMIC_DIN2		0x0114
+#define ABE_DMIC_DIN3		0x0116
+#define UART2_CTS		0x0118
+#define UART2_RTS		0x011A
+#define UART2_RX		0x011C
+#define UART2_TX		0x011E
+#define HDQ_SIO			0x0120
+#define I2C1_SCL		0x0122
+#define I2C1_SDA		0x0124
+#define I2C2_SCL		0x0126
+#define I2C2_SDA		0x0128
+#define I2C3_SCL		0x012A
+#define I2C3_SDA		0x012C
+#define I2C4_SCL		0x012E
+#define I2C4_SDA		0x0130
+#define MCSPI1_CLK		0x0132
+#define MCSPI1_SOMI		0x0134
+#define MCSPI1_SIMO		0x0136
+#define MCSPI1_CS0		0x0138
+#define MCSPI1_CS1		0x013A
+#define MCSPI1_CS2		0x013C
+#define MCSPI1_CS3		0x013E
+#define UART3_CTS_RCTX		0x0140
+#define UART3_RTS_SD		0x0142
+#define UART3_RX_IRRX		0x0144
+#define UART3_TX_IRTX		0x0146
+#define SDMMC5_CLK		0x0148
+#define SDMMC5_CMD		0x014A
+#define SDMMC5_DAT0		0x014C
+#define SDMMC5_DAT1		0x014E
+#define SDMMC5_DAT2		0x0150
+#define SDMMC5_DAT3		0x0152
+#define MCSPI4_CLK		0x0154
+#define MCSPI4_SIMO		0x0156
+#define MCSPI4_SOMI		0x0158
+#define MCSPI4_CS0		0x015A
+#define UART4_RX		0x015C
+#define UART4_TX		0x015E
+#define USBB2_ULPITLL_CLK	0x0160
+#define USBB2_ULPITLL_STP	0x0162
+#define USBB2_ULPITLL_DIR	0x0164
+#define USBB2_ULPITLL_NXT	0x0166
+#define USBB2_ULPITLL_DAT0	0x0168
+#define USBB2_ULPITLL_DAT1	0x016A
+#define USBB2_ULPITLL_DAT2	0x016C
+#define USBB2_ULPITLL_DAT3	0x016E
+#define USBB2_ULPITLL_DAT4	0x0170
+#define USBB2_ULPITLL_DAT5	0x0172
+#define USBB2_ULPITLL_DAT6	0x0174
+#define USBB2_ULPITLL_DAT7	0x0176
+#define USBB2_HSIC_DATA		0x0178
+#define USBB2_HSIC_STROBE	0x017A
+#define UNIPRO_TX0		0x017C
+#define UNIPRO_TY0		0x017E
+#define UNIPRO_TX1		0x0180
+#define UNIPRO_TY1		0x0182
+#define UNIPRO_TX2		0x0184
+#define UNIPRO_TY2		0x0186
+#define UNIPRO_RX0		0x0188
+#define UNIPRO_RY0		0x018A
+#define UNIPRO_RX1		0x018C
+#define UNIPRO_RY1		0x018E
+#define UNIPRO_RX2		0x0190
+#define UNIPRO_RY2		0x0192
+#define USBA0_OTG_CE		0x0194
+#define USBA0_OTG_DP		0x0196
+#define USBA0_OTG_DM		0x0198
+#define FREF_CLK1_OUT		0x019A
+#define FREF_CLK2_OUT		0x019C
+#define SYS_NIRQ1		0x019E
+#define SYS_NIRQ2		0x01A0
+#define SYS_BOOT0		0x01A2
+#define SYS_BOOT1		0x01A4
+#define SYS_BOOT2		0x01A6
+#define SYS_BOOT3		0x01A8
+#define SYS_BOOT4		0x01AA
+#define SYS_BOOT5		0x01AC
+#define DPM_EMU0		0x01AE
+#define DPM_EMU1		0x01B0
+#define DPM_EMU2		0x01B2
+#define DPM_EMU3		0x01B4
+#define DPM_EMU4		0x01B6
+#define DPM_EMU5		0x01B8
+#define DPM_EMU6		0x01BA
+#define DPM_EMU7		0x01BC
+#define DPM_EMU8		0x01BE
+#define DPM_EMU9		0x01C0
+#define DPM_EMU10		0x01C2
+#define DPM_EMU11		0x01C4
+#define DPM_EMU12		0x01C6
+#define DPM_EMU13		0x01C8
+#define DPM_EMU14		0x01CA
+#define DPM_EMU15		0x01CC
+#define DPM_EMU16		0x01CE
+#define DPM_EMU17		0x01D0
+#define DPM_EMU18		0x01D2
+#define DPM_EMU19		0x01D4
+#define WAKEUPEVENT_0		0x01D8
+#define WAKEUPEVENT_1		0x01DC
+#define WAKEUPEVENT_2		0x01E0
+#define WAKEUPEVENT_3		0x01E4
+#define WAKEUPEVENT_4		0x01E8
+#define WAKEUPEVENT_5		0x01EC
+#define WAKEUPEVENT_6		0x01F0
+
+#define WKUP_REVISION		0x0000
+#define WKUP_HWINFO		0x0004
+#define WKUP_SYSCONFIG		0x0010
+#define PAD0_SIM_IO		0x0040
+#define PAD1_SIM_CLK		0x0042
+#define PAD0_SIM_RESET		0x0044
+#define PAD1_SIM_CD		0x0046
+#define PAD0_SIM_PWRCTRL		0x0048
+#define PAD1_SR_SCL		0x004A
+#define PAD0_SR_SDA		0x004C
+#define PAD1_FREF_XTAL_IN		0x004E
+#define PAD0_FREF_SLICER_IN	0x0050
+#define PAD1_FREF_CLK_IOREQ	0x0052
+#define PAD0_FREF_CLK0_OUT		0x0054
+#define PAD1_FREF_CLK3_REQ		0x0056
+#define PAD0_FREF_CLK3_OUT		0x0058
+#define PAD1_FREF_CLK4_REQ		0x005A
+#define PAD0_FREF_CLK4_OUT		0x005C
+#define PAD1_SYS_32K		0x005E
+#define PAD0_SYS_NRESPWRON		0x0060
+#define PAD1_SYS_NRESWARM		0x0062
+#define PAD0_SYS_PWR_REQ		0x0064
+#define PAD1_SYS_PWRON_RESET	0x0066
+#define PAD0_SYS_BOOT6		0x0068
+#define PAD1_SYS_BOOT7		0x006A
+#define PAD0_JTAG_NTRST		0x006C
+#define PAD1_JTAG_TCK		0x006D
+#define PAD0_JTAG_RTCK		0x0070
+#define PAD1_JTAG_TMS_TMSC		0x0072
+#define PAD0_JTAG_TDI		0x0074
+#define PAD1_JTAG_TDO		0x0076
+#define PADCONF_WAKEUPEVENT_0	0x007C
+#define CONTROL_SMART1NOPMIO_PADCONF_0		0x05A0
+#define CONTROL_SMART1NOPMIO_PADCONF_1		0x05A4
+#define PADCONF_MODE		0x05A8
+#define CONTROL_XTAL_OSCILLATOR			0x05AC
+#define CONTROL_CONTROL_I2C_2			0x0604
+#define CONTROL_CONTROL_JTAG			0x0608
+#define CONTROL_CONTROL_SYS			0x060C
+#define CONTROL_SPARE_RW		0x0614
+#define CONTROL_SPARE_R		0x0618
+#define CONTROL_SPARE_R_C0		0x061C
+
+#endif /* _MUX_OMAP4_H_ */
diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
new file mode 100644
index 0000000..db0dfdf
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -0,0 +1,179 @@
+/*
+ * (C) Copyright 2010
+ * Texas Instruments, <www.ti.com>
+ *
+ * Authors:
+ *	Aneesh V <aneesh@ti.com>
+ *
+ * Derived from OMAP3 work by
+ *	Richard Woodruff <r-woodruff2@ti.com>
+ *	Syed Mohammed Khasim <x0khasim@ti.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef _OMAP4_H_
+#define _OMAP4_H_
+
+#if !(defined(__KERNEL_STRICT_NAMES) || defined(__ASSEMBLY__))
+#include <asm/types.h>
+#endif /* !(__KERNEL_STRICT_NAMES || __ASSEMBLY__) */
+
+/*
+ * L4 Peripherals - L4 Wakeup and L4 Core now
+ */
+#define OMAP44XX_L4_CORE_BASE		0x4A000000
+#define OMAP44XX_WAKEUP_L4_IO_BASE	0x4A300000
+#define OMAP44XX_L4_WKUP_BASE		0x4A300000
+#define OMAP44XX_L4_PER_BASE		0x48000000
+
+/* EMIF and DMM registers */
+#define OMAP44XX_EMIF1_BASE		0x4c000000
+#define OMAP44XX_EMIF2_BASE		0x4d000000
+
+#define OMAP44XX_DRAM_ADDR_SPACE_START	0x80000000
+#define OMAP44XX_DRAM_ADDR_SPACE_END	0xD0000000
+
+
+/* CONTROL */
+#define OMAP44XX_CTRL_BASE		(OMAP44XX_L4_CORE_BASE + 0x2000)
+#define OMAP44XX_CONTROL_PADCONF_CORE	(OMAP44XX_L4_CORE_BASE + 0x100000)
+#define OMAP44XX_CONTROL_PADCONF_WKUP	(OMAP44XX_L4_CORE_BASE + 0x31E000)
+
+/* PRM */
+#define OMAP44XX_PRM_VC_VAL_BYPASS	(OMAP44XX_WAKEUP_L4_IO_BASE + 0x7ba0)
+#define OMAP44XX_PRM_VC_CFG_I2C_MODE	(OMAP44XX_WAKEUP_L4_IO_BASE + 0x7ba8)
+#define OMAP44XX_PRM_VC_CFG_I2C_CLK	(OMAP44XX_WAKEUP_L4_IO_BASE + 0x7bac)
+
+/* IRQ */
+#define OMAP44XX_PRM_IRQSTATUS_MPU_A9	(OMAP44XX_WAKEUP_L4_IO_BASE + 0x6010)
+
+/* UART */
+#define OMAP44XX_UART1_BASE		(OMAP44XX_L4_PER_BASE + 0x6a000)
+#define OMAP44XX_UART2_BASE		(OMAP44XX_L4_PER_BASE + 0x6c000)
+#define OMAP44XX_UART3_BASE		(OMAP44XX_L4_PER_BASE + 0x20000)
+
+/* General Purpose Timers */
+#define OMAP44XX_GPT1_BASE		(OMAP44XX_L4_WKUP_BASE + 0x18000)
+#define OMAP44XX_GPT2_BASE		(OMAP44XX_L4_PER_BASE  + 0x32000)
+#define OMAP44XX_GPT3_BASE		(OMAP44XX_L4_PER_BASE  + 0x34000)
+
+/* Watchdog Timer2 - MPU watchdog */
+#define OMAP44XX_WDT2_BASE		(OMAP44XX_L4_WKUP_BASE + 0x14000)
+
+#define OMAP44XX_SCRM_BASE              0x4a30a000
+#define OMAP44XX_SCRM_ALTCLKSRC         (OMAP44XX_SCRM_BASE + 0x110)
+#define OMAP44XX_SCRM_AUXCLK1           (OMAP44XX_SCRM_BASE + 0x314)
+#define OMAP44XX_SCRM_AUXCLK3           (OMAP44XX_SCRM_BASE + 0x31c)
+
+/* 32KTIMER */
+#define OMAP_32KTIMER_BASE		(OMAP44XX_L4_WKUP_BASE + 0x4000)
+
+/* GPMC */
+#define OMAP_GPMC_BASE		0x50000000
+
+/* DMM */
+#define OMAP44XX_DMM_BASE		0x4E000000
+#define DMM_LISA_MAP_BASE		(OMAP44XX_DMM_BASE + 0x40)
+#define DMM_LISA_MAP_SYS_SIZE_MASK	(7 << 20)
+#define DMM_LISA_MAP_SYS_SIZE_SHIFT	20
+#define DMM_LISA_MAP_SYS_ADDR_MASK	(0xFF << 24)
+/*
+ * Hardware Register Details
+ */
+
+/* Watchdog Timer */
+#define WD_UNLOCK1		0xAAAA
+#define WD_UNLOCK2		0x5555
+
+/* GP Timer */
+#define TCLR_ST			(0x1 << 0)
+#define TCLR_AR			(0x1 << 1)
+#define TCLR_PRE		(0x1 << 5)
+
+/*
+ * PRCM
+ */
+
+/* PRM */
+#define PRM_BASE		0x4A306000
+#define PRM_DEVICE_BASE		(PRM_BASE + 0x1B00)
+
+#define PRM_RSTCTRL		PRM_DEVICE_BASE
+#define PRM_RSTCTRL_RESET	0x01
+
+#ifndef __ASSEMBLY__
+
+struct s32ktimer {
+	unsigned char res[0x10];
+	unsigned int s32k_cr;	/* 0x10 */
+};
+
+#endif /* __ASSEMBLY__ */
+
+/*
+ * Non-secure SRAM Addresses
+ * Non-secure RAM starts at 0x40300000 for GP devices. But we keep SRAM_BASE
+ * at 0x40304000(EMU base) so that our code works for both EMU and GP
+ */
+#define NON_SECURE_SRAM_START	0x40304000
+#define NON_SECURE_SRAM_END	0x4030E000	/* Not inclusive */
+/* base address for indirect vectors (internal boot mode) */
+#define SRAM_ROM_VECT_BASE	0x4030D000
+/* Temporary SRAM stack used while low level init is done */
+#define LOW_LEVEL_SRAM_STACK	NON_SECURE_SRAM_END
+
+/*
+ * OMAP4 real hardware:
+ * TODO: Change this to the IDCODE in the hw regsiter
+ */
+#define CPU_OMAP4430_ES10	1
+#define CPU_OMAP4430_ES20	2
+
+#define CM_DLL_CTRL		0x4a004110
+#define CM_MEMIF_EMIF_1_CLKCTRL	0x4a008b30
+#define CM_MEMIF_EMIF_2_CLKCTRL 0x4a008b38
+
+/* Silicon revisions */
+#define OMAP4430_SILICON_ID_INVALID	0
+#define OMAP4430_ES1_0	1
+#define OMAP4430_ES2_0	2
+#define OMAP4430_ES2_1	3
+#define OMAP4430_ES2_2	4
+
+struct ddr_regs {
+	u32 tim1;
+	u32 tim2;
+	u32 tim3;
+	u32 phy_ctrl_1;
+	u32 ref_ctrl;
+	u32 config_init;
+	u32 config_final;
+	u32 zq_config;
+	u8 mr1;
+	u8 mr2;
+};
+
+struct dpll_param;
+
+void omap4_ddr_init(const struct ddr_regs *, const struct dpll_param *);
+void omap4_power_i2c_send(u32);
+unsigned int omap4_revision(void);
+
+#endif
diff --git a/arch/arm/mach-omap/include/mach/silicon.h b/arch/arm/mach-omap/include/mach/silicon.h
index 22daa5c..c2f0c41 100644
--- a/arch/arm/mach-omap/include/mach/silicon.h
+++ b/arch/arm/mach-omap/include/mach/silicon.h
@@ -25,6 +25,9 @@
 #ifdef CONFIG_ARCH_OMAP3
 #include <mach/omap3-silicon.h>
 #endif
+#ifdef CONFIG_ARCH_OMAP4
+#include <mach/omap4-silicon.h>
+#endif
 
 /* If Architecture specific init functions are present */
 #ifdef CONFIG_ARCH_HAS_LOWLEVEL_INIT
diff --git a/arch/arm/mach-omap/omap4_clock.c b/arch/arm/mach-omap/omap4_clock.c
new file mode 100644
index 0000000..23a77d0
--- /dev/null
+++ b/arch/arm/mach-omap/omap4_clock.c
@@ -0,0 +1,380 @@
+#include <common.h>
+#include <mach/syslib.h>
+#include <asm/io.h>
+#include <mach/omap4-clock.h>
+
+#define LDELAY	12000000
+
+void omap4_configure_mpu_dpll(const struct dpll_param *dpll_param)
+{
+	/* Unlock the MPU dpll */
+	sr32(CM_CLKMODE_DPLL_MPU, 0, 3, PLL_MN_POWER_BYPASS);
+	wait_on_value((1 << 0), 0, CM_IDLEST_DPLL_MPU, LDELAY);
+
+	sr32(CM_AUTOIDLE_DPLL_MPU, 0, 3, 0x0); /* Disable DPLL autoidle */
+
+	/* Set M,N,M2 values */
+	sr32(CM_CLKSEL_DPLL_MPU, 8, 11, dpll_param->m);
+	sr32(CM_CLKSEL_DPLL_MPU, 0, 6, dpll_param->n);
+	sr32(CM_DIV_M2_DPLL_MPU, 0, 5, dpll_param->m2);
+	sr32(CM_DIV_M2_DPLL_MPU, 8, 1, 0x1);
+
+	/* Lock the mpu dpll */
+	sr32(CM_CLKMODE_DPLL_MPU, 0, 3, PLL_LOCK | 0x10);
+	wait_on_value((1 << 0), 1, CM_IDLEST_DPLL_MPU, LDELAY);
+}
+
+void omap4_configure_iva_dpll(const struct dpll_param *dpll_param)
+{
+	/* Unlock the IVA dpll */
+	sr32(CM_CLKMODE_DPLL_IVA, 0, 3, PLL_MN_POWER_BYPASS);
+	wait_on_value((1 << 0), 0, CM_IDLEST_DPLL_IVA, LDELAY);
+
+	/* CM_BYPCLK_DPLL_IVA = CORE_X2_CLK/2 */
+	sr32(CM_BYPCLK_DPLL_IVA, 0, 2, 0x1);
+
+	sr32(CM_AUTOIDLE_DPLL_IVA, 0, 3, 0x0); /* Disable DPLL autoidle */
+
+	/* Set M,N,M4,M5 */
+	sr32(CM_CLKSEL_DPLL_IVA, 8, 11, dpll_param->m);
+	sr32(CM_CLKSEL_DPLL_IVA, 0, 7, dpll_param->n);
+	sr32(CM_DIV_M4_DPLL_IVA, 0, 5, dpll_param->m4);
+	sr32(CM_DIV_M4_DPLL_IVA, 8, 1, 0x1);
+	sr32(CM_DIV_M5_DPLL_IVA, 0, 5, dpll_param->m5);
+	sr32(CM_DIV_M5_DPLL_IVA, 8, 1, 0x1);
+
+	/* Lock the iva dpll */
+	sr32(CM_CLKMODE_DPLL_IVA, 0, 3, PLL_LOCK);
+	wait_on_value((1 << 0), 1, CM_IDLEST_DPLL_IVA, LDELAY);
+}
+
+void omap4_configure_per_dpll(const struct dpll_param *dpll_param)
+{
+	/* Unlock the PER dpll */
+	sr32(CM_CLKMODE_DPLL_PER, 0, 3, PLL_MN_POWER_BYPASS);
+	wait_on_value((1 << 0), 0, CM_IDLEST_DPLL_PER, LDELAY);
+
+	/* Disable autoidle */
+	sr32(CM_AUTOIDLE_DPLL_PER, 0, 3, 0x0);
+
+	sr32(CM_CLKSEL_DPLL_PER, 8, 11, dpll_param->m);
+	sr32(CM_CLKSEL_DPLL_PER, 0, 6, dpll_param->n);
+	sr32(CM_DIV_M2_DPLL_PER, 0, 5, dpll_param->m2);
+	sr32(CM_DIV_M3_DPLL_PER, 0, 5, dpll_param->m3);
+	sr32(CM_DIV_M4_DPLL_PER, 0, 5, dpll_param->m4);
+	sr32(CM_DIV_M5_DPLL_PER, 0, 5, dpll_param->m5);
+	sr32(CM_DIV_M6_DPLL_PER, 0, 5, dpll_param->m6);
+	sr32(CM_DIV_M7_DPLL_PER, 0, 5, dpll_param->m7);
+
+	sr32(CM_DIV_M2_DPLL_PER, 8, 1, 0x1);
+	sr32(CM_DIV_M3_DPLL_PER, 8, 1, 0x1);
+	sr32(CM_DIV_M4_DPLL_PER, 8, 1, 0x1);
+	sr32(CM_DIV_M5_DPLL_PER, 8, 1, 0x1);
+	sr32(CM_DIV_M6_DPLL_PER, 8, 1, 0x1);
+	sr32(CM_DIV_M7_DPLL_PER, 8, 1, 0x1);
+
+	/* Lock the per dpll */
+	sr32(CM_CLKMODE_DPLL_PER, 0, 3, PLL_LOCK);
+	wait_on_value((1 << 0), 1, CM_IDLEST_DPLL_PER, LDELAY);
+
+	return;
+}
+
+void omap4_configure_abe_dpll(const struct dpll_param *dpll_param)
+{
+	/* Select sys_clk as ref clk for ABE dpll */
+	sr32(CM_ABE_PLL_REF_CLKSEL, 0, 32, 0x0);
+
+	/* Unlock the ABE dpll */
+	sr32(CM_CLKMODE_DPLL_ABE, 0, 3, PLL_MN_POWER_BYPASS);
+	wait_on_value((1 << 0), 0, CM_IDLEST_DPLL_ABE, LDELAY);
+
+	/* Disable autoidle */
+	sr32(CM_AUTOIDLE_DPLL_ABE, 0, 3, 0x0);
+
+	sr32(CM_CLKSEL_DPLL_ABE, 8, 11, dpll_param->m);
+	sr32(CM_CLKSEL_DPLL_ABE, 0, 6, dpll_param->n);
+
+	/* Force DPLL CLKOUTHIF to stay enabled */
+	sr32(CM_DIV_M2_DPLL_ABE, 0, 32, 0x500);
+	sr32(CM_DIV_M2_DPLL_ABE, 0, 5, dpll_param->m2);
+	sr32(CM_DIV_M2_DPLL_ABE, 8, 1, 0x1);
+	/* Force DPLL CLKOUTHIF to stay enabled */
+	sr32(CM_DIV_M3_DPLL_ABE, 0, 32, 0x100);
+	sr32(CM_DIV_M3_DPLL_ABE, 0, 5, dpll_param->m3);
+	sr32(CM_DIV_M3_DPLL_ABE, 8, 1, 0x1);
+
+	/* Lock the abe dpll */
+	sr32(CM_CLKMODE_DPLL_ABE, 0, 3, PLL_LOCK);
+	wait_on_value((1 << 0), 1, CM_IDLEST_DPLL_ABE, LDELAY);
+
+	return;
+}
+
+void omap4_configure_usb_dpll(const struct dpll_param *dpll_param)
+{
+	/* Select the 60Mhz clock 480/8 = 60*/
+	sr32(CM_CLKSEL_USB_60MHz, 0, 32, 0x1);
+
+	/* Unlock the USB dpll */
+	sr32(CM_CLKMODE_DPLL_USB, 0, 3, PLL_MN_POWER_BYPASS);
+	wait_on_value((1 << 0), 0, CM_IDLEST_DPLL_USB, LDELAY);
+
+	/* Disable autoidle */
+	sr32(CM_AUTOIDLE_DPLL_USB, 0, 3, 0x0);
+
+	sr32(CM_CLKSEL_DPLL_USB, 8, 11, dpll_param->m);
+	sr32(CM_CLKSEL_DPLL_USB, 0, 6, dpll_param->n);
+
+	/* Force DPLL CLKOUT to stay active */
+	sr32(CM_DIV_M2_DPLL_USB, 0, 32, 0x100);
+	sr32(CM_DIV_M2_DPLL_USB, 0, 5, dpll_param->m2);
+	sr32(CM_DIV_M2_DPLL_USB, 8, 1, 0x1);
+	sr32(CM_CLKDCOLDO_DPLL_USB, 8, 1, 0x1);
+
+	/* Lock the usb dpll */
+	sr32(CM_CLKMODE_DPLL_USB, 0, 3, PLL_LOCK);
+	wait_on_value((1 << 0), 1, CM_IDLEST_DPLL_USB, LDELAY);
+
+	/* force enable the CLKDCOLDO clock */
+	sr32(CM_CLKDCOLDO_DPLL_USB, 0, 32, 0x100);
+
+	return;
+}
+
+void omap4_configure_core_dpll_no_lock(const struct dpll_param *param)
+{
+	/* CORE_CLK=CORE_X2_CLK/2, L3_CLK=CORE_CLK/2, L4_CLK=L3_CLK/2 */
+	sr32(CM_CLKSEL_CORE, 0, 32, 0x110);
+
+	/* Unlock the CORE dpll */
+	sr32(CM_CLKMODE_DPLL_CORE, 0, 3, PLL_MN_POWER_BYPASS);
+	wait_on_value((1 << 0), 0, CM_IDLEST_DPLL_CORE, LDELAY);
+
+	/* Disable autoidle */
+	sr32(CM_AUTOIDLE_DPLL_CORE, 0, 3, 0x0);
+
+	sr32(CM_CLKSEL_DPLL_CORE, 8, 11, param->m);
+	sr32(CM_CLKSEL_DPLL_CORE, 0, 6, param->n);
+	sr32(CM_DIV_M2_DPLL_CORE, 0, 5, param->m2);
+	sr32(CM_DIV_M3_DPLL_CORE, 0, 5, param->m3);
+	sr32(CM_DIV_M4_DPLL_CORE, 0, 5, param->m4);
+	sr32(CM_DIV_M5_DPLL_CORE, 0, 5, param->m5);
+	sr32(CM_DIV_M6_DPLL_CORE, 0, 5, param->m6);
+	sr32(CM_DIV_M7_DPLL_CORE, 0, 5, param->m7);
+
+	sr32(CM_DIV_M2_DPLL_CORE, 8, 1, 0x1);
+	sr32(CM_DIV_M3_DPLL_CORE, 8, 1, 0x1);
+	sr32(CM_DIV_M4_DPLL_CORE, 8, 1, 0x1);
+	sr32(CM_DIV_M5_DPLL_CORE, 8, 1, 0x1);
+	sr32(CM_DIV_M6_DPLL_CORE, 8, 1, 0x0);
+	sr32(CM_DIV_M7_DPLL_CORE, 8, 1, 0x1);
+}
+
+void omap4_lock_core_dpll(void)
+{
+	/* Lock the core dpll */
+	sr32(CM_CLKMODE_DPLL_CORE, 0, 3, PLL_LOCK);
+	wait_on_value((1 << 0), 1, CM_IDLEST_DPLL_CORE, LDELAY);
+
+	return;
+}
+
+void omap4_lock_core_dpll_shadow(const struct dpll_param *param)
+{
+	/* Lock the core dpll using freq update method */
+	*(volatile int*)0x4A004120 = 10;	//(CM_CLKMODE_DPLL_CORE)
+
+	/* CM_SHADOW_FREQ_CONFIG1: DLL_OVERRIDE = 1(hack), DLL_RESET = 1,
+	 * DPLL_CORE_M2_DIV =1, DPLL_CORE_DPLL_EN = 0x7, FREQ_UPDATE = 1
+	 */
+	*(volatile int*)0x4A004260 = 0x70D | (param->m2 << 11);
+
+	/* Wait for Freq_Update to get cleared: CM_SHADOW_FREQ_CONFIG1 */
+	while( ( (*(volatile int*)0x4A004260) & 0x1) == 0x1 );
+
+	/* Wait for DPLL to Lock : CM_IDLEST_DPLL_CORE */
+	wait_on_value((1 << 0), 1, CM_IDLEST_DPLL_CORE, LDELAY);
+}
+
+void omap4_enable_all_clocks(void)
+{
+	/* Enable Ducati clocks */
+	sr32(CM_DUCATI_DUCATI_CLKCTRL, 0, 32, 0x1);
+	sr32(CM_DUCATI_CLKSTCTRL, 0, 32, 0x2);
+
+	wait_on_value((1 << 8), (1 << 8), CM_DUCATI_CLKSTCTRL, LDELAY);
+
+	/* Enable ivahd and sl2 clocks */
+	sr32(IVAHD_IVAHD_CLKCTRL, 0, 32, 0x1);
+	sr32(IVAHD_SL2_CLKCTRL, 0, 32, 0x1);
+	sr32(IVAHD_CLKSTCTRL, 0, 32, 0x2);
+
+	wait_on_value((1 << 8), (1 << 8), IVAHD_CLKSTCTRL, LDELAY);
+
+	/* Enable Tesla clocks */
+	sr32(DSP_DSP_CLKCTRL, 0, 32, 0x1);
+	sr32(DSP_CLKSTCTRL, 0, 32, 0x2);
+
+	wait_on_value((1 << 8), (1 << 8), DSP_CLKSTCTRL, LDELAY);
+
+	/* wait for tesla to become accessible */
+
+	/* ABE clocks */
+	sr32(CM1_ABE_CLKSTCTRL, 0, 32, 0x3);
+	sr32(CM1_ABE_AESS_CLKCTRL, 0, 32, 0x2);
+	sr32(CM1_ABE_PDM_CLKCTRL, 0, 32, 0x2);
+	sr32(CM1_ABE_DMIC_CLKCTRL, 0, 32, 0x2);
+	sr32(CM1_ABE_MCASP_CLKCTRL, 0, 32, 0x2);
+	sr32(CM1_ABE_MCBSP1_CLKCTRL, 0, 32, 0x08000002);
+	sr32(CM1_ABE_MCBSP2_CLKCTRL, 0, 32, 0x08000002);
+	sr32(CM1_ABE_MCBSP3_CLKCTRL, 0, 32, 0x08000002);
+	sr32(CM1_ABE_SLIMBUS_CLKCTRL, 0, 32, 0xf02);
+	sr32(CM1_ABE_TIMER5_CLKCTRL, 0, 32, 0x2);
+	sr32(CM1_ABE_TIMER6_CLKCTRL, 0, 32, 0x2);
+	sr32(CM1_ABE_TIMER7_CLKCTRL, 0, 32, 0x2);
+	sr32(CM1_ABE_TIMER8_CLKCTRL, 0, 32, 0x2);
+	sr32(CM1_ABE_WDT3_CLKCTRL, 0, 32, 0x2);
+	/* Disable sleep transitions */
+	sr32(CM1_ABE_CLKSTCTRL, 0, 32, 0x0);
+
+	/* L4PER clocks */
+	sr32(CM_L4PER_CLKSTCTRL, 0, 32, 0x2);
+	sr32(CM_L4PER_DMTIMER10_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_DMTIMER10_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_DMTIMER11_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_DMTIMER11_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_DMTIMER2_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_DMTIMER2_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_DMTIMER3_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_DMTIMER3_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_DMTIMER4_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_DMTIMER4_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_DMTIMER9_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_DMTIMER9_CLKCTRL, LDELAY);
+
+	/* GPIO clocks */
+	sr32(CM_L4PER_GPIO2_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO2_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_GPIO3_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO3_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_GPIO4_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO4_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_GPIO5_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO5_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_GPIO6_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO6_CLKCTRL, LDELAY);
+
+	sr32(CM_L4PER_HDQ1W_CLKCTRL, 0, 32, 0x2);
+
+	/* I2C clocks */
+	sr32(CM_L4PER_I2C1_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_I2C1_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_I2C2_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_I2C2_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_I2C3_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_I2C3_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_I2C4_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_I2C4_CLKCTRL, LDELAY);
+
+	sr32(CM_L4PER_MCBSP4_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_MCBSP4_CLKCTRL, LDELAY);
+
+	/* MCSPI clocks */
+	sr32(CM_L4PER_MCSPI1_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_MCSPI1_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_MCSPI2_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_MCSPI2_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_MCSPI3_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_MCSPI3_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_MCSPI4_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_MCSPI4_CLKCTRL, LDELAY);
+
+	/* MMC clocks */
+	sr32(CM_L3INIT_HSMMC1_CLKCTRL, 0, 2, 0x2);
+	sr32(CM_L3INIT_HSMMC1_CLKCTRL, 24, 1, 0x1);
+	sr32(CM_L3INIT_HSMMC2_CLKCTRL, 0, 2, 0x2);
+	sr32(CM_L3INIT_HSMMC2_CLKCTRL, 24, 1, 0x1);
+	sr32(CM_L4PER_MMCSD3_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 18)|(1 << 17)|(1 << 16), 0, CM_L4PER_MMCSD3_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_MMCSD4_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 18)|(1 << 17)|(1 << 16), 0, CM_L4PER_MMCSD4_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_MMCSD5_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_MMCSD5_CLKCTRL, LDELAY);
+
+	/* UART clocks */
+	sr32(CM_L4PER_UART1_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_UART1_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_UART2_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_UART2_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_UART3_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_UART3_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_UART4_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_UART4_CLKCTRL, LDELAY);
+
+	/* WKUP clocks */
+	sr32(CM_WKUP_GPIO1_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_WKUP_GPIO1_CLKCTRL, LDELAY);
+	sr32(CM_WKUP_TIMER1_CLKCTRL, 0, 32, 0x01000002);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_WKUP_TIMER1_CLKCTRL, LDELAY);
+
+	sr32(CM_WKUP_KEYBOARD_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_WKUP_KEYBOARD_CLKCTRL, LDELAY);
+
+	sr32(CM_SDMA_CLKSTCTRL, 0, 32, 0x0);
+	sr32(CM_MEMIF_CLKSTCTRL, 0, 32, 0x3);
+	sr32(CM_MEMIF_EMIF_1_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_MEMIF_EMIF_1_CLKCTRL, LDELAY);
+	sr32(CM_MEMIF_EMIF_2_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_MEMIF_EMIF_2_CLKCTRL, LDELAY);
+	sr32(CM_D2D_CLKSTCTRL, 0, 32, 0x3);
+	sr32(CM_L3_2_GPMC_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L3_2_GPMC_CLKCTRL, LDELAY);
+	sr32(CM_L3INSTR_L3_3_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L3INSTR_L3_3_CLKCTRL, LDELAY);
+	sr32(CM_L3INSTR_L3_INSTR_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L3INSTR_L3_INSTR_CLKCTRL, LDELAY);
+	sr32(CM_L3INSTR_OCP_WP1_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L3INSTR_OCP_WP1_CLKCTRL, LDELAY);
+
+	/* WDT clocks */
+	sr32(CM_WKUP_WDT2_CLKCTRL, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_WKUP_WDT2_CLKCTRL, LDELAY);
+
+	/* Enable Camera clocks */
+	sr32(CM_CAM_CLKSTCTRL, 0, 32, 0x3);
+	sr32(CM_CAM_ISS_CLKCTRL, 0, 32, 0x102);
+	sr32(CM_CAM_FDIF_CLKCTRL, 0, 32, 0x2);
+	sr32(CM_CAM_CLKSTCTRL, 0, 32, 0x0);
+
+	/* Enable DSS clocks */
+	/* PM_DSS_PWRSTCTRL ON State and LogicState = 1 (Retention) */
+	__raw_writel(7, 0x4A307100); /* DSS_PRM */
+
+	sr32(CM_DSS_CLKSTCTRL, 0, 32, 0x2);
+	sr32(CM_DSS_DSS_CLKCTRL, 0, 32, 0xf02);
+	sr32(CM_DSS_DEISS_CLKCTRL, 0, 32, 0x2);
+
+	/* Check for DSS Clocks */
+	while ((__raw_readl(0x4A009100) & 0xF00) != 0xE00)
+		;
+	/* Set HW_AUTO transition mode */
+	sr32(CM_DSS_CLKSTCTRL, 0, 32, 0x3);
+
+	/* Enable SGX clocks */
+	sr32(CM_SGX_CLKSTCTRL, 0, 32, 0x2);
+	sr32(CM_SGX_SGX_CLKCTRL, 0, 32, 0x2);
+	/* Check for SGX FCLK and ICLK */
+	while (__raw_readl(0x4A009200) != 0x302)
+		;
+	/* Enable hsi/unipro/usb clocks */
+	sr32(CM_L3INIT_HSI_CLKCTRL, 0, 32, 0x1);
+	sr32(CM_L3INIT_UNIPRO1_CLKCTRL, 0, 32, 0x2);
+	sr32(CM_L3INIT_HSUSBHOST_CLKCTRL, 0, 32, 0x2);
+	sr32(CM_L3INIT_HSUSBOTG_CLKCTRL, 0, 32, 0x1);
+	sr32(CM_L3INIT_HSUSBTLL_CLKCTRL, 0, 32, 0x1);
+	sr32(CM_L3INIT_FSUSB_CLKCTRL, 0, 32, 0x2);
+	/* enable the 32K, 48M optional clocks and enable the module */
+	sr32(CM_L3INIT_USBPHY_CLKCTRL, 0, 32, 0x301);
+}
+
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
new file mode 100644
index 0000000..45e6c86
--- /dev/null
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -0,0 +1,406 @@
+#include <common.h>
+#include <init.h>
+#include <mach/silicon.h>
+#include <asm/io.h>
+#include <mach/omap4-silicon.h>
+#include <mach/omap4-clock.h>
+#include <mach/syslib.h>
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	writel(PRM_RSTCTRL_RESET, PRM_RSTCTRL);
+
+	while (1);
+}
+
+#define WATCHDOG_WSPR	0x48
+#define WATCHDOG_WWPS	0x34
+
+static void wait_for_command_complete(void)
+{
+	int pending = 1;
+
+	do {
+		pending = readl(OMAP44XX_WDT2_BASE + WATCHDOG_WWPS);
+	} while (pending);
+}
+
+/* EMIF */
+#define EMIF_MOD_ID_REV			0x0000
+#define EMIF_STATUS			0x0004
+#define EMIF_SDRAM_CONFIG		0x0008
+#define EMIF_LPDDR2_NVM_CONFIG		0x000C
+#define EMIF_SDRAM_REF_CTRL		0x0010
+#define EMIF_SDRAM_REF_CTRL_SHDW	0x0014
+#define EMIF_SDRAM_TIM_1		0x0018
+#define EMIF_SDRAM_TIM_1_SHDW		0x001C
+#define EMIF_SDRAM_TIM_2		0x0020
+#define EMIF_SDRAM_TIM_2_SHDW		0x0024
+#define EMIF_SDRAM_TIM_3		0x0028
+#define EMIF_SDRAM_TIM_3_SHDW		0x002C
+#define EMIF_LPDDR2_NVM_TIM		0x0030
+#define EMIF_LPDDR2_NVM_TIM_SHDW	0x0034
+#define EMIF_PWR_MGMT_CTRL		0x0038
+#define EMIF_PWR_MGMT_CTRL_SHDW		0x003C
+#define EMIF_LPDDR2_MODE_REG_DATA	0x0040
+#define EMIF_LPDDR2_MODE_REG_CFG	0x0050
+#define EMIF_L3_CONFIG			0x0054
+#define EMIF_L3_CFG_VAL_1		0x0058
+#define EMIF_L3_CFG_VAL_2		0x005C
+#define IODFT_TLGC			0x0060
+#define EMIF_PERF_CNT_1			0x0080
+#define EMIF_PERF_CNT_2			0x0084
+#define EMIF_PERF_CNT_CFG		0x0088
+#define EMIF_PERF_CNT_SEL		0x008C
+#define EMIF_PERF_CNT_TIM		0x0090
+#define EMIF_READ_IDLE_CTRL		0x0098
+#define EMIF_READ_IDLE_CTRL_SHDW	0x009c
+#define EMIF_ZQ_CONFIG			0x00C8
+#define EMIF_DDR_PHY_CTRL_1		0x00E4
+#define EMIF_DDR_PHY_CTRL_1_SHDW	0x00E8
+#define EMIF_DDR_PHY_CTRL_2		0x00EC
+
+#define DMM_LISA_MAP_0 			0x0040
+#define DMM_LISA_MAP_1 			0x0044
+#define DMM_LISA_MAP_2 			0x0048
+#define DMM_LISA_MAP_3 			0x004C
+
+#define MR0_ADDR			0
+#define MR1_ADDR			1
+#define MR2_ADDR			2
+#define MR4_ADDR			4
+#define MR10_ADDR			10
+#define MR16_ADDR			16
+#define REF_EN				0x40000000
+/* defines for MR1 */
+#define MR1_BL4				2
+#define MR1_BL8				3
+#define MR1_BL16			4
+
+#define MR1_BT_SEQ			0
+#define BT_INT				1
+
+#define MR1_WC				0
+#define MR1_NWC				1
+
+#define MR1_NWR3			1
+#define MR1_NWR4			2
+#define MR1_NWR5			3
+#define MR1_NWR6			4
+#define MR1_NWR7			5
+#define MR1_NWR8			6
+
+#define MR1_VALUE	(MR1_NWR3 << 5) | (MR1_WC << 4) | (MR1_BT_SEQ << 3)  \
+							| (MR1_BL8 << 0)
+
+/* defines for MR2 */
+#define MR2_RL3_WL1			1
+#define MR2_RL4_WL2			2
+#define MR2_RL5_WL2			3
+#define MR2_RL6_WL3			4
+
+/* defines for MR10 */
+#define MR10_ZQINIT			0xFF
+#define MR10_ZQRESET			0xC3
+#define MR10_ZQCL			0xAB
+#define MR10_ZQCS			0x56
+
+
+/* TODO: FREQ update method is not working so shadow registers programming
+ * is just for same of completeness. This would be safer if auto
+ * trasnitions are working
+ */
+#define FREQ_UPDATE_EMIF
+/* EMIF Needs to be configured@19.2 MHz and shadow registers
+ * should be programmed for new OPP.
+ */
+/* Elpida 2x2Gbit */
+#define SDRAM_CONFIG_INIT		0x80800EB1
+#define DDR_PHY_CTRL_1_INIT		0x849FFFF5
+#define READ_IDLE_CTRL			0x000501FF
+#define PWR_MGMT_CTRL			0x4000000f
+#define PWR_MGMT_CTRL_OPP100		0x4000000f
+#define ZQ_CONFIG			0x500b3215
+
+#define CS1_MR(mr)	((mr) | 0x80000000)
+
+static inline void delay(unsigned long loops)
+{
+	__asm__ volatile ("1:\n" "subs %0, %1, #1\n"
+			  "bne 1b" : "=r" (loops) : "0"(loops));
+}
+
+int omap4_emif_config(unsigned int base, const struct ddr_regs *ddr_regs)
+{
+	/*
+	 * set SDRAM CONFIG register
+	 * EMIF_SDRAM_CONFIG[31:29] REG_SDRAM_TYPE = 4 for LPDDR2-S4
+	 * EMIF_SDRAM_CONFIG[28:27] REG_IBANK_POS = 0
+	 * EMIF_SDRAM_CONFIG[13:10] REG_CL = 3
+	 * EMIF_SDRAM_CONFIG[6:4] REG_IBANK = 3 - 8 banks
+	 * EMIF_SDRAM_CONFIG[3] REG_EBANK = 0 - CS0
+	 * EMIF_SDRAM_CONFIG[2:0] REG_PAGESIZE = 2  - 512- 9 column
+	 * JDEC specs - S4-2Gb --8 banks -- R0-R13, C0-c8
+	 */
+	writel(readl(base + EMIF_LPDDR2_NVM_CONFIG) & 0xbfffffff,
+						 base + EMIF_LPDDR2_NVM_CONFIG);
+	writel(ddr_regs->config_init, base + EMIF_SDRAM_CONFIG);
+
+	/* PHY control values */
+	writel(DDR_PHY_CTRL_1_INIT, base + EMIF_DDR_PHY_CTRL_1);
+	writel(ddr_regs->phy_ctrl_1, base + EMIF_DDR_PHY_CTRL_1_SHDW);
+
+	/*
+	 * EMIF_READ_IDLE_CTRL
+	 */
+	writel(READ_IDLE_CTRL, base + EMIF_READ_IDLE_CTRL);
+	writel(READ_IDLE_CTRL, base + EMIF_READ_IDLE_CTRL);
+
+	/*
+	 * EMIF_SDRAM_TIM_1
+	 */
+	writel(ddr_regs->tim1, base + EMIF_SDRAM_TIM_1);
+	writel(ddr_regs->tim1, base + EMIF_SDRAM_TIM_1_SHDW);
+
+	/*
+	 * EMIF_SDRAM_TIM_2
+	 */
+	writel(ddr_regs->tim2, base + EMIF_SDRAM_TIM_2);
+	writel(ddr_regs->tim2, base + EMIF_SDRAM_TIM_2_SHDW);
+
+	/*
+	 * EMIF_SDRAM_TIM_3
+	 */
+	writel(ddr_regs->tim3, base + EMIF_SDRAM_TIM_3);
+	writel(ddr_regs->tim3, base + EMIF_SDRAM_TIM_3_SHDW);
+
+	writel(ddr_regs->zq_config, base + EMIF_ZQ_CONFIG);
+
+	/*
+	 * poll MR0 register (DAI bit)
+	 * REG_CS[31] = 0 -- Mode register command to CS0
+	 * REG_REFRESH_EN[30] = 1 -- Refresh enable after MRW
+	 * REG_ADDRESS[7:0] = 00 -- Refresh enable after MRW
+	 */
+
+	writel(MR0_ADDR, base + EMIF_LPDDR2_MODE_REG_CFG);
+
+	while (readl(base + EMIF_LPDDR2_MODE_REG_DATA) & 1)
+		;
+
+	writel(CS1_MR(MR0_ADDR), base + EMIF_LPDDR2_MODE_REG_CFG);
+
+	while (readl(base + EMIF_LPDDR2_MODE_REG_DATA) & 1)
+		;
+
+
+	/* set MR10 register */
+	writel(MR10_ADDR, base + EMIF_LPDDR2_MODE_REG_CFG);
+	writel(MR10_ZQINIT, base + EMIF_LPDDR2_MODE_REG_DATA);
+	writel(CS1_MR(MR10_ADDR), base + EMIF_LPDDR2_MODE_REG_CFG);
+	writel(MR10_ZQINIT, base + EMIF_LPDDR2_MODE_REG_DATA);
+
+	/* wait for tZQINIT=1us  */
+	delay(10);
+
+	/* set MR1 register */
+	writel(MR1_ADDR, base + EMIF_LPDDR2_MODE_REG_CFG);
+	writel(ddr_regs->mr1, base + EMIF_LPDDR2_MODE_REG_DATA);
+	writel(CS1_MR(MR1_ADDR), base + EMIF_LPDDR2_MODE_REG_CFG);
+	writel(ddr_regs->mr1, base + EMIF_LPDDR2_MODE_REG_DATA);
+
+	/* set MR2 register RL=6 for OPP100 */
+	writel(MR2_ADDR, base + EMIF_LPDDR2_MODE_REG_CFG);
+	writel(ddr_regs->mr2, base + EMIF_LPDDR2_MODE_REG_DATA);
+	writel(CS1_MR(MR2_ADDR), base + EMIF_LPDDR2_MODE_REG_CFG);
+	writel(ddr_regs->mr2, base + EMIF_LPDDR2_MODE_REG_DATA);
+
+	/* Set SDRAM CONFIG register again here with final RL-WL value */
+	writel(ddr_regs->config_final, base + EMIF_SDRAM_CONFIG);
+	writel(ddr_regs->phy_ctrl_1, base + EMIF_DDR_PHY_CTRL_1);
+
+	/*
+	 * EMIF_SDRAM_REF_CTRL
+	 * refresh rate = DDR_CLK / reg_refresh_rate
+	 * 3.9 uS = (400MHz)	/ reg_refresh_rate
+	 */
+	writel(ddr_regs->ref_ctrl, base + EMIF_SDRAM_REF_CTRL);
+	writel(ddr_regs->ref_ctrl, base + EMIF_SDRAM_REF_CTRL_SHDW);
+
+	/* set MR16 register */
+	writel(MR16_ADDR | REF_EN, base + EMIF_LPDDR2_MODE_REG_CFG);
+	writel(0, base + EMIF_LPDDR2_MODE_REG_DATA);
+	writel(CS1_MR(MR16_ADDR | REF_EN),
+					       base + EMIF_LPDDR2_MODE_REG_CFG);
+	writel(0, base + EMIF_LPDDR2_MODE_REG_DATA);
+
+	/* LPDDR2 init complete */
+
+	return 0;
+}
+
+static void reset_phy(unsigned int base)
+{
+	*(volatile int*)(base + IODFT_TLGC) |= (1 << 10);
+}
+
+void omap4_ddr_init(const struct ddr_regs *ddr_regs,
+		const struct dpll_param *core)
+{
+	unsigned int rev;
+	rev = omap4_revision();
+
+	if (rev == OMAP4430_ES2_0) {
+		writel(0x9e9e9e9e, 0x4A100638);
+		writel(0x9e9e9e9e, 0x4A10063c);
+		writel(0x9e9e9e9e, 0x4A100640);
+		writel(0x9e9e9e9e, 0x4A100648);
+		writel(0x9e9e9e9e, 0x4A10064c);
+		writel(0x9e9e9e9e, 0x4A100650);
+		/* LPDDR2IO set to NMOS PTV */
+		writel(0x00ffc000, 0x4A100704);
+	}
+
+	/*
+	 * DMM Configuration
+	 */
+
+	/* Both EMIFs 128 byte interleaved */
+	writel(0x80640300, OMAP44XX_DMM_BASE + DMM_LISA_MAP_0);
+
+	*(volatile int*)(OMAP44XX_DMM_BASE + DMM_LISA_MAP_2) = 0x00000000;
+	*(volatile int*)(OMAP44XX_DMM_BASE + DMM_LISA_MAP_3) = 0xFF020100;
+
+	/* DDR needs to be initialised @ 19.2 MHz
+	 * So put core DPLL in bypass mode
+	 * Configure the Core DPLL but don't lock it
+	 */
+	omap4_configure_core_dpll_no_lock(core);
+
+	/* No IDLE: BUG in SDC */
+	sr32(CM_MEMIF_CLKSTCTRL, 0, 32, 0x2);
+	while(((*(volatile int*)CM_MEMIF_CLKSTCTRL) & 0x700) != 0x700);
+
+	*(volatile int*)(OMAP44XX_EMIF1_BASE + EMIF_PWR_MGMT_CTRL) = 0x0;
+	*(volatile int*)(OMAP44XX_EMIF2_BASE + EMIF_PWR_MGMT_CTRL) = 0x0;
+
+	omap4_emif_config(OMAP44XX_EMIF1_BASE, ddr_regs);
+	omap4_emif_config(OMAP44XX_EMIF2_BASE, ddr_regs);
+
+	/* Lock Core using shadow CM_SHADOW_FREQ_CONFIG1 */
+	omap4_lock_core_dpll_shadow(core);
+
+	/* Set DLL_OVERRIDE = 0 */
+	*(volatile int*)CM_DLL_CTRL = 0x0;
+
+	delay(200);
+
+	/* Check for DDR PHY ready for EMIF1 & EMIF2 */
+	while((((*(volatile int*)(OMAP44XX_EMIF1_BASE + EMIF_STATUS))&(0x04)) != 0x04) \
+	|| (((*(volatile int*)(OMAP44XX_EMIF2_BASE + EMIF_STATUS))&(0x04)) != 0x04));
+
+	/* Reprogram the DDR PYHY Control register */
+	/* PHY control values */
+
+	sr32(CM_MEMIF_EMIF_1_CLKCTRL, 0, 32, 0x1);
+        sr32(CM_MEMIF_EMIF_2_CLKCTRL, 0, 32, 0x1);
+
+	/* Put the Core Subsystem PD to ON State */
+
+	/* No IDLE: BUG in SDC */
+	//sr32(CM_MEMIF_CLKSTCTRL, 0, 32, 0x2);
+	//while(((*(volatile int*)CM_MEMIF_CLKSTCTRL) & 0x700) != 0x700);
+	*(volatile int*)(OMAP44XX_EMIF1_BASE + EMIF_PWR_MGMT_CTRL) = 0x80000000;
+	*(volatile int*)(OMAP44XX_EMIF2_BASE + EMIF_PWR_MGMT_CTRL) = 0x80000000;
+
+	/*
+	 * DMM : DMM_LISA_MAP_0(Section_0)
+	 * [31:24] SYS_ADDR 		0x80
+	 * [22:20] SYS_SIZE		0x7 - 2Gb
+	 * [19:18] SDRC_INTLDMM		0x1 - 128 byte
+	 * [17:16] SDRC_ADDRSPC 	0x0
+	 * [9:8] SDRC_MAP 		0x3
+	 * [7:0] SDRC_ADDR		0X0
+	 */
+	reset_phy(OMAP44XX_EMIF1_BASE);
+	reset_phy(OMAP44XX_EMIF2_BASE);
+
+	*((volatile int *)0x80000000) = 0;
+	*((volatile int *)0x80000080) = 0;
+}
+
+void omap4_power_i2c_send(u32 r)
+{
+	u32 val;
+
+	writel(r, OMAP44XX_PRM_VC_VAL_BYPASS);
+
+	val = readl(OMAP44XX_PRM_VC_VAL_BYPASS);
+	val |= 0x1000000;
+	writel(val, OMAP44XX_PRM_VC_VAL_BYPASS);
+
+	while (readl(OMAP44XX_PRM_VC_VAL_BYPASS) & 0x1000000)
+		;
+
+	val = readl(OMAP44XX_PRM_IRQSTATUS_MPU_A9);
+	writel(val, OMAP44XX_PRM_IRQSTATUS_MPU_A9);
+}
+
+static unsigned int cortex_a9_rev(void)
+{
+
+	unsigned int i;
+
+	asm ("mrc p15, 0, %0, c0, c0, 0" : "=r" (i));
+
+	return i;
+}
+
+unsigned int omap4_revision(void)
+{
+	unsigned int chip_rev = 0;
+	unsigned int rev = cortex_a9_rev();
+
+	switch(rev) {
+	case 0x410FC091:
+		return OMAP4430_ES1_0;
+	case 0x411FC092:
+		chip_rev = (readl(OMAP44XX_CTRL_BASE + 0x204)  >> 28) & 0xF;
+		if (chip_rev == 3)
+			return OMAP4430_ES2_1;
+		else if (chip_rev >= 4)
+			return OMAP4430_ES2_2;
+		else
+			return OMAP4430_ES2_0;
+	}
+	return OMAP4430_SILICON_ID_INVALID;
+}
+
+/*
+ * shutdown watchdog
+ */
+static int watchdog_init(void)
+{
+	void __iomem *wd2_base = (void *)OMAP44XX_WDT2_BASE;
+
+	writel(WD_UNLOCK1, wd2_base + WATCHDOG_WSPR);
+	wait_for_command_complete();
+	writel(WD_UNLOCK2, wd2_base + WATCHDOG_WSPR);
+
+	return 0;
+}
+late_initcall(watchdog_init);
+
+static int omap_vector_init(void)
+{
+	__asm__ __volatile__ (
+		"mov    r0, #0;"
+		"mcr    p15, #0, r0, c12, c0, #0;"
+		:
+		:
+		: "r0"
+	);
+
+	return 0;
+}
+core_initcall(omap_vector_init);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
