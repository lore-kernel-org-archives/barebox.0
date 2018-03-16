Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos8-000687-8D
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:52:56 +0100
Message-Id: <20180316125354.23462-21-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/78] ARM: Move mmu_disable to mmu.c
To: Barebox List <barebox@lists.infradead.org>

mmu_64 has mmu_disable() in mmu_64.c. Move to mmu.c for the 32bit
case aswell to be consistent.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpu.c | 15 ---------------
 arch/arm/cpu/mmu.c | 13 +++++++++++++
 2 files changed, 13 insertions(+), 15 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 0e70a23260..c5daf6c60e 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -68,27 +68,12 @@ int icache_status(void)
 	return (get_cr () & CR_I) != 0;
 }
 
-#if __LINUX_ARM_ARCH__ <= 7
 /*
  * SoC like the ux500 have the l2x0 always enable
  * with or without MMU enable
  */
 struct outer_cache_fns outer_cache;
 
-/*
- * Clean and invalide caches, disable MMU
- */
-void mmu_disable(void)
-{
-	__mmu_cache_flush();
-	if (outer_cache.disable) {
-		outer_cache.flush_all();
-		outer_cache.disable();
-	}
-	__mmu_cache_off();
-}
-#endif
-
 static void disable_interrupts(void)
 {
 #if __LINUX_ARM_ARCH__ <= 7
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 2c16579d79..27d994d452 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -511,6 +511,19 @@ static int mmu_init(void)
 }
 mmu_initcall(mmu_init);
 
+/*
+ * Clean and invalide caches, disable MMU
+ */
+void mmu_disable(void)
+{
+	__mmu_cache_flush();
+	if (outer_cache.disable) {
+		outer_cache.flush_all();
+		outer_cache.disable();
+	}
+	__mmu_cache_off();
+}
+
 void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 {
 	void *ret;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
