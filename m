Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkIBQ-0004VS-Fq
 for barebox@lists.infradead.org; Fri, 18 Jan 2019 00:39:04 +0000
Received: by mail-pf1-x441.google.com with SMTP id c123so5679971pfb.0
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2019 16:38:52 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 Jan 2019 16:38:27 -0800
Message-Id: <20190118003827.17517-13-andrew.smirnov@gmail.com>
In-Reply-To: <20190118003827.17517-1-andrew.smirnov@gmail.com>
References: <20190118003827.17517-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 12/12] ARM: mmu: Make sure DMA coherent memory is zeroed out
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Sam Ravnborg <sam@ravnborg.org>

In order to avoid passing random/junky values to DMA/HW as well as to
allow simplifying memory initialization in individual drivers, change
dma_alloc_coherent() to guarantee that memory it returns is properly
zeroed out.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu-common.c | 3 ++-
 arch/arm/cpu/mmu-common.h | 1 +
 arch/arm/cpu/mmu.c        | 2 +-
 arch/arm/cpu/mmu_64.c     | 8 ++++++++
 4 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index c5b24bff8..aeefbb2da 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -43,7 +43,8 @@ void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags)
 	if (dma_handle)
 		*dma_handle = (dma_addr_t)ret;
 
-	dma_inv_range(ret, size);
+	memset(ret, 0, size);
+	dma_flush_range(ret, size);
 
 	arch_remap_range(ret, size, flags);
 
diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index 679799c3c..0a33b138e 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -2,6 +2,7 @@
 #define __ARM_MMU_COMMON_H
 
 void dma_inv_range(void *ptr, size_t size);
+void dma_flush_range(void *ptr, size_t size);
 void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags);
 void __mmu_init(bool mmu_on);
 
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 9e261a0be..29816ad56 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -97,7 +97,7 @@ static u32 *find_pte(unsigned long adr)
 	return &table[(adr >> PAGE_SHIFT) & 0xff];
 }
 
-static void dma_flush_range(void *ptr, size_t size)
+void dma_flush_range(void *ptr, size_t size)
 {
 	unsigned long start = (unsigned long)ptr;
 	unsigned long end = start + size;
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index a3074b10d..b45a69661 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -233,6 +233,14 @@ void dma_inv_range(void *ptr, size_t size)
 	v8_inv_dcache_range(start, end);
 }
 
+void dma_flush_range(void *ptr, size_t size)
+{
+	unsigned long start = (unsigned long)ptr;
+	unsigned long end = start + size - 1;
+
+	v8_flush_dcache_range(start, end);
+}
+
 void dma_sync_single_for_device(dma_addr_t address, size_t size,
                                 enum dma_data_direction dir)
 {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
