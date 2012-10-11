Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMCxm-0008Q4-Pm
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 07:14:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Oct 2012 09:13:32 +0200
Message-Id: <1349939621-17793-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/13] ARM i.MX25: Cleanup remaining unprefixed registers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |   12 ++--
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    4 +-
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |    6 +-
 arch/arm/boards/karo-tx25/board.c                  |    2 +-
 arch/arm/boards/karo-tx25/lowlevel.c               |    8 +--
 arch/arm/mach-imx/external-nand-boot.c             |    8 ++-
 arch/arm/mach-imx/imx25.c                          |    6 +-
 arch/arm/mach-imx/include/mach/imx25-regs.h        |   60 ++++++++++----------
 arch/arm/mach-imx/nand.c                           |    2 +-
 9 files changed, 57 insertions(+), 51 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index fe4e70c..61105a7 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -57,15 +57,15 @@ void __bare_init __naked reset(void)
 	common_reset();
 
 	/* restart the MPLL and wait until it's stable */
-	writel(readl(MX25_CCM_BASE_ADDR + CCM_CCTL) | (1 << 27),
-						MX25_CCM_BASE_ADDR + CCM_CCTL);
-	while (readl(MX25_CCM_BASE_ADDR + CCM_CCTL) & (1 << 27)) {};
+	writel(readl(MX25_CCM_BASE_ADDR + MX25_CCM_CCTL) | (1 << 27),
+			MX25_CCM_BASE_ADDR + MX25_CCM_CCTL);
+	while (readl(MX25_CCM_BASE_ADDR + MX25_CCM_CCTL) & (1 << 27)) {};
 
 	/* Configure dividers and ARM clock source
 	 * 	ARM @ 400 MHz
 	 * 	AHB @ 133 MHz
 	 */
-	writel(0x20034000, MX25_CCM_BASE_ADDR + CCM_CCTL);
+	writel(0x20034000, MX25_CCM_BASE_ADDR + MX25_CCM_CCTL);
 
 	/* Enable UART1 / FEC / */
 /*	writel(0x1FFFFFFF, MX25_CCM_BASE_ADDR + CCM_CGCR0);
@@ -118,10 +118,10 @@ void __bare_init __naked reset(void)
 	writel(0x1, 0xb8003000);
 
 	/* Speed up NAND controller by adjusting the NFC divider */
-	r = readl(MX25_CCM_BASE_ADDR + CCM_PCDR2);
+	r = readl(MX25_CCM_BASE_ADDR + MX25_CCM_PCDR2);
 	r &= ~0xf;
 	r |= 0x1;
-	writel(r, MX25_CCM_BASE_ADDR + CCM_PCDR2);
+	writel(r, MX25_CCM_BASE_ADDR + MX25_CCM_PCDR2);
 
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index a0ae938..f5af7c5 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -215,7 +215,7 @@ static int imx25_devices_init(void)
 	imx25_iim_register_fec_ethaddr();
 	imx25_add_fec(&fec_info);
 
-	if (readl(MX25_CCM_BASE_ADDR + CCM_RCSR) & (1 << 14))
+	if (readl(MX25_CCM_BASE_ADDR + MX25_CCM_RCSR) & (1 << 14))
 		nand_info.width = 2;
 
 	imx25_add_nand(&nand_info);
@@ -298,7 +298,7 @@ void __bare_init nand_boot(void)
 
 static int imx25_core_setup(void)
 {
-	writel(0x01010103, MX25_CCM_BASE_ADDR + CCM_PCDR2);
+	writel(0x01010103, MX25_CCM_BASE_ADDR + MX25_CCM_PCDR2);
 	return 0;
 
 }
