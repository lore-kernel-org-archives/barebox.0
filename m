Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2kuu-0007xB-8x
 for barebox@lists.infradead.org; Wed, 19 Sep 2018 22:25:53 +0000
Received: by mail-pf1-x444.google.com with SMTP id d4-v6so3367186pfn.0
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2018 15:25:41 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 19 Sep 2018 15:25:22 -0700
Message-Id: <20180919222524.26025-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/3] clk: i.MX8MQ: Add missing IMX8MQ_CLK_TMU_ROOT clock
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add missing IMX8MQ_CLK_TMU_ROOT clock needed for CPU thermal sensor.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/imx/clk-imx8mq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 782bbc256..0431f61f0 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -572,6 +572,7 @@ static void __init imx8mq_clocks_init(struct device_node *ccm_node)
 	clks[IMX8MQ_CLK_WDOG1_ROOT] = imx_clk_gate4("wdog1_root_clk", "wdog_div", base + 0x4530, 0);
 	clks[IMX8MQ_CLK_WDOG2_ROOT] = imx_clk_gate4("wdog2_root_clk", "wdog_div", base + 0x4540, 0);
 	clks[IMX8MQ_CLK_WDOG3_ROOT] = imx_clk_gate4("wdog3_root_clk", "wdog_div", base + 0x4550, 0);
+	clks[IMX8MQ_CLK_TMU_ROOT] = imx_clk_gate4("tmu_root_clk", "ipg_root", base + 0x4620, 0);
 
 	clks[IMX8MQ_GPT_3M_CLK] = imx_clk_fixed_factor("gpt_3m", "osc_25m", 1, 8);
 	clks[IMX8MQ_CLK_DRAM_ALT_ROOT] = imx_clk_fixed_factor("dram_alt_root", "dram_alt_div", 1, 4);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
