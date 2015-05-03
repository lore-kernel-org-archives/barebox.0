Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22a.google.com ([2607:f8b0:400e:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yojcc-0004iv-Ey
 for barebox@lists.infradead.org; Sun, 03 May 2015 02:27:11 +0000
Received: by pacyx8 with SMTP id yx8so128795489pac.1
 for <barebox@lists.infradead.org>; Sat, 02 May 2015 19:26:48 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  2 May 2015 19:26:16 -0700
Message-Id: <1430619980-26243-5-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
References: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/8] i.MX51: babbage: Implement CONFIG_DEBUG_LL
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Implement bits of configuraion needed to configure early debug output
support.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/freescale-mx51-babbage/lowlevel.c | 58 +++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/clock-imx51_53.h   |  5 +-
 2 files changed, 61 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
index 0f453f3..0135cb4 100644
--- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
+++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
@@ -1,9 +1,63 @@
+#include <debug_ll.h>
+#include <mach/clock-imx51_53.h>
 #include <common.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>

+#ifdef CONFIG_DEBUG_LL
+static inline void setup_uart(void)
+{
+
+	void __iomem *uartbase =
+	  (void *)IMX_UART_BASE(IMX_DEBUG_SOC,
+				CONFIG_DEBUG_IMX_UART_PORT);
+	void __iomem *iomuxbase = (void *)MX51_IOMUXC_BASE_ADDR;
+	void __iomem *ccmbase = (void *)MX51_CCM_BASE_ADDR;
+
+	/*
+	 * Restore CCM values that might be changed by the Mask ROM
+	 * code.
+	 *
+	 * Source: RealView debug scripts provided by Freescale
+	 */
+	writel(MX5_CCM_CBCDR_RESET_VALUE,  ccmbase + MX5_CCM_CBCDR);
+	writel(MX5_CCM_CSCMR1_RESET_VALUE, ccmbase + MX5_CCM_CSCMR1);
+	writel(MX5_CCM_CSCDR1_RESET_VALUE, ccmbase + MX5_CCM_CSCDR1);
+
+	/*
+	 * The code below should be more or less a "moral equivalent"
+	 * of:
+	 *	 MX51_PAD_UART1_TXD__UART1_TXD 0x1c5
+	 *
+	 * in device tree
+	 */
+	writel(0x00000000, iomuxbase + 0x022c);
+	writel(0x000001c5, iomuxbase + 0x061c);
+
+	writel(0x00000000, uartbase + UCR1);
+
+	writel(UCR2_IRTS | UCR2_WS | UCR2_TXEN | UCR2_RXEN | UCR2_SRST,
+	       uartbase + UCR2);
+	writel(UCR3_DSR | UCR3_DCD | UCR3_RI | UCR3_ADNIMP | UCR3_RXDMUXSEL,
+	       uartbase + UCR3);
+	writel((0b10 << UFCR_TXTL_SHF) | UFCR_RFDIV1 | (1 << UFCR_RXTL_SHF),
+	       uartbase + UFCR);
+
+	writel(baudrate_to_ubir(115200), uartbase + UBIR);
+	writel(refclock_to_ubmr(54000000), uartbase + UBMR);
+
+	writel(UCR1_UARTEN, uartbase + UCR1);
+
+	putc_ll('>');
+}
+#else
+static inline void setup_uart(void)
+{
+}
+#endif	/* CONFIG_DEBUG_LL */
+
 extern char __dtb_imx51_babbage_start[];

 ENTRY_FUNCTION(start_imx51_babbage, r0, r1, r2)
@@ -11,6 +65,10 @@ ENTRY_FUNCTION(start_imx51_babbage, r0, r1, r2)
 	void *fdt;

 	imx5_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
 	arm_setup_stack(0x20000000 - 16);

 	fdt = __dtb_imx51_babbage_start - get_runtime_offset();
diff --git a/arch/arm/mach-imx/include/mach/clock-imx51_53.h b/arch/arm/mach-imx/include/mach/clock-imx51_53.h
index 6004a6d..0f25dfb 100644
--- a/arch/arm/mach-imx/include/mach/clock-imx51_53.h
+++ b/arch/arm/mach-imx/include/mach/clock-imx51_53.h
@@ -149,6 +149,7 @@
 #define MX5_CCM_CACRR_ARM_PODF_MASK	(0x7)

 /* Define the bits in register CBCDR */
+#define MX5_CCM_CBCDR_RESET_VALUE		(0x19239145)
 #define MX5_CCM_CBCDR_EMI_CLK_SEL		(0x1 << 26)
 #define MX5_CCM_CBCDR_PERIPH_CLK_SEL		(0x1 << 25)
 #define MX5_CCM_CBCDR_DDR_HF_SEL_OFFSET		(30)
@@ -193,6 +194,7 @@
 #define MX5_CCM_CBCMR_PERCLK_IPG_CLK_SEL	(0x1 << 0)

 /* Define the bits in register CSCMR1 */
+#define MX5_CCM_CSCMR1_RESET_VALUE			(0xa6a2a020)
 #define MX5_CCM_CSCMR1_SSI_EXT2_CLK_SEL_OFFSET		(30)
 #define MX5_CCM_CSCMR1_SSI_EXT2_CLK_SEL_MASK		(0x3 << 30)
 #define MX5_CCM_CSCMR1_SSI_EXT1_CLK_SEL_OFFSET		(28)
@@ -259,6 +261,7 @@
 #define MX5_CCM_CSCMR2_SPDIF0_CLK_SEL_MASK		(0x3)

 /* Define the bits in register CSCDR1 */
+#define MX5_CCM_CSCDR1_RESET_VALUE			(0x00c30318)
 #define MX5_CCM_CSCDR1_ESDHC2_MSHC2_CLK_PRED_OFFSET	(22)
 #define MX5_CCM_CSCDR1_ESDHC2_MSHC2_CLK_PRED_MASK	(0x7 << 22)
 #define MX5_CCM_CSCDR1_ESDHC2_MSHC2_CLK_PODF_OFFSET	(19)
@@ -585,5 +588,3 @@
 #define MX5_SRPGC_EMI_PDNSCR	(MX5_SRPGC_EMI_BASE + 0x8)

 #endif				/* __ARCH_ARM_MACH_MX51_CRM_REGS_H__ */
-
-
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
