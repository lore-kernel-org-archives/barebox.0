Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og118.obsmtp.com ([64.18.0.160])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3OxZ-0004dU-DR
 for barebox@lists.infradead.org; Wed, 15 Jan 2014 11:48:41 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 15 Jan 2014 11:47:43 +0000
Message-Id: <1389786464-22085-5-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1389786464-22085-1-git-send-email-renaud.barbier@ge.com>
References: <1389786464-22085-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 4/5] ppc: cpu-85xx: import U-Boot start-up code
To: barebox@lists.infradead.org

Import U-Boot start-up code from version git-9407c3fc to include the
latest CPUs errata and make future U-Boot code inclusion easier. The
code import is limited to the currently supported CPUs P2020/MPC8544.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/cpu-85xx/start.S                          | 395 ++++++++++++++-------
 arch/ppc/include/asm/mmu.h                         |   3 +
 arch/ppc/include/asm/processor.h                   |   2 +
 arch/ppc/mach-mpc85xx/cpu_init.c                   |   2 +-
 .../ppc/mach-mpc85xx/include/mach/config_mpc85xx.h |   4 +
 5 files changed, 277 insertions(+), 129 deletions(-)

diff --git a/arch/ppc/cpu-85xx/start.S b/arch/ppc/cpu-85xx/start.S
index 638b6b8..d32cb62 100644
--- a/arch/ppc/cpu-85xx/start.S
+++ b/arch/ppc/cpu-85xx/start.S
@@ -1,20 +1,8 @@
 /*
- * Copyright 2004, 2007-2011 Freescale Semiconductor, Inc.
+ * Copyright 2004, 2007-2012 Freescale Semiconductor, Inc.
  * Copyright (C) 2003  Motorola,Inc.
  *
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
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
+ * SPDX-License-Identifier:	GPL-2.0+
  */
 
 /*
@@ -41,7 +29,7 @@
 /*
  * Set up GOT: Global Offset Table
  *
- * Use r12 to access the GOT
+ * Use r14 to access the GOT
  */
 	START_GOT
 	GOT_ENTRY(_GOT2_TABLE_)
@@ -71,6 +59,17 @@
 	.globl _start_e500
 
 _start_e500:
+/* Enable debug exception */
+	li	r1,MSR_DE
+	mtmsr 	r1
+
+#ifdef FSL_ERRATUM_A005125
+	msync
+	isync
+	mfspr	r3, SPRN_HDBCR0
+	oris	r3, r3, 0x0080
+	mtspr	SPRN_HDBCR0, r3
+#endif
 
 /* clear registers/arrays not reset by hardware */
 
@@ -82,77 +81,68 @@ _start_e500:
 	mfspr	r1,DBSR
 	mtspr	DBSR,r1		/* Clear all valid bits */
 
-	/* Enable/invalidate the I-Cache */
-	lis	r2,(L1CSR1_ICFI|L1CSR1_ICLFR)@h
-	ori	r2,r2,(L1CSR1_ICFI|L1CSR1_ICLFR)@l
-	mtspr	SPRN_L1CSR1,r2
-1:
-	mfspr	r3,SPRN_L1CSR1
-	and.	r1,r3,r2
-	bne	1b
 
-	lis	r3,(L1CSR1_CPE|L1CSR1_ICE)@h
-	ori	r3,r3,(L1CSR1_CPE|L1CSR1_ICE)@l
-	mtspr	SPRN_L1CSR1,r3
+	.macro	create_tlb1_entry esel ts tsize epn wimg rpn \
+                              perm phy_high scratch
+	lis	\scratch, FSL_BOOKE_MAS0(1, \esel, 0)@h
+	ori	\scratch, \scratch, FSL_BOOKE_MAS0(1, \esel, 0)@l
+	mtspr	MAS0, \scratch
+	lis	\scratch, FSL_BOOKE_MAS1(1, 1, 0, \ts, \tsize)@h
+	ori	\scratch, \scratch, FSL_BOOKE_MAS1(1, 1, 0, \ts, \tsize)@l
+	mtspr	MAS1, \scratch
+	lis	\scratch, FSL_BOOKE_MAS2(\epn, \wimg)@h
+	ori	\scratch, \scratch, FSL_BOOKE_MAS2(\epn, \wimg)@l
+	mtspr	MAS2, \scratch
+	lis	\scratch, FSL_BOOKE_MAS3(\rpn, 0, \perm)@h
+	ori	\scratch, \scratch, FSL_BOOKE_MAS3(\rpn, 0, \perm)@l
+	mtspr	MAS3, \scratch
+	lis	\scratch, \phy_high@h
+	ori	\scratch, \scratch, \phy_high@l
+	mtspr	MAS7, \scratch
 	isync
