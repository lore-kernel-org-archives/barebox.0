Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f2Ra0-0006Wp-QZ
 for barebox@lists.infradead.org; Sun, 01 Apr 2018 01:14:47 +0000
Received: by mail-pg0-x242.google.com with SMTP id n11so7181526pgp.4
 for <barebox@lists.infradead.org>; Sat, 31 Mar 2018 18:14:31 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 31 Mar 2018 18:13:55 -0700
Message-Id: <20180401011358.11621-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180401011358.11621-1-andrew.smirnov@gmail.com>
References: <20180401011358.11621-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/3] clk: i.MX7: Port NAND clock setup code from Linux
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port Linux kernel commit 22039d150f716e4e ("clk: imx7d: create clocks
behind rawnand clock gate") in order to correctly initialize clocks
necessary for APBH DMA block to be functional on i.MX7

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/imx/clk-imx7.c | 5 +++--
 drivers/clk/imx/clk.h      | 7 +++++++
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index b79c8c301..548f86cbe 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -676,7 +676,7 @@ static int imx7_ccm_probe(struct device_d *dev)
 	clks[IMX7D_ENET2_TIME_ROOT_DIV] = imx_clk_divider2("enet2_time_post_div", "enet2_time_pre_div", base + 0xa880, 0, 6);
 	clks[IMX7D_ENET_PHY_REF_ROOT_DIV] = imx_clk_divider2("enet_phy_ref_post_div", "enet_phy_ref_pre_div", base + 0xa900, 0, 6);
 	clks[IMX7D_EIM_ROOT_DIV] = imx_clk_divider2("eim_post_div", "eim_pre_div", base + 0xa980, 0, 6);
-	clks[IMX7D_NAND_ROOT_DIV] = imx_clk_divider2("nand_post_div", "nand_pre_div", base + 0xaa00, 0, 6);
+	clks[IMX7D_NAND_ROOT_CLK] = imx_clk_divider2("nand_root_clk", "nand_pre_div", base + 0xaa00, 0, 6);
 	clks[IMX7D_QSPI_ROOT_DIV] = imx_clk_divider2("qspi_post_div", "qspi_pre_div", base + 0xaa80, 0, 6);
 	clks[IMX7D_USDHC1_ROOT_DIV] = imx_clk_divider2("usdhc1_post_div", "usdhc1_pre_div", base + 0xab00, 0, 6);
 	clks[IMX7D_USDHC2_ROOT_DIV] = imx_clk_divider2("usdhc2_post_div", "usdhc2_pre_div", base + 0xab80, 0, 6);
@@ -751,7 +751,8 @@ static int imx7_ccm_probe(struct device_d *dev)
 	clks[IMX7D_ENET_PHY_REF_ROOT_CLK] = imx_clk_gate4("enet_phy_ref_root_clk", "enet_phy_ref_post_div", base + 0x4520, 0);
 
 	clks[IMX7D_EIM_ROOT_CLK] = imx_clk_gate4("eim_root_clk", "eim_post_div", base + 0x4160, 0);
-	clks[IMX7D_NAND_ROOT_CLK] = imx_clk_gate4("nand_root_clk", "nand_post_div", base + 0x4140, 0);
+	clks[IMX7D_NAND_RAWNAND_CLK] = imx_clk_gate2_shared2("nand_rawnand_clk", "nand_root_clk", base + 0x4140, 0);
+	clks[IMX7D_NAND_USDHC_BUS_RAWNAND_CLK] = imx_clk_gate2_shared2("nand_usdhc_rawnand_clk", "nand_usdhc_root_clk", base + 0x4140, 0);	
 	clks[IMX7D_QSPI_ROOT_CLK] = imx_clk_gate4("qspi_root_clk", "qspi_post_div", base + 0x4150, 0);
 	clks[IMX7D_USB_CTRL_CLK] = imx_clk_gate4("usb_ctrl_clk", "osc", base + 0x4680, 0);
 	clks[IMX7D_USB_PHY1_CLK] = imx_clk_gate4("usbphy1_clk", "osc", base + 0x46a0, 0);
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index c46c2614d..71c6f459a 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -80,6 +80,13 @@ static inline struct clk *imx_clk_gate2(const char *name, const char *parent,
 	return clk_gate2(name, parent, reg, shift, 0x3, 0);
 }
 
+static inline struct clk *imx_clk_gate2_shared2(const char *name, const char *parent,
+						void __iomem *reg, u8 shift)
+{
+	return clk_gate2(name, parent, reg, shift, 0x3,
+			 CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE);
+}
+
 static inline struct clk *imx_clk_gate2_cgr(const char *name, const char *parent,
 					    void __iomem *reg, u8 shift, u8 cgr_val)
 {
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
