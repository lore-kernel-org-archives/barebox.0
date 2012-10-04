Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp21.mail.ru ([94.100.176.174])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJn8I-0008MK-1a
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 15:14:39 +0000
Date: Thu, 4 Oct 2012 19:14:30 +0400
From: Alexander Shiyan <shc_work@mail.ru>
Message-Id: <20121004191430.e7cc5e94.shc_work@mail.ru>
In-Reply-To: <20121004125229.GK26553@game.jcrosoft.org>
References: <1349354221-28409-1-git-send-email-shc_work@mail.ru>
 <1349354221-28409-3-git-send-email-shc_work@mail.ru>
 <20121004125229.GK26553@game.jcrosoft.org>
Mime-Version: 1.0
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, 4 Oct 2012 14:52:29 +0200
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

> On 16:37 Thu 04 Oct     , Alexander Shiyan wrote:
> > This patch adds new architecture (CLPS711X) into barebox.
> > The core-logic functionality of the device is built around an ARM720T
> > processor running at clock speeds up to 90 MHz and 74 MHz.
> > Patch also adds a generic board support (CLEP7212, Linux ARM ID=91) and
> > serial driver for this CPU.
...
> > +CONFIG_BAUDRATE=57600
> why?? usally 115200
It is impossible rate when CPU is clocked from an external source.
Possible rates is very limited for this platform  and historically
(for this target) default baudrate is 57600. In any case it can be changed
via config option.

...
> > +static int clocks_init(void)
> please split clocksource and clk
I do not know how best to do it because I need access to calculated values of
the frequency in initialization clkdev & clocksource.

> > +void _setup_memcfg(int bank, u32 addr, u32 val)
> > +{
> > +	u32 tmp = readl(addr);
> > +
> > +	switch (bank) {
> > +	case 0:
> > +		tmp &= ~(0xff << 0);
> > +		tmp |= val << 0;
> > +		break;
> > +	case 1:
> > +		tmp &= ~(0xff << 8);
> > +		tmp |= val << 8;
> > +		break;
> > +	case 2:
> > +		tmp &= ~(0xff << 16);
> > +		tmp |= val << 16;
> > +		break;
> > +	case 3:
> > +		tmp &= ~(0xff << 24);
> > +		tmp |= val << 24;
> > +		break;
> no default?
"Default" is not needed, because call is used internally in this unit and it
protected by "switch/case" in the caller.

> > +void __noreturn reset_cpu(unsigned long addr)
> > +{
> > +	for (;;)
> no cpu reset?
This CPU don't have reset register.

-- 
Alexander Shiyan <shc_work@mail.ru>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