-2:
-	mfspr	r3,SPRN_L1CSR1
-	andi.	r1,r3,L1CSR1_ICE@l
-	beq	2b
-
-	/* Enable/invalidate the D-Cache */
-	lis	r2,(L1CSR0_DCFI|L1CSR0_DCLFR)@h
-	ori	r2,r2,(L1CSR0_DCFI|L1CSR0_DCLFR)@l
-	mtspr	SPRN_L1CSR0,r2
-1:
-	mfspr	r3,SPRN_L1CSR0
-	and.	r1,r3,r2
-	bne	1b
-
-	lis	r3,(L1CSR0_CPE|L1CSR0_DCE)@h
-	ori	r3,r3,(L1CSR0_CPE|L1CSR0_DCE)@l
-	mtspr	SPRN_L1CSR0,r3
+	msync
+	tlbwe
 	isync
-2:
-	mfspr	r3,SPRN_L1CSR0
-	andi.	r1,r3,L1CSR0_DCE@l
-	beq	2b
+	.endm
 
 	/* Setup interrupt vectors */
 	lis	r1,TEXT_BASE@h
 	mtspr	IVPR,r1
 
-	li	r1,0x0100
-	mtspr	IVOR0,r1	/* 0: Critical input */
-	li	r1,0x0200
-	mtspr	IVOR1,r1	/* 1: Machine check */
-	li	r1,0x0300
-	mtspr	IVOR2,r1	/* 2: Data storage */
-	li	r1,0x0400
-	mtspr	IVOR3,r1	/* 3: Instruction storage */
-	li	r1,0x0500
-	mtspr	IVOR4,r1	/* 4: External interrupt */
-	li	r1,0x0600
-	mtspr	IVOR5,r1	/* 5: Alignment */
-	li	r1,0x0700
-	mtspr	IVOR6,r1	/* 6: Program check */
-	li	r1,0x0800
-	mtspr	IVOR7,r1	/* 7: floating point unavailable */
-	li	r1,0x0900
-	mtspr	IVOR8,r1	/* 8: System call */
+	lis	r3,(TEXT_BASE & 0xffff)@h
+	ori	r3,r3,(TEXT_BASE & 0xffff)@l
+
+	addi	r4,r3,CriticalInput - _start + _START_OFFSET
+	mtspr	IVOR0,r4	/* 0: Critical input */
+	addi	r4,r3,MachineCheck - _start + _START_OFFSET
+	mtspr	IVOR1,r4	/* 1: Machine check */
+	addi	r4,r3,DataStorage - _start + _START_OFFSET
+	mtspr	IVOR2,r4	/* 2: Data storage */
+	addi	r4,r3,InstStorage - _start + _START_OFFSET
+	mtspr	IVOR3,r4	/* 3: Instruction storage */
+	addi	r4,r3,ExtInterrupt - _start + _START_OFFSET
+	mtspr	IVOR4,r4	/* 4: External interrupt */
+	addi	r4,r3,Alignment - _start + _START_OFFSET
+	mtspr	IVOR5,r4	/* 5: Alignment */
+	addi	r4,r3,ProgramCheck - _start + _START_OFFSET
+	mtspr	IVOR6,r4	/* 6: Program check */
+	addi	r4,r3,FPUnavailable - _start + _START_OFFSET
+	mtspr	IVOR7,r4	/* 7: floating point unavailable */
+	addi	r4,r3,SystemCall - _start + _START_OFFSET
+	mtspr	IVOR8,r4	/* 8: System call */
 	/* 9: Auxiliary processor unavailable(unsupported) */
