Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQY87-0006zb-Qq
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 11:28:49 +0000
Date: Mon, 9 Jan 2017 12:28:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109112825.qa2yvfshsevot6ut@pengutronix.de>
References: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
 <1481565788-9115-4-git-send-email-andrew.smirnov@gmail.com>
 <20170109111830.7eqrjbrm3av6hjsg@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170109111830.7eqrjbrm3av6hjsg@pengutronix.de>
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
Subject: Re: [PATCH v2 03/21] i.MX: ocotp: Simplify MAC address storing logic
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 09, 2017 at 12:18:30PM +0100, Sascha Hauer wrote:
> On Mon, Dec 12, 2016 at 10:02:50AM -0800, Andrey Smirnov wrote:
> > Store MAC addresses as 8 byte buffer to avoid the need to have extra
> > code to deal with "6 into 8" conversions and the need to have various
> > magic numbers.
> > 
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/mach-imx/ocotp.c | 11 +++++------
> >  1 file changed, 5 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
> > index 7f625d8..f549c94 100644
> > --- a/arch/arm/mach-imx/ocotp.c
> > +++ b/arch/arm/mach-imx/ocotp.c
> > @@ -84,7 +84,7 @@ struct ocotp_priv {
> >  	struct device_d dev;
> >  	int permanent_write_enable;
> >  	int sense_enable;
> > -	char ethaddr[6];
> > +	char ethaddr[MAC_BYTES];
> >  	struct regmap_config map_config;
> >  	const struct imx_ocotp_data *data;
> >  };
> > @@ -409,25 +409,24 @@ static void memreverse(void *dest, const void *src, size_t n)
> >  static int imx_ocotp_get_mac(struct param_d *param, void *priv)
> >  {
> >  	struct ocotp_priv *ocotp_priv = priv;
> > -	char buf[8];
> > +	char buf[MAC_BYTES];
> >  	int ret;
> >  
> >  	ret = regmap_bulk_read(ocotp_priv->map, MAC_OFFSET, buf, MAC_BYTES);
> >  	if (ret < 0)
> >  		return ret;
> >  
> > -	memreverse(ocotp_priv->ethaddr, buf, 6);
> > +	memreverse(ocotp_priv->ethaddr, buf, MAC_BYTES);
> >  	return 0;
> >  }
> >  
> >  static int imx_ocotp_set_mac(struct param_d *param, void *priv)
> >  {
> >  	struct ocotp_priv *ocotp_priv = priv;
> > -	char buf[8];
> > +	char buf[MAC_BYTES];
> >  	int ret;
> >  
> > -	memreverse(buf, ocotp_priv->ethaddr, 6);
> > -	buf[6] = 0; buf[7] = 0;
> > +	memreverse(buf, ocotp_priv->ethaddr, MAC_BYTES);
> 
> Unless I have knots in my mind this does not work. dev_add_param_mac()
> expects the MAC address in the given buffer. We pass priv->ethaddr, but
> now with this change the MAC address is in priv->ethaddr + 2. Anything I
> don't see here?

And indeed I see the wrong MAC address in "devinfo ocotp0"

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
