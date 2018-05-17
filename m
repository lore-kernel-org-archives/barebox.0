Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJPzX-0005MV-1L
 for barebox@lists.infradead.org; Thu, 17 May 2018 20:59:25 +0000
Received: by mail-pf0-x243.google.com with SMTP id a20-v6so2669065pfo.0
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 13:59:08 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 May 2018 13:58:15 -0700
Message-Id: <20180517205837.32421-7-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 06/28] ARM: mmu: Share code for create_sections()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Regular MMU code never creates anything but 1:1 mapping, and barring
that plus the call to __mmu_cache_flush(), early MMU code version of
the function is pretty much identical. To avoid code duplication, move
it to mmu.h and convert both regular and early MMU code to use it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu-early.c | 14 ++------------
 arch/arm/cpu/mmu.c       | 27 ++++++++-------------------
 arch/arm/cpu/mmu.h       | 10 ++++++++++
 3 files changed, 20 insertions(+), 31 deletions(-)

diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
index f75cc7e4a..70ece0d2f 100644
--- a/arch/arm/cpu/mmu-early.c
+++ b/arch/arm/cpu/mmu-early.c
@@ -11,22 +11,12 @@
 
 static uint32_t *ttb;
 
-static void create_sections(unsigned long addr, int size_m, unsigned int flags)
-{
-	int i;
-
-	addr >>= 20;
-
-	for (i = size_m; i > 0; i--, addr++)
-		ttb[addr] = (addr << 20) | flags;
-}
-
 static void map_cachable(unsigned long start, unsigned long size)
 {
 	start = ALIGN_DOWN(start, SZ_1M);
 	size  = ALIGN(size, SZ_1M);
 
-	create_sections(start, size >> 20, PMD_SECT_AP_WRITE |
+	create_sections(ttb, start, size >> 20, PMD_SECT_AP_WRITE |
 			PMD_SECT_AP_READ | PMD_TYPE_SECT | PMD_SECT_WB);
 }
 
@@ -40,7 +30,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
 	set_ttbr(ttb);
 	set_domain(DOMAIN_MANAGER);
 
-	create_sections(0, 4096, PMD_SECT_AP_WRITE |
+	create_sections(ttb, 0, 4096, PMD_SECT_AP_WRITE |
 			PMD_SECT_AP_READ | PMD_TYPE_SECT);
 
 	map_cachable(membase, memsize);
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 7e087d08f..2289a19c5 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -37,21 +37,7 @@
 #define PMD_SECT_DEF_UNCACHED (PMD_SECT_AP_WRITE | PMD_SECT_AP_READ | PMD_TYPE_SECT)
 #define PMD_SECT_DEF_CACHED (PMD_SECT_WB | PMD_SECT_DEF_UNCACHED)
 
-static unsigned long *ttb;
-
-static void create_sections(unsigned long virt, unsigned long phys, int size_m,
-		unsigned int flags)
-{
-	int i;
-
-	phys >>= 20;
-	virt >>= 20;
-
-	for (i = size_m; i > 0; i--, virt++, phys++)
-		ttb[virt] = (phys << 20) | flags;
-
-	__mmu_cache_flush();
-}
+static uint32_t *ttb;
 
 /*
  * Do it the simple way for now and invalidate the entire
@@ -452,7 +438,7 @@ static int mmu_init(void)
 		asm volatile ("mrc  p15,0,%0,c2,c0,0" : "=r"(ttb));
 
 		/* Clear unpredictable bits [13:0] */
-		ttb = (unsigned long *)((unsigned long)ttb & ~0x3fff);
+		ttb = (uint32_t *)((unsigned long)ttb & ~0x3fff);
 
 		if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
 			/*
@@ -474,8 +460,9 @@ static int mmu_init(void)
 	set_domain(DOMAIN_MANAGER);
 
 	/* create a flat mapping using 1MiB sections */
-	create_sections(0, 0, PAGE_SIZE, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ |
+	create_sections(ttb, 0, PAGE_SIZE, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ |
 			PMD_TYPE_SECT);
+	__mmu_cache_flush();
 
 	vectors_init();
 
@@ -484,9 +471,11 @@ static int mmu_init(void)
 	 * This is to speed up the generation of 2nd level page tables
 	 * below
 	 */
-	for_each_memory_bank(bank)
-		create_sections(bank->start, bank->start, bank->size >> 20,
+	for_each_memory_bank(bank) {
+		create_sections(ttb, bank->start, bank->size >> 20,
 				PMD_SECT_DEF_CACHED);
+		__mmu_cache_flush();
+	}
 
 	__mmu_cache_on();
 
diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index e71ff8e9a..af429edbc 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -24,5 +24,15 @@ static inline void set_domain(unsigned val)
 	asm volatile ("mcr  p15,0,%0,c3,c0,0" : : "r"(val) /*:*/);
 }
 
+static inline void
+create_sections(uint32_t *ttb, unsigned long addr,
+		int size_m, unsigned int flags)
+{
+	unsigned int i;
+
+	for (i = 0, addr >>= 20; i < size_m; i++, addr++)
+		ttb[addr] = (addr << 20) | flags;
+}
+
 
 #endif /* __ARM_MMU_H */
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
