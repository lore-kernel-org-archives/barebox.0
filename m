Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPNBs-0005hT-Cc
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 09:53:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Oct 2020 11:53:44 +0200
Message-Id: <20201005095346.27957-6-s.hauer@pengutronix.de>
In-Reply-To: <20201005095346.27957-1-s.hauer@pengutronix.de>
References: <20201005095346.27957-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] clk: i.MX8MQ: Add Cortex-M4 clk
To: Barebox List <barebox@lists.infradead.org>

Needed for the remoteproc driver on this SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-imx8mq.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 016d405e90..4072faacaf 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -255,6 +255,9 @@ static const char *imx8mq_dram_core_sels[] = {"dram_pll_out", "dram_alt_root", }
 
 static const char *imx8mq_clko2_sels[] = {"osc_25m", "sys2_pll_200m", "sys1_pll_400m", "sys2_pll_166m", "audio_pll1_out",
 					 "video_pll1_out", "ckil", };
+static const char * const imx8mq_arm_m4_sels[] = {"osc_25m", "sys2_pll_200m",
+	"sys2_pll_250m", "sys1_pll_266m", "sys1_pll_800m", "audio_pll1_out",
+	"video_pll1_out", "sys3_pll_out", };
 
 static struct clk_onecell_data clk_data;
 
@@ -552,6 +555,8 @@ static int imx8mq_clocks_init(struct device_node *ccm_node)
 	clks[IMX8MQ_CLK_SDMA1_ROOT] = imx_clk_gate4("sdma1_clk", "ipg_root", base + 0x43a0, 0);
 	clks[IMX8MQ_CLK_SDMA2_ROOT] = imx_clk_gate4("sdma2_clk", "ipg_audio_root", base + 0x43b0, 0);
 
+	clks[IMX8MQ_CLK_M4_CORE] = imx8m_clk_hw_composite_core("arm_m4_core", imx8mq_arm_m4_sels, base + 0x8080);
+
 	clks[IMX8MQ_GPT_3M_CLK] = imx_clk_fixed_factor("gpt_3m", "osc_25m", 1, 8);
 	clks[IMX8MQ_CLK_DRAM_ALT_ROOT] = imx_clk_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
