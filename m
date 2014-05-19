Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WmHG2-0005bO-96
 for barebox@lists.infradead.org; Mon, 19 May 2014 06:41:11 +0000
Date: Mon, 19 May 2014 08:40:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140519064034.GY5858@pengutronix.de>
References: <1399534299-27051-1-git-send-email-s.hauer@pengutronix.de>
 <1399534299-27051-2-git-send-email-s.hauer@pengutronix.de>
 <1457646.XTgHtzepJG@dev2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1457646.XTgHtzepJG@dev2>
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
Subject: Re: [PATCH 1/5] mfd: mc13xxx: Allow to set callback for mc13xxx
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

Hi MArc,

On Mon, May 19, 2014 at 09:14:19AM +1000, Marc Reilly wrote:
> Hi,
> 
> I'm a bit slow on this one, so sorry if I'm too late to the party. :)

Don't worry, you're not too late.
> > 
> > +void(*mc13xxx_callback)(struct mc13xxx *mc13xxx);
> 
> 
> Should (can?) this be static?

Yes, it should. fixed.

> > +int mc13xxx_register_callback(void(*callback)(struct mc13xxx *mc13xxx))
> 
> 
> What about mc13xxx_register_init_callback, or something which makes it more 
> apparent when the callback is called.

Indeed that's a better name.

> > diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
> > index 0921b52..a77c1dc 100644
> > --- a/drivers/net/fec_imx.h
> > +++ b/drivers/net/fec_imx.h
> > @@ -146,6 +146,7 @@ struct fec_priv {
> >  	void (*phy_init)(struct phy_device *dev);
> >  	struct clk *clk;
> >  	enum fec_type type;
> > +	int phy_reset_gpio;
> 
> 
> Did this sneak in?

Oops. Fixed.

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
