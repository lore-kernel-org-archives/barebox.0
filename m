Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ebika-0001OT-06
 for barebox@lists.infradead.org; Wed, 17 Jan 2018 08:07:13 +0000
Date: Wed, 17 Jan 2018 09:06:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180117080659.zg24mtfiy6roaahv@pengutronix.de>
References: <20180106211938.GA25955@ravnborg.org>
 <20180109110404.r7i2tb6tilbl5wzx@pengutronix.de>
 <20180113102119.GA29458@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180113102119.GA29458@ravnborg.org>
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
Subject: Re: [PATCH] atmel_lcdfb: introduce driver data
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Sat, Jan 13, 2018 at 11:21:19AM +0100, Sam Ravnborg wrote:
> Hi Sasha.
> 
> > > +
> > >  static __maybe_unused struct of_device_id atmel_lcdfb_compatible[] = {
> > > -	{ .compatible = "atmel,at91sam9261-lcdc", },
> > > -	{ .compatible = "atmel,at91sam9263-lcdc", },
> > > -	{ .compatible = "atmel,at91sam9g10-lcdc", },
> > > -	{ .compatible = "atmel,at91sam9g45-lcdc", },
> > > +	{ .compatible = "atmel,at91sam9261-lcdc",	.data = &at91sam9261_config, },
> > > +	{ .compatible = "atmel,at91sam9263-lcdc",	.data = &at91sam9263_config, },
> > > +	{ .compatible = "atmel,at91sam9g10-lcdc",	.data = &at91sam9g10_config, },
> > > +	{ .compatible = "atmel,at91sam9g45-lcdc",	.data = &at91sam9g45_config, },
> > >  	{ .compatible = "atmel,at91sam9g45es-lcdc", },
> > > -	{ .compatible = "atmel,at91sam9rl-lcdc", },
> > > -	{ .compatible = "atmel,at32ap-lcdc", },
> > > +	{ .compatible = "atmel,at91sam9rl-lcdc",	.data = &at91sam9rl_config, },
> > > +	{ .compatible = "atmel,at32ap-lcdc",		.data = &at32ap_config, },
> > >  	{ /* sentinel */ }
> > >  };
> > 
> > Note that we can match on different platform_device_ids aswell, so you
> > could also attach driver_data to platform devices aswell. For an example
> > see drivers/serial/serial_imx.c.
> > 
> > I leave it up to you if you change this patch accordingly, I can also
> > apply it as is.
> 
> I took a look at it today.
> With these Atmel CPUs we have different behaviour of each IP block
> depending on what CPU it is included in which is why I have added
> all these _config blocks (I could have re-used a few).
> 
> So it is not that we see that for example at91sam9rl-lcdc
> is used in many CPU's.
> Adding the platform_id in this case resulted in extra code with no
> added benefit - or at least no benefit I could see.
> I had to maintain both a of_device_id table and a platform_device_id table,
> so it also looked like a duplicate.
> 
> So unless I miss something then the original patch is the best
> solution.

I see your point, so applied your original patch.

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
