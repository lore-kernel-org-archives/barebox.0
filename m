Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jvaP2-0006sm-0o
 for barebox@lists.infradead.org; Wed, 15 Jul 2020 05:56:25 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 15 Jul 2020 07:56:04 +0200
Message-Id: <20200715055608.20993-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 1/5] clk: imx7: add IMX7D_OCOTP_CLK
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Otherwise barebox is not able to resolve the clock from the device tree
node.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/clk/imx/clk-imx7.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index 1f15d7ef11..b6c7c2c3a8 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -722,10 +722,12 @@ static int imx7_ccm_probe(struct device_d *dev)
 	clks[IMX7D_OCRAM_S_CLK] = imx_clk_gate4("ocram_s_clk", "ahb_post_div", base + 0x4120, 0);
 	clks[IMX7D_NAND_USDHC_BUS_ROOT_CLK] = imx_clk_gate4("nand_usdhc_root_clk", "nand_usdhc_post_div", base + 0x4130, 0);
 	clks[IMX7D_AHB_CHANNEL_ROOT_CLK] = imx_clk_gate4("ahb_root_clk", "ahb_post_div", base + 0x4200, 0);
+	clks[IMX7D_IPG_ROOT_CLK] = imx_clk_divider_flags("ipg_root_clk", "ahb_root_clk", base + 0x9080, 0, 2, CLK_IS_CRITICAL | CLK_OPS_PARENT_ENABLE | CLK_SET_RATE_PARENT);
 	clks[IMX7D_DRAM_ROOT_CLK] = imx_clk_gate4("dram_root_clk", "dram_post_div", base + 0x4130, 0);
 	clks[IMX7D_DRAM_PHYM_ROOT_CLK] = imx_clk_gate4("dram_phym_root_clk", "dram_phym_cg", base + 0x4130, 0);
 	clks[IMX7D_DRAM_PHYM_ALT_ROOT_CLK] = imx_clk_gate4("dram_phym_alt_root_clk", "dram_phym_alt_post_div", base + 0x4130, 0);
 	clks[IMX7D_DRAM_ALT_ROOT_CLK] = imx_clk_gate4("dram_alt_root_clk", "dram_alt_post_div", base + 0x4130, 0);
+	clks[IMX7D_OCOTP_CLK] = imx_clk_gate4("ocotp_clk", "ipg_root_clk", base + 0x4230, 0);
 	clks[IMX7D_USB_HSIC_ROOT_CLK] = imx_clk_gate4("usb_hsic_root_clk", "usb_hsic_post_div", base + 0x4420, 0);
 	clks[IMX7D_SDMA_CORE_CLK] = imx_clk_gate4("sdma_root_clk", "ahb_root_clk", base + 0x4480, 0);
 	clks[IMX7D_PCIE_CTRL_ROOT_CLK] = imx_clk_gate4("pcie_ctrl_root_clk", "pcie_ctrl_post_div", base + 0x4600, 0);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
