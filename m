Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp21.mail.ru ([94.100.179.250])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4Q7A-0002EZ-Ld
 for barebox@lists.infradead.org; Sun, 22 May 2016 09:56:06 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 22 May 2016 12:55:33 +0300
Message-Id: <1463910933-22087-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: clps711x: Simplify clock initialization
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-clps711x/clock.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-clps711x/clock.c b/arch/arm/mach-clps711x/clock.c
index f3b4d85..6f447f7 100644
--- a/arch/arm/mach-clps711x/clock.c
+++ b/arch/arm/mach-clps711x/clock.c
@@ -42,11 +42,6 @@ static const char *tc_sel_clks[] = {
 	"timer_hf",
 };
 
-static __init void clps711x_clk_register(enum clps711x_clks id)
-{
-	clk_register_clkdev(clks[id].clk, clks[id].name, NULL);
-}
-
 static __init int clps711x_clk_init(void)
 {
 	unsigned int f_cpu, f_bus, f_uart, f_timer_hf, f_timer_lf, pll;
@@ -99,14 +94,8 @@ static __init int clps711x_clk_init(void)
 	clks[tc2].clk = clk_mux(clks[tc2].name, IOMEM(SYSCON1), 7, 1,
 				tc_sel_clks, ARRAY_SIZE(tc_sel_clks), 0);
 
-	clps711x_clk_register(dummy);
-	clps711x_clk_register(cpu);
-	clps711x_clk_register(bus);
-	clps711x_clk_register(uart);
-	clps711x_clk_register(timer_hf);
-	clps711x_clk_register(timer_lf);
-	clps711x_clk_register(tc1);
-	clps711x_clk_register(tc2);
+	for (tmp = 0; tmp < clk_max; tmp++)
+		clk_register_clkdev(clks[tmp].clk, clks[tmp].name, NULL);
 
 	return 0;
 }
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
