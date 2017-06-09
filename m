Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dJEPO-0006Y0-So
 for barebox@lists.infradead.org; Fri, 09 Jun 2017 07:32:40 +0000
Date: Fri, 9 Jun 2017 09:32:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170609073216.qzamyscudr4gu333@pengutronix.de>
References: <5caded00-8ec7-f66e-0922-11d32f719081@eurekelettronica.it>
 <20170609061505.3tnirp55o5rfpbra@pengutronix.de>
 <8b1cafb3-8e87-8ce8-e4e1-42d28f82d1b0@eurekelettronica.it>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8b1cafb3-8e87-8ce8-e4e1-42d28f82d1b0@eurekelettronica.it>
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

On Fri, Jun 09, 2017 at 09:25:56AM +0200, gianluca wrote:
> > > > 		
> > > > imx-esdhc 2194000.usdhc: registered as 2194000.usdhc
> > > > imx-esdhc 2198000.usdhc: registered as 2198000.usdhc
> > > > imx-esdhc 219c000.usdhc: registered as 219c000.usdhc
> > > > imx-ipuv3 2400000.ipu: IPUv3H probed
> > > > netconsole: registered as netconsole-1
> > > > malloc space: 0x2ff7b920 -> 0x4fef723f (size 511.5 MiB)
> > > > environment load /dev/env0: No such file or directory
> > > > Maybe you have to create the partition.
> > > > running /env/bin/init...
> > > > Running boot from uSD/MMC or USB...
> > > > mmc2: detected SD card version 2.0
> > > > mmc2: registered mmc2
> > > > ext4 ext40: EXT2 rev 1, inode_size 128
> > 
> > mmc2 is detected and registered because you are booting from it, but
> > mmc3 is not. Try 'detect mmc3' or 'detect -a' on the command line.
> > 
> 
> It was missing a mmc3.probe=1 in the init scripts. Now both are recognized
> correctly.

Try 'mount mmc3.0' without any further arguments. No need to probe
manually then.

Also my usual three words: Use bootloader spec. No need to write any
init or boot scripts then. barebox will just work without any further
configuration.

> 
> Now I am trying to extend the I2C Lines outside the board for a oscilloscope
> and/or a Saleae Logic Bus Analyzer. As soon as I find the solution or not I
> will keep you informed.
> 
> Anyway in the config there is both GPIO BASED I2C DRIVER and Platform iMX
> Driver. I tried to disable the GPIO Based but it does not work.

The GPIO I2C driver is only used when it's there's a GPIO I2C device
registered in the device tree.

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
