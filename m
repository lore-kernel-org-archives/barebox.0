Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGABt-0006Wn-B0
 for barebox@lists.infradead.org; Tue, 08 May 2018 21:30:35 +0000
Received: by mail-pf0-x242.google.com with SMTP id f189so24547363pfa.7
 for <barebox@lists.infradead.org>; Tue, 08 May 2018 14:30:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 May 2018 14:29:42 -0700
Message-Id: <20180508212951.6446-20-andrew.smirnov@gmail.com>
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
Subject: [PATCH 19/28] ARM: mmu: Use xmemalign in arm_create_pte()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

We don't handle the OOM case in that code, so using xmemalign seems
like a better option.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 314867282..42341a7a3 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -92,8 +92,8 @@ static u32 *arm_create_pte(unsigned long virt)
 	u32 *table;
 	int i;
 
-	table = memalign(PTRS_PER_PTE * sizeof(u32),
-			 PTRS_PER_PTE * sizeof(u32));
+	table = xmemalign(PTRS_PER_PTE * sizeof(u32),
+			  PTRS_PER_PTE * sizeof(u32));
 
 	if (!ttb)
 		arm_mmu_not_initialized_error();
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
