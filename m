Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMCxn-0008QE-3Q
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 07:14:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Oct 2012 09:13:38 +0200
Message-Id: <1349939621-17793-11-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/13] ARM i.MX27: Cleanup remaining unprefixed registers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    7 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S   |   42 ++++----
 arch/arm/boards/guf-neso/board.c                  |    6 +-
 arch/arm/boards/guf-neso/lowlevel.c               |   19 ++--
 arch/arm/boards/guf-neso/pll_init.S               |   37 +++----
 arch/arm/boards/imx27ads/lowlevel_init.S          |   28 +++---
 arch/arm/boards/pcm038/lowlevel.c                 |   26 ++---
 arch/arm/boards/pcm038/pcm038.c                   |   15 +--
 arch/arm/boards/pcm038/pcm970.c                   |   23 +++--
 arch/arm/boards/pcm038/pll.h                      |   54 +++++------
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S    |   40 ++++----
 arch/arm/mach-imx/include/mach/imx27-regs.h       |  107 ++++++++++-----------
 12 files changed, 216 insertions(+), 188 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 57c04c4..4667e62 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -222,11 +222,16 @@ device_initcall(eukrea_cpuimx27_devices_init);
 
 static int eukrea_cpuimx27_console_init(void)
 {
+	uint32_t val;
+
 #ifdef CONFIG_DRIVER_SERIAL_IMX
 	imx27_add_uart0();
 #endif
 	/* configure 8 bit UART on cs3 */
-	FMCR &= ~0x2;
+	val = readl(MX27_SYSCTRL_BASE_ADDR + MX27_FMCR);
+	val &= ~0x2;
+	writel(val, MX27_SYSCTRL_BASE_ADDR + MX27_FMCR);
+
 	imx27_setup_weimcs(3, 0x0000D603, 0x0D1D0D01, 0x00D20000);
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
 	add_ns16550_device(DEVICE_ID_DYNAMIC, MX27_CS3_BASE_ADDR + QUART_OFFSET, 0xf,
diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index eac9ecc..bab5c8c 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -25,11 +25,12 @@
 	/* Enable DDR SDRAM operation */
 	writel(0x0000000C, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC)
 
-	writel(0x55555555, DSCR(3)) /* Set the driving strength   */
-	writel(0x55555555, DSCR(5))
-	writel(0x55555555, DSCR(6))
-	writel(0x00005005, DSCR(7))
-	writel(0x15555555, DSCR(8))
+	/* Set the driving strength   */
+	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(3))
+	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(5))
+	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(6))
+	writel(0x00005005, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(7))
+	writel(0x15555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(8))
 
 	/* Initial reset */
 	writel(0x00000004, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC)
@@ -75,23 +76,26 @@ reset:
 	common_reset r0
 
 	/* ahb lite ip interface */
-	writel(0x20040304, AIPI1_PSR0)
-	writel(0xDFFBFCFB, AIPI1_PSR1)
-	writel(0x00000000, AIPI2_PSR0)
-	writel(0xFFFFFFFF, AIPI2_PSR1)
+	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0)
+	writel(0xDFFBFCFB, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR1)
+	writel(0x00000000, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR0)
+	writel(0xFFFFFFFF, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR1)
 
 	/* disable mpll/spll */
-	ldr r0, =CSCR
+	ldr r0, =MX27_CCM_BASE_ADDR + MX27_CSCR
 	ldr r1, [r0]
 	bic r1, r1, #0x03
 	str r1, [r0]
-    
+
 	/*
 	 * pll clock initialization - see section 3.4.3 of the i.MX27 manual
 	 */
-	writel(0x00331C23, MPCTL0)	/* MPLL = 399 MHz */
-	writel(0x040C2403, SPCTL0)	/* SPLL = 240 MHz */
-	writel(0x33F38107 | CSCR_MPLL_RESTART | CSCR_SPLL_RESTART, CSCR)
+	/* MPLL = 399 MHz */
+	writel(0x00331C23, MX27_CCM_BASE_ADDR + MX27_MPCTL0)
+	/* SPLL = 240 MHz */
+	writel(0x040C2403, MX27_CCM_BASE_ADDR + MX27_SPCTL0)
+	writel(0x33F38107 | MX27_CSCR_MPLL_RESTART | MX27_CSCR_SPLL_RESTART,
+			MX27_CCM_BASE_ADDR + MX27_CSCR)
 
 	/* add some delay here */
 	mov r1, #0x1000
@@ -99,12 +103,14 @@ reset:
 	bne 1b
 
 	/* clock gating enable */
-	writel(0x00050f08, GPCR)
+	writel(0x00050f08, MX27_SYSCTRL_BASE_ADDR + MX27_GPCR)
 
 	/* peripheral clock divider */
