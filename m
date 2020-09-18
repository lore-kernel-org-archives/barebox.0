Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJC1X-0004Pm-83
 for barebox@lists.infradead.org; Fri, 18 Sep 2020 08:45:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Sep 2020 10:45:31 +0200
Message-Id: <20200918084532.2794-9-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] Add KASan support
To: Barebox List <barebox@lists.infradead.org>

KernelAddressSANitizer (KASAN) is a dynamic memory error detector. It
provides a fast and comprehensive solution for finding use-after-free
and out-of-bounds bugs.

This adds support for KASan to barebox. It is basically a stripped down
version taken from the Linux Kernel as of v5.9-rc1.

Quoting the initial Linux commit 0b24becc810d ("kasan: add kernel address
sanitizer infrastructure") describes what KASan does:

|    KASAN uses compile-time instrumentation for checking every memory access,
|    therefore GCC > v4.9.2 required.  v4.9.2 almost works, but has issues with
|    putting symbol aliases into the wrong section, which breaks kasan
|    instrumentation of globals.
|
|    Basic idea:
|
|    The main idea of KASAN is to use shadow memory to record whether each byte
|    of memory is safe to access or not, and use compiler's instrumentation to
|    check the shadow memory on each memory access.
|
|    Address sanitizer uses 1/8 of the memory addressable in kernel for shadow
|    memory and uses direct mapping with a scale and offset to translate a
|    memory address to its corresponding shadow address.
|
|    For every 8 bytes there is one corresponding byte of shadow memory.
|    The following encoding used for each shadow byte: 0 means that all 8 bytes
|    of the corresponding memory region are valid for access; k (1 <= k <= 7)
|    means that the first k bytes are valid for access, and other (8 - k) bytes
|    are not; Any negative value indicates that the entire 8-bytes are
|    inaccessible.  Different negative values used to distinguish between
|    different kinds of inaccessible memory (redzones, freed memory) (see
|    mm/kasan/kasan.h).
|
|    To be able to detect accesses to bad memory we need a special compiler.
|    Such compiler inserts a specific function calls (__asan_load*(addr),
|    __asan_store*(addr)) before each memory access of size 1, 2, 4, 8 or 16.
|
|    These functions check whether memory region is valid to access or not by
|    checking corresponding shadow memory.  If access is not valid an error
|    printed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile                   |   6 +-
 common/Makefile            |   1 +
 common/tlsf.c              |  34 +++-
 include/linux/kasan.h      |  89 +++++++++++
 lib/Kconfig                |   2 +
 lib/Makefile               |   1 +
 lib/kasan/Kconfig          |  16 ++
 lib/kasan/Makefile         |  14 ++
 lib/kasan/common.c         | 108 +++++++++++++
 lib/kasan/generic.c        | 315 +++++++++++++++++++++++++++++++++++++
 lib/kasan/generic_report.c | 150 ++++++++++++++++++
 lib/kasan/kasan.h          | 164 +++++++++++++++++++
 lib/kasan/report.c         | 199 +++++++++++++++++++++++
 scripts/Makefile.kasan     |  17 ++
 scripts/Makefile.lib       |  10 ++
 15 files changed, 1119 insertions(+), 7 deletions(-)
 create mode 100644 include/linux/kasan.h
 create mode 100644 lib/kasan/Kconfig
 create mode 100644 lib/kasan/Makefile
 create mode 100644 lib/kasan/common.c
 create mode 100644 lib/kasan/generic.c
 create mode 100644 lib/kasan/generic_report.c
 create mode 100644 lib/kasan/kasan.h
 create mode 100644 lib/kasan/report.c
 create mode 100644 scripts/Makefile.kasan

diff --git a/Makefile b/Makefile
index 9060680367..461b0f2285 100644
--- a/Makefile
+++ b/Makefile
@@ -448,6 +448,7 @@ export LDFLAGS_barebox
 export LDFLAGS_pbl
 
 export CFLAGS_UBSAN
+export CFLAGS_KASAN CFLAGS_KASAN_NOSANITIZE
 
 # Files to ignore in find ... statements
 
@@ -636,7 +637,10 @@ KBUILD_CFLAGS += $(call cc-option,-Wno-pointer-sign,)
 # change __FILE__ to the relative path from the srctree
 KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
 
-include $(srctree)/scripts/Makefile.ubsan
+include-y +=scripts/Makefile.ubsan
+include-$(CONFIG_KASAN)         += scripts/Makefile.kasan
+
+include $(addprefix $(srctree)/, $(include-y))
 
 # KBUILD_IMAGE: Default barebox image to build
 # Depending on the architecture, this can be either compressed or not.
diff --git a/common/Makefile b/common/Makefile
index ad5146a301..faf0415ef3 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -38,6 +38,7 @@ obj-$(CONFIG_GREGORIAN_CALENDER) += date.o
 obj-$(CONFIG_KALLSYMS)		+= kallsyms.o
 obj-$(CONFIG_MALLOC_DLMALLOC)	+= dlmalloc.o
 obj-$(CONFIG_MALLOC_TLSF)	+= tlsf_malloc.o tlsf.o calloc.o
+KASAN_SANITIZE_tlsf.o := n
 obj-$(CONFIG_MALLOC_DUMMY)	+= dummy_malloc.o calloc.o
 obj-$(CONFIG_MEMINFO)		+= meminfo.o
 obj-$(CONFIG_MENU)		+= menu.o
diff --git a/common/tlsf.c b/common/tlsf.c
index 86cc684ab6..fa845e5788 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -3,6 +3,7 @@
 #include <string.h>
 #include <tlsf.h>
 #include "tlsfbits.h"
+#include <linux/kasan.h>
 
 #define CHAR_BIT	8
 
@@ -529,7 +530,7 @@ static void block_trim_free(control_t* control, block_header_t* block, size_t si
 }
 
 /* Trim any trailing block space off the end of a used block, return to pool. */
-static void block_trim_used(control_t* control, block_header_t* block, size_t size)
+static void block_trim_used(control_t* control, block_header_t* block, size_t size, size_t used)
 {
 	tlsf_assert(!block_is_free(block) && "block must be used");
 	if (block_can_split(block, size))
@@ -541,6 +542,10 @@ static void block_trim_used(control_t* control, block_header_t* block, size_t si
 		remaining_block = block_merge_next(control, remaining_block);
 		block_insert(control, remaining_block);
 	}
+
+	kasan_poison_shadow(&block->size, size + 2 * sizeof(size_t),
+			    KASAN_KMALLOC_REDZONE);
+	kasan_unpoison_shadow(block_to_ptr(block), used);
 }
 
 static block_header_t* block_trim_free_leading(control_t* control, block_header_t* block, size_t size)
@@ -589,7 +594,8 @@ static block_header_t* block_locate_free(control_t* control, size_t size)
 	return block;
 }
 
