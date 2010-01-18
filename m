Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NWqEH-0006Na-Go
	for barebox@lists.infradead.org; Mon, 18 Jan 2010 11:57:14 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 18 Jan 2010 12:56:28 +0100
Message-Id: <1263815791-10839-6-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1263815791-10839-5-git-send-email-mkl@pengutronix.de>
References: <1263815791-10839-1-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-2-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-3-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-4-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-5-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 5/8] i.MX35 3stack: clean up indention of lowlevel_init
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 board/freescale-mx35-3-stack/lowlevel_init.S |  340 +++++++++++++-------------
 1 files changed, 170 insertions(+), 170 deletions(-)

diff --git a/board/freescale-mx35-3-stack/lowlevel_init.S b/board/freescale-mx35-3-stack/lowlevel_init.S
index 4e0a102..1680579 100644
--- a/board/freescale-mx35-3-stack/lowlevel_init.S
+++ b/board/freescale-mx35-3-stack/lowlevel_init.S
@@ -27,9 +27,9 @@
 #include <asm/cache-l2x0.h>
 #include "board-mx35_3stack.h"
 
-#define CSD0_BASE_ADDR             0x80000000
-#define ESDCTL_BASE_ADDR        0xB8001000
-#define CSD1_BASE_ADDR             0x90000000
+#define CSD0_BASE_ADDR		0x80000000
+#define ESDCTL_BASE_ADDR	0xB8001000
+#define CSD1_BASE_ADDR		0x90000000
 
 #define writel(val, reg) \
 	ldr		r0,	=reg;	\
@@ -42,84 +42,84 @@
 	strb		r1,	[r0];
 
 /* Assuming 24MHz input clock */
-#define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
-#define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
-#define PPCTL_PARAM_300     (IMX_PLL_PD(0) | IMX_PLL_MFD(3) | IMX_PLL_MFI(6) | IMX_PLL_MFN(1))
+#define MPCTL_PARAM_399	(IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
+#define MPCTL_PARAM_532	((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
+#define PPCTL_PARAM_300	(IMX_PLL_PD(0) | IMX_PLL_MFD(3) | IMX_PLL_MFI(6) | IMX_PLL_MFN(1))
 
 	.section ".text_bare_init","ax"
 
-ARM_PPMRR:              .word   0x40000015
-L2CACHE_PARAM:          .word   0x00030024
-CCM_CCMR_W:             .word   0x003F4208
-CCM_PDR0_W:             .word   0x00001000
-MPCTL_PARAM_399_W:      .word   MPCTL_PARAM_399
-MPCTL_PARAM_532_W:      .word   MPCTL_PARAM_532
-PPCTL_PARAM_W:    	.word   PPCTL_PARAM_300
-CCM_BASE_ADDR_W:        .word   IMX_CCM_BASE
+ARM_PPMRR:		.word	0x40000015
+L2CACHE_PARAM:		.word	0x00030024
+CCM_CCMR_W:		.word	0x003F4208
+CCM_PDR0_W:		.word	0x00001000
+MPCTL_PARAM_399_W:	.word	MPCTL_PARAM_399
+MPCTL_PARAM_532_W:	.word	MPCTL_PARAM_532
+PPCTL_PARAM_W:		.word	PPCTL_PARAM_300
+CCM_BASE_ADDR_W:	.word	IMX_CCM_BASE
 
 .globl board_init_lowlevel
 board_init_lowlevel:
-	mov     r10, lr
+	mov	r10, lr
 
-	mrc 15, 0, r1, c1, c0, 0
+	mrc	15, 0, r1, c1, c0, 0
 
-	mrc 15, 0, r0, c1, c0, 1
-	orr r0, r0, #7
-	mcr 15, 0, r0, c1, c0, 1
+	mrc	15, 0, r0, c1, c0, 1
+	orr	r0, r0, #7
+	mcr	15, 0, r0, c1, c0, 1
 
