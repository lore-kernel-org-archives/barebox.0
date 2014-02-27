Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og112.obsmtp.com ([64.18.0.24])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ1Jf-0006Aq-Me
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 13:48:00 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 27 Feb 2014 13:46:56 +0000
Message-Id: <1393508819-3693-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1393508819-3693-1-git-send-email-renaud.barbier@ge.com>
References: <1393508819-3693-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/4] ppc: fix memory layout to prevent corruption during
 memtest
To: barebox@lists.infradead.org

Memory regions on PPC boards are incorrectly defined leading to
corruption when running memory tests. This patch updates the memory
layout of PPC boards so that critical memory regions can be correctly
reserved during the memory test.

Tested on the P2020RDB and DA923RC.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/cpu-85xx/start.S           |    3 ---
 arch/ppc/lib/board.c                |    6 +-----
 arch/ppc/mach-mpc85xx/barebox.lds.S |    8 +++++---
 include/asm-generic/memory_layout.h |    4 ++++
 4 files changed, 10 insertions(+), 11 deletions(-)

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
 
diff --git a/include/asm-generic/memory_layout.h b/include/asm-generic/memory_layout.h
index 45e0ed8..7a23db1 100644
--- a/include/asm-generic/memory_layout.h
+++ b/include/asm-generic/memory_layout.h
@@ -2,9 +2,13 @@
 #define __ASM_GENERIC_MEMORY_LAYOUT_H
 
 #ifdef CONFIG_MEMORY_LAYOUT_DEFAULT
+#ifdef CONFIG_PPC
+#define STACK_BASE ((unsigned long)&_stext - CONFIG_STACK_SIZE)
+#else
 #define MALLOC_BASE (TEXT_BASE - CONFIG_MALLOC_SIZE)
 #define STACK_BASE (TEXT_BASE - CONFIG_MALLOC_SIZE - CONFIG_STACK_SIZE)
 #endif
+#endif
 
 #ifdef CONFIG_MEMORY_LAYOUT_FIXED
 #define STACK_BASE CONFIG_STACK_BASE
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
