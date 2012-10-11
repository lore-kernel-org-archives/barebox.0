Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMCxm-0008Px-L9
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 07:13:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Oct 2012 09:13:31 +0200
Message-Id: <1349939621-17793-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/13] ARM i.MX31: Cleanup remaining unprefixed registers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm037/lowlevel_init.S      |   37 +++++---
 arch/arm/boards/pcm037/pcm037.c             |    2 +-
 arch/arm/mach-imx/external-nand-boot.c      |    2 +-
 arch/arm/mach-imx/include/mach/imx31-regs.h |  131 ++++++++++-----------------
 4 files changed, 71 insertions(+), 101 deletions(-)

diff --git a/arch/arm/boards/pcm037/lowlevel_init.S b/arch/arm/boards/pcm037/lowlevel_init.S
index 49e9b36..283ea54 100644
--- a/arch/arm/boards/pcm037/lowlevel_init.S
+++ b/arch/arm/boards/pcm037/lowlevel_init.S
@@ -20,6 +20,7 @@
 #include <mach/imx-regs.h>
 #include <mach/imx-pll.h>
 #include <asm/barebox-arm-head.h>
+#include <mach/esdctl.h>
 
 #define writel(val, reg) \
 	ldr		r0,	=reg;	\
@@ -46,24 +47,30 @@ reset:
 
 	common_reset r0
 
-	writel(0x074B0BF5, MX31_CCM_BASE_ADDR + CCM_CCMR)
+	writel(0x074B0BF5, MX31_CCM_BASE_ADDR + MX31_CCM_CCMR)
 
 	DELAY 0x40000
 
-	writel(0x074B0BF5 | CCMR_MPE, MX31_CCM_BASE_ADDR + CCM_CCMR)
-	writel((0x074B0BF5 | CCMR_MPE) & ~CCMR_MDS, MX31_CCM_BASE_ADDR + CCM_CCMR)
-
-	writel(PDR0_CSI_PODF(0xff1) | \
-		PDR0_PER_PODF(7) | \
-		PDR0_HSP_PODF(3) | \
-		PDR0_NFC_PODF(5) | \
-		PDR0_IPG_PODF(1) | \
-		PDR0_MAX_PODF(3) | \
-		PDR0_MCU_PODF(0), \
-		MX31_CCM_BASE_ADDR + CCM_PDR0)
-
-	writel(IMX_PLL_PD(0) | IMX_PLL_MFD(0xe) | IMX_PLL_MFI(9) | IMX_PLL_MFN(0xd), MX31_CCM_BASE_ADDR + CCM_MPCTL)
-	writel(IMX_PLL_PD(1) | IMX_PLL_MFD(0x43) | IMX_PLL_MFI(12) | IMX_PLL_MFN(1), MX31_CCM_BASE_ADDR + CCM_SPCTL)
+	writel(0x074B0BF5 | MX31_CCMR_MPE, MX31_CCM_BASE_ADDR +
+			MX31_CCM_CCMR)
+	writel((0x074B0BF5 | MX31_CCMR_MPE) & ~MX31_CCMR_MDS,
+			MX31_CCM_BASE_ADDR + MX31_CCM_CCMR)
+
+	writel(MX31_PDR0_CSI_PODF(0xff1) | \
+		MX31_PDR0_PER_PODF(7) | \
+		MX31_PDR0_HSP_PODF(3) | \
+		MX31_PDR0_NFC_PODF(5) | \
+		MX31_PDR0_IPG_PODF(1) | \
+		MX31_PDR0_MAX_PODF(3) | \
+		MX31_PDR0_MCU_PODF(0), \
+		MX31_CCM_BASE_ADDR + MX31_CCM_PDR0)
+
+	writel(IMX_PLL_PD(0) | IMX_PLL_MFD(0xe) |
+			IMX_PLL_MFI(9) | IMX_PLL_MFN(0xd),
+			MX31_CCM_BASE_ADDR + MX31_CCM_MPCTL)
+	writel(IMX_PLL_PD(1) | IMX_PLL_MFD(0x43) | IMX_PLL_MFI(12) |
+			IMX_PLL_MFN(1), MX31_CCM_BASE_ADDR +
+			MX31_CCM_SPCTL)
 
 	/* Configure IOMUXC
 	 * Clears 0x43fa_c26c - 0x43fa_c2dc with 0, except 0x43fa_c278 (untouched), 0x43fa_c27c (set to 0x1000) and 0x43fa_c280 (untouched)
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 1a1688d..79ea1dc 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -96,7 +96,7 @@ static void pcm037_usb_init(void)
 	/* Host 2 */
 	tmp = readl(MX31_USB_OTG_BASE_ADDR + 0x8);
 	tmp |= 1 << 11;
