Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cadBA-0004gh-3y
 for barebox@lists.infradead.org; Mon, 06 Feb 2017 06:53:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Feb 2017 07:50:57 +0100
Message-Id: <20170206065057.19483-10-s.hauer@pengutronix.de>
In-Reply-To: <20170206065057.19483-1-s.hauer@pengutronix.de>
References: <20170206065057.19483-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] clk: i.MX7: setup ethernet clocks
To: Barebox List <barebox@lists.infradead.org>

Reparent ethernet clocks so that they can be used by the
fec driver. The values are the same as U-Boot uses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-imx7.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index 6bf123419..d3a036c0c 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -844,6 +844,17 @@ static int imx7_clk_setup(void)
 	/* set uart module clock's parent clock source that must be great then 80MHz */
 	clk_set_parent(clks[IMX7D_UART1_ROOT_SRC], clks[IMX7D_OSC_24M_CLK]);
 
+	clk_set_parent(clks[IMX7D_ENET1_REF_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
+	clk_set_parent(clks[IMX7D_ENET1_TIME_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
+	clk_set_parent(clks[IMX7D_ENET2_REF_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
+	clk_set_parent(clks[IMX7D_ENET2_TIME_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
+
+	clk_set_rate(clks[IMX7D_PLL_SYS_PFD4_CLK], 392000000);
+	clk_set_parent(clks[IMX7D_ENET_AXI_ROOT_SRC], clks[IMX7D_PLL_SYS_PFD4_CLK]);
+	clk_set_rate(clks[IMX7D_ENET_AXI_ROOT_CLK], 197000000);
+	clk_set_rate(clks[IMX7D_ENET1_TIME_ROOT_CLK], 25000000);
+	clk_set_rate(clks[IMX7D_ENET2_TIME_ROOT_CLK], 25000000);
+
 	return 0;
 }
 postcore_initcall(imx7_clk_setup);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
