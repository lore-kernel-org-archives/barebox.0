Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkIBJ-0004NH-GB
 for barebox@lists.infradead.org; Fri, 18 Jan 2019 00:38:48 +0000
Received: by mail-pg1-x543.google.com with SMTP id w7so5180176pgp.13
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2019 16:38:45 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 Jan 2019 16:38:21 -0800
Message-Id: <20190118003827.17517-7-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 06/12] ARM: mmu: Share code for dma_free_coherent()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Sam Ravnborg <sam@ravnborg.org>

Now that AArch64 version is calling arch_remap_range() it is identical
to ARM version in mmu.c. Move the definition to mmu-common.c to avoid
duplication.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu-common.c | 8 ++++++++
 arch/arm/cpu/mmu.c        | 8 --------
 arch/arm/cpu/mmu_64.c     | 8 --------
 3 files changed, 8 insertions(+), 16 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 5d5812974..65cc786e1 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -23,3 +23,11 @@ void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
 {
 	dma_sync_single_for_cpu(addr, size, dir);
 }
+
+void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
+{
+	size = PAGE_ALIGN(size);
+	arch_remap_range(mem, size, MAP_CACHED);
+
+	free(mem);
+}
\ No newline at end of file
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index f134e8bb3..70ab5ebb5 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -527,14 +527,6 @@ void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
 	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
 }
 
-void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
-{
-	size = PAGE_ALIGN(size);
-	arch_remap_range(mem, size, MAP_CACHED);
-
-	free(mem);
-}
-
 void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 			     enum dma_data_direction dir)
 {
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index ad94ff14d..a7186eda4 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -262,14 +262,6 @@ void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 	return ret;
 }
 
-void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
-{
-	size = PAGE_ALIGN(size);
-	arch_remap_range(ret, size, MAP_CACHED);
-
-	free(mem);
-}
-
 void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
                              enum dma_data_direction dir)
 {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
