Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bLsuN-0002bP-7W
 for barebox@lists.infradead.org; Sat, 09 Jul 2016 14:07:05 +0000
Date: Sat, 9 Jul 2016 16:04:47 +0200 (CEST)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <20160707064745.GV20657@pengutronix.de>
Message-ID: <alpine.DEB.2.00.1607091529130.31760@blala.de>
References: <alpine.DEB.2.00.1607052317340.25428@blala.de>
 <20160707064745.GV20657@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [RFC / PATCH]: Add support for Kindle3
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org



On Thu, 7 Jul 2016, Sascha Hauer wrote:
> > +
> > +echo -n "Hit any key to stop autoboot: "
> > +timeout -a $global.autoboot_timeout
> > +if [ $? != 0 ]; then
> > +	echo
> > +	echo
> > +	exit
> > +fi
> > +
> > +boot
> > diff --git a/arch/arm/boards/kindle3/env/bin/set_serials b/arch/arm/boards/kindle3/env/bin/set_serials
> 
> Move this to /env/init/set_serials to let it automatically execute.
> 
> > new file mode 100644
> > index 0000000..e7e0881
> > --- /dev/null
> > +++ b/arch/arm/boards/kindle3/env/bin/set_serials
> > @@ -0,0 +1,18 @@
> > +#!/bin/sh
> > +
> > +# 16-byte alphanumeric containing the serial number
> > +# SN is the first 16 bytes before the bootloader
> > +if test -b /dev/disk0.serial; then
> > +	if memcpy -s /dev/disk0.serial -d tmp_serial16 -b 0 0 16; then
> > +		readf tmp_serial16 global.board.serial16
> > +	fi
> > +fi
> > +[ -f tmp_serial16 ] && rm tmp_serial16
> > +
> > +# 16-byte alphanumeric containing the board revision
> > +if test -b /dev/disk0.imx_header; then
> > +	if memcpy -s /dev/disk0.imx_header -d tmp_revision16 -b 2032 0 16; then
> > +		readf tmp_revision16 global.board.revision16
> > +	fi
> > +fi
> > +[ -f tmp_revision16 ] && rm tmp_revision16
> > diff --git a/arch/arm/boards/kindle3/env/boot/mmc_kernel b/arch/arm/boards/kindle3/env/boot/mmc_kernel
> > new file mode 100644
> > index 0000000..c6145b8
> > --- /dev/null
> > +++ b/arch/arm/boards/kindle3/env/boot/mmc_kernel
> > @@ -0,0 +1,7 @@
> > +#!/bin/sh
> > +# Boot the Amazon factory-shipped kernel uimage stored on
> > +# the eMMC at MOVINAND_OFFSET_KERNEL=266240.
> > +
> > +global linux.bootargs.dyn.root="root=/dev/mmcblk0p1 ro"
> > +
> > +bootm -c -a 0x80008000 /dev/disk0.kernel
> > diff --git a/arch/arm/boards/kindle3/env/config b/arch/arm/boards/kindle3/env/config
> > new file mode 100644
> > index 0000000..9b95330
> > --- /dev/null
> > +++ b/arch/arm/boards/kindle3/env/config
> > @@ -0,0 +1,15 @@
> > +#!/bin/sh
> > +
> > +# timeout in seconds before the default boot entry is started
> > +global.autoboot_timeout=3
> > +
> > +# list of boot entries. These are executed in order until one
> > +# succeeds. An entry can be:
> > +# - a filename in /env/boot/
> > +# - a full path to a directory. All files in this directory are
> > +#   treated as boot files and executed in alphabetical order
> > +global.boot.default=mmc_kernel
> > +
> > +global.linux.bootargs.base="mem=256M ip=none lpj=2555904"
> > +global.linux.bootargs.console="console=ttymxc0,115200"
> 
> Create files under /env/nv named after the variables with the content of
> the variables:
> 
> /env/nv/boot.default should contain "mmc_kernel"
> /env/nv/linux.bootargs.base should contain "mem=256M ip=none lpj=2555904"
> 
> and so on.
Thanks for your hints how to use defaultenv-2, this was an easy way 
how to eleminate the redundant passages in my previous env/bin/ subdir.
Cheers, Alexander

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
