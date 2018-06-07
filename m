Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQuYh-0006Ll-5N
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 13:02:36 +0000
Received: by mail-pl0-x244.google.com with SMTP id c41-v6so6100260plj.10
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 06:02:21 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Jun 2018 06:01:01 -0700
Message-Id: <20180607130108.5339-46-andrew.smirnov@gmail.com>
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
Subject: [RESEND v3 45/52] ARM: mmu64: Make use of create_table()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Make use of create_table() instead of calling xmemalign() and memset()
explicitly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu_64.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 80cf240d3..820d8cf75 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -203,10 +203,7 @@ static int mmu_init(void)
 	if (get_cr() & CR_M)
 		mmu_disable();
 
-	ttb = xmemalign(GRANULE_SIZE, GRANULE_SIZE);
-
-	memset(ttb, 0, GRANULE_SIZE);
-
+	ttb = create_table();
 	el = current_el();
 	set_ttbr_tcr_mair(el, (uint64_t)ttb, calc_tcr(el), MEMORY_ATTRIBUTES);
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
