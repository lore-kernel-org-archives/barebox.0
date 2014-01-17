Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Axf-0003Im-Jm
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:04:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 16:03:15 +0100
Message-Id: <1389971012-22977-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/22] ARM: phyCARD-i.MX27: convert lowlevel init to c code
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phycard-i.MX27/Makefile        |   2 +-
 arch/arm/boards/phycard-i.MX27/lowlevel.c      | 107 ++++++++++++++++++++++
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S | 119 -------------------------
 3 files changed, 108 insertions(+), 120 deletions(-)
 create mode 100644 arch/arm/boards/phycard-i.MX27/lowlevel.c
 delete mode 100644 arch/arm/boards/phycard-i.MX27/lowlevel_init.S

diff --git a/arch/arm/boards/phycard-i.MX27/Makefile b/arch/arm/boards/phycard-i.MX27/Makefile
index bbff289..34492bb 100644
--- a/arch/arm/boards/phycard-i.MX27/Makefile
+++ b/arch/arm/boards/phycard-i.MX27/Makefile
@@ -1,3 +1,3 @@
 
-lwl-y += lowlevel_init.o
+lwl-y += lowlevel.o
 obj-y += pca100.o
diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel.c b/arch/arm/boards/phycard-i.MX27/lowlevel.c
new file mode 100644
index 0000000..9f5dfff
--- /dev/null
+++ b/arch/arm/boards/phycard-i.MX27/lowlevel.c
@@ -0,0 +1,107 @@
+/*
+ * For clock initialization, see chapter 3 of the "MCIMX27 Multimedia
+ * Applications Processor Reference Manual, Rev. 0.2".
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <config.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/imx27-regs.h>
+#include <mach/imx-pll.h>
+#include <mach/esdctl.h>
+#include <mach/imx-nand.h>
+
+#define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
+
+static void sdram_init(void)
+{
+	int i;
+
+	/*
+	 * DDR on CSD0
+	 */
+	/* Enable DDR SDRAM operation */
+	writel(0x00000008, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC);
+
+	/* Set the driving strength   */
+	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(3));
+	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(5));
+	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(6));
+	writel(0x00005005, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(7));
+	writel(0x15555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(8));
+
+	/* Initial reset */
+	writel(0x00000004, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC);
+	writel(0x006ac73a, MX27_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
+
+	/* precharge CSD0 all banks */
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_PRECHARGE,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
+	writel(0x00000000, 0xa0000f00);	/* CSD0 precharge address (A10 = 1) */
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_AUTO_REFRESH,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
+
+	for (i = 0; i < 8; i++)
+		writel(0, 0xa0000f00);
+
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_LOAD_MODE,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
+	writeb(0xda, 0xa0000033);
+	writeb(0xff, 0xa1000000);
+
+	writel(ESDCTL0_VAL | ESDCTL0_DSIZ_31_0 | ESDCTL0_REF4 |
+			ESDCTL0_BL | ESDCTL0_SMODE_NORMAL,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
+}
+
+void __bare_init __naked barebox_arm_reset_vector(void)
+{
+	unsigned long r;
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 12);
+
+	/* ahb lite ip interface */
+	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0);
+	writel(0xdffbfcfb, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR1);
+	writel(0x00000000, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR0);
+	writel(0xffffffff, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR1);
+
+	/* Skip SDRAM initialization if we run from RAM */
+        r = get_pc();
+        if (r > 0xa0000000 && r < 0xc0000000)
+                imx27_barebox_entry(0);
+
+	/* 399 MHz */
+	writel(IMX_PLL_PD(0) |
+		 IMX_PLL_MFD(51) |
+		 IMX_PLL_MFI(7) |
+		 IMX_PLL_MFN(35), MX27_CCM_BASE_ADDR + MX27_MPCTL0);
+
+	/* SPLL = 2 * 26 * 4.61538 MHz = 240 MHz */
+	writel(IMX_PLL_PD(1) |
+		 IMX_PLL_MFD(12) |
+		 IMX_PLL_MFI(9) |
+		 IMX_PLL_MFN(3), MX27_CCM_BASE_ADDR + MX27_SPCTL0);
+
+	writel(MX27_CSCR_MPLL_RESTART | MX27_CSCR_SPLL_RESTART |
+		MX27_CSCR_ARM_SRC_MPLL | MX27_CSCR_MCU_SEL |
+		MX27_CSCR_SP_SEL | MX27_CSCR_FPM_EN |
+		MX27_CSCR_MPEN | MX27_CSCR_SPEN | MX27_CSCR_ARM_DIV(0) |
+		MX27_CSCR_AHB_DIV(1) | MX27_CSCR_USB_DIV(3) |
+		MX27_CSCR_SD_CNT(3) | MX27_CSCR_SSI2_SEL |
+		MX27_CSCR_SSI1_SEL | MX27_CSCR_H264_SEL |
+		MX27_CSCR_MSHC_SEL, MX27_CCM_BASE_ADDR + MX27_CSCR);
+
+	sdram_init();
+
+#ifdef CONFIG_NAND_IMX_BOOT
+	imx27_barebox_boot_nand_external();
+#else
+	imx27_barebox_entry(0);
+#endif
+}
diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
deleted file mode 100644
index 992fa82..0000000
--- a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
+++ /dev/null
@@ -1,119 +0,0 @@
-/*
- * For clock initialization, see chapter 3 of the "MCIMX27 Multimedia
- * Applications Processor Reference Manual, Rev. 0.2".
- *
- */
-
-#include <config.h>
-#include <mach/imx27-regs.h>
-#include <mach/imx-pll.h>
-#include <mach/esdctl.h>
-#include <asm/barebox-arm-head.h>
-
-#define writel(val, reg) \
-	ldr		r0,	=reg;	\
-	ldr		r1,	=val;	\
-	str		r1,   [r0];
-
-
-#define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
-
-.macro sdram_init
-	/*
-	 * DDR on CSD0
-	 */
-	/* Enable DDR SDRAM operation */
-	writel(0x00000008, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC)
-
-	/* Set the driving strength   */
-	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(3))
-	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(5))
-	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(6))
-	writel(0x00005005, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(7))
-	writel(0x15555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(8))
-
-	/* Initial reset */
-	writel(0x00000004, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC)
-	writel(0x006ac73a, MX27_ESDCTL_BASE_ADDR + IMX_ESDCFG0)
-
-	/* precharge CSD0 all banks */
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_PRECHARGE,
-			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
-	writel(0x00000000, 0xA0000F00)	/* CSD0 precharge address (A10 = 1) */
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_AUTO_REFRESH,
-			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
-
-	ldr	r0, =0xa0000f00
-	mov	r1, #0
-	mov	r2, #8
-1:
-	str	r1, [r0]
-	subs	r2, #1
-	bne	1b
-
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_LOAD_MODE,
-			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
-	ldr		r0, =0xA0000033
-	mov		r1, #0xda
-	strb		r1, [r0]
-	ldr		r0, =0xA1000000
-	mov		r1, #0xff
-	strb		r1, [r0]
-	writel(ESDCTL0_VAL | ESDCTL0_DSIZ_31_0 | ESDCTL0_REF4 |
-			ESDCTL0_BL | ESDCTL0_SMODE_NORMAL,
-			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
-.endm
-
-	.section ".text_bare_init","ax"
-
-.globl barebox_arm_reset_vector
-barebox_arm_reset_vector:
-	bl		arm_cpu_lowlevel_init
-
-	/* ahb lite ip interface */
-	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0)
-	writel(0xDFFBFCFB, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR1)
-	writel(0x00000000, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR0)
-	writel(0xFFFFFFFF, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR1)
-
-	/* skip sdram initialization if we run from ram */
-	cmp	pc, #0xa0000000
-	bls	1f
-	cmp	pc, #0xc0000000
-	bhi	1f
-
-	b	imx27_barebox_entry
-
-1:
-	/* 399 MHz */
-	writel(IMX_PLL_PD(0) |
-		 IMX_PLL_MFD(51) |
-		 IMX_PLL_MFI(7) |
-		 IMX_PLL_MFN(35), MX27_CCM_BASE_ADDR + MX27_MPCTL0)
-
-	/* SPLL = 2 * 26 * 4.61538 MHz = 240 MHz */
-	writel(IMX_PLL_PD(1) |
-		 IMX_PLL_MFD(12) |
-		 IMX_PLL_MFI(9) |
-		 IMX_PLL_MFN(3), MX27_CCM_BASE_ADDR + MX27_SPCTL0)
-
-	writel(MX27_CSCR_MPLL_RESTART | MX27_CSCR_SPLL_RESTART |
-		MX27_CSCR_ARM_SRC_MPLL | MX27_CSCR_MCU_SEL |
-		MX27_CSCR_SP_SEL | MX27_CSCR_FPM_EN |
-		MX27_CSCR_MPEN | MX27_CSCR_SPEN | MX27_CSCR_ARM_DIV(0) |
-		MX27_CSCR_AHB_DIV(1) | MX27_CSCR_USB_DIV(3) |
-		MX27_CSCR_SD_CNT(3) | MX27_CSCR_SSI2_SEL |
-		MX27_CSCR_SSI1_SEL | MX27_CSCR_H264_SEL |
-		MX27_CSCR_MSHC_SEL, MX27_CCM_BASE_ADDR + MX27_CSCR)
-
-	sdram_init
-
-#ifdef CONFIG_NAND_IMX_BOOT
-	ldr	sp, =0xa0f00000		/* Setup a temporary stack in SDRAM */
-
-	b	imx27_barebox_boot_nand_external
-#endif /* CONFIG_NAND_IMX_BOOT */
-
-ret:
-	b	imx27_barebox_entry
-
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
