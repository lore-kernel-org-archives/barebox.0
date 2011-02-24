Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PsdgI-00049p-75
	for barebox@lists.infradead.org; Thu, 24 Feb 2011 16:04:43 +0000
Date: Thu, 24 Feb 2011 17:04:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110224160440.GQ7381@pengutronix.de>
References: <4D665867.4010404@telemotive.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4D665867.4010404@telemotive.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Install barebox on target
To: Thomas Mayer <thomas.mayer@telemotive.de>
Cc: barebox@lists.infradead.org

Hi Thomas,

On Thu, Feb 24, 2011 at 02:08:55PM +0100, Thomas Mayer wrote:
> Hi,
> 
> i'm working on a project with a Freescale i.MX35 3-Stack board and try
> to use barebox as bootloader.
> My problem is that i don't know how to install barebox to NAND memory or
> better directly to a sd-card.
> Is there any documentation about this really basic stuff?

According to the schematics the i.MX35 3-stack is without modifying it
only able to boot in external boot mode, that is nand or nor flash.
First step should be starting barebox as a second stage loader from the
existing bootloader. For this the defconfig for the 3stack should
be suitable. If you are using redboot you can use the following (replace
0x100000 with some valid sdram address):

load -r -b 0x100000 barebox.bin
run 0x100000

The same for u-Boot:

tftp 0x80100000 barebox.bin
go 0x80100000

If this works you should check if networking works:

dhcp; tftp barebox.bin /dev/ram0

or, if you use the smc9117 on the debug board:

ethact eth1; dhcp; tftp barebox.bin /dev/ram0

you can then flash barebox to either nand or nor flash:

erase /dev/nor0.barebox; tftp barebox.bin /dev/nor0.barebox

or:

erase /dev/nand0.barebox.bb; tftp barebox.bin /dev/nand0.barebox.bb

I suggest that you first try to flash barebox to the flash that does
not contain your original bootloader (if you haven't got jtag)

For getting a barebox suitable for starting from NAND you should enable
CONFIG_NAND_IMX_BOOT in your config.

The 3stack should be able to work in internal boot mode if TP41/42 on
the personality board are adjusted.

You also might want to apply the boot mode cleanup patch I just posted
which makes it a bit clearer what boot modes are actually supported by
barebox.

Hope that helps,

 Sascha

> 
> regards
> Thomas

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
