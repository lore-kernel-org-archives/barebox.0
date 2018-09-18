Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g28mE-0000KN-9I
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 05:42:43 +0000
Received: by mail-pf1-x442.google.com with SMTP id b11-v6so446727pfo.3
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2018 22:42:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 17 Sep 2018 22:41:43 -0700
Message-Id: <20180918054148.8878-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180918054148.8878-1-andrew.smirnov@gmail.com>
References: <20180918054148.8878-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/8] ARM: i.MX8MQ: Configure USDHC1,2 clocks
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Select appropriate parents as well as clock rates for USDHC1 and
USDHC2 related clocks.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx8mq.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/dts/imx8mq.dtsi b/arch/arm/dts/imx8mq.dtsi
index 6f860c3d6..8bdf4efb7 100644
--- a/arch/arm/dts/imx8mq.dtsi
+++ b/arch/arm/dts/imx8mq.dtsi
@@ -632,3 +632,23 @@
 		};
 	};
 };
+
+
+
+&clk {
+	assigned-clocks = <&clk IMX8MQ_CLK_USDHC1_SRC>,
+			  <&clk IMX8MQ_CLK_USDHC1_DIV>,
+			  <&clk IMX8MQ_CLK_USDHC2_SRC>,
+			  <&clk IMX8MQ_CLK_USDHC2_DIV>;
+
+	assigned-clock-parents =  <&clk IMX8MQ_SYS1_PLL_400M>,
+				  <0>,
+				  <&clk IMX8MQ_SYS1_PLL_400M>,
+				  <0>;
+
+	assigned-clock-rates = <400000000>,
+			       <200000000>,
+			       <400000000>,
+			       <200000000>;
+};
+
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
