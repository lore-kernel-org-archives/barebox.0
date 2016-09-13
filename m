Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bjoO1-0000VH-HS
 for barebox@lists.infradead.org; Tue, 13 Sep 2016 14:08:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 Sep 2016 16:08:09 +0200
Message-Id: <1473775689-8969-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX6: Enable parent propagation for clk_gate2
To: Barebox List <barebox@lists.infradead.org>

Enable parent rate propagation for clk_gate2 to allow the
clock consumers to adjust their rates.
One effect of this is that the i.MX6 NAND controller now can adjust
its rate. It already called a clk_set_rate(rate, 96000000), but this
had no effect, so the clock stayed at reset default 24MHz resulting
in a rather slow timing. This became a problem when commit
"1daa3bc mtd: nand_mxs: Setup timing" introduced EDO timing mode for
faster NAND chips. EDO mode can only work properly for cycle times
< 30ns (at least that's specified in the ONFI spec). 1daa3bc resulted
in sporadic NAND read errors on some boards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-gate2.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/clk-gate2.c b/arch/arm/mach-imx/clk-gate2.c
index 344c2fb..faed631 100644
--- a/arch/arm/mach-imx/clk-gate2.c
+++ b/arch/arm/mach-imx/clk-gate2.c
@@ -79,6 +79,8 @@ static int clk_gate2_is_enabled(struct clk *clk)
 }
 
 static struct clk_ops clk_gate2_ops = {
+	.set_rate = clk_parent_set_rate,
+	.round_rate = clk_parent_round_rate,
 	.enable = clk_gate2_enable,
 	.disable = clk_gate2_disable,
 	.is_enabled = clk_gate2_is_enabled,
@@ -96,6 +98,7 @@ struct clk *clk_gate2_alloc(const char *name, const char *parent,
 	g->clk.name = name;
 	g->clk.parent_names = &g->parent;
 	g->clk.num_parents = 1;
+	g->clk.flags = CLK_SET_RATE_PARENT;
 
 	return &g->clk;
 }
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
