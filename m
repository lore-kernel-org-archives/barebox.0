Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIn1T-0006ab-E9
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 20:23:14 +0000
Date: Fri, 13 Apr 2012 22:23:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120413202303.GT3852@pengutronix.de>
References: <F9C551623D2CBB4C9488801D14F864C614B2F7@ex-mb1.corp.adtran.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <F9C551623D2CBB4C9488801D14F864C614B2F7@ex-mb1.corp.adtran.com>
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
Subject: Re: I want to use Barebox
To: ANDY KENNEDY <ANDY.KENNEDY@adtran.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, Apr 13, 2012 at 03:37:04PM +0000, ANDY KENNEDY wrote:
> I first saw Barebox about a year ago, did a little poking around and
> realized that this seems like the way to go for booting an embedded
> system.  I am, however, meeting opposition to implementing Barebox in
> our current system.  I need some help on questions I cannot answer.  If
> you could, please take the time to answer the following few issues.
> 
> 1)  I have a concern that barebox is not mainstream enough yet.

Well by using it you could make it a bit more mainstream ;)

> 
> 2)  I have a feeling we will always be porting everyone's bsp (that
>     already has a working u-boot) to barebox.

I'd say that usually barebox better abstracts from the hardware, so
different boards usually feel much more the same. With U-Boot the usage
often differs across different boards. Having a common environment
becomes a real advantage when you have many different boards.

> 3)  I also don't really see the real advantage over standard u-boot
>     (what's the 'killer' application?).

For me the basic killing feature is that barebox has filesystem support
which means that you can mount filesystems and only have one
'ls' (cp, rm,..) command to access all files and devices. U-Boot instead
has a set of these commands for each filesystem and device:

  fatload <interface> <dev[:part]>  <addr> <filename> [bytes]
  nand read - addr off|partition size
  mmc read addr blk# cnt
  eeprom read  devaddr addr off cnt

All these commands have a different syntax and are non obvious to use.
Also note that the target of all the commands above is a chunk of plain
SDRAM. This means that in case of a system update you always have to
copy the update image first from the device to SDRAM and then from SDRAM
to the target device. To do this you have to know where SDRAM is (varies
across different boards) and also the size of the update image is
limited by the amount of free SDRAM you have. With barebox all this goes
down to for example cp /mnt/usb0-fat/rootimage /dev/nor0.root.

There are other things aswell:

- barebox has a sane configuration system (U-Boot is configured using
  several thousand CFG_* defines)
- barebox can always start itself as a second stage loader (with U-Boot
  you have to compile a special ramboot image which then again can't
  start first stage)
- barebox can start zImages, raw Linux images, uImages, all using the
  same command (U-Boot is limited to uImages)
- barebox has command line options, U-Boot only supports positional
  arguments
- barebox has a driver model which means that you can register devices
  which automatically find the correct driver.
- you can put your environment into files as opposed to 'executable
  environment variables' in U-Boot

> 
> 
> From my point of view, the answer to 3 is clear:  It uses the Linux
> kernel as part of the boot, it can house an initrd so that extending
> the utilities of the bootloader will be easier to handle, etc.  If this
> is in error, please correct me.
> 
> As for 1 & 2, these I just don't know about.  I'm guessing that anything
> supported in either the Linux kernel or already in u-boot should be
> fairly easy to port into Barebox.  Here, however, I have to define for
> Mgt clearly what does "fairly" mean.

You're right, U-Boot drivers are usually simple to port over to barebox.
Many subsystems like mmc, network and USB are derived from U-Boot,
others like gpio or mtd are from the kernel. Porting these over usually
means some refactoring. For example U-Boot has no device/driver model,
so you would have to add registration and probe functions. The
complicated thing about drivers (at least in the bootloader world) is
getting the hardware accesses right, and these can be copied from the
original driver.

I hope this helps with your decision

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
