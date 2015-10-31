Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x229.google.com ([2607:f8b0:400e:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZsMbE-0005bJ-9E
 for barebox@lists.infradead.org; Sat, 31 Oct 2015 03:13:02 +0000
Received: by padhk11 with SMTP id hk11so90948706pad.1
 for <barebox@lists.infradead.org>; Fri, 30 Oct 2015 20:12:39 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 30 Oct 2015 20:12:23 -0700
Message-Id: <1446261143-11472-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1446261143-11472-1-git-send-email-andrew.smirnov@gmail.com>
References: <1446261143-11472-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 2/2] arm/cpu: Avoid multiple definitions of
 barebox_arm_entry
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

All versions of barebox_arm_entry (in uncompress.c, start.c and
start-pbl.c) appear to be doing exacty the same thing. So move the
definition into a separate file and use IS_ENABLED macro to avoid
re-definition.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
Changes since v2:
	- None

Changes since v1:
	- Hopefully more meaningful names for former internal symbols


 arch/arm/cpu/Makefile     |  4 ++--
 arch/arm/cpu/entry.c      | 38 +++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/entry.h      | 48 +++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/start-pbl.c  | 29 +---------------------------
 arch/arm/cpu/start.c      | 29 ++--------------------------
 arch/arm/cpu/uncompress.c | 16 +---------------
 6 files changed, 92 insertions(+), 72 deletions(-)
 create mode 100644 arch/arm/cpu/entry.c
 create mode 100644 arch/arm/cpu/entry.h

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index fb3929c..418bcab 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -1,7 +1,7 @@
 obj-y += cpu.o
 obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions.o
 obj-$(CONFIG_ARM_EXCEPTIONS) += interrupts.o
-obj-y += start.o setupc.o
+obj-y += start.o setupc.o entry.o

 #
 # Any variants can be called as start-armxyz.S
@@ -23,7 +23,7 @@ AFLAGS_pbl-cache-armv7.o       :=-Wa,-march=armv7-a
 pbl-$(CONFIG_CPU_32v7) += cache-armv7.o
 obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o

-pbl-y += setupc.o
+pbl-y += setupc.o entry.o
 pbl-$(CONFIG_PBL_SINGLE_IMAGE) += start-pbl.o
 pbl-$(CONFIG_PBL_MULTI_IMAGES) += uncompress.o

diff --git a/arch/arm/cpu/entry.c b/arch/arm/cpu/entry.c
new file mode 100644
index 0000000..3b74c6a
--- /dev/null
+++ b/arch/arm/cpu/entry.c
@@ -0,0 +1,38 @@
+#include <types.h>
+
+#include <asm/cache.h>
+
+#include "entry.h"
+
+/*
+ * Main ARM entry point. Call this with the memory region you can
+ * spare for barebox. This doesn't necessarily have to be the full
+ * SDRAM. The currently running binary can be inside or outside of
+ * this region. TEXT_BASE can be inside or outside of this
+ * region. boarddata will be preserved and can be accessed later with
+ * barebox_arm_boarddata().
+ *
+ * -> membase + memsize
+ *   STACK_SIZE              - stack
+ *   16KiB, aligned to 16KiB - First level page table if early MMU support
+ *                             is enabled
+ *   128KiB                  - early memory space
+ * -> maximum end of barebox binary
+ *
+ * Usually a TEXT_BASE of 1MiB below your lowest possible end of memory should
+ * be fine.
+ */
+
+void __naked __noreturn barebox_arm_entry(unsigned long membase,
+					  unsigned long memsize, void *boarddata)
+{
+	arm_setup_stack(membase + memsize - 16);
+	arm_early_mmu_cache_invalidate();
+
+	if (IS_ENABLED(CONFIG_PBL_MULTI_IMAGES))
+		barebox_multi_pbl_start(membase, memsize, boarddata);
+	else if (IS_ENABLED(CONFIG_PBL_SINGLE_IMAGE))
+		barebox_single_pbl_start(membase, memsize, boarddata);
+	else
+		barebox_non_pbl_start(membase, memsize, boarddata);
+}
diff --git a/arch/arm/cpu/entry.h b/arch/arm/cpu/entry.h
new file mode 100644
index 0000000..80fee57
--- /dev/null
+++ b/arch/arm/cpu/entry.h
@@ -0,0 +1,48 @@
+#ifndef __ENTRY_H__
+#define __ENTRY_H__
+
+#include <common.h>
+
+#if !defined (__PBL__)
+void __noreturn barebox_non_pbl_start(unsigned long membase,
+				      unsigned long memsize,
+				      void *boarddata);
+#else
+static inline
+void __noreturn barebox_non_pbl_start(unsigned long membase,
+				      unsigned long memsize,
+				      void *boarddata)
+{
+	hang();
+};
+#endif
+
+#if defined (__PBL__) && defined(CONFIG_PBL_MULTI_IMAGES)
+void __noreturn barebox_multi_pbl_start(unsigned long membase,
+					unsigned long memsize,
+					void *boarddata);
+#else
+static inline
+void __noreturn barebox_multi_pbl_start(unsigned long membase,
+					unsigned long memsize,
+					void *boarddata)
+{
+	hang();
+}
+#endif
+
+#if defined (__PBL__) && defined(CONFIG_PBL_SINGLE_IMAGE)
+void __noreturn barebox_single_pbl_start(unsigned long membase,
+					 unsigned long memsize,
+					 void *boarddata);
+#else
+static inline
+void __noreturn barebox_single_pbl_start(unsigned long membase,
+					 unsigned long memsize,
+					 void *boarddata)
+{
+	hang();
+}
+#endif
+
+#endif
diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index f2490fd..2075ffe 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -45,7 +45,7 @@ void __naked __section(.text_head_entry) pbl_start(void)
 extern void *input_data;
 extern void *input_data_end;

-static noinline __noreturn void __barebox_arm_entry(unsigned long membase,
+__noreturn void barebox_single_pbl_start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
 	uint32_t offset;
@@ -56,8 +56,6 @@ static noinline __noreturn void __barebox_arm_entry(unsigned long membase,

 	endmem -= STACK_SIZE; /* stack */

-	arm_early_mmu_cache_invalidate();
-
 	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE))
 		relocate_to_current_adr();

@@ -106,28 +104,3 @@ static noinline __noreturn void __barebox_arm_entry(unsigned long membase,

 	barebox(membase, memsize, boarddata);
 }
-
-/*
- * Main ARM entry point in the compressed image. Call this with the memory
- * region you can spare for barebox. This doesn't necessarily have to be the
- * full SDRAM. The currently running binary can be inside or outside of this
- * region. TEXT_BASE can be inside or outside of this region. boarddata will
- * be preserved and can be accessed later with barebox_arm_boarddata().
- *
- * -> membase + memsize
- *   STACK_SIZE              - stack
- *   16KiB, aligned to 16KiB - First level page table if early MMU support
- *                             is enabled
- *   128KiB                  - early memory space
- * -> maximum end of barebox binary
- *
- * Usually a TEXT_BASE of 1MiB below your lowest possible end of memory should
- * be fine.
- */
-void __naked __noreturn barebox_arm_entry(unsigned long membase,
-		unsigned long memsize, void *boarddata)
-{
-	arm_setup_stack(membase + memsize - 16);
-
-	__barebox_arm_entry(membase, memsize, boarddata);
-}
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index bfe08cc..8e0103b 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -65,7 +65,7 @@ void *barebox_arm_boot_dtb(void)
 		return NULL;
 }