-	li	r1,0x0a00
-	mtspr	IVOR10,r1	/* 10: Decrementer */
-	li	r1,0x0b00
-	mtspr	IVOR11,r1	/* 11: Interval timer */
-	li	r1,0x0c00
-	mtspr	IVOR12,r1	/* 12: Watchdog timer */
-	li	r1,0x0d00
-	mtspr	IVOR13,r1	/* 13: Data TLB error */
-	li	r1,0x0e00
-	mtspr	IVOR14,r1	/* 14: Instruction TLB error */
-	li	r1,0x0f00
-	mtspr	IVOR15,r1	/* 15: Debug */
+	addi	r4,r3,Decrementer - _start + _START_OFFSET
+	mtspr	IVOR10,r4	/* 10: Decrementer */
+	addi	r4,r3,IntervalTimer - _start + _START_OFFSET
+	mtspr	IVOR11,r4	/* 11: Interval timer */
+	addi	r4,r3,WatchdogTimer - _start + _START_OFFSET
+	mtspr	IVOR12,r4	/* 12: Watchdog timer */
+	addi	r4,r3,DataTLBError - _start + _START_OFFSET
+	mtspr	IVOR13,r4	/* 13: Data TLB error */
+	addi	r4,r3,InstructionTLBError - _start + _START_OFFSET
+	mtspr	IVOR14,r4	/* 14: Instruction TLB error */
+	addi	r4,r3,DebugBreakpoint - _start + _START_OFFSET
+	mtspr	IVOR15,r4	/* 15: Debug */
 
 	/* Clear and set up some registers. */
 	li      r0,0x0000
@@ -188,52 +178,163 @@ _start_e500:
 	mtspr	SPRN_BUCSR,r0
 #endif
 
-	lis     r6,FSL_BOOKE_MAS0(1, 15, 0)@h
-	ori     r6,r6,FSL_BOOKE_MAS0(1, 15, 0)@l
+/*
+ * Search for the TLB that covers the code we're executing, and shrink it
+ * so that it covers only this 4K page.  That will ensure that any other
+ * TLB we create won't interfere with it.  We assume that the TLB exists,
+ * which is why we don't check the Valid bit of MAS1.  We also assume
+ * it is in TLB1.
+ *
+ * This is necessary, for example, when booting from the on-chip ROM,
+ * which (oddly) creates a single 4GB TLB that covers CCSR and DDR.
+ */
+	bl	nexti		/* Find our address */
+nexti:	mflr	r1		/* R1 = our PC */
+	li	r2, 0
+	mtspr	MAS6, r2	/* Assume the current PID and AS are 0 */
+	isync
+	msync
+	tlbsx	0, r1		/* This must succeed */
 
-	/* create a temp mapping in AS=1 to the 4M boot window */
-	lis     r7,FSL_BOOKE_MAS1(1, 1, 0, 1, BOOKE_PAGESZ_4M)@h
-	ori     r7,r7,FSL_BOOKE_MAS1(1, 1, 0, 1, BOOKE_PAGESZ_4M)@l
+	mfspr	r14, MAS0	/* Save ESEL for later */
+	rlwinm	r14, r14, 16, 0xfff
 
-	lis     r8,FSL_BOOKE_MAS2(TEXT_BASE & 0xffc00000, (MAS2_I|MAS2_G))@h
-	ori     r8,r8,FSL_BOOKE_MAS2(TEXT_BASE & 0xffc00000, (MAS2_I|MAS2_G))@l
+	/* Set the size of the TLB to 4KB */
+	mfspr	r3, MAS1
+	li	r2, 0xF80
+	andc	r3, r3, r2	/* Clear the TSIZE bits */
+	ori	r3, r3, MAS1_TSIZE(BOOKE_PAGESZ_4K)@l
+	oris	r3, r3, MAS1_IPROT@h
+	mtspr	MAS1, r3
 
