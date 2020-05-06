Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFF3-0005vy-QU
 for barebox@lists.infradead.org; Wed, 06 May 2020 08:17:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 May 2020 10:17:08 +0200
Message-Id: <20200506081716.20143-5-s.hauer@pengutronix.de>
In-Reply-To: <20200506081716.20143-1-s.hauer@pengutronix.de>
References: <20200506081716.20143-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/13] clk: mxs: Fix clock numbering
To: Barebox List <barebox@lists.infradead.org>

The device tree clock lookups use the position in the clks array,
hence they must match. fec_sleep is a barebox specific clock and
is in between other clocks. Put the clock at the end of the array.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/mxs/clk-imx28.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index aedd8d4a7c..241b26c9a2 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -56,8 +56,8 @@ enum imx28_clk {
 	emi_xtal, lcdif_div, etm_div, ptp, saif0_div, saif1_div,
 	clk32k_div, rtc, lradc, spdif_div, clk32k, pwm, uart, ssp0,
 	ssp1, ssp2, ssp3, gpmi, spdif, emi, saif0, saif1, lcdif, etm,
-	fec_sleep, fec, can0, can1, usb0, usb1, usb0_phy, usb1_phy, enet_out,
-	lcdif_comp, clk_max
+	fec, can0, can1, usb0, usb1, usb0_phy, usb1_phy, enet_out,
+	lcdif_comp, fec_sleep, clk_max
 };
 
 static struct clk *clks[clk_max];
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
