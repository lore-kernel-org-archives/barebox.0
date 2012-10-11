Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMCxt-0008Tf-NQ
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 07:14:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Oct 2012 09:13:33 +0200
Message-Id: <1349939621-17793-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/13] ARM i.MX35: Cleanup remaining unprefixed registers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |   20 +++----
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |   24 ++++----
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   10 ++--
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |   20 +++----
 arch/arm/boards/guf-cupid/board.c                  |    6 +-
 arch/arm/boards/guf-cupid/lowlevel.c               |   18 +++---
 arch/arm/boards/pcm043/lowlevel.c                  |   18 +++---
 arch/arm/boards/pcm043/pcm043.c                    |    6 +-
 arch/arm/mach-imx/external-nand-boot.c             |    2 +-
 arch/arm/mach-imx/imx35.c                          |    6 +-
 arch/arm/mach-imx/include/mach/imx35-regs.h        |   62 ++++++++++----------
 arch/arm/mach-imx/nand.c                           |    2 +-
 drivers/video/imx-ipu-fb.c                         |    4 +-
 13 files changed, 99 insertions(+), 99 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 53cc428..5d8830b 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -246,14 +246,14 @@ static int eukrea_cpuimx35_core_init(void)
 	u32 reg;
 
 	/* enable clock for I2C1, SDHC1, USB and FEC */
-	reg = readl(MX35_CCM_BASE_ADDR + CCM_CGR1);
-	reg |= 0x3 << CCM_CGR1_FEC_SHIFT;
-	reg |= 0x3 << CCM_CGR1_SDHC1_SHIFT;
-	reg |= 0x3 << CCM_CGR1_I2C1_SHIFT,
-	reg = writel(reg, MX35_CCM_BASE_ADDR + CCM_CGR1);
-	reg = readl(MX35_CCM_BASE_ADDR + CCM_CGR2);
-	reg |= 0x3 << CCM_CGR2_USB_SHIFT;
-	reg = writel(reg, MX35_CCM_BASE_ADDR + CCM_CGR2);
+	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
+	reg |= 0x3 << MX35_CCM_CGR1_FEC_SHIFT;
+	reg |= 0x3 << MX35_CCM_CGR1_SDHC1_SHIFT;
+	reg |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT,
+	reg = writel(reg, MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
+	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR2);
+	reg |= 0x3 << MX35_CCM_CGR2_USB_SHIFT;
+	reg = writel(reg, MX35_CCM_BASE_ADDR + MX35_CCM_CGR2);
 
 	/* AIPS setup - Only setup MPROTx registers. The PACR default values are good.*/
 	/*
@@ -345,10 +345,10 @@ static int do_cpufreq(int argc, char *argv[])
 
 	switch (freq) {
 	case 399:
-		writel(MPCTL_PARAM_399, MX35_CCM_BASE_ADDR + CCM_MPCTL);
+		writel(MPCTL_PARAM_399, MX35_CCM_BASE_ADDR + MX35_CCM_MPCTL);
 		break;
 	case 532:
-		writel(MPCTL_PARAM_532, MX35_CCM_BASE_ADDR + CCM_MPCTL);
+		writel(MPCTL_PARAM_532, MX35_CCM_BASE_ADDR + MX35_CCM_MPCTL);
 		break;
 	default:
 		return COMMAND_ERROR_USAGE;
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index 7f9395e..c6ab3be 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -41,10 +41,10 @@ static void __bare_init __naked insdram(void)
 	uint32_t r;
 
 	/* Speed up NAND controller by adjusting the NFC divider */
-	r = readl(MX35_CCM_BASE_ADDR + CCM_PDR4);
+	r = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 	r &= ~(0xf << 28);
 	r |= 0x1 << 28;
-	writel(r, MX35_CCM_BASE_ADDR + CCM_PDR4);
+	writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 
 	/* setup a stack to be able to call imx_nand_load_image() */
 	r = STACK_BASE + STACK_SIZE - 12;
@@ -106,27 +106,27 @@ void __bare_init __naked reset(void)
 	 * End of ARM1136 init
 	 */
 
-	writel(0x003F4208, ccm_base + CCM_CCMR);
+	writel(0x003F4208, ccm_base + MX35_CCM_CCMR);
 
 	/* Set MPLL , arm clock and ahb clock*/
-	writel(MPCTL_PARAM_532, ccm_base + CCM_MPCTL);
+	writel(MPCTL_PARAM_532, ccm_base + MX35_CCM_MPCTL);
 
