Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kT4Ki-0004hC-52
 for barebox@lists.infradead.org; Thu, 15 Oct 2020 14:34:21 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 15 Oct 2020 16:34:14 +0200
Message-Id: <20201015143415.446978-1-m.tretter@pengutronix.de>
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
Subject: [PATCH v2 1/2] ARM: mmu64: allow to disable null pointer trap on zero
 page
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Barebox uses the zero page to trap NULL pointer dereferences. However,
if the SDRAM starts at address 0x0, this makes the first page of the
SDRAM inaccessible and makes it impossible to load images to offset 0x0
in the SDRAM.

Trapping NULL pointer dereferences on such systems is still desirable.
Therefore, add a function to disable the traps if accessing the zero
page is necessary and to re-enable the traps after the access is done.

The zero_page_memcpy function simplifies copying to the SDRAM, because
this is the most common required functionality, but memtest also
accesses the zero page and does not use memcpy.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
v2:
- add a helper function for copying to or from the zero page

I am not a fan of having an architecture-specific memcpy for the zero
page, because there are other cases that need disabling of the zero
page, e.g. memtest. Therefore, I am going for a helper for memcpy, but
still expose the architecture-specific enable/disable logic.
---
 arch/arm/cpu/Kconfig  |  1 +
 arch/arm/cpu/mmu_64.c | 13 ++++++++++-
 include/zero_page.h   | 54 +++++++++++++++++++++++++++++++++++++++++++
 lib/Kconfig           |  3 +++
 4 files changed, 70 insertions(+), 1 deletion(-)
 create mode 100644 include/zero_page.h

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index f9f52a625260..ca3bd98962e2 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -89,6 +89,7 @@ config CPU_V8
 	select ARM_EXCEPTIONS
 	select GENERIC_FIND_NEXT_BIT
 	select ARCH_HAS_STACK_DUMP
+	select ARCH_HAS_ZERO_PAGE
 
 config CPU_XSC3
         bool
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 7e9ae84810f6..bd15807f9160 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -10,6 +10,7 @@
 #include <init.h>
 #include <mmu.h>
 #include <errno.h>
+#include <zero_page.h>
 #include <linux/sizes.h>
 #include <asm/memory.h>
 #include <asm/pgtable64.h>
@@ -168,6 +169,16 @@ static void mmu_enable(void)
 	set_cr(get_cr() | CR_M | CR_C | CR_I);
 }
 
+void zero_page_disable(void)
+{
+	create_sections(0x0, 0x0, PAGE_SIZE, CACHED_MEM);
+}
+
+void zero_page_enable(void)
+{
+	create_sections(0x0, 0x0, PAGE_SIZE, 0x0);
+}
+
 /*
  * Prepare MMU for usage enable it.
  */
@@ -194,7 +205,7 @@ void __mmu_init(bool mmu_on)
 		create_sections(bank->start, bank->start, bank->size, CACHED_MEM);
 
 	/* Make zero page faulting to catch NULL pointer derefs */
-	create_sections(0x0, 0x0, 0x1000, 0x0);
+	zero_page_enable();
 
 	mmu_enable();
 }
diff --git a/include/zero_page.h b/include/zero_page.h
new file mode 100644
index 000000000000..14c85cb6c860
--- /dev/null
+++ b/include/zero_page.h
@@ -0,0 +1,54 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __ZERO_PAGE_H
+#define __ZERO_PAGE_H
+
+#include <common.h>
+
+#if defined CONFIG_ARCH_HAS_ZERO_PAGE
+
+/*
+ * zero_page_enable - enable null pointer trap
+ */
+void zero_page_enable(void);
+
+/*
+ * zero_page_disable - disable null pointer trap
+ *
+ * Disable the null pointer trap on the zero page if access to the zero page
+ * is actually required. Disable the trap with care and re-enable it
+ * immediately after the access to properly trap null pointers.
+ */
+void zero_page_disable(void);
+
+#else
+
+static inline void zero_page_enable(void)
+{
+}
+
+static inline void zero_page_disable(void)
+{
+}
+
+#endif
+
+static inline bool zero_page_contains(unsigned long addr)
+{
+	return addr < PAGE_SIZE;
+}
+
+/*
+ * zero_page_memcpy - copy to or from an address located in the zero page
+ */
+static inline void *zero_page_memcpy(void *dest, const void *src, size_t count)
+{
+	void *ret;
+
+	zero_page_disable();
+	ret = memcpy(dest, src, count);
+	zero_page_enable();
+
+	return ret;
+}
+
+#endif /* __ZERO_PAGE_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index 887f50ff003f..e5831ecdb9a7 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -182,6 +182,9 @@ config ARCH_HAS_STACK_DUMP
 config ARCH_HAS_DATA_ABORT_MASK
 	bool
 
+config ARCH_HAS_ZERO_PAGE
+	bool
+
 config HAVE_EFFICIENT_UNALIGNED_ACCESS
 	bool
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
