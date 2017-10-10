Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e1tcn-0002fm-8w
 for barebox@lists.infradead.org; Tue, 10 Oct 2017 12:27:07 +0000
Received: by mail-lf0-x241.google.com with SMTP id g70so1327670lfl.3
 for <barebox@lists.infradead.org>; Tue, 10 Oct 2017 05:26:45 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 10 Oct 2017 15:26:31 +0300
Message-Id: <20171010122631.9421-6-antonynpavlov@gmail.com>
In-Reply-To: <20171010122631.9421-1-antonynpavlov@gmail.com>
References: <20171010122631.9421-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 5/5] sandbox: dts: add i2c and spi libftdi1 bit-bang example
To: barebox@lists.infradead.org

Usage:

  barebox$ make sandbox_defconfig
  barebox$ sed -i "s/# CONFIG_GPIO_LIBFTDI1.*$/CONFIG_GPIO_LIBFTDI1=y/" .config

  # edit arch/sandbox/dts/sandbox.dts if necessary

  barebox$ make
  barebox$ sudo ./barebox -d arch/sandbox/dts/sandbox.dtb

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/sandbox/dts/sandbox.dts | 47 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index 2595aa13fa..44c7f92237 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -1,7 +1,54 @@
 /dts-v1/;
 
 #include "skeleton.dtsi"
+#include <dt-bindings/gpio/gpio.h>
 
 / {
+	gpio0: gpio@0 {
+		compatible = "barebox,libftdi1-gpio";
+		/* use ACBUS[7:0] */
+		gpio-controller;
+		#gpio-cells = <2>;
+		status = "okay";
+	};
 
+	spi0 {
+		compatible = "spi-gpio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		gpio-sck  = <&gpio0 0 GPIO_ACTIVE_HIGH>;
+		gpio-mosi = <&gpio0 1 GPIO_ACTIVE_HIGH>;
+		gpio-miso = <&gpio0 2 GPIO_ACTIVE_HIGH>;
+		cs-gpios  = <&gpio0 3 GPIO_ACTIVE_HIGH>;
+
+		num-chipselects = <1>;
+
+		status = "disabled";
+
+		m25p128@0 {
+			compatible = "m25p128", "jedec,spi-nor";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			reg = <0>;
+			spi-max-frequency = <1000000>;
+		};
+	};
+
+	i2c0: i2c0 {
+		compatible = "i2c-gpio";
+		gpios = <&gpio0 4 GPIO_ACTIVE_HIGH /* sda */
+			&gpio0 5 GPIO_ACTIVE_HIGH /* scl */
+			>;
+		i2c-gpio,sda-open-drain;
+		i2c-gpio,scl-open-drain;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		status = "disabled";
+
+		eeprom: eeprom@50 {
+			compatible = "atmel,24c32";
+			reg = <0x50>;
+		};
+	};
 };
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
