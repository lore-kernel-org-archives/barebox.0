Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dCpAY-0007yo-VB
 for barebox@lists.infradead.org; Mon, 22 May 2017 15:22:52 +0000
Received: by mail-pf0-x244.google.com with SMTP id f27so20729523pfe.0
 for <barebox@lists.infradead.org>; Mon, 22 May 2017 08:22:30 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 22 May 2017 08:22:13 -0700
Message-Id: <20170522152213.14028-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] clk: i.MX51: Add missing USBOH3_GATE clock
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Nikita Yushchenko <nikita.yoush@cogentembedded.com>, cphealy@gmail.com

This clock is requested by chipidea driver during probe and its
absense breaks USB functionality.

Cc: cphealy@gmail.com
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/imx/clk-imx5.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/clk/imx/clk-imx5.c b/drivers/clk/imx/clk-imx5.c
index c4c47a6..62e7842 100644
--- a/drivers/clk/imx/clk-imx5.c
+++ b/drivers/clk/imx/clk-imx5.c
@@ -244,6 +244,8 @@ static void __init mx5_clocks_common_init(struct device_d *dev, void __iomem *ba
 		"ecspi_pred", base + CCM_CSCDR2, 19, 6);
 	clks[IMX5_CLK_CPU_PODF] = imx_clk_divider("cpu_podf",
 		"pll1_sw", base + CCM_CACRR, 0, 3);
+
+	clks[IMX5_CLK_USBOH3_GATE] = imx_clk_gate2("usboh3_gate", "ipg", base + CCM_CCGR2, 26);
 }
 
 static void mx5_clocks_mx51_mx53_init(void __iomem *base)
@@ -392,6 +394,12 @@ int __init mx51_clocks_init(struct device_d *dev, void __iomem *regs)
 	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM1_BASE_ADDR, "per");
 	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM2_BASE_ADDR, "per");
 
+	clkdev_add_physbase(clks[IMX5_CLK_USBOH3_GATE], MX51_OTG_BASE_ADDR + 0x000, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_USBOH3_GATE], MX51_OTG_BASE_ADDR + 0x200, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_USBOH3_GATE], MX51_OTG_BASE_ADDR + 0x400, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_USBOH3_GATE], MX51_OTG_BASE_ADDR + 0x600, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_USBOH3_GATE], MX51_OTG_BASE_ADDR + 0x800, NULL);
+
 	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
 		mx51_clocks_ipu_init(regs);
 
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