-	lis     r9,FSL_BOOKE_MAS3(0xffc00000, 0, (MAS3_SX|MAS3_SW|MAS3_SR))@h
-	ori     r9,r9,FSL_BOOKE_MAS3(0xffc00000, 0, (MAS3_SX|MAS3_SW|MAS3_SR))@l
+	/*
+	 * Set the base address of the TLB to our PC.  We assume that
+	 * virtual == physical.  We also assume that MAS2_EPN == MAS3_RPN.
+	 */
+	lis	r3, MAS2_EPN@h
+	ori	r3, r3, MAS2_EPN@l	/* R3 = MAS2_EPN */
+
+	and	r1, r1, r3	/* Our PC, rounded down to the nearest page */
+
+	mfspr	r2, MAS2
+	andc	r2, r2, r3
+	or	r2, r2, r1
+	mtspr	MAS2, r2	/* Set the EPN to our PC base address */
+
+	mfspr	r2, MAS3
+	andc	r2, r2, r3
+	or	r2, r2, r1
+	mtspr	MAS3, r2	/* Set the RPN to our PC base address */
 
-	mtspr   MAS0,r6
-	mtspr   MAS1,r7
-	mtspr   MAS2,r8
-	mtspr   MAS3,r9
 	isync
 	msync
 	tlbwe
 
-	/* create a temp mapping in AS=1 to the stack */
-	lis     r6,FSL_BOOKE_MAS0(1, 14, 0)@h
-	ori     r6,r6,FSL_BOOKE_MAS0(1, 14, 0)@l
+/*
+ * Clear out any other TLB entries that may exist, to avoid conflicts.
+ * Our TLB entry is in r14.
+ */
+	li	r0, TLBIVAX_ALL | TLBIVAX_TLB0
+	tlbivax 0, r0
+	tlbsync
 
-	lis     r7,FSL_BOOKE_MAS1(1, 1, 0, 1, BOOKE_PAGESZ_16K)@h
-	ori     r7,r7,FSL_BOOKE_MAS1(1, 1, 0, 1, BOOKE_PAGESZ_16K)@l
+	mfspr	r4, SPRN_TLB1CFG
+	rlwinm	r4, r4, 0, TLBnCFG_NENTRY_MASK
 
-	lis     r8,FSL_BOOKE_MAS2(CFG_INIT_RAM_ADDR, 0)@h
-	ori     r8,r8,FSL_BOOKE_MAS2(CFG_INIT_RAM_ADDR, 0)@l
+	li	r3, 0
+	mtspr	MAS1, r3
+1:	cmpw	r3, r14
+	rlwinm	r5, r3, 16, MAS0_ESEL_MSK
+	addi	r3, r3, 1
+	beq	2f		/* skip the entry we're executing from */
 
-	lis     r9,FSL_BOOKE_MAS3(CFG_INIT_RAM_ADDR, 0,
-                                  (MAS3_SX|MAS3_SW|MAS3_SR))@h
-	ori     r9,r9,FSL_BOOKE_MAS3(CFG_INIT_RAM_ADDR, 0,
-                                     (MAS3_SX|MAS3_SW|MAS3_SR))@l
+	oris	r5, r5, MAS0_TLBSEL(1)@h
+	mtspr	MAS0, r5
 
-	mtspr   MAS0,r6
-	mtspr   MAS1,r7
-	mtspr   MAS2,r8
-	mtspr   MAS3,r9
 	isync
-	msync
 	tlbwe
+	isync
+	msync
+
+2:	cmpw	r3, r4
+	blt	1b
+
+#if defined(PPC_E500_DEBUG_TLB)
+/*
+ * TLB entry for debuggging in AS1
+ * Create temporary TLB entry in AS0 to handle debug exception
+ * As on debug exception MSR is cleared i.e. Address space is changed
+ * to 0. A TLB entry (in AS0) is required to handle debug exception generated
+ * in AS1.
+ *
+ * TLB entry is created for IVPR + IVOR15 to map on valid OP code address
+ * bacause flash's virtual address maps to 0xff800000 - 0xffffffff.
+ * and this window is outside of 4K boot window.
+ */
+	create_tlb1_entry PPC_E500_DEBUG_TLB, \
+		0, BOOKE_PAGESZ_4M, \
+		TEXT_BASE & 0xffc00000,  MAS2_I|MAS2_G, \
+		0xffc00000, MAS3_SX|MAS3_SW|MAS3_SR, \
+		0, r6
 
