Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og110.obsmtp.com ([64.18.0.20])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SP9LY-0007jd-8n
 for barebox@lists.infradead.org; Tue, 01 May 2012 09:26:14 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue,  1 May 2012 10:26:00 +0100
Message-Id: <1335864363-18383-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1335864363-18383-1-git-send-email-renaud.barbier@ge.com>
References: <1335864363-18383-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH V4 1/4] Preparation stage to support multiple PPC architectures
To: barebox@lists.infradead.org

arch/ppc/Kconfig is reworked to make the configuration environment
architecture neutral. All MPC5200 configuration is moved to the
MPC5200 architecture specific configuration file. These modifications
are reflected in the PCM030 board support.

arch/ppc/Makefile compilation directives are updated in preparation
for the introduction of future cpus/machines.

lib/time.c is moved to the architecture specific directory and the
building instructions updated in the Make files. The file is
cleaned up of unused code.

The definition of L1_CACHE_... is updated and CACHELINE_SIZE is
defined in ppc/include/asm/cache.h for future use by the mpc85xx.
The file mach-mpc5xxx/pci_mpc5200.c and mach-mpc5xxx/start.S are
updated accordingly.

The declaration of search_exception_table is moved in
include/asm/common.h because it is used across architectures.
mach-mpc5xxx/traps.c is also updated to reflect this change.

The definition of exception in asm/ppc_asm.tmpl is updated for future
use by the mpc85xx. The file starts.S in mach-mpc5xxx is updated
accordingly.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/Kconfig                             |   42 +-----
 arch/ppc/Makefile                            |   19 ++-
 arch/ppc/configs/pcm030_defconfig            |    3 +
 arch/ppc/include/asm/cache.h                 |   17 +--
 arch/ppc/include/asm/common.h                |    1 +
 arch/ppc/include/asm/ppc_asm.tmpl            |  206 ++++++--------------------
 arch/ppc/lib/Makefile                        |    1 -
 arch/ppc/lib/time.c                          |   74 ---------
 arch/ppc/mach-mpc5xxx/Kconfig                |   43 ++++++-
 arch/ppc/mach-mpc5xxx/Makefile               |    1 +
 arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h |    1 +
 arch/ppc/mach-mpc5xxx/pci_mpc5200.c          |    2 +-
 arch/ppc/mach-mpc5xxx/start.S                |   27 +---
 arch/ppc/mach-mpc5xxx/time.c                 |   53 +++++++
 arch/ppc/mach-mpc5xxx/traps.c                |    6 +-
 15 files changed, 181 insertions(+), 315 deletions(-)
 delete mode 100644 arch/ppc/lib/time.c
 create mode 100644 arch/ppc/mach-mpc5xxx/time.c

diff --git a/arch/ppc/Kconfig b/arch/ppc/Kconfig
index 4c7b7cd..164598f 100644
--- a/arch/ppc/Kconfig
+++ b/arch/ppc/Kconfig
@@ -1,51 +1,17 @@
-
-config BOARDINFO
-	default "Phytec Phycore mpc5200b tiny" if MACH_PHYCORE_MPC5200B_TINY
-	
-config ARCH_TEXT_BASE
-	hex
-	default 0x00000000 if RELOCATABLE
-	default 0x01000000 if MACH_PHYCORE_MPC5200B_TINY
-
 config PPC
 	bool
 	select HAVE_CONFIGURABLE_TEXT_BASE
 	select HAS_KALLSYMS
 	select HAS_MODULES
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
-	select HAVE_CONFIGURABLE_TEXT_BASE
 	default y
 
-# Uh, we should decide which one we want to use
-config ARCH_MPC5200
-	bool
-
-config MPC5200
-	bool
-
-config MPC5xxx
-	bool
-
-config CACHELINE_SIZE
-	int
-	default 32 if ARCH_MPC5200
-
-config HAS_REGINFO
-	bool
-	default y if ARCH_MPC5200
-
 choice
-	prompt "Select your board"
+	prompt "Processor type"
+
+config ARCH_MPC5XXX
+	bool "Freescale MPC5xxx"
 
-config MACH_PHYCORE_MPC5200B_TINY
-	bool "Phycore mpc5200b tiny"
-	select ARCH_MPC5200
-	select MPC5200
-	select MPC5xxx
-	select HAS_CFI
-	help
-	  Say Y here if you are using the Phytec Phycore MPC5200B Tiny
-	  board aka pcm030
 endchoice
 
 source arch/ppc/mach-mpc5xxx/Kconfig
diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index c7bf863..2d9e47f 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -1,16 +1,15 @@
 
-CPPFLAGS += -ffixed-r14 	\
+CPPFLAGS += -ffixed-r14 -m32 	\
 	-meabi -D __PPC__ -D CONFIG_PPC \
-	-fno-strict-aliasing
+	-fno-strict-aliasing -mno-spe -mspe=no
 
 ifdef CONFIG_RELOCATABLE
 CPPFLAGS += -fPIC -mrelocatable
 endif
 
 
-machine-$(CONFIG_ARCH_MPC5200)			:= mpc5200
 board-$(CONFIG_MACH_PHYCORE_MPC5200B_TINY)	:= pcm030
-cpu-$(CONFIG_ARCH_MPC5200)			:= mpc5xxx
+machine-$(CONFIG_ARCH_MPC5200)			:= mpc5xxx
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 
@@ -21,7 +20,7 @@ ifndef CONFIG_MODULES
 CPPFLAGS += -fdata-sections -ffunction-sections
 endif
 
-machdirs := $(patsubst %,arch/ppc/mach-%/,$(cpu-y))
+machdirs := $(patsubst %,arch/ppc/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
 CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
@@ -40,13 +39,19 @@ else
 BOARD  :=
 endif
 
+ifneq ($(machine-y),)
+MACH  := arch/ppc/mach-$(machine-y)/
+else
+MACH  :=
+endif
+
 ifneq ($(cpu-y),)
-CPU  := arch/ppc/mach-$(cpu-y)/
+CPU  := arch/ppc/cpu-$(cpu-y)/
 else
 CPU  :=
 endif
 
-common-y += $(BOARD) $(CPU)
+common-y += $(BOARD) $(CPU) $(MACH)
 common-y += arch/ppc/lib/
 
 lds-y += $(BOARD)/barebox.lds
diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_defconfig
index 5de1c75..c037502 100644
--- a/arch/ppc/configs/pcm030_defconfig
+++ b/arch/ppc/configs/pcm030_defconfig
@@ -32,6 +32,9 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
+CONFIG_ARCH_MPC5XXX=y
+CONFIG_MACH_PHYCORE_MPC5200B_TINY=y
+CONFIG_DRIVER_NET_MPC5200=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_ZLIB=y
diff --git a/arch/ppc/include/asm/cache.h b/arch/ppc/include/asm/cache.h
index f37af97..4f7ca86 100644
--- a/arch/ppc/include/asm/cache.h
+++ b/arch/ppc/include/asm/cache.h
@@ -6,16 +6,13 @@
 
 #include <asm/processor.h>
 
-/* bytes per L1 cache line */
-#if !defined(CONFIG_8xx) || defined(CONFIG_8260)
-#if defined(CONFIG_PPC64BRIDGE)
-#define L1_CACHE_BYTES	128
-#else
-#define	L1_CACHE_BYTES  32
-#endif /* PPC64 */
-#else
-#define	L1_CACHE_BYTES	16
-#endif /* !8xx || 8260 */
+/* bytes per L1 cache line. CPU dependent */
+#define L1_CACHE_SHIFT	5
+#define L1_CACHE_BYTES	(1 << L1_CACHE_SHIFT)
+
+#ifndef CACHELINE_SIZE
+#define CACHELINE_SIZE	L1_CACHE_BYTES
+#endif
 
 #define	L1_CACHE_ALIGN(x)       (((x)+(L1_CACHE_BYTES-1))&~(L1_CACHE_BYTES-1))
 #define	L1_CACHE_PAGES		8
diff --git a/arch/ppc/include/asm/common.h b/arch/ppc/include/asm/common.h
index b375d07..045817b 100644
--- a/arch/ppc/include/asm/common.h
+++ b/arch/ppc/include/asm/common.h
@@ -31,4 +31,5 @@ static inline unsigned long get_pc(void)
 	return pc;
 }
 
+extern unsigned long search_exception_table(unsigned long);
 #endif /* __ASM_COMMON_H */
