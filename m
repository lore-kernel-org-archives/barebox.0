Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzjLN-00037x-Cd
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 07:41:30 +0000
Date: Mon, 28 Jan 2013 08:41:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130128074126.GI1906@pengutronix.de>
References: <1359283623-1782-1-git-send-email-s.hauer@pengutronix.de>
 <1359283623-1782-17-git-send-email-s.hauer@pengutronix.de>
 <1359304335.39487654@f324.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359304335.39487654@f324.mail.ru>
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
Subject: Re: [PATCH 16/34] ARM clep7212: switch to barebox_arm_entry
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Jan 27, 2013 at 08:32:15PM +0400, Alexander Shiyan wrote:
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/Kconfig                    |    2 ++
> >  arch/arm/boards/clep7212/lowlevel.c |    3 ++-
> >  arch/arm/mach-clps711x/Kconfig      |    2 --
> >  3 files changed, 4 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index 3197f8b..6ed9bf0 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -44,6 +44,8 @@ config ARCH_CLPS711X
> >  	bool "Cirrus Logic EP711x/EP721x/EP731x"
> >  	select CLKDEV_LOOKUP
> >  	select CPU_32v4T
> > +	select MACH_HAS_LOWLEVEL_INIT
> > +	select MACH_DO_LOWLEVEL_INIT
> >  
> >  config ARCH_EP93XX
> >  	bool "Cirrus Logic EP93xx"
> > diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
> > index 9b7e241..7465a42 100644
> > --- a/arch/arm/boards/clep7212/lowlevel.c
> > +++ b/arch/arm/boards/clep7212/lowlevel.c
> > @@ -9,6 +9,7 @@
> >  
> >  #include <common.h>
> >  #include <init.h>
> > +#include <sizes.h>
> >  
> >  #include <asm/io.h>
> >  #include <asm/barebox-arm.h>
> > @@ -52,5 +53,5 @@ void __naked __bare_init reset(void)
> >  	writel(SDCONF_CASLAT_3 | SDCONF_SIZE_256 | SDCONF_WIDTH_16 |
> >  	       SDCONF_CLKCTL | SDCONF_ACTIVE, SDCONF);
> >  
> > -	board_init_lowlevel_return();
> > +	barebox_arm_entry(SDRAM0_BASE, SZ_32M, 0);
> ...
> Since this code placed in pbl, can we define a minimal size at this point?
> Some targets may have a little than 32M.

I'm not sure what you mean. First of all this only ends up in the pbl
when it's enabled. For the clep7212 it's not enabled, so this code will
go into the regular binary.
You can call barebox_arm_entry with any sdram size you like. Ideally
this would be the sdram size you actually have, but if you support a
board with less memory you can pass the minimum amount of memory.
I don't know if this already answers your question; could you elaborate
more if not?

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