-	writel(PPCTL_PARAM_300, ccm_base + CCM_PPCTL);
-	writel(0x00001000, ccm_base + CCM_PDR0);
+	writel(PPCTL_PARAM_300, ccm_base + MX35_CCM_PPCTL);
+	writel(0x00001000, ccm_base + MX35_CCM_PDR0);
 
-	r = readl(ccm_base + CCM_CGR0);
+	r = readl(ccm_base + MX35_CCM_CGR0);
 	r |= 0x00300000;
-	writel(r, ccm_base + CCM_CGR0);
+	writel(r, ccm_base + MX35_CCM_CGR0);
 
-	r = readl(ccm_base + CCM_CGR1);
+	r = readl(ccm_base + MX35_CCM_CGR1);
 	r |= 0x00030C00;
 	r |= 0x00000003;
-	writel(r, ccm_base + CCM_CGR1);
+	writel(r, ccm_base + MX35_CCM_CGR1);
 
 	/* enable watchdog asap */
-	r = readl(ccm_base + CCM_CGR2);
+	r = readl(ccm_base + MX35_CCM_CGR2);
 	r |= 0x03000000;
-	writel(r, ccm_base + CCM_CGR2);
+	writel(r, ccm_base + MX35_CCM_CGR2);
 
 	r = readl(MX35_L2CC_BASE_ADDR + L2X0_AUX_CTRL);
 	r |= 0x1000;
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 1a5bf5b..4c79317 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -144,7 +144,7 @@ static int f3s_devices_init(void)
 	/* CS0: Nor Flash */
 	imx35_setup_weimcs(0, 0x0000cf03, 0x10000d03, 0x00720900);
 
-	reg = readl(MX35_CCM_BASE_ADDR + CCM_RCSR);
+	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_RCSR);
 	/* some fuses provide us vital information about connected hardware */
 	if (reg & 0x20000000)
 		nand_info.width = 2;	/* 16 bit */
@@ -282,10 +282,10 @@ static int f3s_core_init(void)
 	imx35_setup_weimcs(5, 0x0000D843, 0x22252521, 0x22220A00);
 
 	/* enable clock for I2C1 and FEC */
