Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XAFQT-0001g5-2O
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 09:35:01 +0000
Date: Thu, 24 Jul 2014 11:34:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140724093436.GJ23235@pengutronix.de>
References: <1406142544-10516-1-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406142544-10516-1-git-send-email-poggi.raph@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] i2c: add Atmel AT91 driver
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

Hi Rapha=EBl,

Looks mostly fine to me. Two small comments:

On Wed, Jul 23, 2014 at 12:09:04PM -0700, Rapha=EBl Poggi wrote:
> +
> +static int at91_twi_probe(struct device_d *dev)
> +{
> +	struct at91_twi_dev *i2c_at91;
> +	struct at91_twi_pdata *i2c_data;
> +	int rc;
> +	u32 bus_clk_rate;
> +
> +	i2c_at91 =3D kzalloc(sizeof(struct at91_twi_dev), GFP_KERNEL);
> +	if (!i2c_at91) {
> +	    rc =3D -ENOMEM;
> +	    goto out_free;
> +	}

You can safely use xzalloc here and skip the result check.

> +
> +	rc =3D dev_get_drvdata(dev, (unsigned long *)&i2c_data);
> +	if (rc)
> +		goto out_free;
> +
> +	i2c_at91->pdata =3D i2c_data;
> +
> +	i2c_at91->base =3D dev_request_mem_region(dev, 0);
> +	if (IS_ERR(i2c_at91->base))
> +		return PTR_ERR(i2c_at91->base);

dev_request_mem_region returns NULL on error, not an error pointer.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
