Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGABY-0005O7-FO
 for barebox@lists.infradead.org; Tue, 08 May 2018 21:30:14 +0000
Received: by mail-pl0-x244.google.com with SMTP id i5-v6so2972005plt.2
 for <barebox@lists.infradead.org>; Tue, 08 May 2018 14:30:02 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 May 2018 14:29:25 -0700
Message-Id: <20180508212951.6446-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/28] ARM: mmu: Make use of IS_ALIGNED in
 arm_mmu_remap_sdram()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 9472013ca..c70e9e782 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -241,7 +241,7 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 	 * We replace each 1MiB section in this range with second level page
 	 * tables, therefore we must have 1Mib aligment here.
 	 */
-	if ((phys & (SZ_1M - 1)) || (bank->size & (SZ_1M - 1)))
+	if (!IS_ALIGNED(phys, SZ_1M) || !IS_ALIGNED(bank->size, SZ_1M))
 		return -EINVAL;
 
 	ptes = xmemalign(PAGE_SIZE, num_ptes * sizeof(u32));
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
