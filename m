Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKxmT-00047e-2u
 for barebox@lists.infradead.org; Tue, 22 May 2018 03:16:10 +0000
Received: by mail-pl0-x242.google.com with SMTP id n10-v6so9994642plp.0
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 20:15:58 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 21 May 2018 20:15:02 -0700
Message-Id: <20180522031510.25505-22-andrew.smirnov@gmail.com>
In-Reply-To: <20180522031510.25505-1-andrew.smirnov@gmail.com>
References: <20180522031510.25505-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 21/29] ARM: mmu: Share code between dma_alloc_*() functions
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
index fc4046e85..7d4432b98 100644
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