-	writel(0x130400c3, PCDR0)	/* FIXME                            */
-	writel(0x09030208, PCDR1)	/* PERDIV1=08 @133 MHz              */
-					/* PERDIV1=04 @266 MHz              */
+	/* FIXME                            */
+	writel(0x130400c3, MX27_CCM_BASE_ADDR + MX27_PCDR0)
+	/* PERDIV1=08 @133 MHz              */
+	writel(0x09030208, MX27_CCM_BASE_ADDR + MX27_PCDR1)
+	/* PERDIV1=04 @266 MHz              */
 
 	/* skip sdram initialization if we run from ram */
 	cmp	pc, #0xa0000000
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 7adee92..1b8db26 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -320,10 +320,10 @@ static int neso_pll(void)
 	pllfunc();
 
 	/* clock gating enable */
-	GPCR = 0x00050f08;
+	writel(0x00050f08, MX27_SYSCTRL_BASE_ADDR + MX27_GPCR);
 
-	PCDR0 = 0x130410c3;
-	PCDR1 = 0x09030911;
+	writel(0x130410c3, MX27_CCM_BASE_ADDR + MX27_PCDR0);
+	writel(0x09030911, MX27_CCM_BASE_ADDR + MX27_PCDR1);
 
 	/* Clocks have changed. Notify clients */
 	clock_notifier_call_chain();
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index eff1f8d..4c1cfeb 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -58,10 +58,10 @@ void __bare_init __naked reset(void)
 	common_reset();
 
 	/* ahb lite ip interface */
-	AIPI1_PSR0 = 0x20040304;
-	AIPI1_PSR1 = 0xDFFBFCFB;
-	AIPI2_PSR0 = 0x00000000;
-	AIPI2_PSR1 = 0xFFFFFFFF;
+	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0);
+	writel(0xDFFBFCFB, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR1);
+	writel(0x00000000, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR0);
+	writel(0xFFFFFFFF, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR1);
 
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
@@ -74,11 +74,12 @@ void __bare_init __naked reset(void)
 	/* Enable DDR SDRAM operation */
 	writel(0x00000008, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC);
 
-	DSCR(3) = 0x55555555; /* Set the driving strength   */
-	DSCR(5) = 0x55555555;
-	DSCR(6) = 0x55555555;
-	DSCR(7) = 0x00005005;
-	DSCR(8) = 0x15555555;
+	/* Set the driving strength   */
+	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(3));
+	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(5));
+	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(6));
+	writel(0x00005005, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(7));
+	writel(0x15555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(8));
 
 	/* Initial reset */
 	writel(0x00000004, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC);
diff --git a/arch/arm/boards/guf-neso/pll_init.S b/arch/arm/boards/guf-neso/pll_init.S
index 87e5312..13df4a3 100644
--- a/arch/arm/boards/guf-neso/pll_init.S
+++ b/arch/arm/boards/guf-neso/pll_init.S
@@ -8,34 +8,37 @@
 	ldr		r1,	=val;	\
 	str		r1,   [r0];
 
-#define CSCR_VAL CSCR_USB_DIV(3) |	\
-		 CSCR_SD_CNT(3) |	\
-		 CSCR_MSHC_SEL |	\
-		 CSCR_H264_SEL |	\
-		 CSCR_SSI1_SEL |	\
-		 CSCR_SSI2_SEL |	\
-		 CSCR_MCU_SEL |		\
-		 CSCR_ARM_SRC_MPLL |	\
-		 CSCR_SP_SEL |		\
-		 CSCR_ARM_DIV(0) |	\
-		 CSCR_FPM_EN |		\
-		 CSCR_SPEN |		\
-		 CSCR_MPEN |		\
-		 CSCR_AHB_DIV(1)
+#define CSCR_VAL MX27_CSCR_USB_DIV(3) |	\
+		 MX27_CSCR_SD_CNT(3) |	\
+		 MX27_CSCR_MSHC_SEL |	\
+		 MX27_CSCR_H264_SEL |	\
+		 MX27_CSCR_SSI1_SEL |	\
+		 MX27_CSCR_SSI2_SEL |	\
+		 MX27_CSCR_MCU_SEL |		\
+		 MX27_CSCR_ARM_SRC_MPLL |	\
+		 MX27_CSCR_SP_SEL |		\
+		 MX27_CSCR_ARM_DIV(0) |	\
+		 MX27_CSCR_FPM_EN |		\
+		 MX27_CSCR_SPEN |		\
+		 MX27_CSCR_MPEN |		\
+		 MX27_CSCR_AHB_DIV(1)
 
 ENTRY(neso_pll_init)
 
+	/* 399 MHz */
 	writel(IMX_PLL_PD(0) |
 		 IMX_PLL_MFD(51) |
 		 IMX_PLL_MFI(7) |
-		 IMX_PLL_MFN(35), MPCTL0) /* 399 MHz */
+		 IMX_PLL_MFN(35), MX27_CCM_BASE_ADDR + MX27_MPCTL0)
 
