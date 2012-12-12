Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tisct-00051g-FT
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 20:10:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Dec 2012 21:09:46 +0100
Message-Id: <1355342991-549-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355342991-549-1-git-send-email-s.hauer@pengutronix.de>
References: <1355342991-549-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] ARM i.MX31 pcm037: rewrite lowlevel init code in C
To: barebox@lists.infradead.org

Tested with NOR and NAND boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm037/Makefile        |    4 +-
 arch/arm/boards/pcm037/lowlevel.c      |  162 ++++++++++++++++++++++++++++++
 arch/arm/boards/pcm037/lowlevel_init.S |  170 --------------------------------
 3 files changed, 164 insertions(+), 172 deletions(-)
 create mode 100644 arch/arm/boards/pcm037/lowlevel.c
 delete mode 100644 arch/arm/boards/pcm037/lowlevel_init.S

diff --git a/arch/arm/boards/pcm037/Makefile b/arch/arm/boards/pcm037/Makefile
index fcfa40d..859501c 100644
--- a/arch/arm/boards/pcm037/Makefile
+++ b/arch/arm/boards/pcm037/Makefile
@@ -16,6 +16,6 @@
 #
 #
 
-obj-y += lowlevel_init.o
-pbl-y += lowlevel_init.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
 obj-y += pcm037.o
