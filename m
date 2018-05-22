Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKxm5-0002Dj-6c
 for barebox@lists.infradead.org; Tue, 22 May 2018 03:15:51 +0000
Received: by mail-pl0-x241.google.com with SMTP id w19-v6so9987924plq.4
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 20:15:34 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 21 May 2018 20:14:45 -0700
Message-Id: <20180522031510.25505-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180522031510.25505-1-andrew.smirnov@gmail.com>
References: <20180522031510.25505-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 04/29] ARM: mmu: Introduce set_ttbr()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu-early.c | 3 +--
 arch/arm/cpu/mmu.c       | 3 +--
 arch/arm/cpu/mmu.h       | 5 +++++
 3 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
index fc14d5cac..79fc3080a 100644
--- a/arch/arm/cpu/mmu-early.c
+++ b/arch/arm/cpu/mmu-early.c
@@ -39,8 +39,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
 
 	arm_set_cache_functions();
 
-	/* Set the ttb register */
-	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
+	set_ttbr(ttb);
 
 	/* Set the Domain Access Control Register */
 	i = 0x3;
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index c70e9e782..28732b795 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -471,8 +471,7 @@ static int mmu_init(void)
 
 	pr_debug("ttb: 0x%p\n", ttb);
 
-	/* Set the ttb register */
-	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
+	set_ttbr(ttb);
 
 	/* Set the Domain Access Control Register */
 	i = 0x3;
diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index 79ebc80d7..5dcf4b53a 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -11,4 +11,9 @@ static inline void __mmu_cache_off(void) {}
 static inline void __mmu_cache_flush(void) {}
 #endif
 
+static inline void set_ttbr(void *ttb)
+{
+	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
+}
+
 #endif /* __ARM_MMU_H */
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