-	lis	r6,MSR_IS|MSR_DS@h
-	ori	r6,r6,MSR_IS|MSR_DS@l
+#endif
+
+	/* Enable/invalidate the I-Cache */
+	lis	r2,(L1CSR1_ICFI|L1CSR1_ICLFR)@h
+	ori	r2,r2,(L1CSR1_ICFI|L1CSR1_ICLFR)@l
+	mtspr	SPRN_L1CSR1,r2
+1:
+	mfspr	r3,SPRN_L1CSR1
+	and.	r1,r3,r2
+	bne	1b
+
+	lis	r3,(L1CSR1_CPE|L1CSR1_ICE)@h
+	ori	r3,r3,(L1CSR1_CPE|L1CSR1_ICE)@l
+	mtspr	SPRN_L1CSR1,r3
+	isync
+2:
+	mfspr	r3,SPRN_L1CSR1
+	andi.	r1,r3,L1CSR1_ICE@l
+	beq	2b
+
+	/* Enable/invalidate the D-Cache */
+	lis	r2,(L1CSR0_DCFI|L1CSR0_DCLFR)@h
+	ori	r2,r2,(L1CSR0_DCFI|L1CSR0_DCLFR)@l
+	mtspr	SPRN_L1CSR0,r2
+1:
+	mfspr	r3,SPRN_L1CSR0
+	and.	r1,r3,r2
+	bne	1b
+
+	lis	r3,(L1CSR0_CPE|L1CSR0_DCE)@h
+	ori	r3,r3,(L1CSR0_CPE|L1CSR0_DCE)@l
+	mtspr	SPRN_L1CSR0,r3
+	isync
+2:
+	mfspr	r3,SPRN_L1CSR0
+	andi.	r1,r3,L1CSR0_DCE@l
+	beq	2b
+
+create_init_ram_area:
+	lis     r6,FSL_BOOKE_MAS0(1, 15, 0)@h
+	ori     r6,r6,FSL_BOOKE_MAS0(1, 15, 0)@l
+
+	/* create a temp mapping in AS=1 to the 4M boot window */
+	create_tlb1_entry 15, \
+		1, BOOKE_PAGESZ_4M, \
+		TEXT_BASE & 0xffc00000, MAS2_I|MAS2_G, \
+		0xffc00000, MAS3_SX|MAS3_SW|MAS3_SR, \
+		0, r6
+
+	/* create a temp mapping in AS=1 to the stack */
+	create_tlb1_entry 14, \
+		1, BOOKE_PAGESZ_16K, \
+		CFG_INIT_RAM_ADDR, 0, \
+		CFG_INIT_RAM_ADDR, MAS3_SX|MAS3_SW|MAS3_SR, \
+		0, r6
+
+	lis	r6,MSR_IS|MSR_DS|MSR_DE@h
+	ori	r6,r6,MSR_IS|MSR_DS|MSR_DE@l
 	lis	r7,switch_as@h
 	ori	r7,r7,switch_as@l
 
@@ -278,18 +379,12 @@ _start:
 	.globl	_start_cont
 _start_cont:
 	/* Setup the stack in initial RAM,could be L2-as-SRAM or L1 dcache */
-	lis	r1,CFG_INIT_RAM_ADDR@h
-	ori	r1,r1,CFG_INIT_SP_OFFSET@l
-
+	lis	r3,(CFG_INIT_RAM_ADDR)@h
+	ori	r3,r3,((CFG_INIT_SP_OFFSET-16)&~0xf)@l
 	li	r0,0
