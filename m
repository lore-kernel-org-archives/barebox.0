Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNhok-0006UY-07
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:36:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:35:42 +0200
Message-Id: <1438954545-24917-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] ARM: l2x0: Flush cache before disabling it
To: Barebox List <barebox@lists.infradead.org>

Otherwise entries may still be in the cache and never reach memory.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache-l2x0.c  | 13 ++++++++++++-
 arch/arm/cpu/cache.c       |  2 ++
 arch/arm/cpu/cpu.c         |  3 +--
 arch/arm/include/asm/mmu.h |  1 +
 4 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/cache-l2x0.c b/arch/arm/cpu/cache-l2x0.c
index 2be562d..43f296f 100644
--- a/arch/arm/cpu/cache-l2x0.c
+++ b/arch/arm/cpu/cache-l2x0.c
@@ -112,6 +112,13 @@ static void l2x0_flush_range(unsigned long start, unsigned long end)
 	cache_sync();
 }
 
+static void l2x0_flush_all(void)
+{
+	writel(l2x0_way_mask, l2x0_base + L2X0_CLEAN_INV_WAY);
+	cache_wait(l2x0_base + L2X0_CLEAN_INV_WAY, l2x0_way_mask);
+	cache_sync();
+}
+
 static void l2x0_disable(void)
 {
 	writel(0xff, l2x0_base + L2X0_CLEAN_INV_WAY);
@@ -149,5 +156,9 @@ void __init l2x0_init(void __iomem *base, __u32 aux_val, __u32 aux_mask)
 	outer_cache.clean_range = l2x0_clean_range;
 	outer_cache.flush_range = l2x0_flush_range;
 	outer_cache.disable = l2x0_disable;
-}
+	outer_cache.flush_all = l2x0_flush_all;
 
+	pr_debug("%s cache controller enabled\n", type);
+	pr_debug("l2x0: %d ways, CACHE_ID 0x%08x, AUX_CTRL 0x%08x\n",
+			ways, cache_id, aux);
+}
diff --git a/arch/arm/cpu/cache.c b/arch/arm/cpu/cache.c
index 7b161d5..27ead1c 100644
--- a/arch/arm/cpu/cache.c
+++ b/arch/arm/cpu/cache.c
@@ -71,6 +71,8 @@ void __mmu_cache_flush(void)
 {
 	if (cache_fns)
 		cache_fns->mmu_cache_flush();
+	if (outer_cache.flush_all)
+		outer_cache.flush_all();
 }
 
 int arm_set_cache_functions(void)
diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 5e70802..ff8f43d 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -79,10 +79,9 @@ struct outer_cache_fns outer_cache;
  */
 void mmu_disable(void)
 {
+	__mmu_cache_flush();
 	if (outer_cache.disable)
 		outer_cache.disable();
-
-	__mmu_cache_flush();
 	__mmu_cache_off();
 }
 
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 97bb0db..3b19e9e 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -67,6 +67,7 @@ struct outer_cache_fns {
 	void (*inv_range)(unsigned long, unsigned long);
 	void (*clean_range)(unsigned long, unsigned long);
 	void (*flush_range)(unsigned long, unsigned long);
+	void (*flush_all)(void);
 	void (*disable)(void);
 };
 
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
