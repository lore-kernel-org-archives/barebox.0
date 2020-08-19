Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8U1i-0000Bs-Kr
 for barebox@lists.infradead.org; Wed, 19 Aug 2020 19:45:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Aug 2020 21:45:07 +0200
Message-Id: <20200819194511.14005-3-s.hauer@pengutronix.de>
In-Reply-To: <20200819194511.14005-1-s.hauer@pengutronix.de>
References: <20200819194511.14005-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] clk: imx-cpu: Add missing CLK_IS_CRITICAL
To: Barebox List <barebox@lists.infradead.org>

The CPU clock should never be disabled, mark it as critical as done in
the Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-cpu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-cpu.c b/drivers/clk/imx/clk-cpu.c
index 13b2dfc9ad..f8d54ddba3 100644
--- a/drivers/clk/imx/clk-cpu.c
+++ b/drivers/clk/imx/clk-cpu.c
@@ -100,7 +100,7 @@ struct clk *imx_clk_cpu(const char *name, const char *parent_name,
 
 	cpu->clk.name = name;
 	cpu->clk.ops = &clk_cpu_ops;
-	cpu->clk.flags = 0;
+	cpu->clk.flags = CLK_IS_CRITICAL;
 	cpu->clk.parent_names = &icpu->parent_name;
 	cpu->clk.num_parents = 1;
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
