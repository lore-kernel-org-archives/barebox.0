Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIA1m-0007hQ-7W
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:25:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 14:25:35 +0200
Message-Id: <20200915122539.18744-7-s.hauer@pengutronix.de>
In-Reply-To: <20200915122539.18744-1-s.hauer@pengutronix.de>
References: <20200915122539.18744-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 06/10] ARM: versatile: Remove unused function
To: Barebox List <barebox@lists.infradead.org>

vpb_clk_create() is unused in the codebase. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-versatile/core.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 7c6e9523a2..006d4e7231 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -75,19 +75,6 @@ void clk_disable(struct clk *clk)
 }
 EXPORT_SYMBOL(clk_disable);
 
-/* Create a clock structure with the given name */
-int vpb_clk_create(struct clk *clk, const char *dev_id)
-{
-	struct clk_lookup *clkdev;
-
-	clkdev = clkdev_alloc(clk, NULL, dev_id);
-	if (!clkdev)
-		return -ENOMEM;
-
-	clkdev_add(clkdev);
-	return 0;
-}
-
 /* 1Mhz / 256 */
 #define TIMER_FREQ (1000000/256)
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
