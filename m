Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x241.google.com ([2a00:1450:400c:c0c::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJJRc-0002j6-Eh
 for barebox@lists.infradead.org; Thu, 17 May 2018 13:59:51 +0000
Received: by mail-wr0-x241.google.com with SMTP id v60-v6so5805685wrc.7
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 06:59:38 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 17 May 2018 16:58:48 +0300
Message-Id: <20180517135858.16202-6-pmamonov@gmail.com>
In-Reply-To: <20180517135858.16202-1-pmamonov@gmail.com>
References: <20180517135858.16202-1-pmamonov@gmail.com>
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
Subject: [RFC PATCH 05/15] mips: fix dma_sync_* stuff for MIPS64
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/include/asm/dma-mapping.h |  2 +-
 arch/mips/include/asm/io.h          |  4 ++--
 arch/mips/lib/c-r4k.c               | 26 +++++++++++++-------------
 arch/mips/lib/dma-default.c         |  6 ++++--
 4 files changed, 20 insertions(+), 18 deletions(-)

diff --git a/arch/mips/include/asm/dma-mapping.h b/arch/mips/include/asm/dma-mapping.h
index c71a08703..d4cbb3cac 100644
--- a/arch/mips/include/asm/dma-mapping.h
+++ b/arch/mips/include/asm/dma-mapping.h
@@ -19,7 +19,7 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 	if (dma_handle)
 		*dma_handle = CPHYSADDR(ret);
 
-	dma_flush_range((unsigned long)ret, (unsigned long)(ret + size));
+	dma_flush_range(ret, ret + size);
 
 	return (void *)CKSEG1ADDR(ret);
 }
diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 5a4cbf564..07b337e76 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -15,8 +15,8 @@
 #include <asm/addrspace.h>
 #include <asm/byteorder.h>
 
-void dma_flush_range(unsigned long, unsigned long);
-void dma_inv_range(unsigned long, unsigned long);
+void dma_flush_range(void *, void *);
+void dma_inv_range(void *, void *);
 
 /*
  *     virt_to_phys - map virtual addresses to physical
diff --git a/arch/mips/lib/c-r4k.c b/arch/mips/lib/c-r4k.c
index cb0544a53..2d652be61 100644
--- a/arch/mips/lib/c-r4k.c
+++ b/arch/mips/lib/c-r4k.c
@@ -27,12 +27,12 @@
 	: "i" (op), "R" (*(unsigned char *)(addr)))
 
 #define __BUILD_BLAST_CACHE_RANGE(pfx, desc, hitop)			\
-static inline void blast_##pfx##cache##_range(unsigned long start,	\
-					      unsigned long end)	\
+static inline void blast_##pfx##cache##_range(void *start,		\
+					      void *end)		\
 {									\
-	unsigned long lsize = current_cpu_data.desc.linesz;		\
-	unsigned long addr = start & ~(lsize - 1);			\
-	unsigned long aend = (end - 1) & ~(lsize - 1);			\
+	uintptr_t lsize = current_cpu_data.desc.linesz;			\
+	void *addr = (void *)((uintptr_t)start & ~(lsize - 1));		\
+	void *aend = (void *)(((uintptr_t)end - 1) & ~(lsize - 1));	\
 									\
 	if (current_cpu_data.desc.flags & MIPS_CACHE_NOT_PRESENT)	\
 		return;							\
@@ -52,33 +52,33 @@ void flush_cache_all(void)
 {
 	struct cpuinfo_mips *c = &current_cpu_data;
 	unsigned long lsize;
-	unsigned long addr;
-	unsigned long aend;
+	void *addr;
+	void *aend;
 	unsigned int icache_size, dcache_size;
 
 	dcache_size = c->dcache.waysize * c->dcache.ways;
 	lsize = c->dcache.linesz;
-	aend = (CKSEG0 + dcache_size - 1) & ~(lsize - 1);
-	for (addr = CKSEG0; addr <= aend; addr += lsize)
+	aend = (void *)((CKSEG0 + dcache_size - 1) & ~(lsize - 1));
+	for (addr = (void *)CKSEG0; addr <= aend; addr += lsize)
 		cache_op(Index_Writeback_Inv_D, addr);
 
 	icache_size = c->icache.waysize * c->icache.ways;
 	lsize = c->icache.linesz;
-	aend = (CKSEG0 + icache_size - 1) & ~(lsize - 1);
-	for (addr = CKSEG0; addr <= aend; addr += lsize)
+	aend = (void *)((CKSEG0 + icache_size - 1) & ~(lsize - 1));
+	for (addr = (void *)CKSEG0; addr <= aend; addr += lsize)
 		cache_op(Index_Invalidate_I, addr);
 
 	/* secondatory cache skipped */
 }
 
-void dma_flush_range(unsigned long start, unsigned long end)
+void dma_flush_range(void *start, void *end)
 {
 	blast_dcache_range(start, end);
 
 	/* secondatory cache skipped */
 }
 
-void dma_inv_range(unsigned long start, unsigned long end)
+void dma_inv_range(void *start, void *end)
 {
 	blast_inv_dcache_range(start, end);
 
diff --git a/arch/mips/lib/dma-default.c b/arch/mips/lib/dma-default.c
index 71c1e423b..79d61afd8 100644
--- a/arch/mips/lib/dma-default.c
+++ b/arch/mips/lib/dma-default.c
@@ -17,9 +17,11 @@
 
 #if defined(CONFIG_CPU_MIPS32) || \
 	defined(CONFIG_CPU_MIPS64)
-static inline void __dma_sync_mips(unsigned long addr, size_t size,
+static inline void __dma_sync_mips(dma_addr_t _addr, size_t size,
 				   enum dma_data_direction direction)
 {
+	void *addr = (void *)CKSEG0ADDR(_addr);
+
 	switch (direction) {
 	case DMA_TO_DEVICE:
 		dma_flush_range(addr, addr + size);
@@ -38,7 +40,7 @@ static inline void __dma_sync_mips(unsigned long addr, size_t size,
 	}
 }
 #else
-static inline void __dma_sync_mips(void *addr, size_t size,
+static inline void __dma_sync_mips(dma_addr_t _addr, size_t size,
 	enum dma_data_direction direction)
 {
 }
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
