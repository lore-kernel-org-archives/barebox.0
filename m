Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJQ05-0004w1-P3
 for barebox@lists.infradead.org; Thu, 17 May 2018 20:59:50 +0000
Received: by mail-pf0-x241.google.com with SMTP id p12-v6so2650823pff.13
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 13:59:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 May 2018 13:58:34 -0700
Message-Id: <20180517205837.32421-26-andrew.smirnov@gmail.com>
In-Reply-To: <20180517205837.32421-1-andrew.smirnov@gmail.com>
References: <20180517205837.32421-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 25/28] ARM: mmu: Use dma_inv_range() in
 dma_sync_single_for_cpu()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

The code in the if () statement is identical to already existing
dma_inv_rand(). Use it instead.

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index f9e4d1a50..5e1e613d9 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -548,11 +548,8 @@ void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
 void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 			     enum dma_data_direction dir)
 {
-	if (dir != DMA_TO_DEVICE) {
-		if (outer_cache.inv_range)
-			outer_cache.inv_range(address, address + size);
-		__dma_inv_range(address, address + size);
-	}
+	if (dir != DMA_TO_DEVICE)
+		dma_inv_range(address, address + size);
 }
 
 void dma_sync_single_for_device(dma_addr_t address, size_t size,
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
