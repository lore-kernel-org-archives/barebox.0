Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aREa8-0005Ee-PL
 for barebox@lists.infradead.org; Thu, 04 Feb 2016 07:44:02 +0000
Date: Thu, 4 Feb 2016 08:43:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160204074338.GO4118@pengutronix.de>
References: <1454516411-22858-1-git-send-email-s.hauer@pengutronix.de>
 <1454516411-22858-5-git-send-email-s.hauer@pengutronix.de>
 <20160204073830.GA2447@lws-christ>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160204073830.GA2447@lws-christ>
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
Subject: Re: [PATCH 4/4] ARM: i.MX ocotp: Switch to regmap support
To: Stefan Christ <s.christ@phytec.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Stefan,

On Thu, Feb 04, 2016 at 08:38:30AM +0100, Stefan Christ wrote:
> Hi Sascha,
> 
> > +	priv->map = regmap_init(dev, &imx_ocotp_regmap_bus, priv, &imx_ocotp_regmap_config);
> > +	if (IS_ERR(priv->map))
> > +		return PTR_ERR(priv->map);
> > +
> > +	ret = regmap_register_cdev(priv->map, "imx-ocotp");
> > +        if (ret)
> > +                return ret;
> > +
> 
> Here are whitespaces instead of tabs.

Fixed, thanks for noting

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
