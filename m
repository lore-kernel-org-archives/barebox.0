Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMFLw-0001pD-Vh
	for barebox@lists.infradead.org; Wed, 09 Jun 2010 07:05:33 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Wed,  9 Jun 2010 10:05:07 +0300
Message-Id: <f9f84cc251848d133fae379e6d20253df2121ffb.1276065824.git.baruch@tkos.co.il>
In-Reply-To: <cover.1276065824.git.baruch@tkos.co.il>
References: <cover.1276065824.git.baruch@tkos.co.il>
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
Subject: [PATCH 8/8] mx25 3ds: add support for boot from UART
To: barebox@lists.infradead.org
Cc: Baruch Siach <baruch@tkos.co.il>

For details of the UART protocol see the i.MX25 Reference Manual, section 7.8
"Serial Download protocol".

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm/mach-imx/Kconfig                    |    5 +++++
 board/freescale-mx25-3-stack/3stack.c        |    4 ++++
 board/freescale-mx25-3-stack/lowlevel_init.S |    5 +++++
 3 files changed, 14 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 419daab..40cebed 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -319,6 +319,11 @@ config FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
 config FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
 	bool "128 MB (mDDR)"
 endchoice
+
+config FREESCALE_MX25_3STACK_UART_BOOT
+	bool "Boot from UART"
+	depends on ARCH_IMX_INTERNAL_BOOT
+
 endif
 endmenu
 
diff --git a/board/freescale-mx25-3-stack/3stack.c b/board/freescale-mx25-3-stack/3stack.c
index a657a47..081487a 100644
--- a/board/freescale-mx25-3-stack/3stack.c
+++ b/board/freescale-mx25-3-stack/3stack.c
@@ -44,7 +44,11 @@ extern unsigned long _stext;
 
 void __naked __flash_header_start go(void)
 {
+#if defined CONFIG_FREESCALE_MX25_3STACK_UART_BOOT
+	__asm__ (".word	exception_vectors\n");
+#else
 	__asm__ __volatile__("b exception_vectors\n");
+#endif
 }
 
 struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
diff --git a/board/freescale-mx25-3-stack/lowlevel_init.S b/board/freescale-mx25-3-stack/lowlevel_init.S
index 73bb147..b65a070 100644
--- a/board/freescale-mx25-3-stack/lowlevel_init.S
+++ b/board/freescale-mx25-3-stack/lowlevel_init.S
@@ -73,6 +73,11 @@ board_init_lowlevel:
 	writel(0x000FDFFF, IMX_CCM_BASE + CCM_CGCR2)
 	writel(0x0000FEFF, IMX_CCM_BASE + MX25_CCM_MCR)
 
+#if defined CONFIG_FREESCALE_MX25_3STACK_UART_BOOT
+	/* initialize CCM_CCTL, ARM clk = 400, AHB clk = 133 */
+	writel(0x20034000, IMX_CCM_BASE + 0x8);
+#endif
+
 	/* Skip SDRAM initialization if we run from RAM */
 	cmp	pc, #0x80000000
 	bls	1f
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
