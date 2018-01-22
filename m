Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1edYt7-0001vR-M6
 for barebox@lists.infradead.org; Mon, 22 Jan 2018 09:59:40 +0000
Received: by mail-lf0-x243.google.com with SMTP id o89so9814216lfg.10
 for <barebox@lists.infradead.org>; Mon, 22 Jan 2018 01:59:28 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 22 Jan 2018 12:59:18 +0300
Message-Id: <20180122095918.11721-4-antonynpavlov@gmail.com>
In-Reply-To: <20180122095918.11721-1-antonynpavlov@gmail.com>
References: <20180122095918.11721-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v3 3/3] sandbox: add i2c and spi libftdi1 bit-bang example
To: barebox@lists.infradead.org

Make necessary changes in sandbox_defconfig:
enable gpio, spi, i2c and led stuff.

Usage:

  barebox$ make sandbox_defconfig
  barebox$ sed -i "s/# CONFIG_GPIO_LIBFTDI1.*$/CONFIG_GPIO_LIBFTDI1=y/" .config

  # edit arch/sandbox/dts/sandbox-libftdi-example.dtsi

  barebox$ echo '#include "sandbox-libftdi-example.dtsi"' >> arch/sandbox/dts/sandbox.dts
  barebox$ make
  barebox$ sudo ./barebox -d arch/sandbox/dts/sandbox.dtb

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/sandbox/configs/sandbox_defconfig        | 21 ++++++-
 arch/sandbox/dts/sandbox-libftdi-example.dtsi | 80 +++++++++++++++++++++++++++
 2 files changed, 100 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index dbaff12bfb..4a5b6d6d79 100644
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
@@ -66,10 +71,24 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_TAP=y
-# CONFIG_SPI is not set
+CONFIG_DRIVER_SPI_GPIO=y
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
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
 # CONFIG_PINCTRL is not set
+CONFIG_RTC_CLASS=y
+CONFIG_RTC_DRV_DS1307=y
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
diff --git a/arch/sandbox/dts/sandbox-libftdi-example.dtsi b/arch/sandbox/dts/sandbox-libftdi-example.dtsi
new file mode 100644
index 0000000000..abe3ddf8a0
--- /dev/null
+++ b/arch/sandbox/dts/sandbox-libftdi-example.dtsi
@@ -0,0 +1,80 @@
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	gpio0: gpio@0 {
+		compatible = "barebox,libftdi1-gpio";
+		usb,id_vendor = <0x0403>;
+		usb,id_product = <0x6010>;
+
+		/*
+		 * The serial number can be used to select
+		 * a specific device in case more than
+		 * one is connected to the host.
+		 */
+		/* usb,i_serial_number = "20180120"; */
+
+		/* use ACBUS[7:0] */
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		status = "okay";
+	};
+
+	spi0: spi0 {
+		compatible = "spi-gpio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
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
+
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		status = "disabled";
+
+		heartbeat-led {
+			label = "heartbeat";
+			gpios = <&gpio0 6 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+};
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
