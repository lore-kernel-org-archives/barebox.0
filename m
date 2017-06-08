Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail34.e-mind.com ([188.94.192.34] helo=qmail.e-mind.com)
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dIz1x-0006i0-L9
 for barebox@lists.infradead.org; Thu, 08 Jun 2017 15:07:30 +0000
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <5caded00-8ec7-f66e-0922-11d32f719081@eurekelettronica.it>
Date: Thu, 8 Jun 2017 17:06:46 +0200
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: New Board i.MX6 Dual Lite based
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,
I would like to know if somebody has never faced a strange issue using 
Barebox (in detail the version I am actually using is 2017.02).

After running the the flash-header for memory using the xlsx file from 
FreeScale to setup the memory controller for iMX6 Dual Lite, the boot 
from the serial console is saying:


> barebox 2017.02.0 #1 Thu Jun 8 15:51:17 CEST 2017
>
>
> Board: Eurek EK360 i.MX6DL
> detected i.MX6 DualLite revision 1.3
> mdio_bus: miibus0: probed
> imx-usb 2184000.usb: Cannot get phy: Function not implemented
> imx-usb 2184000.usb: probe failed: Function not implemented
> imx-usb 2184200.usb: Cannot get phy: Function not implemented
> imx-usb 2184200.usb: probe failed: Function not implemented

this is pretty strange... Any hint? The device-tree for usb is like that:

> 		pinctrl_usbh1: usbh1grp {
> 			fsl,pins = <
> 				MX6QDL_PAD_EIM_D30__USB_H1_OC			0x1b0b0
> 			>;
> 		};
>
> 		pinctrl_usbh1_vcc: usbh1vccgrp {
> 			fsl,pins = <
> 				MX6QDL_PAD_EIM_D31__GPIO3_IO31			0x1b0b0
> 			>;
> 		};

> &usbh1 {
> 	vbus-supply = <&reg_usb_h1_vbus>;
> 	pinctrl-names = "default";
> 	pinctrl-0 = <&pinctrl_usbh1
> 					&pinctrl_usbh1_vcc>;
> 	dr_mode = "host";
> 	status = "okay";
> };

And it looks normal to me...

> imx-esdhc 2194000.usdhc: registered as 2194000.usdhc
> imx-esdhc 2198000.usdhc: registered as 2198000.usdhc
> imx-esdhc 219c000.usdhc: registered as 219c000.usdhc
> imx-ipuv3 2400000.ipu: IPUv3H probed
> netconsole: registered as netconsole-1
> malloc space: 0x2ff7b920 -> 0x4fef723f (size 511.5 MiB)
> environment load /dev/env0: No such file or directory
> Maybe you have to create the partition.
> running /env/bin/init...
> Running boot from uSD/MMC or USB...
> mmc2: detected SD card version 2.0
> mmc2: registered mmc2
> ext4 ext40: EXT2 rev 1, inode_size 128

The mmc connected to the mmc2 is looking good, but:

1- I have an internal eMMC with these defs in the device-tree:

> &usdhc4 {
> 	/* eMMC */
> 	pinctrl-names = "default";
> 	pinctrl-0 = <&pinctrl_usdhc4>;
> 	bus-width = <8>;
> 	vmmc-supply = <&reg_3p3v>;
> 	vqmmc-supply = <&reg_3p3v>;
> 	voltage-ranges = <3300 3300>;
> 	no-1-8-v;
> 	non-removable;
> 	status = "okay";
> };

> 		pinctrl_usdhc4: usdhc4grp {
> 			/* eMMC */
> 			fsl,pins = <
> 				MX6QDL_PAD_SD4_CMD__SD4_CMD			0x17059
> 				MX6QDL_PAD_SD4_CLK__SD4_CLK			0x10059
> 				MX6QDL_PAD_SD4_DAT0__SD4_DATA0		0x17059
> 				MX6QDL_PAD_SD4_DAT1__SD4_DATA1		0x17059
> 				MX6QDL_PAD_SD4_DAT2__SD4_DATA2		0x17059
> 				MX6QDL_PAD_SD4_DAT3__SD4_DATA3		0x17059
> 				MX6QDL_PAD_SD4_DAT4__SD4_DATA4		0x17059
> 				MX6QDL_PAD_SD4_DAT5__SD4_DATA5		0x17059
> 				MX6QDL_PAD_SD4_DAT6__SD4_DATA6		0x17059
> 				MX6QDL_PAD_SD4_DAT7__SD4_DATA7		0x17059
> 			>;
> 		};

