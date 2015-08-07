Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNhot-0006X9-V6
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:36:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:35:41 +0200
Message-Id: <1438954545-24917-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1438954545-24917-1-git-send-email-s.hauer@pengutronix.de>
References: <1438954545-24917-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] ARM: MMU: Fix order when flushing inner/outer cache
To: Barebox List <barebox@lists.infradead.org>

When flushing the cache L1 has to be flushed before L2, not the
other way round.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 37bfa05..1bd6080 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -159,9 +159,9 @@ static u32 *find_pte(unsigned long adr)
 
 static void dma_flush_range(unsigned long start, unsigned long end)
 {
+	__dma_flush_range(start, end);
 	if (outer_cache.flush_range)
 		outer_cache.flush_range(start, end);
-	__dma_flush_range(start, end);
 }
 
 static void dma_inv_range(unsigned long start, unsigned long end)
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
