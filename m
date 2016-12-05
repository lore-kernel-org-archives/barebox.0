Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wj0-x242.google.com ([2a00:1450:400c:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDplp-00026q-Oo
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 09:41:17 +0000
Received: by mail-wj0-x242.google.com with SMTP id kp2so38280515wjc.0
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2016 01:40:54 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  5 Dec 2016 12:40:27 +0300
Message-Id: <20161205094033.31569-3-antonynpavlov@gmail.com>
In-Reply-To: <20161205094033.31569-1-antonynpavlov@gmail.com>
References: <20161205094033.31569-1-antonynpavlov@gmail.com>
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
Subject: [RFC v2 2/8] MIPS: c-r4k: add support for secondary cache
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

From: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/include/asm/cacheops.h | 10 ++++++++++
 arch/mips/lib/c-r4k.c            | 19 +++++++++++++------
 2 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/arch/mips/include/asm/cacheops.h b/arch/mips/include/asm/cacheops.h
index 3bc5852..104e9d0 100644
--- a/arch/mips/include/asm/cacheops.h
+++ b/arch/mips/include/asm/cacheops.h
@@ -33,4 +33,14 @@
 #define Hit_Invalidate_D		(Cache_D | Hit_Invalidate)
 #define Hit_Writeback_Inv_D		(Cache_D | Hit_Writeback_Inv)
 
+/*
+ * R4000SC and R4400SC-specific cacheops
+ */
+#define Cache_SD			0x03
+
+#define Index_Writeback_Inv_SD		(Cache_SD | Index_Writeback_Inv)
+#define Index_Store_Tag_SD		(Cache_SD | Index_Store_Tag)
+#define Hit_Invalidate_SD		(Cache_SD | Hit_Invalidate)
+#define Hit_Writeback_Inv_SD		(Cache_SD | Hit_Writeback_Inv)
+
 #endif	/* __ASM_CACHEOPS_H */
diff --git a/arch/mips/lib/c-r4k.c b/arch/mips/lib/c-r4k.c
index 1502058..c70a665 100644
--- a/arch/mips/lib/c-r4k.c
+++ b/arch/mips/lib/c-r4k.c
@@ -46,7 +46,9 @@ static inline void blast_##pfx##cache##_range(unsigned long start,	\
 }
 
 __BUILD_BLAST_CACHE_RANGE(d, dcache, Hit_Writeback_Inv_D)
+__BUILD_BLAST_CACHE_RANGE(s, scache, Hit_Writeback_Inv_SD)
 __BUILD_BLAST_CACHE_RANGE(inv_d, dcache, Hit_Invalidate_D)
+__BUILD_BLAST_CACHE_RANGE(inv_s, scache, Hit_Invalidate_SD)
 
 void flush_cache_all(void)
 {
@@ -54,7 +56,7 @@ void flush_cache_all(void)
 	unsigned long lsize;
 	unsigned long addr;
 	unsigned long aend;
-	unsigned int icache_size, dcache_size;
+	unsigned int icache_size, dcache_size, scache_size;
 
 	dcache_size = c->dcache.waysize * c->dcache.ways;
 	lsize = c->dcache.linesz;
@@ -68,21 +70,26 @@ void flush_cache_all(void)
 	for (addr = KSEG0; addr <= aend; addr += lsize)
 		cache_op(Index_Invalidate_I, addr);
 
-	/* secondatory cache skipped */
+	if (c->scache.flags & MIPS_CACHE_NOT_PRESENT)
+		return;
+
+	scache_size = c->scache.waysize * c->scache.ways;
+	lsize = c->scache.linesz;
+	aend = (KSEG0 + scache_size - 1) & ~(lsize - 1);
+	for (addr = KSEG0; addr <= aend; addr += lsize)
+		cache_op(Index_Writeback_Inv_SD, addr);
 }
 
 void dma_flush_range(unsigned long start, unsigned long end)
 {
 	blast_dcache_range(start, end);
-
-	/* secondatory cache skipped */
+	blast_scache_range(start, end);
 }
 
 void dma_inv_range(unsigned long start, unsigned long end)
 {
 	blast_inv_dcache_range(start, end);
-
-	/* secondatory cache skipped */
+	blast_inv_scache_range(start, end);
 }
 
 void r4k_cache_init(void);
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
