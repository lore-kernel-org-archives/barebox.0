Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XQs3f-0004Un-0Q
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 06:04:11 +0000
Date: Mon, 8 Sep 2014 08:03:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140908060348.GJ5352@pengutronix.de>
References: <1409838437-3625-1-git-send-email-s.trumtrar@pengutronix.de>
 <1409838437-3625-3-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1409838437-3625-3-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v3 2/4] Firmware: provide a handler to program Altera FPGAs
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On Thu, Sep 04, 2014 at 03:47:15PM +0200, Steffen Trumtrar wrote:
> +/*
> + * Physical requirements:
> + * - three free GPIOs for the signals nCONFIG, CONFIGURE_DONE, nSTATUS
> + * - 32 bit per word, LSB first capable SPI master (MOSI + clock)
> + *
> + * Example how to configure this driver via device tree
> + *
> + *	fpga@0 {
> + *		compatible =3D "altr,fpga-passive-serial";
> + *		nstat-gpio =3D <&gpio4 18 0>;
> + *		confd-gpio =3D <&gpio4 19 0>;
> + *		nconfig-gpio =3D <&gpio4 20 0>;
> + *		spi-max-frequency =3D <10000000>;
> + *		reg =3D <0>;
> + *	};

We have Documentation/devicetree/bindings/. Please add a document there.

> +
> +	/*
> +	 * after about 2 =B5s the FPGA must acknowledge with
> +	 * STATUS and CONFIG DONE lines at low level
> +	 */
> +	ret =3D wait_on_timeout(2 * 1000,
> +				(gpio_get_value(this->nstat_gpio) =3D=3D 0) &&
> +				(gpio_get_value(this->confd_gpio) =3D=3D 0));

2 * USECOND please, also for the other calls to wait_on_timeout().

> +static int altera_spi_write(struct firmware_handler *fh, const void *buf=
, size_t sz)
> +{
> +	struct fpga_spi *this =3D container_of(fh, struct fpga_spi, fh);
> +	struct device_d *dev =3D this->dev;
> +	struct spi_transfer t[2];
> +	struct spi_message m;
> +	u32 dummy;
> +	int ret;
> +
> +	printf("%s: %d\n", __func__, sz);

Is this useful output for production?

> +	/*
> +	 * when programming was successfully,

s/successfully/successful/

> +	 * both status lines should be at high level
> +	 */
> +	ret =3D wait_on_timeout(10 * 1000,
> +				(gpio_get_value(this->nstat_gpio) =3D=3D 1) &&
> +				(gpio_get_value(this->confd_gpio) =3D=3D 1));
> +	if (ret =3D=3D 0) {
> +		dev_dbg(dev, "Programming successfull\n");

s/successfull/successful/

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
