Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gk1KJ-000417-A0
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 06:39:00 +0000
Received: by mail-pf1-x443.google.com with SMTP id 64so4318642pfr.9
 for <barebox@lists.infradead.org>; Wed, 16 Jan 2019 22:38:55 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 Jan 2019 22:38:32 -0800
Message-Id: <20190117063840.13674-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190117063840.13674-1-andrew.smirnov@gmail.com>
References: <20190117063840.13674-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/12] ARM64: mmu: Use arch_remap_range() internaly
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Instead of calling map_region() explicitly, call arch_regmap_range()
instead to simplify the code. This also ensures that tlb_invalidate()
gets called when dma_free_coherent() is invoked.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu_64.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index e2dd5b4d8..d7c2542d1 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -261,8 +261,7 @@ void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 	if (dma_handle)
 		*dma_handle = (dma_addr_t)ret;
 
-	map_region((unsigned long)ret, (unsigned long)ret, size, UNCACHED_MEM);
-	tlb_invalidate();
+	arch_remap_range(ret, size, MAP_UNCACHED);
 
 	return ret;
 }
@@ -270,8 +269,7 @@ void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
 {
 	size = PAGE_ALIGN(size);
-
-	map_region((unsigned long)mem, (unsigned long)mem, size, CACHED_MEM);
+	arch_remap_range(ret, size, MAP_CACHED);
 
 	free(mem);
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