-	writel(tmp, IOMUXC_BASE + 0x8);
+	writel(tmp, MX31_IOMUXC_BASE_ADDR + 0x8);
 
 	imx_iomux_mode(IOMUX_MODE(MX31_PIN_USBH2_CLK, IOMUX_CONFIG_FUNC));
 	imx_iomux_mode(IOMUX_MODE(MX31_PIN_USBH2_DIR, IOMUX_CONFIG_FUNC));
diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index a590992..6927eac 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -128,7 +128,7 @@ static int __maybe_unused is_pagesize_2k(void)
 		return 0;
 #endif
 #ifdef CONFIG_ARCH_IMX31
-	if (readl(IMX_CCM_BASE + CCM_RCSR) & RCSR_NFMS)
+	if (readl(MX31_CCM_BASE_ADDR + MX31_CCM_RCSR) & MX31_RCSR_NFMS)
 		return 1;
 	else
 		return 0;
diff --git a/arch/arm/mach-imx/include/mach/imx31-regs.h b/arch/arm/mach-imx/include/mach/imx31-regs.h
index 57f65da..c11187e 100644
--- a/arch/arm/mach-imx/include/mach/imx31-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx31-regs.h
@@ -140,95 +140,58 @@
 /*
  * Clock Controller Module (CCM)
  */
-#define CCM_CCMR	0x00
-#define CCM_PDR0	0x04
-#define CCM_PDR1	0x08
-#define CCM_RCSR	0x0c
-#define CCM_MPCTL	0x10
-#define CCM_UPCTL	0x14
-#define CCM_SPCTL	0x18
-#define CCM_COSR	0x1C
-
-/*
- * ?????????????
- */
-#define CCMR_MDS	(1 << 7)
-#define CCMR_SBYCS	(1 << 4)
-#define CCMR_MPE	(1 << 3)
-#define CCMR_PRCS_MASK	(3 << 1)
-#define CCMR_FPM	(1 << 1)
-#define CCMR_CKIH	(2 << 1)
-
-#define RCSR_NFMS	(1 << 30)
-
-/*
- * ?????????????
- */
-#define PDR0_CSI_PODF(x)	(((x) & 0x1ff) << 23)
-#define PDR0_PER_PODF(x)	(((x) & 0x1f) << 16)
-#define PDR0_HSP_PODF(x)	(((x) & 0x7) << 11)
-#define PDR0_NFC_PODF(x)	(((x) & 0x7) << 8)
-#define PDR0_IPG_PODF(x)	(((x) & 0x3) << 6)
-#define PDR0_MAX_PODF(x)	(((x) & 0x7) << 3)
-#define PDR0_MCU_PODF(x)	((x) & 0x7)
-
-#include "esdctl.h"
-
-/*
- * ???????????
- */
-#define IOMUXC_GPR	(IOMUXC_BASE + 0x8)
-#define IOMUXC_SW_MUX_CTL(x)	(IOMUXC_BASE + 0xc + (x) * 4)
-#define IOMUXC_SW_PAD_CTL(x)	(IOMUXC_BASE + 0x154 + (x) * 4)
+#define MX31_CCM_CCMR	0x00
+#define MX31_CCM_PDR0	0x04
+#define MX31_CCM_PDR1	0x08
+#define MX31_CCM_RCSR	0x0c
+#define MX31_CCM_MPCTL	0x10
+#define MX31_CCM_UPCTL	0x14
+#define MX31_CCM_SPCTL	0x18
+#define MX31_CCM_COSR	0x1C
+
+#define MX31_CCMR_MDS	(1 << 7)
+#define MX31_CCMR_SBYCS	(1 << 4)
+#define MX31_CCMR_MPE	(1 << 3)
+#define MX31_CCMR_PRCS_MASK	(3 << 1)
+#define MX31_CCMR_FPM	(1 << 1)
+#define MX31_CCMR_CKIH	(2 << 1)
+
+#define MX31_RCSR_NFMS	(1 << 30)
+
+#define MX31_PDR0_CSI_PODF(x)	(((x) & 0x1ff) << 23)
+#define MX31_PDR0_PER_PODF(x)	(((x) & 0x1f) << 16)
+#define MX31_PDR0_HSP_PODF(x)	(((x) & 0x7) << 11)
+#define MX31_PDR0_NFC_PODF(x)	(((x) & 0x7) << 8)
+#define MX31_PDR0_IPG_PODF(x)	(((x) & 0x3) << 6)
+#define MX31_PDR0_MAX_PODF(x)	(((x) & 0x7) << 3)
+#define MX31_PDR0_MCU_PODF(x)	((x) & 0x7)
+
+#define MX31_IOMUXC_GPR	(IOMUXC_BASE + 0x8)
+#define MX31_IOMUXC_SW_MUX_CTL(x)	(IOMUXC_BASE + 0xc + (x) * 4)
+#define MX31_IOMUXC_SW_PAD_CTL(x)	(IOMUXC_BASE + 0x154 + (x) * 4)
 
 /*
  * Signal Multiplexing (IOMUX)
  */
 
 /* bits in the SW_MUX_CTL registers */
