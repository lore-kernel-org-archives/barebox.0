Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGABx-0001Sv-Kh
 for barebox@lists.infradead.org; Tue, 08 May 2018 21:30:38 +0000
Received: by mail-pg0-x242.google.com with SMTP id m21-v6so21714084pgv.8
 for <barebox@lists.infradead.org>; Tue, 08 May 2018 14:30:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 May 2018 14:29:44 -0700
Message-Id: <20180508212951.6446-22-andrew.smirnov@gmail.com>
In-Reply-To: <20180508212951.6446-1-andrew.smirnov@gmail.com>
References: <20180508212951.6446-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 21/28] ARM: mmu: Share code between dma_alloc_*() functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Code of dma_alloc_coherent() and dma_alloc_writecombine() is almost
identical with exception of the flags passed to undelying call to
__remap_range(). Move commong code into a shared subroutine and
convert both functions to use it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 5e8d439bf..339ab8e82 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -500,7 +500,7 @@ void mmu_disable(void)
 	__mmu_cache_off();
 }
 
-void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+static void *dma_alloc(size_t size, dma_addr_t *dma_handle, uint32_t pte_flags)
 {
 	void *ret;
 
@@ -511,25 +511,19 @@ void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 
 	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);
 
-	__remap_range(ret, size, pte_flags_uncached);
+	__remap_range(ret, size, pte_flags);
 
 	return ret;
 }
 
-void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
+void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 {
-	void *ret;
-
-	size = PAGE_ALIGN(size);
-	ret = xmemalign(PAGE_SIZE, size);
-	if (dma_handle)
-		*dma_handle = (dma_addr_t)ret;
-
-	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);
-
-	__remap_range(ret, size, pte_flags_wc);
+	return dma_alloc(size, dma_handle, pte_flags_uncached);
+}
 
-	return ret;
+void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
+{
+	return dma_alloc(size, dma_handle, pte_flags_wc);
 }
 
 unsigned long virt_to_phys(volatile void *virt)
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
