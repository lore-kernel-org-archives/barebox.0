Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRS89-0004Yv-Ih
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 19:30:43 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed,  2 Oct 2013 21:30:09 +0200
Message-Id: <1380742211-2731-3-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1380742211-2731-1-git-send-email-jlu@pengutronix.de>
References: <1380742211-2731-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 2/4] arm: mmu: be more verbose if ttb setup fails
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/cpu/mmu.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index e3ea3b6..fae83f3 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -285,7 +285,7 @@ static int mmu_init(void)
 		ttb = (unsigned long *)((unsigned long)ttb & ~0x3fff);
 
 		if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
-			pr_err("Error: Can't request SDRAM region for ttb\n");
+			pr_err("Error: Can't request SDRAM region for ttb at %p\n", ttb);
 	} else {
 		ttb = memalign(0x10000, 0x4000);
 	}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