-static noinline __noreturn void __start(unsigned long membase,
+__noreturn void barebox_non_pbl_start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
 	unsigned long endmem = membase + memsize;
@@ -162,31 +162,6 @@ void __naked __section(.text_entry) start(void)
 	barebox_arm_head();
 }

-/*
- * Main ARM entry point in the uncompressed image. Call this with the memory
- * region you can spare for barebox. This doesn't necessarily have to be the
- * full SDRAM. The currently running binary can be inside or outside of this
- * region. TEXT_BASE can be inside or outside of this region. boarddata will
- * be preserved and can be accessed later with barebox_arm_boarddata().
- *
- * -> membase + memsize
- *   STACK_SIZE              - stack
- *   16KiB, aligned to 16KiB - First level page table if early MMU support
- *                             is enabled
- * -> maximum end of barebox binary
- *
- * Usually a TEXT_BASE of 1MiB below your lowest possible end of memory should
- * be fine.
- */
-void __naked __noreturn barebox_arm_entry(unsigned long membase,
-		unsigned long memsize, void *boarddata)
-{
-	arm_setup_stack(membase + memsize - 16);
-
-	arm_early_mmu_cache_invalidate();
-
-	__start(membase, memsize, boarddata);
-}
 #else
 /*
  * First function in the uncompressed image. We get here from
@@ -195,6 +170,6 @@ void __naked __noreturn barebox_arm_entry(unsigned long membase,
 void __naked __section(.text_entry) start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
-	__start(membase, memsize, boarddata);
+	barebox_non_pbl_start(membase, memsize, boarddata);
 }
 #endif
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index b0b7c6d..dbf6b1e 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -41,7 +41,7 @@ static int __attribute__((__used__))
 	__attribute__((__section__(".image_end")))
 	__image_end_dummy = 0xdeadbeef;

-static void __noreturn noinline uncompress_start_payload(unsigned long membase,
+void __noreturn barebox_multi_pbl_start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
 	uint32_t pg_len;
@@ -52,8 +52,6 @@ static void __noreturn noinline uncompress_start_payload(unsigned long membase,
 	void *pg_start;
 	unsigned long pc = get_pc();

-	arm_early_mmu_cache_invalidate();
-
 	endmem -= STACK_SIZE; /* stack */

 	image_end = (void *)ld_var(__image_end) - get_runtime_offset();
@@ -114,15 +112,3 @@ static void __noreturn noinline uncompress_start_payload(unsigned long membase,

 	barebox(membase, memsize, boarddata);
 }
-
-/*
- * For the multi images startup process board code jumps here. We will uncompress
- * the attached barebox image and start it.
- */
-void __naked __noreturn barebox_arm_entry(unsigned long membase,
-		unsigned long memsize, void *boarddata)
-{
-	arm_setup_stack(membase + memsize - 16);
-
-	uncompress_start_payload(membase, memsize, boarddata);
-}
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
