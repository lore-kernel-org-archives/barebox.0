Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gk1KR-0004AJ-7l
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 06:39:12 +0000
Received: by mail-pl1-x644.google.com with SMTP id u18so4258115plq.7
 for <barebox@lists.infradead.org>; Wed, 16 Jan 2019 22:39:03 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 Jan 2019 22:38:39 -0800
Message-Id: <20190117063840.13674-12-andrew.smirnov@gmail.com>
In-Reply-To: <20190117063840.13674-1-andrew.smirnov@gmail.com>
References: <20190117063840.13674-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/12] ARM: mmu: Share code for arm_mmu_not_initialized_error()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu-common.h | 11 +++++++++++
 arch/arm/cpu/mmu.c        | 11 -----------
 arch/arm/cpu/mmu_64.c     | 11 -----------
 3 files changed, 11 insertions(+), 22 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index 37eef3ef2..679799c3c 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -5,4 +5,15 @@ void dma_inv_range(void *ptr, size_t size);
 void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags);
 void __mmu_init(bool mmu_on);
 
+static inline void arm_mmu_not_initialized_error(void)
+{
+	/*
+	 * This means:
+	 * - one of the MMU functions like dma_alloc_coherent
+	 *   or remap_range is called too early, before the MMU is initialized
+	 * - Or the MMU initialization has failed earlier
+	 */
+	panic("MMU not initialized\n");
+}
+
 #endif
\ No newline at end of file
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index ba1c3e007..9e261a0be 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -75,17 +75,6 @@ static uint32_t pgd_flags_wc;
 
 #define PTE_MASK ((1 << 12) - 1)
 
-static void arm_mmu_not_initialized_error(void)
-{
-	/*
-	 * This means:
-	 * - one of the MMU functions like dma_alloc_coherent
-	 *   or remap_range is called too early, before the MMU is initialized
-	 * - Or the MMU initialization has failed earlier
-	 */
-	panic("MMU not initialized\n");
-}
-
 static bool pgd_type_table(u32 pgd)
 {
 	return (pgd & PMD_TYPE_MASK) == PMD_TYPE_TABLE;
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 7f8a8f249..a3074b10d 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -37,17 +37,6 @@
 
 static uint64_t *ttb;
 
-static void arm_mmu_not_initialized_error(void)
-{
-	/*
-	 * This means:
-	 * - one of the MMU functions like dma_alloc_coherent
-	 *   or remap_range is called too early, before the MMU is initialized
-	 * - Or the MMU initialization has failed earlier
-	 */
-	panic("MMU not initialized\n");
-}
-
 static void set_table(uint64_t *pt, uint64_t *table_addr)
 {
 	uint64_t val;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
