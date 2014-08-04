Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XEMuZ-0005Q4-To
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 18:23:13 +0000
Date: Mon, 4 Aug 2014 20:22:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140804182245.GE23235@pengutronix.de>
References: <1406899464-29144-1-git-send-email-poggi.raph@gmail.com>
 <1406899464-29144-2-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406899464-29144-2-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH 1/2] pinctrl: at91: add pinctrl driver
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

Looks mostly fine.

On Fri, Aug 01, 2014 at 03:24:23PM +0200, Rapha=EBl Poggi wrote:
> This driver is based on mach-at91/gpio.c and linux pinctrl driver.
> The driver contains the gpio and pinctrl parts (like in linux) because th=
e two parts
> share some structures and logics.
> =

> Signed-off-by: Rapha=EBl Poggi <poggi.raph@gmail.com>
> ---
> +static struct at91_pinctrl_mux_ops *at91_pinctrl_get_driver_data(struct =
device_d *dev)
> +{
> +    struct at91_pinctrl_mux_ops *ops_data =3D NULL;
> +    int rc;
> +
> +    if (dev->device_node) {
> +	    const struct of_device_id *match;
> +	    match =3D of_match_node(at91_pinctrl_dt_ids, dev->device_node);
> +	    if (!match)
> +			ops_data =3D NULL;
> +	    else
> +			ops_data =3D (struct at91_pinctrl_mux_ops *)match->data;
> +    }
> +    else {
> +	    rc =3D dev_get_drvdata(dev, (unsigned long *)&ops_data);
> +		if (rc)
> +		ops_data =3D NULL;
> +    }

Indentation looks garbled in this function.

> +
> +	ret =3D pinctrl_register(&info->pctl);
> +	if (ret)
> +		return ret;
> +
> +	dev_info(dev, "AT91 pinctrl registred\n");

s/registred/registered/

> +
> +	ret =3D gpiochip_add(&at91_gpio->chip);
> +	if (ret) {
> +		dev_err(dev, "couldn't add gpiochip, ret =3D %d\n", ret);
> +		return ret;
> +	}
> +
> +	dev_info(dev, "AT91 gpio driver registred\n");

here aswell.

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