-	stwu	r0,-4(r1)
-	stwu	r0,-4(r1)		/* Terminate call chain */
-
-	stwu	r1,-8(r1)		/* Save back chain and move SP */
-	lis	r0,RESET_VECTOR@h	/* Address of reset vector */
-	ori	r0,r0,RESET_VECTOR@l
-	stwu	r1,-8(r1)		/* Save back chain and move SP */
-	stw	r0,+12(r1)		/* Save return addr (underflow vect) */
+	stw	r0,0(r3)	/* Terminate Back Chain */
+	stw	r0,+4(r3)	/* NULL return address. */
+	mr	r1,r3		/* Transfer to SP(r1) */
 
 	GET_GOT
 	bl	cpu_init_early_f
@@ -304,8 +399,6 @@ _start_cont:
 	b       relocate_code
 	isync
 
-	/* NOTREACHED - board_init_f() does not return */
-
 	. = EXC_OFF_SYS_RESET
 	.globl	_start_of_vectors
 _start_of_vectors:
@@ -322,6 +415,9 @@ _start_of_vectors:
 /* Instruction Storage exception. */
 	STD_EXCEPTION(0x0400, InstStorage, UnknownException)
 
+/* External Interrupt exception. */
+	STD_EXCEPTION(0x0500, ExtInterrupt, UnknownException)
+
 /* Alignment exception. */
 	. = 0x0600
 Alignment:
@@ -766,7 +862,7 @@ e500_write_tlb:
  * This "function" does not return, instead it continues in RAM
  * after relocating the monitor code.
  *
- * r3 = dest
+ * r3 = end_of_ram
  * r4 = src
  * r5 = length in bytes
  * r6 = cachelinesize
@@ -854,16 +950,23 @@ relocate_code:
 	isync
 
 	/*
-	 * Re-point the IVPR at RAM
-	 */
-	mtspr	IVPR,r10
-
-	/*
 	 * We are done. Do not return, instead branch to second part of board
 	 * initialization, now running from RAM.
 	 */
 
 	addi	r0,r10,in_ram - _start + _START_OFFSET
+
+	/*
+	 * As IVPR is going to point RAM address,
+	 * Make sure IVOR15 has valid opcode to support debugger
+	 */
+	mtspr	IVOR15,r0
+
+	/*
+	 * Re-point the IVPR at RAM
+	 */
+	mtspr	IVPR,r10
+
 	mtlr	r0
 	blr				/* NEVER RETURNS! */
 
@@ -923,7 +1026,7 @@ clear_bss:
 	stw	r0,0(r3)
 	addi	r3,r3,4
 	cmplw	0,r3,r4
-	bne	5b
+	blt	5b
 6:
 	mr 	r3, r10		/* Destination Address      */
 	bl 	board_init_r
@@ -964,6 +1067,8 @@ trap_init:
 	bl	trap_reloc
 	li	r7,.L_InstStorage - _start + _START_OFFSET
 	bl	trap_reloc
+	li	r7,.L_ExtInterrupt - _start + _START_OFFSET
+	bl	trap_reloc
 	li	r7,.L_Alignment - _start + _START_OFFSET
 	bl	trap_reloc
 	li	r7,.L_ProgramCheck - _start + _START_OFFSET
@@ -980,6 +1085,39 @@ trap_init:
 	cmplw	0,r7,r8
 	blt	2b
 
+	/* Update IVORs as per relocated vector table address */
+	li	r7,0x0100
+	mtspr	IVOR0,r7	/* 0: Critical input */
+	li	r7,0x0200
+	mtspr	IVOR1,r7	/* 1: Machine check */
+	li	r7,0x0300
+	mtspr	IVOR2,r7	/* 2: Data storage */
+	li	r7,0x0400
+	mtspr	IVOR3,r7	/* 3: Instruction storage */
+	li	r7,0x0500
+	mtspr	IVOR4,r7	/* 4: External interrupt */
+	li	r7,0x0600
+	mtspr	IVOR5,r7	/* 5: Alignment */
+	li	r7,0x0700
+	mtspr	IVOR6,r7	/* 6: Program check */
+	li	r7,0x0800
+	mtspr	IVOR7,r7	/* 7: floating point unavailable */
+	li	r7,0x0900
+	mtspr	IVOR8,r7	/* 8: System call */
+	/* 9: Auxiliary processor unavailable(unsupported) */
+	li	r7,0x0a00
+	mtspr	IVOR10,r7	/* 10: Decrementer */
+	li	r7,0x0b00
+	mtspr	IVOR11,r7	/* 11: Interval timer */
+	li	r7,0x0c00
+	mtspr	IVOR12,r7	/* 12: Watchdog timer */
+	li	r7,0x0d00
+	mtspr	IVOR13,r7	/* 13: Data TLB error */
+	li	r7,0x0e00
+	mtspr	IVOR14,r7	/* 14: Instruction TLB error */
+	li	r7,0x0f00
+	mtspr	IVOR15,r7	/* 15: Debug */
+
 	lis	r7,0x0
 	mtspr	IVPR,r7
 
