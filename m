Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTgEm-00079H-CL
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:21:26 +0000
Received: by mail-pl0-x242.google.com with SMTP id c41-v6so4673066plj.10
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:21:15 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:21:02 -0700
Message-Id: <20180615042102.12345-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180615042102.12345-1-andrew.smirnov@gmail.com>
References: <20180615042102.12345-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/3] ARM: mmu: psci: Make use of get_ttbr()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Introduce a simple inline function to get TTBR and use it in mmu.c and
sm.c

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 4 +---
 arch/arm/cpu/mmu.h | 9 +++++++++
 arch/arm/cpu/sm.c  | 3 +--
 3 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 7e2e5bf7e..9e765514d 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -453,10 +453,8 @@ static int mmu_init(void)
 		 * Early MMU code has already enabled the MMU. We assume a
 		 * flat 1:1 section mapping in this case.
 		 */
-		asm volatile ("mrc  p15,0,%0,c2,c0,0" : "=r"(ttb));
-
 		/* Clear unpredictable bits [13:0] */
-		ttb = (uint32_t *)((unsigned long)ttb & ~0x3fff);
+		ttb = (uint32_t *)(get_ttbr() & ~0x3fff);
 
 		if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
 			/*
diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index e5bb37025..2e425e092 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -19,6 +19,15 @@ static inline void __mmu_cache_off(void) {}
 static inline void __mmu_cache_flush(void) {}
 #endif
 
+static inline unsigned long get_ttbr(void)
+{
+	unsigned long ttb;
+
+	asm volatile ("mrc p15, 0, %0, c2, c0, 0" : "=r"(ttb));
+
+	return ttb;
+}
+
 static inline void set_ttbr(void *ttb)
 {
 	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
diff --git a/arch/arm/cpu/sm.c b/arch/arm/cpu/sm.c
index b0bf16405..cb0bac106 100644
--- a/arch/arm/cpu/sm.c
+++ b/arch/arm/cpu/sm.c
@@ -187,8 +187,7 @@ int armv7_secure_monitor_install(void)
 	mmuon = get_cr() & CR_M;
 
 	vbar = get_vbar();
-
-	asm volatile ("mrc p15, 0, %0, c2, c0, 0" : "=r"(ttb));
+	ttb = get_ttbr();
 
 	armv7_init_nonsec();
 	__armv7_secure_monitor_install();
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
