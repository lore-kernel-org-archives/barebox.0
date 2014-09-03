Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XP4VF-0002N2-4s
 for barebox@lists.infradead.org; Wed, 03 Sep 2014 06:57:13 +0000
Date: Wed, 3 Sep 2014 08:56:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140903065649.GD5352@pengutronix.de>
References: <1409656080-19280-1-git-send-email-poggi.raph@gmail.com>
 <1409656080-19280-3-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1409656080-19280-3-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH v3 2/3] pinctrl: at91: add pinctrl driver
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 02, 2014 at 01:07:59PM +0200, Rapha=EBl Poggi wrote:
> +static int at91_gpio_probe(struct device_d *dev)
> +{
> +	struct at91_gpio_chip *at91_gpio;
> +	struct clk *clk;
> +	int ret;
> +	int alias_idx =3D of_alias_get_id(dev->device_node, "gpio");
> +
> +	BUG_ON(dev->id > MAX_GPIO_BANKS);
> +
> +	at91_gpio =3D &gpio_chip[alias_idx];
> +
> +	clk =3D clk_get(dev, NULL);
> +	if (IS_ERR(clk)) {
> +		ret =3D PTR_ERR(clk);
> +		dev_err(dev, "clock not found: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret =3D clk_enable(clk);
> +	if (ret < 0) {
> +		dev_err(dev, "clock failed to enable: %d\n", ret);
> +		clk_put(clk);
> +		return ret;
> +	}
> +
> +	gpio_banks =3D max(gpio_banks, alias_idx + 1);
> +	at91_gpio->regbase =3D dev_request_mem_region(dev, 0);

Please check the return value.

This driver duplicates the existing Atmel GPIO driver. Shouldn't the
existing driver be dropped? If yes, you should also make sure that this
driver is compiled unconditionally on Atmel SoCs and add a

	if (!IS_ENABLED(CONFIG_PINCTRL))
		return 0;

to at91_pinctrl_init() to reduce the overhead when pinctrl is disabled.

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
