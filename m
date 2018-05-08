Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGABa-0005dX-0p
 for barebox@lists.infradead.org; Tue, 08 May 2018 21:30:17 +0000
Received: by mail-pg0-x244.google.com with SMTP id i194-v6so21708455pgd.0
 for <barebox@lists.infradead.org>; Tue, 08 May 2018 14:30:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 May 2018 14:29:29 -0700
Message-Id: <20180508212951.6446-7-andrew.smirnov@gmail.com>
In-Reply-To: <20180508212951.6446-1-andrew.smirnov@gmail.com>
References: <20180508212951.6446-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/28] ARM: mmu: Share code for create_sections()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Regular MMU code never creates anything but 1:1 mapping, and barring
that plus the call to __mmu_cache_flush(), early MMU code version of
the function is pretty much identical. To avoid code duplication, move
it to mmu.h and convert both regular and early MMU code to use it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu-early.c | 14 ++------------
 arch/arm/cpu/mmu.c       | 25 +++++++------------------
 arch/arm/cpu/mmu.h       |  8 ++++++++
 3 files changed, 17 insertions(+), 30 deletions(-)

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
index 7e087d08f..0c367e47c 100644
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
index e71ff8e9a..59f72049f 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -24,5 +24,13 @@ static inline void set_domain(unsigned val)
 	asm volatile ("mcr  p15,0,%0,c3,c0,0" : : "r"(val) /*:*/);
 }
 
+static inline void
+create_sections(uint32_t *ttb, unsigned long addr,
+		int size_m, unsigned int flags)
+{
+	for (addr >>= 20; addr < size_m; addr++)
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
