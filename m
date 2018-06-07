Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQuYc-0006LZ-4U
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 13:02:32 +0000
Received: by mail-pg0-x242.google.com with SMTP id p21-v6so4732429pgd.11
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 06:02:15 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Jun 2018 06:00:56 -0700
Message-Id: <20180607130108.5339-41-andrew.smirnov@gmail.com>
In-Reply-To: <20180607130108.5339-1-andrew.smirnov@gmail.com>
References: <20180607130108.5339-1-andrew.smirnov@gmail.com>
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
Subject: [RESEND v3 40/52] ARM: mmu: Make use of dsb() and isb() helpers
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu_64.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.h b/arch/arm/cpu/mmu_64.h
index c280d2ced..2cbe72062 100644
--- a/arch/arm/cpu/mmu_64.h
+++ b/arch/arm/cpu/mmu_64.h
@@ -28,7 +28,7 @@ static inline void tlb_invalidate(void)
 
 static inline void set_ttbr_tcr_mair(int el, uint64_t table, uint64_t tcr, uint64_t attr)
 {
-	asm volatile("dsb sy");
+	dsb();
 	if (el == 1) {
 		asm volatile("msr ttbr0_el1, %0" : : "r" (table) : "memory");
 		asm volatile("msr tcr_el1, %0" : : "r" (tcr) : "memory");
@@ -44,7 +44,7 @@ static inline void set_ttbr_tcr_mair(int el, uint64_t table, uint64_t tcr, uint6
 	} else {
 		hang();
 	}
-	asm volatile("isb");
+	isb();
 }
 
 static inline uint64_t get_ttbr(int el)
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
