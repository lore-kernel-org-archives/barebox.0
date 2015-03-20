Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YYust-00017x-2a
 for barebox@lists.infradead.org; Fri, 20 Mar 2015 11:14:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Mar 2015 12:14:09 +0100
Message-Id: <1426850049-31761-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX6: Add clock for ocotp
To: Barebox List <barebox@lists.infradead.org>

This clock is not specified in the devicetree node, thus is missing
since we switched to of based clocks for i.MX6. Add this clock back
as physbase clk to make the ocotp driver work again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx6.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index dccf0a8..145b394 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -410,6 +410,8 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[IMX6QDL_CLK_CKO1]         = imx_clk_gate("cko1",           "cko1_podf",         base + 0x60, 7);
 	clks[IMX6QDL_CLK_CKO2]         = imx_clk_gate("cko2",           "cko2_podf",         base + 0x60, 24);
 
+	clkdev_add_physbase(clks[IMX6QDL_CLK_IPG], MX6_OCOTP_BASE_ADDR, NULL);
+
 	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
 		imx6_add_video_clks(anatop_base, ccm_base);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
