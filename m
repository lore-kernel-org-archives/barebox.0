Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zx9BA-00046E-Mp
 for barebox@lists.infradead.org; Fri, 13 Nov 2015 07:53:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2015 08:53:29 +0100
Message-Id: <1447401209-8048-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Fix bug in remap_range
To: Barebox List <barebox@lists.infradead.org>

remap_range takes generic MAP_CACHED/MAP_UNCACHED flags which are then
translated into the corresponding ARM specific bits. We call remap_range
internally from dma_alloc_* aswell, but instead of passing the generic
flags we pass the ARM specific bits.
Fix this by creating an internal __remap_range function which takes the
ARM specific bits and use it where appropriate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 38 ++++++++++++++++++++++----------------
 1 file changed, 22 insertions(+), 16 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 81c2394..784221c 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -163,23 +163,11 @@ static void dma_inv_range(unsigned long start, unsigned long end)
 	__dma_inv_range(start, end);
 }
 
-int arch_remap_range(void *_start, size_t size, unsigned flags)
+static int __remap_range(void *_start, size_t size, u32 pte_flags)
 {
 	unsigned long start = (unsigned long)_start;
 	u32 *p;
 	int numentries, i;
-	u32 pte_flags;
-
-	switch (flags) {
-	case MAP_CACHED:
-		pte_flags = pte_flags_cached;
-		break;
-	case MAP_UNCACHED:
-		pte_flags = pte_flags_uncached;
-		break;
-	default:
-		return -EINVAL;
-	}
 
 	numentries = size >> PAGE_SHIFT;
 	p = find_pte(start);
@@ -197,6 +185,24 @@ int arch_remap_range(void *_start, size_t size, unsigned flags)
 	return 0;
 }
 
+int arch_remap_range(void *start, size_t size, unsigned flags)
+{
+	u32 pte_flags;
+
+	switch (flags) {
+	case MAP_CACHED:
+		pte_flags = pte_flags_cached;
+		break;
+	case MAP_UNCACHED:
+		pte_flags = pte_flags_uncached;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return __remap_range(start, size, pte_flags);
+}
+
 void *map_io_sections(unsigned long phys, void *_start, size_t size)
 {
 	unsigned long start = (unsigned long)_start, sec;
@@ -412,7 +418,7 @@ void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 
 	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);
 
-	remap_range(ret, size, pte_flags_uncached);
+	__remap_range(ret, size, pte_flags_uncached);
 
 	return ret;
 }
@@ -428,7 +434,7 @@ void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
 
 	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);
 
-	remap_range(ret, size, pte_flags_wc);
+	__remap_range(ret, size, pte_flags_wc);
 
 	return ret;
 }
@@ -446,7 +452,7 @@ void *phys_to_virt(unsigned long phys)
 void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
 {
 	size = PAGE_ALIGN(size);
-	remap_range(mem, size, pte_flags_cached);
+	__remap_range(mem, size, pte_flags_cached);
 
 	free(mem);
 }
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
