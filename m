Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abUdt-0003P8-1Z
 for barebox@lists.infradead.org; Thu, 03 Mar 2016 14:54:19 +0000
Date: Thu, 3 Mar 2016 15:53:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160303145353.GZ9224@pengutronix.de>
References: <56D831C6.1010101@eurek.it>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56D831C6.1010101@eurek.it>
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
Subject: Re: Ethernet PHY KSZ9031 is not working
To: gianluca <gianlucarenzi@eurek.it>
Cc: barebox@lists.infradead.org

On Thu, Mar 03, 2016 at 01:44:54PM +0100, gianluca wrote:
> Hello list,
> It's me again! ;-)
> 
> Actually I had tested 80% of the board with barebox.
> 
> - USB
> The microUSB is working (as I can use serial Downloader)
> USB Host-A has to be tested, but if I type:
> 
> >>usb
> >USB: scanning bus for devices...
> >Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> >1 USB Device(s) found
> 
> so I can suppose the host controller is working. So I have to check on HOW
> to test the usb-pendisk, but it can be done later on... I have to activate
> the +5V by a gpio, so I have to think where is the best place to do that. At
> the C code level in the device_initcalls()?? Or using the gpio pinmux
> features in the device tree?
> 
> - I2C (i2c0, i2c1, i2c2)
> They all three are working fine.
> 
> - DDR3 Memory Controller
> Memtest is passing all tests. So I can suppose the timings are quite good
> enough to use the Dynamic RAM correctly. I will do a stress test later...
> 
> - SDHC (mmc1, mmc2, mmc3)
> >-- 2194000.usdhc
> >  `-- mmc1
> This port is connected to a SDIO Wifi Module so I will test it with Linux
> 
> >-- 2198000.usdhc
> >  `-- mmc2
> >     `-- 0x00000000-0x1d9bfffff ( 7.4 GiB): /dev/mmc2
> >     `-- 0x00400000-0x00bfffff ( 8 MiB): /dev/mmc2.0
> >     `-- 0x00c00000-0x02bfffff ( 32 MiB): /dev/mmc2.1
> >     `-- 0x02c00000-0x1d9bfffff ( 7.4 GiB): /dev/mmc2.2
> This port has a microSD 8Gb with 3 partitions.
> 
> >-- 219c000.usdhc
> >  `-- mmc3
> >     `-- 0x00000000-0x001fffff ( 2 MiB): /dev/mmc3.boot0
> >     `-- 0x00000000-0x001fffff ( 2 MiB): /dev/mmc3.boot1
> >     `-- 0x00000000-0xe4ffffff ( 3.6 GiB): /dev/mmc3
> This port has an eMMC 4GB unpartioned. 2 boot partitions and a big one for
> boot when it starts from internal boot.
> 
> - GPIOS
> The gpios can be activated/deactivated on demand. As far as I see all gpios
> I had on this board are working as expected.
> 
> - SERIAL
> In this board I have 3 serial ports (only RX/TX connected)
> 
> >`-- 21ec000.serial
> >   `-- serial2
> 
> This is the uart3 as debug console and it works fine.
> 
> >`-- 21e8000.serial
> >   `-- serial1
> 
> >`-- 2000000.aips-bus
> >   `-- 2000000.spba-bus
> >      `-- 2020000.serial
> >         `-- serial0
> 
> How can I test them with barebox? Is it possible to set the baudrate, and
> send a character with the 'echo' command? And as soon as I have the /dev/
> node can I read from it using the 'cat' command?
> 
> - FEC/PHY
> This is the worst part of the game. :-(
> It does not work at all.
> I was looking on other boards with the same phy (KSZ9031 by Micrel) like
> Variscite-imx6, but with no luck.
> 
> In board.c I setup ONLY the fixup for ksz9031 and assert/de-assert the
> nRESET RGMII pin
> 
> >static int ksz9031rn_phy_fixup(struct phy_device *dev)
> >{
> >	pr_info("%s Called\n", __FUNCTION__);
> >	/*
> >	 * min rx data delay, max rx/tx clock delay,
> >	 * min rx/tx control delay
> >	 */
> >	phy_write_mmd_indirect(dev, 4, 2, 0);
> >	phy_write_mmd_indirect(dev, 5, 2, 0);
> >	phy_write_mmd_indirect(dev, 8, 2, 0x03ff);
> >
> >	pr_info("%s Exit\n", __FUNCTION__);
> >	return 0;
> >}

This should rather be done using the "txd0-skew-ps" and similar device
tree properties. Make sure you have the micrel phy driver enabled.
Note the values are board specific.

It might also help to connect the ethernet cable to a 100MBit switch for
testing.

As Holger already noted GPR1[21] must be configured correctly.

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
