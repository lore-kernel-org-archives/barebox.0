Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.39])
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abSdA-0005C3-Rk
 for barebox@lists.infradead.org; Thu, 03 Mar 2016 12:45:31 +0000
From: gianluca <gianlucarenzi@eurek.it>
Message-ID: <56D831C6.1010101@eurek.it>
Date: Thu, 3 Mar 2016 13:44:54 +0100
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
Subject: Ethernet PHY KSZ9031 is not working
To: barebox@lists.infradead.org

Hello list,
It's me again! ;-)

Actually I had tested 80% of the board with barebox.

- USB
The microUSB is working (as I can use serial Downloader)
USB Host-A has to be tested, but if I type:

>> usb
> USB: scanning bus for devices...
> Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> 1 USB Device(s) found

so I can suppose the host controller is working. So I have to check on 
HOW to test the usb-pendisk, but it can be done later on... I have to 
activate the +5V by a gpio, so I have to think where is the best place 
to do that. At the C code level in the device_initcalls()?? Or using the 
gpio pinmux features in the device tree?

- I2C (i2c0, i2c1, i2c2)
They all three are working fine.

- DDR3 Memory Controller
Memtest is passing all tests. So I can suppose the timings are quite 
good enough to use the Dynamic RAM correctly. I will do a stress test 
later...

- SDHC (mmc1, mmc2, mmc3)
> -- 2194000.usdhc
>   `-- mmc1
This port is connected to a SDIO Wifi Module so I will test it with Linux

> -- 2198000.usdhc
>   `-- mmc2
>      `-- 0x00000000-0x1d9bfffff ( 7.4 GiB): /dev/mmc2
>      `-- 0x00400000-0x00bfffff ( 8 MiB): /dev/mmc2.0
>      `-- 0x00c00000-0x02bfffff ( 32 MiB): /dev/mmc2.1
>      `-- 0x02c00000-0x1d9bfffff ( 7.4 GiB): /dev/mmc2.2
This port has a microSD 8Gb with 3 partitions.

> -- 219c000.usdhc
>   `-- mmc3
>      `-- 0x00000000-0x001fffff ( 2 MiB): /dev/mmc3.boot0
>      `-- 0x00000000-0x001fffff ( 2 MiB): /dev/mmc3.boot1
>      `-- 0x00000000-0xe4ffffff ( 3.6 GiB): /dev/mmc3
This port has an eMMC 4GB unpartioned. 2 boot partitions and a big one 
for boot when it starts from internal boot.

- GPIOS
The gpios can be activated/deactivated on demand. As far as I see all 
gpios I had on this board are working as expected.

- SERIAL
In this board I have 3 serial ports (only RX/TX connected)

> `-- 21ec000.serial
>    `-- serial2

This is the uart3 as debug console and it works fine.

> `-- 21e8000.serial
>    `-- serial1

> `-- 2000000.aips-bus
>    `-- 2000000.spba-bus
>       `-- 2020000.serial
>          `-- serial0

How can I test them with barebox? Is it possible to set the baudrate, 
and send a character with the 'echo' command? And as soon as I have the 
/dev/ node can I read from it using the 'cat' command?

- FEC/PHY
This is the worst part of the game. :-(
It does not work at all.
I was looking on other boards with the same phy (KSZ9031 by Micrel) like 
Variscite-imx6, but with no luck.

In board.c I setup ONLY the fixup for ksz9031 and assert/de-assert the 
nRESET RGMII pin

> static int ksz9031rn_phy_fixup(struct phy_device *dev)
> {
> 	pr_info("%s Called\n", __FUNCTION__);
> 	/*
> 	 * min rx data delay, max rx/tx clock delay,
> 	 * min rx/tx control delay
> 	 */
> 	phy_write_mmd_indirect(dev, 4, 2, 0);
> 	phy_write_mmd_indirect(dev, 5, 2, 0);
> 	phy_write_mmd_indirect(dev, 8, 2, 0x03ff);
>
> 	pr_info("%s Exit\n", __FUNCTION__);
> 	return 0;
> }
>
> static int ek360_enet_init(void)
> {
> 	pr_info("%s Called\n", __FUNCTION__);
> 	if (!of_machine_is_compatible("eurek,ek360"))
> 		return 0;
>
> 	/*
> 	 * As this board has all configure pins (MODE0..3, PHYADD0..2, ...)
> 	 * with a fixed state (pullup & pulldown resistors) there should no
> 	 * need to have gpio working here for configuration.
> 	 * We need only assert & de-assert the reset pin here
> 	 */
> 	mxc_iomux_v3_setup_pad(MX6Q_PAD_EIM_D23__GPIO_3_23);
> 	gpio_direction_output(IMX_GPIO_NR(3,23), 0); /* assert nRESET */
> 	mdelay(50);
> 	gpio_direction_output(IMX_GPIO_NR(3,23), 1); /* de-assert nRESET */
> 	gpio_free(IMX_GPIO_NR(3,23));
>
> 	phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
> 					   ksz9031rn_phy_fixup);
>
> 	pr_info("%s Exit\n", __FUNCTION__);
> 	return 0;
> }
> fs_initcall(ek360_enet_init);
>

and let the device-tree to set the correct pins and setup the fec:

> 		pinctrl_enet: enetgrp {
> 			fsl,pins = <
> 				MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
> 				MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b0b0
> 				MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b0b0
> 				MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
> 				MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
> 				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b0b0
> 				MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b0b0
> 				MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
> 				MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
> 				MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
> 				MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
> 				MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
> 				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
> 				MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
> 				MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
> 				MX6QDL_PAD_EIM_D23__GPIO3_IO23		0x80000000 /* KSZ9031 PHY Reset */
> 			>;
> 		};
> &fec {
> 	pinctrl-names = "default";
> 	pinctrl-0 = <&pinctrl_enet>;
> 	phy-mode = "rgmii";
> 	phy-reset-gpios = <&gpio3 23 GPIO_ACTIVE_HIGH>;
> 	phy-reset-duration = <100>;
> 	status = "okay";
> };

On reset/poweron I can see clearly some RJ-45 JackMag leds already lite 
due to the fixed hardware configuration.

When Barebox takes control over, those pins are turned off, the device 
tree information is telling me:

> `-- 2188000.ethernet
>    `-- miibus0
>       `-- phy0
>          `-- 0x00000000-0x0000003f ( 64 Bytes): /dev/phy0
>    `-- eth0

but when I try to bring up the ethernet connection here is the message:

> dhcp
> warning: No MAC address set. Using random address ae:05:f1:62:bd:d8
> ksz9031rn_phy_fixup Called
> ksz9031rn_phy_fixup Exit
> dhcp: Network is down

And all leds in the RJ-45 JackMag are still turned off.

I don't know where I can check if something goes wrong. May be a failure 
on board, but at this time this board is the ONLY BOARD I can use.

Can somebody help me out????


Best Regards,
Gianluca
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
