Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXDPQ-0004Lg-5o
 for barebox@lists.infradead.org; Sun, 24 Jun 2018 22:23:01 +0000
Received: by mail-pl0-x244.google.com with SMTP id s24-v6so5866879plq.6
 for <barebox@lists.infradead.org>; Sun, 24 Jun 2018 15:22:49 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 24 Jun 2018 15:22:31 -0700
Message-Id: <20180624222231.30264-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] fixup! dts: update to v4.18-rc1
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

---

Sascha,

In case you haven't fixed this already, I am getting a build error on
'next' for i.MX7 due to the rename that happened as a part of "dts:
update to v4.18-rc1".

Thanks,
Andrey Smirnov

 drivers/clk/imx/clk-imx7.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index 1025c9d17..8e92a5a3b 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -744,9 +744,9 @@ static int imx7_ccm_probe(struct device_d *dev)
 	 * exist in hardware. According to the reference manual the ethernet clocks are controlled by
 	 * gates at 0x4700 and 0x4710
 	 */
-	clks[IMX7D_ENET1_REF_ROOT_CLK] = imx_clk_gate4("enet1_ref_root_clk", "enet1_ref_post_div", base + 0x4700, 0);
+	clks[IMX7D_ENET1_IPG_ROOT_CLK] = imx_clk_gate4("enet1_ref_root_clk", "enet1_ref_post_div", base + 0x4700, 0);
 	clks[IMX7D_ENET1_TIME_ROOT_CLK] = imx_clk_gate_shared("enet1_time_root_clk", "enet1_time_post_div", "enet1_ref_root_clk");
-	clks[IMX7D_ENET2_REF_ROOT_CLK] = imx_clk_gate4("enet2_ref_root_clk", "enet2_ref_post_div", base + 0x4710, 0);
+	clks[IMX7D_ENET2_IPG_ROOT_CLK] = imx_clk_gate4("enet2_ref_root_clk", "enet2_ref_post_div", base + 0x4710, 0);
 	clks[IMX7D_ENET2_TIME_ROOT_CLK] = imx_clk_gate_shared("enet2_time_root_clk", "enet2_time_post_div", "enet2_ref_root_clk");
 	clks[IMX7D_ENET_PHY_REF_ROOT_CLK] = imx_clk_gate4("enet_phy_ref_root_clk", "enet_phy_ref_post_div", base + 0x4520, 0);
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
