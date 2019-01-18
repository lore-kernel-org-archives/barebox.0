Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkIBK-0004Of-GM
 for barebox@lists.infradead.org; Fri, 18 Jan 2019 00:38:48 +0000
Received: by mail-pl1-x644.google.com with SMTP id b5so5525599plr.4
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2019 16:38:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 Jan 2019 16:38:22 -0800
Message-Id: <20190118003827.17517-8-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 07/12] ARM64: mmu: Invalidate memory before remapping as
 DMA coherent
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Sam Ravnborg <sam@ravnborg.org>

Although there are known problems caused by this, it seems prudent to
invalidate the region of memory we are about remap as
uncached. Additionaliy this matches how dma_alloc_coherent() is
implemented on ARM.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu_64.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index a7186eda4..1ee6a3b8c 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -248,6 +248,14 @@ void mmu_disable(void)
 	isb();
 }
 
+static void dma_inv_range(void *ptr, size_t size)
+{
+	unsigned long start = (unsigned long)ptr;
+	unsigned long end = start + size - 1;
+
+	v8_inv_dcache_range(start, end);
+}
+
 void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 {
 	void *ret;
@@ -257,6 +265,8 @@ void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 	if (dma_handle)
 		*dma_handle = (dma_addr_t)ret;
 
+	dma_inv_range(ret, size);
+
 	arch_remap_range(ret, size, MAP_UNCACHED);
 
 	return ret;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