+	/* SPLL = 2 * 26 * 4.61538 MHz = 240 MHz */
 	writel(IMX_PLL_PD(1) |
 		 IMX_PLL_MFD(12) |
 		 IMX_PLL_MFI(9) |
-		 IMX_PLL_MFN(3), SPCTL0) /* SPLL = 2 * 26 * 4.61538 MHz = 240 MHz */
+		 IMX_PLL_MFN(3), MX27_CCM_BASE_ADDR + MX27_SPCTL0)
 
-	writel(CSCR_VAL | CSCR_MPLL_RESTART | CSCR_SPLL_RESTART, CSCR)
+	writel(CSCR_VAL | MX27_CSCR_MPLL_RESTART | MX27_CSCR_SPLL_RESTART,
+			MX27_CCM_BASE_ADDR + MX27_CSCR)
 
 	ldr r2, =16000
 1:
diff --git a/arch/arm/boards/imx27ads/lowlevel_init.S b/arch/arm/boards/imx27ads/lowlevel_init.S
index 1bebb1d..7c01558 100644
--- a/arch/arm/boards/imx27ads/lowlevel_init.S
+++ b/arch/arm/boards/imx27ads/lowlevel_init.S
@@ -118,13 +118,13 @@ reset:
 	common_reset r0
 
 	/* ahb lite ip interface */
-	writel(0x20040304, AIPI1_PSR0)
-	writel(0xDFFBFCFB, AIPI1_PSR1)
-	writel(0x00000000, AIPI2_PSR0)
-	writel(0xFFFFFFFF, AIPI2_PSR1)
+	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0)
+	writel(0xDFFBFCFB, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR1)
+	writel(0x00000000, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR0)
+	writel(0xFFFFFFFF, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR1)
 
 	/* disable mpll/spll */
-	ldr r0, =CSCR
+	ldr r0, =MX27_CCM_BASE_ADDR + MX27_CSCR
 	ldr r1, [r0]
 	bic r1, r1, #0x03
 	str r1, [r0]
@@ -136,15 +136,16 @@ reset:
 	 *        with 1.2 V core voltage! Find out if this is
 	 *        documented somewhere.
 	 */
-	writel(0x00191403, MPCTL0)	/* MPLL = 199.5*2 MHz               */
-	writel(0x040C2403, SPCTL0)	/* SPLL = FIXME (needs review)      */
+	writel(0x00191403, MX27_CCM_BASE_ADDR + MX27_MPCTL0)	/* MPLL = 199.5*2 MHz               */
+	writel(0x040C2403, MX27_CCM_BASE_ADDR + MX27_SPCTL0)	/* SPLL = FIXME (needs review)      */
 
 	/*
 	 * ARM clock = (399 MHz / 2) / (ARM divider = 1) = 200 MHz
 	 * AHB clock = (399 MHz / 3) / (AHB divider = 2) = 66.5 MHz
 	 * System clock (HCLK) = 133 MHz
 	 */
-	writel(0x33F30307 | CSCR_MPLL_RESTART | CSCR_SPLL_RESTART, CSCR)
+	writel(0x33F30307 | MX27_CSCR_MPLL_RESTART | MX27_CSCR_SPLL_RESTART,
+			MX27_CCM_BASE_ADDR + MX27_CSCR)
 
 	/* add some delay here */
 	mov r1, #0x1000
@@ -152,13 +153,14 @@ reset:
 	bne 1b
 
 	/* clock gating enable */
-	writel(0x00050f08, GPCR)
+	writel(0x00050f08, MX27_SYSCTRL_BASE_ADDR + MX27_GPCR)
 
 	/* peripheral clock divider */
-	writel(0x23C8F403, PCDR0)	/* FIXME                            */
-	writel(0x09030913, PCDR1)	/* PERDIV1=08 @133 MHz              */
-					/* PERDIV1=04 @266 MHz              *
-					 * /
+	/* FIXME                            */
+	writel(0x23C8F403, MX27_CCM_BASE_ADDR + MX27_PCDR0)
+	/* PERDIV1=08 @133 MHz              */
+	/* PERDIV1=04 @266 MHz              */
+	writel(0x09030913, MX27_CCM_BASE_ADDR + MX27_PCDR1)
 	/* skip sdram initialization if we run from ram */
 	cmp	pc, #0xa0000000
 	bls	1f
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index 2211e42..13639bc 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -58,10 +58,10 @@ void __bare_init __naked reset(void)
 	common_reset();
 
 	/* ahb lite ip interface */
