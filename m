Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXlBF-0001v5-2m
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 10:58:55 +0000
Date: Fri, 14 Dec 2018 11:58:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181214105841.6fxgixefvbk273n6@pengutronix.de>
References: <20181213074430.25614-1-r.czerwinski@pengutronix.de>
 <20181213074430.25614-5-r.czerwinski@pengutronix.de>
 <21f248f5-59e9-c80b-aec7-6959c916a5eb@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <21f248f5-59e9-c80b-aec7-6959c916a5eb@rempel-privat.de>
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
Subject: Re: [PATCH v2 4/8] serial_ns16550: handle default reg-io-width
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org, Rouven Czerwinski <r.czerwinski@pengutronix.de>

On Thu, Dec 13, 2018 at 04:56:46PM +0100, Oleksij Rempel wrote:
> Am 13.12.18 um 08:44 schrieb Rouven Czerwinski:
> > -	if (!of_property_read_u32(np, "reg-io-width", &width))
> > -		switch (width) {
> > -		case 1:
> > -			priv->read_reg = ns16550_read_reg_mmio_8;
> > -			priv->write_reg = ns16550_write_reg_mmio_8;
> > -			break;
> > -		case 2:
> > -			priv->read_reg = ns16550_read_reg_mmio_16;
> > -			priv->write_reg = ns16550_write_reg_mmio_16;
> > -			break;
> > -		case 4:
> > -			if (of_device_is_big_endian(np)) {
> > -				priv->read_reg = ns16550_read_reg_mmio_32be;
> > -				priv->write_reg = ns16550_write_reg_mmio_32be;
> > -			} else {
> > -				priv->read_reg = ns16550_read_reg_mmio_32;
> > -				priv->write_reg = ns16550_write_reg_mmio_32;
> > -			}
> > -			break;
> > -		default:
> > -			dev_err(dev, "unsupported reg-io-width (%d)\n",
> > -				width);
> > +	of_property_read_u32(np, "reg-io-width", &width);
> 
> i think it is not good to drop error handling completely. We may fail in
> different ways:
> static const void *of_find_property_value_of_size(const struct
> device_node *np,
> 			const char *propname, u32 len)
> {
> 	struct property *prop = of_find_property(np, propname, NULL);
> 	const void *value;
> 
> 	if (!prop)
> 		return ERR_PTR(-EINVAL);
> 	value = of_property_get_value(prop);
> 	if (!value)
> 		return ERR_PTR(-ENODATA);
> 	if (len > prop->length)
> 		return ERR_PTR(-EOVERFLOW);

Although we could differenciate between these different values and
return an error I think initializing a variable with a default and let
of_property_read_* overwrite it without further error checking is common
sense now, you can find hundreds of hits in the Linux Kernel.

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
