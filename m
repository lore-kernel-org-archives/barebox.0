Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RroqA-0004uz-KM
 for barebox@lists.infradead.org; Mon, 30 Jan 2012 10:52:03 +0000
Date: Mon, 30 Jan 2012 11:51:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120130105150.GC1990@pengutronix.de>
References: <CAAfyv35AujbBzsbYfEXx7fXm7NmdEg922Fc+Y3kSNqj4QtcJUw@mail.gmail.com>
 <20120127104228.GZ5446@pengutronix.de>
 <CAAfyv37M__g9ukDThd6Uaw++R+d+_-yHQcSBczAMfgrhi91ncg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAfyv37M__g9ukDThd6Uaw++R+d+_-yHQcSBczAMfgrhi91ncg@mail.gmail.com>
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
Subject: Re: Pandaboard kernel 3.2.1 loaded from barebox
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jan 29, 2012 at 02:16:00PM +0100, Belisko Marek wrote:
> Hi,
> 
> On Fri, Jan 27, 2012 at 11:42 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Fri, Jan 27, 2012 at 08:35:02AM +0100, Belisko Marek wrote:
> >> Hi,
> >>
> >> I'm trying execute (stable 3.2.1 kernel) zImage for pandaboard but
> >> after command bootz boot/zImage it just stuck:
> >> barebox@Texas Instrument's Panda:/ bootz boot/zImage
> >> loaded zImage from boot/zImage with size 3314936
> >> commandline: console=ttyO2,115200
> >> arch_number: 2791
> >> Uncompressing Linux... done, booting the kernel.
> >>
> >> Same with loadm uImage.
> >> I have DEBUG_LL enabled in kernel but no message so far after that.
> >>
> >> Maybe this is not barebox bug just want to be sure ;).
> >> It's different platform but it's not related?
> >> http://lists.infradead.org/pipermail/barebox/2012-January/005923.html
> >>
> >> version: barebox 2012.01.
> >
> > Same here. enable earlyprintk in the kernel and pass earlyprintk on the
> > commandline, then you'll get the following. I don't know what's
> > happening here. It could be that the kernel makes some assumptions how
> > some hardware is initialized.
> Thanks for hint. I've check beagle board and beagle board uses
> gpmc_generic_init(0x10)
> Following patch fix booting on Pandaboard (not sure if 0x00 is OK but
> u-boot use the same):
> 
> diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
> index be3ad77..045b5c5 100644
> --- a/arch/arm/boards/panda/board.c
> +++ b/arch/arm/boards/panda/board.c
> @@ -17,6 +17,7 @@
>  #include <linux/err.h>
>  #include <sizes.h>
>  #include <asm/mmu.h>
> +#include <mach/gpmc.h>
>  #include <mach/gpio.h>
>  #include <environment.h>
>  #include <mach/xload.h>
> @@ -132,7 +133,9 @@ static int panda_devices_init(void)
>                 /* enable clocks */
>                 sr32(OMAP44XX_SCRM_ALTCLKSRC, 2, 2, 0x3);
>         }
> -
> +#ifdef CONFIG_OMAP_GPMC
> +       gpmc_generic_init(0x00);
> +#endif

Building a barebox which can't start the kernel does not make much
sense, so OMAP_GPMC should not be user visible. We should remove the
prompt for OMAP_GPMC and also remove all ifdefs around gpmc_generic_init()
in the board files.

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
