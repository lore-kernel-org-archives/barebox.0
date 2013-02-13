Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5cWZ-0006iQ-Ck
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 13:37:24 +0000
Received: from mail409.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A0ABF100C1F1
 for <barebox@lists.infradead.org>; Wed, 13 Feb 2013 14:47:53 +0100 (CET)
Date: Wed, 13 Feb 2013 14:36:12 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130213133612.GN19322@game.jcrosoft.org>
References: <1360755704-24105-1-git-send-email-shc_work@mail.ru>
 <1360755704-24105-3-git-send-email-shc_work@mail.ru>
 <20130213120224.GM19322@game.jcrosoft.org>
 <1360758205.278703573@f188.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360758205.278703573@f188.mail.ru>
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
Subject: Re: [SPAM] Re[2]: [PATCH v2 3/9] ARM: clps711x: Adds config option
 for CPU PLL multiplier
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 16:23 Wed 13 Feb     , Alexander Shiyan wrote:
> ...
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
> > >  }
> > > diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
> > > index f0adeda..d2873b4 100644
> > > --- a/arch/arm/mach-clps711x/Kconfig
> > > +++ b/arch/arm/mach-clps711x/Kconfig
> > > @@ -10,6 +10,19 @@ config MACH_CLEP7212
> > >  
> > >  endchoice
> > >  
> > > +menu "CLPS711X specific settings"
> > > +
> > > +config CLPS711X_CPU_PLL_MULT
> > > +	int "CPU PLL multiplier (20-50)"
> > > +	range 20 50
> > > +	default "40"
> > > +	help
> > > +	  Define CPU PLL multiplier. PLL is calculated by formula:
> > > +	    PLL Frequency = (PLL Multiplier / 2) * 3686400 Hz
> > > +	  Default value is 40, for achieve 73 MHz.
> > > +
> > Nack NO KConfig for such sensitve value
> > 
> > if it's soc detect it I do not have the datasheet but I'm sure you can
> 
> There are two possible clock sources: 3.6864 MHz crystal or 13 MHz
> clock. Only source can be detected. When crystal is chosen, CPU starts at
> low speed, so we should setup PLL register to increase speed.
> Detect more is impossible.
> 
> Datasheet, if you interest, here www.cirrus.com/en/pubs/manual/ep73xx_um-f.pdf
> But I am doubt if you find more.
so do it in C anyway if someone want diferent tehy modify the C it's too much
dangerous otherwise

Best Regards,
J.
> 
> Thanks!
> 
> ---

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
