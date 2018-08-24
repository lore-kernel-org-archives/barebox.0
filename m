Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ftBQQ-00010w-3c
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 12:42:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1ftBLz-0000SC-0V
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 14:38:15 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <mgr@pengutronix.de>) id 1ftBLm-0001m5-5j
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 14:38:02 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 24 Aug 2018 14:38:00 +0200
Message-Id: <20180824123800.4927-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX5 clock: add clock provider support
To: barebox@lists.infradead.org

Currently it is impossible to get clks with clk_get(&clk, "name");
on the mx5 platform. Change that by adding clk-imx5 as clk_provider.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/clk/imx/clk-imx5.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/clk/imx/clk-imx5.c b/drivers/clk/imx/clk-imx5.c
index edebd25a38..3840122419 100644
--- a/drivers/clk/imx/clk-imx5.c
+++ b/drivers/clk/imx/clk-imx5.c
@@ -60,6 +60,7 @@
 #define CCM_CMEOR	0x84
 
 static struct clk *clks[IMX5_CLK_END];
+static struct clk_onecell_data clk_data;
 
 /* This is used multiple times */
 static const char *standard_pll_sel[] = {
@@ -411,6 +412,10 @@ static int imx51_ccm_probe(struct device_d *dev)
 
 	mx51_clocks_init(dev, regs);
 
+	clk_data.clks = clks;
+	clk_data.clk_num = IMX5_CLK_END;
+	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
+
 	return 0;
 }
 
@@ -503,6 +508,10 @@ static int imx53_ccm_probe(struct device_d *dev)
 
 	mx53_clocks_init(dev, regs);
 
+	clk_data.clks = clks;
+	clk_data.clk_num = IMX5_CLK_END;
+	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
+
 	return 0;
 }
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
