Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAg-00055U-PA
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:24 +0100
Message-Id: <1394807569-23620-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/29] ARM: dts: i.MX6: Add HDMI nodes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6q.dtsi   |  4 ++++
 arch/arm/dts/imx6qdl.dtsi | 11 +++++++++++
 2 files changed, 15 insertions(+)

diff --git a/arch/arm/dts/imx6q.dtsi b/arch/arm/dts/imx6q.dtsi
index f9378fa..2b8ec43 100644
--- a/arch/arm/dts/imx6q.dtsi
+++ b/arch/arm/dts/imx6q.dtsi
@@ -158,6 +158,10 @@
 	};
 };
 
+&hdmi {
+	compatible = "fsl,imx6q-hdmi";
+};
+
 &ldb {
 	clocks = <&clks 33>, <&clks 34>,
 		 <&clks 39>, <&clks 40>, <&clks 41>, <&clks 42>,
diff --git a/arch/arm/dts/imx6qdl.dtsi b/arch/arm/dts/imx6qdl.dtsi
index 5160db4..8dfd7de 100644
--- a/arch/arm/dts/imx6qdl.dtsi
+++ b/arch/arm/dts/imx6qdl.dtsi
@@ -665,6 +665,17 @@
 				};
 			};
 
+			hdmi: hdmi@0120000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0x00120000 0x9000>;
+				interrupts = <0 115 0x04>;
+				gpr = <&gpr>;
+				clocks = <&clks 123>, <&clks 124>;
+				clock-names = "iahb", "isfr";
+				status = "disabled";
+			};
+
 			dcic1: dcic@020e4000 {
 				reg = <0x020e4000 0x4000>;
 				interrupts = <0 124 IRQ_TYPE_LEVEL_HIGH>;
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
