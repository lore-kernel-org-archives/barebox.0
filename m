Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSqJ8-0001si-47
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 20:54:46 +0000
Received: by mail-pg0-x242.google.com with SMTP id c9-v6so143457pgf.5
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 13:54:15 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 13:52:56 -0700
Message-Id: <20180612205310.25745-41-andrew.smirnov@gmail.com>
In-Reply-To: <20180612205310.25745-1-andrew.smirnov@gmail.com>
References: <20180612205310.25745-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v5 40/54] ARM: mmu: Make use of dsb() and isb() helpers
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
