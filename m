Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rh0qM-0000Mq-7R
 for barebox@lists.infradead.org; Sat, 31 Dec 2011 15:27:45 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 97B91DC37CC
 for <barebox@lists.infradead.org>; Sat, 31 Dec 2011 16:28:27 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 31 Dec 2011 16:21:33 +0100
Message-Id: <1325344898-7076-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111231151655.GB945@game.jcrosoft.org>
References: <20111231151655.GB945@game.jcrosoft.org>
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
Subject: [PATCH 07/12] at91sam9x: switch lowlevel init to c
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9263ek/config.h         |   18 --
 arch/arm/boards/mmccpu/config.h                |   18 --
 arch/arm/boards/pm9261/config.h                |   18 --
 arch/arm/boards/pm9263/config.h                |   18 --
 arch/arm/mach-at91/at91sam926x_lowlevel_init.S |  278 ------------------------
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c |  171 +++++++++++++++
 6 files changed, 171 insertions(+), 350 deletions(-)
 delete mode 100644 arch/arm/mach-at91/at91sam926x_lowlevel_init.S
 create mode 100644 arch/arm/mach-at91/at91sam926x_lowlevel_init.c

diff --git a/arch/arm/boards/at91sam9263ek/config.h b/arch/arm/boards/at91sam9263ek/config.h
index bc33227..8f764eb 100644
--- a/arch/arm/boards/at91sam9263ek/config.h
+++ b/arch/arm/boards/at91sam9263ek/config.h
@@ -40,8 +40,6 @@
 	 AT91_MATRIX_EBI0_CS1A_SDRAMC)
 
 /* SDRAM */
-/* SDRAMC_MR Mode register */
-#define CONFIG_SYS_SDRC_MR_VAL1		0
 /* SDRAMC_TR - Refresh Timer register */
 #define CONFIG_SYS_SDRC_TR_VAL1		0x13C
 /* SDRAMC_CR - Configuration register*/
@@ -60,23 +58,7 @@
 
 /* Memory Device Register -> SDRAM */
 #define CONFIG_SYS_SDRC_MDR_VAL		AT91_SDRAMC_MD_SDRAM
-#define CONFIG_SYS_SDRC_MR_VAL2		AT91_SDRAMC_MODE_PRECHARGE
-#define CONFIG_SYS_SDRAM_VAL1		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRC_MR_VAL3		AT91_SDRAMC_MODE_REFRESH
-#define CONFIG_SYS_SDRAM_VAL2		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL3		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL4		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL5		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL6		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL7		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL8		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL9		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRC_MR_VAL4		AT91_SDRAMC_MODE_LMR
-#define CONFIG_SYS_SDRAM_VAL10		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRC_MR_VAL5		AT91_SDRAMC_MODE_NORMAL
-#define CONFIG_SYS_SDRAM_VAL11		0		/* SDRAM_BASE */
 #define CONFIG_SYS_SDRC_TR_VAL2		1200		/* SDRAM_TR */
-#define CONFIG_SYS_SDRAM_VAL12		0		/* SDRAM_BASE */
 
 /* setup SMC0, CS0 (NOR Flash) - 16-bit, 15 WS */
 #define CONFIG_SYS_SMC0_SETUP0_VAL					\
diff --git a/arch/arm/boards/mmccpu/config.h b/arch/arm/boards/mmccpu/config.h
index c37d5eb..765b610 100644
--- a/arch/arm/boards/mmccpu/config.h
+++ b/arch/arm/boards/mmccpu/config.h
@@ -41,8 +41,6 @@
 	 AT91_MATRIX_EBI0_CS1A_SDRAMC | AT91_MATRIX_EBI0_CS3A_SMC_SMARTMEDIA)
 
 /* SDRAM */
-/* SDRAMC_MR Mode register */
-#define CONFIG_SYS_SDRC_MR_VAL1		0
 /* SDRAMC_TR - Refresh Timer register */
 #define CONFIG_SYS_SDRC_TR_VAL1		0x13c
 /* SDRAMC_CR - Configuration register*/
@@ -61,23 +59,7 @@
 
 /* Memory Device Register -> SDRAM */
 #define CONFIG_SYS_SDRC_MDR_VAL		AT91_SDRAMC_MD_SDRAM