-static void* block_prepare_used(control_t* control, block_header_t* block, size_t size)
+static void* block_prepare_used(control_t* control, block_header_t* block,
+				size_t size, size_t used)
 {
 	void* p = 0;
 	if (block)
@@ -598,6 +604,10 @@ static void* block_prepare_used(control_t* control, block_header_t* block, size_
 		block_trim_free(control, block, size);
 		block_mark_as_used(block);
 		p = block_to_ptr(block);
+
+		kasan_poison_shadow(&block->size, size + 2 * sizeof(size_t),
+			    KASAN_KMALLOC_REDZONE);
+		kasan_unpoison_shadow(p, used);
 	}
 	return p;
 }
@@ -926,13 +936,20 @@ void* tlsf_malloc(tlsf_t tlsf, size_t size)
 	control_t* control = tlsf_cast(control_t*, tlsf);
 	const size_t adjust = adjust_request_size(size, ALIGN_SIZE);
 	block_header_t* block = block_locate_free(control, adjust);
-	return block_prepare_used(control, block, adjust);
+	void *ret;
+
+	ret = block_prepare_used(control, block, adjust, size);
+	if (!ret)
+		return ret;
+
+	return ret;
 }
 
 void* tlsf_memalign(tlsf_t tlsf, size_t align, size_t size)
 {
 	control_t* control = tlsf_cast(control_t*, tlsf);
 	const size_t adjust = adjust_request_size(size, ALIGN_SIZE);
+	void *ret;
 
 	/*
 	** We must allocate an additional minimum block size bytes so that if
@@ -983,7 +1000,11 @@ void* tlsf_memalign(tlsf_t tlsf, size_t align, size_t size)
 		}
 	}
 
-	return block_prepare_used(control, block, adjust);
+	ret = block_prepare_used(control, block, adjust, size);
+	if (!ret)
+		return NULL;
+
+	return ret;
 }
 
 void tlsf_free(tlsf_t tlsf, void* ptr)
@@ -994,6 +1015,7 @@ void tlsf_free(tlsf_t tlsf, void* ptr)
 		control_t* control = tlsf_cast(control_t*, tlsf);
 		block_header_t* block = block_from_ptr(ptr);
 		tlsf_assert(!block_is_free(block) && "block already marked as free");
+		kasan_poison_shadow(ptr, block_size(block), 0xff);
 		block_mark_as_free(block);
 		block = block_merge_prev(control, block);
 		block = block_merge_next(control, block);
@@ -1050,7 +1072,7 @@ void* tlsf_realloc(tlsf_t tlsf, void* ptr, size_t size)
 			if (p)
 			{
 				const size_t minsize = tlsf_min(cursize, size);
-				memcpy(p, ptr, minsize);
+				__memcpy(p, ptr, minsize);
 				tlsf_free(tlsf, ptr);
 			}
 		}
@@ -1064,7 +1086,7 @@ void* tlsf_realloc(tlsf_t tlsf, void* ptr, size_t size)
 			}
 
 			/* Trim the resulting block and return the original pointer. */
-			block_trim_used(control, block, adjust);
+			block_trim_used(control, block, adjust, size);
 			p = ptr;
 		}
 	}
diff --git a/include/linux/kasan.h b/include/linux/kasan.h
new file mode 100644
index 0000000000..7c184cd0e2
--- /dev/null
+++ b/include/linux/kasan.h
@@ -0,0 +1,89 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_KASAN_H
+#define _LINUX_KASAN_H
+
+#include <linux/types.h>
+
+/*
+ * On 64bit architectures tlsf aligns all allocations to a 64bit
+ * boundary, otherwise they are only 32bit aligned.
+ */
+#ifdef CONFIG_64BIT
+#define KASAN_SHADOW_SCALE_SHIFT	3
+#else
+#define KASAN_SHADOW_SCALE_SHIFT	2
+#endif
+
+#define KASAN_TAG_KERNEL	0xFF /* native kernel pointers tag */
+#define KASAN_TAG_INVALID	0xFE /* inaccessible memory tag */
+#define KASAN_TAG_MAX		0xFD /* maximum value for random tags */
+
+#define KASAN_FREE_PAGE         0xFF  /* page was freed */
+#define KASAN_PAGE_REDZONE      0xFE  /* redzone for kmalloc_large allocations */
+#define KASAN_KMALLOC_REDZONE   0xFC  /* redzone inside slub object */
+#define KASAN_KMALLOC_FREE      0xFB  /* object was freed (kmem_cache_free/kfree) */
+#define KASAN_KMALLOC_FREETRACK 0xFA  /* object was freed and has free track set */
+
+#define KASAN_GLOBAL_REDZONE    0xF9  /* redzone for global variable */
+#define KASAN_VMALLOC_INVALID   0xF8  /* unallocated space in vmapped page */
+
+/*
+ * Stack redzone shadow values
+ * (Those are compiler's ABI, don't change them)
+ */
+#define KASAN_STACK_LEFT        0xF1
+#define KASAN_STACK_MID         0xF2
+#define KASAN_STACK_RIGHT       0xF3
+#define KASAN_STACK_PARTIAL     0xF4
+
+/*
+ * alloca redzone shadow values
+ */
+#define KASAN_ALLOCA_LEFT	0xCA
+#define KASAN_ALLOCA_RIGHT	0xCB
+
+#ifdef CONFIG_KASAN
+
+extern unsigned long kasan_shadow_start;
+extern unsigned long kasan_shadow_base;
+
+static inline void *kasan_mem_to_shadow(const void *addr)
+{
+	unsigned long a = (unsigned long)addr;
+
+	a -= kasan_shadow_start;
+	a >>= KASAN_SHADOW_SCALE_SHIFT;
+	a += kasan_shadow_base;
+
+	return (void *)a;
+}
+
+void kasan_init(unsigned long membase, unsigned long memsize,
+		unsigned long shadow_base);
+
+/* Enable reporting bugs after kasan_disable_current() */
+extern void kasan_enable_current(void);
+
+/* Disable reporting bugs for current task */
+extern void kasan_disable_current(void);
+
+void kasan_poison_shadow(const void *address, size_t size, u8 value);
+void kasan_unpoison_shadow(const void *address, size_t size);
+
+bool kasan_save_enable_multi_shot(void);
+void kasan_restore_multi_shot(bool enabled);
+
+#else /* CONFIG_KASAN */
+
+static inline void kasan_poison_shadow(const void *address, size_t size, u8 value) {}
+static inline void kasan_unpoison_shadow(const void *address, size_t size) {}
+
+static inline void kasan_enable_current(void) {}
+static inline void kasan_disable_current(void) {}
+
+static inline void kasan_init(unsigned long membase, unsigned long memsize,
+		unsigned long shadow_base) {}
+
+#endif /* CONFIG_KASAN */
+
+#endif /* LINUX_KASAN_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index 90552f3c27..6d909c1ac8 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -154,6 +154,8 @@ source "lib/logo/Kconfig"
 
 source "lib/bootstrap/Kconfig"
 