diff --git a/arch/arm/boards/pcm037/lowlevel.c b/arch/arm/boards/pcm037/lowlevel.c
new file mode 100644
index 0000000..fda3106
--- /dev/null
+++ b/arch/arm/boards/pcm037/lowlevel.c
@@ -0,0 +1,162 @@
+/*
+ *
+ * (c) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <mach/imx-nand.h>
+#include <asm/barebox-arm.h>
+#include <asm/system.h>
+#include <asm-generic/memory_layout.h>
+#include <asm-generic/sections.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/imx31-regs.h>
+#include <mach/imx-pll.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/esdctl.h>
+
+#ifdef CONFIG_NAND_IMX_BOOT
+static void __bare_init __naked insdram(void)
+{
+	/* setup a stack to be able to call imx_nand_load_image() */
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
+
+	imx_nand_load_image(_text, barebox_image_size);
+
+	board_init_lowlevel_return();
+}
+#endif
+
+#define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
+
+void __bare_init __naked reset(void)
+{
+	uint32_t r;
+	int i;
+	volatile int v;
+#ifdef CONFIG_NAND_IMX_BOOT
+	unsigned int *trg, *src;
+#endif
+	common_reset();
+
+	writel(1 << 6, MX31_IPU_CTRL_BASE_ADDR);
+
+	writel(0x074B0BF5, MX31_CCM_BASE_ADDR + MX31_CCM_CCMR);
+
+	for (v = 0; v < 0x4000; v++);
+
+	writel(0x074B0BF5 | MX31_CCMR_MPE, MX31_CCM_BASE_ADDR +
+			MX31_CCM_CCMR);
+	writel((0x074B0BF5 | MX31_CCMR_MPE) & ~MX31_CCMR_MDS,
+			MX31_CCM_BASE_ADDR + MX31_CCM_CCMR);
+
+	writel(MX31_PDR0_CSI_PODF(0xff1) | \
+		MX31_PDR0_PER_PODF(7) | \
+		MX31_PDR0_HSP_PODF(3) | \
+		MX31_PDR0_NFC_PODF(5) | \
+		MX31_PDR0_IPG_PODF(1) | \
+		MX31_PDR0_MAX_PODF(3) | \
+		MX31_PDR0_MCU_PODF(0), \
+		MX31_CCM_BASE_ADDR + MX31_CCM_PDR0);
+
+	writel(IMX_PLL_PD(0) | IMX_PLL_MFD(0xe) |
+			IMX_PLL_MFI(9) | IMX_PLL_MFN(0xd),
+			MX31_CCM_BASE_ADDR + MX31_CCM_MPCTL);
+	writel(IMX_PLL_PD(1) | IMX_PLL_MFD(0x43) | IMX_PLL_MFI(12) |
+			IMX_PLL_MFN(1), MX31_CCM_BASE_ADDR +
+			MX31_CCM_SPCTL);
+
+	/*
+	 * Configure IOMUXC
+	 * Clears 0x43fa_c26c - 0x43fa_c2dc with 0, except 0x43fa_c278 (untouched),
+	 * 0x43fa_c27c (set to 0x1000) and 0x43fa_c280 (untouched)
+	 * (behaviour copied by sha, source unknown)
+	 */
+	writel(0, 0x43fac26c);
+	writel(0, 0x43fac270);
+	writel(0, 0x43fac274);
+
+	writel(0x1000, 0x43fac27c);
+
+	for (r = 0x43fac284; r <= 0x43fac2dc; r += 4)
+		writel(0, r);
+
+	/* Skip SDRAM initialization if we run from RAM */
+	r = get_pc();
+	if (r > 0x80000000 && r < 0xa0000000)
+		board_init_lowlevel_return();
+
+#if defined CONFIG_PCM037_SDRAM_BANK0_128MB
+#define ROWS0	ESDCTL0_ROW13
+#elif defined CONFIG_PCM037_SDRAM_BANK0_256MB
+#define ROWS0	ESDCTL0_ROW14
+#endif
+	writel(0x00000004, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC);
+	writel(0x006ac73a, MX31_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
+	writel(0x90100000 | ROWS0, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
+	writel(0x12344321, MX31_CSD0_BASE_ADDR + 0xf00);
+	writel(0xa0100000 | ROWS0, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
+	writel(0x12344321, MX31_CSD0_BASE_ADDR);
+	writel(0x12344321, MX31_CSD0_BASE_ADDR);
+	writel(0xb0100000 | ROWS0, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
+	writeb(0xda, MX31_CSD0_BASE_ADDR + 0x33);
+	writeb(0xff, MX31_CSD0_BASE_ADDR + 0x01000000);
+	writel(0x80226080 | ROWS0, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
+	writel(0xDEADBEEF, MX31_CSD0_BASE_ADDR);
+	writel(0x0000000c, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC);
+
+#ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
+#if defined CONFIG_PCM037_SDRAM_BANK1_128MB
+#define ROWS1	ESDCTL0_ROW13
+#elif defined CONFIG_PCM037_SDRAM_BANK1_256MB
+#define ROWS1	ESDCTL0_ROW14
+#endif
+	writel(0x006ac73a, MX31_ESDCTL_BASE_ADDR + IMX_ESDCFG1);
+	writel(0x90100000 | ROWS1, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL1);
+	writel(0x12344321, MX31_CSD1_BASE_ADDR + 0xf00);
+	writel(0xa0100000 | ROWS1, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL1);
+	writel(0x12344321, MX31_CSD1_BASE_ADDR);
+	writel(0x12344321, MX31_CSD1_BASE_ADDR);
+	writel(0xb0100000 | ROWS1, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL1);
+	writeb(0xda, MX31_CSD1_BASE_ADDR + 0x33);
+	writeb(0xff, MX31_CSD1_BASE_ADDR + 0x01000000);
+	writel(0x80226080 | ROWS1, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL1);
+	writel(0xDEADBEEF, MX31_CSD1_BASE_ADDR);
+	writel(0x0000000c, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC);
+#endif
+
+#ifdef CONFIG_NAND_IMX_BOOT
+	/* skip NAND boot if not running from NFC space */
+	r = get_pc();
+	if (r < MX31_NFC_BASE_ADDR || r > MX31_NFC_BASE_ADDR + 0x800)
+		board_init_lowlevel_return();
+
+	src = (unsigned int *)MX31_NFC_BASE_ADDR;
+	trg = (unsigned int *)_text;
+
+	/* Move ourselves out of NFC SRAM */
+	for (i = 0; i < 0x800 / sizeof(int); i++)
+		*trg++ = *src++;
+
+	/* Jump to SDRAM */
+	r = (unsigned int)&insdram;
+	__asm__ __volatile__("mov pc, %0" : : "r"(r));
+#else
+	board_init_lowlevel_return();
+#endif
+}
diff --git a/arch/arm/boards/pcm037/lowlevel_init.S b/arch/arm/boards/pcm037/lowlevel_init.S
deleted file mode 100644
index 9560841..0000000
--- a/arch/arm/boards/pcm037/lowlevel_init.S
+++ /dev/null
@@ -1,170 +0,0 @@
-/*
- *
- * (c) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <mach/imx31-regs.h>
-#include <mach/imx-pll.h>
-#include <asm/barebox-arm-head.h>
-#include <mach/esdctl.h>
-
-#define writel(val, reg) \
-	ldr		r0,	=reg;	\
-	ldr		r1,	=val;	\
-	str		r1,   [r0];
-
-#define writeb(val, reg) \
-	ldr		r0,	=reg;	\
-	ldr		r1,	=val;	\
-	strb		r1,   [r0];
-
-.macro DELAY loops
-	ldr r2, =\loops
-1:
-	subs	r2, r2, #1
-	nop
-	bcs 1b
-.endm
-
-	.section ".text_bare_init","ax"
-
-.globl reset
-reset:
-
-	common_reset r0
-
-	writel(1 << 6, MX31_IPU_CTRL_BASE_ADDR)
-
-	writel(0x074B0BF5, MX31_CCM_BASE_ADDR + MX31_CCM_CCMR)
-
-	DELAY 0x40000
-
-	writel(0x074B0BF5 | MX31_CCMR_MPE, MX31_CCM_BASE_ADDR +
-			MX31_CCM_CCMR)
-	writel((0x074B0BF5 | MX31_CCMR_MPE) & ~MX31_CCMR_MDS,
-			MX31_CCM_BASE_ADDR + MX31_CCM_CCMR)
-
-	writel(MX31_PDR0_CSI_PODF(0xff1) | \
-		MX31_PDR0_PER_PODF(7) | \
-		MX31_PDR0_HSP_PODF(3) | \
-		MX31_PDR0_NFC_PODF(5) | \
-		MX31_PDR0_IPG_PODF(1) | \
-		MX31_PDR0_MAX_PODF(3) | \
-		MX31_PDR0_MCU_PODF(0), \
-		MX31_CCM_BASE_ADDR + MX31_CCM_PDR0)
-
-	writel(IMX_PLL_PD(0) | IMX_PLL_MFD(0xe) |
-			IMX_PLL_MFI(9) | IMX_PLL_MFN(0xd),
-			MX31_CCM_BASE_ADDR + MX31_CCM_MPCTL)
-	writel(IMX_PLL_PD(1) | IMX_PLL_MFD(0x43) | IMX_PLL_MFI(12) |
-			IMX_PLL_MFN(1), MX31_CCM_BASE_ADDR +
-			MX31_CCM_SPCTL)
-
-	/* Configure IOMUXC
-	 * Clears 0x43fa_c26c - 0x43fa_c2dc with 0, except 0x43fa_c278 (untouched), 0x43fa_c27c (set to 0x1000) and 0x43fa_c280 (untouched)
-	 * (behaviour copied by sha, source unknown)
-	 */
-	mov		r1, #0;
-	ldr		r0, =0x43FAC26C
-	str		r1, [r0], #4
-	str		r1, [r0], #4
-	str		r1, [r0], #0x10
-
-	ldr		r2, 	=0x43FAC2DC
-clear_iomux:
-	str		r1, [r0], #4
-	cmp		r0, r2
-	bls		clear_iomux
-	writel(0x1000, 0x43FAC27C )/* CS2 	CSD0) */
-
-	/* Skip SDRAM initialization if we run from RAM */
-	cmp	pc, #0x80000000
-	blo	1f
-	cmp	pc, #0x90000000
-	bhs	1f
-
-	b	board_init_lowlevel_return
-1:
-
-#if defined CONFIG_PCM037_SDRAM_BANK0_128MB
-#define ROWS0	ESDCTL0_ROW13
-#elif defined CONFIG_PCM037_SDRAM_BANK0_256MB
-#define ROWS0	ESDCTL0_ROW14
-#endif
-	writel(0x00000004, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC)
-	writel(0x006ac73a, MX31_ESDCTL_BASE_ADDR + IMX_ESDCFG0)
-	writel(0x90100000 | ROWS0, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
-	writel(0x12344321, MX31_CSD0_BASE_ADDR + 0xf00)
-	writel(0xa0100000 | ROWS0, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
-	writel(0x12344321, MX31_CSD0_BASE_ADDR)
-	writel(0x12344321, MX31_CSD0_BASE_ADDR)
-	writel(0xb0100000 | ROWS0, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
-	writeb(0xda, MX31_CSD0_BASE_ADDR + 0x33)
-	writeb(0xff, MX31_CSD0_BASE_ADDR + 0x01000000)
-	writel(0x80226080 | ROWS0, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
-	writel(0xDEADBEEF, MX31_CSD0_BASE_ADDR)
-	writel(0x0000000c, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC)
-
-#ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
-#if defined CONFIG_PCM037_SDRAM_BANK1_128MB
-#define ROWS1	ESDCTL0_ROW13
-#elif defined CONFIG_PCM037_SDRAM_BANK1_256MB
-#define ROWS1	ESDCTL0_ROW14
-#endif
-	writel(0x006ac73a, MX31_ESDCTL_BASE_ADDR + IMX_ESDCFG1)
-	writel(0x90100000 | ROWS1, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL1)
-	writel(0x12344321, MX31_CSD1_BASE_ADDR + 0xf00)
-	writel(0xa0100000 | ROWS1, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL1)
-	writel(0x12344321, MX31_CSD1_BASE_ADDR)
-	writel(0x12344321, MX31_CSD1_BASE_ADDR)
-	writel(0xb0100000 | ROWS1, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL1)
-	writeb(0xda, MX31_CSD1_BASE_ADDR + 0x33)
-	writeb(0xff, MX31_CSD1_BASE_ADDR + 0x01000000)
-	writel(0x80226080 | ROWS1, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL1)
-	writel(0xDEADBEEF, MX31_CSD1_BASE_ADDR)
-	writel(0x0000000c, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC)
-#endif
-
-#ifdef CONFIG_NAND_IMX_BOOT
-	ldr	sp, =0x80f00000		/* Setup a temporary stack in SDRAM */
-
-	ldr	r0, =MX31_NFC_BASE_ADDR		/* start of NFC SRAM                */
-	ldr	r2, =MX31_NFC_BASE_ADDR + 0x1000	/* end of NFC SRAM                  */
-
-	/* skip NAND boot if not running from NFC space */
-	cmp	pc, r0
-	blo	ret
-	cmp	pc, r2
-	bhs	ret
-
-	/* Move ourselves out of NFC SRAM */
-	ldr	r1, =_text
-
-copy_loop:
-	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
-	stmia	r1!, {r3-r9}		/* copy to   target address [r1]    */
-	cmp	r0, r2			/* until source end address [r2]    */
-	ble	copy_loop
-
-	ldr	pc, =1f			/* Jump to SDRAM                    */
-1:
-	b	nand_boot		/* Load barebox from NAND Flash      */
-ret:
-#endif /* CONFIG_NAND_IMX_BOOT */
-
-	b	board_init_lowlevel_return
-
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
