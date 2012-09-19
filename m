Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TEGkr-0005kD-6P
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 09:39:38 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 62436FF9D17
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2012 11:45:21 +0200 (CEST)
Date: Wed, 19 Sep 2012 11:37:01 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120919093701.GW25990@game.jcrosoft.org>
References: <n> <201209190942.38473.jbe@pengutronix.de>
 <20120919081432.GV25990@game.jcrosoft.org>
 <201209191054.55390.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201209191054.55390.jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/2] Add bcm2835/Raspberry-Pi support
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:54 Wed 19 Sep     , Juergen Beisert wrote:
> Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 09:42 Wed 19 Sep     , Juergen Beisert wrote:
> > > Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > [...]
> > > >
> > > > > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > > > > index a54ad03..f8eb1b4 100644
> > > > > --- a/arch/arm/Kconfig
> > > > > +++ b/arch/arm/Kconfig
> > > > > @@ -92,6 +92,11 @@ config ARCH_TEGRA
> > > > >  	select CPU_ARM926T
> > > > >  	select HAS_DEBUG_LL
> > > > >
> > > > > +config ARCH_BCM2835
> > > > > +	bool "Broadcom BCM2835 boards"
> > > > > +	select GENERIC_GPIO
> > > > > +	select CPU_ARM1176
> > > >
> > > > please keep in alphabetic order
> > >
> > > What a useless rule...
> >
> > no when you search for something you expect b to be after a not after z
> 
> In Kconfig and Makefiles? Sorry. How often do your search for something in 
> these kind of files?
very
> 
> And how often do you search for something in the C-sources?
more often
> 
> So, what is important and what is useless?
both

I did spend time to cleanup it in the past so if you think my work in useless
I've nothing to said

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
