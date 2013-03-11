Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF0cu-00052s-LX
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 11:10:46 +0000
Date: Mon, 11 Mar 2013 12:10:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130311111039.GI1906@pengutronix.de>
References: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
 <1362994003-22653-4-git-send-email-shc_work@mail.ru>
 <20130311110158.GE11170@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130311110158.GE11170@game.jcrosoft.org>
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
Subject: Re: [PATCH 04/13] ARM: clps711x: Add clocksource driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 11, 2013 at 12:01:58PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > +static int clps711x_cs_probe(struct device_d *dev)
> > +{
> > +	u32 rate;
> > +	struct clk *timer_clk;
> > +
> > +	timer_clk = clk_get(dev, NULL);
> > +	if (IS_ERR(timer_clk))
> > +		return PTR_ERR(timer_clk);
> > +
> > +	rate = clk_get_rate(timer_clk);
> > +	clps711x_timer_base = dev_request_mem_region(dev, 0);
> > +	if (!clps711x_timer_base) {
> > +		clk_put(timer_clk);
> > +		return -ENOENT;
> > +	}
> this deserve a nice crash

No, it doesn't. First of all we are very early here, so we might not even
see the crash. Then, with devicetree probing we may often end up with
the same devices registered from the devicetree and from the
platform/soc. While this should find a way to avoid duplicate device
registration, it is not nice having barebox crash in this case.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