+source "lib/kasan/Kconfig"
+
 config PRINTF_UUID
 	bool
 
diff --git a/lib/Makefile b/lib/Makefile
index 73399a1bf1..ba6af6f2ab 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -7,6 +7,7 @@ obj-y			+= string.o
 obj-y			+= strtox.o
 obj-y			+= kstrtox.o
 obj-y			+= vsprintf.o
+obj-$(CONFIG_KASAN)	+= kasan/
 pbl-$(CONFIG_PBL_CONSOLE) += vsprintf.o
 obj-y			+= div64.o
 pbl-y			+= div64.o
diff --git a/lib/kasan/Kconfig b/lib/kasan/Kconfig
new file mode 100644
index 0000000000..7a18cf95be
--- /dev/null
+++ b/lib/kasan/Kconfig
@@ -0,0 +1,16 @@
+source "scripts/Kconfig.include"
+
+config HAVE_ARCH_KASAN
+	bool
+
+config CC_HAS_KASAN_GENERIC
+	def_bool $(cc-option, -fsanitize=kernel-address)
+
+config KASAN
+	bool "KASAN: runtime memory debugger"
+	depends on (HAVE_ARCH_KASAN && CC_HAS_KASAN_GENERIC)
+	depends on MALLOC_TLSF
+	select CONSTRUCTORS
+	help
+	  Enables KASAN (KernelAddressSANitizer) - runtime memory debugger,
+	  designed to find out-of-bounds accesses and use-after-free bugs.
diff --git a/lib/kasan/Makefile b/lib/kasan/Makefile
new file mode 100644
index 0000000000..31e9d890d5
--- /dev/null
+++ b/lib/kasan/Makefile
@@ -0,0 +1,14 @@
+
+obj-y += generic_report.o generic.o report.o common.o test_kasan.o
+KASAN_SANITIZE_generic_report.o := n
+KASAN_SANITIZE_generic.o := n
+KASAN_SANITIZE_report.o := n
+KASAN_SANITIZE_common.o := n
+
+CC_FLAGS_KASAN_RUNTIME := $(call cc-option, -fno-conserve-stack)
+CC_FLAGS_KASAN_RUNTIME += -fno-stack-protector
+
+CFLAGS_generic_report.o := $(CC_FLAGS_KASAN_RUNTIME)
+CFLAGS_generic.o := $(CC_FLAGS_KASAN_RUNTIME)
+CFLAGS_report.o := $(CC_FLAGS_KASAN_RUNTIME)
+CFLAGS_common.o := $(CC_FLAGS_KASAN_RUNTIME)
diff --git a/lib/kasan/common.c b/lib/kasan/common.c
new file mode 100644
index 0000000000..1ebf66a7b8
--- /dev/null
+++ b/lib/kasan/common.c
@@ -0,0 +1,108 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This file contains common generic and tag-based KASAN code.
+ *
+ * Copyright (c) 2014 Samsung Electronics Co., Ltd.
+ * Author: Andrey Ryabinin <ryabinin.a.a@gmail.com>
+ *
+ * Some code borrowed from https://github.com/xairy/kasan-prototype by
+ *        Andrey Konovalov <andreyknvl@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+
+#include <common.h>
+#include <linux/kasan.h>
+#include <linux/kernel.h>
+
+#include "kasan.h"
+
+int kasan_depth;
+
+void kasan_enable_current(void)
+{
+	kasan_depth++;
+}
+
+void kasan_disable_current(void)
+{
+	kasan_depth--;
+}
+
+#undef memset
+void *memset(void *addr, int c, size_t len)
+{
+	if (!check_memory_region((unsigned long)addr, len, true, _RET_IP_))
+		return NULL;
+
+	return __memset(addr, c, len);
+}
+
+#ifdef __HAVE_ARCH_MEMMOVE
+#undef memmove
+void *memmove(void *dest, const void *src, size_t len)
+{
+	if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
+	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
+		return NULL;
+
+	return __memmove(dest, src, len);
+}
+#endif
+
+#undef memcpy
+void *memcpy(void *dest, const void *src, size_t len)
+{
+	if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
+	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
+		return NULL;
+
+	return __memcpy(dest, src, len);
+}
+
+/*
+ * Poisons the shadow memory for 'size' bytes starting from 'addr'.
+ * Memory addresses should be aligned to KASAN_SHADOW_SCALE_SIZE.
+ */
+void kasan_poison_shadow(const void *address, size_t size, u8 value)
+{
+	void *shadow_start, *shadow_end;
+
+	/*
+	 * Perform shadow offset calculation based on untagged address, as
+	 * some of the callers (e.g. kasan_poison_object_data) pass tagged
+	 * addresses to this function.
+	 */
+	address = reset_tag(address);
+
+	shadow_start = kasan_mem_to_shadow(address);
+	shadow_end = kasan_mem_to_shadow(address + size);
+
+	__memset(shadow_start, value, shadow_end - shadow_start);
+}
+
+void kasan_unpoison_shadow(const void *address, size_t size)
+{
+	u8 tag = get_tag(address);
+
+	/*
+	 * Perform shadow offset calculation based on untagged address, as
+	 * some of the callers (e.g. kasan_unpoison_object_data) pass tagged
+	 * addresses to this function.
+	 */
+	address = reset_tag(address);
+
+	kasan_poison_shadow(address, size, tag);
+
+	if (size & KASAN_SHADOW_MASK) {
+		u8 *shadow = (u8 *)kasan_mem_to_shadow(address + size);
+
+		if (IS_ENABLED(CONFIG_KASAN_SW_TAGS))
+			*shadow = tag;
+		else
+			*shadow = size & KASAN_SHADOW_MASK;
+	}
+}
diff --git a/lib/kasan/generic.c b/lib/kasan/generic.c
new file mode 100644
index 0000000000..b33a6c1a6c
--- /dev/null
+++ b/lib/kasan/generic.c
@@ -0,0 +1,315 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This file contains core generic KASAN code.
+ *
+ * Copyright (c) 2014 Samsung Electronics Co., Ltd.
+ * Author: Andrey Ryabinin <ryabinin.a.a@gmail.com>
+ *
+ * Some code borrowed from https://github.com/xairy/kasan-prototype by
+ *        Andrey Konovalov <andreyknvl@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+
+#include "kasan.h"
+
+unsigned long kasan_shadow_start;
+unsigned long kasan_shadow_base;
+
+/*
+ * All functions below always inlined so compiler could
+ * perform better optimizations in each of __asan_loadX/__assn_storeX
+ * depending on memory access size X.
+ */
+
+static __always_inline bool memory_is_poisoned_1(unsigned long addr)
+{
+	s8 shadow_value = *(s8 *)kasan_mem_to_shadow((void *)addr);
+
+	if (unlikely(shadow_value)) {
+		s8 last_accessible_byte = addr & KASAN_SHADOW_MASK;
+		return unlikely(last_accessible_byte >= shadow_value);
+	}
+
+	return false;
+}
+
+static __always_inline bool memory_is_poisoned_2_4_8(unsigned long addr,
+						unsigned long size)
+{
+	u8 *shadow_addr = (u8 *)kasan_mem_to_shadow((void *)addr);
+
+	/*
+	 * Access crosses 8(shadow size)-byte boundary. Such access maps
+	 * into 2 shadow bytes, so we need to check them both.
+	 */
+	if (unlikely(((addr + size - 1) & KASAN_SHADOW_MASK) < size - 1))
+		return *shadow_addr || memory_is_poisoned_1(addr + size - 1);
+
+	return memory_is_poisoned_1(addr + size - 1);
+}
+
+static __always_inline bool memory_is_poisoned_16(unsigned long addr)
+{
+	u16 *shadow_addr = (u16 *)kasan_mem_to_shadow((void *)addr);
+
+	/* Unaligned 16-bytes access maps into 3 shadow bytes. */
+	if (unlikely(!IS_ALIGNED(addr, KASAN_SHADOW_SCALE_SIZE)))
+		return *shadow_addr || memory_is_poisoned_1(addr + 15);
+
+	return *shadow_addr;
+}
+
+static __always_inline unsigned long bytes_is_nonzero(const u8 *start,
+					size_t size)
+{
+	while (size) {
+		if (unlikely(*start))
+			return (unsigned long)start;
+		start++;
+		size--;
+	}
+
+	return 0;
+}
+
+static __always_inline unsigned long memory_is_nonzero(const void *start,
+						const void *end)
+{
+	unsigned int words;
+	unsigned long ret;
+	unsigned int prefix = (unsigned long)start % 8;
+
+	if (end - start <= 16)
+		return bytes_is_nonzero(start, end - start);
+
+	if (prefix) {
+		prefix = 8 - prefix;
+		ret = bytes_is_nonzero(start, prefix);
+		if (unlikely(ret))
+			return ret;
+		start += prefix;
+	}
+
+	words = (end - start) / 8;
+	while (words) {
+		if (unlikely(*(u64 *)start))
+			return bytes_is_nonzero(start, 8);
+		start += 8;
+		words--;
+	}
+
+	return bytes_is_nonzero(start, (end - start) % 8);
+}
+
+static __always_inline bool memory_is_poisoned_n(unsigned long addr,
+						size_t size)
+{
+	unsigned long ret;
+
+	ret = memory_is_nonzero(kasan_mem_to_shadow((void *)addr),
+			kasan_mem_to_shadow((void *)addr + size - 1) + 1);
+
+	if (unlikely(ret)) {
+		unsigned long last_byte = addr + size - 1;
+		s8 *last_shadow = (s8 *)kasan_mem_to_shadow((void *)last_byte);
+
+		if (unlikely(ret != (unsigned long)last_shadow ||
+			((long)(last_byte & KASAN_SHADOW_MASK) >= *last_shadow)))
+			return true;
+	}
+	return false;
+}
+
+static __always_inline bool memory_is_poisoned(unsigned long addr, size_t size)
+{
+	if (__builtin_constant_p(size)) {
+		switch (size) {
+		case 1:
+			return memory_is_poisoned_1(addr);
+		case 2:
+		case 4:
+		case 8:
+			return memory_is_poisoned_2_4_8(addr, size);
+		case 16:
+			return memory_is_poisoned_16(addr);
+		default:
+			BUILD_BUG();
+		}
+	}
+
+	return memory_is_poisoned_n(addr, size);
+}
+
+static bool kasan_initialized;
+
+static __always_inline bool check_memory_region_inline(unsigned long addr,
+						size_t size, bool write,
+						unsigned long ret_ip)
+{
+	if (!kasan_initialized)
+		return true;
+
+	if (addr < kasan_shadow_start)
+		return true;
+
+	if (unlikely(size == 0))
+		return true;
+
+	if (unlikely(addr + size < addr))
+		return !kasan_report(addr, size, write, ret_ip);
+
+	if (addr < kasan_shadow_base)
+		return true;
+
+	if (likely(!memory_is_poisoned(addr, size)))
+		return true;
+
+	return !kasan_report(addr, size, write, ret_ip);
+}
+
+void kasan_init(unsigned long membase, unsigned long memsize,
+		unsigned long shadow_base)
+{
+	kasan_shadow_start = membase;
+	kasan_shadow_base = shadow_base;
+
+	kasan_unpoison_shadow((void *)membase, memsize);
+	kasan_initialized = true;
+}
+
+bool __no_sanitize_address check_memory_region(unsigned long addr,
+					       size_t size, bool write,
+					       unsigned long ret_ip)
+{
+	return check_memory_region_inline(addr, size, write, ret_ip);
+}
+
+static void register_global(struct kasan_global *global)
+{
+	size_t aligned_size = round_up(global->size, KASAN_SHADOW_SCALE_SIZE);
+
+	kasan_unpoison_shadow(global->beg, global->size);
+
+	kasan_poison_shadow(global->beg + aligned_size,
+		global->size_with_redzone - aligned_size,
+		KASAN_GLOBAL_REDZONE);
+}
+
+void __asan_register_globals(struct kasan_global *globals, size_t size)
+{
+	int i;
+
+	for (i = 0; i < size; i++)
+		register_global(&globals[i]);
+}
+EXPORT_SYMBOL(__asan_register_globals);
+
+void __asan_unregister_globals(struct kasan_global *globals, size_t size)
+{
+}
+EXPORT_SYMBOL(__asan_unregister_globals);
+
+#define DEFINE_ASAN_LOAD_STORE(size)					\
+	void __no_sanitize_address __asan_load##size(unsigned long addr)			\
+	{								\
+		check_memory_region_inline(addr, size, false, _RET_IP_);\
+	}								\
+	EXPORT_SYMBOL(__asan_load##size);				\
+	__alias(__asan_load##size)					\
+	void __no_sanitize_address __asan_load##size##_noabort(unsigned long);		\
+	EXPORT_SYMBOL(__asan_load##size##_noabort);			\
+	void __asan_store##size(unsigned long addr)			\
+	{								\
+		check_memory_region_inline(addr, size, true, _RET_IP_);	\
+	}								\
+	EXPORT_SYMBOL(__asan_store##size);				\
+	__alias(__asan_store##size)					\
+	void __asan_store##size##_noabort(unsigned long);		\
+	EXPORT_SYMBOL(__asan_store##size##_noabort)
+
+DEFINE_ASAN_LOAD_STORE(1);
+DEFINE_ASAN_LOAD_STORE(2);
+DEFINE_ASAN_LOAD_STORE(4);
+DEFINE_ASAN_LOAD_STORE(8);
+DEFINE_ASAN_LOAD_STORE(16);
+
+void __asan_loadN(unsigned long addr, size_t size)
+{
+	check_memory_region(addr, size, false, _RET_IP_);
+}
+EXPORT_SYMBOL(__asan_loadN);
+
+__alias(__asan_loadN)
+void __asan_loadN_noabort(unsigned long, size_t);
+EXPORT_SYMBOL(__asan_loadN_noabort);
+
+void __asan_storeN(unsigned long addr, size_t size)
+{
+	check_memory_region(addr, size, true, _RET_IP_);
+}
+EXPORT_SYMBOL(__asan_storeN);
+
+__alias(__asan_storeN)
+void __asan_storeN_noabort(unsigned long, size_t);
+EXPORT_SYMBOL(__asan_storeN_noabort);
+
+/* to shut up compiler complaints */
+void __asan_handle_no_return(void) {}
+EXPORT_SYMBOL(__asan_handle_no_return);
+
+/* Emitted by compiler to poison alloca()ed objects. */
+void __asan_alloca_poison(unsigned long addr, size_t size)
+{
+	size_t rounded_up_size = round_up(size, KASAN_SHADOW_SCALE_SIZE);
+	size_t padding_size = round_up(size, KASAN_ALLOCA_REDZONE_SIZE) -
+			rounded_up_size;
+	size_t rounded_down_size = round_down(size, KASAN_SHADOW_SCALE_SIZE);
+
+	const void *left_redzone = (const void *)(addr -
+			KASAN_ALLOCA_REDZONE_SIZE);
+	const void *right_redzone = (const void *)(addr + rounded_up_size);
+
+	WARN_ON(!IS_ALIGNED(addr, KASAN_ALLOCA_REDZONE_SIZE));
+
+	kasan_unpoison_shadow((const void *)(addr + rounded_down_size),
+			      size - rounded_down_size);
+	kasan_poison_shadow(left_redzone, KASAN_ALLOCA_REDZONE_SIZE,
+			KASAN_ALLOCA_LEFT);
+	kasan_poison_shadow(right_redzone,
+			padding_size + KASAN_ALLOCA_REDZONE_SIZE,
+			KASAN_ALLOCA_RIGHT);
+}
+EXPORT_SYMBOL(__asan_alloca_poison);
+
+/* Emitted by compiler to unpoison alloca()ed areas when the stack unwinds. */
+void __asan_allocas_unpoison(const void *stack_top, const void *stack_bottom)
+{
+	if (unlikely(!stack_top || stack_top > stack_bottom))
+		return;
+
+	kasan_unpoison_shadow(stack_top, stack_bottom - stack_top);
+}
+EXPORT_SYMBOL(__asan_allocas_unpoison);
+
+/* Emitted by the compiler to [un]poison local variables. */
+#define DEFINE_ASAN_SET_SHADOW(byte) \
+	void __asan_set_shadow_##byte(const void *addr, size_t size)	\
+	{								\
+		__memset((void *)addr, 0x##byte, size);			\
+	}								\
+	EXPORT_SYMBOL(__asan_set_shadow_##byte)
+
+DEFINE_ASAN_SET_SHADOW(00);
+DEFINE_ASAN_SET_SHADOW(f1);
+DEFINE_ASAN_SET_SHADOW(f2);
+DEFINE_ASAN_SET_SHADOW(f3);
+DEFINE_ASAN_SET_SHADOW(f5);
+DEFINE_ASAN_SET_SHADOW(f8);
diff --git a/lib/kasan/generic_report.c b/lib/kasan/generic_report.c
new file mode 100644
index 0000000000..1cc5829e8d
--- /dev/null
+++ b/lib/kasan/generic_report.c
@@ -0,0 +1,150 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This file contains generic KASAN specific error reporting code.
+ *
+ * Copyright (c) 2014 Samsung Electronics Co., Ltd.
+ * Author: Andrey Ryabinin <ryabinin.a.a@gmail.com>
+ *
+ * Some code borrowed from https://github.com/xairy/kasan-prototype by
+ *        Andrey Konovalov <andreyknvl@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+
+#include <common.h>
+#include <linux/bitops.h>
+
+#include <asm/sections.h>
+
+#include "kasan.h"
+
+void *find_first_bad_addr(void *addr, size_t size)
+{
+	void *p = addr;
+
+	while (p < addr + size && !(*(u8 *)kasan_mem_to_shadow(p)))
+		p += KASAN_SHADOW_SCALE_SIZE;
+	return p;
+}
+
+static const char *get_shadow_bug_type(struct kasan_access_info *info)
+{
+	const char *bug_type = "unknown-crash";
+	u8 *shadow_addr;
+
+	shadow_addr = (u8 *)kasan_mem_to_shadow(info->first_bad_addr);
+
+	/*
+	 * If shadow byte value is in [0, KASAN_SHADOW_SCALE_SIZE) we can look
+	 * at the next shadow byte to determine the type of the bad access.
+	 */
+	if (*shadow_addr > 0 && *shadow_addr <= KASAN_SHADOW_SCALE_SIZE - 1)
+		shadow_addr++;
+
+	switch (*shadow_addr) {
+	case 0 ... KASAN_SHADOW_SCALE_SIZE - 1:
+		/*
+		 * In theory it's still possible to see these shadow values
+		 * due to a data race in the kernel code.
+		 */
+		bug_type = "out-of-bounds";
+		break;
+	case KASAN_PAGE_REDZONE:
+	case KASAN_KMALLOC_REDZONE:
+		bug_type = "slab-out-of-bounds";
+		break;
+	case KASAN_GLOBAL_REDZONE:
+		bug_type = "global-out-of-bounds";
+		break;
+	case KASAN_STACK_LEFT:
+	case KASAN_STACK_MID:
+	case KASAN_STACK_RIGHT:
+	case KASAN_STACK_PARTIAL:
+		bug_type = "stack-out-of-bounds";
+		break;
+	case KASAN_FREE_PAGE:
+	case KASAN_KMALLOC_FREE:
+	case KASAN_KMALLOC_FREETRACK:
+		bug_type = "use-after-free";
+		break;
+	case KASAN_ALLOCA_LEFT:
+	case KASAN_ALLOCA_RIGHT:
+		bug_type = "alloca-out-of-bounds";
+		break;
+	case KASAN_VMALLOC_INVALID:
+		bug_type = "vmalloc-out-of-bounds";
+		break;
+	}
+
+	return bug_type;
+}
+
+static const char *get_wild_bug_type(struct kasan_access_info *info)
+{
+	const char *bug_type = "unknown-crash";
+
+	if ((unsigned long)info->access_addr < PAGE_SIZE)
+		bug_type = "null-ptr-deref";
+	else
+		bug_type = "wild-memory-access";
+
+	return bug_type;
+}
+
+const char *get_bug_type(struct kasan_access_info *info)
+{
+	/*
+	 * If access_size is a negative number, then it has reason to be
+	 * defined as out-of-bounds bug type.
+	 *
+	 * Casting negative numbers to size_t would indeed turn up as
+	 * a large size_t and its value will be larger than ULONG_MAX/2,
+	 * so that this can qualify as out-of-bounds.
+	 */
+	if (info->access_addr + info->access_size < info->access_addr)
+		return "out-of-bounds";
+
+	if (addr_has_shadow(info->access_addr))
+		return get_shadow_bug_type(info);
+	return get_wild_bug_type(info);
+}
+
+#define DEFINE_ASAN_REPORT_LOAD(size)                     \
+void __asan_report_load##size##_noabort(unsigned long addr) \
+{                                                         \
+	kasan_report(addr, size, false, _RET_IP_);	  \
+}                                                         \
+EXPORT_SYMBOL(__asan_report_load##size##_noabort)
+
+#define DEFINE_ASAN_REPORT_STORE(size)                     \
+void __asan_report_store##size##_noabort(unsigned long addr) \
+{                                                          \
+	kasan_report(addr, size, true, _RET_IP_);	   \
+}                                                          \
+EXPORT_SYMBOL(__asan_report_store##size##_noabort)
+
+DEFINE_ASAN_REPORT_LOAD(1);
+DEFINE_ASAN_REPORT_LOAD(2);
+DEFINE_ASAN_REPORT_LOAD(4);
+DEFINE_ASAN_REPORT_LOAD(8);
+DEFINE_ASAN_REPORT_LOAD(16);
+DEFINE_ASAN_REPORT_STORE(1);
+DEFINE_ASAN_REPORT_STORE(2);
+DEFINE_ASAN_REPORT_STORE(4);
+DEFINE_ASAN_REPORT_STORE(8);
+DEFINE_ASAN_REPORT_STORE(16);
+
+void __asan_report_load_n_noabort(unsigned long addr, size_t size)
+{
+	kasan_report(addr, size, false, _RET_IP_);
+}
+EXPORT_SYMBOL(__asan_report_load_n_noabort);
+
+void __asan_report_store_n_noabort(unsigned long addr, size_t size)
+{
+	kasan_report(addr, size, true, _RET_IP_);
+}
+EXPORT_SYMBOL(__asan_report_store_n_noabort);
diff --git a/lib/kasan/kasan.h b/lib/kasan/kasan.h
new file mode 100644
index 0000000000..e17f49dbec
--- /dev/null
+++ b/lib/kasan/kasan.h
@@ -0,0 +1,164 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __MM_KASAN_KASAN_H
+#define __MM_KASAN_KASAN_H
+
+#include <linux/kasan.h>
+#include <linux/linkage.h>
+
+#define KASAN_SHADOW_SCALE_SIZE (1UL << KASAN_SHADOW_SCALE_SHIFT)
+#define KASAN_SHADOW_MASK       (KASAN_SHADOW_SCALE_SIZE - 1)
+
+#define KASAN_ALLOCA_REDZONE_SIZE	32
+
+/*
+ * Stack frame marker (compiler ABI).
+ */
+#define KASAN_CURRENT_STACK_FRAME_MAGIC 0x41B58AB3
+
+/* Don't break randconfig/all*config builds */
+#ifndef KASAN_ABI_VERSION
+#define KASAN_ABI_VERSION 1
+#endif
+
+struct kasan_access_info {
+	const void *access_addr;
+	const void *first_bad_addr;
+	size_t access_size;
+	bool is_write;
+	unsigned long ip;
+};
+
+/* The layout of struct dictated by compiler */
+struct kasan_source_location {
+	const char *filename;
+	int line_no;
+	int column_no;
+};
+
+/* The layout of struct dictated by compiler */
+struct kasan_global {
+	const void *beg;		/* Address of the beginning of the global variable. */
+	size_t size;			/* Size of the global variable. */
+	size_t size_with_redzone;	/* Size of the variable + size of the red zone. 32 bytes aligned */
+	const void *name;
+	const void *module_name;	/* Name of the module where the global variable is declared. */
+	unsigned long has_dynamic_init;	/* This needed for C++ */
+#if KASAN_ABI_VERSION >= 4
+	struct kasan_source_location *location;
+#endif
+#if KASAN_ABI_VERSION >= 5
+	char *odr_indicator;
+#endif
+};
+
+static inline const void *kasan_shadow_to_mem(const void *shadow_addr)
+{
+	unsigned long sa = (unsigned long)shadow_addr;
+
+	sa -= kasan_shadow_base;
+	sa <<= KASAN_SHADOW_SCALE_SHIFT;
+	sa += kasan_shadow_start;
+
+	return (void *)sa;
+}
+
+static inline bool addr_has_shadow(const void *addr)
+{
+	return (addr >= (void *)kasan_shadow_start);
+}
+
+/**
+ * check_memory_region - Check memory region, and report if invalid access.
+ * @addr: the accessed address
+ * @size: the accessed size
+ * @write: true if access is a write access
+ * @ret_ip: return address
+ * @return: true if access was valid, false if invalid
+ */
+bool check_memory_region(unsigned long addr, size_t size, bool write,
+				unsigned long ret_ip);
+
+void *find_first_bad_addr(void *addr, size_t size);
+const char *get_bug_type(struct kasan_access_info *info);
+
+bool kasan_report(unsigned long addr, size_t size,
+		bool is_write, unsigned long ip);
+void kasan_report_invalid_free(void *object, unsigned long ip);
+
+#ifndef arch_kasan_set_tag
+static inline const void *arch_kasan_set_tag(const void *addr, u8 tag)
+{
+	return addr;
+}
+#endif
+#ifndef arch_kasan_reset_tag
+#define arch_kasan_reset_tag(addr)	((void *)(addr))
+#endif
+#ifndef arch_kasan_get_tag
+#define arch_kasan_get_tag(addr)	0
+#endif
+
+#define set_tag(addr, tag)	((void *)arch_kasan_set_tag((addr), (tag)))
+#define reset_tag(addr)		((void *)arch_kasan_reset_tag(addr))
+#define get_tag(addr)		arch_kasan_get_tag(addr)
+
+/*
+ * Exported functions for interfaces called from assembly or from generated
+ * code. Declarations here to avoid warning about missing declarations.
+ */
+asmlinkage void kasan_unpoison_task_stack_below(const void *watermark);
+void __asan_register_globals(struct kasan_global *globals, size_t size);
+void __asan_unregister_globals(struct kasan_global *globals, size_t size);
+void __asan_handle_no_return(void);
+void __asan_alloca_poison(unsigned long addr, size_t size);
+void __asan_allocas_unpoison(const void *stack_top, const void *stack_bottom);
+
+void __asan_load1(unsigned long addr);
+void __asan_store1(unsigned long addr);
+void __asan_load2(unsigned long addr);
+void __asan_store2(unsigned long addr);
+void __asan_load4(unsigned long addr);
+void __asan_store4(unsigned long addr);
+void __asan_load8(unsigned long addr);
+void __asan_store8(unsigned long addr);
+void __asan_load16(unsigned long addr);
+void __asan_store16(unsigned long addr);
+void __asan_loadN(unsigned long addr, size_t size);
+void __asan_storeN(unsigned long addr, size_t size);
+
+void __asan_load1_noabort(unsigned long addr);
+void __asan_store1_noabort(unsigned long addr);
+void __asan_load2_noabort(unsigned long addr);
+void __asan_store2_noabort(unsigned long addr);
+void __asan_load4_noabort(unsigned long addr);
+void __asan_store4_noabort(unsigned long addr);
+void __asan_load8_noabort(unsigned long addr);
+void __asan_store8_noabort(unsigned long addr);
+void __asan_load16_noabort(unsigned long addr);
+void __asan_store16_noabort(unsigned long addr);
+void __asan_loadN_noabort(unsigned long addr, size_t size);
+void __asan_storeN_noabort(unsigned long addr, size_t size);
+
+void __asan_report_load1_noabort(unsigned long addr);
+void __asan_report_store1_noabort(unsigned long addr);
+void __asan_report_load2_noabort(unsigned long addr);
+void __asan_report_store2_noabort(unsigned long addr);
+void __asan_report_load4_noabort(unsigned long addr);
+void __asan_report_store4_noabort(unsigned long addr);
+void __asan_report_load8_noabort(unsigned long addr);
+void __asan_report_store8_noabort(unsigned long addr);
+void __asan_report_load16_noabort(unsigned long addr);
+void __asan_report_store16_noabort(unsigned long addr);
+void __asan_report_load_n_noabort(unsigned long addr, size_t size);
+void __asan_report_store_n_noabort(unsigned long addr, size_t size);
+
+void __asan_set_shadow_00(const void *addr, size_t size);
+void __asan_set_shadow_f1(const void *addr, size_t size);
+void __asan_set_shadow_f2(const void *addr, size_t size);
+void __asan_set_shadow_f3(const void *addr, size_t size);
+void __asan_set_shadow_f5(const void *addr, size_t size);
+void __asan_set_shadow_f8(const void *addr, size_t size);
+
+extern int kasan_depth;
+
+#endif
diff --git a/lib/kasan/report.c b/lib/kasan/report.c
new file mode 100644
index 0000000000..b7b2d032ee
--- /dev/null
+++ b/lib/kasan/report.c
@@ -0,0 +1,199 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This file contains common generic and tag-based KASAN error reporting code.
+ *
+ * Copyright (c) 2014 Samsung Electronics Co., Ltd.
+ * Author: Andrey Ryabinin <ryabinin.a.a@gmail.com>
+ *
+ * Some code borrowed from https://github.com/xairy/kasan-prototype by
+ *        Andrey Konovalov <andreyknvl@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+
+#include <common.h>
+#include <linux/bitops.h>
+#include <linux/kernel.h>
+#include <printk.h>
+#include <asm-generic/sections.h>
+
+#include "kasan.h"
+
+/* Shadow layout customization. */
+#define SHADOW_BYTES_PER_BLOCK 1
+#define SHADOW_BLOCKS_PER_ROW 16
+#define SHADOW_BYTES_PER_ROW (SHADOW_BLOCKS_PER_ROW * SHADOW_BYTES_PER_BLOCK)
+#define SHADOW_ROWS_AROUND_ADDR 2
+
+static unsigned long kasan_flags;
+
+#define KASAN_BIT_REPORTED	0
+#define KASAN_BIT_MULTI_SHOT	1
+
+bool kasan_save_enable_multi_shot(void)
+{
+	return test_and_set_bit(KASAN_BIT_MULTI_SHOT, &kasan_flags);
+}
+EXPORT_SYMBOL_GPL(kasan_save_enable_multi_shot);
+
+void kasan_restore_multi_shot(bool enabled)
+{
+	if (!enabled)
+		clear_bit(KASAN_BIT_MULTI_SHOT, &kasan_flags);
+}
+EXPORT_SYMBOL_GPL(kasan_restore_multi_shot);
+
+static void print_error_description(struct kasan_access_info *info)
+{
+	pr_err("BUG: KASAN: %s in %pS\n",
+		get_bug_type(info), (void *)info->ip);
+	pr_err("%s of size %zu at addr %px\n",
+		info->is_write ? "Write" : "Read", info->access_size,
+		info->access_addr);
+}
+
+static void start_report(unsigned long *flags)
+{
+	/*
+	 * Make sure we don't end up in loop.
+	 */
+	kasan_disable_current();
+	pr_err("==================================================================\n");
+}
+
+static void end_report(unsigned long *flags)
+{
+	pr_err("==================================================================\n");
+	kasan_enable_current();
+}
+
+static inline bool kernel_or_module_addr(const void *addr)
+{
+	if (addr >= (void *)_stext && addr < (void *)_end)
+		return true;
+	return false;
+}
+
+static void print_address_description(void *addr, u8 tag)
+{
+	dump_stack();
+	pr_err("\n");
+
+	if (kernel_or_module_addr(addr)) {
+		pr_err("The buggy address belongs to the variable:\n");
+		pr_err(" %pS\n", addr);
+	}
+}
+
+static bool row_is_guilty(const void *row, const void *guilty)
+{
+	return (row <= guilty) && (guilty < row + SHADOW_BYTES_PER_ROW);
+}
+
+static int shadow_pointer_offset(const void *row, const void *shadow)
+{
+	/* The length of ">ff00ff00ff00ff00: " is
+	 *    3 + (BITS_PER_LONG/8)*2 chars.
+	 */
+	return 3 + (BITS_PER_LONG/8)*2 + (shadow - row)*2 +
+		(shadow - row) / SHADOW_BYTES_PER_BLOCK + 1;
+}
+
+static void print_shadow_for_address(const void *addr)
+{
+	int i;
+	const void *shadow = kasan_mem_to_shadow(addr);
+	const void *shadow_row;
+
+	shadow_row = (void *)round_down((unsigned long)shadow,
+					SHADOW_BYTES_PER_ROW)
+		- SHADOW_ROWS_AROUND_ADDR * SHADOW_BYTES_PER_ROW;
+
+	pr_err("Memory state around the buggy address:\n");
+
+	for (i = -SHADOW_ROWS_AROUND_ADDR; i <= SHADOW_ROWS_AROUND_ADDR; i++) {
+		const void *kaddr = kasan_shadow_to_mem(shadow_row);
+		char buffer[4 + (BITS_PER_LONG/8)*2];
+		char shadow_buf[SHADOW_BYTES_PER_ROW];
+
+		snprintf(buffer, sizeof(buffer),
+			(i == 0) ? ">%px: " : " %px: ", kaddr);
+		/*
+		 * We should not pass a shadow pointer to generic
+		 * function, because generic functions may try to
+		 * access kasan mapping for the passed address.
+		 */
+		memcpy(shadow_buf, shadow_row, SHADOW_BYTES_PER_ROW);
+		print_hex_dump(KERN_ERR, buffer,
+			DUMP_PREFIX_NONE, SHADOW_BYTES_PER_ROW, 1,
+			shadow_buf, SHADOW_BYTES_PER_ROW, 0);
+
+		if (row_is_guilty(shadow_row, shadow))
+			printf("%*c\n",
+				shadow_pointer_offset(shadow_row, shadow),
+				'^');
+
+		shadow_row += SHADOW_BYTES_PER_ROW;
+	}
+}
+
+static bool report_enabled(void)
+{
+	if (kasan_depth)
+		return false;
+	if (test_bit(KASAN_BIT_MULTI_SHOT, &kasan_flags))
+		return true;
+	return !test_and_set_bit(KASAN_BIT_REPORTED, &kasan_flags);
+}
+
+static void __kasan_report(unsigned long addr, size_t size, bool is_write,
+				unsigned long ip)
+{
+	struct kasan_access_info info;
+	void *tagged_addr;
+	void *untagged_addr;
+	unsigned long flags;
+
+	tagged_addr = (void *)addr;
+	untagged_addr = reset_tag(tagged_addr);
+
+	info.access_addr = tagged_addr;
+	if (addr_has_shadow(untagged_addr))
+		info.first_bad_addr = find_first_bad_addr(tagged_addr, size);
+	else
+		info.first_bad_addr = untagged_addr;
+	info.access_size = size;
+	info.is_write = is_write;
+	info.ip = ip;
+
+	start_report(&flags);
+
+	print_error_description(&info);
+	pr_err("\n");
+
+	if (addr_has_shadow(untagged_addr)) {
+		print_address_description(untagged_addr, get_tag(tagged_addr));
+		pr_err("\n");
+		print_shadow_for_address(info.first_bad_addr);
+	} else {
+		dump_stack();
+	}
+
+	end_report(&flags);
+}
+
+bool kasan_report(unsigned long addr, size_t size, bool is_write,
+			unsigned long ip)
+{
+	bool ret = false;
+
+	if (likely(report_enabled())) {
+		__kasan_report(addr, size, is_write, ip);
+		ret = true;
+	}
+
+	return ret;
+}
diff --git a/scripts/Makefile.kasan b/scripts/Makefile.kasan
new file mode 100644
index 0000000000..83f6aa543d
--- /dev/null
+++ b/scripts/Makefile.kasan
@@ -0,0 +1,17 @@
+ # SPDX-License-Identifier: GPL-2.0
+ifdef CONFIG_KASAN
+CFLAGS_KASAN_NOSANITIZE := -fno-builtin
+KASAN_SHADOW_OFFSET ?= $(CONFIG_KASAN_SHADOW_OFFSET)
+endif
+
+CFLAGS_KASAN_MINIMAL := -fsanitize=kernel-address
+
+cc-param = $(call cc-option, -mllvm -$(1), $(call cc-option, --param $(1)))
+
+CFLAGS_KASAN := $(CFLAGS_KASAN_MINIMAL) \
+	$(call cc-param,asan-globals=1) \
+	$(call cc-param,asan-instrument-allocas=1)
+
+ifndef CONFIG_CPU_64
+CFLAGS_KASAN += $(call cc-param,asan-stack=1)
+endif
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 337430cd00..ab7d9f2bdf 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -127,6 +127,16 @@ _c_flags       = $(KBUILD_CFLAGS) $(ccflags-y) $(CFLAGS_$(target-stem).o)
 _a_flags       = $(KBUILD_AFLAGS) $(asflags-y) $(AFLAGS_$(target-stem).o)
 _cpp_flags     = $(KBUILD_CPPFLAGS) $(cppflags-y) $(CPPFLAGS_$(target-stem).lds)
 
+#
+# Enable address sanitizer flags for kernel except some files or directories
+# we don't want to check (depends on variables KASAN_SANITIZE_obj.o, KASAN_SANITIZE)
+#
+ifeq ($(CONFIG_KASAN),y)
+_c_flags += $(if $(part-of-pbl),, $(if $(patsubst n%,, \
+		$(KASAN_SANITIZE_$(basetarget).o)$(KASAN_SANITIZE)y), \
+		$(CFLAGS_KASAN), $(CFLAGS_KASAN_NOSANITIZE)))
+endif
+
 ifeq ($(CONFIG_UBSAN),y)
 _CFLAGS_UBSAN   = $(eval _CFLAGS_UBSAN := $(CFLAGS_UBSAN))$(_CFLAGS_UBSAN)
 _c_flags       += $(if $(patsubst n%,, \
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
