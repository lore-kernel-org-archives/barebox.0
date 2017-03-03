Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([83.163.252.89])
 by merlin.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cjjAC-0007vp-Pt
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 09:06:13 +0000
From: Robin van der Gracht <robin@protonic.nl>
Date: Fri,  3 Mar 2017 10:05:39 +0100
Message-Id: <20170303090539.25738-1-robin@protonic.nl>
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
Subject: [PATCH] clk: imx: clk-imx6ul: Fixed conditional for enabling USB phy
 clocks
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Robin van der Gracht <robin@protonic.nl>

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 drivers/clk/imx/clk-imx6ul.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
index 72b5fa2..0ca0652 100644
--- a/drivers/clk/imx/clk-imx6ul.c
+++ b/drivers/clk/imx/clk-imx6ul.c
@@ -392,7 +392,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 	for (i = 0; i < ARRAY_SIZE(clks_init_on); i++)
 		clk_enable(clks[clks_init_on[i]]);
 
-	if (IS_ENABLED(CONFIG_USB_MXS_PHY)) {
+	if (IS_ENABLED(CONFIG_USB_IMX_PHY)) {
 		clk_enable(clks[IMX6UL_CLK_USBPHY1_GATE]);
 		clk_enable(clks[IMX6UL_CLK_USBPHY2_GATE]);
 	}
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
