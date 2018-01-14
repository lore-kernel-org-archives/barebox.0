Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eapkL-0005tb-Du
 for barebox@lists.infradead.org; Sun, 14 Jan 2018 21:23:20 +0000
Received: by mail-lf0-x243.google.com with SMTP id a204so2867713lfa.2
 for <barebox@lists.infradead.org>; Sun, 14 Jan 2018 13:23:07 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 15 Jan 2018 00:22:48 +0300
Message-Id: <20180114212252.29682-4-antonynpavlov@gmail.com>
In-Reply-To: <20180114212252.29682-1-antonynpavlov@gmail.com>
References: <20180114212252.29682-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 3/7] sandbox: add i2c and spi libftdi1 bit-bang example
To: barebox@lists.infradead.org

Make necessary changes in sandbox_defconfig:
enable gpio, spi, i2c and led stuff.

Usage:

  barebox$ make sandbox_defconfig
  barebox$ sed -i "s/# CONFIG_GPIO_LIBFTDI1.*$/CONFIG_GPIO_LIBFTDI1=y/" .config

  # edit arch/sandbox/dts/sandbox.dts if necessary

  barebox$ make
  barebox$ sudo ./barebox -d arch/sandbox/dts/sandbox.dtb

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/sandbox/configs/sandbox_defconfig | 26 ++++++++++++++++-
 arch/sandbox/dts/sandbox.dts           | 52 ++++++++++++++++++++++++++++++++++
 2 files changed, 77 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index dbaff12bfb..6b10adb8ef 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -53,6 +53,11 @@ CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_MM=y
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_2048=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
@@ -66,10 +71,29 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_TAP=y
-# CONFIG_SPI is not set
+CONFIG_DRIVER_SPI_GPIO=y
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
+CONFIG_I2C_MUX=y
+CONFIG_I2C_MUX_PCA954x=y
+CONFIG_MTD=y
+CONFIG_MTD_M25P80=y
 CONFIG_VIDEO=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_GPIO_RGB=y
+CONFIG_LED_GPIO_BICOLOR=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_EEPROM_AT25=y
+CONFIG_EEPROM_AT24=y
+CONFIG_GPIO_74164=y
+CONFIG_GPIO_PCA953X=y
+CONFIG_GPIO_SX150X=y
 # CONFIG_PINCTRL is not set
+CONFIG_RTC_CLASS=y
+CONFIG_RTC_DRV_DS1307=y
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index 2595aa13fa..69568f6d7a 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -1,7 +1,59 @@
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
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		gpios = <&gpio0 4 GPIO_ACTIVE_HIGH /* sda */
+			&gpio0 5 GPIO_ACTIVE_HIGH /* scl */
+			>;
+		i2c-gpio,scl-output-only;
+
+		status = "disabled";
+
+		eeprom: at24@50 {
+			compatible = "atmel,24c32";
+			reg = <0x50>;
+		};
+
+		rtc: ds1307@68 {
+			compatible = "dallas,ds1307";
+			reg = <0x68>;
+		};
+	};
 };
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