diff --git a/arch/ppc/include/asm/ppc_asm.tmpl b/arch/ppc/include/asm/ppc_asm.tmpl
index 3e47e82..afd813a 100644
--- a/arch/ppc/include/asm/ppc_asm.tmpl
+++ b/arch/ppc/include/asm/ppc_asm.tmpl
@@ -28,8 +28,7 @@
 #ifndef	__PPC_ASM_TMPL__
 #define __PPC_ASM_TMPL__
 
-/***************************************************************************
- *
+/*
  * These definitions simplify the ugly declarations necessary for GOT
  * definitions.
  *
@@ -58,10 +57,7 @@
 
 #define GOT(NAME)		.L_ ## NAME (r14)
 
-
-/***************************************************************************
- * Register names
- */
+/* Register names */
 #define	r0	0
 #define	r1	1
 #define	r2	2
@@ -95,99 +91,18 @@
 #define	r30	30
 #define	r31	31
 
-
-#if defined(CONFIG_8xx) || defined(CONFIG_MPC824X)
-
-/* Some special registers */
-
-#define ICR	148	/* Interrupt Cause Register (37-44) */
-#define DER	149
-#define COUNTA	150	/* Breakpoint Counter	    (37-44) */
-#define COUNTB	151	/* Breakpoint Counter	    (37-44) */
-#define LCTRL1	156	/* Load/Store Support	    (37-40) */
-#define LCTRL2	157	/* Load/Store Support	    (37-41) */
-#define ICTRL	158
-
-#endif	/* CONFIG_8xx, CONFIG_MPC824X */
-
-
-#if  defined(CONFIG_5xx)
-/* Some special purpose registers */
-#define DER	149		/* Debug Enable Register	    	*/
-#define COUNTA	150		/* Breakpoint Counter	    	 	*/
-#define COUNTB	151		/* Breakpoint Counter	    	 	*/
-#define LCTRL1	156		/* Load/Store Support	    	 	*/
-#define LCTRL2	157		/* Load/Store Support	    	 	*/
-#define ICTRL	158		/* I-Bus Support Control Register	*/
-#define EID	81
-#endif	/* CONFIG_5xx */
-
-#if defined(CONFIG_8xx)
-
-/* Registers in the processor's internal memory map that we use.
-*/
-#define SYPCR	0x00000004
-#define BR0	0x00000100
-#define OR0	0x00000104
-#define BR1	0x00000108
-#define OR1	0x0000010c
-#define BR2	0x00000110
-#define OR2	0x00000114
-#define BR3	0x00000118
-#define OR3	0x0000011c
-#define BR4	0x00000120
-#define OR4	0x00000124
-
-#define MAR	0x00000164
-#define MCR	0x00000168
-#define MAMR	0x00000170
-#define MBMR	0x00000174
-#define MSTAT	0x00000178
-#define MPTPR	0x0000017a
-#define MDR	0x0000017c
-
-#define TBSCR	0x00000200
-#define TBREFF0	0x00000204
-
-#define PLPRCR	0x00000284
-
-#elif defined(CONFIG_8260)
-
-#define HID2		1011
-
-#define HID0_IFEM	(1<<7)
-
-#define HID0_ICE_BITPOS	16
-#define HID0_DCE_BITPOS	17
-
-#define IM_REGBASE	0x10000
-#define IM_SYPCR	(IM_REGBASE+0x0004)
-#define IM_SWSR		(IM_REGBASE+0x000e)
-#define IM_BR0		(IM_REGBASE+0x0100)
-#define IM_OR0		(IM_REGBASE+0x0104)
-#define IM_BR1		(IM_REGBASE+0x0108)
-#define IM_OR1		(IM_REGBASE+0x010c)
-#define IM_BR2		(IM_REGBASE+0x0110)
-#define IM_OR2		(IM_REGBASE+0x0114)
-#define IM_MPTPR	(IM_REGBASE+0x0184)
-#define IM_PSDMR	(IM_REGBASE+0x0190)
-#define IM_PSRT		(IM_REGBASE+0x019c)
-#define IM_IMMR		(IM_REGBASE+0x01a8)
-#define IM_SCCR		(IM_REGBASE+0x0c80)
-
-#elif defined(CONFIG_MPC5xxx) || defined(CONFIG_MPC8220)
-
-#define HID0_ICE_BITPOS	16
-#define HID0_DCE_BITPOS	17
-
-#endif
-
 #define curptr r2
 
 #define SYNC \
 	sync; \
 	isync
 
