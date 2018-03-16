Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosI-0001qI-3m
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:24 +0100
Message-Id: <20180316125354.23462-49-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 48/78] dma: Use dma_addr_t as type for DMA addresses
To: Barebox List <barebox@lists.infradead.org>

DMA addresses are not necessarily the same as unsigned long. Fix
the type for the dma_sync_single_* operations.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c          | 4 ++--
 arch/mips/lib/dma-default.c | 4 ++--
 include/dma.h               | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index de0b631981..fc71cf03cd 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -575,7 +575,7 @@ void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
 	free(mem);
 }
 
-void dma_sync_single_for_cpu(unsigned long address, size_t size,
+void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 			     enum dma_data_direction dir)
 {
 	if (dir != DMA_TO_DEVICE) {
@@ -585,7 +585,7 @@ void dma_sync_single_for_cpu(unsigned long address, size_t size,
 	}
 }
 
-void dma_sync_single_for_device(unsigned long address, size_t size,
+void dma_sync_single_for_device(dma_addr_t address, size_t size,
 				enum dma_data_direction dir)
 {
 	if (dir == DMA_FROM_DEVICE) {
diff --git a/arch/mips/lib/dma-default.c b/arch/mips/lib/dma-default.c
index 9b2fe7d410..71c1e423b7 100644
--- a/arch/mips/lib/dma-default.c
+++ b/arch/mips/lib/dma-default.c
@@ -44,13 +44,13 @@ static inline void __dma_sync_mips(void *addr, size_t size,
 }
 #endif
 
-void dma_sync_single_for_cpu(unsigned long address, size_t size,
+void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 			     enum dma_data_direction dir)
 {
 	__dma_sync_mips(address, size, dir);
 }
 
-void dma_sync_single_for_device(unsigned long address, size_t size,
+void dma_sync_single_for_device(dma_addr_t address, size_t size,
 				enum dma_data_direction dir)
 {
 	__dma_sync_mips(address, size, dir);
diff --git a/include/dma.h b/include/dma.h
index 4d31797968..29d94c0a52 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -31,10 +31,10 @@ static inline void dma_free(void *mem)
 #endif
 
 /* streaming DMA - implement the below calls to support HAS_DMA */
-void dma_sync_single_for_cpu(unsigned long address, size_t size,
+void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 			     enum dma_data_direction dir);
 
-void dma_sync_single_for_device(unsigned long address, size_t size,
+void dma_sync_single_for_device(dma_addr_t address, size_t size,
 				enum dma_data_direction dir);
 
 void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
