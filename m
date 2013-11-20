Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22e.google.com ([2a00:1450:4013:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VjFEf-0007Xm-B1
 for barebox@lists.infradead.org; Wed, 20 Nov 2013 21:22:57 +0000
Received: by mail-ea0-f174.google.com with SMTP id b10so1944397eae.5
 for <barebox@lists.infradead.org>; Wed, 20 Nov 2013 13:22:35 -0800 (PST)
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Wed, 20 Nov 2013 22:22:24 +0100
Message-Id: <1384982546-9111-2-git-send-email-lisovy@gmail.com>
In-Reply-To: <1384982546-9111-1-git-send-email-lisovy@gmail.com>
References: <1384982546-9111-1-git-send-email-lisovy@gmail.com>
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
Subject: [PATCH 1/3] ARM: dts: i.mx53: Internal keyboard controller + i2c
 pinmux
To: barebox@lists.infradead.org
Cc: Rostislav Lisovy <lisovy@gmail.com>, pisa@cmp.felk.cvut.cz

Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>

diff --git a/arch/arm/dts/imx53.dtsi b/arch/arm/dts/imx53.dtsi
index 09c5772..678547c 100644
--- a/arch/arm/dts/imx53.dtsi
+++ b/arch/arm/dts/imx53.dtsi
@@ -269,6 +269,14 @@
 				#interrupt-cells = <2>;
 			};
 
+			kpp: kpp@53f94000 {
+				compatible = "fsl,imx53-kpp", "fsl,imx21-kpp";
+				reg = <0x53f94000 0x4000>;
+				interrupts = <60>;
+				clocks = <&clks 0>;
+				status = "disabled";
+			};
+
 			wdog1: wdog@53f98000 {
 				compatible = "fsl,imx53-wdt", "fsl,imx21-wdt";
 				reg = <0x53f98000 0x4000>;
@@ -587,6 +595,13 @@
 							MX53_PAD_GPIO_5__I2C3_SCL 0xc0000000
 						>;
 					};
+
+					pinctrl_i2c3_2: i2c3grp-2 {
+						fsl,pins = <
+							MX53_PAD_GPIO_3__I2C3_SCL	0xc0000000
+							MX53_PAD_GPIO_6__I2C3_SDA	0xc0000000
+						>;
+					};
 				};
 
 				ipu_disp0 {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