-#define CONFIG_SYS_SDRC_MR_VAL2		AT91_SDRAMC_MODE_PRECHARGE
-#define CONFIG_SYS_SDRAM_VAL1		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRC_MR_VAL3		AT91_SDRAMC_MODE_REFRESH
-#define CONFIG_SYS_SDRAM_VAL2		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL3		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL4		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL5		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL6		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL7		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL8		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL9		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRC_MR_VAL4		AT91_SDRAMC_MODE_LMR
-#define CONFIG_SYS_SDRAM_VAL10		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRC_MR_VAL5		AT91_SDRAMC_MODE_NORMAL
-#define CONFIG_SYS_SDRAM_VAL11		0		/* SDRAM_BASE */
 #define CONFIG_SYS_SDRC_TR_VAL2		780		/* SDRAM_TR */
-#define CONFIG_SYS_SDRAM_VAL12		0		/* SDRAM_BASE */
 
 /* setup CS0 (NOR Flash) - 16-bit */
 #if 1
diff --git a/arch/arm/boards/pm9261/config.h b/arch/arm/boards/pm9261/config.h
index 97f8efc..e8822a5 100644
--- a/arch/arm/boards/pm9261/config.h
+++ b/arch/arm/boards/pm9261/config.h
@@ -40,8 +40,6 @@
        (AT91_MATRIX_DBPUC | AT91_MATRIX_CS1A_SDRAMC)
 
 /* SDRAM */
-/* SDRAMC_MR Mode register */
-#define CONFIG_SYS_SDRC_MR_VAL1		AT91_SDRAMC_MODE_NORMAL
 /* SDRAMC_TR - Refresh Timer register */
 #define CONFIG_SYS_SDRC_TR_VAL1		0x13C
 /* SDRAMC_CR - Configuration register*/
@@ -60,23 +58,7 @@
 
 /* Memory Device Register -> SDRAM */
 #define CONFIG_SYS_SDRC_MDR_VAL		AT91_SDRAMC_MD_SDRAM
-#define CONFIG_SYS_SDRC_MR_VAL2		AT91_SDRAMC_MODE_PRECHARGE
-#define CONFIG_SYS_SDRAM_VAL1		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRC_MR_VAL3		AT91_SDRAMC_MODE_REFRESH
-#define CONFIG_SYS_SDRAM_VAL2		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL3		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL4		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL5		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL6		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL7		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL8		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL9		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRC_MR_VAL4		AT91_SDRAMC_MODE_LMR
-#define CONFIG_SYS_SDRAM_VAL10		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRC_MR_VAL5		AT91_SDRAMC_MODE_NORMAL
-#define CONFIG_SYS_SDRAM_VAL11		0		/* SDRAM_BASE */
 #define CONFIG_SYS_SDRC_TR_VAL2		1200		/* SDRAM_TR */
-#define CONFIG_SYS_SDRAM_VAL12		0		/* SDRAM_BASE */
 
 /* setup SMC0, CS0 (NOR Flash) - 16-bit, 15 WS */
 #define CONFIG_SYS_SMC0_SETUP0_VAL					\
diff --git a/arch/arm/boards/pm9263/config.h b/arch/arm/boards/pm9263/config.h
index 5252df2..d5add0f 100644
--- a/arch/arm/boards/pm9263/config.h
+++ b/arch/arm/boards/pm9263/config.h
@@ -55,8 +55,6 @@
 	 AT91_MATRIX_EBI0_CS1A_SDRAMC)
 
 /* SDRAM */
-/* SDRAMC_MR Mode register */
-#define CONFIG_SYS_SDRC_MR_VAL1		0
 /* SDRAMC_TR - Refresh Timer register */
 #define CONFIG_SYS_SDRC_TR_VAL1		0x3AA
 /* SDRAMC_CR - Configuration register*/
@@ -75,23 +73,7 @@
 
 /* Memory Device Register -> SDRAM */
 #define CONFIG_SYS_SDRC_MDR_VAL		AT91_SDRAMC_MD_SDRAM
-#define CONFIG_SYS_SDRC_MR_VAL2		AT91_SDRAMC_MODE_PRECHARGE
-#define CONFIG_SYS_SDRAM_VAL1		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRC_MR_VAL3		AT91_SDRAMC_MODE_REFRESH
-#define CONFIG_SYS_SDRAM_VAL2		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL3		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL4		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL5		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL6		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL7		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL8		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRAM_VAL9		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRC_MR_VAL4		AT91_SDRAMC_MODE_LMR
-#define CONFIG_SYS_SDRAM_VAL10		0		/* SDRAM_BASE */
-#define CONFIG_SYS_SDRC_MR_VAL5		AT91_SDRAMC_MODE_NORMAL
-#define CONFIG_SYS_SDRAM_VAL11		0		/* SDRAM_BASE */
 #define CONFIG_SYS_SDRC_TR_VAL2		1200		/* SDRAM_TR */
