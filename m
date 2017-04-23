Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d2LTT-000353-Fb
 for barebox@lists.infradead.org; Sun, 23 Apr 2017 17:39:08 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 23 Apr 2017 19:37:40 +0200
Message-Id: <1492969061-12273-2-git-send-email-akurz@blala.de>
In-Reply-To: <1492969061-12273-1-git-send-email-akurz@blala.de>
References: <1492969061-12273-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH v2 2/3] ARM: i.MX50 clock: add clock for USB physbase
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Add the USB physbase clock entry for i.MX50 SoC to enable USB device
creation via DT.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 drivers/clk/imx/clk-imx5.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/imx/clk-imx5.c b/drivers/clk/imx/clk-imx5.c
index c4c47a6..edebd25 100644
--- a/drivers/clk/imx/clk-imx5.c
+++ b/drivers/clk/imx/clk-imx5.c
@@ -313,6 +313,7 @@ int __init mx50_clocks_init(struct device_d *dev, void __iomem *regs)
 	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_D_SEL], MX50_ESDHC4_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_PWM1_BASE_ADDR, "per");
 	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_PWM2_BASE_ADDR, "per");
+	clkdev_add_physbase(clks[IMX5_CLK_AHB], MX50_OTG_BASE_ADDR, NULL);
 
 	return 0;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
