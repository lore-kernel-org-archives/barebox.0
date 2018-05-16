Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJ2bw-0001TM-Dj
 for barebox@lists.infradead.org; Wed, 16 May 2018 20:01:21 +0000
Received: by mail-pl0-x244.google.com with SMTP id ay10-v6so1054489plb.1
 for <barebox@lists.infradead.org>; Wed, 16 May 2018 13:01:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 May 2018 13:00:10 -0700
Message-Id: <20180516200036.29829-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 02/28] ARM: mmu: Make use of IS_ALIGNED in
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