-#define MUX_CTL_OUT_GPIO_DR	(0 << 4)
-#define MUX_CTL_OUT_FUNC	(1 << 4)
-#define MUX_CTL_OUT_ALT1	(2 << 4)
-#define MUX_CTL_OUT_ALT2	(3 << 4)
-#define MUX_CTL_OUT_ALT3	(4 << 4)
-#define MUX_CTL_OUT_ALT4	(5 << 4)
-#define MUX_CTL_OUT_ALT5	(6 << 4)
-#define MUX_CTL_OUT_ALT6	(7 << 4)
-#define MUX_CTL_IN_NONE		(0 << 0)
-#define MUX_CTL_IN_GPIO		(1 << 0)
-#define MUX_CTL_IN_FUNC		(2 << 0)
-#define MUX_CTL_IN_ALT1		(4 << 0)
-#define MUX_CTL_IN_ALT2		(8 << 0)
-
-#define MUX_CTL_FUNC		(MUX_CTL_OUT_FUNC | MUX_CTL_IN_FUNC)
-#define MUX_CTL_ALT1		(MUX_CTL_OUT_ALT1 | MUX_CTL_IN_ALT1)
-#define MUX_CTL_ALT2		(MUX_CTL_OUT_ALT2 | MUX_CTL_IN_ALT2)
-#define MUX_CTL_GPIO		(MUX_CTL_OUT_GPIO_DR | MUX_CTL_IN_GPIO)
-
-/* Register offsets based on IOMUXC_BASE */
-/* 0x00 .. 0x7b */
-#define MUX_CTL_RTS1		0x7c
-#define MUX_CTL_CTS1		0x7d
-#define MUX_CTL_DTR_DCE1	0x7e
-#define MUX_CTL_DSR_DCE1	0x7f
-#define MUX_CTL_CSPI2_SCLK	0x80
-#define MUX_CTL_CSPI2_SPI_RDY	0x81
-#define MUX_CTL_RXD1		0x82
-#define MUX_CTL_TXD1		0x83
-#define MUX_CTL_CSPI2_MISO	0x84
-/* 0x85 .. 0x8a */
-#define MUX_CTL_CSPI2_MOSI	0x8b
-
-/* The modes a specific pin can be in
- * these macros can be used in mx31_gpio_mux() and have the form
- * MUX_[contact name]__[pin function]
- */
-#define MUX_RXD1_UART1_RXD_MUX	((MUX_CTL_FUNC << 8) | MUX_CTL_RXD1)
-#define MUX_TXD1_UART1_TXD_MUX	((MUX_CTL_FUNC << 8) | MUX_CTL_TXD1)
-#define MUX_RTS1_UART1_RTS_B	((MUX_CTL_FUNC << 8) | MUX_CTL_RTS1)
-#define MUX_RTS1_UART1_CTS_B	((MUX_CTL_FUNC << 8) | MUX_CTL_CTS1)
-
-#define MUX_CSPI2_MOSI_I2C2_SCL ((MUX_CTL_ALT1 << 8) | MUX_CTL_CSPI2_MOSI)
-#define MUX_CSPI2_MISO_I2C2_SCL ((MUX_CTL_ALT1 << 8) | MUX_CTL_CSPI2_MISO)
+#define MX31_MUX_CTL_OUT_GPIO_DR	(0 << 4)
+#define MX31_MUX_CTL_OUT_FUNC		(1 << 4)
+#define MX31_MUX_CTL_OUT_ALT1		(2 << 4)
+#define MX31_MUX_CTL_OUT_ALT2		(3 << 4)
+#define MX31_MUX_CTL_OUT_ALT3		(4 << 4)
+#define MX31_MUX_CTL_OUT_ALT4		(5 << 4)
+#define MX31_MUX_CTL_OUT_ALT5		(6 << 4)
+#define MX31_MUX_CTL_OUT_ALT6		(7 << 4)
+#define MX31_MUX_CTL_IN_NONE		(0 << 0)
+#define MX31_MUX_CTL_IN_GPIO		(1 << 0)
+#define MX31_MUX_CTL_IN_FUNC		(2 << 0)
+#define MX31_MUX_CTL_IN_ALT1		(4 << 0)
+#define MX31_MUX_CTL_IN_ALT2		(8 << 0)
+
+#define MX31_MUX_CTL_FUNC	(MX31_MUX_CTL_OUT_FUNC | MX31_MUX_CTL_IN_FUNC)
+#define MX31_MUX_CTL_ALT1	(MX31_MUX_CTL_OUT_ALT1 | MX31_MUX_CTL_IN_ALT1)
+#define MX31_MUX_CTL_ALT2	(MX31_MUX_CTL_OUT_ALT2 | MX31_MUX_CTL_IN_ALT2)
+#define MX31_MUX_CTL_GPIO	(MX31_MUX_CTL_OUT_GPIO_DR | MX31_MUX_CTL_IN_GPIO)
 
 #endif /* __ASM_ARCH_MX31_REGS_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
