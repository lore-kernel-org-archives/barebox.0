Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo4.mail-out.ovh.net ([188.165.33.112]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJowt-0007Dv-Hg
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 17:11:00 +0000
Received: from mail247.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 0351B105014A
 for <barebox@lists.infradead.org>; Thu,  4 Oct 2012 19:17:14 +0200 (CEST)
Date: Thu, 4 Oct 2012 19:08:32 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121004170832.GN26553@game.jcrosoft.org>
References: <1349354221-28409-1-git-send-email-shc_work@mail.ru>
 <1349354221-28409-3-git-send-email-shc_work@mail.ru>
 <20121004125229.GK26553@game.jcrosoft.org>
 <20121004191430.e7cc5e94.shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121004191430.e7cc5e94.shc_work@mail.ru>
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
Subject: Re: [PATCH 3/3] ARM: Add CLPS711X architecture
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 19:14 Thu 04 Oct     , Alexander Shiyan wrote:
> On Thu, 4 Oct 2012 14:52:29 +0200
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> 
> > On 16:37 Thu 04 Oct     , Alexander Shiyan wrote:
> > > This patch adds new architecture (CLPS711X) into barebox.
> > > The core-logic functionality of the device is built around an ARM720T
> > > processor running at clock speeds up to 90 MHz and 74 MHz.
> > > Patch also adds a generic board support (CLEP7212, Linux ARM ID=91) and
> > > serial driver for this CPU.
> ...
> > > +CONFIG_BAUDRATE=57600
> > why?? usally 115200
> It is impossible rate when CPU is clocked from an external source.
> Possible rates is very limited for this platform  and historically
> (for this target) default baudrate is 57600. In any case it can be changed
> via config option.
so put a commet about it
> 
> ...
> > > +static int clocks_init(void)
> > please split clocksource and clk
> I do not know how best to do it because I need access to calculated values of
> the frequency in initialization clkdev & clocksource.
see my patch series I've send about clocksource

the clocksource driver  request it's clock and get it's rate
the clock init is done speratly
> 
> > > +void _setup_memcfg(int bank, u32 addr, u32 val)
> > > +{
> > > +	u32 tmp = readl(addr);
> > > +
> > > +	switch (bank) {
> > > +	case 0:
> > > +		tmp &= ~(0xff << 0);
> > > +		tmp |= val << 0;
> > > +		break;
> > > +	case 1:
> > > +		tmp &= ~(0xff << 8);
> > > +		tmp |= val << 8;
> > > +		break;
> > > +	case 2:
> > > +		tmp &= ~(0xff << 16);
> > > +		tmp |= val << 16;
> > > +		break;
> > > +	case 3:
> > > +		tmp &= ~(0xff << 24);
> > > +		tmp |= val << 24;
> > > +		break;
> > no default?
> "Default" is not needed, because call is used internally in this unit and it
> protected by "switch/case" in the caller.
> 
> > > +void __noreturn reset_cpu(unsigned long addr)
> > > +{
> > > +	for (;;)
> > no cpu reset?
> This CPU don't have reset register.
al lot of CPU does not ahve one they have instead a watchdog that can reset
the SoC I never see a SoC that can not been reset by soft

or can not been reset by a fault

Best Regards,
J.
> 
> -- 
> Alexander Shiyan <shc_work@mail.ru>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
