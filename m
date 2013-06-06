Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ukb5o-00029G-N0
 for barebox@lists.infradead.org; Thu, 06 Jun 2013 14:23:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Jun 2013 16:22:39 +0200
Message-Id: <1370528559-15694-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1370528559-15694-1-git-send-email-s.hauer@pengutronix.de>
References: <1370528559-15694-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] ARM: i.MX6: Add sata device to devicetree
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6qdl.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/dts/imx6qdl.dtsi b/arch/arm/dts/imx6qdl.dtsi
index b636002..86084be 100644
--- a/arch/arm/dts/imx6qdl.dtsi
+++ b/arch/arm/dts/imx6qdl.dtsi
@@ -827,6 +827,16 @@
 			};
 		};
 
+		sata: sata@02200000 {
+			compatible = "fsl,imx6q-ahci";
+			reg = <0x02200000 0x4000>;
+			interrupts = <0 39 0x04>;
+			clocks = <&clks 154 &clks 105 &clks 187>;
+			clock-names = "ipg", "ahb", "per";
+			gprreg = <&gpr>;
+			status = "disabled";
+		};
+
 		ipu1: ipu@02400000 {
 			#crtc-cells = <1>;
 			compatible = "fsl,imx6q-ipu";
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
