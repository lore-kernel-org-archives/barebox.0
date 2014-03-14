Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAg-00055V-SB
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:25 +0100
Message-Id: <1394807569-23620-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/29] ARM: dts: i.MX53: Fix IPU register size
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx53.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx53.dtsi b/arch/arm/dts/imx53.dtsi
index 91659b8..c3fac43 100644
--- a/arch/arm/dts/imx53.dtsi
+++ b/arch/arm/dts/imx53.dtsi
@@ -87,7 +87,7 @@
 		ipu: ipu@18000000 {
 			#crtc-cells = <1>;
 			compatible = "fsl,imx53-ipu";
-			reg = <0x18000000 0x080000000>;
+			reg = <0x18000000 0x08000000>;
 			interrupts = <11 10>;
 			clocks = <&clks 59>, <&clks 110>, <&clks 61>;
 			clock-names = "bus", "di0", "di1";
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
