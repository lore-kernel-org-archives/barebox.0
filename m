Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f174.google.com ([209.85.215.174])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tv6sf-0003uQ-E3
 for barebox@lists.infradead.org; Tue, 15 Jan 2013 13:48:46 +0000
Received: by mail-ea0-f174.google.com with SMTP id 1so47881eaa.19
 for <barebox@lists.infradead.org>; Tue, 15 Jan 2013 05:48:43 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Tue, 15 Jan 2013 14:48:44 +0100
Message-Id: <1358257730-20579-3-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1358257730-20579-1-git-send-email-alex.aring@gmail.com>
References: <1358257730-20579-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 2/8] mmu: add getters for pte cache flags
To: barebox@lists.infradead.org

Currently only arm architecture provide to change pte flags.
Cache pte flags are configured at boottime.

Adding getters to get this pte flags at runtime. In additional
of remap_range you can disable or enable caching in commands, for
example memtest.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/arm/cpu/mmu.c              | 14 ++++++++++++++
 arch/arm/include/asm/mmu.h      | 12 ++++++++++++
 arch/blackfin/include/asm/mmu.h | 10 ++++++++++
 arch/mips/include/asm/mmu.h     | 10 ++++++++++
 arch/nios2/include/asm/mmu.h    | 10 ++++++++++
 arch/openrisc/include/asm/mmu.h | 10 ++++++++++
 arch/ppc/include/asm/mmu.h      | 10 ++++++++++
 arch/sandbox/include/asm/mmu.h  | 10 ++++++++++
 arch/x86/include/asm/mmu.h      | 10 ++++++++++
 9 files changed, 96 insertions(+)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index b5c9c60..6e2ecca 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -52,11 +52,25 @@ extern int arm_architecture;
 #define PTE_FLAGS_CACHED_V4 (PTE_SMALL_AP_UNO_SRW | PTE_BUFFERABLE | PTE_CACHEABLE)
 #define PTE_FLAGS_UNCACHED_V4 PTE_SMALL_AP_UNO_SRW
 
+/*
+ * PTE flags to set cached and uncached areas.
+ * This will be determined at runtime.
+ */
 static uint32_t PTE_FLAGS_CACHED;
 static uint32_t PTE_FLAGS_UNCACHED;
 
 #define PTE_MASK ((1 << 12) - 1)
 
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
 /*
  * Create a second level translation table for the given virtual address.
  * We initially create a flat uncached mapping on it.
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index ae1686b..f32cea6 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -43,6 +43,8 @@ unsigned long virt_to_phys(void *virt);
 void *phys_to_virt(unsigned long phys);
 void remap_range(void *_start, size_t size, uint32_t flags);
 void *map_io_sections(unsigned long physaddr, void *start, size_t size);
+uint32_t mmu_get_pte_cached_flags(void);
+uint32_t mmu_get_pte_uncached_flags(void);
 
 #else
 static inline void *dma_alloc_coherent(size_t size)
@@ -86,6 +88,16 @@ static inline void *map_io_sections(unsigned long phys, void *start, size_t size
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
index 0485a43..eed4c33 100644
--- a/arch/blackfin/include/asm/mmu.h
+++ b/arch/blackfin/include/asm/mmu.h
@@ -5,5 +5,15 @@ static inline void remap_range(void *_start, size_t size, uint32_t flags)
 {
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
 #endif /* __ASM_MMU_H */
 
diff --git a/arch/mips/include/asm/mmu.h b/arch/mips/include/asm/mmu.h
index 0485a43..eed4c33 100644
--- a/arch/mips/include/asm/mmu.h
+++ b/arch/mips/include/asm/mmu.h
@@ -5,5 +5,15 @@ static inline void remap_range(void *_start, size_t size, uint32_t flags)
 {
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
 #endif /* __ASM_MMU_H */
 
diff --git a/arch/nios2/include/asm/mmu.h b/arch/nios2/include/asm/mmu.h
index 0485a43..eed4c33 100644
--- a/arch/nios2/include/asm/mmu.h
+++ b/arch/nios2/include/asm/mmu.h
@@ -5,5 +5,15 @@ static inline void remap_range(void *_start, size_t size, uint32_t flags)
 {
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
 #endif /* __ASM_MMU_H */
 
diff --git a/arch/openrisc/include/asm/mmu.h b/arch/openrisc/include/asm/mmu.h
index 0485a43..eed4c33 100644
--- a/arch/openrisc/include/asm/mmu.h
+++ b/arch/openrisc/include/asm/mmu.h
@@ -5,5 +5,15 @@ static inline void remap_range(void *_start, size_t size, uint32_t flags)
 {
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
 #endif /* __ASM_MMU_H */
 
diff --git a/arch/ppc/include/asm/mmu.h b/arch/ppc/include/asm/mmu.h
index af263ae..050d84b 100644
--- a/arch/ppc/include/asm/mmu.h
+++ b/arch/ppc/include/asm/mmu.h
@@ -545,4 +545,14 @@ static inline void remap_range(void *_start, size_t size, uint32_t flags)
 {
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
 #endif /* _PPC_MMU_H_ */
diff --git a/arch/sandbox/include/asm/mmu.h b/arch/sandbox/include/asm/mmu.h
index 0485a43..eed4c33 100644
--- a/arch/sandbox/include/asm/mmu.h
+++ b/arch/sandbox/include/asm/mmu.h
@@ -5,5 +5,15 @@ static inline void remap_range(void *_start, size_t size, uint32_t flags)
 {
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
 #endif /* __ASM_MMU_H */
 
diff --git a/arch/x86/include/asm/mmu.h b/arch/x86/include/asm/mmu.h
index 0485a43..eed4c33 100644
--- a/arch/x86/include/asm/mmu.h
+++ b/arch/x86/include/asm/mmu.h
@@ -5,5 +5,15 @@ static inline void remap_range(void *_start, size_t size, uint32_t flags)
 {
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
 #endif /* __ASM_MMU_H */
 
-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