-	AIPI1_PSR0 = 0x20040304;
-	AIPI1_PSR1 = 0xDFFBFCFB;
-	AIPI2_PSR0 = 0x00000000;
-	AIPI2_PSR1 = 0xFFFFFFFF;
+	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0);
+	writel(0xDFFBFCFB, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR1);
+	writel(0x00000000, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR0);
+	writel(0xFFFFFFFF, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR1);
 
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
@@ -69,9 +69,10 @@ void __bare_init __naked reset(void)
 		board_init_lowlevel_return();
 
 	/* re-program the PLL prior(!) starting the SDRAM controller */
-	MPCTL0 = MPCTL0_VAL;
-	SPCTL0 = SPCTL0_VAL;
-	CSCR = CSCR_VAL | CSCR_UPDATE_DIS | CSCR_MPLL_RESTART | CSCR_SPLL_RESTART;
+	writel(MPCTL0_VAL, MX27_CCM_BASE_ADDR + MX27_MPCTL0);
+	writel(SPCTL0_VAL, MX27_CCM_BASE_ADDR + MX27_SPCTL0);
+	writel(CSCR_VAL | MX27_CSCR_UPDATE_DIS | MX27_CSCR_MPLL_RESTART |
+		MX27_CSCR_SPLL_RESTART, MX27_CCM_BASE_ADDR + MX27_CSCR);
 
 	/*
 	 * DDR on CSD0
@@ -79,11 +80,12 @@ void __bare_init __naked reset(void)
 	/* Enable DDR SDRAM operation */
 	writel(0x00000008, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC);
 
-	DSCR(3) = 0x55555555; /* Set the driving strength   */
-	DSCR(5) = 0x55555555;
-	DSCR(6) = 0x55555555;
-	DSCR(7) = 0x00005005;
-	DSCR(8) = 0x15555555;
+	/* Set the driving strength   */
+	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(3));
+	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(5));
+	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(6));
+	writel(0x00005005, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(7));
+	writel(0x15555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(8));
 
 	/* Initial reset */
 	writel(0x00000004, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC);
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 7677bea..d6d1d01 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -112,8 +112,8 @@ static inline uint32_t get_pll_spctl10(void)
 {
 	uint32_t reg;
 
-	reg = SPCTL0;
-	SPCTL0 = reg;
+	reg = readl(MX27_CCM_BASE_ADDR + MX27_SPCTL0);
+	writel(reg, MX27_CCM_BASE_ADDR + MX27_SPCTL0);
 
 	return reg;
 }
@@ -127,7 +127,8 @@ static int pcm038_power_init(void)
 	struct mc13xxx *mc13xxx = mc13xxx_get();
 
 	/* PLL registers already set to their final values? */
