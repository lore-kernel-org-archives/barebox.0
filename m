Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9BgZ-0004rh-Nu
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 07:05:09 +0000
Date: Fri, 22 Oct 2010 09:05:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101022070504.GD22139@pengutronix.de>
References: <AANLkTinosq5jY41=piCX3JaeFy6Z93gnG1Ym_VRqZ_sJ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTinosq5jY41=piCX3JaeFy6Z93gnG1Ym_VRqZ_sJ@mail.gmail.com>
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
Subject: Re: Beagleboard and barebox problem
To: Victor Rodriguez <vm.rod25@gmail.com>
Cc: barebox@lists.infradead.org

Hi Victor,

On Thu, Oct 21, 2010 at 12:55:16PM -0500, Victor Rodriguez wrote:
> Hey I am new on bare box I have download it from git repo and when I
> make the barebox.bin with omap3530_beagle_defconfig this is the output
> 
> Texas Instruments X-Loader 1.4.2 (Feb 19 2009 - 12:01:24)
> Reading boot sector
> Loading u-boot.bin from mmc
> 
> 
> barebox 2010.10.0-00086-ga14c018 (Oct 21 2010 - 12:19:10)
> 
> Board: Texas Instrument's Beagle
> I2C probe
> i2c-omap@i2c-omap0: bus 0 rev3.12 at 100 kHz
> ehci@ehci0: USB EHCI 1.00
> NAND device: Manufacturer ID: 0x2c, Chip ID: 0xba (Micron NAND 256MiB
> 1,8V 16-bit)
> Malloc space: 0x80c00000 -> 0x81000000 (size  4 MB)
> Stack space : 0x80bf8000 -> 0x80c00000 (size 32 kB)
> Open /dev/env0 No such file or directory
> running /env/bin/init...
> not found
> barebox> ls
> .      ..     dev
> barebox> ls /dev/
> zero         mem          ram0         twl4030      nand0
> nand_oob0

Then it's up and running, congratulations ;)

What the beagle board is missing is currently a place to store the
environment. You could add an environment to nand by adding something
like this to the board setup function:

	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED,"env_raw");
	dev_add_bb_dev("env_raw", "env0");

(this adds a partition at offset 0x40000 and size 0x20000 to nand, you
probably have to adjust the offset to not overwrite the X-loader)

Another possibility would be to add mmc support for omap and put the
environment there. We recently gained mmc support for barebox, so all
that's missing is an omap driver. The mmc support is still close to
U-Boot, so the driver won't need many changes.

> 
> 
> And when I compile with omap3530_beagle_per_uart_defconfig

The per_uart_defconfig is more a X-loader replacement. You can use it to
bootstrap from the serial port. For your case the other config is the
correct one.

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
