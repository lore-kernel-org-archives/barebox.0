Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkIBE-0004K8-Nm
 for barebox@lists.infradead.org; Fri, 18 Jan 2019 00:38:43 +0000
Received: by mail-pg1-x541.google.com with SMTP id w7so5180076pgp.13
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2019 16:38:40 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 Jan 2019 16:38:17 -0800
Message-Id: <20190118003827.17517-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 02/12] ARM: mmu: Simplify the use of dma_inv_range()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Sam Ravnborg <sam@ravnborg.org>

Simplify the use of dma_inv_range() by changing its signature to
accept pointer to start of the data and data size. This change allows
us to avoid a whole bunch of repetitive arithmetic currently done by
all of the callers.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 2b7b9e30a..390ccc581 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -118,8 +118,11 @@ static void dma_flush_range(void *ptr, size_t size)
 		outer_cache.flush_range(start, end);
 }
 
-static void dma_inv_range(unsigned long start, unsigned long end)
+static void dma_inv_range(void *ptr, size_t size)
 {
+	unsigned long start = (unsigned long)ptr;
+	unsigned long end = start + size;
+
 	if (outer_cache.inv_range)
 		outer_cache.inv_range(start, end);
 	__dma_inv_range(start, end);
@@ -507,7 +510,7 @@ static void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags)
 	if (dma_handle)
 		*dma_handle = (dma_addr_t)ret;
 
-	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);
+	dma_inv_range(ret, size);
 
 	arch_remap_range(ret, size, flags);
 
@@ -536,7 +539,7 @@ void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 			     enum dma_data_direction dir)
 {
 	if (dir != DMA_TO_DEVICE)
-		dma_inv_range(address, address + size);
+		dma_inv_range((void *)address, size);
 }
 
 void dma_sync_single_for_device(dma_addr_t address, size_t size,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