-	if (spctl0 == SPCTL0_VAL && MPCTL0 == MPCTL0_VAL) {
+	if (spctl0 == SPCTL0_VAL &&
+	    readl(MX27_CCM_BASE_ADDR + MX27_MPCTL0) == MPCTL0_VAL) {
 		console_flush();
 		if (mc13xxx) {
 			mc13xxx_reg_write(mc13xxx, MC13783_REG_SWITCHERS(0),
@@ -162,9 +163,9 @@ static int pcm038_power_init(void)
 
 			/* wait for required power level to run the CPU at 400 MHz */
 			udelay(100000);
-			CSCR = CSCR_VAL_FINAL;
-			PCDR0 = 0x130410c3;
-			PCDR1 = 0x09030911;
+			writel(CSCR_VAL_FINAL, MX27_CCM_BASE_ADDR + MX27_CSCR);
+			writel(0x130410c3, MX27_CCM_BASE_ADDR + MX27_PCDR0);
+			writel(0x09030911, MX27_CCM_BASE_ADDR + MX27_PCDR1);
 
 			/* Clocks have changed. Notify clients */
 			clock_notifier_call_chain();
@@ -174,7 +175,7 @@ static int pcm038_power_init(void)
 	}
 
 	/* clock gating enable */
-	GPCR = 0x00050f08;
+	writel(0x00050f08, MX27_SYSCTRL_BASE_ADDR + MX27_GPCR);
 
 	return 0;
 }
diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
index 5723fb3..8caed11 100644
--- a/arch/arm/boards/pcm038/pcm970.c
+++ b/arch/arm/boards/pcm038/pcm970.c
@@ -112,35 +112,38 @@ static void pcm970_ide_init(void)
 	mdelay(10);
 
 	/* Reset PCMCIA Status Change Register */
-	writel(0x00000fff, PCMCIA_PSCR);
+	writel(0x00000fff, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PSCR);
 	mdelay(10);
 
 	/* Check PCMCIA Input Pins Register for Card Detect & Power */
-	if ((readl(PCMCIA_PIPR) & ((1 << 8) | (3 << 3))) != (1 << 8)) {
+	if ((readl(MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PIPR) &
+				((1 << 8) | (3 << 3))) != (1 << 8)) {
 		printf("CompactFlash card not found. Driver not enabled.\n");
 		return;
 	}
 
 	/* Disable all interrupts */
-	writel(0, PCMCIA_PER);
+	writel(0, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PER);
 
 	/* Disable all PCMCIA banks */
 	for (i = 0; i < 5; i++)
-		writel(0, PCMCIA_POR(i));
+		writel(0, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_POR(i));
 
 	/* Not use internal PCOE */
-	writel(0, PCMCIA_PGCR);
+	writel(0, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PGCR);
 
 	/* Setup PCMCIA bank0 for Common memory mode */
-	writel(0, PCMCIA_PBR(0));
-	writel(0, PCMCIA_POFR(0));
-	writel((0 << 25) | (17 << 17) | (4 << 11) | (3 << 5) | 0xf, PCMCIA_POR(0));
+	writel(0, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PBR(0));
+	writel(0, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_POFR(0));
+	writel((0 << 25) | (17 << 17) | (4 << 11) | (3 << 5) | 0xf,
+			MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_POR(0));
 
 	/* Clear PCMCIA General Status Register */
-	writel(0x0000001f, PCMCIA_PGSR);
+	writel(0x0000001f, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PGSR);
 
 	/* Make PCMCIA bank0 valid */
-	writel(readl(PCMCIA_POR(0)) | (1 << 29), PCMCIA_POR(0));
+	writel(readl(MX27_PCMCIA_POR(0)) | (1 << 29),
+			MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_POR(0));
 
 	platform_device_register(&pcm970_ide_device);
 }
diff --git a/arch/arm/boards/pcm038/pll.h b/arch/arm/boards/pcm038/pll.h
index a7da4a4..8bdb76d 100644
--- a/arch/arm/boards/pcm038/pll.h
+++ b/arch/arm/boards/pcm038/pll.h
@@ -22,35 +22,35 @@
 /* define the PLL setting we want to run the system  */
 
 /* main clock divider settings immediately after reset (at 1.25 V core supply) */
-#define CSCR_VAL (CSCR_USB_DIV(3) |	\
-		CSCR_SD_CNT(3) |	\
-		CSCR_MSHC_SEL |		\
-		CSCR_H264_SEL |		\
-		CSCR_SSI1_SEL |		\
-		CSCR_SSI2_SEL |		\
-		CSCR_SP_SEL | /* 26 MHz reference */ \
-		CSCR_MCU_SEL | /* 26 MHz reference */ \
-		CSCR_ARM_DIV(0) | /* CPU runs at MPLL/3 clock */ \
-		CSCR_AHB_DIV(1) | /* AHB runs at MPLL/6 clock */ \
-		CSCR_FPM_EN | \
-		CSCR_SPEN |		\
-		CSCR_MPEN)
+#define CSCR_VAL (MX27_CSCR_USB_DIV(3) |	\
+		MX27_CSCR_SD_CNT(3) |	\
+		MX27_CSCR_MSHC_SEL |		\
+		MX27_CSCR_H264_SEL |		\
+		MX27_CSCR_SSI1_SEL |		\
+		MX27_CSCR_SSI2_SEL |		\
+		MX27_CSCR_SP_SEL | /* 26 MHz reference */ \
+		MX27_CSCR_MCU_SEL | /* 26 MHz reference */ \
+		MX27_CSCR_ARM_DIV(0) | /* CPU runs at MPLL/3 clock */ \
+		MX27_CSCR_AHB_DIV(1) | /* AHB runs at MPLL/6 clock */ \
+		MX27_CSCR_FPM_EN | \
+		MX27_CSCR_SPEN |		\
+		MX27_CSCR_MPEN)
 
 /* main clock divider settings after core voltage increases to 1.45 V */
-#define CSCR_VAL_FINAL (CSCR_USB_DIV(3) |	\
-		CSCR_SD_CNT(3) |	\
-		CSCR_MSHC_SEL |		\
-		CSCR_H264_SEL |		\
-		CSCR_SSI1_SEL |		\
-		CSCR_SSI2_SEL |		\
-		CSCR_SP_SEL | /* 26 MHz reference */ \
-		CSCR_MCU_SEL | /* 26 MHz reference */ \
-		CSCR_ARM_SRC_MPLL | /* use main MPLL clock */ \
-		CSCR_ARM_DIV(0) | /* CPU run at full MPLL clock */ \
-		CSCR_AHB_DIV(1) | /* AHB runs at MPLL/6 clock */ \
-		CSCR_FPM_EN | /* do not disable it! */ \
-		CSCR_SPEN |		\
-		CSCR_MPEN)
+#define CSCR_VAL_FINAL (MX27_CSCR_USB_DIV(3) |	\
+		MX27_CSCR_SD_CNT(3) |	\
+		MX27_CSCR_MSHC_SEL |		\
+		MX27_CSCR_H264_SEL |		\
+		MX27_CSCR_SSI1_SEL |		\
+		MX27_CSCR_SSI2_SEL |		\
+		MX27_CSCR_SP_SEL | /* 26 MHz reference */ \
+		MX27_CSCR_MCU_SEL | /* 26 MHz reference */ \
+		MX27_CSCR_ARM_SRC_MPLL | /* use main MPLL clock */ \
+		MX27_CSCR_ARM_DIV(0) | /* CPU run at full MPLL clock */ \
+		MX27_CSCR_AHB_DIV(1) | /* AHB runs at MPLL/6 clock */ \
+		MX27_CSCR_FPM_EN | /* do not disable it! */ \
+		MX27_CSCR_SPEN |		\
+		MX27_CSCR_MPEN)
 
 /* MPLL should provide a 399 MHz clock from the 26 MHz reference */
 #define MPCTL0_VAL (IMX_PLL_PD(0) |	\
diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
index 4b9add9..60393c6 100644
--- a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
+++ b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
@@ -24,11 +24,12 @@
 	/* Enable DDR SDRAM operation */
 	writel(0x00000008, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC)
 
-	writel(0x55555555, DSCR(3)) /* Set the driving strength   */
-	writel(0x55555555, DSCR(5))
-	writel(0x55555555, DSCR(6))
-	writel(0x00005005, DSCR(7))
-	writel(0x15555555, DSCR(8))
+	/* Set the driving strength   */
+	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(3))
+	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(5))
+	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(6))
+	writel(0x00005005, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(7))
+	writel(0x15555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(8))
 
 	/* Initial reset */
 	writel(0x00000004, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC)
@@ -69,10 +70,10 @@ reset:
 	common_reset r0
 
 	/* ahb lite ip interface */
-	writel(0x20040304, AIPI1_PSR0)
-	writel(0xDFFBFCFB, AIPI1_PSR1)
-	writel(0x00000000, AIPI2_PSR0)
-	writel(0xFFFFFFFF, AIPI2_PSR1)
+	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0)
+	writel(0xDFFBFCFB, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR1)
+	writel(0x00000000, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR0)
+	writel(0xFFFFFFFF, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR1)
 
 	/* skip sdram initialization if we run from ram */
 	cmp	pc, #0xa0000000
@@ -83,21 +84,26 @@ reset:
 	b	board_init_lowlevel_return
 
 1:
+	/* 399 MHz */
 	writel(IMX_PLL_PD(0) |
 		 IMX_PLL_MFD(51) |
 		 IMX_PLL_MFI(7) |
-		 IMX_PLL_MFN(35), MPCTL0) /* 399 MHz */
+		 IMX_PLL_MFN(35), MX27_CCM_BASE_ADDR + MX27_MPCTL0)
 
+	/* SPLL = 2 * 26 * 4.61538 MHz = 240 MHz */
 	writel(IMX_PLL_PD(1) |
 		 IMX_PLL_MFD(12) |
 		 IMX_PLL_MFI(9) |
-		 IMX_PLL_MFN(3), SPCTL0) /* SPLL = 2 * 26 * 4.61538 MHz = 240 MHz */
-
-	writel(CSCR_MPLL_RESTART | CSCR_SPLL_RESTART | CSCR_ARM_SRC_MPLL |
-	       CSCR_MCU_SEL | CSCR_SP_SEL | CSCR_FPM_EN | CSCR_MPEN |
-	       CSCR_SPEN | CSCR_ARM_DIV(0) | CSCR_AHB_DIV(1) | CSCR_USB_DIV(3) |
-	       CSCR_SD_CNT(3) | CSCR_SSI2_SEL | CSCR_SSI1_SEL | CSCR_H264_SEL |
-	       CSCR_MSHC_SEL, CSCR)
+		 IMX_PLL_MFN(3), MX27_CCM_BASE_ADDR + MX27_SPCTL0)
+
+	writel(MX27_CSCR_MPLL_RESTART | MX27_CSCR_SPLL_RESTART |
+		MX27_CSCR_ARM_SRC_MPLL | MX27_CSCR_MCU_SEL |
+		MX27_CSCR_SP_SEL | MX27_CSCR_FPM_EN |
+		MX27_CSCR_MPEN | MX27_CSCR_SPEN | MX27_CSCR_ARM_DIV(0) |
+		MX27_CSCR_AHB_DIV(1) | MX27_CSCR_USB_DIV(3) |
+		MX27_CSCR_SD_CNT(3) | MX27_CSCR_SSI2_SEL |
+		MX27_CSCR_SSI1_SEL | MX27_CSCR_H264_SEL |
+		MX27_CSCR_MSHC_SEL, MX27_CCM_BASE_ADDR + MX27_CSCR)
 
 	sdram_init
 
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index a9658fa..ff8d509 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -101,65 +101,66 @@
 /* IRAM */
 #define MX27_IRAM_BASE_ADDR		0xffff4c00	/* internal ram */
 
