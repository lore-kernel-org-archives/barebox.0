Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fctNU-0003XJ-8B
 for barebox@lists.infradead.org; Tue, 10 Jul 2018 14:12:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 Jul 2018 16:12:12 +0200
Message-Id: <20180710141212.5787-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: MMU: fix arch_remap_range() across section boundaries
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Ulrich Oelmann <uol@pengutronix.de>

Fixes: e3e54c6441 ARM: mmu: Implement on-demand PTE allocation

PGD_FLAGS_WC_V7 lacks the PMD_TYPE_SECT and PMD_SECT_BUFFERABLE flags.
Without them a dma_alloc_writecombine() creates an invalid section when
it crosses a section boundary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 7e2e5bf7e0..ae189ecdeb 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -61,7 +61,7 @@ static inline void tlb_invalidate(void)
 #define PTE_FLAGS_UNCACHED_V7 (0)
 #define PTE_FLAGS_CACHED_V4 (PTE_SMALL_AP_UNO_SRW | PTE_BUFFERABLE | PTE_CACHEABLE)
 #define PTE_FLAGS_UNCACHED_V4 PTE_SMALL_AP_UNO_SRW
-#define PGD_FLAGS_WC_V7 PMD_SECT_TEX(1)
+#define PGD_FLAGS_WC_V7 (PMD_SECT_TEX(1) | PMD_TYPE_SECT | PMD_SECT_BUFFERABLE)
 
 /*
  * PTE flags to set cached and uncached areas.
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
