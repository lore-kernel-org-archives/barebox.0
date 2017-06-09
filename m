Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dJDCh-0000Ee-JJ
 for barebox@lists.infradead.org; Fri, 09 Jun 2017 06:15:29 +0000
Date: Fri, 9 Jun 2017 08:15:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170609061505.3tnirp55o5rfpbra@pengutronix.de>
References: <5caded00-8ec7-f66e-0922-11d32f719081@eurekelettronica.it>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5caded00-8ec7-f66e-0922-11d32f719081@eurekelettronica.it>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: New Board i.MX6 Dual Lite based
To: gianluca <gianlucarenzi@eurekelettronica.it>
Cc: barebox@lists.infradead.org

Hi Gianluca,

On Thu, Jun 08, 2017 at 05:06:46PM +0200, gianluca wrote:
> Hello,
> I would like to know if somebody has never faced a strange issue using
> Barebox (in detail the version I am actually using is 2017.02).
> 
> After running the the flash-header for memory using the xlsx file from
> FreeScale to setup the memory controller for iMX6 Dual Lite, the boot from
> the serial console is saying:
> 
> 
> > barebox 2017.02.0 #1 Thu Jun 8 15:51:17 CEST 2017
> > 
> > 
> > Board: Eurek EK360 i.MX6DL
> > detected i.MX6 DualLite revision 1.3
> > mdio_bus: miibus0: probed
> > imx-usb 2184000.usb: Cannot get phy: Function not implemented
> > imx-usb 2184000.usb: probe failed: Function not implemented
> > imx-usb 2184200.usb: Cannot get phy: Function not implemented
> > imx-usb 2184200.usb: probe failed: Function not implemented
> 
> this is pretty strange... Any hint? The device-tree for usb is like that:

You probably have CONFIG_GENERIC_PHY disabled. In this case
of_phy_get_by_phandle() is a static inline returning -ENOSYS.

> 
> > 		pinctrl_usbh1: usbh1grp {
> > 			fsl,pins = <
> > 				MX6QDL_PAD_EIM_D30__USB_H1_OC			0x1b0b0
> > 			>;
> > 		};
> > 
> > 		pinctrl_usbh1_vcc: usbh1vccgrp {
> > 			fsl,pins = <
> > 				MX6QDL_PAD_EIM_D31__GPIO3_IO31			0x1b0b0
> > 			>;
> > 		};
> 
> > &usbh1 {
> > 	vbus-supply = <&reg_usb_h1_vbus>;
> > 	pinctrl-names = "default";
> > 	pinctrl-0 = <&pinctrl_usbh1
> > 					&pinctrl_usbh1_vcc>;
> > 	dr_mode = "host";
> > 	status = "okay";
> > };
> 
> And it looks normal to me...
> 
> > imx-esdhc 2194000.usdhc: registered as 2194000.usdhc
> > imx-esdhc 2198000.usdhc: registered as 2198000.usdhc
> > imx-esdhc 219c000.usdhc: registered as 219c000.usdhc
> > imx-ipuv3 2400000.ipu: IPUv3H probed
> > netconsole: registered as netconsole-1
> > malloc space: 0x2ff7b920 -> 0x4fef723f (size 511.5 MiB)
> > environment load /dev/env0: No such file or directory
> > Maybe you have to create the partition.
> > running /env/bin/init...
> > Running boot from uSD/MMC or USB...
> > mmc2: detected SD card version 2.0
> > mmc2: registered mmc2
> > ext4 ext40: EXT2 rev 1, inode_size 128

mmc2 is detected and registered because you are booting from it, but
mmc3 is not. Try 'detect mmc3' or 'detect -a' on the command line.

> > i2c0: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy
> > ek360_read_eeprom :Error on reading eeprom @ 0
> > ek360_read_eeprom :Error on reading bytes.
> > ek360_detect_hw :** ERROR on READ EEPROM BOARD ret: -1
> > Hit CTRL-C key to stop autoboot:  1
> 
> Another issue is the i2c bus.

You should measure the I2C data line with an oscilloscope. It could be
that the line is constantly low. This can happen if the pullup resistor
is missing (Pinmux?). Also in rare cases this can happen when a board is
resetted in the middle of a I2C transfer.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
