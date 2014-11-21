Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XroNL-0007VG-By
 for barebox@lists.infradead.org; Fri, 21 Nov 2014 13:35:52 +0000
Received: from s326.sam-solutions.net ([217.21.35.11])
 by s250.sam-solutions.net with esmtps (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <D.Lavnikevich@sam-solutions.com>)
 id 1XroN1-0008A7-V3
 for barebox@lists.infradead.org; Fri, 21 Nov 2014 16:35:31 +0300
From: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Date: Fri, 21 Nov 2014 16:35:07 +0300
Message-ID: <1416576907-2302-3-git-send-email-d.lavnikevich@sam-solutions.com>
In-Reply-To: <1416576907-2302-1-git-send-email-d.lavnikevich@sam-solutions.com>
References: <1416576907-2302-1-git-send-email-d.lavnikevich@sam-solutions.com>
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
Subject: [PATCH v2 2/2] imx6: clk: Gate off ENFC clock before setting clock
 rate
To: barebox@lists.infradead.org

This fixes NAND initialization issue which appears occasionally on
some i.MX6 SoCs (particulary was observed on phyCARD-i.MX6 with
i.MX6Solo).

Signed-off-by: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
---
 arch/arm/mach-imx/clk-imx6.c | 7 +++++--
 drivers/mtd/nand/nand_mxs.c  | 1 +
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index c051876..579365e 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -89,7 +89,7 @@ enum mx6q_clks {
 	sata_ref, sata_ref_100m, pcie_ref, pcie_ref_125m, enet_ref, usbphy1_gate,
 	usbphy2_gate, pll4_post_div, pll5_post_div, pll5_video_div, eim_slow,
 	spdif, cko2_sel, cko2_podf, cko2, cko, vdoa, pll4_audio_div,
-	lvds1_sel, lvds2_sel, lvds1_gate, lvds2_gate, clk_max
+	lvds1_sel, lvds2_sel, lvds1_gate, lvds2_gate, clk_max, enfc_gate
 };
 
 static struct clk *clks[clk_max];
@@ -398,6 +398,8 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[periph]  = imx_clk_busy_mux("periph",  base + 0x14, 25,  1,   base + 0x48, 5,  periph_sels,  ARRAY_SIZE(periph_sels));
 	clks[periph2] = imx_clk_busy_mux("periph2", base + 0x14, 26,  1,   base + 0x48, 3,  periph2_sels, ARRAY_SIZE(periph2_sels));
 
+	clks[enfc_gate] = imx_clk_gate2("enfc_gate", "enfc_sel", base + 0x70, 14);
+
 	/*                                      name                 parent_name               reg       shift width */
 	clks[periph_clk2]      = imx_clk_divider("periph_clk2",      "periph_clk2_sel",   base + 0x14, 27, 3);
 	clks[periph2_clk2]     = imx_clk_divider("periph2_clk2",     "periph2_clk2_sel",  base + 0x14, 0,  3);
@@ -410,7 +412,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[usdhc2_podf]      = imx_clk_divider("usdhc2_podf",      "usdhc2_sel",        base + 0x24, 16, 3);
 	clks[usdhc3_podf]      = imx_clk_divider("usdhc3_podf",      "usdhc3_sel",        base + 0x24, 19, 3);
 	clks[usdhc4_podf]      = imx_clk_divider("usdhc4_podf",      "usdhc4_sel",        base + 0x24, 22, 3);
-	clks[enfc_pred]        = imx_clk_divider("enfc_pred",        "enfc_sel",          base + 0x2c, 18, 3);
+	clks[enfc_pred]        = imx_clk_divider("enfc_pred",        "enfc_gate",         base + 0x2c, 18, 3);
 	clks[enfc_podf]        = imx_clk_divider("enfc_podf",        "enfc_pred",         base + 0x2c, 21, 6);
 	clks[emi_podf]         = imx_clk_divider("emi_podf",         "emi_sel",           base + 0x1c, 20, 3);
 	clks[emi_slow_podf]    = imx_clk_divider("emi_slow_podf",    "emi_slow_sel",      base + 0x1c, 23, 3);
@@ -469,6 +471,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 
 	clk_enable(clks[pll6_enet]);
 	clk_enable(clks[sata_ref_100m]);
+	clk_enable(clks[enfc_podf]);
 
 	return 0;
 }
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 8989de0..94101a3 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1266,6 +1266,7 @@ static int mxs_nand_probe(struct device_d *dev)
 		return PTR_ERR(nand_info->clk);
 
 	if (mxs_nand_is_imx6(nand_info)) {
+		clk_disable(nand_info->clk);
 		clk_set_rate(nand_info->clk, 96000000);
 		clk_enable(nand_info->clk);
 		nand_info->dma_channel_base = 0;
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