diff --git a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
index f911f9d..6635571 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
@@ -66,9 +66,9 @@ reset:
 	str r1, [r0, #MX25_CCM_MCR]
 
 	/* enable all the clocks */
-	writel(0x1FFFFFFF, MX25_CCM_BASE_ADDR + CCM_CGCR0)
-	writel(0xFFFFFFFF, MX25_CCM_BASE_ADDR + CCM_CGCR1)
-	writel(0x000FDFFF, MX25_CCM_BASE_ADDR + CCM_CGCR2)
+	writel(0x1FFFFFFF, MX25_CCM_BASE_ADDR + MX25_CCM_CGCR0)
+	writel(0xFFFFFFFF, MX25_CCM_BASE_ADDR + MX25_CCM_CGCR1)
+	writel(0x000FDFFF, MX25_CCM_BASE_ADDR + MX25_CCM_CGCR2)
 	writel(0x0000FEFF, MX25_CCM_BASE_ADDR + MX25_CCM_MCR)
 
 	/* Skip SDRAM initialization if we run from RAM */
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 82d5eb5..5c7b28b 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -108,7 +108,7 @@ static int tx25_devices_init(void)
 	imx25_iim_register_fec_ethaddr();
 	imx25_add_fec(&fec_info);
 
-	if (readl(MX25_CCM_BASE_ADDR + CCM_RCSR) & (1 << 14))
+	if (readl(MX25_CCM_BASE_ADDR + MX25_CCM_RCSR) & (1 << 14))
 		nand_info.width = 2;
 
 	imx25_add_nand(&nand_info);
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 6a324ce..0689f83 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -122,12 +122,12 @@ void __bare_init __naked reset(void)
 	writel(0x1, 0xb8003000);
 
 	/* configure ARM clk */
-	writel(0x20034000, MX25_CCM_BASE_ADDR + CCM_CCTL);
+	writel(0x20034000, MX25_CCM_BASE_ADDR + MX25_CCM_CCTL);
 
 	/* enable all the clocks */
-	writel(0x1fffffff, MX25_CCM_BASE_ADDR + CCM_CGCR0);
-	writel(0xffffffff, MX25_CCM_BASE_ADDR + CCM_CGCR1);
-	writel(0x000fdfff, MX25_CCM_BASE_ADDR + CCM_CGCR2);
+	writel(0x1fffffff, MX25_CCM_BASE_ADDR + MX25_CCM_CGCR0);
+	writel(0xffffffff, MX25_CCM_BASE_ADDR + MX25_CCM_CGCR1);
+	writel(0x000fdfff, MX25_CCM_BASE_ADDR + MX25_CCM_CGCR2);
 
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 6927eac..9bcfcca 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -121,6 +121,12 @@ static int __maybe_unused is_pagesize_2k(void)
 	else
 		return 0;
 #endif
+#if defined(CONFIG_ARCH_IMX25)
+	if (readl(MX25_CCM_BASE_ADDR + MX25_CCM_RCSR) & (1 << 8))
+		return 1;
+	else
+		return 0;
+#endif
 #ifdef CONFIG_ARCH_IMX27
 	if (readl(MX27_SYSCTRL_BASE_ADDR + 0x14) & (1 << 5))
 		return 1;
@@ -133,7 +139,7 @@ static int __maybe_unused is_pagesize_2k(void)
 	else
 		return 0;
 #endif
-#if defined(CONFIG_ARCH_IMX35) || defined(CONFIG_ARCH_IMX25)
+#if defined(CONFIG_ARCH_IMX35)
 	if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 8))
 		return 1;
 	else
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 92b5a1b..0f92b17 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -61,9 +61,9 @@ static int imx25_init(void)
 {
 	uint32_t val;
 
-	val = readl(MX25_CCM_BASE_ADDR + CCM_RCSR);
-	imx_25_35_boot_save_loc((val >> CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
-			(val >> CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
+	val = readl(MX25_CCM_BASE_ADDR + MX25_CCM_RCSR);
+	imx_25_35_boot_save_loc((val >> MX25_CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
+			(val >> MX25_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
 
 	add_generic_device("imx_iim", 0, NULL, MX25_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, &imx25_iim_pdata);
diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index 0bf6e11..46fdf48 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -86,36 +86,36 @@
 /*
  * Clock Controller Module (CCM)
  */
-#define CCM_MPCTL	0x00
-#define CCM_UPCTL	0x04
-#define CCM_CCTL	0x08
-#define CCM_CGCR0	0x0C
-#define CCM_CGCR1	0x10
-#define CCM_CGCR2	0x14
-#define CCM_PCDR0	0x18
-#define CCM_PCDR1	0x1C
-#define CCM_PCDR2	0x20
-#define CCM_PCDR3	0x24
-#define CCM_RCSR	0x28
-#define CCM_CRDR	0x2C
-#define CCM_DCVR0	0x30
-#define CCM_DCVR1	0x34
-#define CCM_DCVR2	0x38
-#define CCM_DCVR3	0x3c
-#define CCM_LTR0	0x40
-#define CCM_LTR1	0x44
-#define CCM_LTR2	0x48
-#define CCM_LTR3	0x4c
-
-#define PDR0_AUTO_MUX_DIV(x)	(((x) & 0x7) << 9)
-#define PDR0_CCM_PER_AHB(x)	(((x) & 0x7) << 12)
-#define PDR0_CON_MUX_DIV(x)	(((x) & 0xf) << 16)
-#define PDR0_HSP_PODF(x)	(((x) & 0x3) << 20)
-#define PDR0_AUTO_CON		(1 << 0)
-#define PDR0_PER_SEL		(1 << 26)
-
-#define CCM_RCSR_MEM_CTRL_SHIFT		30
-#define CCM_RCSR_MEM_TYPE_SHIFT		28
+#define MX25_CCM_MPCTL	0x00
+#define MX25_CCM_UPCTL	0x04
+#define MX25_CCM_CCTL	0x08
+#define MX25_CCM_CGCR0	0x0C
+#define MX25_CCM_CGCR1	0x10
+#define MX25_CCM_CGCR2	0x14
+#define MX25_CCM_PCDR0	0x18
+#define MX25_CCM_PCDR1	0x1C
+#define MX25_CCM_PCDR2	0x20
+#define MX25_CCM_PCDR3	0x24
+#define MX25_CCM_RCSR	0x28
+#define MX25_CCM_CRDR	0x2C
+#define MX25_CCM_DCVR0	0x30
+#define MX25_CCM_DCVR1	0x34
+#define MX25_CCM_DCVR2	0x38
+#define MX25_CCM_DCVR3	0x3c
+#define MX25_CCM_LTR0	0x40
+#define MX25_CCM_LTR1	0x44
+#define MX25_CCM_LTR2	0x48
+#define MX25_CCM_LTR3	0x4c
+
+#define MX25_PDR0_AUTO_MUX_DIV(x)	(((x) & 0x7) << 9)
+#define MX25_PDR0_CCM_PER_AHB(x)	(((x) & 0x7) << 12)
+#define MX25_PDR0_CON_MUX_DIV(x)	(((x) & 0xf) << 16)
+#define MX25_PDR0_HSP_PODF(x)		(((x) & 0x3) << 20)
+#define MX25_PDR0_AUTO_CON		(1 << 0)
+#define MX25_PDR0_PER_SEL		(1 << 26)
+
+#define MX25_CCM_RCSR_MEM_CTRL_SHIFT		30
+#define MX25_CCM_RCSR_MEM_TYPE_SHIFT		28
 
 /*
  * Adresses and ranges of the external chip select lines
diff --git a/arch/arm/mach-imx/nand.c b/arch/arm/mach-imx/nand.c
index b347664..9b53b70 100644
--- a/arch/arm/mach-imx/nand.c
+++ b/arch/arm/mach-imx/nand.c
@@ -105,7 +105,7 @@ void imx_nand_set_layout(int writesize, int datawidth)
 #ifdef CONFIG_ARCH_IMX25
 	if (cpu_is_mx25())
 		imx25_35_nand_set_layout((void *)MX25_CCM_BASE_ADDR +
-				CCM_RCSR, writesize, datawidth);
+				MX25_CCM_RCSR, writesize, datawidth);
 #endif
 #ifdef CONFIG_ARCH_IMX35
 	if (cpu_is_mx35())
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
