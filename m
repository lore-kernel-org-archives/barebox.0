Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKxmH-0002GO-D7
 for barebox@lists.infradead.org; Tue, 22 May 2018 03:16:10 +0000
Received: by mail-pf0-x244.google.com with SMTP id p14-v6so8035185pfh.9
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 20:15:47 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 21 May 2018 20:14:55 -0700
Message-Id: <20180522031510.25505-15-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 14/29] ARM: mmu: Trivial simplification in
 arm_mmu_remap_sdram()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 1dbfcee16..83577300f 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -212,7 +212,7 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 {
 	unsigned long phys = (unsigned long)bank->start;
 	unsigned long ttb_start = pgd_index(phys);
-	unsigned long ttb_end = pgd_index(phys) + pgd_index(bank->size);
+	unsigned long ttb_end = ttb_start + pgd_index(bank->size);
 	unsigned long num_ptes = bank->size >> 12;
 	int i, pte;
 	u32 *ptes;
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