@@ -1001,6 +1139,7 @@ unlock_ram_in_cache:
 	slwi	r4,r4,(10 - 1 - L1_CACHE_SHIFT)
 	mtctr	r4
 1:	dcbi	r0,r3
+	dcblc	r0,r3
 	addi	r3,r3,CACHELINE_SIZE
 	bdnz	1b
 	sync
diff --git a/arch/ppc/include/asm/mmu.h b/arch/ppc/include/asm/mmu.h
index c886d14..72233b4 100644
--- a/arch/ppc/include/asm/mmu.h
+++ b/arch/ppc/include/asm/mmu.h
@@ -462,6 +462,9 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
 #define BOOKE_PAGESZ_2G		21
 #define BOOKE_PAGESZ_4G		22
 
+#define TLBIVAX_ALL		4
+#define TLBIVAX_TLB0		0
+
 #if defined(CONFIG_MPC86xx)
 #define LAWBAR_BASE_ADDR	0x00FFFFFF
 #define LAWAR_TRGT_IF		0x01F00000
diff --git a/arch/ppc/include/asm/processor.h b/arch/ppc/include/asm/processor.h
index 059d33f..819babb 100644
--- a/arch/ppc/include/asm/processor.h
+++ b/arch/ppc/include/asm/processor.h
@@ -430,6 +430,7 @@
 #define SPRN_TLB0CFG   0x2B0   /* TLB 0 Config Register */
 #define SPRN_TLB1CFG   0x2B1   /* TLB 1 Config Register */
 #define SPRN_TLB1PS	0x159	/* TLB 1 Page Size Register */
+#define TLBnCFG_NENTRY_MASK	0x00000fff
 #define SPRN_MMUCSR0	0x3f4	/* MMU control and status register 0 */
 #define SPRN_MMUCFG	0x3f7	/* MMU Configuration Register */
 #define MMUCFG_MAVN	0x00000003	/* MMU Architecture Version Number */
@@ -470,6 +471,7 @@
 #define SPRN_MSSCRO	0x3f6
 #endif
 
+#define SPRN_HDBCR0	0x3d0
 
 /* Short-hand versions for a number of the above SPRNs */
 
diff --git a/arch/ppc/mach-mpc85xx/cpu_init.c b/arch/ppc/mach-mpc85xx/cpu_init.c
index 8372b7f..7b50cef 100644
--- a/arch/ppc/mach-mpc85xx/cpu_init.c
+++ b/arch/ppc/mach-mpc85xx/cpu_init.c
@@ -110,7 +110,7 @@ void cpu_init_early_f(void)
 		fsl_setup_ccsrbar();
 
 	fsl_init_laws();
-	e500_invalidate_tlb(0);
+	e500_invalidate_tlb(1);
 	e500_init_tlbs();
 }
 
diff --git a/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h b/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
index 7d606d1..27358e8 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
@@ -29,11 +29,15 @@
 #define FSL_NUM_LAWS	12
 #define FSL_SEC_COMPAT	2
 #define FSL_NUM_TSEC	3
+#define FSL_ERRATUM_A005125
+#define PPC_E500_DEBUG_TLB 2
 
 #elif defined(CONFIG_MPC8544)
 #define MAX_CPUS	1
 #define FSL_NUM_LAWS	10
 #define FSL_NUM_TSEC	2
+#define FSL_ERRATUM_A005125
+#define PPC_E500_DEBUG_TLB 0
 
 #else
 #error Processor type not defined for this platform
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
