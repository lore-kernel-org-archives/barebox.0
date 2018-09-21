Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3EVQ-0006MH-D8
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 06:01:53 +0000
Received: by mail-pl1-x644.google.com with SMTP id b12-v6so5443732plr.8
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2018 23:01:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 20 Sep 2018 23:00:58 -0700
Message-Id: <20180921060102.16341-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180921060102.16341-1-andrew.smirnov@gmail.com>
References: <20180921060102.16341-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 4/8] ARM: i.MX8MQ: Configure FEC1 clocks
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Select proper parents as well as rates for FEC1 related clocks.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx8mq.dtsi | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx8mq.dtsi b/arch/arm/dts/imx8mq.dtsi
index 8bdf4efb7..763005217 100644
--- a/arch/arm/dts/imx8mq.dtsi
+++ b/arch/arm/dts/imx8mq.dtsi
@@ -639,16 +639,28 @@
 	assigned-clocks = <&clk IMX8MQ_CLK_USDHC1_SRC>,
 			  <&clk IMX8MQ_CLK_USDHC1_DIV>,
 			  <&clk IMX8MQ_CLK_USDHC2_SRC>,
-			  <&clk IMX8MQ_CLK_USDHC2_DIV>;
+			  <&clk IMX8MQ_CLK_USDHC2_DIV>,
+			  <&clk IMX8MQ_CLK_ENET_AXI_SRC>,
+			  <&clk IMX8MQ_CLK_ENET_TIMER_SRC>,
+			  <&clk IMX8MQ_CLK_ENET_REF_SRC>,
+			  <&clk IMX8MQ_CLK_ENET_TIMER_DIV>;
 
 	assigned-clock-parents =  <&clk IMX8MQ_SYS1_PLL_400M>,
 				  <0>,
 				  <&clk IMX8MQ_SYS1_PLL_400M>,
+				  <0>,
+				  <&clk IMX8MQ_SYS1_PLL_266M>,
+				  <&clk IMX8MQ_SYS2_PLL_100M>,
+				  <&clk IMX8MQ_SYS2_PLL_125M>,
 				  <0>;
 
 	assigned-clock-rates = <400000000>,
 			       <200000000>,
 			       <400000000>,
-			       <200000000>;
+			       <200000000>,
+			       <266000000>,
+			       <0>,
+			       <125000000>,
+			       <25000000>;
 };
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
