Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WCtOX-0001Fl-4y
 for barebox@lists.infradead.org; Mon, 10 Feb 2014 16:07:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Feb 2014 17:07:13 +0100
Message-Id: <1392048433-22749-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392048433-22749-1-git-send-email-s.hauer@pengutronix.de>
References: <1392048433-22749-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] video: imx: Add a name to perclk
To: barebox@lists.infradead.org

perclk should be named 'per' to make sure we get the correct clock.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx21.c | 2 +-
 arch/arm/mach-imx/clk-imx27.c | 2 +-
 drivers/video/imx.c           | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx21.c b/arch/arm/mach-imx/clk-imx21.c
index 295ef3a..be9c466 100644
--- a/arch/arm/mach-imx/clk-imx21.c
+++ b/arch/arm/mach-imx/clk-imx21.c
@@ -164,7 +164,7 @@ static int imx21_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[ipg], MX21_I2C_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ipg], MX21_SDHC1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ipg], MX21_SDHC2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[lcdc_per_gate], MX21_LCDC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[lcdc_per_gate], MX21_LCDC_BASE_ADDR, "per");
 	clkdev_add_physbase(clks[lcdc_ahb_gate], MX21_LCDC_BASE_ADDR, "ahb");
 	clkdev_add_physbase(clks[lcdc_ipg_gate], MX21_LCDC_BASE_ADDR, "ipg");
 
diff --git a/arch/arm/mach-imx/clk-imx27.c b/arch/arm/mach-imx/clk-imx27.c
index c792261..2423627 100644
--- a/arch/arm/mach-imx/clk-imx27.c
+++ b/arch/arm/mach-imx/clk-imx27.c
@@ -237,7 +237,7 @@ static int imx27_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[per2_div], MX27_SDHC1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per2_div], MX27_SDHC2_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per2_div], MX27_SDHC3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per3_gate], MX27_LCDC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per3_gate], MX27_LCDC_BASE_ADDR, "per");
 	clkdev_add_physbase(clks[lcdc_ahb_gate], MX27_LCDC_BASE_ADDR, "ahb");
 	clkdev_add_physbase(clks[lcdc_ipg_gate], MX27_LCDC_BASE_ADDR, "ipg");
 	clkdev_add_physbase(clks[ipg], MX27_FEC_BASE_ADDR, NULL);
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 6e2d8d6..05c6105 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -530,7 +530,7 @@ static int imxfb_probe(struct device_d *dev)
 	fbi = xzalloc(sizeof(*fbi));
 	info = &fbi->info;
 
-	fbi->per_clk = clk_get(dev, NULL);
+	fbi->per_clk = clk_get(dev, "per");
 	if (IS_ERR(fbi->per_clk))
 		return PTR_ERR(fbi->per_clk);
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
