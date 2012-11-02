Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp21.mail.ru ([94.100.176.174])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TUEah-0005yQ-Uv
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 10:35:09 +0000
Date: Fri, 2 Nov 2012 14:35:03 +0400
From: Alexander Shiyan <shc_work@mail.ru>
Message-Id: <20121102143503.c0daefb7b5f19478daf95720@mail.ru>
In-Reply-To: <20121102102429.GR29599@game.jcrosoft.org>
References: <1351847836-8221-1-git-send-email-shc_work@mail.ru>
 <20121102102429.GR29599@game.jcrosoft.org>
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
Subject: Re: [PATCH v4 1/3] ARM: Add initial support for CLPS711X architecture
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, 2 Nov 2012 11:24:29 +0100
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

...
> > +static int clocks_init(void)
> > +{
> > +	int osc, ext, pll, cpu, timer;
> > +	u32 tmp;
> > +
> > +	osc = 3686400;
> > +	ext = 13000000;
> > +
> > +	tmp = readl(PLLR) >> 24;
> > +	if (tmp)
> > +		pll = (osc * tmp) / 2;
> > +	else
> > +		pll = 73728000; /* Default value for old CPUs */
> > +
> > +	tmp = readl(SYSFLG2);
> > +	if (tmp & SYSFLG2_CKMODE) {
> > +		cpu = ext;
> > +		bus_clk.rate = cpu;
> > +	} else {
> > +		cpu = pll;
> > +		if (cpu >= 36864000)
> > +			bus_clk.rate = cpu / 2;
> > +		else
> > +			bus_clk.rate = 36864000 / 2;
> > +	}
> > +
> > +	uart_clk.rate = bus_clk.rate / 10;
> this wrong split clocksource driver and clocks init
> 
> the clock driver will have to go to drivers/clocksource
I remember about it, and as soon as clocksource go into master, I will
make the necessary modifications.

-- 
Alexander Shiyan <shc_work@mail.ru>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