+#if defined(CONFIG_MPC5xxx) || defined(CONFIG_MPC8220)
+
+#define HID0_ICE_BITPOS 16
+#define HID0_DCE_BITPOS 17
+
+#endif
 /*
  * Macros for storing registers into and loading registers from
  * exception frames.
@@ -217,7 +132,7 @@
  * We assume sprg3 has the physical address of the current
  * task's thread_struct.
  */
-#define EXCEPTION_PROLOG	\
+#define EXCEPTION_PROLOG(reg1, reg2)	\
 	mtspr	SPRG0,r20;	\
 	mtspr	SPRG1,r21;	\
 	mfcr	r20;		\
@@ -235,8 +150,10 @@
 	stw	r22,_CTR(r21);	\
 	mfspr	r20,XER;	\
 	stw	r20,_XER(r21);	\
-	mfspr	r22,SRR0;	\
-	mfspr	r23,SRR1;	\
+	mfspr	r20, DAR_DEAR;	\
+	stw	r20,_DAR(r21);	\
+	mfspr	r22,reg1;	\
+	mfspr	r23,reg2;	\
 	stw	r0,GPR0(r21);	\
 	stw	r1,GPR1(r21);	\
 	stw	r2,GPR2(r21);	\
@@ -249,74 +166,49 @@
  */
 
 /*
- * Critical exception entry code.  This is just like the other exception
- * code except that it uses SRR2 and SRR3 instead of SRR0 and SRR1.
- */
-#define CRITICAL_EXCEPTION_PROLOG       \
-	mtspr   SPRG0,r20;      \
-	mtspr   SPRG1,r21;      \
-	mfcr    r20;            \
-	subi    r21,r1,INT_FRAME_SIZE+STACK_UNDERHEAD;  /* alloc exc. frame */\
-	stw     r20,_CCR(r21);          /* save registers */ \
-	stw     r22,GPR22(r21); \
-	stw     r23,GPR23(r21); \
-	mfspr   r20,SPRG0;      \
-	stw     r20,GPR20(r21); \
-	mfspr   r22,SPRG1;      \
-	stw     r22,GPR21(r21); \
-	mflr    r20;            \
-	stw     r20,_LINK(r21); \
-	mfctr   r22;            \
-	stw     r22,_CTR(r21);  \
-	mfspr   r20,XER;        \
-	stw     r20,_XER(r21);  \
-	mfspr   r22,990;        /* SRR2 */      \
-	mfspr   r23,991;        /* SRR3 */      \
-	stw     r0,GPR0(r21);   \
-	stw     r1,GPR1(r21);   \
-	stw     r2,GPR2(r21);   \
-	stw     r1,0(r21);      \
-	mr      r1,r21;                 /* set new kernel sp */ \
-	SAVE_4GPRS(3, r21);
-/*
- * Note: code which follows this uses cr0.eq (set if from kernel),
- * r21, r22 (SRR2), and r23 (SRR3).
- */
-
-/*
  * Exception vectors.
  *
  * The data words for `hdlr' and `int_return' are initialized with
  * OFFSET values only; they must be relocated first before they can
  * be used!
  */
