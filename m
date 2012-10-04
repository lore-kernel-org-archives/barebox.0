Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo1.mail-out.ovh.net ([178.32.97.206]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJiAc-0006gE-LR
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 09:56:43 +0000
Received: from mail615.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 9330CFF9578
 for <barebox@lists.infradead.org>; Thu,  4 Oct 2012 12:05:46 +0200 (CEST)
Date: Thu, 4 Oct 2012 11:54:15 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121004095415.GI26553@game.jcrosoft.org>
References: <1349334093-9769-1-git-send-email-plagnioj@jcrosoft.com>
 <20121004072432.GG1322@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121004072432.GG1322@pengutronix.de>
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
Subject: Re: [PATCH 1/1] arm: add generic smp twd timer
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:24 Thu 04 Oct     , Sascha Hauer wrote:
> On Thu, Oct 04, 2012 at 09:01:33AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > on Cortex A9 and Cortex A5 we have a generic timer which we can use as
> > clocksource
> > 
> > Limit the timer frequency to < 25Mhz
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/cpu/Kconfig           |    3 ++
> >  arch/arm/cpu/Makefile          |    1 +
> >  arch/arm/cpu/smp_twd.c         |   93 ++++++++++++++++++++++++++++++++++++++++
> >  arch/arm/include/asm/smp_twd.h |   23 ++++++++++
> >  4 files changed, 120 insertions(+)
> >  create mode 100644 arch/arm/cpu/smp_twd.c
> >  create mode 100644 arch/arm/include/asm/smp_twd.h
> > 
> > diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
> > index f55e862..a7a1cdb 100644
> > --- a/arch/arm/cpu/Kconfig
> > +++ b/arch/arm/cpu/Kconfig
> > @@ -94,3 +94,6 @@ config CACHE_L2X0
> >  	bool "Enable L2x0 PrimeCell"
> >  	depends on MMU && ARCH_HAS_L2X0
> >  
> > +config ARM_SMP_TWD
> > +	bool
> > +	depends on CPU_V7
> > diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> > index f7ab276..c5cbdfb 100644
> > --- a/arch/arm/cpu/Makefile
> > +++ b/arch/arm/cpu/Makefile
> > @@ -18,5 +18,6 @@ pbl-$(CONFIG_CPU_32v6) += cache-armv6.o
> >  obj-$(CONFIG_CPU_32v7) += cache-armv7.o
> >  pbl-$(CONFIG_CPU_32v7) += cache-armv7.o
> >  obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o
> > +obj-$(CONFIG_ARM_SMP_TWD) += smp_twd.o
> >  
> >  pbl-y += start-pbl.o
> > diff --git a/arch/arm/cpu/smp_twd.c b/arch/arm/cpu/smp_twd.c
> 
> I was thinking about a drivers/clocksource directory. Maybe this would
> be a good opportunity to start it?
I was thining about it too as I've the same timer on SH and ARM and nomadik
and ux5x0

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
