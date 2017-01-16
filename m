Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4su-0002kT-0e
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:51:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2017 11:51:04 +0100
Message-Id: <20170116105108.13617-20-s.hauer@pengutronix.de>
In-Reply-To: <20170116105108.13617-1-s.hauer@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/23] clk: i.MX7: Add missing USB clocks
To: Barebox List <barebox@lists.infradead.org>

The USB clocks are missing in the Kernel clock code. Add them here.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-imx7.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index c8424fe07..45c5a4667 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -791,6 +791,9 @@ static int imx7_ccm_probe(struct device_d *dev)
 	clks[IMX7D_EIM_ROOT_CLK] = imx_clk_gate4("eim_root_clk", "eim_post_div", base + 0x4160, 0);
 	clks[IMX7D_NAND_ROOT_CLK] = imx_clk_gate4("nand_root_clk", "nand_post_div", base + 0x4140, 0);
 	clks[IMX7D_QSPI_ROOT_CLK] = imx_clk_gate4("qspi_root_clk", "qspi_post_div", base + 0x4150, 0);
+	clks[IMX7D_USB_CTRL_CLK] = imx_clk_gate4("usb_ctrl_clk", "osc", base + 0x4680, 0);
+	clks[IMX7D_USB_PHY1_CLK] = imx_clk_gate4("usbphy1_clk", "osc", base + 0x46a0, 0);
+	clks[IMX7D_USB_PHY2_CLK] = imx_clk_gate4("usbphy2_clk", "osc", base + 0x46b0, 0);
 	clks[IMX7D_USDHC1_ROOT_CLK] = imx_clk_gate4("usdhc1_root_clk", "usdhc1_post_div", base + 0x46c0, 0);
 	clks[IMX7D_USDHC2_ROOT_CLK] = imx_clk_gate4("usdhc2_root_clk", "usdhc2_post_div", base + 0x46d0, 0);
 	clks[IMX7D_USDHC3_ROOT_CLK] = imx_clk_gate4("usdhc3_root_clk", "usdhc3_post_div", base + 0x46e0, 0);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
