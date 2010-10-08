Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P48aK-0006EG-J7
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 08:45:49 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri,  8 Oct 2010 10:45:40 +0200
Message-Id: <1286527540-9857-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1286527540-9857-1-git-send-email-jbe@pengutronix.de>
References: <1286527540-9857-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH] Switch the i.MX27's PLL in a safe manner
To: barebox@lists.infradead.org

Changing PLL settings is somehow tricky on the i.MX27: Whenever the clock
speed of the main PLL is changed, the clock stops for about 100 us until the
PLL locks into the new frequency. While this clock stop, also the SDRAM
controller cannot refresh the memory, because it uses the same clock source.
This can lead into data loss and random system crashes.

This patch divides the PLL setting in two steps. First step is to re-program
the PLL and clock settings to values possible at a core supply of 1.25 V.
Second step is to increase the core power supply to 1.45 V and switch the
CPU clock to the specified 400 MHz.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/pcm038/Makefile   |    2 +-
 arch/arm/boards/pcm038/lowlevel.c |    7 ++++
 arch/arm/boards/pcm038/pcm038.c   |   65 ++++++++++++++++++++----------------
 arch/arm/boards/pcm038/pll_init.S |   48 ---------------------------
 4 files changed, 44 insertions(+), 78 deletions(-)
 delete mode 100644 arch/arm/boards/pcm038/pll_init.S

diff --git a/arch/arm/boards/pcm038/Makefile b/arch/arm/boards/pcm038/Makefile
index a681dda..970804e 100644
--- a/arch/arm/boards/pcm038/Makefile
+++ b/arch/arm/boards/pcm038/Makefile
@@ -1,3 +1,3 @@
 
-obj-y += lowlevel.o pll_init.o
+obj-y += lowlevel.o
 obj-y += pcm038.o
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index eb85e8f..b50e1c8 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -31,6 +31,8 @@
 #include <asm/system.h>
 #include <asm-generic/memory_layout.h>
 
+#include "pll.h"
+
 #ifdef CONFIG_NAND_IMX_BOOT
 static void __bare_init __naked insdram(void)
 {
@@ -68,6 +70,11 @@ void __bare_init __naked board_init_lowlevel(void)
 	if (r > 0xa0000000 && r < 0xb0000000)
 		board_init_lowlevel_return();
 
+	/* re-program the PLL prior(!) starting the SDRAM controller */
+	MPCTL0 = MPCTL0_VAL;
+	SPCTL0 = SPCTL0_VAL;
+	CSCR = CSCR_VAL | CSCR_UPDATE_DIS | CSCR_MPLL_RESTART | CSCR_SPLL_RESTART;
+
 	/*
 	 * DDR on CSD0
 	 */
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index fda3262..3a9b413 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -44,6 +44,8 @@
 #include <mach/spi.h>
 #include <mach/iomux-mx27.h>
 
+#include "pll.h"
+
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
@@ -379,11 +381,6 @@ static struct device_d pcm038_serial_device = {
 
 static int pcm038_console_init(void)
 {
-	/* bring PLLs to reset default */
-	MPCTL0 = 0x00211803;
-	SPCTL0 = 0x1002700c;
-	CSCR = 0x33fc1307;
-
 	register_device(&pcm038_serial_device);
 
 	return 0;
@@ -391,40 +388,50 @@ static int pcm038_console_init(void)
 
 console_initcall(pcm038_console_init);
 
-extern void *pcm038_pll_init, *pcm038_pll_init_end;
-
-static int pcm038_power_init(void)
+/**
+ * The spctl0 register is a beast: Seems you can read it
+ * only one times without writing it again.
+ */
+static inline uint32_t get_pll_spctl10(void)
 {
-	int ret;
-	void *vram = (void*)0xffff4c00;
-	void (*pllfunc)(void) = vram;
+	uint32_t reg;
 
-	printf("initialising PLLs: 0x%p 0x%p\n", &pcm038_pll_init);
+	reg = SPCTL0;
+	SPCTL0 = reg;
 
-	memcpy(vram, &pcm038_pll_init, 0x100);
+	return reg;
+}
 
-	console_flush();
+/**
+ * If the PLL settings are in place switch the CPU core frequency to the max. value
+ */
+static int pcm038_power_init(void)
+{
+	uint32_t spctl0;
+	int ret;
 
-	ret = pmic_power();
-	if (ret) {
-		printf("Failed to initialize PMIC. Will continue with low CPU speed\n");
-		return 0;
+	spctl0 = get_pll_spctl10();
+
+	/* PLL registers already set to their final values? */
+	if (spctl0 == SPCTL0_VAL && MPCTL0 == MPCTL0_VAL) {
+		console_flush();
+		ret = pmic_power();
+		if (ret == 0) {
+			/* wait for required power level to run the CPU at 400 MHz */
+			udelay(100000);
+			CSCR = CSCR_VAL_FINAL;
+			PCDR0 = 0x130410c3;
+			PCDR1 = 0x09030911;
+			/* Clocks have changed. Notify clients */
+			clock_notifier_call_chain();
+		} else {
+			printf("Failed to initialize PMIC. Will continue with low CPU speed\n");
+		}
 	}
 
-	/* wait for good power level */
-	udelay(100000);
-
-	pllfunc();
-
 	/* clock gating enable */
 	GPCR = 0x00050f08;
 
-	PCDR0 = 0x130410c3;
-	PCDR1 = 0x09030911;
-
-	/* Clocks have changed. Notify clients */
-	clock_notifier_call_chain();
-
 	return 0;
 }
 
diff --git a/arch/arm/boards/pcm038/pll_init.S b/arch/arm/boards/pcm038/pll_init.S
deleted file mode 100644
index 0c1ff13..0000000
--- a/arch/arm/boards/pcm038/pll_init.S
+++ /dev/null
@@ -1,48 +0,0 @@
-#include <config.h>
-#include <mach/imx-regs.h>
-#include <mach/imx-pll.h>
-#include <linux/linkage.h>
-
-#define writel(val, reg) \
-	ldr		r0,	=reg;	\
-	ldr		r1,	=val;	\
-	str		r1,   [r0];
-
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
-
-ENTRY(pcm038_pll_init)
-
-	writel(IMX_PLL_PD(0) |
-		 IMX_PLL_MFD(51) |
-		 IMX_PLL_MFI(7) |
-		 IMX_PLL_MFN(35), MPCTL0) /* 399 MHz */
-
-	writel(IMX_PLL_PD(1) |
-		 IMX_PLL_MFD(12) |
-		 IMX_PLL_MFI(9) |
-		 IMX_PLL_MFN(3), SPCTL0) /* SPLL = 2 * 26 * 4.61538 MHz = 240 MHz */
-
-	writel(CSCR_VAL | CSCR_MPLL_RESTART | CSCR_SPLL_RESTART, CSCR)
-
-	ldr r2, =16000
-1:
-	subs    r2, r2, #1
-	nop
-	bcs 1b
-
-	mov     pc, lr
-ENDPROC(pcm038_pll_init)
-
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
