Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZH92-000611-VI
 for barebox@lists.infradead.Org; Fri, 26 Feb 2016 12:05:18 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 26 Feb 2016 13:04:46 +0100
Message-Id: <1456488287-23404-5-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1456488287-23404-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1456488287-23404-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 4/5] ARM: i.MX25: dtsi: add rng node
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/imx25.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/dts/imx25.dtsi b/arch/arm/dts/imx25.dtsi
index 13fbcc4f8da6..612b6c99d226 100644
--- a/arch/arm/dts/imx25.dtsi
+++ b/arch/arm/dts/imx25.dtsi
@@ -23,6 +23,17 @@
 			compatible = "mmio-sram";
 			reg = <0x78000000 0x20000>;
 		};
+
+		aips@53f00000 {
+			rng: rng@53fb0000 {
+				compatible = "fsl,imx25-rng";
+				reg = <0x53fb0000 0x4000>;
+				clocks = <&clks 109>;
+				clock-names = "ipg";
+				interrupts = <22>;
+				interrupt-names = "rng";
+			};
+		};
 	};
 };
 
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
