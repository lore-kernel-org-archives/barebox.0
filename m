Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5gKE-00075i-AZ
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 17:40:55 +0000
Date: Wed, 13 Feb 2013 18:40:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130213174051.GH1906@pengutronix.de>
References: <1360755704-24105-1-git-send-email-shc_work@mail.ru>
 <1360755704-24105-3-git-send-email-shc_work@mail.ru>
 <20130213170652.GD1906@pengutronix.de>
 <1360776009.524936687@f310.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360776009.524936687@f310.mail.ru>
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
Subject: Re: [PATCH v2 3/9] ARM: clps711x: Adds config option for CPU PLL
 multiplier
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, Feb 13, 2013 at 09:20:09PM +0400, Alexander Shiyan wrote:
> > > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > > ---
> > >  arch/arm/boards/clep7212/lowlevel.c            |    6 +++++-
> > >  arch/arm/mach-clps711x/Kconfig                 |   13 +++++++++++++
> > >  arch/arm/mach-clps711x/include/mach/clps711x.h |    2 +-
> > >  arch/arm/mach-clps711x/lowlevel.c              |    7 +++++--
> > >  4 files changed, 24 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
> > > index b7d6d1d..fcf8285 100644
> > > --- a/arch/arm/boards/clep7212/lowlevel.c
> > > +++ b/arch/arm/boards/clep7212/lowlevel.c
> > > @@ -14,9 +14,13 @@
> > >  
> > >  #include <mach/clps711x.h>
> > >  
> > > +#if (CONFIG_CLPS711X_CPU_PLL_MULT < 20) || (CONFIG_CLPS711X_CPU_PLL_MULT > 50)
> > > +# error "CPU PLL multiplier out of range"
> > > +#endif
> > > +
> > >  void __naked __bare_init barebox_arm_reset_vector(void)
> > >  {
> > >  	arm_cpu_lowlevel_init();
> > >  
> > > -	clps711x_barebox_entry();
> > > +	clps711x_barebox_entry(CONFIG_CLPS711X_CPU_PLL_MULT);
> > 
> > I don't quite understand why you want to have this configurable. I mean
> > this is a single board only, why not simply run it with the maximum
> > allowed frequency? Or does this board come with multiple SoCs for which
> > different maximum values exist?
> 
> Yes. There are 2 versions of the chip. One with a maximum operating
> frequency of 74 MHz, second with 90 MHz. The only difference is on the CPU label.
> Which version is used, it is impossible to know in runtime.
> You can simply reject this patch [3/9], all other should not depend on this one.
> Later I'll try to make another different version.

Ok, thanks for explaining. It's really discouraged to put such things in
Kconfig, but in this case it seems acceptable: There's no way to detect
it during runtime *and* it varies across the same board type. So I
applied this series.

One option out of this might be that you could always startup with 74MHz
and add a command to switch to 90MHz. You could put this into the
environment on boards that you know work with 90MHz. Aynway, I don't
want to force you to do this on an Architecture you're probably
currently the only user of.

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
