Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x232.google.com ([2607:f8b0:400e:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yq542-0007q7-Fq
 for barebox@lists.infradead.org; Wed, 06 May 2015 19:33:04 +0000
Received: by pabtp1 with SMTP id tp1so17984469pab.2
 for <barebox@lists.infradead.org>; Wed, 06 May 2015 12:32:40 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 May 2015 12:32:02 -0700
Message-Id: <1430940733-4415-8-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1430940733-4415-1-git-send-email-andrew.smirnov@gmail.com>
References: <1430940733-4415-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 07/18] i.MX51: babbage: Implement CONFIG_DEBUG_LL
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Implement bits of configuraion needed to configure early debug output
support.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/freescale-mx51-babbage/lowlevel.c | 42 +++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/clock-imx51_53.h   |  5 +--
 2 files changed, 45 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
index 0f453f3..ffb0548 100644
--- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
+++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
@@ -1,9 +1,47 @@
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
+	void __iomem *iomuxbase = IOMEM(MX51_IOMUXC_BASE_ADDR);
+	void __iomem *ccmbase = IOMEM(MX51_CCM_BASE_ADDR);
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
+	imx51_uart_setup_ll();
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
@@ -11,6 +49,10 @@ ENTRY_FUNCTION(start_imx51_babbage, r0, r1, r2)
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
