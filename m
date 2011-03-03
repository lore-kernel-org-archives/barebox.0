Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUQ-0003NB-Ld
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:30 +0000
Received: by mail-ww0-f49.google.com with SMTP id 40so1440130wwj.18
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:22 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:52 +0100
Message-Id: <4d701d49.9009d80a.2cd3.5e9b@mx.google.com>
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
Subject: [PATCH 38/54] Add arch/nios2/include/asm/memory_model.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/memory_model.h

---
 arch/nios2/include/asm/memory_model.h |   77 +++++++++++++++++++++++++++++++++
 1 files changed, 77 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/memory_model.h

diff --git a/arch/nios2/include/asm/memory_model.h b/arch/nios2/include/asm/memory_model.h
new file mode 100644
index 0000000..fb2d63f
--- /dev/null
+++ b/arch/nios2/include/asm/memory_model.h
@@ -0,0 +1,77 @@
+#ifndef __ASM_MEMORY_MODEL_H
+#define __ASM_MEMORY_MODEL_H
+
+#ifndef __ASSEMBLY__
+
+#if defined(CONFIG_FLATMEM)
+
+#ifndef ARCH_PFN_OFFSET
+#define ARCH_PFN_OFFSET		(0UL)
+#endif
+
+#elif defined(CONFIG_DISCONTIGMEM)
+
+#ifndef arch_pfn_to_nid
+#define arch_pfn_to_nid(pfn)	pfn_to_nid(pfn)
+#endif
+
+#ifndef arch_local_page_offset
+#define arch_local_page_offset(pfn, nid)	\
+	((pfn) - NODE_DATA(nid)->node_start_pfn)
+#endif
+
+#endif /* CONFIG_DISCONTIGMEM */
+
+/*
+ * supports 3 memory models.
+ */
+#if defined(CONFIG_FLATMEM)
+
+#define __pfn_to_page(pfn)	(mem_map + ((pfn) - ARCH_PFN_OFFSET))
+#define __page_to_pfn(page)	((unsigned long)((page) - mem_map) + \
+				 ARCH_PFN_OFFSET)
+#elif defined(CONFIG_DISCONTIGMEM)
+
+#define __pfn_to_page(pfn)			\
+({	unsigned long __pfn = (pfn);		\
+	unsigned long __nid = arch_pfn_to_nid(__pfn);  \
+	NODE_DATA(__nid)->node_mem_map + arch_local_page_offset(__pfn, __nid);\
+})
+
+#define __page_to_pfn(pg)						\
+({	struct page *__pg = (pg);					\
+	struct pglist_data *__pgdat = NODE_DATA(page_to_nid(__pg));	\
+	(unsigned long)(__pg - __pgdat->node_mem_map) +			\
+	 __pgdat->node_start_pfn;					\
+})
+
+#elif defined(CONFIG_SPARSEMEM_VMEMMAP)
+
+/* memmap is virtually contiguous.  */
+#define __pfn_to_page(pfn)	(vmemmap + (pfn))
+#define __page_to_pfn(page)	(unsigned long)((page) - vmemmap)
+
+#elif defined(CONFIG_SPARSEMEM)
+/*
+ * Note: section's mem_map is encorded to reflect its start_pfn.
+ * section[i].section_mem_map == mem_map's address - start_pfn;
+ */
+#define __page_to_pfn(pg)					\
+({	struct page *__pg = (pg);				\
+	int __sec = page_to_section(__pg);			\
+	(unsigned long)(__pg - __section_mem_map_addr(__nr_to_section(__sec)));	\
+})
+
+#define __pfn_to_page(pfn)				\
+({	unsigned long __pfn = (pfn);			\
+	struct mem_section *__sec = __pfn_to_section(__pfn);	\
+	__section_mem_map_addr(__sec) + __pfn;		\
+})
+#endif /* CONFIG_FLATMEM/DISCONTIGMEM/SPARSEMEM */
+
+#define page_to_pfn __page_to_pfn
+#define pfn_to_page __pfn_to_page
+
+#endif /* __ASSEMBLY__ */
+
+#endif
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
