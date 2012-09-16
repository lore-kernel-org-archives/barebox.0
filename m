Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TDAa4-0006Ch-1X
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 08:51:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Sep 2012 10:51:53 +0200
Message-Id: <1347785513-14373-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM mmu: use xmemalign
To: barebox@lists.infradead.org

So we do not silently fail.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index dad8092..e3ca722 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -144,7 +144,7 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 	if ((phys & (SZ_1M - 1)) || (bank->size & (SZ_1M - 1)))
 		return -EINVAL;
 
-	ptes = memalign(PAGE_SIZE, num_ptes * sizeof(u32));
+	ptes = xmemalign(PAGE_SIZE, num_ptes * sizeof(u32));
 
 	debug("ptes: 0x%p ttb_start: 0x%08lx ttb_end: 0x%08lx\n",
 			ptes, ttb_start, ttb_end);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
