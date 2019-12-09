Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFcE-0008CH-EI
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 09:46:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  9 Dec 2019 10:46:03 +0100
Message-Id: <20191209094603.8309-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] clk: i.MX6ul: Disable GPMI_IO clk before reparenting
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Before reparenting the ENFC_SEL mux we have to make sure the GPMI_IO clk
is disabled as recommended in the reference manual. Otherwise glitches
may occur on the GPMI clk which result in a later NAND failure:

MXS: Timeout resetting block via register 0x01806000
mxs_nand 1806000.gpmi-nand@1806000.of: probe failed: Connection timed out

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-imx6ul.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
index b0a6bb0e8d..35483efde6 100644
--- a/drivers/clk/imx/clk-imx6ul.c
+++ b/drivers/clk/imx/clk-imx6ul.c
@@ -450,6 +450,9 @@ static int imx6_ccm_probe(struct device_d *dev)
 		clk_set_parent(clks[IMX6ULL_CLK_EPDC_PRE_SEL],
 				clks[IMX6UL_CLK_PLL3_PFD2]);
 
+	/* Disable GPMI_IO clk before reparenting to avoid glitches */
+	clks[IMX6UL_CLK_GPMI_IO]->ops->disable(clks[IMX6UL_CLK_GPMI_IO]);
+
 	clk_set_parent(clks[IMX6UL_CLK_ENFC_SEL], clks[IMX6UL_CLK_PLL2_PFD2]);
 
 	return 0;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