-	orr r1, r1, #(1<<11) /* Flow prediction (Z) */
-	orr r1, r1, #(1<<22) /* unaligned accesses  */
-	orr r1, r1, #(1<<21) /* Low Int Latency     */
+	orr	r1, r1, #(1 << 11)		/* Flow prediction (Z) */
+	orr	r1, r1, #(1 << 22)		/* unaligned accesses */
+	orr	r1, r1, #(1 << 21)		/* Low Int Latency */
 
-	mcr 15, 0, r1, c1, c0, 0
+	mcr	15, 0, r1, c1, c0, 0
 
-	mov r0, #0
-	mcr 15, 0, r0, c15, c2, 4
+	mov	r0, #0
+	mcr	15, 0, r0, c15, c2, 4
 
 	/*
-	 * Branch predicition is now enabled.  Flush the BTAC to ensure a valid
-	 * starting point.  Don't flush BTAC while it is disabled to avoid
+	 * Branch predicition is now enabled. Flush the BTAC to ensure a valid
+	 * starting point. Don't flush BTAC while it is disabled to avoid
 	 * ARM1136 erratum 408023.
 	 */
-	mov     r0, #0
-	mcr     p15, 0, r0, c7, c5, 6	/* flush entire BTAC */
+	mov	r0, #0
+	mcr	p15, 0, r0, c7, c5, 6		/* flush entire BTAC */
 
-	mov r0, #0
-	mcr 15, 0, r0, c7, c7, 0        /* invalidate I cache and D cache */
-	mcr 15, 0, r0, c8, c7, 0        /* invalidate TLBs */
-	mcr 15, 0, r0, c7, c10, 4       /* Drain the write buffer */
+	mov	r0, #0
+	mcr	15, 0, r0, c7, c7, 0		/* invalidate I cache and D cache */
+	mcr	15, 0, r0, c8, c7, 0		/* invalidate TLBs */
+	mcr	15, 0, r0, c7, c10, 4		/* Drain the write buffer */
 
 	/* Also setup the Peripheral Port Remap register inside the core */
-	ldr r0, ARM_PPMRR        /* start from AIPS 2GB region */
-	mcr p15, 0, r0, c15, c2, 4
+	ldr	r0, ARM_PPMRR			/* start from AIPS 2GB region */
+	mcr	p15, 0, r0, c15, c2, 4
 
 /*
  * End of ARM1136 init
  */
-	ldr r0, CCM_BASE_ADDR_W
+	ldr	r0, CCM_BASE_ADDR_W
 
