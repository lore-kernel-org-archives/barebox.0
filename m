Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f177.google.com ([209.85.215.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TuRZJ-0002OU-Rf
 for barebox@lists.infradead.org; Sun, 13 Jan 2013 17:42:03 +0000
Received: by mail-ea0-f177.google.com with SMTP id c10so1354313eaa.36
 for <barebox@lists.infradead.org>; Sun, 13 Jan 2013 09:42:00 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sun, 13 Jan 2013 18:42:19 +0100
Message-Id: <1358098943-18928-6-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
References: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 5/9] mmu: make remap_range global accessable
To: barebox@lists.infradead.org
Cc: marc@cpdesign.com

There is only one implementation of 'remap_range' in
arm architecture. Added dummy function for others architectures.

Added new function 'mmu_get_pte_cached_flags' and
'mmu_get_pte_uncached_flags' to get pte flags for caching and
uncaching pages.

These flags are in arm architecture configured at runtime.
Others architectures will return 0, which don't have a mmu
implementation for this.

Also moved PAGE_ALIGN and add PAGE_ALIGN_DOWN macros to common.h.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/arm/cpu/mmu.c              | 18 +++++++++++++++---
 arch/arm/include/asm/mmu.h      | 17 +++++++++++++++++
 arch/blackfin/include/asm/mmu.h | 19 +++++++++++++++++++
 arch/mips/include/asm/mmu.h     | 19 +++++++++++++++++++
 arch/nios2/include/asm/mmu.h    | 19 +++++++++++++++++++
 arch/openrisc/include/asm/mmu.h | 19 +++++++++++++++++++
 arch/ppc/include/asm/mmu.h      | 15 +++++++++++++++
 arch/sandbox/include/asm/mmu.h  | 19 +++++++++++++++++++
 arch/x86/include/asm/mmu.h      | 19 +++++++++++++++++++
 include/common.h                |  2 ++
 10 files changed, 163 insertions(+), 3 deletions(-)
 create mode 100644 arch/blackfin/include/asm/mmu.h
 create mode 100644 arch/mips/include/asm/mmu.h
 create mode 100644 arch/nios2/include/asm/mmu.h
 create mode 100644 arch/openrisc/include/asm/mmu.h
 create mode 100644 arch/sandbox/include/asm/mmu.h
 create mode 100644 arch/x86/include/asm/mmu.h

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 40b7ec4..50112d2 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -52,9 +52,23 @@ extern int arm_architecture;
 #define PTE_FLAGS_CACHED_V4 (PTE_SMALL_AP_UNO_SRW | PTE_BUFFERABLE | PTE_CACHEABLE)
 #define PTE_FLAGS_UNCACHED_V4 PTE_SMALL_AP_UNO_SRW
 
+/*
+ * PTE flags to set cached and uncached areas.
+ * This will be determined at runtime.
+ */
 static uint32_t PTE_FLAGS_CACHED;
 static uint32_t PTE_FLAGS_UNCACHED;
 
+uint32_t mmu_get_pte_cached_flags()
+{
+	return PTE_FLAGS_CACHED;
+}
+
+uint32_t mmu_get_pte_uncached_flags()
+{
+	return PTE_FLAGS_UNCACHED;
+}
+
 #define PTE_MASK ((1 << 12) - 1)
 
 /*
@@ -93,7 +107,7 @@ static u32 *find_pte(unsigned long adr)
 	return &table[(adr >> PAGE_SHIFT) & 0xff];
 }
 
-static void remap_range(void *_start, size_t size, uint32_t flags)
+void remap_range(void *_start, size_t size, uint32_t flags)
 {
 	unsigned long start = (unsigned long)_start;
 	u32 *p;
@@ -294,8 +308,6 @@ void mmu_disable(void)
 	__mmu_cache_off();
 }
 
-#define PAGE_ALIGN(s) (((s) + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1))
-
 void *dma_alloc_coherent(size_t size)
 {
 	void *ret;
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index a66da8c..f32cea6 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -41,7 +41,10 @@ void dma_flush_range(unsigned long, unsigned long);
 void dma_inv_range(unsigned long, unsigned long);
 unsigned long virt_to_phys(void *virt);
 void *phys_to_virt(unsigned long phys);
+void remap_range(void *_start, size_t size, uint32_t flags);
 void *map_io_sections(unsigned long physaddr, void *start, size_t size);
+uint32_t mmu_get_pte_cached_flags(void);
+uint32_t mmu_get_pte_uncached_flags(void);
 
 #else
 static inline void *dma_alloc_coherent(size_t size)
@@ -76,11 +79,25 @@ static inline void dma_inv_range(unsigned long s, unsigned long e)
 {
 }
 
+static inline void remap_range(void *_start, size_t size, uint32_t flags)
+{
+}
+
 static inline void *map_io_sections(unsigned long phys, void *start, size_t size)
 {
 	return (void *)phys;
 }
 
+static inline uint32_t mmu_get_pte_cached_flags(void)
+{
+	return 0;
+}
+
+static inline uint32_t mmu_get_pte_uncached_flags(void)
+{
+	return 0;
+}
+
 #endif
 
 #ifdef CONFIG_CACHE_L2X0
diff --git a/arch/blackfin/include/asm/mmu.h b/arch/blackfin/include/asm/mmu.h
new file mode 100644
index 0000000..71f671f
--- /dev/null
+++ b/arch/blackfin/include/asm/mmu.h
@@ -0,0 +1,19 @@
+#ifndef __ASM_MMU_H
+#define __ASM_MMU_H
+
+static inline void remap_range(void *_start, size_t size, uint32_t flags)
+{
+}
+
+static inline uint32_t mmu_get_pte_cached_flags(void)
+{
+	    return 0;
+}
+
+static inline uint32_t mmu_get_pte_uncached_flags(void)
+{
+	    return 0;
+}
+
+#endif /* __ASM_MMU_H */
+
diff --git a/arch/mips/include/asm/mmu.h b/arch/mips/include/asm/mmu.h
new file mode 100644
index 0000000..71f671f
--- /dev/null
+++ b/arch/mips/include/asm/mmu.h
@@ -0,0 +1,19 @@
+#ifndef __ASM_MMU_H
+#define __ASM_MMU_H
+
+static inline void remap_range(void *_start, size_t size, uint32_t flags)
+{
+}
+
+static inline uint32_t mmu_get_pte_cached_flags(void)
+{
+	    return 0;
+}
+
+static inline uint32_t mmu_get_pte_uncached_flags(void)
+{
+	    return 0;
+}
+
+#endif /* __ASM_MMU_H */
+
diff --git a/arch/nios2/include/asm/mmu.h b/arch/nios2/include/asm/mmu.h
new file mode 100644
index 0000000..71f671f
--- /dev/null
+++ b/arch/nios2/include/asm/mmu.h
@@ -0,0 +1,19 @@
+#ifndef __ASM_MMU_H
+#define __ASM_MMU_H
+
+static inline void remap_range(void *_start, size_t size, uint32_t flags)
+{
+}
+
+static inline uint32_t mmu_get_pte_cached_flags(void)
+{
+	    return 0;
+}
+
+static inline uint32_t mmu_get_pte_uncached_flags(void)
+{
+	    return 0;
+}
+
+#endif /* __ASM_MMU_H */
+
diff --git a/arch/openrisc/include/asm/mmu.h b/arch/openrisc/include/asm/mmu.h
new file mode 100644
index 0000000..71f671f
--- /dev/null
+++ b/arch/openrisc/include/asm/mmu.h
@@ -0,0 +1,19 @@
+#ifndef __ASM_MMU_H
+#define __ASM_MMU_H
+
+static inline void remap_range(void *_start, size_t size, uint32_t flags)
+{
+}
+
+static inline uint32_t mmu_get_pte_cached_flags(void)
+{
+	    return 0;
+}
+
+static inline uint32_t mmu_get_pte_uncached_flags(void)
+{
+	    return 0;
+}
+
+#endif /* __ASM_MMU_H */
+
diff --git a/arch/ppc/include/asm/mmu.h b/arch/ppc/include/asm/mmu.h
index b2dd0b7..799653a 100644
--- a/arch/ppc/include/asm/mmu.h
+++ b/arch/ppc/include/asm/mmu.h
@@ -540,4 +540,19 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
 					(rt<<21)|(ra<<16)|(ws<<11)|(946<<1)
 
 #endif
+
+static inline void remap_range(void *_start, size_t size, uint32_t flags)
+{
+}
+
+static inline uint32_t mmu_get_pte_cached_flags(void)
+{
+	    return 0;
+}
+
+static inline uint32_t mmu_get_pte_uncached_flags(void)
+{
+	    return 0;
+}
+
 #endif /* _PPC_MMU_H_ */
diff --git a/arch/sandbox/include/asm/mmu.h b/arch/sandbox/include/asm/mmu.h
new file mode 100644
index 0000000..71f671f
--- /dev/null
+++ b/arch/sandbox/include/asm/mmu.h
@@ -0,0 +1,19 @@
+#ifndef __ASM_MMU_H
+#define __ASM_MMU_H
+
+static inline void remap_range(void *_start, size_t size, uint32_t flags)
+{
+}
+
+static inline uint32_t mmu_get_pte_cached_flags(void)
+{
+	    return 0;
+}
+
+static inline uint32_t mmu_get_pte_uncached_flags(void)
+{
+	    return 0;
+}
+
+#endif /* __ASM_MMU_H */
+
diff --git a/arch/x86/include/asm/mmu.h b/arch/x86/include/asm/mmu.h
new file mode 100644
index 0000000..71f671f
--- /dev/null
+++ b/arch/x86/include/asm/mmu.h
@@ -0,0 +1,19 @@
+#ifndef __ASM_MMU_H
+#define __ASM_MMU_H
+
+static inline void remap_range(void *_start, size_t size, uint32_t flags)
+{
+}
+
+static inline uint32_t mmu_get_pte_cached_flags(void)
+{
+	    return 0;
+}
+
+static inline uint32_t mmu_get_pte_uncached_flags(void)
+{
+	    return 0;
+}
+
+#endif /* __ASM_MMU_H */
+
diff --git a/include/common.h b/include/common.h
index b1c96de..3e67164 100644
--- a/include/common.h
+++ b/include/common.h
@@ -225,6 +225,8 @@ int run_shell(void);
 
 #define PAGE_SIZE	4096
 #define PAGE_SHIFT	12
+#define PAGE_ALIGN(s) (((s) + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1))
+#define PAGE_ALIGN_DOWN(x) ((x) & ~(PAGE_SIZE - 1))
 
 int memory_display(char *addr, loff_t offs, ulong nbytes, int size, int swab);
 
-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
