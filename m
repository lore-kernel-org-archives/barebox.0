Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosI-0001qK-HL
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 46/78] ARM: aarch64: mmu: Fix disabling the MMU
Date: Fri, 16 Mar 2018 13:53:22 +0100
Message-Id: <20180316125354.23462-47-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

Do it as U-Boot: Disable MMU first, then flush caches and finally
invalidate tlbs. I wish I could reference some document instead of
U-Boot code, but I haven't found anything.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 165ff5bac6..6606405b21 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -329,12 +329,9 @@ void mmu_disable(void)
 	cr = get_cr();
 	cr &= ~(CR_M | CR_C);
 
-	tlb_invalidate();
-
-	dsb();
-	isb();
-
 	set_cr(cr);
+	v8_flush_dcache_all();
+	tlb_invalidate();
 
 	dsb();
 	isb();
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
