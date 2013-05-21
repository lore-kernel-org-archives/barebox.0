Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UejKd-0005Ma-67
 for barebox@lists.infradead.org; Tue, 21 May 2013 09:58:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 21 May 2013 11:57:41 +0200
Message-Id: <1369130267-8094-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369130267-8094-1-git-send-email-s.hauer@pengutronix.de>
References: <1369130267-8094-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] ARM: i.MX51: Add IIM devicetree node
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx51.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/dts/imx51.dtsi b/arch/arm/dts/imx51.dtsi
index 21bb786..af953f2 100644
--- a/arch/arm/dts/imx51.dtsi
+++ b/arch/arm/dts/imx51.dtsi
@@ -605,6 +605,13 @@
 			reg = <0x80000000 0x10000000>;
 			ranges;
 
+			iim: iim@83f98000 {
+				compatible = "fsl,imx51-iim", "fsl,imx-iim";
+				reg = <0x83f98000 0x4000>;
+				interrupts = <69>;
+				clocks = <&clks 107>;
+			};
+
 			ecspi2: ecspi@83fac000 {
 				#address-cells = <1>;
 				#size-cells = <0>;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
