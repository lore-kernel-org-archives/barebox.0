Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y7hgr-0005Hv-7B
 for barebox@lists.infradead.org; Sun, 04 Jan 2015 09:41:45 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sun,  4 Jan 2015 10:41:05 +0100
Message-Id: <1420364466-22400-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH v2 1/2] ARM: pxa: add pxa3xx architecture
To: barebox@lists.infradead.org

Add the pxa3xx architecture, for pxa300, pxa310 and pxa320 SoCs.
This includes :
 - the registers
 - the cpu type
 - the reset source handling
 - a minimal set of clocks
 - pin control definitions
   In this last case, the big mfp-pxaxxx.h files were dropped, forcing
   board developers to use MFP_LPM_* macros cunningly.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/cpu/Kconfig                         |   6 +
 arch/arm/mach-pxa/Kconfig                    |  19 ++
 arch/arm/mach-pxa/Makefile                   |   1 +
 arch/arm/mach-pxa/common.c                   |  12 +-
 arch/arm/mach-pxa/include/mach/clock.h       |   1 +
 arch/arm/mach-pxa/include/mach/hardware.h    |  18 +-
 arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h  |  25 ++
 arch/arm/mach-pxa/include/mach/pxa-regs.h    |   4 +-
 arch/arm/mach-pxa/include/mach/pxa3xx-regs.h | 224 ++++++++++++++++++
 arch/arm/mach-pxa/include/plat/mfp.h         |   7 +-
 arch/arm/mach-pxa/mfp.c                      | 338 +++++++++++++++++++++++++++
 arch/arm/mach-pxa/reset_source.c             |  36 +++
 arch/arm/mach-pxa/sleep.S                    |   9 +
 arch/arm/mach-pxa/speed-pxa3xx.c             |  33 +++
 14 files changed, 725 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h
 create mode 100644 arch/arm/mach-pxa/include/mach/pxa3xx-regs.h
 create mode 100644 arch/arm/mach-pxa/mfp.c
 create mode 100644 arch/arm/mach-pxa/speed-pxa3xx.c

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 8934df0..4f5d9b6 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -69,6 +69,12 @@ config CPU_V7
 	bool
 	select CPU_32v7
 
+config CPU_XSC3
+        bool
+        select CPU_32v4T
+        help
+          Select code specific to PXA3xx variants
+
 # Xscale PXA25x, PXA27x
 config CPU_XSCALE
 	bool
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index cdec1b7..3a728ed 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -11,6 +11,10 @@ config ARCH_PXA2XX
 	bool
 	select CPU_XSCALE
 
+config ARCH_PXA3XX
+       bool
+       select CPU_XSC3
+
 choice
 	prompt "Intel/Marvell PXA Processor"
 
@@ -18,6 +22,9 @@ config ARCH_PXA27X
 	bool "PXA27x"
 	select ARCH_PXA2XX
 
+config ARCH_PXA3XX
+	bool "PXA3xx"
+
 endchoice
 
 # ----------------------------------------------------------
@@ -55,4 +62,16 @@ endif
 
 # ----------------------------------------------------------
 
+if ARCH_PXA3XX
+
+choice
+	prompt "PXA3xx Board Type"
+	bool
+
+endchoice
+
+endif
+
+# ----------------------------------------------------------
+
 endif
diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
index 6ddb6e5..6489601 100644
--- a/arch/arm/mach-pxa/Makefile
+++ b/arch/arm/mach-pxa/Makefile
@@ -6,4 +6,5 @@ obj-y += sleep.o
 
 obj-$(CONFIG_ARCH_PXA2XX) += mfp-pxa2xx.o
 obj-$(CONFIG_ARCH_PXA27X) += speed-pxa27x.o
+obj-$(CONFIG_ARCH_PXA3XX) += speed-pxa3xx.o mfp.o
 obj-$(CONFIG_RESET_SOURCE) += reset_source.o
diff --git a/arch/arm/mach-pxa/common.c b/arch/arm/mach-pxa/common.c
index 0c114ed..2259a2d 100644
--- a/arch/arm/mach-pxa/common.c
+++ b/arch/arm/mach-pxa/common.c
@@ -28,11 +28,13 @@
 #define OSSR_M3		(1 << 3)	/* Match status channel 3 */
 
 extern void pxa_suspend(int mode);
+extern void pxa3xx_suspend(int mode);
+extern void pxa_clear_reset_source(void);
 
 void reset_cpu(ulong addr)
 {
 	/* Clear last reset source */
-	RCSR = RCSR_GPR | RCSR_SMR | RCSR_WDR | RCSR_HWR;
+	pxa_clear_reset_source();
 
 	/* Initialize the watchdog and let it fire */
 	writel(OWER_WME, OWER);
@@ -47,8 +49,12 @@ void __noreturn poweroff()
 	shutdown_barebox();
 
 	/* Clear last reset source */
-	RCSR = RCSR_GPR | RCSR_SMR | RCSR_WDR | RCSR_HWR;
-
+	pxa_clear_reset_source();
+#ifdef CONFIG_ARCH_PXA2XX
 	pxa_suspend(PWRMODE_DEEPSLEEP);
+#endif
+#ifdef CONFIG_ARCH_PXA3XX
+	pxa3xx_suspend(PXA3xx_PM_S3D4C4);
+#endif
 	unreachable();
 }
