Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJ2c0-0004Pz-Tn
 for barebox@lists.infradead.org; Wed, 16 May 2018 20:01:25 +0000
Received: by mail-pf0-x242.google.com with SMTP id a22-v6so885057pfn.6
 for <barebox@lists.infradead.org>; Wed, 16 May 2018 13:01:14 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 May 2018 13:00:13 -0700
Message-Id: <20180516200036.29829-6-andrew.smirnov@gmail.com>
In-Reply-To: <20180516200036.29829-1-andrew.smirnov@gmail.com>
References: <20180516200036.29829-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 05/28] ARM: mmu: Introduce set_domain()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port set_domain() form Linux kernel and share it between regular and
early MMU code to avoid duplication.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu-early.c | 7 +------
 arch/arm/cpu/mmu.c       | 6 +-----
 arch/arm/cpu/mmu.h       | 9 +++++++++
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
index 79fc3080a..f75cc7e4a 100644
--- a/arch/arm/cpu/mmu-early.c
+++ b/arch/arm/cpu/mmu-early.c
@@ -33,17 +33,12 @@ static void map_cachable(unsigned long start, unsigned long size)
 void mmu_early_enable(unsigned long membase, unsigned long memsize,
 		      unsigned long _ttb)
 {
-	int i;
-
 	ttb = (uint32_t *)_ttb;
 
 	arm_set_cache_functions();
 
 	set_ttbr(ttb);
-
-	/* Set the Domain Access Control Register */
-	i = 0x3;
-	asm volatile ("mcr  p15,0,%0,c3,c0,0" : : "r"(i) /*:*/);
+	set_domain(DOMAIN_MANAGER);
 
 	create_sections(0, 4096, PMD_SECT_AP_WRITE |
 			PMD_SECT_AP_READ | PMD_TYPE_SECT);
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 28732b795..7e087d08f 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -422,7 +422,6 @@ static void vectors_init(void)
 static int mmu_init(void)
 {
 	struct memory_bank *bank;
-	int i;
 
 	if (list_empty(&memory_banks))
 		/*
@@ -472,10 +471,7 @@ static int mmu_init(void)
 	pr_debug("ttb: 0x%p\n", ttb);
 
 	set_ttbr(ttb);
-
-	/* Set the Domain Access Control Register */
-	i = 0x3;
-	asm volatile ("mcr  p15,0,%0,c3,c0,0" : : "r"(i) /*:*/);
+	set_domain(DOMAIN_MANAGER);
 
 	/* create a flat mapping using 1MiB sections */
 	create_sections(0, 0, PAGE_SIZE, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ |
diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index 5dcf4b53a..e71ff8e9a 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -16,4 +16,13 @@ static inline void set_ttbr(void *ttb)
 	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
 }
 
+#define DOMAIN_MANAGER	3
+
+static inline void set_domain(unsigned val)
+{
+	/* Set the Domain Access Control Register */
+	asm volatile ("mcr  p15,0,%0,c3,c0,0" : : "r"(val) /*:*/);
+}
+
+
 #endif /* __ARM_MMU_H */
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