-	reg = readl(MX35_CCM_BASE_ADDR + CCM_CGR1);
-	reg |= 0x3 << CCM_CGR1_FEC_SHIFT;
-	reg |= 0x3 << CCM_CGR1_I2C1_SHIFT;
-	reg = writel(reg, MX35_CCM_BASE_ADDR + CCM_CGR1);
+	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
+	reg |= 0x3 << MX35_CCM_CGR1_FEC_SHIFT;
+	reg |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT;
+	reg = writel(reg, MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
 
 	/* AIPS setup - Only setup MPROTx registers. The PACR default values are good.*/
 	/*
diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
index e5d0feb..bd3dd7f 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
@@ -98,27 +98,27 @@ reset:
 	ldr	r0, CCM_BASE_ADDR_W
 
 	ldr	r2, CCM_CCMR_W
-	str	r2, [r0, #CCM_CCMR]
+	str	r2, [r0, #MX35_CCM_CCMR]
 
 	ldr	r3, MPCTL_PARAM_532_W		/* consumer path*/
 
 	/* Set MPLL, arm clock and ahb clock */
-	str	r3, [r0, #CCM_MPCTL]
+	str	r3, [r0, #MX35_CCM_MPCTL]
 
 	ldr	r1, PPCTL_PARAM_W
-	str	r1, [r0, #CCM_PPCTL]
+	str	r1, [r0, #MX35_CCM_PPCTL]
 
 	ldr	r1, CCM_PDR0_W
-	str	r1, [r0, #CCM_PDR0]
+	str	r1, [r0, #MX35_CCM_PDR0]
 
-	ldr	r1, [r0, #CCM_CGR0]
+	ldr	r1, [r0, #MX35_CCM_CGR0]
 	orr	r1, r1, #0x00300000
-	str	r1, [r0, #CCM_CGR0]
+	str	r1, [r0, #MX35_CCM_CGR0]
 
-	ldr	r1, [r0, #CCM_CGR1]
+	ldr	r1, [r0, #MX35_CCM_CGR1]
 	orr	r1, r1, #0x00000C00
 	orr	r1, r1, #0x00000003
-	str	r1, [r0, #CCM_CGR1]
+	str	r1, [r0, #MX35_CCM_CGR1]
 
 	/* Skip SDRAM initialization if we run from RAM */
 	cmp	pc, #CSD0_BASE_ADDR
@@ -140,13 +140,13 @@ reset:
 	/* setup bank 0 */
 	mov	r5, #0x00
 	mov	r2, #0x00
-	mov	r1, #CSD0_BASE_ADDR
+	mov	r1, #MX35_CSD0_BASE_ADDR
 	bl	setup_sdram_bank
 
 	/* setup bank 1 */
 	mov	r5, #0x00
 	mov	r2, #0x00
-	mov	r1, #CSD1_BASE_ADDR
+	mov	r1, #MX35_CSD1_BASE_ADDR
 	bl	setup_sdram_bank
 
 	mov	lr, fp
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 933a9cd..e36fee8 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -117,7 +117,7 @@ static int cupid_devices_init(void)
 	gpio_direction_output(GPIO_LCD_ENABLE, 0);
 	gpio_direction_output(GPIO_LCD_BACKLIGHT, 0);
 
-	reg = readl(MX35_CCM_BASE_ADDR + CCM_RCSR);
+	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_RCSR);
 	/* some fuses provide us vital information about connected hardware */
 	if (reg & 0x20000000)
 		nand_info.width = 2;    /* 16 bit */
@@ -339,10 +339,10 @@ static int do_cpufreq(int argc, char *argv[])
 
 	switch (freq) {
 	case 399:
-		writel(MPCTL_PARAM_399, MX35_CCM_BASE_ADDR + CCM_MPCTL);
+		writel(MPCTL_PARAM_399, MX35_CCM_BASE_ADDR + MX35_CCM_MPCTL);
 		break;
 	case 532:
-		writel(MPCTL_PARAM_532, MX35_CCM_BASE_ADDR + CCM_MPCTL);
+		writel(MPCTL_PARAM_532, MX35_CCM_BASE_ADDR + MX35_CCM_MPCTL);
 		break;
 	default:
 		return COMMAND_ERROR_USAGE;
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index aa42697..900bdf9 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -304,27 +304,27 @@ void __bare_init __naked reset(void)
 	/* Configure clocks */
 
 	/* setup cpu/bus clocks */
-	writel(0x003f4208, MX35_CCM_BASE_ADDR + CCM_CCMR);
+	writel(0x003f4208, MX35_CCM_BASE_ADDR + MX35_CCM_CCMR);
 
 	/* configure MPLL */
-	writel(MPCTL_PARAM_532, MX35_CCM_BASE_ADDR + CCM_MPCTL);
+	writel(MPCTL_PARAM_532, MX35_CCM_BASE_ADDR + MX35_CCM_MPCTL);
 
 	/* configure PPLL */
-	writel(PPCTL_PARAM_300, MX35_CCM_BASE_ADDR + CCM_PPCTL);
+	writel(PPCTL_PARAM_300, MX35_CCM_BASE_ADDR + MX35_CCM_PPCTL);
 
 	/* configure core dividers */
-	r0 = PDR0_CCM_PER_AHB(1) | PDR0_HSP_PODF(2);
+	r0 = MX35_PDR0_CCM_PER_AHB(1) | MX35_PDR0_HSP_PODF(2);
 
-	writel(r0, MX35_CCM_BASE_ADDR + CCM_PDR0);
+	writel(r0, MX35_CCM_BASE_ADDR + MX35_CCM_PDR0);
 
 	/* configure clock-gates */
-	r0 = readl(MX35_CCM_BASE_ADDR + CCM_CGR0);
+	r0 = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR0);
 	r0 |= 0x00300000;
-	writel(r0, MX35_CCM_BASE_ADDR + CCM_CGR0);
+	writel(r0, MX35_CCM_BASE_ADDR + MX35_CCM_CGR0);
 
-	r0 = readl(MX35_CCM_BASE_ADDR + CCM_CGR1);
+	r0 = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
 	r0 |= 0x00000c03;
-	writel(r0, MX35_CCM_BASE_ADDR + CCM_CGR1);
+	writel(r0, MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
 
 	/* Configure SDRAM */
 	/* Try 32-Bit 256 MB DDR memory */
diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index a3c1a09..58c0840 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -111,28 +111,28 @@ void __bare_init __naked reset(void)
 	 * End of ARM1136 init
 	 */
 
-	writel(0x003F4208, ccm_base + CCM_CCMR);
+	writel(0x003F4208, ccm_base + MX35_CCM_CCMR);
 
 	/* Set MPLL , arm clock and ahb clock*/
-	writel(MPCTL_PARAM_532, ccm_base + CCM_MPCTL);
+	writel(MPCTL_PARAM_532, ccm_base + MX35_CCM_MPCTL);
 
-	writel(PPCTL_PARAM_300, ccm_base + CCM_PPCTL);
+	writel(PPCTL_PARAM_300, ccm_base + MX35_CCM_PPCTL);
 
 	/* Check silicon revision and use 532MHz if >=2.1 */
 	r = readl(MX35_IIM_BASE_ADDR + 0x24);
 	if (r >= IMX35_CHIP_REVISION_2_1)
-		writel(CCM_PDR0_532, ccm_base + CCM_PDR0);
+		writel(CCM_PDR0_532, ccm_base + MX35_CCM_PDR0);
 	else
-		writel(CCM_PDR0_399, ccm_base + CCM_PDR0);
+		writel(CCM_PDR0_399, ccm_base + MX35_CCM_PDR0);
 
-	r = readl(ccm_base + CCM_CGR0);
+	r = readl(ccm_base + MX35_CCM_CGR0);
 	r |= 0x00300000;
-	writel(r, ccm_base + CCM_CGR0);
+	writel(r, ccm_base + MX35_CCM_CGR0);
 
-	r = readl(ccm_base + CCM_CGR1);
+	r = readl(ccm_base + MX35_CCM_CGR1);
 	r |= 0x00000C00;
 	r |= 0x00000003;
-	writel(r, ccm_base + CCM_CGR1);
+	writel(r, ccm_base + MX35_CCM_CGR1);
 
 	r = readl(MX35_L2CC_BASE_ADDR + L2X0_AUX_CTRL);
 	r |= 0x1000;
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 09bc96a..b0d48ba 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -127,7 +127,7 @@ static int imx35_devices_init(void)
 
 	led_gpio_register(&led0);
 
-	reg = readl(MX35_CCM_BASE_ADDR + CCM_RCSR);
+	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_RCSR);
 	/* some fuses provide us vital information about connected hardware */
 	if (reg & 0x20000000)
 		nand_info.width = 2;    /* 16 bit */
@@ -308,10 +308,10 @@ static int do_cpufreq(int argc, char *argv[])
 
 	switch (freq) {
 	case 399:
-		writel(MPCTL_PARAM_399, MX35_CCM_BASE_ADDR + CCM_MPCTL);
+		writel(MPCTL_PARAM_399, MX35_CCM_BASE_ADDR + MX35_CCM_MPCTL);
 		break;
 	case 532:
-		writel(MPCTL_PARAM_532, MX35_CCM_BASE_ADDR + CCM_MPCTL);
+		writel(MPCTL_PARAM_532, MX35_CCM_BASE_ADDR + MX35_CCM_MPCTL);
 		break;
 	default:
 		return COMMAND_ERROR_USAGE;
diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 9bcfcca..7cf2a07 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -140,7 +140,7 @@ static int __maybe_unused is_pagesize_2k(void)
 		return 0;
 #endif
 #if defined(CONFIG_ARCH_IMX35)
-	if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 8))
+	if (readl(MX35_CCM_BASE_ADDR + MX35_CCM_RCSR) & (1 << 8))
 		return 1;
 	else
 		return 0;
diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index 946c8dd..5560157 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -63,9 +63,9 @@ static int imx35_init(void)
 
 	imx35_silicon_revision();
 
-	val = readl(MX35_CCM_BASE_ADDR + CCM_RCSR);
-	imx_25_35_boot_save_loc((val >> CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
-			(val >> CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
+	val = readl(MX35_CCM_BASE_ADDR + MX35_CCM_RCSR);
+	imx_25_35_boot_save_loc((val >> MX35_CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
+			(val >> MX35_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
 
 	add_generic_device("imx_iim", 0, NULL, MX35_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-imx/include/mach/imx35-regs.h
index 19f6389..37a4dad 100644
--- a/arch/arm/mach-imx/include/mach/imx35-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
@@ -141,36 +141,36 @@
 /*
  * Clock Controller Module (CCM)
  */
-#define CCM_CCMR	0x00
-#define CCM_PDR0	0x04
-#define CCM_PDR1	0x08
-#define CCM_PDR2	0x0C
-#define CCM_PDR3	0x10
-#define CCM_PDR4	0x14
-#define CCM_RCSR	0x18
-#define CCM_MPCTL	0x1C
-#define CCM_PPCTL	0x20
-#define CCM_ACMR	0x24
-#define CCM_COSR	0x28
-#define CCM_CGR0	0x2C
-#define CCM_CGR1	0x30
-#define CCM_CGR2	0x34
-#define CCM_CGR3	0x38
-
-#define CCM_CGR0_CSPI1_SHIFT	10
-#define CCM_CGR1_FEC_SHIFT	0
-#define CCM_CGR1_I2C1_SHIFT	10
-#define CCM_CGR1_SDHC1_SHIFT	26
-#define CCM_CGR2_USB_SHIFT	22
-
-#define CCM_RCSR_MEM_CTRL_SHIFT		25
-#define CCM_RCSR_MEM_TYPE_SHIFT		23
-
-#define PDR0_AUTO_MUX_DIV(x)	(((x) & 0x7) << 9)
-#define PDR0_CCM_PER_AHB(x)	(((x) & 0x7) << 12)
-#define PDR0_CON_MUX_DIV(x)	(((x) & 0xf) << 16)
-#define PDR0_HSP_PODF(x)	(((x) & 0x3) << 20)
-#define PDR0_AUTO_CON		(1 << 0)
-#define PDR0_PER_SEL		(1 << 26)
+#define MX35_CCM_CCMR	0x00
+#define MX35_CCM_PDR0	0x04
+#define MX35_CCM_PDR1	0x08
+#define MX35_CCM_PDR2	0x0C
+#define MX35_CCM_PDR3	0x10
+#define MX35_CCM_PDR4	0x14
+#define MX35_CCM_RCSR	0x18
+#define MX35_CCM_MPCTL	0x1C
+#define MX35_CCM_PPCTL	0x20
+#define MX35_CCM_ACMR	0x24
+#define MX35_CCM_COSR	0x28
+#define MX35_CCM_CGR0	0x2C
+#define MX35_CCM_CGR1	0x30
+#define MX35_CCM_CGR2	0x34
+#define MX35_CCM_CGR3	0x38
+
+#define MX35_CCM_CGR0_CSPI1_SHIFT	10
+#define MX35_CCM_CGR1_FEC_SHIFT	0
+#define MX35_CCM_CGR1_I2C1_SHIFT	10
+#define MX35_CCM_CGR1_SDHC1_SHIFT	26
+#define MX35_CCM_CGR2_USB_SHIFT	22
+
+#define MX35_CCM_RCSR_MEM_CTRL_SHIFT		25
+#define MX35_CCM_RCSR_MEM_TYPE_SHIFT		23
+
+#define MX35_PDR0_AUTO_MUX_DIV(x)	(((x) & 0x7) << 9)
+#define MX35_PDR0_CCM_PER_AHB(x)	(((x) & 0x7) << 12)
+#define MX35_PDR0_CON_MUX_DIV(x)	(((x) & 0xf) << 16)
+#define MX35_PDR0_HSP_PODF(x)		(((x) & 0x3) << 20)
+#define MX35_PDR0_AUTO_CON		(1 << 0)
+#define MX35_PDR0_PER_SEL		(1 << 26)
 
 #endif /* __ASM_ARCH_MX35_REGS_H */
diff --git a/arch/arm/mach-imx/nand.c b/arch/arm/mach-imx/nand.c
index 9b53b70..e793015 100644
--- a/arch/arm/mach-imx/nand.c
+++ b/arch/arm/mach-imx/nand.c
@@ -110,6 +110,6 @@ void imx_nand_set_layout(int writesize, int datawidth)
 #ifdef CONFIG_ARCH_IMX35
 	if (cpu_is_mx35())
 		imx25_35_nand_set_layout((void *)MX35_CCM_BASE_ADDR +
-				CCM_RCSR, writesize, datawidth);
+				MX35_CCM_RCSR, writesize, datawidth);
 #endif
 }
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 3f8fd33..5b9d7d5 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -742,9 +742,9 @@ static void ipu_fb_enable(struct fb_info *info)
 	/* ipu_idmac.c::ipu_probe() */
 
 	/* Start the clock */
-	reg = readl(IMX_CCM_BASE + CCM_CGR1);
+	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
 	reg |= (3 << 18);
-	writel(reg, IMX_CCM_BASE + CCM_CGR1);
+	writel(reg, MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
 
 	/* ipu_idmac.c::ipu_idmac_init() */
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
