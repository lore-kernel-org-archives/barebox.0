Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f43.mail.ru ([217.69.128.200])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF7IL-000294-1e
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 18:17:59 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 11 Mar 2013 22:17:48 +0400
Message-ID: <1363025868.656317328@f43.mail.ru>
In-Reply-To: <20130311180036.GJ1906@pengutronix.de>
References: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
 <1363018925.795429615@f314.mail.ru> <20130311180036.GJ1906@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCAwNC8xM10gQVJNOiBjbHBzNzExeDogQWRkIGNsb2Nr?=
 =?UTF-8?B?c291cmNlIGRyaXZlcg==?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Mon, Mar 11, 2013 at 08:22:05PM +0400, Alexander Shiyan wrote:
> > > On Mon, Mar 11, 2013 at 12:01:58PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > +static int clps711x_cs_probe(struct device_d *dev)
> > > > > +{
> > > > > +	u32 rate;
> > > > > +	struct clk *timer_clk;
> > > > > +
> > > > > +	timer_clk = clk_get(dev, NULL);
> > > > > +	if (IS_ERR(timer_clk))
> > > > > +		return PTR_ERR(timer_clk);
> > > > > +
> > > > > +	rate = clk_get_rate(timer_clk);
> > > > > +	clps711x_timer_base = dev_request_mem_region(dev, 0);
> > > > > +	if (!clps711x_timer_base) {
> > > > > +		clk_put(timer_clk);
> > > > > +		return -ENOENT;
> > > > > +	}
> > > > this deserve a nice crash
> > > 
> > > No, it doesn't. First of all we are very early here, so we might not even
> > > see the crash. Then, with devicetree probing we may often end up with
> > > the same devices registered from the devicetree and from the
> > > platform/soc. While this should find a way to avoid duplicate device
> > > registration, it is not nice having barebox crash in this case.
> > 
> > So what is the solution you propose in this case?
> 
> For the device duplication I don't have a solution yet. Basically I
> wanted to say that your patch looks good the way you did it.

Later I can move check for clps711x_timer_base at start of probe function.
So at least we may avoid to add another clocksource.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
