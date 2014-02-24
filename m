Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WHqt2-00033J-Vn
 for barebox@lists.infradead.org; Mon, 24 Feb 2014 08:27:41 +0000
Date: Mon, 24 Feb 2014 09:27:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140224082718.GQ17250@pengutronix.de>
References: <20140221172209.41962f85@e6520eb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140221172209.41962f85@e6520eb>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: i.MX25 : Ethernet link detection blocking console
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Fri, Feb 21, 2014 at 05:22:09PM +0100, Eric B=E9nard wrote:
> Hi,
> =

> while testing 2014.02 on eukrea-cpuimx25 board, I meet this problem :
> - I get "Hit any key to stop autoboot:  1"
> - whatever I press on the keyboard, the autoboot continues
> - if I send characters through the serial port before barebox reach
>   the autoboot line, then I'll get the command line but only when the
>   link detection will have finished (check log below).
> =

> Any idea what could be wrong here ?

I have no idea. Does this happen with the defconfig currently in the
repository?

The only thing I could think of is that some kind of automount triggers,
but the cpuimx25 doesn't use automounts. Another possibility might be
the network console, but this should normally not even start without
being configured. Could you disable netconsole?

Sascha

> =

> Thanks
> Eric
> =

> barebox 2014.02.0-dirty #5 Fri Feb 21 16:52:37 CET 2014
> =

> =

> Board: Eukrea CPUIMX25
> netconsole: registered as cs1
> mdio_bus: miibus0: probed
> nand: ONFI param page 0 valid
> nand: ONFI flash detected
> nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0x38 (Micron
> MT29F8G08ABABAWP), 1024MiB, page size: 4096, OOB size: 224
> Bad block table found at page 262016, version 0x01
> Bad block table found at page 261888, version 0x01
> imxfb imxfb: i.MX Framebuffer driver
> imx-esdhc imx-esdhc0: registered as imx-esdhc0
> ehci ehci0: USB EHCI 1.00
> malloc space: 0x83700000 -> 0x83efffff (size 8 MiB)
> running /env/bin/init...
> =

> Hit any key to stop autoboot:  1100Mbps full duplex link detected
>                                 ^ it waits here until the link is
>                                 detected then I get the prompt (only if
>                                 the key was pressed before reaching the
>                                 autoboot line)
> =

> barebox@Eukrea CPUIMX25:/ <INTERRUPT>
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
