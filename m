Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3EVS-0006Ks-0a
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 06:01:56 +0000
Received: by mail-pl1-x641.google.com with SMTP id b97-v6so5465325plb.0
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2018 23:01:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 20 Sep 2018 23:00:56 -0700
Message-Id: <20180921060102.16341-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 2/8] ARM: i.MX8MQ: Add missing node for ECSPI1
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add node for ECSPI1 that is missing from imx8mq.dtsi

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx8mq.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/dts/imx8mq.dtsi b/arch/arm/dts/imx8mq.dtsi
index c67438a48..6f860c3d6 100644
--- a/arch/arm/dts/imx8mq.dtsi
+++ b/arch/arm/dts/imx8mq.dtsi
@@ -288,6 +288,16 @@
 			#size-cells = <1>;
 			ranges = <0x30800000 0x30800000 0x400000>;
 
+			ecspi1: ecspi@30820000 {
+				compatible = "fsl,imx6ul-ecspi", "fsl,imx51-ecspi";
+				reg = <0x30820000 0x10000>;
+				interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MQ_CLK_ECSPI1_ROOT>,
+				<&clk IMX8MQ_CLK_ECSPI1_ROOT>;
+				clock-names = "ipg", "per";
+				status = "disabled";
+			};
+
 			uart1: serial@30860000 {
 				compatible = "fsl,imx8mq-uart",
 				             "fsl,imx6q-uart";
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
