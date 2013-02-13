Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f310.mail.ru ([128.140.169.174])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5g0E-0000da-C9
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 17:20:15 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 13 Feb 2013 21:20:09 +0400
Message-ID: <1360776009.524936687@f310.mail.ru>
In-Reply-To: <20130213170652.GD1906@pengutronix.de>
References: <1360755704-24105-1-git-send-email-shc_work@mail.ru>
 <1360755704-24105-3-git-send-email-shc_work@mail.ru>
 <20130213170652.GD1906@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCB2MiAzLzldIEFSTTogY2xwczcxMXg6IEFkZHMgY29u?=
 =?UTF-8?B?ZmlnIG9wdGlvbiBmb3IgQ1BVIFBMTCBtdWx0aXBsaWVy?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  arch/arm/boards/clep7212/lowlevel.c            |    6 +++++-
> >  arch/arm/mach-clps711x/Kconfig                 |   13 +++++++++++++
> >  arch/arm/mach-clps711x/include/mach/clps711x.h |    2 +-
> >  arch/arm/mach-clps711x/lowlevel.c              |    7 +++++--
> >  4 files changed, 24 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
> > index b7d6d1d..fcf8285 100644
> > --- a/arch/arm/boards/clep7212/lowlevel.c
> > +++ b/arch/arm/boards/clep7212/lowlevel.c
> > @@ -14,9 +14,13 @@
> >  
> >  #include <mach/clps711x.h>
> >  
> > +#if (CONFIG_CLPS711X_CPU_PLL_MULT < 20) || (CONFIG_CLPS711X_CPU_PLL_MULT > 50)
> > +# error "CPU PLL multiplier out of range"
> > +#endif
> > +
> >  void __naked __bare_init barebox_arm_reset_vector(void)
> >  {
> >  	arm_cpu_lowlevel_init();
> >  
> > -	clps711x_barebox_entry();
> > +	clps711x_barebox_entry(CONFIG_CLPS711X_CPU_PLL_MULT);
> 
> I don't quite understand why you want to have this configurable. I mean
> this is a single board only, why not simply run it with the maximum
> allowed frequency? Or does this board come with multiple SoCs for which
> different maximum values exist?

Yes. There are 2 versions of the chip. One with a maximum operating
frequency of 74 MHz, second with 90 MHz. The only difference is on the CPU label.
Which version is used, it is impossible to know in runtime.
You can simply reject this patch [3/9], all other should not depend on this one.
Later I'll try to make another different version.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
