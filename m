Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sf9z4-0003kr-Io
 for barebox@lists.infradead.org; Thu, 14 Jun 2012 13:21:11 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Thu, 14 Jun 2012 15:20:59 +0200
Message-Id: <1339680065-12169-3-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1339680065-12169-1-git-send-email-w.sang@pengutronix.de>
References: <1339680065-12169-1-git-send-email-w.sang@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH V2 2/8] arm: mxs: add imx_set_hclk
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

needed for writing the One-Time-Prgorammable

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/mach-mxs/include/mach/clock-imx23.h |    1 +
 arch/arm/mach-mxs/include/mach/clock-imx28.h |    1 +
 arch/arm/mach-mxs/speed-imx23.c              |   21 +++++++++++++++++++++
 arch/arm/mach-mxs/speed-imx28.c              |   21 +++++++++++++++++++++
 4 files changed, 44 insertions(+)

diff --git a/arch/arm/mach-mxs/include/mach/clock-imx23.h b/arch/arm/mach-mxs/include/mach/clock-imx23.h
index 723f343..4f20e09 100644
--- a/arch/arm/mach-mxs/include/mach/clock-imx23.h
+++ b/arch/arm/mach-mxs/include/mach/clock-imx23.h
@@ -18,6 +18,7 @@ unsigned imx_get_emiclk(void);
 unsigned imx_get_ioclk(void);
 unsigned imx_get_armclk(void);
 unsigned imx_get_hclk(void);
+unsigned imx_set_hclk(unsigned);
 unsigned imx_get_xclk(void);
 unsigned imx_get_sspclk(unsigned);
 unsigned imx_set_sspclk(unsigned, unsigned, int);
diff --git a/arch/arm/mach-mxs/include/mach/clock-imx28.h b/arch/arm/mach-mxs/include/mach/clock-imx28.h
index 45fb043..613c97b 100644
--- a/arch/arm/mach-mxs/include/mach/clock-imx28.h
+++ b/arch/arm/mach-mxs/include/mach/clock-imx28.h
@@ -18,6 +18,7 @@ unsigned imx_get_emiclk(void);
 unsigned imx_get_ioclk(unsigned);
 unsigned imx_get_armclk(void);
 unsigned imx_get_hclk(void);
+unsigned imx_set_hclk(unsigned);
 unsigned imx_get_xclk(void);
 unsigned imx_get_sspclk(unsigned);
 unsigned imx_set_sspclk(unsigned, unsigned, int);
diff --git a/arch/arm/mach-mxs/speed-imx23.c b/arch/arm/mach-mxs/speed-imx23.c
index c9ca7ac..f41b9bc 100644
--- a/arch/arm/mach-mxs/speed-imx23.c
+++ b/arch/arm/mach-mxs/speed-imx23.c
@@ -191,6 +191,27 @@ unsigned imx_get_hclk(void)
 	return rate * 1000;
 }
 
+unsigned imx_set_hclk(unsigned nc)
+{
+	unsigned root_rate = imx_get_armclk();
+	unsigned reg, div;
+
+	div = DIV_ROUND_UP(root_rate, nc);
+	if ((div == 0) || (div >= 32))
+		return 0;
+
+	if ((root_rate < nc) && (root_rate == 64000000))
+		div = 3;
+
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & ~0x3f;
+	writel(reg | div, IMX_CCM_BASE + HW_CLKCTRL_HBUS);
+
+	while (readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & (1 << 31))
+		;
+
+	return imx_get_hclk();
+}
+
 /*
  * Source of UART, debug UART, audio, PWM, dri, timer, digctl
  */
diff --git a/arch/arm/mach-mxs/speed-imx28.c b/arch/arm/mach-mxs/speed-imx28.c
index 4f4db1b..2641fb6 100644
--- a/arch/arm/mach-mxs/speed-imx28.c
+++ b/arch/arm/mach-mxs/speed-imx28.c
@@ -258,6 +258,27 @@ unsigned imx_get_hclk(void)
 	return rate * 1000;
 }
 
+unsigned imx_set_hclk(unsigned nc)
+{
+	unsigned root_rate = imx_get_armclk();
+	unsigned reg, div;
+
+	div = DIV_ROUND_UP(root_rate, nc);
+	if ((div == 0) || (div >= 32))
+		return 0;
+
+	if ((root_rate < nc) && (root_rate == 64000000))
+		div = 3;
+
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & ~0x3f;
+	writel(reg | div, IMX_CCM_BASE + HW_CLKCTRL_HBUS);
+
+	while (readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & (1 << 31))
+		;
+
+	return imx_get_hclk();
+}
+
 /*
  * Source of UART, debug UART, audio, PWM, dri, timer, digctl
  */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
