Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMCxn-0008QB-2q
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 07:13:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Oct 2012 09:13:37 +0200
Message-Id: <1349939621-17793-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349939621-17793-1-git-send-email-s.hauer@pengutronix.de>
References: <1349939621-17793-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/13] ARM i.MX21: Cleanup remaining unprefixed registers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/imx21ads/imx21ads.c         |    4 +-
 arch/arm/boards/imx21ads/lowlevel_init.S    |   18 ++--
 arch/arm/mach-imx/include/mach/imx21-regs.h |  130 +++++++++++++--------------
 3 files changed, 76 insertions(+), 76 deletions(-)

diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 26604a9..c4f44e9 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -95,10 +95,10 @@ static int imx21ads_timing_init(void)
 	imx21_setup_eimcs(4, 0x0, 0x0);
 	imx21_setup_eimcs(5, 0x0, 0x0);
 
-	temp = PCDR0;
+	temp = readl(MX21_CCM_BASE_ADDR + MX21_PCDR0);
 	temp &= ~0xF000;
 	temp |= 0xA000;  /* Set NFC divider; 0xA yields 24.18MHz */
-	PCDR0 = temp;
+	writel(temp, MX21_CCM_BASE_ADDR + MX21_PCDR0);
 
 	return 0;
 }
diff --git a/arch/arm/boards/imx21ads/lowlevel_init.S b/arch/arm/boards/imx21ads/lowlevel_init.S
index 0cb8aaf..be1199b 100644
--- a/arch/arm/boards/imx21ads/lowlevel_init.S
+++ b/arch/arm/boards/imx21ads/lowlevel_init.S
@@ -30,17 +30,17 @@ reset:
  * on chip peripherals) as described in section 7.2 of rev3 of the i.MX21
  * reference manual.
  */
-	ldr	r0, =AIPI1_PSR0
+	ldr	r0, =MX21_AIPI_BASE_ADDR + MX21_AIPI1_PSR0
 	ldr	r1, =0x00040304
 	str	r1, [r0]
-	ldr	r0, =AIPI1_PSR1
+	ldr	r0, =MX21_AIPI_BASE_ADDR + MX21_AIPI1_PSR1
 	ldr     r1, =0xfffbfcfb
 	str	r1, [r0]
 
-	ldr	r0, =AIPI2_PSR0
+	ldr	r0, =MX21_AIPI_BASE_ADDR + MX21_AIPI2_PSR0
 	ldr	r1, =0x3ffc0000
 	str	r1, [r0]
-	ldr	r0, =AIPI2_PSR1
+	ldr	r0, =MX21_AIPI_BASE_ADDR + MX21_AIPI2_PSR1
 	ldr     r1, =0xffffffff
 	str	r1, [r0]
 
@@ -48,11 +48,11 @@ reset:
  * Configure CPU core clock (266MHz), peripheral clock (133MHz) and enable
  * the clock to peripherals.
  */
-	ldr	r0, =CSCR
+	ldr	r0, =MX21_CCM_BASE_ADDR + MX21_CSCR
 	ldr	r1, =0x17180607
 	str	r1, [r0]
 
-	ldr	r0, =PCCR1
+	ldr	r0, =MX21_CCM_BASE_ADDR + MX21_PCCR1
 	ldr	r1, =0x0e000000
 	str	r1, [r0]
 
@@ -65,7 +65,7 @@ reset:
 	 * CSD1 not required, because the MX21ADS board only contains 64Mbyte.
 	 * CS3 can therefore be made available.
 	 */
-	ldr	r0, =FMCR
+	ldr	r0, =MX21_SYSCTRL_BASE_ADDR + MX21_FMCR
 	ldr	r1, =0xffffffc9
 	str	r1, [r0]
 
@@ -79,7 +79,7 @@ reset:
 1:
 
 	/* Precharge */
-	ldr	r0, =SDCTL0
+	ldr	r0, =MX21_X_MEMC_BASE_ADDR + MX21_SDCTL0
 	ldr	r1, =0x92120300
 	str	r1, [r0]
 	ldr	r2, =0xc0200000
@@ -113,7 +113,7 @@ reset:
 	str	r1, [r0]
 
 	/* Set NFC_CLK to 24MHz */
-	ldr	r0, =PCDR0
+	ldr	r0, =MX21_CCM_BASE_ADDR + MX21_PCDR0
 	ldr	r1, =0x6419a007
 	str	r1, [r0]
 
diff --git a/arch/arm/mach-imx/include/mach/imx21-regs.h b/arch/arm/mach-imx/include/mach/imx21-regs.h
index 0b8ff22..1c4b550 100644
--- a/arch/arm/mach-imx/include/mach/imx21-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx21-regs.h
@@ -71,70 +71,70 @@
 
 #define MX21_IRAM_BASE_ADDR		0xffffe800	/* internal ram */
 