But when I try to devinfo:

>        `-- 2194000.usdhc
>             `-- mmc1
>          `-- 2198000.usdhc
>             `-- mmc2
>                `-- 0x00000000-0xefffffff (   3.8 GiB): /dev/mmc2
>                `-- 0x00400000-0x00bfffff (     8 MiB): /dev/mmc2.0
>                `-- 0x00c00000-0x02bfffff (    32 MiB): /dev/mmc2.1
>                `-- 0x02c00000-0xefffffff (   3.7 GiB): /dev/mmc2.2
>                `-- ext40
>          `-- 219c000.usdhc
>             `-- mmc3

It looks empty (mmc3)... Any clue here? I will try another board, just 
to see if there is an hardware problem in the first board, but meanwhile 
is there some places to look at?

> i2c0: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy
> ek360_read_eeprom :Error on reading eeprom @ 0
> ek360_read_eeprom :Error on reading bytes.
> ek360_detect_hw :** ERROR on READ EEPROM BOARD ret: -1
> Hit CTRL-C key to stop autoboot:  1

Another issue is the i2c bus.

The devicetree has those definition about the bus:

> 		pinctrl_i2c1: i2c1grp {
> 			fsl,pins = <
> 				MX6QDL_PAD_CSI0_DAT8__I2C1_SDA		0x4001b8b1
> 				MX6QDL_PAD_CSI0_DAT9__I2C1_SCL		0x4001b8b1
> 			>;
> 		};

> &i2c1 {
> 	clock-frequency = <100000>;
> 	pinctrl-names = "default";
> 	pinctrl-0 = <&pinctrl_i2c1>;
> 	status = "okay";
>
> 	codec: sgtl5000@0a {
> 		compatible = "fsl,sgtl5000";
> 		reg = <0x0a>;
> 		clocks = <&clks IMX6QDL_CLK_CKO>;
> 		VDDA-supply = <&reg_3p3v>;
> 		VDDIO-supply = <&reg_3p3v>;
> 		VDDD-supply = <&reg_1p2v>;
> 		status = "okay";
> 	};
>
> 	touchscreen@48 {
> 		compatible = "eurek,sx8656-ek";
> 		reg = <0x48>;
> 		pinctrl-names = "default";
> 		pinctrl-0 = <&pinctrl_touchscreen>;
> 		interrupt-parent = <&gpio1>;
> 		interrupts = <17 IRQ_TYPE_EDGE_FALLING>;
> 		status = "okay";
> 	};
>
> 	at24@50 {
> 		compatible = "at24,24c64";
> 		pagesize = <64>;
> 		reg = <0x50>;
> 		status = "okay";
> 	};
>
> 	pcf8563: rtc@51 {
> 		compatible = "phg,pcf8563";
> 		reg = <0x51>;
> 		status = "okay";
> 	};
>
> };

but when I devinfo here is the magic (apart the '0' in the last position 
of the name... sgtl5000 and NOT sgtl50000):

>         `-- 21a0000.i2c
>             `-- i2c0
>                `-- sgtl50000
>                `-- sx8656-ek0
>                `-- 24c640
>                   `-- 0x00000000-0x00001fff (     8 KiB): /dev/eeprom0
>                `-- pcf85630

But if I do a i2c_dump, here is the issue again:

> i2c_probe 0
> probing i2c0 range 0x00-0x7f: i2c0: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy
> i2c0: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy
> i2c0: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy
> i2c0: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy
> i2c0: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy
> i2c0: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy
> i2c0: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy
> i2c0: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy
> i2c0: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy
> i2c0: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy
> i2c0: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy

There is a place where I can find the problem to lead to this?

Any help will be appreciated.

As soon those problems are gone, I will be glad to switch to the latest 
Barebox 2017.06 and a newer linux...

Regards,
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
