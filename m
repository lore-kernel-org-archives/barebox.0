Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22e.google.com ([2607:f8b0:400e:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YsjIq-0000KZ-6n
 for barebox@lists.infradead.org; Thu, 14 May 2015 02:55:19 +0000
Received: by pabtp1 with SMTP id tp1so69415328pab.2
 for <barebox@lists.infradead.org>; Wed, 13 May 2015 19:54:53 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 May 2015 19:54:27 -0700
Message-Id: <1431572067-4038-10-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
References: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/10] ARM: pbl: Add an option to validate DRAM
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add an option to perform DRAM region validation before using it. The
framework allows individual boards to set up a memory validaion hook
that would be called prior to Barebox using that region of memory.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/start.c               | 14 +-----------
 arch/arm/cpu/uncompress.c          | 32 ++++++++++++++++++++++++---
 arch/arm/include/asm/barebox-arm.h | 28 ++++++++++++++++++++++++
 common/Kconfig                     |  8 +++++++
 common/Makefile                    |  2 +-
 include/common.h                   |  1 +
 include/memtest.h                  | 19 ++++++++++++++++
 lib/Makefile                       |  6 ++++++
 pbl/misc.c                         | 44 ++++++++++++++++++++++++++++++++++++++
 9 files changed, 137 insertions(+), 17 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 304ed0c..ee7eb00 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -105,19 +105,7 @@ static noinline __noreturn void __start(unsigned long membase,
 	else
 		malloc_end = (unsigned long)_text;

-	/*
-	 * Maximum malloc space is the Kconfig value if given
-	 * or 1GB.
-	 */
-	if (MALLOC_SIZE > 0) {
-		malloc_start = malloc_end - MALLOC_SIZE;
-		if (malloc_start < membase)
-			malloc_start = membase;
-	} else {
-		malloc_start = malloc_end - (malloc_end - membase) / 2;
-		if (malloc_end - malloc_start > SZ_1G)
-			malloc_start = malloc_end - SZ_1G;
-	}
+	malloc_start = arm_get_malloc_start(membase, malloc_end);

 	pr_debug("initializing malloc pool at 0x%08lx (size 0x%08lx)\n",
 			malloc_start, malloc_end - malloc_start);
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index b0b7c6d..853d2a3 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -20,6 +20,7 @@
 #define pr_fmt(fmt) "uncompress.c: " fmt

 #include <common.h>
+#include <memtest.h>
 #include <init.h>
 #include <linux/sizes.h>
 #include <pbl.h>
@@ -47,6 +48,7 @@ static void __noreturn noinline uncompress_start_payload(unsigned long membase,
 	uint32_t pg_len;
 	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
 	uint32_t endmem = membase + memsize;
+	unsigned long malloc_start, malloc_end;
 	unsigned long barebox_base;
 	uint32_t *image_end;
 	void *pg_start;
@@ -64,10 +66,14 @@ static void __noreturn noinline uncompress_start_payload(unsigned long membase,
 		 * to the current address. Otherwise it may be a readonly location.
 		 * Copy and relocate to the start of the memory in this case.
 		 */
-		if (pc > membase && pc < membase + memsize)
+		if (pc > membase && pc < membase + memsize) {
 			relocate_to_current_adr();
-		else
+		} else {
+			validate_memory_range("validating pbl relocation area",
+					      membase,
+					      membase + arm_barebox_image_size() - 1);
 			relocate_to_adr(membase);
+		}
 	}

 	if (IS_ENABLED(CONFIG_RELOCATABLE))
@@ -77,6 +83,21 @@ static void __noreturn noinline uncompress_start_payload(unsigned long membase,

 	setup_c();

+	validate_memory_range("validating barebox decompression area",
+			      barebox_base, endmem - 1);
+
+	/*
+	  We know that when we give control to __start function of
+	  uncompressed image _text would be within the boundaries of
+	  (membase, membase + memsize) so the malloc_end variable
+	  would be set to _text
+	 */
+	malloc_end   = barebox_base;
+	malloc_start = arm_get_malloc_start(membase, malloc_end);
+
+	validate_memory_range("validating malloc area",
+			      malloc_start, malloc_end - 1);
+
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);

 	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
@@ -122,7 +143,12 @@ static void __noreturn noinline uncompress_start_payload(unsigned long membase,
 void __naked __noreturn barebox_arm_entry(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
-	arm_setup_stack(membase + memsize - 16);
+	unsigned long stack_end = membase + memsize - 16;
+
+	validate_memory_range("validating stack area",
+			      membase + memsize - STACK_SIZE, stack_end);
+
+	arm_setup_stack(stack_end);

 	uncompress_start_payload(membase, memsize, boarddata);
 }
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index dbc8aaa..f577df7 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -83,6 +83,34 @@ static inline unsigned long arm_barebox_image_place(unsigned long endmem)
 	return endmem;
 }

+static inline unsigned long arm_barebox_image_size(void)
+{
+	/* We assume that 1G is significantly more that Barebox will
+	 * ever try to reserve */
+	return SZ_1G - arm_barebox_image_place(SZ_1G);
+}
+
+static inline unsigned long arm_get_malloc_start(unsigned long membase,
+						 unsigned long malloc_end)
+{
+	unsigned long malloc_start;
+	/*
+	 * Maximum malloc space is the Kconfig value if given
+	 * or 1GB.
+	 */
+	if (MALLOC_SIZE > 0) {
+		malloc_start = malloc_end - MALLOC_SIZE;
+		if (malloc_start < membase)
+			malloc_start = membase;
+	} else {
+		malloc_start = malloc_end - (malloc_end - membase) / 2;
+		if (malloc_end - malloc_start > SZ_1G)
+			malloc_start = malloc_end - SZ_1G;
+	}
+
+	return malloc_start;
+}
+
 #define ENTRY_FUNCTION(name, arg0, arg1, arg2)				\
 	static void __##name(uint32_t, uint32_t, uint32_t);		\
 									\
diff --git a/common/Kconfig b/common/Kconfig
index 4032dcd..5d40dee 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -246,6 +246,14 @@ config MALLOC_SIZE
 	prompt "malloc area size"
 endmenu

+config MEMORY_VALIDATION
+       bool "Validate regions of memory prior to using them"
+       select PBL_CONSOLE
+       help
+         select this option if you want Barebox to perform memory test
+         on regions of DRAM memory that it is about to use for the
+         first time
+
 config BROKEN
 	bool

diff --git a/common/Makefile b/common/Makefile
index 2738238..a634f0d 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -17,6 +17,7 @@ obj-$(CONFIG_BLSPEC)		+= blspec.o
 obj-$(CONFIG_BOOTM)		+= bootm.o
 obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 obj-$(CONFIG_CMD_MEMTEST)	+= memtest.o
+pbl-$(CONFIG_MEMORY_VALIDATION)	+= memtest.o
 obj-$(CONFIG_COMMAND_SUPPORT)	+= command.o
 obj-$(CONFIG_CONSOLE_FULL)	+= console.o
 obj-$(CONFIG_CONSOLE_SIMPLE)	+= console_simple.o
@@ -90,4 +91,3 @@ include/generated/compile.h: FORCE
 	@$($(quiet)chk_compile.h)
 	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/mkcompile_h $@ \
 	"$(UTS_MACHINE)" "$(CC) $(KBUILD_CFLAGS)"
-
diff --git a/include/common.h b/include/common.h
index 86e755d..021637a 100644
--- a/include/common.h
+++ b/include/common.h
@@ -209,6 +209,7 @@ static inline void *get_true_address(const void *ptr)
 	return (void *)address;
 }
 #else
+
 static inline void *get_true_address(const void *ptr)
 {
 	return (void *)ptr;
diff --git a/include/memtest.h b/include/memtest.h
index a337be8..4a426c3 100644
--- a/include/memtest.h
+++ b/include/memtest.h
@@ -8,7 +8,26 @@ struct mem_test_resource {
 	struct list_head list;
 };

+typedef int (*mem_test_handler_t)(resource_size_t _start, resource_size_t _end);
+
 int mem_test(resource_size_t _start,
 		resource_size_t _end, int bus_only);

+#ifdef CONFIG_MEMORY_VALIDATION
+void validate_memory_range(const char *message,
+			   resource_size_t start,
+			   resource_size_t end);
+void set_memory_validation_handler(mem_test_handler_t handler);
+#else
+static inline void validate_memory_range(const char *message,
+					 resource_size_t start,
+					 resource_size_t end)
+{
+}
+
+static inline void set_memory_validation_handler(mem_test_handler_t handler)
+{
+}
+#endif
+
 #endif /* __MEMTEST_H */
diff --git a/lib/Makefile b/lib/Makefile
index 6a3e9fd..3da2c27 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -35,6 +35,12 @@ obj-y			+= random.o
 obj-y			+= lzo/
 obj-$(CONFIG_LZ4_DECOMPRESS) += lz4/
 obj-y			+= show_progress.o
+pbl-$(CONFIG_MEMORY_VALIDATION) += show_progress.o
+# The code is going to be used before MMU is set up and unaligned
+# access will cause an exception(there is an unaligned access to the
+# contenst of 'spinchr' in show_progress())
+CFLAGS_pbl-show_progress.o = -mno-unaligned-access
+
 obj-$(CONFIG_LZO_DECOMPRESS)		+= decompress_unlzo.o
 obj-$(CONFIG_LZ4_DECOMPRESS) += decompress_unlz4.o
 obj-$(CONFIG_PROCESS_ESCAPE_SEQUENCE)	+= process_escape_sequence.o
diff --git a/pbl/misc.c b/pbl/misc.c
index 3d5a881..2b446f5 100644
--- a/pbl/misc.c
+++ b/pbl/misc.c
@@ -1,8 +1,10 @@
 #include <common.h>
 #include <init.h>
+#include <memtest.h>
 #include <linux/types.h>
 #include <linux/string.h>
 #include <linux/ctype.h>
+#include <debug_ll.h>

 void __noreturn __hang(void)
 {
@@ -26,6 +28,48 @@ void set_hang_handler(hang_handler_t handler)
 	*__hang_handler_p = handler;
 }

+#ifdef CONFIG_MEMORY_VALIDATION
+
+static mem_test_handler_t mem_test_handler = NULL;
+
+void validate_memory_range(const char *message,
+			   resource_size_t start,
+			   resource_size_t end)
+{
+	int ret;
+	mem_test_handler_t *__mem_test_handler_p = get_true_address(&mem_test_handler);
+	mem_test_handler_t __mem_test_handler    = get_true_address(*__mem_test_handler_p);
+
+	if (__mem_test_handler) {
+		message = get_true_address(message);
+
+		puts_ll(message);
+		putc_ll(' ');
+		putc_ll('[');
+		puthex_ll(start);
+		putc_ll(' ');
+		putc_ll('-');
+		putc_ll(' ');
+		puthex_ll(end);
+		putc_ll(']');
+		putc_ll('\r');
+		putc_ll('\n');
+
+		ret = __mem_test_handler(start, end);
+
+		if (ret < 0)
+			hang();
+	}
+}
+
+void set_memory_validation_handler(mem_test_handler_t handler)
+{
+	mem_test_handler_t *__mem_test_handler_p = get_true_address(&mem_test_handler);
+
+	*__mem_test_handler_p = handler;
+}
+#endif
+
 void __noreturn panic(const char *fmt, ...)
 {
 	while(1);
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
