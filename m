Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-v.mail.gandi.net ([217.70.178.76])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NffMt-0005Ei-92
	for barebox@lists.infradead.org; Thu, 11 Feb 2010 20:10:36 +0000
Received: from d4rwin.no-ip.org (165.Red-88-27-22.staticIP.rima-tde.net
	[88.27.22.165])
	by relay2-v.mail.gandi.net (Postfix) with ESMTP id 3647C135D9
	for <barebox@lists.infradead.org>; Thu, 11 Feb 2010 21:10:20 +0100 (CET)
Date: Thu, 11 Feb 2010 21:10:04 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100211201004.GF15905@darwin>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] edb9302(a): Tweak PLL settings
To: barebox@lists.infradead.org

Previous code ran the edb9302(a) boards with the PLL same settings as the
edb9301, at 166MHz core and 66MHz system bus clock. In difference to the edb9301
board the edb9302(a) is equipped with an EP9302 processor, which can be clocked
at higher rates than the EP9301. Therefore we can configure the edb9302(a) with
the same PLL settings as the other non-edb9301 boards, namely at 200MHz for
the core and 100MHz for the system bus clock.

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
---
 board/edb93xx/pll_cfg.h   |    6 +++---
 board/edb93xx/sdram_cfg.h |    7 ++++---
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/board/edb93xx/pll_cfg.h b/board/edb93xx/pll_cfg.h
index 9691339..503507a 100644
--- a/board/edb93xx/pll_cfg.h
+++ b/board/edb93xx/pll_cfg.h
@@ -25,8 +25,7 @@
 #include <config.h>
 #include <mach/ep93xx-regs.h>
 
-#if defined(CONFIG_MACH_EDB9301) || defined(CONFIG_MACH_EDB9302) || \
-	defined(CONFIG_MACH_EDB9302A)
+#if defined(CONFIG_MACH_EDB9301)
 /*
  * fclk_div: 2, nbyp1: 1, hclk_div: 5, pclk_div: 2
  * pll1_x1: 294912000.000000, pll1_x2ip: 36864000.000000,
@@ -39,7 +38,8 @@
 			3 << SYSCON_CLKSET1_HCLK_DIV_SHIFT |	   \
 			SYSCON_CLKSET1_NBYP1 |			   \
 			1 << SYSCON_CLKSET1_FCLK_DIV_SHIFT)
-#elif defined(CONFIG_MACH_EDB9307) || defined(CONFIG_MACH_EDB9307A) ||\
+#elif defined(CONFIG_MACH_EDB9302) || defined(CONFIG_MACH_EDB9302A) ||	\
+	defined(CONFIG_MACH_EDB9307) || defined(CONFIG_MACH_EDB9307A) || \
 	defined CONFIG_MACH_EDB9312 || defined(CONFIG_MACH_EDB9315) ||\
 	defined(CONFIG_MACH_EDB9315A)
 /*
diff --git a/board/edb93xx/sdram_cfg.h b/board/edb93xx/sdram_cfg.h
index 7babee8..c57b76e 100644
--- a/board/edb93xx/sdram_cfg.h
+++ b/board/edb93xx/sdram_cfg.h
@@ -43,12 +43,13 @@
  * CLK cycle time min:
  *	@ CAS latency = 3: 7.5ns
  *	@ CAS latency = 2: 10ns
- * We're running at 66MHz (15ns cycle time) external bus speed (HCLK),
- * so it's safe to use CAS latency = 2
+ * We're running at 66MHz (EDB9301) / 100Mhz (EDB9302(a)) external
+ * bus speed (HCLK), with a cycle time of 15ns / 10ns, so it's safe
+ * to use CAS latency = 2
  *
  * RAS-to-CAS delay min:
  *	20ns
- * At 15ns cycle time, we use RAS-to-CAS delay = 2
+ * At 15ns/10ns cycle time, we use RAS-to-CAS delay = 2
  *
  * SROMLL = 1: Swap BA[1:0] with A[13:12], making the SDRAM appear
  * as four blocks of 8MB size, instead of eight blocks of 4MB size:
-- 
1.6.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
