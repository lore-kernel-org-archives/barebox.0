Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3LfN-0004et-SN
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 09:54:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 11:53:39 +0200
Message-Id: <1434102821-10555-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434102821-10555-1-git-send-email-s.hauer@pengutronix.de>
References: <1434102821-10555-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] ARM: i.MX28: Add PWM clk support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/include/mach/imx28-regs.h | 1 +
 drivers/clk/mxs/clk-imx28.c                 | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/mach-mxs/include/mach/imx28-regs.h b/arch/arm/mach-mxs/include/mach/imx28-regs.h
index de0d882..1a90ec2 100644
--- a/arch/arm/mach-mxs/include/mach/imx28-regs.h
+++ b/arch/arm/mach-mxs/include/mach/imx28-regs.h
@@ -34,6 +34,7 @@
 #define IMX_WDT_BASE		0x80056000
 #define IMX_I2C0_BASE		0x80058000
 #define IMX_I2C1_BASE		0x8005a000
+#define IMX_PWM_BASE		0x80064000
 #define IMX_TIM1_BASE		0x80068000
 #define IMX_UART0_BASE		0x8006a000
 #define IMX_UART1_BASE		0x8006c000
diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index 77a13bc..a408044 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -158,6 +158,7 @@ int __init mx28_clocks_init(void __iomem *regs)
 	clkdev_add_physbase(clks[uart], IMX_UART3_BASE, NULL);
 	clkdev_add_physbase(clks[uart], IMX_UART4_BASE, NULL);
 	clkdev_add_physbase(clks[gpmi], MXS_GPMI_BASE, NULL);
+	clkdev_add_physbase(clks[pwm], IMX_PWM_BASE, NULL);
 	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_STM))
 		clkdev_add_physbase(clks[lcdif_comp], IMX_FB_BASE, NULL);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