-#define PCMCIA_PIPR		(MX27_PCMCIA_CTL_BASE_ADDR + 0x00)
-#define PCMCIA_PSCR		(MX27_PCMCIA_CTL_BASE_ADDR + 0x04)
-#define PCMCIA_PER		(MX27_PCMCIA_CTL_BASE_ADDR + 0x08)
-#define PCMCIA_PBR(x)		(MX27_PCMCIA_CTL_BASE_ADDR + 0x0c + ((x) << 2))
-#define PCMCIA_POR(x)		(MX27_PCMCIA_CTL_BASE_ADDR + 0x28 + ((x) << 2))
-#define PCMCIA_POFR(x)		(MX27_PCMCIA_CTL_BASE_ADDR + 0x44 + ((x) << 2))
-#define PCMCIA_PGCR		(MX27_PCMCIA_CTL_BASE_ADDR + 0x60)
-#define PCMCIA_PGSR		(MX27_PCMCIA_CTL_BASE_ADDR + 0x64)
+/* PCMCIA (base: MX27_PCMCIA_CTL_BASE_ADDR) */
+#define MX27_PCMCIA_PIPR	0x00
+#define MX27_PCMCIA_PSCR	0x04
+#define MX27_PCMCIA_PER		0x08
+#define MX27_PCMCIA_PBR(x)	(0x0c + ((x) << 2))
+#define MX27_PCMCIA_POR(x)	(0x28 + ((x) << 2))
+#define MX27_PCMCIA_POFR(x)	(0x44 + ((x) << 2))
+#define MX27_PCMCIA_PGCR	0x60
+#define MX27_PCMCIA_PGSR	0x64
 
-/* AIPI */
-#define AIPI1_PSR0	__REG(MX27_AIPI_BASE_ADDR + 0x00)
-#define AIPI1_PSR1	__REG(MX27_AIPI_BASE_ADDR + 0x04)
-#define AIPI2_PSR0	__REG(MX27_AIPI_BASE_ADDR + 0x20000 + 0x00)
-#define AIPI2_PSR1	__REG(MX27_AIPI_BASE_ADDR + 0x20000 + 0x04)
+/* AIPI (base: MX27_AIPI_BASE_ADDR) */
+#define MX27_AIPI1_PSR0	0x00
+#define MX27_AIPI1_PSR1	0x04
+#define MX27_AIPI2_PSR0	(0x20000 + 0x00)
+#define MX27_AIPI2_PSR1	(0x20000 + 0x04)
 
-/* System Control */
-#define CID     __REG(MX27_SYSCTRL_BASE_ADDR + 0x0)		/* Chip ID Register */
-#define FMCR    __REG(MX27_SYSCTRL_BASE_ADDR + 0x14)		/* Function Multeplexing Control Register */
-#define GPCR	__REG(MX27_SYSCTRL_BASE_ADDR + 0x18)		/* Global Peripheral Control Register */
-#define WBCR	__REG(MX27_SYSCTRL_BASE_ADDR + 0x1C)		/* Well Bias Control Register */
-#define DSCR(x)	__REG(MX27_SYSCTRL_BASE_ADDR + 0x1C + ((x) << 2))	/* Driving Strength Control Register 1 - 13 */
+/* System Control (base: MX27_SYSCTRL_BASE_ADDR) */
+#define MX27_CID	0x0	/* Chip ID Register */
+#define MX27_FMCR	0x14	/* Function Multeplexing Control Register */
+#define MX27_GPCR	0x18	/* Global Peripheral Control Register */
+#define MX27_WBCR	0x1C	/* Well Bias Control Register */
+#define MX27_DSCR(x)	(0x1C + ((x) << 2))	/* Driving Strength Control Register 1 - 13 */
 
 #include "esdctl.h"
 