-#define STD_EXCEPTION(n, label, hdlr)			\
-	. = n;						\
-label:							\
-	EXCEPTION_PROLOG;				\
-	lwz	r3,GOT(transfer_to_handler);		\
-	mtlr	r3;					\
-	addi	r3,r1,STACK_FRAME_OVERHEAD;		\
-	li	r20,MSR_KERNEL;				\
+#define COPY_EE(d, s)		rlwimi d,s,0,16,16
+#define NOCOPY(d, s)
+#define EXC_XFER_TEMPLATE(label, hdlr, msr, copyee)	\
+	bl	1f;					\
+1:	mflr    r20;					\
+	lwz	r20,(.L_ ## label)-1b+8(r20);		\
+	mtlr	r20;					\
+	li	r20,msr;				\
+	copyee(r20,r23);				\
 	rlwimi	r20,r23,0,25,25;			\
-	blrl	; 					\
+	blrl;						\
 .L_ ## label :						\
-	.long	hdlr - _start + EXC_OFF_SYS_RESET;	\
-	.long	int_return - _start + EXC_OFF_SYS_RESET
-
-
-#define CRIT_EXCEPTION(n, label, hdlr)                  \
-	. = n;                                          \
-label:                                                  \
-	CRITICAL_EXCEPTION_PROLOG;                      \
-	lwz     r3,GOT(transfer_to_handler);            \
-	mtlr    r3;                                     \
-	addi    r3,r1,STACK_FRAME_OVERHEAD;             \
-	li      r20,(MSR_KERNEL & ~(MSR_ME|MSR_DE|MSR_CE)); \
-	rlwimi  r20,r23,0,25,25;                        \
-	blrl    ;                                       \
-.L_ ## label :                                          \
-	.long   hdlr - _start + EXC_OFF_SYS_RESET;      \
-	.long   crit_return - _start + EXC_OFF_SYS_RESET
+	.long	hdlr - _start + _START_OFFSET;		\
+	.long	int_return - _start + _START_OFFSET;	\
+	.long	transfer_to_handler - _start + _START_OFFSET
+
+#define STD_EXCEPTION(n, label, hdlr)				\
+	. = n;							\
+label:								\
+	EXCEPTION_PROLOG(SRR0, SRR1);				\
+	addi	r3,r1,STACK_FRAME_OVERHEAD;			\
+	EXC_XFER_TEMPLATE(label, hdlr, MSR_KERNEL, NOCOPY)	\
+
+#define CRIT_EXCEPTION(n, label, hdlr)				\
+	. = n;							\
+label:								\
+	EXCEPTION_PROLOG(CSRR0, CSRR1);				\
+	addi	r3,r1,STACK_FRAME_OVERHEAD;			\
+	EXC_XFER_TEMPLATE(label, hdlr,				\
+	MSR_KERNEL & ~(MSR_ME|MSR_DE|MSR_CE), NOCOPY)		\
+
+#define MCK_EXCEPTION(n, label, hdlr)				\
+	. = n;							\
+label:								\
+	EXCEPTION_PROLOG(MCSRR0, MCSRR1);			\
+	addi	r3,r1,STACK_FRAME_OVERHEAD;			\
+	EXC_XFER_TEMPLATE(label, hdlr,				\
+	MSR_KERNEL & ~(MSR_ME|MSR_DE|MSR_CE), NOCOPY)		\
 
 #endif	/* __PPC_ASM_TMPL__ */
diff --git a/arch/ppc/lib/Makefile b/arch/ppc/lib/Makefile
index 9e389b7..0f5e017 100644
--- a/arch/ppc/lib/Makefile
+++ b/arch/ppc/lib/Makefile
@@ -4,7 +4,6 @@ obj-y += extable.o
 obj-y += kgdb.o
 obj-y += ppcstring.o
 obj-y += ticks.o
-obj-y += time.o
 obj-y += misc.o
 obj-$(CONFIG_CMD_BOOTM) += ppclinux.o
 obj-$(CONFIG_MODULES) += module.o
diff --git a/arch/ppc/lib/time.c b/arch/ppc/lib/time.c
deleted file mode 100644
index 04c71df..0000000
--- a/arch/ppc/lib/time.c
+++ /dev/null
@@ -1,74 +0,0 @@
-/*
- * (C) Copyright 2000, 2001
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
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
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#include <common.h>
-#include <clock.h>
-#include <init.h>
-#include <mach/clocks.h>
-#include <asm/common.h>
-
-/* ------------------------------------------------------------------------- */
-
-static int init_timebase (void)
-{
-#if defined(CONFIG_5xx) || defined(CONFIG_8xx)
-	volatile immap_t *immap = (immap_t *) CFG_IMMR;
-
-	/* unlock */
-	immap->im_sitk.sitk_tbk = KAPWR_KEY;
-#endif
-
-	/* reset */
-	asm ("li 3,0 ; mttbu 3 ; mttbl 3 ;");
-
-#if defined(CONFIG_5xx) || defined(CONFIG_8xx)
-	/* enable */
-	immap->im_sit.sit_tbscr |= TBSCR_TBE;
-#endif
-	return (0);
-}
-/* ------------------------------------------------------------------------- */
-
-uint64_t ppc_clocksource_read(void)
-{
-	return get_ticks();
-}
-
-static struct clocksource cs = {
-	.read	= ppc_clocksource_read,
-	.mask	= CLOCKSOURCE_MASK(32),
-	.shift	= 15,
-};
-
-static int clocksource_init (void)
-{
-	init_timebase();
-
-	cs.mult = clocksource_hz2mult(get_timebase_clock(), cs.shift);
-
-	init_clock(&cs);
-
-	return 0;
-}
-
-core_initcall(clocksource_init);
diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
index 632fb85..db4f391 100644
--- a/arch/ppc/mach-mpc5xxx/Kconfig
+++ b/arch/ppc/mach-mpc5xxx/Kconfig
@@ -1,4 +1,44 @@
-menu "Board specific settings       "
+if ARCH_MPC5XXX
+
+config BOARDINFO
+	default "Phytec Phycore mpc5200b tiny" if MACH_PHYCORE_MPC5200B_TINY
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x00000000 if RELOCATABLE
+	default 0x01000000 if MACH_PHYCORE_MPC5200B_TINY
+
+config HAS_REGINFO
+	bool
+	default y if ARCH_MPC5200
+
+choice
+	prompt "Select your board"
+
+config MACH_PHYCORE_MPC5200B_TINY
+	bool "Phycore mpc5200b tiny"
+	select HAS_CFI
+	help
+	  Say Y here if you are using the Phytec Phycore MPC5200B Tiny
+	  board aka pcm030.
+endchoice
+
+config MPC5200
+	bool
+	depends on MACH_PHYCORE_MPC5200B_TINY
+	default y
+
+config ARCH_MPC5200
+	bool
+	depends on MACH_PHYCORE_MPC5200B_TINY
+	default y
+
+config MPC5xxx
+	bool
+	depends on MACH_PHYCORE_MPC5200B_TINY
+	default y
+
+menu "Board specific settings"
 
 config MACH_PHYCORE_MPC5200B_TINY_REV
 	int "Board Revision"
@@ -10,3 +50,4 @@ config MACH_PHYCORE_MPC5200B_TINY_REV
 	  old board you should set this option to 1
 
 endmenu
+endif
diff --git a/arch/ppc/mach-mpc5xxx/Makefile b/arch/ppc/mach-mpc5xxx/Makefile
index be68c99..c532a6d 100644
--- a/arch/ppc/mach-mpc5xxx/Makefile
+++ b/arch/ppc/mach-mpc5xxx/Makefile
@@ -3,6 +3,7 @@ obj-y				+= cpu_init.o
 obj-y				+= loadtask.o
 obj-y				+= speed.o
 obj-y				+= traps.o
+obj-y				+= time.o
 extra-y				+= start.o
 obj-$(CONFIG_MPC5200)		+= firmware_sc_task_bestcomm.impl.o
 obj-$(CONFIG_REGINFO)		+= reginfo.o
diff --git a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
index cef02d8..e7e0204 100644
--- a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
+++ b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
@@ -39,6 +39,7 @@
 
 /* Exception offsets (PowerPC standard) */
 #define EXC_OFF_SYS_RESET	0x0100
+#define _START_OFFSET		EXC_OFF_SYS_RESET
 
 #define CFG_MBAR 0xf0000000
 
diff --git a/arch/ppc/mach-mpc5xxx/pci_mpc5200.c b/arch/ppc/mach-mpc5xxx/pci_mpc5200.c
index d8f3b00..625d17f 100644
--- a/arch/ppc/mach-mpc5xxx/pci_mpc5200.c
+++ b/arch/ppc/mach-mpc5xxx/pci_mpc5200.c
@@ -125,7 +125,7 @@ void pci_mpc5xxx_init (struct pci_controller *hose)
 
 	/* Set cache line size */
 	*(vu_long *)MPC5XXX_PCI_CFG = (*(vu_long *)MPC5XXX_PCI_CFG & ~0xff) |
-		(CONFIG_CACHELINE_SIZE / 4);
+		(CACHELINE_SIZE / 4);
 
 	/* Map MBAR to PCI space */
 	*(vu_long *)MPC5XXX_PCI_BAR0 = CFG_MBAR;
diff --git a/arch/ppc/mach-mpc5xxx/start.S b/arch/ppc/mach-mpc5xxx/start.S
index 7a4c16b..e098a87 100644
--- a/arch/ppc/mach-mpc5xxx/start.S
+++ b/arch/ppc/mach-mpc5xxx/start.S
@@ -143,36 +143,21 @@ _start_of_vectors:
 /* Alignment exception. */
 	. = 0x600
 Alignment:
-	EXCEPTION_PROLOG
+	EXCEPTION_PROLOG(SRR0, SRR1)
 	mfspr	r4,DAR
 	stw	r4,_DAR(r21)
 	mfspr	r5,DSISR
 	stw	r5,_DSISR(r21)
 	addi	r3,r1,STACK_FRAME_OVERHEAD
-	li	r20,MSR_KERNEL
-	rlwimi	r20,r23,0,16,16		/* copy EE bit from saved MSR */
-	rlwimi	r20,r23,0,25,25		/* copy IP bit from saved MSR */
-	lwz	r6,GOT(transfer_to_handler)
-	mtlr	r6
-	blrl
-.L_Alignment:
-	.long	AlignmentException - _start + EXC_OFF_SYS_RESET
-	.long	int_return - _start + EXC_OFF_SYS_RESET
+	EXC_XFER_TEMPLATE(Alignment, AlignmentException, MSR_KERNEL, COPY_EE)
 
 /* Program check exception */
 	. = 0x700
 ProgramCheck:
-	EXCEPTION_PROLOG
+	EXCEPTION_PROLOG(SRR0, SRR1)
 	addi	r3,r1,STACK_FRAME_OVERHEAD
-	li	r20,MSR_KERNEL
-	rlwimi	r20,r23,0,16,16		/* copy EE bit from saved MSR */
-	rlwimi	r20,r23,0,25,25		/* copy IP bit from saved MSR */
-	lwz	r6,GOT(transfer_to_handler)
-	mtlr	r6
-	blrl
-.L_ProgramCheck:
-	.long	ProgramCheckException - _start + EXC_OFF_SYS_RESET
-	.long	int_return - _start + EXC_OFF_SYS_RESET
+	EXC_XFER_TEMPLATE(ProgramCheck, ProgramCheckException,
+	MSR_KERNEL, COPY_EE)
 
 	STD_EXCEPTION(0x800, FPUnavailable, UnknownException)
 
@@ -287,7 +272,7 @@ before_relocate:
 	 *
 	 */
 
-	li	r6, CONFIG_CACHELINE_SIZE		/* Cache Line Size	*/
+	li	r6, CACHELINE_SIZE
 
 	/*
 	 * Fix GOT pointer:
diff --git a/arch/ppc/mach-mpc5xxx/time.c b/arch/ppc/mach-mpc5xxx/time.c
new file mode 100644
index 0000000..b35859a
--- /dev/null
+++ b/arch/ppc/mach-mpc5xxx/time.c
@@ -0,0 +1,53 @@
+/*
+ * (C) Copyright 2000, 2001
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
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
+
+#include <common.h>
+#include <clock.h>
+#include <init.h>
+#include <mach/clocks.h>
+#include <asm/common.h>
+
+uint64_t ppc_clocksource_read(void)
+{
+	return get_ticks();
+}
+
+static struct clocksource cs = {
+	.read	= ppc_clocksource_read,
+	.mask	= CLOCKSOURCE_MASK(32),
+	.shift	= 15,
+};
+
+static int clocksource_init(void)
+{
+	/* reset time base */
+	asm ("li 3,0 ; mttbu 3 ; mttbl 3 ;");
+
+	cs.mult = clocksource_hz2mult(get_timebase_clock(), cs.shift);
+
+	init_clock(&cs);
+
+	return 0;
+}
+
+core_initcall(clocksource_init);
diff --git a/arch/ppc/mach-mpc5xxx/traps.c b/arch/ppc/mach-mpc5xxx/traps.c
index 47d1406..806b976 100644
--- a/arch/ppc/mach-mpc5xxx/traps.c
+++ b/arch/ppc/mach-mpc5xxx/traps.c
@@ -41,11 +41,7 @@
 int (*debugger_exception_handler)(struct pt_regs *) = 0;
 #endif
 
-/* Returns 0 if exception not found and fixup otherwise.  */
-extern unsigned long search_exception_table(unsigned long);
-
-/* THIS NEEDS CHANGING to use the board info structure.
-*/
+/* THIS NEEDS CHANGING to use the board info structure.  */
 #define END_OF_MEM	0x02000000
 
 /*
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
