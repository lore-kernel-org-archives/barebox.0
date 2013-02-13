Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f188.mail.ru ([217.69.129.200])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5bN4-0003DY-Ju
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 12:23:32 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 13 Feb 2013 16:23:25 +0400
Message-ID: <1360758205.278703573@f188.mail.ru>
In-Reply-To: <20130213120224.GM19322@game.jcrosoft.org>
References: <1360755704-24105-1-git-send-email-shc_work@mail.ru>
 <1360755704-24105-3-git-send-email-shc_work@mail.ru>
 <20130213120224.GM19322@game.jcrosoft.org>
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
To: =?UTF-8?B?SmVhbi1DaHJpc3RvcGhlIFBMQUdOSU9MLVZJTExBUkQ=?= <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

...
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
> >  }
> > diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
> > index f0adeda..d2873b4 100644
> > --- a/arch/arm/mach-clps711x/Kconfig
> > +++ b/arch/arm/mach-clps711x/Kconfig
> > @@ -10,6 +10,19 @@ config MACH_CLEP7212
> >  
> >  endchoice
> >  
> > +menu "CLPS711X specific settings"
> > +
> > +config CLPS711X_CPU_PLL_MULT
> > +	int "CPU PLL multiplier (20-50)"
> > +	range 20 50
> > +	default "40"
> > +	help
> > +	  Define CPU PLL multiplier. PLL is calculated by formula:
> > +	    PLL Frequency = (PLL Multiplier / 2) * 3686400 Hz
> > +	  Default value is 40, for achieve 73 MHz.
> > +
> Nack NO KConfig for such sensitve value
> 
> if it's soc detect it I do not have the datasheet but I'm sure you can

There are two possible clock sources: 3.6864 MHz crystal or 13 MHz
clock. Only source can be detected. When crystal is chosen, CPU starts at
low speed, so we should setup PLL register to increase speed.
Detect more is impossible.

Datasheet, if you interest, here www.cirrus.com/en/pubs/manual/ep73xx_um-f.pdf
But I am doubt if you find more.

Thanks!

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
