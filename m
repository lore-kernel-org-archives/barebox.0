Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1BXM-00045w-Ty
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 08:00:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Feb 2013 08:59:41 +0100
Message-Id: <1359705587-9762-29-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
References: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 28/34] ARM mmu: pickup already enabled mmu
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c |    9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 8f9a43e..73dd0d3 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -276,7 +276,14 @@ static int mmu_init(void)
 		pte_flags_uncached = PTE_FLAGS_UNCACHED_V4;
 	}
 
-	ttb = memalign(0x10000, 0x4000);
+	if (get_cr() & CR_M) {
+		asm volatile ("mrc  p15,0,%0,c2,c0,0" : "=r"(ttb));
+
+		if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
+			pr_err("Error: Can't request SDRAM region for ttb\n");
+	} else {
+		ttb = memalign(0x10000, 0x4000);
+	}
 
 	pr_debug("ttb: 0x%p\n", ttb);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
