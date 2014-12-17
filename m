Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y1F8o-0007ZK-6X
 for barebox@lists.infradead.org; Wed, 17 Dec 2014 13:59:51 +0000
Date: Wed, 17 Dec 2014 14:59:25 +0100
From: Jan Weitzel <J.Weitzel@phytec.de>
Message-ID: <20141217135925.GA3034@lws-weitzel.phytec.de>
References: <1418194168-11826-1-git-send-email-j.weitzel@phytec.de>
 <20141211075948.GD30369@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20141211075948.GD30369@pengutronix.de>
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: Jan Weitzel <J.Weitzel@phytec.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] i2c: omap: fix fclk_rate for ti,omap4-i2c
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 11, 2014 at 08:59:48AM +0100, Sascha Hauer wrote:
> On Wed, Dec 10, 2014 at 07:49:28AM +0100, Jan Weitzel wrote:
> > "ti,am33xx" and "ti,omap4" use "ti,omap4-i2c" with different fclk_rate.
> > By now set it according to the used cpu compatible.
> > 
> > Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> > ---
> >  drivers/i2c/busses/i2c-omap.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
> > index 094f591..d2254d4 100644
> > --- a/drivers/i2c/busses/i2c-omap.c
> > +++ b/drivers/i2c/busses/i2c-omap.c
> > @@ -1015,6 +1015,13 @@ i2c_omap_probe(struct device_d *pdev)
> >  	i2c_omap->reg_shift = (i2c_data->flags >>
> >  					OMAP_I2C_FLAG_BUS_SHIFT__SHIFT) & 3;
> >  
> > +	if (!i2c_data->fclk_rate) {
> > +		if (of_machine_is_compatible("ti,am33xx"))
> > +			i2c_data->fclk_rate = am33xx_data.fclk_rate;
> > +		if (of_machine_is_compatible("ti,omap4"))
> > +			i2c_data->fclk_rate = omap4_data.fclk_rate;
> > +	}
> 
> Can't we just do a:
> 
> 	if (of_machine_is_compatible("ti,am33xx"))
> 		i2c_omap->data = &am33xx_data;
> 	if (of_machine_is_compatible("ti,omap4"))
> 		i2c_omap->data = &omap4_data;
> 
> Instead?
Sounds good, I reworked the patch.

Jan
> 
> With that we could also remove the nonworking omap4_of_data.
> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