diff --git a/arch/arm/mach-pxa/include/mach/clock.h b/arch/arm/mach-pxa/include/mach/clock.h
index f86152f..40f6223 100644
--- a/arch/arm/mach-pxa/include/mach/clock.h
+++ b/arch/arm/mach-pxa/include/mach/clock.h
@@ -14,6 +14,7 @@
 unsigned long pxa_get_uartclk(void);
 unsigned long pxa_get_mmcclk(void);
 unsigned long pxa_get_lcdclk(void);
+unsigned long pxa_get_nandclk(void);
 unsigned long pxa_get_pwmclk(void);
 
 #endif	/* !__MACH_CLOCK_H */
diff --git a/arch/arm/mach-pxa/include/mach/hardware.h b/arch/arm/mach-pxa/include/mach/hardware.h
index c5f40d7..902d11d 100644
--- a/arch/arm/mach-pxa/include/mach/hardware.h
+++ b/arch/arm/mach-pxa/include/mach/hardware.h
@@ -13,7 +13,7 @@
 #ifdef CONFIG_ARCH_PXA2XX
 #define cpu_is_pxa2xx()	(1)
 #else
-#define cpi_is_pxa2xx()	(0)
+#define cpu_is_pxa2xx()	(0)
 #endif
 
 #ifdef CONFIG_ARCH_PXA25X
@@ -28,6 +28,22 @@
 #define cpu_is_pxa27x()	(0)
 #endif
 
+#ifdef CONFIG_ARCH_PXA3XX
+#define cpu_is_pxa3xx()	(1)
+# ifdef CONFIG_ARCH_PXA320
+# define cpu_is_pxa320() (1)
+# else
+# define cpu_is_pxa320() (0)
+# endif
+# ifdef CONFIG_ARCH_PXA310
+# define cpu_is_pxa310() (1)
+# else
+# define cpu_is_pxa310() (0)
+# endif
+#else
+#define cpu_is_pxa3xx()	(0)
+#endif
+
 #ifdef __ASSEMBLY__
 #define __REG(x) (x)
 #endif
diff --git a/arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h b/arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h
new file mode 100644
index 0000000..7bdd44d
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h
@@ -0,0 +1,25 @@
+#ifndef __ASM_ARCH_MFP_PXA3XX_H
+#define __ASM_ARCH_MFP_PXA3XX_H
+
+#include <plat/mfp.h>
+
+#define MFPR_BASE	(0x40e10000)
+
+/* NOTE: usage of these two functions is not recommended,
+ * use pxa3xx_mfp_config() instead.
+ */
+static inline unsigned long pxa3xx_mfp_read(int mfp)
+{
+	return mfp_read(mfp);
+}
+
+static inline void pxa3xx_mfp_write(int mfp, unsigned long val)
+{
+	mfp_write(mfp, val);
+}
+
+static inline void pxa3xx_mfp_config(unsigned long *mfp_cfg, int num)
+{
+	mfp_config(mfp_cfg, num);
+}
+#endif /* __ASM_ARCH_MFP_PXA3XX_H */
diff --git a/arch/arm/mach-pxa/include/mach/pxa-regs.h b/arch/arm/mach-pxa/include/mach/pxa-regs.h
index c32d2ae..5203d88 100644
--- a/arch/arm/mach-pxa/include/mach/pxa-regs.h
+++ b/arch/arm/mach-pxa/include/mach/pxa-regs.h
@@ -24,8 +24,10 @@
 # include <mach/pxa2xx-regs.h>
 #endif
 
-#ifdef CONFIG_ARCH_PXA27X
+#if defined(CONFIG_ARCH_PXA27X)
 # include <mach/pxa27x-regs.h>
+#elif defined(CONFIG_ARCH_PXA3XX)
+# include <mach/pxa3xx-regs.h>
 #else
 # error "unknown PXA soc type"
 #endif