-/* AIPI */
-#define AIPI1_PSR0	__REG(MX21_AIPI_BASE_ADDR + 0x00)
-#define AIPI1_PSR1	__REG(MX21_AIPI_BASE_ADDR + 0x04)
-#define AIPI2_PSR0	__REG(MX21_AIPI_BASE_ADDR + 0x20000 + 0x00)
-#define AIPI2_PSR1	__REG(MX21_AIPI_BASE_ADDR + 0x20000 + 0x04)
-
-/* System Control */
-#define SUID0    __REG(MX21_SYSCTRL_BASE_ADDR + 0x4)		/* Silicon ID Register (12 bytes) */
-#define SUID1    __REG(MX21_SYSCTRL_BASE_ADDR + 0x8)		/* Silicon ID Register (12 bytes) */
-#define CID      __REG(MX21_SYSCTRL_BASE_ADDR + 0xC)		/* Silicon ID Register (12 bytes) */
-#define FMCR    __REG(MX21_SYSCTRL_BASE_ADDR + 0x14)		/* Function Multeplexing Control Register */
-#define GPCR	__REG(MX21_SYSCTRL_BASE_ADDR + 0x18)		/* Global Peripheral Control Register */
-#define WBCR	__REG(MX21_SYSCTRL_BASE_ADDR + 0x1C)		/* Well Bias Control Register */
-#define DSCR(x)	__REG(MX21_SYSCTRL_BASE_ADDR + 0x1C + ((x) << 2))	/* Driving Strength Control Register 1 - 13 */
-
-#define GPCR_BOOT_SHIFT			16
-#define GPCR_BOOT_MASK			(0xf << GPCR_BOOT_SHIFT)
-#define GPCR_BOOT_UART_USB		0
-#define GPCR_BOOT_8BIT_NAND_2k		2
-#define GPCR_BOOT_16BIT_NAND_2k		3
-#define GPCR_BOOT_16BIT_NAND_512	4
-#define GPCR_BOOT_16BIT_CS0		5
-#define GPCR_BOOT_32BIT_CS0		6
-#define GPCR_BOOT_8BIT_NAND_512		7
-
-/* SDRAM Controller registers bitfields */
-#define SDCTL0 __REG(MX21_X_MEMC_BASE_ADDR + 0x00) /* SDRAM 0 Control Register */
-#define SDCTL1 __REG(MX21_X_MEMC_BASE_ADDR + 0x04) /* SDRAM 0 Control Register */
-#define SDRST  __REG(MX21_X_MEMC_BASE_ADDR + 0x18) /* SDRAM Reset Register */
-#define SDMISC __REG(MX21_X_MEMC_BASE_ADDR + 0x14) /* SDRAM Miscellaneous Register */
-
-/* PLL registers */
-#define CSCR		__REG(MX21_CCM_BASE_ADDR + 0x00) /* Clock Source Control Register       */
-#define MPCTL0		__REG(MX21_CCM_BASE_ADDR + 0x04) /* MCU PLL Control Register 0          */
-#define MPCTL1		__REG(MX21_CCM_BASE_ADDR + 0x08) /* MCU PLL Control Register 1          */
-#define SPCTL0		__REG(MX21_CCM_BASE_ADDR + 0x0c) /* System PLL Control Register 0       */
-#define SPCTL1		__REG(MX21_CCM_BASE_ADDR + 0x10) /* System PLL Control Register 1       */
-#define OSC26MCTL	__REG(MX21_CCM_BASE_ADDR + 0x14) /* Oscillator 26M Register             */
-#define PCDR0		__REG(MX21_CCM_BASE_ADDR + 0x18) /* Peripheral Clock Divider Register 0 */
-#define PCDR1		__REG(MX21_CCM_BASE_ADDR + 0x1c) /* Peripheral Clock Divider Register 1 */
-#define PCCR0		__REG(MX21_CCM_BASE_ADDR + 0x20) /* Peripheral Clock Control Register 0 */
-#define PCCR1		__REG(MX21_CCM_BASE_ADDR + 0x24) /* Peripheral Clock Control Register 1 */
-#define CCSR		__REG(MX21_CCM_BASE_ADDR + 0x28) /* Clock Control Status Register       */
-
-#define CSCR_MPEN		(1 << 0)
-#define CSCR_SPEN		(1 << 1)
-#define CSCR_FPM_EN		(1 << 2)
-#define CSCR_OSC26M_DIS		(1 << 3)
-#define CSCR_OSC26M_DIV1P5	(1 << 4)
-#define CSCR_MCU_SEL		(1 << 16)
-#define CSCR_SP_SEL		(1 << 17)
-#define CSCR_SD_CNT(d)		(((d) & 0x3) << 24)
-#define CSCR_USB_DIV(d)		(((d) & 0x7) << 26)
-#define CSCR_PRESC(d)		(((d) & 0x7) << 29)
-
-#define MPCTL1_BRMO		(1 << 6)
-#define MPCTL1_LF		(1 << 15)
-
-#define PCCR0_PERCLK3_EN	(1 << 18)
-#define PCCR0_NFC_EN		(1 << 19)
-#define PCCR0_HCLK_LCDC_EN	(1 << 26)
-
-#define PCCR1_GPT1_EN		(1 << 25)
-
-#define CCSR_32K_SR		(1 << 15)
+/* AIPI (base MX21_AIPI_BASE_ADDR) */
+#define MX21_AIPI1_PSR0	0x00
+#define MX21_AIPI1_PSR1	0x04
+#define MX21_AIPI2_PSR0	(0x20000 + 0x00)
+#define MX21_AIPI2_PSR1	(0x20000 + 0x04)
+
+/* System Control (base: MX21_SYSCTRL_BASE_ADDR) */
+#define MX21_SUID0	0x4	/* Silicon ID Register (12 bytes) */
+#define MX21_SUID1	0x8	/* Silicon ID Register (12 bytes) */
+#define MX21_CID	0xC	/* Silicon ID Register (12 bytes) */
+#define MX21_FMCR	0x14	/* Function Multeplexing Control Register */
+#define MX21_GPCR	0x18	/* Global Peripheral Control Register */
+#define MX21_WBCR	0x1C	/* Well Bias Control Register */
+#define MX21_DSCR(x)	0x1C + ((x) << 2)	/* Driving Strength Control Register 1 - 13 */
+
+#define MX21_GPCR_BOOT_SHIFT		16
+#define MX21_GPCR_BOOT_MASK		(0xf << GPCR_BOOT_SHIFT)
+#define MX21_GPCR_BOOT_UART_USB		0
+#define MX21_GPCR_BOOT_8BIT_NAND_2k	2
+#define MX21_GPCR_BOOT_16BIT_NAND_2k	3
+#define MX21_GPCR_BOOT_16BIT_NAND_512	4
+#define MX21_GPCR_BOOT_16BIT_CS0	5
+#define MX21_GPCR_BOOT_32BIT_CS0	6
+#define MX21_GPCR_BOOT_8BIT_NAND_512	7
+
+/* SDRAM Controller registers bitfields (base: MX21_X_MEMC_BASE_ADDR) */
+#define MX21_SDCTL0 0x00 /* SDRAM 0 Control Register */
+#define MX21_SDCTL1 0x04 /* SDRAM 0 Control Register */
+#define MX21_SDRST  0x18 /* SDRAM Reset Register */
+#define MX21_SDMISC 0x14 /* SDRAM Miscellaneous Register */
+
+/* PLL registers (base: MX21_CCM_BASE_ADDR) */
+#define MX21_CSCR		0x00 /* Clock Source Control Register       */
+#define MX21_MPCTL0		0x04 /* MCU PLL Control Register 0          */
+#define MX21_MPCTL1		0x08 /* MCU PLL Control Register 1          */
+#define MX21_SPCTL0		0x0c /* System PLL Control Register 0       */
+#define MX21_SPCTL1		0x10 /* System PLL Control Register 1       */
+#define MX21_OSC26MCTL		0x14 /* Oscillator 26M Register             */
+#define MX21_PCDR0		0x18 /* Peripheral Clock Divider Register 0 */
+#define MX21_PCDR1		0x1c /* Peripheral Clock Divider Register 1 */
+#define MX21_PCCR0		0x20 /* Peripheral Clock Control Register 0 */
+#define MX21_PCCR1		0x24 /* Peripheral Clock Control Register 1 */
+#define MX21_CCSR		0x28 /* Clock Control Status Register       */
+
+#define MX21_CSCR_MPEN		(1 << 0)
+#define MX21_CSCR_SPEN		(1 << 1)
+#define MX21_CSCR_FPM_EN	(1 << 2)
+#define MX21_CSCR_OSC26M_DIS	(1 << 3)
+#define MX21_CSCR_OSC26M_DIV1P5	(1 << 4)
+#define MX21_CSCR_MCU_SEL	(1 << 16)
+#define MX21_CSCR_SP_SEL	(1 << 17)
+#define MX21_CSCR_SD_CNT(d)	(((d) & 0x3) << 24)
+#define MX21_CSCR_USB_DIV(d)	(((d) & 0x7) << 26)
+#define MX21_CSCR_PRESC(d)	(((d) & 0x7) << 29)
+
+#define MX21_MPCTL1_BRMO	(1 << 6)
+#define MX21_MPCTL1_LF		(1 << 15)
+
+#define MX21_PCCR0_PERCLK3_EN	(1 << 18)
+#define MX21_PCCR0_NFC_EN	(1 << 19)
+#define MX21_PCCR0_HCLK_LCDC_EN	(1 << 26)
+
+#define MX21_PCCR1_GPT1_EN	(1 << 25)
+
+#define MX21_CCSR_32K_SR	(1 << 15)
 
 #endif /* _IMX21_REGS_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