-#define CONFIG_SYS_SDRAM_VAL12		0		/* SDRAM_BASE */
 
 /* setup SMC0, CS0 (NOR Flash) - 16-bit, 15 WS */
 #define CONFIG_SYS_SMC0_SETUP0_VAL					\
diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.S b/arch/arm/mach-at91/at91sam926x_lowlevel_init.S
deleted file mode 100644
index 805b201..0000000
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.S
+++ /dev/null
@@ -1,278 +0,0 @@
-/*
- * Memory Setup stuff - taken from blob memsetup.S
- *
- * Copyright (C) 1999 2000 2001 Erik Mouw (J.A.K.Mouw@its.tudelft.nl) and
- *		       Jan-Derk Bakker (J.D.Bakker@its.tudelft.nl)
- *
- * Copyright (C) 2008 Ronetix Ilko Iliev (www.ronetix.at)
- * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#include <config.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_pio.h>
-#include <mach/at91_rstc.h>
-#include <mach/at91_wdt.h>
-#include <mach/at91sam9_matrix.h>
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9_smc.h>
-
-_TEXT_BASE:
-	.word	TEXT_BASE
-
-.globl board_init_lowlevel
-.type board_init_lowlevel,function
-board_init_lowlevel:
-
-	mov	r5, pc		/* r5 = POS1 + 4 current */
-POS1:
-	ldr	r0, =POS1	/* r0 = POS1 compile */
-	ldr	r2, _TEXT_BASE
-	sub	r0, r0, r2	/* r0 = POS1-_TEXT_BASE (POS1 relative) */
-	sub	r5, r5, r0	/* r0 = TEXT_BASE-1 */
-	sub	r5, r5, #4	/* r1 = text base - current */
-
-	/* memory control configuration 1 */
-	ldr	r0, =SMRDATA
-	ldr	r2, =SMRDATA1
-	ldr	r1, _TEXT_BASE
-	sub	r0, r0, r1
-	sub	r2, r2, r1
-	add	r0, r0, r5
-	add	r2, r2, r5
-0:
-	/* the address */
-	ldr	r1, [r0], #4
-	/* the value */
-	ldr	r3, [r0], #4
-	str	r3, [r1]
-	cmp	r2, r0
-	bne	0b
-
-/* ----------------------------------------------------------------------------
- * PMC Init Step 1.
- * ----------------------------------------------------------------------------
- * - Check if the PLL is already initialized
- * ----------------------------------------------------------------------------
- */
-	ldr	r1, =(AT91_BASE_SYS + AT91_PMC_MCKR)
-	ldr	r0, [r1]
-	and	r0, r0, #3
-	cmp	r0, #0
-	bne	PLL_setup_end
-
-/* ---------------------------------------------------------------------------
- * - Enable the Main Oscillator
- * ---------------------------------------------------------------------------
- */
-	ldr	r1, =(AT91_BASE_SYS + AT91_CKGR_MOR)
-	ldr	r2, =(AT91_BASE_SYS + AT91_PMC_SR)
-	/* Main oscillator Enable register PMC_MOR: */
-	ldr	r0, =CONFIG_SYS_MOR_VAL
-	str	r0, [r1]
-
-	/* Reading the PMC Status to detect when the Main Oscillator is enabled */
-	mov	r4, #AT91_PMC_MOSCS
-MOSCS_Loop:
-	ldr	r3, [r2]
-	and	r3, r4, r3
-	cmp	r3, #AT91_PMC_MOSCS
-	bne	MOSCS_Loop
-
-/* ----------------------------------------------------------------------------
- * PMC Init Step 2.
- * ----------------------------------------------------------------------------
- * Setup PLLA
- * ----------------------------------------------------------------------------
- */
-	ldr	r1, =(AT91_BASE_SYS + AT91_CKGR_PLLAR)
-	ldr	r0, =CONFIG_SYS_PLLAR_VAL
-	str	r0, [r1]
-
-	/* Reading the PMC Status register to detect when the PLLA is locked */
-	mov	r4, #AT91_PMC_LOCKA
-MOSCS_Loop1:
-	ldr	r3, [r2]
-	and	r3, r4, r3
-	cmp	r3, #AT91_PMC_LOCKA
-	bne	MOSCS_Loop1
-
-/* ----------------------------------------------------------------------------
- * PMC Init Step 3.
- * ----------------------------------------------------------------------------
- * - Switch on the Main Oscillator
- * ----------------------------------------------------------------------------
- */
-	ldr	r1, =(AT91_BASE_SYS + AT91_PMC_MCKR)
-
-	/* -Master Clock Controller register PMC_MCKR */
-	ldr	r0, =CONFIG_SYS_MCKR1_VAL
-	str	r0, [r1]
-
-	/* Reading the PMC Status to detect when the Master clock is ready */
-	mov	r4, #AT91_PMC_MCKRDY
-MCKRDY_Loop:
-	ldr	r3, [r2]
-	and	r3, r4, r3
-	cmp	r3, #AT91_PMC_MCKRDY
-	bne	MCKRDY_Loop
-
-	ldr	r0, =CONFIG_SYS_MCKR2_VAL
-	str	r0, [r1]
-
-	/* Reading the PMC Status to detect when the Master clock is ready */
-	mov	r4, #AT91_PMC_MCKRDY
-MCKRDY_Loop1:
-	ldr	r3, [r2]
-	and	r3, r4, r3
-	cmp	r3, #AT91_PMC_MCKRDY
-	bne	MCKRDY_Loop1
-
-PLL_setup_end:
-
-/* ----------------------------------------------------------------------------
- * - memory control configuration 2
- * ----------------------------------------------------------------------------
- */
-	ldr	r0, =(AT91_BASE_SYS + AT91_SDRAMC_TR)
-	ldr	r1, [r0]
-	cmp	r1, #0
-	bne	SDRAM_setup_end
-
-	ldr	r0, =SMRDATA1
-	ldr	r2, =SMRDATA2
-	ldr	r1, _TEXT_BASE
-	sub	r0, r0, r1
-	sub	r2, r2, r1
-	add	r0, r0, r5
-	add	r2, r2, r5
-
-2:
-	/* the address */
-	ldr	r1, [r0], #4
-	/* the value */
-	ldr	r3, [r0], #4
-	str	r3, [r1]
-	cmp	r2, r0
-	bne	2b
-
-SDRAM_setup_end:
-	/* everything is fine now */
-	mov	pc, lr
-
-	.ltorg
-
-SMRDATA:
-	.word (AT91_BASE_SYS + AT91_WDT_MR)
-	.word CONFIG_SYS_WDTC_WDMR_VAL
-
-	/* configure PIOx as EBI0 D[16-31] */
-#if defined(CONFIG_ARCH_AT91SAM9263)
-	.word (AT91_BASE_SYS + AT91_PIOD + PIO_PDR)
-	.word CONFIG_SYS_PIOD_PDR_VAL1
-	.word (AT91_BASE_SYS + AT91_PIOD + PIO_PUDR)
-	.word CONFIG_SYS_PIOD_PPUDR_VAL
-	.word (AT91_BASE_SYS + AT91_PIOD + PIO_ASR)
-	.word CONFIG_SYS_PIOD_PPUDR_VAL
-#elif defined(CONFIG_ARCH_AT91SAM9260) || defined(CONFIG_ARCH_AT91SAM9261) \
-	|| defined(CONFIG_ARCH_AT91SAM9G20) || defined(CONFIG_ARCH_AT91SAM9G10)
-	.word (AT91_BASE_SYS + AT91_PIOC + PIO_PDR)
-	.word CONFIG_SYS_PIOC_PDR_VAL1
-	.word (AT91_BASE_SYS + AT91_PIOC + PIO_PUDR)
-	.word CONFIG_SYS_PIOC_PPUDR_VAL
-#endif
-
-#if defined(AT91_MATRIX_EBI0CSA)
-	.word (AT91_BASE_SYS + AT91_MATRIX_EBI0CSA)
-	.word CONFIG_SYS_MATRIX_EBI0CSA_VAL
-#else /* AT91_MATRIX_EBICSA */
-	.word (AT91_BASE_SYS + AT91_MATRIX_EBICSA)
-	.word CONFIG_SYS_MATRIX_EBICSA_VAL
-#endif
-
-	/* flash */
-	.word (AT91_BASE_SYS + AT91_SMC_MODE(0))
-	.word CONFIG_SYS_SMC0_MODE0_VAL
-
-	.word (AT91_BASE_SYS + AT91_SMC_CYCLE(0))
-	.word CONFIG_SYS_SMC0_CYCLE0_VAL
-
-	.word (AT91_BASE_SYS + AT91_SMC_PULSE(0))
-	.word CONFIG_SYS_SMC0_PULSE0_VAL
-
-	.word (AT91_BASE_SYS + AT91_SMC_SETUP(0))
-	.word CONFIG_SYS_SMC0_SETUP0_VAL
-
-SMRDATA1:
-	.word (AT91_BASE_SYS + AT91_SDRAMC_MR)
-	.word CONFIG_SYS_SDRC_MR_VAL1
-	.word (AT91_BASE_SYS + AT91_SDRAMC_TR)
-	.word CONFIG_SYS_SDRC_TR_VAL1
-	.word (AT91_BASE_SYS + AT91_SDRAMC_CR)
-	.word CONFIG_SYS_SDRC_CR_VAL
-	.word (AT91_BASE_SYS + AT91_SDRAMC_MDR)
-	.word CONFIG_SYS_SDRC_MDR_VAL
-	.word (AT91_BASE_SYS + AT91_SDRAMC_MR)
-	.word CONFIG_SYS_SDRC_MR_VAL2
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL1
-	.word (AT91_BASE_SYS + AT91_SDRAMC_MR)
-	.word CONFIG_SYS_SDRC_MR_VAL3
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL2
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL3
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL4
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL5
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL6
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL7
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL8
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL9
-	.word (AT91_BASE_SYS + AT91_SDRAMC_MR)
-	.word CONFIG_SYS_SDRC_MR_VAL4
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL10
-	.word (AT91_BASE_SYS + AT91_SDRAMC_MR)
-	.word CONFIG_SYS_SDRC_MR_VAL5
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL11
-	.word (AT91_BASE_SYS + AT91_SDRAMC_TR)
-	.word CONFIG_SYS_SDRC_TR_VAL2
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL12
-	/* User reset enable*/
-	.word (AT91_BASE_SYS + AT91_RSTC_MR)
-	.word CONFIG_SYS_RSTC_RMR_VAL
-#ifdef CONFIG_SYS_MATRIX_MCFG_REMAP
-	/* MATRIX_MCFG - REMAP all masters */
-	.word (AT91_BASE_SYS + AT91_MATRIX_MCFG0)
-	.word 0x1FF
-#endif
-
-SMRDATA2:
-	.word 0
diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
new file mode 100644
index 0000000..b664afc
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -0,0 +1,171 @@
+/*
+ * Copyright (C) 2008 Ronetix Ilko Iliev (www.ronetix.at)
+ * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+  */
+
+#include <common.h>
+#include <asm/system.h>
+#include <asm/barebox-arm.h>
+#include <mach/hardware.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_pio.h>
+#include <mach/at91_rstc.h>
+#include <mach/at91_wdt.h>
+#include <mach/at91sam9_matrix.h>
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/io.h>
+#include <init.h>
+
+static void inline access_sdram(void)
+{
+	writel(0x00000000, AT91_SDRAM_BASE);
+}
+
+static void inline pmc_check_mckrdy(void)
+{
+	u32 r;
+
+	do {
+		r = at91_sys_read(AT91_PMC_SR);
+	} while (!(r & AT91_PMC_MCKRDY));
+}
+
+void __naked __bare_init board_init_lowlevel(void)
+{
+	u32 r;
+	int i;
+
+	at91_sys_write(AT91_WDT_MR, CONFIG_SYS_WDTC_WDMR_VAL);
+
+	/* configure PIOx as EBI0 D[16-31] */
+#ifdef CONFIG_ARCH_AT91SAM9263
+	at91_sys_write(AT91_PIOD + PIO_PDR, CONFIG_SYS_PIOD_PDR_VAL1);
+	at91_sys_write(AT91_PIOD + PIO_PUDR, CONFIG_SYS_PIOD_PPUDR_VAL);
+	at91_sys_write(AT91_PIOD + PIO_ASR, CONFIG_SYS_PIOD_PPUDR_VAL);
+#else
+	at91_sys_write(AT91_PIOC + PIO_PDR, CONFIG_SYS_PIOC_PDR_VAL1);
+	at91_sys_write(AT91_PIOC + PIO_PUDR, CONFIG_SYS_PIOC_PPUDR_VAL);
+#endif
+
+#if defined(AT91_MATRIX_EBI0CSA)
+	at91_sys_write(AT91_MATRIX_EBI0CSA, CONFIG_SYS_MATRIX_EBI0CSA_VAL);
+#else /* AT91_MATRIX_EBICSA */
+	at91_sys_write(AT91_MATRIX_EBICSA, CONFIG_SYS_MATRIX_EBICSA_VAL);
+#endif
+
+	/* flash */
+	at91_sys_write(AT91_SMC_MODE(0), CONFIG_SYS_SMC0_MODE0_VAL);
+
+	at91_sys_write(AT91_SMC_CYCLE(0), CONFIG_SYS_SMC0_CYCLE0_VAL);
+
+	at91_sys_write(AT91_SMC_PULSE(0), CONFIG_SYS_SMC0_PULSE0_VAL);
+
+	at91_sys_write(AT91_SMC_SETUP(0), CONFIG_SYS_SMC0_SETUP0_VAL);
+
+	/*
+	 * PMC Check if the PLL is already initialized
+	 */
+	r = at91_sys_read(AT91_PMC_MCKR);
+	if (r & AT91_PMC_CSS)
+		goto end;
+
+	/*
+	 * Enable the Main Oscillator
+	 */
+	at91_sys_write(AT91_CKGR_MOR, CONFIG_SYS_MOR_VAL);
+
+	do {
+		r = at91_sys_read(AT91_PMC_SR);
+	} while (!(r & AT91_PMC_MOSCS));
+
+	/*
+	 * PLLAR: x MHz for PCK
+	 */
+	at91_sys_write(AT91_CKGR_PLLAR, CONFIG_SYS_PLLAR_VAL);
+
+	do {
+		r = at91_sys_read(AT91_PMC_SR);
+	} while (!(r & AT91_PMC_LOCKA));
+
+	/*
+	 * PCK/x = MCK Master Clock from SLOW
+	 */
+	at91_sys_write(AT91_PMC_MCKR, CONFIG_SYS_MCKR1_VAL);
+
+	pmc_check_mckrdy();
+
+	/*
+	 * PCK/x = MCK Master Clock from PLLA
+	 */
+	at91_sys_write(AT91_PMC_MCKR, CONFIG_SYS_MCKR2_VAL);
+
+	pmc_check_mckrdy();
+
+	/*
+	 * Init SDRAM
+	 */
+
+	/*
+	 * SDRAMC Check if Refresh Timer Counter is already initialized
+	 */
+	r = at91_sys_read(AT91_SDRAMC_TR);
+	if (r)
+		goto end;
+
+	/* SDRAMC_MR : Normal Mode */
+	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
+
+	/* SDRAMC_TR - Refresh Timer register */
+	at91_sys_write(AT91_SDRAMC_TR, CONFIG_SYS_SDRC_TR_VAL1);
+
+	/* SDRAMC_CR - Configuration register*/
+	at91_sys_write(AT91_SDRAMC_CR, CONFIG_SYS_SDRC_CR_VAL);
+
+	/* Memory Device Type */
+	at91_sys_write(AT91_SDRAMC_MDR, CONFIG_SYS_SDRC_MDR_VAL);
+
+	/* SDRAMC_MR : Precharge All */
+	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_PRECHARGE);
+
+	/* access SDRAM */
+	access_sdram();
+
+	/* SDRAMC_MR : refresh */
+	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_REFRESH);
+
+	/* access SDRAM 8 times */
+	for (i = 0; i < 8; i++)
+		access_sdram();
+
+	/* SDRAMC_MR : Load Mode Register */
+	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_LMR);
+
+	/* access SDRAM */
+	access_sdram();
+
+	/* SDRAMC_MR : Normal Mode */
+	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
+
+	/* access SDRAM */
+	access_sdram();
+
+	/* SDRAMC_TR : Refresh Timer Counter */
+	at91_sys_write(AT91_SDRAMC_TR, CONFIG_SYS_SDRC_TR_VAL2);
+
+	/* access SDRAM */
+	access_sdram();
+
+	/* User reset enable*/
+	at91_sys_write(AT91_RSTC_MR, CONFIG_SYS_RSTC_RMR_VAL);
+
+#ifdef CONFIG_SYS_MATRIX_MCFG_REMAP
+	/* MATRIX_MCFG - REMAP all masters */
+	at91_sys_write(AT91_MATRIX_MCFG0, 0x1FF);
+#endif
+
+end:
+	board_init_lowlevel_return();
+}
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