diff --git a/arch/arm/mach-pxa/include/mach/pxa3xx-regs.h b/arch/arm/mach-pxa/include/mach/pxa3xx-regs.h
new file mode 100644
index 0000000..373711d
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/pxa3xx-regs.h
@@ -0,0 +1,224 @@
+/*
+ * arch/arm/mach-pxa/include/mach/pxa3xx-regs.h
+ *
+ * PXA3xx specific register definitions
+ *
+ * Copyright (C) 2007 Marvell International Ltd.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#ifndef __MACH_PXA3XX_REGS
+#define __MACH_PXA3XX_REGS
+
+#include <mach/hardware.h>
+
+/*
+ * Oscillator Configuration Register (OSCC)
+ */
+#define OSCC           __REG(0x41350000)  /* Oscillator Configuration Register */
+
+#define OSCC_PEN       (1 << 11)       /* 13MHz POUT */
+
+
+/*
+ * Service Power Management Unit (MPMU)
+ */
+#define PMCR		__REG(0x40F50000)	/* Power Manager Control Register */
+#define PSR		__REG(0x40F50004)	/* Power Manager S2 Status Register */
+#define PSPR		__REG(0x40F50008)	/* Power Manager Scratch Pad Register */
+#define PCFR		__REG(0x40F5000C)	/* Power Manager General Configuration Register */
+#define PWER		__REG(0x40F50010)	/* Power Manager Wake-up Enable Register */
+#define PWSR		__REG(0x40F50014)	/* Power Manager Wake-up Status Register */
+#define PECR		__REG(0x40F50018)	/* Power Manager EXT_WAKEUP[1:0] Control Register */
+#define DCDCSR		__REG(0x40F50080)	/* DC-DC Controller Status Register */
+#define PVCR		__REG(0x40F50100)	/* Power Manager Voltage Change Control Register */
+#define PCMD(x)		__REG(0x40F50110 + ((x) << 2))
+
+/*
+ * Slave Power Management Unit
+ */
+#define ASCR		__REG(0x40f40000)	/* Application Subsystem Power Status/Configuration */
+#define ARSR		__REG(0x40f40004)	/* Application Subsystem Reset Status */
+#define AD3ER		__REG(0x40f40008)	/* Application Subsystem Wake-Up from D3 Enable */
+#define AD3SR		__REG(0x40f4000c)	/* Application Subsystem Wake-Up from D3 Status */
+#define AD2D0ER		__REG(0x40f40010)	/* Application Subsystem Wake-Up from D2 to D0 Enable */
+#define AD2D0SR		__REG(0x40f40014)	/* Application Subsystem Wake-Up from D2 to D0 Status */
+#define AD2D1ER		__REG(0x40f40018)	/* Application Subsystem Wake-Up from D2 to D1 Enable */
+#define AD2D1SR		__REG(0x40f4001c)	/* Application Subsystem Wake-Up from D2 to D1 Status */
+#define AD1D0ER		__REG(0x40f40020)	/* Application Subsystem Wake-Up from D1 to D0 Enable */
+#define AD1D0SR		__REG(0x40f40024)	/* Application Subsystem Wake-Up from D1 to D0 Status */
+#define AGENP		__REG(0x40f4002c)	/* Application Subsystem General Purpose */
+#define AD3R		__REG(0x40f40030)	/* Application Subsystem D3 Configuration */
+#define AD2R		__REG(0x40f40034)	/* Application Subsystem D2 Configuration */
+#define AD1R		__REG(0x40f40038)	/* Application Subsystem D1 Configuration */
+
+/*
+ * Application Subsystem Configuration bits.
+ */
+#define ASCR_RDH		(1 << 31)
+#define ASCR_D1S		(1 << 2)
+#define ASCR_D2S		(1 << 1)
+#define ASCR_D3S		(1 << 0)
+
+/*
+ * Application Reset Status bits.
+ */
+#define ARSR_GPR		(1 << 3)
+#define ARSR_LPMR		(1 << 2)
+#define ARSR_WDT		(1 << 1)
+#define ARSR_HWR		(1 << 0)
+
+/*
+ * Application Subsystem Wake-Up bits.
+ */
+#define ADXER_WRTC		(1 << 31)	/* RTC */
+#define ADXER_WOST		(1 << 30)	/* OS Timer */
+#define ADXER_WTSI		(1 << 29)	/* Touchscreen */
+#define ADXER_WUSBH		(1 << 28)	/* USB host */
+#define ADXER_WUSB2		(1 << 26)	/* USB client 2.0 */
+#define ADXER_WMSL0		(1 << 24)	/* MSL port 0*/
+#define ADXER_WDMUX3		(1 << 23)	/* USB EDMUX3 */
+#define ADXER_WDMUX2		(1 << 22)	/* USB EDMUX2 */
+#define ADXER_WKP		(1 << 21)	/* Keypad */
+#define ADXER_WUSIM1		(1 << 20)	/* USIM Port 1 */
+#define ADXER_WUSIM0		(1 << 19)	/* USIM Port 0 */
+#define ADXER_WOTG		(1 << 16)	/* USBOTG input */
+#define ADXER_MFP_WFLASH	(1 << 15)	/* MFP: Data flash busy */
+#define ADXER_MFP_GEN12		(1 << 14)	/* MFP: MMC3/GPIO/OST inputs */
+#define ADXER_MFP_WMMC2		(1 << 13)	/* MFP: MMC2 */
+#define ADXER_MFP_WMMC1		(1 << 12)	/* MFP: MMC1 */
+#define ADXER_MFP_WI2C		(1 << 11)	/* MFP: I2C */
+#define ADXER_MFP_WSSP4		(1 << 10)	/* MFP: SSP4 */
+#define ADXER_MFP_WSSP3		(1 << 9)	/* MFP: SSP3 */
+#define ADXER_MFP_WMAXTRIX	(1 << 8)	/* MFP: matrix keypad */
+#define ADXER_MFP_WUART3	(1 << 7)	/* MFP: UART3 */
+#define ADXER_MFP_WUART2	(1 << 6)	/* MFP: UART2 */
+#define ADXER_MFP_WUART1	(1 << 5)	/* MFP: UART1 */
+#define ADXER_MFP_WSSP2		(1 << 4)	/* MFP: SSP2 */
+#define ADXER_MFP_WSSP1		(1 << 3)	/* MFP: SSP1 */
+#define ADXER_MFP_WAC97		(1 << 2)	/* MFP: AC97 */
+#define ADXER_WEXTWAKE1		(1 << 1)	/* External Wake 1 */
+#define ADXER_WEXTWAKE0		(1 << 0)	/* External Wake 0 */
+
+/*
+ * AD3R/AD2R/AD1R bits.  R2-R5 are only defined for PXA320.
+ */
+#define ADXR_L2			(1 << 8)
+#define ADXR_R5			(1 << 5)
+#define ADXR_R4			(1 << 4)
+#define ADXR_R3			(1 << 3)
+#define ADXR_R2			(1 << 2)
+#define ADXR_R1			(1 << 1)
+#define ADXR_R0			(1 << 0)
+
+/*
+ * Values for PWRMODE CP15 register
+ */
+#define PXA3xx_PM_S3D4C4	0x07	/* aka deep sleep */
+#define PXA3xx_PM_S2D3C4	0x06	/* aka sleep */
+#define PXA3xx_PM_S0D2C2	0x03	/* aka standby */
+#define PXA3xx_PM_S0D1C2	0x02	/* aka LCD refresh */
+#define PXA3xx_PM_S0D0C1	0x01
+
+/*
+ * Application Subsystem Clock
+ */
+#define ACCR		__REG(0x41340000)	/* Application Subsystem Clock Configuration Register */
+#define ACSR		__REG(0x41340004)	/* Application Subsystem Clock Status Register */
+#define AICSR		__REG(0x41340008)	/* Application Subsystem Interrupt Control/Status Register */
+#define CKENA		__REG(0x4134000C)	/* A Clock Enable Register */
+#define CKENB		__REG(0x41340010)	/* B Clock Enable Register */
+#define CKENC		__REG(0x41340024)	/* C Clock Enable Register */
+#define AC97_DIV	__REG(0x41340014)	/* AC97 clock divisor value register */
+
+#define ACCR_XPDIS		(1 << 31)	/* Core PLL Output Disable */
+#define ACCR_SPDIS		(1 << 30)	/* System PLL Output Disable */
+#define ACCR_D0CS		(1 << 26)	/* D0 Mode Clock Select */
+#define ACCR_PCCE		(1 << 11)	/* Power Mode Change Clock Enable */
+#define ACCR_DDR_D0CS		(1 << 7)	/* DDR SDRAM clock frequency in D0CS (PXA31x only) */
+
+#define ACCR_SMCFS_MASK		(0x7 << 23)	/* Static Memory Controller Frequency Select */
+#define ACCR_SFLFS_MASK		(0x3 << 18)	/* Frequency Select for Internal Memory Controller */
+#define ACCR_XSPCLK_MASK	(0x3 << 16)	/* Core Frequency during Frequency Change */
+#define ACCR_HSS_MASK		(0x3 << 14)	/* System Bus-Clock Frequency Select */
+#define ACCR_DMCFS_MASK		(0x3 << 12)	/* Dynamic Memory Controller Clock Frequency Select */
+#define ACCR_XN_MASK		(0x7 << 8)	/* Core PLL Turbo-Mode-to-Run-Mode Ratio */
+#define ACCR_XL_MASK		(0x1f)		/* Core PLL Run-Mode-to-Oscillator Ratio */
+
+#define ACCR_SMCFS(x)		(((x) & 0x7) << 23)
+#define ACCR_SFLFS(x)		(((x) & 0x3) << 18)
+#define ACCR_XSPCLK(x)		(((x) & 0x3) << 16)
+#define ACCR_HSS(x)		(((x) & 0x3) << 14)
+#define ACCR_DMCFS(x)		(((x) & 0x3) << 12)
+#define ACCR_XN(x)		(((x) & 0x7) << 8)
+#define ACCR_XL(x)		((x) & 0x1f)
+
+/*
+ * Clock Enable Bit
+ */
+#define CKEN_LCD	1	/* < LCD Clock Enable */
+#define CKEN_USBH	2	/* < USB host clock enable */
+#define CKEN_CAMERA	3	/* < Camera interface clock enable */
+#define CKEN_NAND	4	/* < NAND Flash Controller Clock Enable */
+#define CKEN_USB2	6	/* < USB 2.0 client clock enable. */
+#define CKEN_DMC	8	/* < Dynamic Memory Controller clock enable */
+#define CKEN_SMC	9	/* < Static Memory Controller clock enable */
+#define CKEN_ISC	10	/* < Internal SRAM Controller clock enable */
+#define CKEN_BOOT	11	/* < Boot rom clock enable */
+#define CKEN_MMC1	12	/* < MMC1 Clock enable */
+#define CKEN_MMC2	13	/* < MMC2 clock enable */
+#define CKEN_KEYPAD	14	/* < Keypand Controller Clock Enable */
+#define CKEN_CIR	15	/* < Consumer IR Clock Enable */
+#define CKEN_USIM0	17	/* < USIM[0] Clock Enable */
+#define CKEN_USIM1	18	/* < USIM[1] Clock Enable */
+#define CKEN_TPM	19	/* < TPM clock enable */
+#define CKEN_UDC	20	/* < UDC clock enable */
+#define CKEN_BTUART	21	/* < BTUART clock enable */
+#define CKEN_FFUART	22	/* < FFUART clock enable */
+#define CKEN_STUART	23	/* < STUART clock enable */
+#define CKEN_AC97	24	/* < AC97 clock enable */
+#define CKEN_TOUCH	25	/* < Touch screen Interface Clock Enable */
+#define CKEN_SSP1	26	/* < SSP1 clock enable */
+#define CKEN_SSP2	27	/* < SSP2 clock enable */
+#define CKEN_SSP3	28	/* < SSP3 clock enable */
+#define CKEN_SSP4	29	/* < SSP4 clock enable */
+#define CKEN_MSL0	30	/* < MSL0 clock enable */
+#define CKEN_PWM0	32	/* < PWM[0] clock enable */
+#define CKEN_PWM1	33	/* < PWM[1] clock enable */
+#define CKEN_I2C	36	/* < I2C clock enable */
+#define CKEN_INTC	38	/* < Interrupt controller clock enable */
+#define CKEN_GPIO	39	/* < GPIO clock enable */
+#define CKEN_1WIRE	40	/* < 1-wire clock enable */
+#define CKEN_HSIO2	41	/* < HSIO2 clock enable */
+#define CKEN_MINI_IM	48	/* < Mini-IM */
+#define CKEN_MINI_LCD	49	/* < Mini LCD */
+
+#define CKEN_MMC3	5	/* < MMC3 Clock Enable */
+#define CKEN_MVED	43	/* < MVED clock enable */
+
+/* Note: GCU clock enable bit differs on PXA300/PXA310 and PXA320 */
+#define CKEN_PXA300_GCU		42	/* Graphics controller clock enable */
+#define CKEN_PXA320_GCU		7	/* Graphics controller clock enable */
+
+/*
+ * Static Memory Controller
+ */
+#define MSC0		__REG(0x4a000008)	/* Static Memory Control 0 */
+#define MSC1		__REG(0x4a00000c)	/* Static Memory Control 1 */
+#define MECR		__REG(0x4a000014)	/* Expansion Memory Configuration */
+#define SXCNFG		__REG(0x4a00001c)	/* Synchronous Static Memory Control */
+#define MCMEM0		__REG(0x4a000028)	/* Expansion Memory Timing */
+#define MCATT0		__REG(0x4a000030)	/* Expansion Memory Timing */
+#define MCIO0		__REG(0x4a000038)	/* Expansion Memory Timing */
+#define MEMCLKCFG	__REG(0x4a000068)	/* Clock configuration */
+#define CSADRCFG0	__REG(0x4a000080)	/* CS0 address configuration */
+#define CSADRCFG1	__REG(0x4a000084)	/* CS1 address configuration */
+#define CSADRCFG2	__REG(0x4a000088)	/* CS2 address configuration */
+#define CSADRCFG3	__REG(0x4a00008c)	/* CS3 address configuration */
+#define CSADRCFGP	__REG(0x4a000090)	/* CSP address configuration */
+#define CSMSADRCFG	__REG(0x4a0000a0)	/* CSP address configuration */
+
+#endif	/* !__MACH_PXA3XX_REGS */
diff --git a/arch/arm/mach-pxa/include/plat/mfp.h b/arch/arm/mach-pxa/include/plat/mfp.h
index 755b020..aedb956 100644
--- a/arch/arm/mach-pxa/include/plat/mfp.h
+++ b/arch/arm/mach-pxa/include/plat/mfp.h
@@ -416,7 +416,7 @@ typedef unsigned long mfp_cfg_t;
 	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_DS_MASK | MFP_LPM_STATE_MASK)) |\
 	 (MFP_PIN(MFP_PIN_##pin) | MFP_##af | MFP_##drv | MFP_LPM_##lpm))
 
-#if defined(CONFIG_PXA3xx) || defined(CONFIG_ARCH_MMP)
+#if defined(CONFIG_ARCH_PXA3XX)
 /*
  * each MFP pin will have a MFPR register, since the offset of the
  * register varies between processors, the processor specific code
@@ -449,7 +449,7 @@ struct mfp_addr_map {
 
 #define MFP_ADDR_END	{ MFP_PIN_INVALID, 0 }
 
-void __init mfp_init_base(unsigned long mfpr_base);
+void __init mfp_init_base(void __iomem *mfpr_base);
 void __init mfp_init_addr(struct mfp_addr_map *map);
 
 /*
@@ -463,6 +463,7 @@ void mfp_write(int mfp, unsigned long mfpr_val);
 void mfp_config(unsigned long *mfp_cfgs, int num);
 void mfp_config_run(void);
 void mfp_config_lpm(void);
-#endif /* CONFIG_PXA3xx || CONFIG_ARCH_MMP */
+void mfp_init(void);
+#endif /* CONFIG_ARCH_PXA3XX */
 
 #endif /* __ASM_PLAT_MFP_H */
diff --git a/arch/arm/mach-pxa/mfp.c b/arch/arm/mach-pxa/mfp.c
new file mode 100644
index 0000000..df49224
--- /dev/null
+++ b/arch/arm/mach-pxa/mfp.c
@@ -0,0 +1,338 @@
+/*
+ * linux/arch/arm/plat-pxa/mfp.c
+ *
+ *   Multi-Function Pin Support
+ *
+ * Copyright (C) 2007 Marvell Internation Ltd.
+ *
+ * 2007-08-21: eric miao <eric.miao@marvell.com>
+ *             initial version
+ *
+ *  This program is free software; you can redistribute it and/or modify
+ *  it under the terms of the GNU General Public License version 2 as
+ *  published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <mach/hardware.h>
+#include <mach/mfp-pxa3xx.h>
+#include <plat/mfp.h>
+
+#define MFPR_SIZE	(PAGE_SIZE)
+
+/* MFPR register bit definitions */
+#define MFPR_PULL_SEL		(0x1 << 15)
+#define MFPR_PULLUP_EN		(0x1 << 14)
+#define MFPR_PULLDOWN_EN	(0x1 << 13)
+#define MFPR_SLEEP_SEL		(0x1 << 9)
+#define MFPR_SLEEP_OE_N		(0x1 << 7)
+#define MFPR_EDGE_CLEAR		(0x1 << 6)
+#define MFPR_EDGE_FALL_EN	(0x1 << 5)
+#define MFPR_EDGE_RISE_EN	(0x1 << 4)
+
+#define MFPR_SLEEP_DATA(x)	((x) << 8)
+#define MFPR_DRIVE(x)		(((x) & 0x7) << 10)
+#define MFPR_AF_SEL(x)		(((x) & 0x7) << 0)
+
+#define MFPR_EDGE_NONE		(0)
+#define MFPR_EDGE_RISE		(MFPR_EDGE_RISE_EN)
+#define MFPR_EDGE_FALL		(MFPR_EDGE_FALL_EN)
+#define MFPR_EDGE_BOTH		(MFPR_EDGE_RISE | MFPR_EDGE_FALL)
+
+/*
+ * Table that determines the low power modes outputs, with actual settings
+ * used in parentheses for don't-care values. Except for the float output,
+ * the configured driven and pulled levels match, so if there is a need for
+ * non-LPM pulled output, the same configuration could probably be used.
+ *
+ * Output value  sleep_oe_n  sleep_data  pullup_en  pulldown_en  pull_sel
+ *                 (bit 7)    (bit 8)    (bit 14)     (bit 13)   (bit 15)
+ *
+ * Input            0          X(0)        X(0)        X(0)       0
+ * Drive 0          0          0           0           X(1)       0
+ * Drive 1          0          1           X(1)        0	  0
+ * Pull hi (1)      1          X(1)        1           0	  0
+ * Pull lo (0)      1          X(0)        0           1	  0
+ * Z (float)        1          X(0)        0           0	  0
+ */
+#define MFPR_LPM_INPUT		(0)
+#define MFPR_LPM_DRIVE_LOW	(MFPR_SLEEP_DATA(0) | MFPR_PULLDOWN_EN)
+#define MFPR_LPM_DRIVE_HIGH	(MFPR_SLEEP_DATA(1) | MFPR_PULLUP_EN)
+#define MFPR_LPM_PULL_LOW	(MFPR_LPM_DRIVE_LOW  | MFPR_SLEEP_OE_N)
+#define MFPR_LPM_PULL_HIGH	(MFPR_LPM_DRIVE_HIGH | MFPR_SLEEP_OE_N)
+#define MFPR_LPM_FLOAT		(MFPR_SLEEP_OE_N)
+#define MFPR_LPM_MASK		(0xe080)
+
+/*
+ * The pullup and pulldown state of the MFP pin at run mode is by default
+ * determined by the selected alternate function. In case that some buggy
+ * devices need to override this default behavior,  the definitions below
+ * indicates the setting of corresponding MFPR bits
+ *
+ * Definition       pull_sel  pullup_en  pulldown_en
+ * MFPR_PULL_NONE       0         0        0
+ * MFPR_PULL_LOW        1         0        1
+ * MFPR_PULL_HIGH       1         1        0
+ * MFPR_PULL_BOTH       1         1        1
+ * MFPR_PULL_FLOAT	1         0        0
+ */
+#define MFPR_PULL_NONE		(0)
+#define MFPR_PULL_LOW		(MFPR_PULL_SEL | MFPR_PULLDOWN_EN)
+#define MFPR_PULL_BOTH		(MFPR_PULL_LOW | MFPR_PULLUP_EN)
+#define MFPR_PULL_HIGH		(MFPR_PULL_SEL | MFPR_PULLUP_EN)
+#define MFPR_PULL_FLOAT		(MFPR_PULL_SEL)
+
+/* mfp_spin_lock is used to ensure that MFP register configuration
+ * (most likely a read-modify-write operation) is atomic, and that
+ * mfp_table[] is consistent
+ */
+static void __iomem *mfpr_mmio_base;
+
+struct mfp_pin {
+	unsigned long	config;		/* -1 for not configured */
+	unsigned long	mfpr_off;	/* MFPRxx Register offset */
+	unsigned long	mfpr_run;	/* Run-Mode Register Value */
+	unsigned long	mfpr_lpm;	/* Low Power Mode Register Value */
+};
+
+static struct mfp_pin mfp_table[MFP_PIN_MAX];
+
+/* mapping of MFP_LPM_* definitions to MFPR_LPM_* register bits */
+static const unsigned long mfpr_lpm[] = {
+	MFPR_LPM_INPUT,
+	MFPR_LPM_DRIVE_LOW,
+	MFPR_LPM_DRIVE_HIGH,
+	MFPR_LPM_PULL_LOW,
+	MFPR_LPM_PULL_HIGH,
+	MFPR_LPM_FLOAT,
+	MFPR_LPM_INPUT,
+};
+
+/* mapping of MFP_PULL_* definitions to MFPR_PULL_* register bits */
+static const unsigned long mfpr_pull[] = {
+	MFPR_PULL_NONE,
+	MFPR_PULL_LOW,
+	MFPR_PULL_HIGH,
+	MFPR_PULL_BOTH,
+	MFPR_PULL_FLOAT,
+};
+
+/* mapping of MFP_LPM_EDGE_* definitions to MFPR_EDGE_* register bits */
+static const unsigned long mfpr_edge[] = {
+	MFPR_EDGE_NONE,
+	MFPR_EDGE_RISE,
+	MFPR_EDGE_FALL,
+	MFPR_EDGE_BOTH,
+};
+
+#define mfpr_readl(off)			\
+	__raw_readl(mfpr_mmio_base + (off))
+
+#define mfpr_writel(off, val)		\
+	__raw_writel(val, mfpr_mmio_base + (off))
+
+#define mfp_configured(p)	((p)->config != -1)
+
+/*
+ * perform a read-back of any valid MFPR register to make sure the
+ * previous writings are finished
+ */
+static unsigned long mfpr_off_readback;
+#define mfpr_sync()	(void)__raw_readl(mfpr_mmio_base + mfpr_off_readback)
+
+static inline void __mfp_config_run(struct mfp_pin *p)
+{
+	if (mfp_configured(p))
+		mfpr_writel(p->mfpr_off, p->mfpr_run);
+}
+
+static inline void __mfp_config_lpm(struct mfp_pin *p)
+{
+	if (mfp_configured(p)) {
+		unsigned long mfpr_clr =
+			(p->mfpr_run & ~MFPR_EDGE_BOTH) | MFPR_EDGE_CLEAR;
+
+		if (mfpr_clr != p->mfpr_run)
+			mfpr_writel(p->mfpr_off, mfpr_clr);
+		if (p->mfpr_lpm != mfpr_clr)
+			mfpr_writel(p->mfpr_off, p->mfpr_lpm);
+	}
+}
+
+void mfp_config(unsigned long *mfp_cfgs, int num)
+{
+	int i;
+
+	for (i = 0; i < num; i++, mfp_cfgs++) {
+		unsigned long tmp, c = *mfp_cfgs;
+		struct mfp_pin *p;
+		int pin, af, drv, lpm, edge, pull;
+
+		pin = MFP_PIN(c);
+		BUG_ON(pin >= MFP_PIN_MAX);
+		p = &mfp_table[pin];
+
+		af  = MFP_AF(c);
+		drv = MFP_DS(c);
+		lpm = MFP_LPM_STATE(c);
+		edge = MFP_LPM_EDGE(c);
+		pull = MFP_PULL(c);
+
+		/* run-mode pull settings will conflict with MFPR bits of
+		 * low power mode state,  calculate mfpr_run and mfpr_lpm
+		 * individually if pull != MFP_PULL_NONE
+		 */
+		tmp = MFPR_AF_SEL(af) | MFPR_DRIVE(drv);
+
+		if (likely(pull == MFP_PULL_NONE)) {
+			p->mfpr_run = tmp | mfpr_lpm[lpm] | mfpr_edge[edge];
+			p->mfpr_lpm = p->mfpr_run;
+		} else {
+			p->mfpr_lpm = tmp | mfpr_lpm[lpm] | mfpr_edge[edge];
+			p->mfpr_run = tmp | mfpr_pull[pull];
+		}
+
+		p->config = c; __mfp_config_run(p);
+	}
+
+	mfpr_sync();
+}
+
+unsigned long mfp_read(int mfp)
+{
+	unsigned long val;
+
+	BUG_ON(mfp < 0 || mfp >= MFP_PIN_MAX);
+
+	val = mfpr_readl(mfp_table[mfp].mfpr_off);
+	return val;
+}
+
+void mfp_write(int mfp, unsigned long val)
+{
+	BUG_ON(mfp < 0 || mfp >= MFP_PIN_MAX);
+
+	mfpr_writel(mfp_table[mfp].mfpr_off, val);
+	mfpr_sync();
+}
+
+void __init mfp_init_base(void __iomem *mfpr_base)
+{
+	int i;
+
+	/* initialize the table with default - unconfigured */
+	for (i = 0; i < ARRAY_SIZE(mfp_table); i++)
+		mfp_table[i].config = -1;
+
+	mfpr_mmio_base = mfpr_base;
+}
+
+void __init mfp_init_addr(struct mfp_addr_map *map)
+{
+	struct mfp_addr_map *p;
+	unsigned long offset;
+	int i;
+
+	/* mfp offset for readback */
+	mfpr_off_readback = map[0].offset;
+
+	for (p = map; p->start != MFP_PIN_INVALID; p++) {
+		offset = p->offset;
+		i = p->start;
+
+		do {
+			mfp_table[i].mfpr_off = offset;
+			mfp_table[i].mfpr_run = 0;
+			mfp_table[i].mfpr_lpm = 0;
+			offset += 4; i++;
+		} while ((i <= p->end) && (p->end != -1));
+	}
+}
+
+void mfp_config_lpm(void)
+{
+	struct mfp_pin *p = &mfp_table[0];
+	int pin;
+
+	for (pin = 0; pin < ARRAY_SIZE(mfp_table); pin++, p++)
+		__mfp_config_lpm(p);
+}
+
+void mfp_config_run(void)
+{
+	struct mfp_pin *p = &mfp_table[0];
+	int pin;
+
+	for (pin = 0; pin < ARRAY_SIZE(mfp_table); pin++, p++)
+		__mfp_config_run(p);
+}
+
+static struct mfp_addr_map pxa300_mfp_addr_map[] __initdata = {
+
+	MFP_ADDR_X(GPIO0,   GPIO2,   0x00b4),
+	MFP_ADDR_X(GPIO3,   GPIO26,  0x027c),
+	MFP_ADDR_X(GPIO27,  GPIO98,  0x0400),
+	MFP_ADDR_X(GPIO99,  GPIO127, 0x0600),
+	MFP_ADDR_X(GPIO0_2, GPIO1_2, 0x0674),
+	MFP_ADDR_X(GPIO2_2, GPIO6_2, 0x02dc),
+
+	MFP_ADDR(nBE0, 0x0204),
+	MFP_ADDR(nBE1, 0x0208),
+
+	MFP_ADDR(nLUA, 0x0244),
+	MFP_ADDR(nLLA, 0x0254),
+
+	MFP_ADDR(DF_CLE_nOE, 0x0240),
+	MFP_ADDR(DF_nRE_nOE, 0x0200),
+	MFP_ADDR(DF_ALE_nWE, 0x020C),
+	MFP_ADDR(DF_INT_RnB, 0x00C8),
+	MFP_ADDR(DF_nCS0, 0x0248),
+	MFP_ADDR(DF_nCS1, 0x0278),
+	MFP_ADDR(DF_nWE, 0x00CC),
+
+	MFP_ADDR(DF_ADDR0, 0x0210),
+	MFP_ADDR(DF_ADDR1, 0x0214),
+	MFP_ADDR(DF_ADDR2, 0x0218),
+	MFP_ADDR(DF_ADDR3, 0x021C),
+
+	MFP_ADDR(DF_IO0, 0x0220),
+	MFP_ADDR(DF_IO1, 0x0228),
+	MFP_ADDR(DF_IO2, 0x0230),
+	MFP_ADDR(DF_IO3, 0x0238),
+	MFP_ADDR(DF_IO4, 0x0258),
+	MFP_ADDR(DF_IO5, 0x0260),
+	MFP_ADDR(DF_IO6, 0x0268),
+	MFP_ADDR(DF_IO7, 0x0270),
+	MFP_ADDR(DF_IO8, 0x0224),
+	MFP_ADDR(DF_IO9, 0x022C),
+	MFP_ADDR(DF_IO10, 0x0234),
+	MFP_ADDR(DF_IO11, 0x023C),
+	MFP_ADDR(DF_IO12, 0x025C),
+	MFP_ADDR(DF_IO13, 0x0264),
+	MFP_ADDR(DF_IO14, 0x026C),
+	MFP_ADDR(DF_IO15, 0x0274),
+
+	MFP_ADDR_END,
+};
+
+/* override pxa300 MFP register addresses */
+static struct mfp_addr_map pxa310_mfp_addr_map[] __initdata = {
+	MFP_ADDR_X(GPIO30,  GPIO98,   0x0418),
+	MFP_ADDR_X(GPIO7_2, GPIO12_2, 0x052C),
+
+	MFP_ADDR(ULPI_STP, 0x040C),
+	MFP_ADDR(ULPI_NXT, 0x0410),
+	MFP_ADDR(ULPI_DIR, 0x0414),
+
+	MFP_ADDR_END,
+};
+
+void mfp_init(void)
+{
+	mfp_init_base((void __iomem *)MFPR_BASE);
+	mfp_init_addr(pxa300_mfp_addr_map);
+	if (cpu_is_pxa310())
+		mfp_init_addr(pxa310_mfp_addr_map);
+}
diff --git a/arch/arm/mach-pxa/reset_source.c b/arch/arm/mach-pxa/reset_source.c
index a90584b..0730e02 100644
--- a/arch/arm/mach-pxa/reset_source.c
+++ b/arch/arm/mach-pxa/reset_source.c
@@ -15,8 +15,10 @@
 #include <common.h>
 #include <init.h>
 #include <reset_source.h>
+#include <mach/hardware.h>
 #include <mach/pxa-regs.h>
 
+#ifdef CONFIG_ARCH_PXA2XX
 static int pxa_detect_reset_source(void)
 {
 	u32 reg = RCSR;
@@ -38,4 +40,38 @@ static int pxa_detect_reset_source(void)
 	return 0;
 }
 
+void pxa_reset_reset_source(void)
+{
+	RCSR = RCSR_GPR | RCSR_SMR | RCSR_WDR | RCSR_HWR;
+}
+#endif
+
+#ifdef CONFIG_ARCH_PXA3XX
+static int pxa_detect_reset_source(void)
+{
+	u32 reg = ARSR;
+
+	/*
+	 * Order is important, as many bits can be set together
+	 */
+	if (reg & ARSR_GPR)
+		reset_source_set(RESET_RST);
+	else if (reg & ARSR_WDT)
+		reset_source_set(RESET_WDG);
+	else if (reg & ARSR_HWR)
+		reset_source_set(RESET_POR);
+	else if (reg & ARSR_LPMR)
+		reset_source_set(RESET_WKE);
+	else
+		reset_source_set(RESET_UKWN);
+
+	return 0;
+}
+
+void pxa_clear_reset_source(void)
+{
+	ARSR = ARSR_GPR | ARSR_LPMR | ARSR_WDT | ARSR_HWR;
+}
+#endif
+
 device_initcall(pxa_detect_reset_source);
diff --git a/arch/arm/mach-pxa/sleep.S b/arch/arm/mach-pxa/sleep.S
index 881033d..9acd38d 100644
--- a/arch/arm/mach-pxa/sleep.S
+++ b/arch/arm/mach-pxa/sleep.S
@@ -79,3 +79,12 @@ pxa_cpu_do_suspend:
 	@ enter sleep mode
 	mcr	p14, 0, r1, c7, c0, 0		@ PWRMODE
 20:	b	20b				@ loop waiting for sleep
+
+#if (defined CONFIG_ARCH_PXA3XX)
+	/*
+	 * pxa3xx_finish_suspend() - forces CPU into sleep state
+	*/
+ENTRY(pxa3xx_suspend)
+	mcr     p14, 0, r0, c7, c0, 0   @ enter sleep
+20:	b       20b                     @ waiting for sleep
+#endif /* CONFIG_PXA3xx */
diff --git a/arch/arm/mach-pxa/speed-pxa3xx.c b/arch/arm/mach-pxa/speed-pxa3xx.c
new file mode 100644
index 0000000..6a08ea7
--- /dev/null
+++ b/arch/arm/mach-pxa/speed-pxa3xx.c
@@ -0,0 +1,33 @@
+/*
+ * clock.h - implementation of the PXA clock functions
+ *
+ * Copyright (C) 2014 by Robert Jarzmik <robert.jarzmik@free.fr>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#include <common.h>
+#include <mach/clock.h>
+#include <mach/pxa-regs.h>
+
+/* Crystal clock: 13MHz */
+#define BASE_CLK	13000000
+
+unsigned long pxa_get_uartclk(void)
+{
+	return 14857000;
+}
+
+unsigned long pxa_get_pwmclk(void)
+{
+	return BASE_CLK;
+}
+
+unsigned long pxa_get_nandclk(void)
+{
+	if (cpu_is_pxa320())
+		return 104000000;
+	else
+		return 156000000;
+}
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
