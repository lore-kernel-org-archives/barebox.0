Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTdfv-00077s-KG
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 21:51:24 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id F008226C2004
 for <barebox@lists.infradead.org>; Thu,  5 Mar 2015 22:50:25 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  5 Mar 2015 22:49:54 +0100
Message-Id: <1425592221-23774-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1425592221-23774-1-git-send-email-dev@lynxeye.de>
References: <1425592221-23774-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 03/27] MIPS: change dma_alloc/free_coherent to common
 prototypes
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/mips/include/asm/dma-mapping.h | 6 ++++--
 arch/mips/include/asm/dma.h         | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/mips/include/asm/dma-mapping.h b/arch/mips/include/asm/dma-mapping.h
index 555efa5..6395112 100644
--- a/arch/mips/include/asm/dma-mapping.h
+++ b/arch/mips/include/asm/dma-mapping.h
@@ -12,12 +12,14 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 
 	ret = xmemalign(PAGE_SIZE, size);
 
-	*dma_handle = CPHYSADDR(ret);
+	if (dma_handle)
+		*dma_handle = CPHYSADDR(ret);
 
 	return (void *)CKSEG1ADDR(ret);
 }
 
-static inline void dma_free_coherent(void *vaddr)
+static inline void dma_free_coherent(void *vaddr, dma_addr_t dma_handle,
+				     size_t size)
 {
 	free(vaddr);
 }
diff --git a/arch/mips/include/asm/dma.h b/arch/mips/include/asm/dma.h
index 27d269f..30a58c7 100644
--- a/arch/mips/include/asm/dma.h
+++ b/arch/mips/include/asm/dma.h
@@ -8,6 +8,6 @@
 #ifndef __ASM_DMA_H
 #define __ASM_DMA_H
 
-/* empty */
+#include "asm/dma-mapping.h"
 
 #endif /* __ASM_DMA_H */
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
