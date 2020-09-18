Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJC1P-0004MY-GS
 for barebox@lists.infradead.org; Fri, 18 Sep 2020 08:45:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Sep 2020 10:45:32 +0200
Message-Id: <20200918084532.2794-10-s.hauer@pengutronix.de>
In-Reply-To: <20200918084532.2794-1-s.hauer@pengutronix.de>
References: <20200918084532.2794-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 9/9] ARM: Add KASan support
To: Barebox List <barebox@lists.infradead.org>

This adds KASan support to the ARM architecture. What we are doing is:

* Add __no_sanitize_address attribute to various lowlevel functions
  which do not run in a proper C environment
* Add non-instrumented variants of memset/memcpy (prefixed with '__')
* make original memcpy/memset weak symbols so strong definitions in
  lib/kasan/common.c can replace them
* Use non-instrumented memcpy in early functions
* call kasan_init()

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig              |  1 +
 arch/arm/cpu/Makefile         |  2 ++
 arch/arm/cpu/common.c         |  2 +-
 arch/arm/cpu/setupc.S         |  6 +++---
 arch/arm/cpu/start.c          |  7 +++++--
 arch/arm/include/asm/string.h |  2 ++
 arch/arm/lib32/barebox.lds.S  |  4 +++-
 arch/arm/lib32/memcpy.S       |  3 +++
 arch/arm/lib32/memset.S       |  4 +++-
 arch/arm/lib64/string.c       | 26 +++++++++++++++++++++-----
 10 files changed, 44 insertions(+), 13 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 95fd8ecfe7..57ead9a783 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -4,6 +4,7 @@ config ARM
 	select HAS_CACHE
 	select HAVE_CONFIGURABLE_TEXT_BASE if !RELOCATABLE
 	select HAVE_IMAGE_COMPRESSION
+	select HAVE_ARCH_KASAN
 	default y
 
 config ARM_LINUX
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index f7f9c30415..e7a6e3e6fb 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -9,6 +9,7 @@ AFLAGS_hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
 AFLAGS_hyp.pbl.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
 
 obj-y += start.o entry.o entry_ll$(S64).o
+KASAN_SANITIZE_start.o := n
 
 pbl-$(CONFIG_BOARD_ARM_GENERIC_DT) += board-dt-2nd.o
 pbl-$(CONFIG_BOARD_ARM_GENERIC_DT_AARCH64) += board-dt-2nd-aarch64.o
@@ -51,3 +52,4 @@ pbl-y += entry.o entry_ll$(S64).o
 pbl-y += uncompress.o
 
 obj-pbl-y += common.o sections.o
+KASAN_SANITIZE_common.o := n
diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 33f148fc0e..8cfcc8f6ce 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -120,7 +120,7 @@ void relocate_to_current_adr(void)
 		dstart += sizeof(*rel);
 	}
 
-	memset(dynsym, 0, (unsigned long)dynend - (unsigned long)dynsym);
+	__memset(dynsym, 0, (unsigned long)dynend - (unsigned long)dynsym);
 #else
 #error "Architecture not specified"
 #endif
diff --git a/arch/arm/cpu/setupc.S b/arch/arm/cpu/setupc.S
index 8ae7c89a2c..55aa105b21 100644
--- a/arch/arm/cpu/setupc.S
+++ b/arch/arm/cpu/setupc.S
@@ -21,12 +21,12 @@ ENTRY(setup_c)
 	ldr	r2,=__bss_start
 	sub	r2, r2, r0
 	add	r1, r0, r4
-	bl	memcpy			/* memcpy(_text, _text + offset, __bss_start - _text) */
+	bl	__memcpy			/* memcpy(_text, _text + offset, __bss_start - _text) */
 1:	ldr	r0, =__bss_start
 	mov	r1, #0
 	ldr	r2, =__bss_stop
 	sub	r2, r2, r0
-	bl	memset			/* clear bss */
+	bl	__memset			/* clear bss */
 	bl	sync_caches_for_execution
 	sub	lr, r5, r4		/* adjust return address to new location */
 	pop	{r4, r5}
@@ -67,7 +67,7 @@ ENTRY(relocate_to_adr)
 	sub	r7, r7, r1		/* sub address where we are actually running */
 	add	r7, r7, r0		/* add address where we are going to run */
 
-	bl	memcpy			/* copy binary */
+	bl	__memcpy			/* copy binary */
 
 	bl	sync_caches_for_execution
 
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index aeca459cb1..f48f5beea8 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -15,6 +15,7 @@
 #include <asm/unaligned.h>
 #include <asm/cache.h>
 #include <asm/mmu.h>
+#include <linux/kasan.h>
 #include <memory.h>
 #include <uncompress.h>
 #include <malloc.h>
@@ -135,7 +136,7 @@ static int barebox_memory_areas_init(void)
 }
 device_initcall(barebox_memory_areas_init);
 
