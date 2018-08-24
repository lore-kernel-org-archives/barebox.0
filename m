Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2FE-0006qg-8H
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:55:12 +0000
Received: by mail-pg1-x544.google.com with SMTP id z4-v6so3613206pgv.2
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:54:30 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:54:21 -0700
Message-Id: <20180824025421.19968-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: mmu64: Don't flush freshly invalidated region
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Current code for dma_sync_single_for_device(), when called with dir
set to DMA_FROM_DEVICE, will first invalidate given region of memory
as a first step and then clean+invalidate it as a second. While the
second step should be harmless it seems to be an unnecessary no-op
that could probably be avoided.

Analogous code in Linux kernel (4.18) in arch/arm64/mm/cache.S:

ENTRY(__dma_map_area)
	cmp	w2, #DMA_FROM_DEVICE
	b.eq	__dma_inv_area
	b	__dma_clean_area
ENDPIPROC(__dma_map_area)

is written to only perform either invalidate or clean, depending on
the direction, so change dma_sync_single_for_device() to behave in the
same vein and perfom _either_ invlidate or flush of the given region.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu_64.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index b6287aec8..69d1b2071 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -297,7 +297,8 @@ void dma_sync_single_for_device(dma_addr_t address, size_t size,
 {
 	if (dir == DMA_FROM_DEVICE)
 		v8_inv_dcache_range(address, address + size - 1);
-	v8_flush_dcache_range(address, address + size - 1);
+	else
+		v8_flush_dcache_range(address, address + size - 1);
 }
 
 dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
