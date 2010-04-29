Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O7OXj-0008Ds-UE
	for barebox@lists.infradead.org; Thu, 29 Apr 2010 07:52:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Apr 2010 09:52:15 +0200
Message-Id: <1272527535-17527-18-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1272527535-17527-1-git-send-email-s.hauer@pengutronix.de>
References: <1272527535-17527-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/17] pcm038: reimplement lowlevel code in C
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 board/pcm038/Makefile        |    2 +-
 board/pcm038/lowlevel.c      |  117 ++++++++++++++++++++++++++++++++++++++++++
 board/pcm038/lowlevel_init.S |  116 -----------------------------------------
 board/pcm038/pcm038.c        |    9 ---
 4 files changed, 118 insertions(+), 126 deletions(-)
 create mode 100644 board/pcm038/lowlevel.c
 delete mode 100644 board/pcm038/lowlevel_init.S

diff --git a/board/pcm038/Makefile b/board/pcm038/Makefile
index d978c77..a681dda 100644
--- a/board/pcm038/Makefile
+++ b/board/pcm038/Makefile
@@ -1,3 +1,3 @@
 
-obj-y += lowlevel_init.o pll_init.o
+obj-y += lowlevel.o pll_init.o
 obj-y += pcm038.o
diff --git a/board/pcm038/lowlevel.c b/board/pcm038/lowlevel.c
new file mode 100644
index 0000000..0c376f2
--- /dev/null
+++ b/board/pcm038/lowlevel.c
@@ -0,0 +1,117 @@
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+#include <common.h>
+#include <init.h>
+#include <mach/imx-regs.h>
+#include <mach/imx-pll.h>
+#include <mach/esdctl.h>
+#include <asm/cache-l2x0.h>
+#include <asm/io.h>
+#include <mach/imx-nand.h>
+#include <asm/barebox-arm.h>
+#include <asm/system.h>
+#include <asm-generic/memory_layout.h>
+
+static void __bare_init __naked insdram(void)
+{
+	uint32_t r;
+
+	PCCR1 |= PCCR1_NFC_BAUDEN;
+
+	/* setup a stack to be able to call imx_nand_load_image() */
+	r = STACK_BASE + STACK_SIZE - 12;
+	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+
+	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
+
+	board_init_lowlevel_return();
+}
+
+#define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
+
+void __bare_init __naked board_init_lowlevel(void)
+{
+	uint32_t r;
+	int i;
+	unsigned int *trg, *src;
+
+	/* ahb lite ip interface */
+	AIPI1_PSR0 = 0x20040304;
+	AIPI1_PSR1 = 0xDFFBFCFB;
+	AIPI2_PSR0 = 0x00000000;
+	AIPI2_PSR1 = 0xFFFFFFFF;
+
+	/* Skip SDRAM initialization if we run from RAM */
+	r = get_pc();
+	if (r > 0xa0000000 && r < 0xb0000000)
+		board_init_lowlevel_return();
+
+	/*
+	 * DDR on CSD0
+	 */
+	writel(0x00000008, ESDMISC); /* Enable DDR SDRAM operation */
+
+	DSCR(3) = 0x55555555; /* Set the driving strength   */
+	DSCR(5) = 0x55555555;
+	DSCR(6) = 0x55555555;
+	DSCR(7) = 0x00005005;
+	DSCR(8) = 0x15555555;
+
+	writel(0x00000004, ESDMISC); /* Initial reset */
+	writel(0x006ac73a, ESDCFG0);
+
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_PRECHARGE, ESDCTL0); /* precharge CSD0 all banks */
+	writel(0x00000000, 0xA0000F00);	/* CSD0 precharge address (A10 = 1) */
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_AUTO_REFRESH, ESDCTL0);
+
+	for (i = 0; i < 8; i++)
+		writel(0, 0xa0000f00);
+
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_LOAD_MODE, ESDCTL0);
+
+	writeb(0xda, 0xa0000033);
+	writeb(0xff, 0xa1000000);
+	writel(ESDCTL0_VAL | ESDCTL0_DSIZ_31_0 | ESDCTL0_REF4 |
+			ESDCTL0_BL | ESDCTL0_SMODE_NORMAL, ESDCTL0);
+
+#ifdef CONFIG_NAND_IMX_BOOT
+	/* skip NAND boot if not running from NFC space */
+	r = get_pc();
+	if (r < IMX_NFC_BASE || r > IMX_NFC_BASE + 0x800)
+		board_init_lowlevel_return();
+
+	src = (unsigned int *)IMX_NFC_BASE;
+	trg = (unsigned int *)TEXT_BASE;
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
+
diff --git a/board/pcm038/lowlevel_init.S b/board/pcm038/lowlevel_init.S
deleted file mode 100644
index 0001e4f..0000000
--- a/board/pcm038/lowlevel_init.S
+++ /dev/null
@@ -1,116 +0,0 @@
-/*
- * For clock initialization, see chapter 3 of the "MCIMX27 Multimedia
- * Applications Processor Reference Manual, Rev. 0.2".
- *
- */
-
-#include <config.h>
-#include <mach/imx-regs.h>
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
-	writel(0x00000008, ESDMISC) /* Enable DDR SDRAM operation */
-
-	writel(0x55555555, DSCR(3)) /* Set the driving strength   */
-	writel(0x55555555, DSCR(5))
-	writel(0x55555555, DSCR(6))
-	writel(0x00005005, DSCR(7))
-	writel(0x15555555, DSCR(8))
-
-	writel(0x00000004, ESDMISC) /* Initial reset */
-
-	/*
-	 * tXP=3, tWTR=0, tRP=2, tMRD=2, tWR=1,
-	 * tRAS=4, tRRD=1, tCAS=3, tRCD=3, tRC=10
-	 */
-	writel(0x006ac73a, ESDCFG0)
-
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_PRECHARGE, ESDCTL0) /* precharge CSD0 all banks */
-	writel(0x00000000, 0xA0000F00)	/* CSD0 precharge address (A10 = 1) */
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_AUTO_REFRESH, ESDCTL0)
-
-	ldr	r0, =0xa0000f00
-	mov	r1, #0
-	mov	r2, #8
-1:
-	str	r1, [r0]
-	subs	r2, #1
-	bne	1b
-
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_LOAD_MODE, ESDCTL0)
-	ldr		r0, =0xA0000033
-	mov		r1, #0xda
-	strb		r1, [r0]
-	ldr		r0, =0xA1000000
-	mov		r1, #0xff
-	strb		r1, [r0]
-	writel(ESDCTL0_VAL | ESDCTL0_DSIZ_31_0 | ESDCTL0_REF4 | ESDCTL0_BL | ESDCTL0_SMODE_NORMAL, ESDCTL0)
-.endm
-
-	.section ".text_bare_init","ax"
-
-.globl board_init_lowlevel
-board_init_lowlevel:
-
-	mov	r10, lr
-
-	/* ahb lite ip interface */
-	writel(0x20040304, AIPI1_PSR0)
-	writel(0xDFFBFCFB, AIPI1_PSR1)
-	writel(0x00000000, AIPI2_PSR0)
-	writel(0xFFFFFFFF, AIPI2_PSR1)
-
-	/* skip sdram initialization if we run from ram */
-	cmp	pc, #0xa0000000
-	bls	1f
-	cmp	pc, #0xc0000000
-	bhi	1f
-
-	mov	pc,r10
-1:
-	sdram_init
-
-#ifdef CONFIG_NAND_IMX_BOOT
-	ldr	sp, =0xa0f00000		/* Setup a temporary stack in SDRAM */
-
-	ldr	r0, =IMX_NFC_BASE		/* start of NFC SRAM                */
-	ldr	r2, =IMX_NFC_BASE + 0x1000	/* end of NFC SRAM                  */
-
-	/* skip NAND boot if not running from NFC space */
-	cmp	pc, r0
-	bls	ret
-	cmp	pc, r2
-	bhi	ret
-
-	/* Move ourselves out of NFC SRAM */
-	ldr	r1, =TEXT_BASE
-
-copy_loop:
-	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
-	stmia	r1!, {r3-r9}		/* copy to   target address [r1]    */
-	cmp	r0, r2			/* until source end addreee [r2]    */
-	ble	copy_loop
-
-	ldr	pc, =1f			/* Jump to SDRAM                    */
-1:
-	bl	nand_boot		/* Load barebox from NAND Flash      */
-
-	ldr	r1, =IMX_NFC_BASE - TEXT_BASE
-	sub	r10, r10, r1		/* adjust return address from NFC SRAM */
-					/* to SDRAM                            */
-
-#endif /* CONFIG_NAND_IMX_BOOT */
-
-ret:
-	mov	pc,r10
-
diff --git a/board/pcm038/pcm038.c b/board/pcm038/pcm038.c
index 3c17036..fbd53a5 100644
--- a/board/pcm038/pcm038.c
+++ b/board/pcm038/pcm038.c
@@ -420,12 +420,3 @@ static int pcm038_power_init(void)
 
 late_initcall(pcm038_power_init);
 
-#ifdef CONFIG_NAND_IMX_BOOT
-void __bare_init nand_boot(void)
-{
-	PCCR1 |= PCCR1_NFC_BAUDEN;  /* FIXME: Really needed? Probably not */
-
-	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
-}
-#endif
-
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