-	ldr r2, CCM_CCMR_W
-	str r2, [r0, #CCM_CCMR]
+	ldr	r2, CCM_CCMR_W
+	str	r2, [r0, #CCM_CCMR]
 
-	ldr r3, MPCTL_PARAM_532_W  /* consumer path*/
+	ldr	r3, MPCTL_PARAM_532_W		/* consumer path*/
 
-	/* Set MPLL , arm clock and ahb clock*/
-	str r3, [r0, #CCM_MPCTL]
+	/* Set MPLL, arm clock and ahb clock */
+	str	r3, [r0, #CCM_MPCTL]
 
-	ldr r1, PPCTL_PARAM_W
-	str r1, [r0, #CCM_PPCTL]
+	ldr	r1, PPCTL_PARAM_W
+	str	r1, [r0, #CCM_PPCTL]
 
-	ldr r1, CCM_PDR0_W
-	str r1, [r0, #CCM_PDR0]
+	ldr	r1, CCM_PDR0_W
+	str	r1, [r0, #CCM_PDR0]
 
-	ldr r1, [r0, #CCM_CGR0]
-	orr r1, r1, #0x00300000
-	str r1, [r0, #CCM_CGR0]
+	ldr	r1, [r0, #CCM_CGR0]
+	orr	r1, r1, #0x00300000
+	str	r1, [r0, #CCM_CGR0]
 
-	ldr r1, [r0, #CCM_CGR1]
-	orr r1, r1, #0x00000C00
-	orr r1, r1, #0x00000003
-	str r1, [r0, #CCM_CGR1]
+	ldr	r1, [r0, #CCM_CGR1]
+	orr	r1, r1, #0x00000C00
+	orr	r1, r1, #0x00000003
+	str	r1, [r0, #CCM_CGR1]
 
 	/* Skip SDRAM initialization if we run from RAM */
 	cmp	pc, #0x80000000
@@ -130,33 +130,33 @@ board_init_lowlevel:
 	mov	pc, r10
 
 1:
-	ldr r0, =ESDCTL_BASE_ADDR
-	mov r3, #0x2000
-	str r3, [r0, #0x0]
-	str r3, [r0, #0x8]
+	ldr	r0, =ESDCTL_BASE_ADDR
+	mov	r3, #0x2000
+	str	r3, [r0, #0x0]
+	str	r3, [r0, #0x8]
 
-	/* ip(r12) has used to save lr register in upper calling*/
-	mov fp, lr
+	/* ip(r12) has used to save lr register in upper calling */
+	mov	fp, lr
 
-	mov r5, #0x00
-	mov r2, #0x00
-	mov r1, #CSD0_BASE_ADDR
-	bl setup_sdram_bank
-	cmp r3, #0x0
-	orreq r5, r5, #1
-	eorne r2, r2, #0x1
-	blne setup_sdram_bank
+	mov	r5, #0x00
+	mov	r2, #0x00
+	mov	r1, #CSD0_BASE_ADDR
+	bl	setup_sdram_bank
+	cmp	r3, #0x0
+	orreq	r5, r5, #1
+	eorne	r2, r2, #0x1
+	blne	setup_sdram_bank
 
-	mov lr, fp
+	mov	lr, fp
 
-	ldr r3, =ESDCTL_DELAY_LINE5
-	str r3, [r0, #0x30]
+	ldr	r3, =ESDCTL_DELAY_LINE5
+	str	r3, [r0, #0x30]
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	ldr	sp, =TEXT_BASE - 4	/* Setup a temporary stack in SDRAM */
+	ldr	sp, =TEXT_BASE - 4		/* Setup a temporary stack in SDRAM */
 
-	ldr	r0, =IMX_NFC_BASE		/* start of NFC SRAM                */
-	ldr	r2, =IMX_NFC_BASE + 0x800	/* end of NFC SRAM                  */
+	ldr	r0, =IMX_NFC_BASE		/* start of NFC SRAM */
+	ldr	r2, =IMX_NFC_BASE + 0x800	/* end of NFC SRAM */
 
 	/* skip NAND boot if not running from NFC space */
 	cmp	pc, r0
@@ -165,119 +165,119 @@ board_init_lowlevel:
 	bhs	ret
 
 	/* Move ourselves out of NFC SRAM */
-	ldr	r1, =TEXT_BASE
+	ldr r1, =TEXT_BASE
 
 copy_loop:
-	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
-	stmia	r1!, {r3-r9}		/* copy to   target address [r1]    */
-	cmp	r0, r2			/* until source end addreee [r2]    */
+	ldmia	r0!, {r3-r9}			/* copy from source address [r0] */
+	stmia	r1!, {r3-r9}			/* copy to   target address [r1] */
+	cmp	r0, r2				/* until source end addreee [r2] */
 	ble	copy_loop
 
-	ldr	pc, =1f			/* Jump to SDRAM                    */
+	ldr	pc, =1f				/* Jump to SDRAM */
 1:
-	bl	nand_boot		/* Load barebox from NAND Flash      */
+	bl	nand_boot			/* Load barebox from NAND Flash */
 
 	/* rebase the return address */
 	ldr	r1, =IMX_NFC_BASE - TEXT_BASE
-	sub	r10, r10, r1		/* adjust return address from NFC SRAM */
+	sub	r10, r10, r1			/* adjust return address from NFC SRAM */
 ret:
 #endif /* CONFIG_NAND_IMX_BOOT */
 
-	mov pc, r10
+	mov	pc, r10
 
 /*
  * r0: ESDCTL control base, r1: sdram slot base
- * r2: DDR type(0:DDR2, 1:MDDR) r3, r4:working base
+ * r2: DDR type (0: DDR2, 1: MDDR) r3, r4: working base
  */
 setup_sdram_bank:
-	mov r3, #0xE /*0xA + 0x4*/
-	tst r2, #0x1
-	orreq r3, r3, #0x300 /*DDR2*/
-	str r3, [r0, #0x10]
-	bic r3, r3, #0x00A
-	str r3, [r0, #0x10]
-	beq 2f
-
-	mov r3, #0x20000
-1:	subs r3, r3, #1
-	bne 1b
-
-2:	tst r2, #0x1
-	ldreq r3, =ESDCTL_DDR2_CONFIG
-	ldrne r3, =ESDCTL_MDDR_CONFIG
-	cmp r1, #CSD1_BASE_ADDR
-	strlo r3, [r0, #0x4]
-	strhs r3, [r0, #0xC]
-
-	ldr r3, =ESDCTL_0x92220000
-	strlo r3, [r0, #0x0]
-	strhs r3, [r0, #0x8]
-	mov r3, #0xDA
-	ldr r4, =ESDCTL_PRECHARGE
-	strb r3, [r1, r4]
-
-	tst r2, #0x1
-	bne skip_set_mode
-
-	cmp r1, #CSD1_BASE_ADDR
-	ldr r3, =ESDCTL_0xB2220000
-	strlo r3, [r0, #0x0]
-	strhs r3, [r0, #0x8]
-	mov r3, #0xDA
-	ldr r4, =ESDCTL_DDR2_EMR2
-	strb r3, [r1, r4]
-	ldr r4, =ESDCTL_DDR2_EMR3
-	strb r3, [r1, r4]
-	ldr r4, =ESDCTL_DDR2_EN_DLL
-	strb r3, [r1, r4]
-	ldr r4, =ESDCTL_DDR2_RESET_DLL
-	strb r3, [r1, r4]
-
-	ldr r3, =ESDCTL_0x92220000
-	strlo r3, [r0, #0x0]
-	strhs r3, [r0, #0x8]
-	mov r3, #0xDA
-	ldr r4, =ESDCTL_PRECHARGE
-	strb r3, [r1, r4]
+	mov	r3, #0xE			/* 0xA + 0x4 */
+	tst	r2, #0x1
+	orreq	r3, r3, #0x300			/* DDR2 */
+	str	r3, [r0, #0x10]
+	bic	r3, r3, #0x00A
+	str	r3, [r0, #0x10]
+	beq	2f
+
+	mov	r3, #0x20000
+1:	subs	r3, r3, #1
+	bne	1b
+
+2:	tst	r2, #0x1
+	ldreq	r3, =ESDCTL_DDR2_CONFIG
+	ldrne	r3, =ESDCTL_MDDR_CONFIG
+	cmp	r1, #CSD1_BASE_ADDR
+	strlo	r3, [r0, #0x4]
+	strhs	r3, [r0, #0xC]
+
+	ldr	r3, =ESDCTL_0x92220000
+	strlo	r3, [r0, #0x0]
+	strhs	r3, [r0, #0x8]
+	mov	r3, #0xDA
+	ldr	r4, =ESDCTL_PRECHARGE
+	strb	r3, [r1, r4]
+
+	tst	r2, #0x1
+	bne	skip_set_mode
+
+	cmp	r1, #CSD1_BASE_ADDR
+	ldr	r3, =ESDCTL_0xB2220000
+	strlo	r3, [r0, #0x0]
+	strhs	r3, [r0, #0x8]
+	mov	r3, #0xDA
+	ldr	r4, =ESDCTL_DDR2_EMR2
+	strb	r3, [r1, r4]
+	ldr	r4, =ESDCTL_DDR2_EMR3
+	strb	r3, [r1, r4]
+	ldr	r4, =ESDCTL_DDR2_EN_DLL
+	strb	r3, [r1, r4]
+	ldr	r4, =ESDCTL_DDR2_RESET_DLL
+	strb	r3, [r1, r4]
+
+	ldr	r3, =ESDCTL_0x92220000
+	strlo	r3, [r0, #0x0]
+	strhs	r3, [r0, #0x8]
+	mov	r3, #0xDA
+	ldr	r4, =ESDCTL_PRECHARGE
+	strb	r3, [r1, r4]
 
 skip_set_mode:
-	cmp r1, #CSD1_BASE_ADDR
-	ldr r3, =ESDCTL_0xA2220000
-	strlo r3, [r0, #0x0]
-	strhs r3, [r0, #0x8]
-	mov r3, #0xDA
-	strb r3, [r1]
-	strb r3, [r1]
-
-	ldr r3, =ESDCTL_0xB2220000
-	strlo r3, [r0, #0x0]
-	strhs r3, [r0, #0x8]
-	tst r2, #0x1
-	ldreq r4, =ESDCTL_DDR2_MR
-	ldrne r4, =ESDCTL_MDDR_MR
-	mov r3, #0xDA
-	strb r3, [r1, r4]
-	ldreq r4, =ESDCTL_DDR2_OCD_DEFAULT
-	streqb r3, [r1, r4]
-	ldreq r4, =ESDCTL_DDR2_EN_DLL
-	ldrne r4, =ESDCTL_MDDR_EMR
-	strb r3, [r1, r4]
-
-	cmp r1, #CSD1_BASE_ADDR
-	ldr r3, =ESDCTL_0x82228080
-	strlo r3, [r0, #0x0]
-	strhs r3, [r0, #0x8]
-
-	tst r2, #0x1
-	moveq r4, #0x20000
-	movne r4, #0x200
-1:	subs r4, r4, #1
-	bne 1b
-
-	str r3, [r1, #0x100]
-	ldr r4, [r1, #0x100]
-	cmp r3, r4
-	movne r3, #1
-	moveq r3, #0
-
-	mov pc, lr
+	cmp	r1, #CSD1_BASE_ADDR
+	ldr	r3, =ESDCTL_0xA2220000
+	strlo	r3, [r0, #0x0]
+	strhs	r3, [r0, #0x8]
+	mov	r3, #0xDA
+	strb	r3, [r1]
+	strb	r3, [r1]
+
+	ldr	r3, =ESDCTL_0xB2220000
+	strlo	r3, [r0, #0x0]
+	strhs	r3, [r0, #0x8]
+	tst	r2, #0x1
+	ldreq	r4, =ESDCTL_DDR2_MR
+	ldrne	r4, =ESDCTL_MDDR_MR
+	mov	r3, #0xDA
+	strb	r3, [r1, r4]
+	ldreq	r4, =ESDCTL_DDR2_OCD_DEFAULT
+	streqb	r3, [r1, r4]
+	ldreq	r4, =ESDCTL_DDR2_EN_DLL
+	ldrne	r4, =ESDCTL_MDDR_EMR
+	strb	r3, [r1, r4]
+
+	cmp	r1, #CSD1_BASE_ADDR
+	ldr	r3, =ESDCTL_0x82228080
+	strlo	r3, [r0, #0x0]
+	strhs	r3, [r0, #0x8]
+
+	tst	r2, #0x1
+	moveq	r4, #0x20000
+	movne	r4, #0x200
+1:	subs	r4, r4, #1
+	bne	1b
+
+	str	r3, [r1, #0x100]
+	ldr	r4, [r1, #0x100]
+	cmp	r3, r4
+	movne	r3, #1
+	moveq	r3, #0
+
+	mov	pc, lr
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
