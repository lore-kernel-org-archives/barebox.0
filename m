Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo1.mail-out.ovh.net ([178.32.127.22]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJkDd-00028N-Fk
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 12:07:58 +0000
Received: from mail615.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 4F49CFF924C
 for <barebox@lists.infradead.org>; Thu,  4 Oct 2012 14:17:02 +0200 (CEST)
Date: Thu, 4 Oct 2012 14:05:30 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121004120530.GJ26553@game.jcrosoft.org>
References: <1349348135-509-1-git-send-email-plagnioj@jcrosoft.com>
 <20121004110653.GH1322@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121004110653.GH1322@pengutronix.de>
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
Subject: Re: [PATCH 1/1 v2] arm: add generic smp twd timer
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13:06 Thu 04 Oct     , Sascha Hauer wrote:
> On Thu, Oct 04, 2012 at 12:55:35PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > on Cortex A9 and Cortex A5 we have a generic timer which we can use as
> > clocksource
> > 
> > Limit the timer frequency to < 25Mhz
> > 
> > +	return ~readl(twd_base + TWD_TIMER_COUNTER);
> > +}
> > +
> > +static struct clocksource smp_twd_clksrc = {
> > +	.read	= smp_twd_read,
> > +	.shift	= 20,
> > +	.mask	= CLOCKSOURCE_MASK(32),
> > +};
> > +
> > +#define SMP_TWD_MAX_FREQ (25 *1000 * 1000)
> > +
> > +static int smp_twd_probe(struct device_d *dev)
> > +{
> > +	u32 tick_rate;
> > +	u32 val;
> > +	int ret;
> > +	u32 presc = 0;
> > +
> > +	twd_clk = clk_get(dev, NULL);
> > +	if (IS_ERR(twd_clk)) {
> > +		ret = PTR_ERR(twd_clk);
> > +		dev_err(dev, "clock not found: %d\n", ret);
> 
> Still do you really really want to bloat the binary with such strings?
> This message will only ever be seen by developers. I would find it much
> more useful to turn this into dev_dbg and instead add a dev_err in the
> driver code when a device fails to probe. That would give a developer
> enough hints to know where to increase the debug level.
I try it and I forget to udpate the clock and really anoyed to do not see the
error message

for other drivers maybe but the clocksource is critical so clear error message
are madatory

and honestly here we save few bytes on a critical driver

and with the pbl it's even less

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
