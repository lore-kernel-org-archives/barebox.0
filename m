Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2egE-000506-9Q
 for barebox@lists.infradead.org; Wed, 19 Sep 2018 15:46:19 +0000
Received: by mail-pf1-x441.google.com with SMTP id k19-v6so2909433pfi.1
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2018 08:46:08 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 19 Sep 2018 08:45:37 -0700
Message-Id: <20180919154541.29861-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180919154541.29861-1-andrew.smirnov@gmail.com>
References: <20180919154541.29861-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 4/8] ARM: i.MX8MQ: Configure FEC1 clocks
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
