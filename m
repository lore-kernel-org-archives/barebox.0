Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUU-0003Xd-QN
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:35 +0000
Received: by wyf23 with SMTP id 23so1676381wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:25 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:56 +0100
Message-Id: <4d701d4d.9009d80a.2cd3.5e9f@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 42/54] Add arch/nios2/include/asm/page.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/page.h

---
 arch/nios2/include/asm/page.h |  129 +++++++++++++++++++++++++++++++++++++++++
 1 files changed, 129 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/page.h

diff --git a/arch/nios2/include/asm/page.h b/arch/nios2/include/asm/page.h
new file mode 100644
index 0000000..f855072
--- /dev/null
+++ b/arch/nios2/include/asm/page.h
@@ -0,0 +1,129 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1994 - 1999, 2000, 03 Ralf Baechle
+ * Copyright (C) 1999, 2000 Silicon Graphics, Inc.
+ */
+#ifndef _ASM_NIOS2_PAGE_H
+#define _ASM_NIOS2_PAGE_H
+
+
+#include <asm/spaces.h>
+
+/*
+ * PAGE_SHIFT determines the page size
+ */
+#define PAGE_SHIFT	12
+#define PAGE_SIZE	4096
+#define PAGE_MASK	(~(PAGE_SIZE - 1))
+
+#ifndef __ASSEMBLY__
+
+/*
+ * This gives the physical RAM offset.
+ */
+#define PHYS_OFFSET		DDR2_TOP_BASE
+
+/*
+ * It's normally defined only for FLATMEM config but it's
+ * used in our early mem init code for all memory models.
+ * So always define it.
+ */
+#define ARCH_PFN_OFFSET		PFN_UP(PHYS_OFFSET)
+
+#include <asm/pfn.h>
+#include <asm/io.h>
+#include <linux/string.h>
+
+static inline void clear_page(void * page) {
+  memset(page, 0, PAGE_SIZE);
+}
+extern void copy_page(void * to, void * from);
+
+extern unsigned long shm_align_mask;
+
+static inline unsigned long pages_do_alias(unsigned long addr1,
+	unsigned long addr2)
+{
+	return (addr1 ^ addr2) & shm_align_mask;
+}
+
+struct page;
+
+extern void clear_user_page(void *addr, unsigned long vaddr, struct page *page);
+
+extern void copy_user_page(void *vto, void *vfrom, unsigned long vaddr,
+			   struct page *to);
+struct vm_area_struct;
+
+/*
+ * These are used to make use of C type-checking..
+ */
+typedef struct { unsigned long pte; } pte_t;
+#define pte_val(x)	((x).pte)
+#define __pte(x)	((pte_t) { (x) } )
+
+
+/*
+ * Finall the top of the hierarchy, the pgd
+ */
+typedef struct { unsigned long pgd; } pgd_t;
+#define pgd_val(x)	((x).pgd)
+#define __pgd(x)	((pgd_t) { (x) } )
+
+/*
+ * Manipulate page protection bits
+ */
+typedef struct { unsigned long pgprot; } pgprot_t;
+#define pgprot_val(x)	((x).pgprot)
+#define __pgprot(x)	((pgprot_t) { (x) } )
+
+typedef struct page *pgtable_t;
+
+/*
+ * On R4000-style MMUs where a TLB entry is mapping a adjacent even / odd
+ * pair of pages we only have a single global bit per pair of pages.  When
+ * writing to the TLB make sure we always have the bit set for both pages
+ * or none.  This macro is used to access the `buddy' of the pte we're just
+ * working on.
+ */
+#define ptep_buddy(x)	((pte_t *)((unsigned long)(x) ^ sizeof(pte_t)))
+
+#endif /* !__ASSEMBLY__ */
+
+/*
+ * __pa()/__va() should be used only during mem init.
+ */
+#define __pa_page_offset(x)	PAGE_OFFSET
+#define __pa_symbol(x)	__pa(RELOC_HIDE((unsigned long)(x),0))
+#define __pa(x)		((unsigned long)(x) - PAGE_OFFSET + PHYS_OFFSET)
+#define __va(x)		((void *)((unsigned long)(x) + PAGE_OFFSET - PHYS_OFFSET))
+
+#define pfn_to_kaddr(pfn)	__va((pfn) << PAGE_SHIFT)
+
+#define pfn_valid(pfn)		((pfn) >= ARCH_PFN_OFFSET && (pfn) < (max_mapnr + ARCH_PFN_OFFSET))
+
+#define virt_to_page(kaddr)	pfn_to_page(PFN_DOWN(virt_to_phys(kaddr)))
+#define virt_addr_valid(kaddr)	pfn_valid(PFN_DOWN(virt_to_phys(kaddr)))
+
+#define VM_DATA_DEFAULT_FLAGS	(VM_READ | VM_WRITE | VM_EXEC | \
+				 VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC)
+
+#define UNCAC_ADDR(addr) ((void *)((unsigned)(addr) | IO_REGION_BASE))
+#define CAC_ADDR(addr) ((void *)(((unsigned)(addr) & ~IO_REGION_BASE) | KERNEL_REGION_BASE))
+
+#define page_to_virt(page)	((((page) - mem_map) << PAGE_SHIFT) + PAGE_OFFSET)
+
+#if 0
+#ifdef CONFIG_LIMITED_DMA
+#define WANT_PAGE_VIRTUAL
+#endif
+#define WANT_PAGE_VIRTUAL
+#endif
+
+#include <asm/memory_model.h>
+#include <asm/getorder.h>
+
+#endif /* _ASM_NIOS2_PAGE_H */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
