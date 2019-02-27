Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gypib-0002ce-CF
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 03:17:14 +0000
Received: by mail-pl1-x641.google.com with SMTP id q3so7263136pll.4
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2019 19:17:13 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Feb 2019 19:16:54 -0800
Message-Id: <20190227031657.19896-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190227031657.19896-1-andrew.smirnov@gmail.com>
References: <20190227031657.19896-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/7] ARM: imx8mq: Add nodes for PCIE1 and PCIE2 IP blocks
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add node for PCE1 and PCIE2 IP block that is missing in upstream DTS. This patch
should be reverted once that changes.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx8mq.dtsi | 89 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 89 insertions(+)

diff --git a/arch/arm/dts/imx8mq.dtsi b/arch/arm/dts/imx8mq.dtsi
index eece19a7a..153808b1c 100644
--- a/arch/arm/dts/imx8mq.dtsi
+++ b/arch/arm/dts/imx8mq.dtsi
@@ -4,6 +4,7 @@
  * Copyright (C) 2017 Pengutronix, Lucas Stach <kernel@pengutronix.de>
  */
 
+#include <dt-bindings/reset/imx8mq-reset.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
@@ -126,6 +127,35 @@
 				pgc {
 					#address-cells = <1>;
 					#size-cells = <0>;
+
+					/*
+					 * As per comment in ATF source code:
+					 *
+					 * PCIE1 and PCIE2 share the
+					 * same reset signal, if we power
+					 * down PCIE2, PCIE1 will be held
+					 * in reset too.
+					 *
+					 * So instead of creating two
+                                         * separate power domains for
+                                         * PCIE1 and PCIE2. We create
+                                         * a link between 1 and 10 and
+                                         * use what was supposed to be
+                                         * domain 1 as a shared PCIE
+                                         * power domain powering both
+                                         * PCIE1 and PCIE2 at the same
+                                         * time
+					 */
+					pgc_pcie_phy: gpc_power_domain@1 {
+						#power-domain-cells = <0>;
+						reg = <1>;
+						power-domains = <&pgc_pcie2_phy>;
+					};
+
+					pgc_pcie2_phy: gpc_power_domain@10 {
+						#power-domain-cells = <0>;
+						reg = <10>;
+					};
 				};
 			};
 		};
@@ -141,6 +171,65 @@
 				status = "disabled";
 			};
 		};
+
+		pcie0: pcie@33800000 {
+			compatible = "fsl,imx8mq-pcie";
+			reg = <0x33800000 0x400000>,
+			      <0x1ff00000 0x80000>;
+			reg-names = "dbi", "config";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			bus-range = <0x00 0xff>;
+			ranges = <0x81000000 0 0x00000000 0x1ff80000 0 0x00010000 /* downstream I/O 64KB */
+		        	  0x82000000 0 0x18000000 0x18000000 0 0x07f00000>; /* non-prefetchable memory */
+			num-lanes = <1>;
+			interrupts = <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi";
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &gic GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+		        		<0 0 0 2 &gic GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
+		        		<0 0 0 3 &gic GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+		        		<0 0 0 4 &gic GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
+			fsl,max-link-speed = <2>;
+			power-domains = <&pgc_pcie_phy>;
+			resets = <&src IMX8MQ_RESET_PCIEPHY>,
+		        	 <&src IMX8MQ_RESET_PCIE_CTRL_APPS_EN>,
+		        	 <&src IMX8MQ_RESET_PCIE_CTRL_APPS_TURNOFF>;
+			reset-names = "pciephy", "apps", "turnoff";
+			fsl,controller-id = <0>;
+			status = "disabled";
+		};
+
+		pcie1: pcie@33c00000 {
+			compatible = "fsl,imx8mq-pcie";
+			reg = <0x33c00000 0x400000>,
+			      <0x27f00000 0x80000>;
+			reg-names = "dbi", "config";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			ranges =  <0x81000000 0 0x00000000 0x27f80000 0 0x00010000 /* downstream I/O 64KB */
+				  0x82000000 0 0x20000000 0x20000000 0 0x07f00000>; /* non-prefetchable memory */
+			num-lanes = <1>;
+			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi";
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &gic GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &gic GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &gic GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &gic GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+			fsl,max-link-speed = <2>;
+			power-domains = <&pgc_pcie_phy>;
+			resets = <&src IMX8MQ_RESET_PCIEPHY2>,
+		        	 <&src IMX8MQ_RESET_PCIE2_CTRL_APPS_EN>,
+		        	 <&src IMX8MQ_RESET_PCIE2_CTRL_APPS_TURNOFF>;
+			reset-names = "pciephy", "apps", "turnoff";
+			fsl,controller-id = <1>;
+			status = "disabled";
+		};
 	};
 };
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
