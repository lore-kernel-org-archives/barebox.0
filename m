Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2eg9-00033Z-D6
 for barebox@lists.infradead.org; Wed, 19 Sep 2018 15:46:14 +0000
Received: by mail-pf1-x444.google.com with SMTP id d4-v6so2914845pfn.0
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2018 08:46:02 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 19 Sep 2018 08:45:34 -0700
Message-Id: <20180919154541.29861-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180919154541.29861-1-andrew.smirnov@gmail.com>
References: <20180919154541.29861-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 1/8] clk: i.MX8MQ: Bump refcounters of various important
 clocks
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Bump refcounters of various important clocks in order to make sure
their parents are not disabled during clock re-configuration added by
commits that follow.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/imx/clk-imx8mq.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 92d49d44e..782bbc256 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -185,6 +185,15 @@ static const char *imx8mq_clko2_sels[] = {"osc_25m", "sys2_pll_200m", "sys1_pll_
 
 static struct clk_onecell_data clk_data;
 
+static int const clks_init_on[] = {
+       IMX8MQ_CLK_DRAM_CORE, IMX8MQ_CLK_AHB_CG,
+       IMX8MQ_CLK_NOC_DIV, IMX8MQ_CLK_NOC_APB_DIV,
+       IMX8MQ_CLK_NAND_USDHC_BUS_SRC,
+       IMX8MQ_CLK_MAIN_AXI_SRC, IMX8MQ_CLK_A53_CG,
+       IMX8MQ_CLK_AUDIO_AHB_DIV, IMX8MQ_CLK_TMU_ROOT,
+       IMX8MQ_CLK_DRAM_APB_SRC,
+};
+
 static void __init imx8mq_clocks_init(struct device_node *ccm_node)
 {
 	struct device_node *np;
@@ -572,6 +581,9 @@ static void __init imx8mq_clocks_init(struct device_node *ccm_node)
 			pr_err("i.MX8mq clk %u register failed with %ld\n",
 			       i, PTR_ERR(clks[i]));
 
+	for (i = 0; i < ARRAY_SIZE(clks_init_on); i++)
+		clk_enable(clks[clks_init_on[i]]);
+
 	clk_data.clks = clks;
 	clk_data.clk_num = ARRAY_SIZE(clks);
 	of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
