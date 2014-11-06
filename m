Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmPjt-0002G1-2J
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 16:16:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Nov 2014 17:16:24 +0100
Message-Id: <1415290584-20203-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1415290584-20203-1-git-send-email-s.hauer@pengutronix.de>
References: <1415290584-20203-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: i.MX6 GuF Santaro: Add simple-panel support
To: barebox@lists.infradead.org

We don't know the name and vendor of the panel and since the
Kernel simple panel driver does not allow videomodes it's
just "unknown,the-display-on-the-garz-fricke-santaro".

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6q-guf-santaro.dts | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6q-guf-santaro.dts b/arch/arm/dts/imx6q-guf-santaro.dts
index 98fb78f..044a1c1 100644
--- a/arch/arm/dts/imx6q-guf-santaro.dts
+++ b/arch/arm/dts/imx6q-guf-santaro.dts
@@ -41,7 +41,7 @@
 		enable-active-high;
 	};
 
-	backlight {
+	backlight: backlight {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_backlight>;
 		compatible = "pwm-backlight";
@@ -57,6 +57,18 @@
 		#clock-cells = <0>;
 		clock-frequency = <25000000>;
 	};
+
+	panel {
+		compatible = "unknown,the-display-on-the-garz-fricke-santaro";
+		backlight = <&backlight>;
+		enable-gpios = <&gpio5 21 GPIO_ACTIVE_LOW>;
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&lvds0_out>;
+			};
+		};
+	};
 };
 
 &fec {
@@ -517,6 +529,12 @@
 				vback-porch = <5>;
 				vsync-len = <3>;
 				vsync-active = <1>;
+		};
+
+		port@4 {
+			reg = <4>;
+			lvds0_out: endpoint {
+				remote-endpoint = <&panel_in>;
 			};
 		};
 	};
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
