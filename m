Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gypiZ-0002bT-Sb
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 03:17:13 +0000
Received: by mail-pl1-x643.google.com with SMTP id p19so7265813plo.2
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2019 19:17:11 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Feb 2019 19:16:53 -0800
Message-Id: <20190227031657.19896-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/7] ARM: imx8mq: Add node for GPC IP block
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add node for GPC IP block that is missing in upstream DTS. This patch
should be reverted once that changes.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx8mq.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/dts/imx8mq.dtsi b/arch/arm/dts/imx8mq.dtsi
index 90a1d5be0..eece19a7a 100644
--- a/arch/arm/dts/imx8mq.dtsi
+++ b/arch/arm/dts/imx8mq.dtsi
@@ -112,6 +112,22 @@
 				reg = <0x30390000 0x10000>;
 				#reset-cells = <1>;
 			};
+
+			gpc: gpc@303a0000 {
+				compatible = "fsl,imx8mq-gpc", "fsl,imx7d-gpc";
+				reg = <0x303a0000 0x10000>;
+				#power-domain-cells = <1>;
+
+				interrupt-controller;
+				interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+				#interrupt-cells = <3>;
+				interrupt-parent = <&gic>;
+
+				pgc {
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+			};
 		};
 
 		bus@30800000 {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
