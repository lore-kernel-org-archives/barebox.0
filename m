Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f314.mail.ru ([128.140.169.178])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF5UG-0000id-P1
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 16:22:10 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 11 Mar 2013 20:22:05 +0400
Message-ID: <1363018925.795429615@f314.mail.ru>
In-Reply-To: <20130311111039.GI1906@pengutronix.de>
References: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
 <20130311110158.GE11170@game.jcrosoft.org>
 <20130311111039.GI1906@pengutronix.de>
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

> On Mon, Mar 11, 2013 at 12:01:58PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > +static int clps711x_cs_probe(struct device_d *dev)
> > > +{
> > > +	u32 rate;
> > > +	struct clk *timer_clk;
> > > +
> > > +	timer_clk = clk_get(dev, NULL);
> > > +	if (IS_ERR(timer_clk))
> > > +		return PTR_ERR(timer_clk);
> > > +
> > > +	rate = clk_get_rate(timer_clk);
> > > +	clps711x_timer_base = dev_request_mem_region(dev, 0);
> > > +	if (!clps711x_timer_base) {
> > > +		clk_put(timer_clk);
> > > +		return -ENOENT;
> > > +	}
> > this deserve a nice crash
> 
> No, it doesn't. First of all we are very early here, so we might not even
> see the crash. Then, with devicetree probing we may often end up with
> the same devices registered from the devicetree and from the
> platform/soc. While this should find a way to avoid duplicate device
> registration, it is not nice having barebox crash in this case.

So what is the solution you propose in this case?

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