-/* PLL registers */
-#define CSCR		__REG(MX27_CCM_BASE_ADDR + 0x00) /* Clock Source Control Register       */
-#define MPCTL0		__REG(MX27_CCM_BASE_ADDR + 0x04) /* MCU PLL Control Register 0          */
-#define MPCTL1		__REG(MX27_CCM_BASE_ADDR + 0x08) /* MCU PLL Control Register 1          */
-#define SPCTL0		__REG(MX27_CCM_BASE_ADDR + 0x0c) /* System PLL Control Register 0       */
-#define SPCTL1		__REG(MX27_CCM_BASE_ADDR + 0x10) /* System PLL Control Register 1       */
-#define OSC26MCTL	__REG(MX27_CCM_BASE_ADDR + 0x14) /* Oscillator 26M Register             */
-#define PCDR0		__REG(MX27_CCM_BASE_ADDR + 0x18) /* Peripheral Clock Divider Register 0 */
-#define PCDR1		__REG(MX27_CCM_BASE_ADDR + 0x1c) /* Peripheral Clock Divider Register 1 */
-#define PCCR0		__REG(MX27_CCM_BASE_ADDR + 0x20) /* Peripheral Clock Control Register 0 */
-#define PCCR1		__REG(MX27_CCM_BASE_ADDR + 0x24) /* Peripheral Clock Control Register 1 */
-#define CCSR		__REG(MX27_CCM_BASE_ADDR + 0x28) /* Clock Control Status Register       */
+/* PLL registers (base: MX27_CCM_BASE_ADDR) */
+#define MX27_CSCR	0x00 /* Clock Source Control Register       */
+#define MX27_MPCTL0	0x04 /* MCU PLL Control Register 0          */
+#define MX27_MPCTL1	0x08 /* MCU PLL Control Register 1          */
+#define MX27_SPCTL0	0x0c /* System PLL Control Register 0       */
+#define MX27_SPCTL1	0x10 /* System PLL Control Register 1       */
+#define MX27_OSC26MCTL	0x14 /* Oscillator 26M Register             */
+#define MX27_PCDR0	0x18 /* Peripheral Clock Divider Register 0 */
+#define MX27_PCDR1	0x1c /* Peripheral Clock Divider Register 1 */
+#define MX27_PCCR0	0x20 /* Peripheral Clock Control Register 0 */
+#define MX27_PCCR1	0x24 /* Peripheral Clock Control Register 1 */
+#define MX27_CCSR	0x28 /* Clock Control Status Register       */
 
-#define CSCR_MPEN		(1 << 0)
-#define CSCR_SPEN		(1 << 1)
-#define CSCR_FPM_EN		(1 << 2)
-#define CSCR_OSC26M_DIS		(1 << 3)
-#define CSCR_OSC26M_DIV1P5	(1 << 4)
-#define CSCR_AHB_DIV(d)		(((d) & 0x3) << 8)
-#define CSCR_ARM_DIV(d)		(((d) & 0x3) << 12)
-#define CSCR_ARM_SRC_MPLL	(1 << 15)
-#define CSCR_MCU_SEL		(1 << 16)
-#define CSCR_SP_SEL		(1 << 17)
-#define CSCR_MPLL_RESTART	(1 << 18)
-#define CSCR_SPLL_RESTART	(1 << 19)
-#define CSCR_MSHC_SEL		(1 << 20)
-#define CSCR_H264_SEL		(1 << 21)
-#define CSCR_SSI1_SEL		(1 << 22)
-#define CSCR_SSI2_SEL		(1 << 23)
-#define CSCR_SD_CNT(d)		(((d) & 0x3) << 24)
-#define CSCR_USB_DIV(d)		(((d) & 0x7) << 28)
-#define CSCR_UPDATE_DIS		(1 << 31)
+#define MX27_CSCR_MPEN		(1 << 0)
+#define MX27_CSCR_SPEN		(1 << 1)
+#define MX27_CSCR_FPM_EN	(1 << 2)
+#define MX27_CSCR_OSC26M_DIS	(1 << 3)
+#define MX27_CSCR_OSC26M_DIV1P5	(1 << 4)
+#define MX27_CSCR_AHB_DIV(d)	(((d) & 0x3) << 8)
+#define MX27_CSCR_ARM_DIV(d)	(((d) & 0x3) << 12)
+#define MX27_CSCR_ARM_SRC_MPLL	(1 << 15)
+#define MX27_CSCR_MCU_SEL	(1 << 16)
+#define MX27_CSCR_SP_SEL	(1 << 17)
+#define MX27_CSCR_MPLL_RESTART	(1 << 18)
+#define MX27_CSCR_SPLL_RESTART	(1 << 19)
+#define MX27_CSCR_MSHC_SEL	(1 << 20)
+#define MX27_CSCR_H264_SEL	(1 << 21)
+#define MX27_CSCR_SSI1_SEL	(1 << 22)
+#define MX27_CSCR_SSI2_SEL	(1 << 23)
+#define MX27_CSCR_SD_CNT(d)	(((d) & 0x3) << 24)
+#define MX27_CSCR_USB_DIV(d)	(((d) & 0x7) << 28)
+#define MX27_CSCR_UPDATE_DIS	(1 << 31)
 
-#define MPCTL1_BRMO		(1 << 6)
-#define MPCTL1_LF		(1 << 15)
+#define MX27_MPCTL1_BRMO	(1 << 6)
+#define MX27_MPCTL1_LF		(1 << 15)
 
 #define PCCR0_SSI2_EN	(1 << 0)
 #define PCCR0_SSI1_EN	(1 << 1)
@@ -224,8 +225,6 @@
 #define PCCR1_UART2_EN		(1 << 30)
 #define PCCR1_UART1_EN		(1 << 31)
 
-#define CCSR_32K_SR		(1 << 15)
-
 /* SDRAM Controller registers bitfields */
 #define ESDCTL_PRCT(x)		(((x) & 3f) << 0)
 #define ESDCTL_BL		(1 << 7)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
