Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UtvjP-00019m-Dm
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 08:14:36 +0000
Date: Tue, 2 Jul 2013 10:14:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130702081413.GE516@pengutronix.de>
References: <20130701181234.15305e43@e6520eb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130701181234.15305e43@e6520eb>
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
Subject: Re: iMX nand BBT problem
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

HI Eric,

On Mon, Jul 01, 2013 at 06:12:34PM +0200, Eric B=E9nard wrote:
> Hi,
> =

> when upgrading from 2013.05.1 to 2013.06 on an i.MX35 I get the
> following log :
> =

> - initial log :
> barebox 2013.05.1-00001-ga8e8785 #25 Mon Jul 1 17:12:14 CEST 2013
> Board: Eukrea CPUIMX35
> detected i.MX35 revision 2.1
> netconsole: registered as cs1
> nand: Manufacturer ID: 0x2c, Chip ID: 0xda (Micron NAND 256MiB 3,3V
> 8-bit), page size: 2048, OOB size: 64
> mdio_bus: miibus0: probed
> imx-ipu-fb imx-ipu-fb: i.MX Framebuffer driver
> imx-esdhc imx-esdhc0: registered as imx-esdhc0
> ehci ehci0: USB EHCI 1.00
> malloc space: 0x87700000 -> 0x87efffff (size 8 MiB)
> running /env/bin/init...
> =

> --> upgrade barebox :
> barebox 2013.06.0-00001-gf355cf4 #26 Mon Jul 1 17:57:52 CEST 2013
> Board: Eukrea CPUIMX35
> detected i.MX35 revision 2.1
> netconsole: registered as cs1
> nand: Manufacturer ID: 0x2c, Chip ID: 0xda (Micron NAND 256MiB 3,3V
> 8-bit), page size: 2048, OOB size: 64 =

> nand: Bad block table not found for chip 0
> nand: Bad block table not found for chip 0 =

> imx_nand imx_nand: no BBT found. create one using the imx_nand_bbm
> command
> mdio_bus: miibus0: probed
> imx-ipu-fb imx-ipu-fb: i.MX Framebuffer driver
> imx-esdhc imx-esdhc0: registered as imx-esdhc0
> ehci ehci0: USB EHCI 1.00
> malloc space: 0x87700000 -> 0x87efffff (size 8 MiB)
> envfs: wrong magic on /dev/env0
> no valid environment found on /dev/env0. Using default environment
> running /env/bin/init...
> no MAC address set for eth0. please enter the one found on your board:
> 00:12:34:56:78:90 saving environment
> =

> Once I reset the board I can see that the env was not saved and I get
> prompted again for the MAC address.
> =

> Any idea of what can be wrong there ?
> =

> This board is configured in external boot from a 2k NAND (and was
> already using flash BBT), and the kernel and rootfs still run without
> any visible problem.

Are you sure this happens between 2013.05.1 and 2013.06.0? The only
changes in the mtd stuff are:

ae6f751 nand_base: sync flash detection functions with linux 3.9's code
c8af035 Merge branch 'for-next/misc'
7c15fd1 NAND: imx: Fix memory leak
d8ee54f mtd: Nand: Use dev_add_param_bool for erasebad parameter
7c6c61f treewide: Use dev_add_param_int_ro where possible
973176d mtd: update NAND manufacturer names from the kernel
4c2bdc8 nand_base: detect more ONFI flash

So the only patches which seem to change something are from you ;)

Does the 'md' command still work and shows meaningful content in the
NAND?

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
