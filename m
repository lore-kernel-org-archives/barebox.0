Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og104.obsmtp.com ([64.18.0.178])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJN2Y-0002IH-TG
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 12:59:47 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 28 Feb 2014 12:58:52 +0000
Message-Id: <1393592335-9871-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1393592335-9871-1-git-send-email-renaud.barbier@ge.com>
References: <1393592335-9871-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/4] MPC85xx: fix memory layout to prevent corruption during
 memtest
To: barebox@lists.infradead.org

Memory regions on MPC85xx boards are incorrectly defined leading to
corruption when running memory tests. This patch updates the memory
layout of MPC85xx boards so that critical memory regions can be
correctly reserved during the memory test.

Tested on the P2020RDB and DA923RC.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/Kconfig                    |    1 -
 arch/ppc/cpu-85xx/start.S           |    3 ---
 arch/ppc/lib/board.c                |    6 +-----
 arch/ppc/mach-mpc5xxx/Kconfig       |    1 +
 arch/ppc/mach-mpc85xx/barebox.lds.S |    8 +++++---
 arch/ppc/mach-mpc85xx/cpu.c         |   11 +++++++++++
 6 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/arch/ppc/Kconfig b/arch/ppc/Kconfig
index db269dd..eaf60e0 100644
--- a/arch/ppc/Kconfig
+++ b/arch/ppc/Kconfig
@@ -3,7 +3,6 @@ config PPC
 	select HAVE_CONFIGURABLE_TEXT_BASE
 	select HAS_KALLSYMS
 	select HAS_MODULES
-	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select OFTREE
 	default y
 
diff --git a/arch/ppc/cpu-85xx/start.S b/arch/ppc/cpu-85xx/start.S
index 0402cf0..57f007b 100644
--- a/arch/ppc/cpu-85xx/start.S
+++ b/arch/ppc/cpu-85xx/start.S
@@ -879,9 +879,6 @@ relocate_code:
 	sub	r3, r3, r5
 	lwz	r5,GOT(__init_end)	/* Copy to init_end only */
 	sub	r5,r5,r4
-	lis	r10, 0xffff0000@h	/* Round down to 64KB */
-	ori	r10, r10, 0xffff0000@l
-	and	r3, r3, r10		/* Destination */
 	mr	r1, r3
 	mr	r10, r3
 	li	r6,CACHELINE_SIZE
diff --git a/arch/ppc/lib/board.c b/arch/ppc/lib/board.c
index 18d2588..3f13db9 100644
--- a/arch/ppc/lib/board.c
+++ b/arch/ppc/lib/board.c
@@ -46,11 +46,7 @@ void board_init_r (ulong end_of_ram)
 	_text_base = end_of_ram;
 #endif
 
-	/*
-	 * FIXME: 128k stack size. Is this enough? should
-	 *        it be configurable?
-	 */
-	malloc_end = (_text_base - (128 << 10)) & ~(4095);
+	malloc_end = (_text_base - STACK_SIZE) & ~(4095);
 
 	debug("malloc_end: 0x%08lx\n", malloc_end);
 	debug("TEXT_BASE after relocation: 0x%08lx\n", _text_base);
diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
index 180aa32..1ecce3a 100644
--- a/arch/ppc/mach-mpc5xxx/Kconfig
+++ b/arch/ppc/mach-mpc5xxx/Kconfig
@@ -32,6 +32,7 @@ config ARCH_MPC5200
 config MPC5xxx
 	bool
 	depends on MACH_PHYCORE_MPC5200B_TINY
+	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	default y
 
 menu "Board specific settings"
diff --git a/arch/ppc/mach-mpc85xx/barebox.lds.S b/arch/ppc/mach-mpc85xx/barebox.lds.S
index 980359e..87ab7ac 100644
--- a/arch/ppc/mach-mpc85xx/barebox.lds.S
+++ b/arch/ppc/mach-mpc85xx/barebox.lds.S
@@ -32,6 +32,8 @@ PHDRS
 SECTIONS
 {
   . = TEXT_BASE;
+   _stext = .;
+   PROVIDE (stext = .);
 
   .interp        : { *(.interp)		}
   .hash          : { *(.hash)		}
@@ -96,8 +98,6 @@ SECTIONS
     *(.dynamic*)
     CONSTRUCTORS
   }
-  _edata  =  .;
-  PROVIDE (edata = .);
 
   . = .;
   __barebox_cmd_start = .;
@@ -118,6 +118,9 @@ SECTIONS
   __ex_table : { *(__ex_table) }
   __stop___ex_table = .;
 
+  _edata  =  .;
+  PROVIDE (edata = .);
+
   . = ALIGN(256);
   __init_begin = .;
   .text.init : { *(.text.init) }
@@ -130,7 +133,6 @@ SECTIONS
   .bootpg RESET_VECTOR_ADDRESS - 0xffc :
   {
     _text = .;
-    _stext = .;
     arch/ppc/cpu-85xx/start.o	(.bootpg)
   } :text = 0xffff
 
diff --git a/arch/ppc/mach-mpc85xx/cpu.c b/arch/ppc/mach-mpc85xx/cpu.c
index e5c01fc..7c183c1 100644
--- a/arch/ppc/mach-mpc85xx/cpu.c
+++ b/arch/ppc/mach-mpc85xx/cpu.c
@@ -24,7 +24,10 @@
 
 #include <config.h>
 #include <common.h>
+#include <memory.h>
+#include <init.h>
 #include <asm/fsl_ddr_sdram.h>
+#include <asm-generic/memory_layout.h>
 #include <mach/mmu.h>
 #include <mach/immap_85xx.h>
 
@@ -81,3 +84,11 @@ phys_size_t fsl_get_effective_memsize(void)
 
 	return sdram_size;
 }
+
+static int fsl_reserve_region(void)
+{
+	request_sdram_region("stack", _text_base - STACK_SIZE,
+			STACK_SIZE);
+	return 0;
+}
+coredevice_initcall(fsl_reserve_region);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