-__noreturn void barebox_non_pbl_start(unsigned long membase,
+__noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
 	unsigned long endmem = membase + memsize;
@@ -233,6 +234,8 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 	pr_debug("initializing malloc pool at 0x%08lx (size 0x%08lx)\n",
 			malloc_start, malloc_end - malloc_start);
 
+	kasan_init(membase, memsize, malloc_start - (memsize >> KASAN_SHADOW_SCALE_SHIFT));
+
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
 	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
@@ -259,7 +262,7 @@ void start(unsigned long membase, unsigned long memsize, void *boarddata);
  * First function in the uncompressed image. We get here from
  * the pbl. The stack already has been set up by the pbl.
  */
-void NAKED __section(.text_entry) start(unsigned long membase,
+void NAKED __no_sanitize_address __section(.text_entry) start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
 	barebox_non_pbl_start(membase, memsize, boarddata);
diff --git a/arch/arm/include/asm/string.h b/arch/arm/include/asm/string.h
index 435647abda..fb577cfcd5 100644
--- a/arch/arm/include/asm/string.h
+++ b/arch/arm/include/asm/string.h
@@ -5,8 +5,10 @@
 
 #define __HAVE_ARCH_MEMCPY
 extern void *memcpy(void *, const void *, __kernel_size_t);
+extern void *__memcpy(void *, const void *, __kernel_size_t);
 #define __HAVE_ARCH_MEMSET
 extern void *memset(void *, int, __kernel_size_t);
+extern void *__memset(void *, int, __kernel_size_t);
 
 #endif
 
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index ed279279a2..54d9b3e381 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -77,7 +77,9 @@ SECTIONS
 	_sdata = .;
 
 	. = ALIGN(4);
-	.data : { *(.data*) }
+	.data : { *(.data*)
+		CONSTRUCTORS
+	}
 
 	.barebox_imd : { BAREBOX_IMD }
 
diff --git a/arch/arm/lib32/memcpy.S b/arch/arm/lib32/memcpy.S
index 5123691ca9..0fcdaa88e6 100644
--- a/arch/arm/lib32/memcpy.S
+++ b/arch/arm/lib32/memcpy.S
@@ -56,9 +56,12 @@
 
 /* Prototype: void *memcpy(void *dest, const void *src, size_t n); */
 
+.weak memcpy
 ENTRY(memcpy)
+ENTRY(__memcpy)
 
 #include "copy_template.S"
 
+ENDPROC(__memcpy)
 ENDPROC(memcpy)
 
diff --git a/arch/arm/lib32/memset.S b/arch/arm/lib32/memset.S
index c4d2672038..6079dd89f6 100644
--- a/arch/arm/lib32/memset.S
+++ b/arch/arm/lib32/memset.S
@@ -15,6 +15,8 @@
 	.text
 	.align	5
 
+.weak memset
+ENTRY(__memset)
 ENTRY(memset)
 	ands	r3, r0, #3		@ 1 unaligned?
 	mov	ip, r0			@ preserve r0 as return value
@@ -121,4 +123,4 @@ ENTRY(memset)
 	add	r2, r2, r3		@ 1 (r2 = r2 - (4 - r3))
 	b	1b
 ENDPROC(memset)
-
+ENDPROC(__memset)
diff --git a/arch/arm/lib64/string.c b/arch/arm/lib64/string.c
index cb26331527..a2cf09e58e 100644
--- a/arch/arm/lib64/string.c
+++ b/arch/arm/lib64/string.c
@@ -5,18 +5,34 @@
 void *__arch_memset(void *dst, int c, __kernel_size_t size);
 void *__arch_memcpy(void * dest, const void *src, size_t count);
 
-void *memset(void *dst, int c, __kernel_size_t size)
+static void *_memset(void *dst, int c, __kernel_size_t size)
 {
 	if (likely(get_cr() & CR_M))
 		return __arch_memset(dst, c, size);
 
-	return __default_memset(dst, c, size);
+	return __nokasan_default_memset(dst, c, size);
 }
 
-void *memcpy(void * dest, const void *src, size_t count)
+void __weak *memset(void *dst, int c, __kernel_size_t size)
+{
+	return _memset(dst, c, size);
+}
+
+void *__memset(void *dst, int c, __kernel_size_t size)
+	__alias(_memset);
+
+static void *_memcpy(void * dest, const void *src, size_t count)
 {
 	if (likely(get_cr() & CR_M))
 		return __arch_memcpy(dest, src, count);
 
-	return __default_memcpy(dest, src, count);
-}
\ No newline at end of file
+	return __nokasan_default_memcpy(dest, src, count);
+}
+
+void __weak *memcpy(void * dest, const void *src, size_t count)
+{
+	return _memcpy(dest, src, count);
+}
+
+void *__memcpy(void * dest, const void *src, size_t count)
+	__alias(_memcpy);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
