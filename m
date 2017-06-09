Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dJCzw-0003Ha-PA
 for barebox@lists.infradead.org; Fri, 09 Jun 2017 06:02:19 +0000
Date: Fri, 9 Jun 2017 08:01:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170609060151.jpbtktdqsophglja@pengutronix.de>
References: <20170607161551.28713-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170607161551.28713-1-bst@pengutronix.de>
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
Subject: Re: [PATCH] firmware: altera-serial: add support for Arria 10
To: Bastian Stender <bst@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 07, 2017 at 06:15:51PM +0200, Bastian Stender wrote:
> Make FPGA specific settings configurable (padding, spi bits per word,
> delays) and add Arria 10 support. The Arria 10 compatible is the same
> as in the kernel patch "fpga manager: Add altera-ps-spi driver for
> Altera FPGAs" (drivers/fpga/altera-ps-spi.c). The Arria 5 compatible
> works unchanged.
> =

> This patch was tested with Arria 5 and Arria 10.
> =

> Signed-off-by: Bastian Stender <bst@pengutronix.de>
> ---

Applied, thanks

Sascha

>  .../bindings/firmware/altr,passive-serial.txt      |   3 +-
>  drivers/firmware/altera_serial.c                   | 159 +++++++++++++++=
------
>  2 files changed, 115 insertions(+), 47 deletions(-)
> =

> diff --git a/Documentation/devicetree/bindings/firmware/altr,passive-seri=
al.txt b/Documentation/devicetree/bindings/firmware/altr,passive-serial.txt
> index d357dd39c..eec12fbac 100644
> --- a/Documentation/devicetree/bindings/firmware/altr,passive-serial.txt
> +++ b/Documentation/devicetree/bindings/firmware/altr,passive-serial.txt
> @@ -6,7 +6,8 @@ passive serial mode. This is used to upload the firmware =
and
>  to start the FPGA.
>  =

>  Required properties:
> -- compatible: shall be "altr,fpga-passive-serial"
> +- compatible: shall be "altr,fpga-passive-serial" or
> +  "altr,fpga-arria10-passive-serial" for Arria 10
>  - reg: SPI chip select
>  - nstat-gpios: Specify GPIO for controlling the nstat pin
>  - confd-gpios: Specify GPIO for controlling the confd pin
> diff --git a/drivers/firmware/altera_serial.c b/drivers/firmware/altera_s=
erial.c
> index b119778d7..3a0175dd0 100644
> --- a/drivers/firmware/altera_serial.c
> +++ b/drivers/firmware/altera_serial.c
> @@ -25,11 +25,12 @@
>  #include <fcntl.h>
>  #include <fs.h>
>  =

> -
>  /*
>   * Physical requirements:
> - * - three free GPIOs for the signals nCONFIG, CONFIGURE_DONE, nSTATUS
> - * - 32 bit per word, LSB first capable SPI master (MOSI + clock)
> + * - free GPIOs for the signals nCONFIG, CONFIGURE_DONE, nSTATUS (option=
ally
> + *   for ARRIA 10)
> + * - 32 bit / 8 bit (ARRIA 10) per word, LSB first capable SPI master
> + *   (MOSI + clock)
>   *
>   * Example how to configure this driver via device tree
>   *
> @@ -43,6 +44,13 @@
>   *	};
>   */
>  =

> +struct altera_ps_data {
> +	int status_wait_max_us;
> +	int t_st2ck_us;
> +	int spi_bits_per_word;
> +	int padding;
> +};
> +
>  struct fpga_spi {
>  	struct firmware_handler fh;
>  	int nstat_gpio; /* input GPIO to read the status line */
> @@ -50,9 +58,36 @@ struct fpga_spi {
>  	int nconfig_gpio; /* output GPIO to start the FPGA's config */
>  	struct device_d *dev;
>  	struct spi_device *spi;
> +	const struct altera_ps_data *data;
>  	bool padding_done;
>  };
>  =

> +/*          |   Arria 5   |   Arria 10  |
> + * t_CF2ST0 |     [; 600] |     [; 600] | ns
> + * t_CFG    |        [2;] |        [2;] | =B5s
> + * t_STATUS | [268; 1506] | [268; 3000] | =B5s
> + * t_CF2ST1 |    [; 1506] |    [; 3000] | =B5s
> + * t_CF2CK  |     [1506;] |  [3010 =B5s;] | =B5s
> + * t_ST2CK  |        [2;] |       [10;] | =B5s
> + * t_CD2UM  |  [175; 437] |  [175; 830] | =B5s
> + */
> +
> +/* Arria 5 */
> +static struct altera_ps_data a5_data =3D {
> +	.status_wait_max_us =3D 1506, /* max(t_CF2ST1) */
> +	.t_st2ck_us =3D 2, /* min(t_ST2CK) */
> +	.spi_bits_per_word =3D 32,
> +	.padding =3D true,
> +};
> +
> +/* Arria 10 */
> +static struct altera_ps_data a10_data =3D {
> +	.status_wait_max_us =3D 3000, /* max(t_CF2ST1) */
> +	.t_st2ck_us =3D 10, /* min(t_ST2CK) */
> +	.spi_bits_per_word =3D 8,
> +	.padding =3D false,
> +};
> +
>  static int altera_spi_open(struct firmware_handler *fh)
>  {
>  	struct fpga_spi *this =3D container_of(fh, struct fpga_spi, fh);
> @@ -77,7 +112,6 @@ static int altera_spi_open(struct firmware_handler *fh)
>  				(gpio_get_value(this->confd_gpio) =3D=3D 0));
>  	}
>  =

> -
>  	if (ret !=3D 0) {
>  		dev_err(dev, "FPGA does not acknowledge the programming initiation\n");
>  		if (gpio_is_valid(this->nstat_gpio) && gpio_get_value(this->nstat_gpio=
))
> @@ -94,24 +128,30 @@ static int altera_spi_open(struct firmware_handler *=
fh)
>  	this->padding_done =3D false;
>  =

>  	/*
> -	 * after about 1506 =B5s the FPGA must acknowledge this step
> -	 * with the STATUS line at high level
> +	 * after max { max(t_STATUS), max(t_CF2ST1) } the FPGA must acknowledge=
 this
> +	 * step with the STATUS line at high level
>  	 */
> -
>  	if (gpio_is_valid(this->nstat_gpio)) {
> -		ret =3D wait_on_timeout(1600 * USECOND,
> -				gpio_get_value(this->nstat_gpio) =3D=3D 1);
> -		if (ret !=3D 0) {
> -			dev_err(dev, "FPGA does not acknowledge the programming start\n");
> +		ret =3D wait_on_timeout(this->data->status_wait_max_us * USECOND,
> +				gpio_get_value(this->nstat_gpio));
> +		if (ret) {
> +			dev_err(dev, "nSTATUS still low after max(t_CF2ST1)! %d\n", ret);
>  			return ret;
>  		}
>  	} else {
> -		udelay(1600);
> +		udelay(this->data->status_wait_max_us);
>  	}
>  =

>  	dev_dbg(dev, "Initiating passed\n");
> -	/* at the end, wait at least 2 =B5s prior beginning writing data */
> -	udelay(2);
> +
> +	/*
> +	 * t_CF2CK doesn't need to be honored if nSTATUS is monitored in which
> +	 * case only t_ST2CK applies. As we have
> +	 * 	max(t_CF2ST1) + min(t_ST2CK) >=3D min(t_CF2CK)
> +	 * and we waited for max(t_CF2ST1) in the non-monitored
> +	 * case already above, only waiting for min(t_ST2CK) is fine here.
> +	 */
> +	udelay(this->data->t_st2ck_us * USECOND);
>  =

>  	return 0;
>  }
> @@ -129,30 +169,38 @@ static int altera_spi_write(struct firmware_handler=
 *fh, const void *buf, size_t
>  =

>  	spi_message_init(&m);
>  =

> -	if (sz < sizeof(u32)) {
> -		/* simple padding */
> -		dummy =3D 0;
> -		memcpy(&dummy, buf, sz);
> -		buf =3D &dummy;
> -		sz =3D sizeof(u32);
> -		this->padding_done =3D true;
> -	}
> +	if (this->data->padding) {
> +		if (sz < sizeof(u32)) {
> +			/* simple padding */
> +			dummy =3D 0;
> +			memcpy(&dummy, buf, sz);
> +			buf =3D &dummy;
> +			sz =3D sizeof(u32);
> +			this->padding_done =3D true;
> +		}
>  =

> -	t[0].tx_buf =3D buf;
> -	t[0].rx_buf =3D NULL;
> -	t[0].len =3D sz;
> -	spi_message_add_tail(&t[0], &m);
> -
> -	if (sz & 0x3) { /* padding required? */
> -		u32 *word_buf =3D (u32 *)buf;
> -		dummy =3D 0;
> -		memcpy(&dummy, &word_buf[sz >> 2], sz & 0x3);
> -		t[0].len &=3D ~0x03;
> -		t[1].tx_buf =3D &dummy;
> -		t[1].rx_buf =3D NULL;
> -		t[1].len =3D sizeof(u32);
> -		spi_message_add_tail(&t[1], &m);
> -		this->padding_done =3D true;
> +		t[0].tx_buf =3D buf;
> +		t[0].rx_buf =3D NULL;
> +		t[0].len =3D sz;
> +		spi_message_add_tail(&t[0], &m);
> +
> +		if (sz & 0x3) { /* padding required? */
> +			u32 *word_buf =3D (u32 *)buf;
> +			dummy =3D 0;
> +			memcpy(&dummy, &word_buf[sz >> 2], sz & 0x3);
> +			t[0].len &=3D ~0x03;
> +			t[1].tx_buf =3D &dummy;
> +			t[1].rx_buf =3D NULL;
> +			t[1].len =3D sizeof(u32);
> +			spi_message_add_tail(&t[1], &m);
> +			this->padding_done =3D true;
> +		}
> +	} else {
> +		memset(&t[0], 0, sizeof(t[0]));
> +		t[0].tx_buf =3D buf;
> +		t[0].rx_buf =3D NULL;
> +		t[0].len =3D sz;
> +		spi_message_add_tail(&t[0], &m);
>  	}
>  =

>  	ret =3D spi_sync(this->spi, &m);
> @@ -173,7 +221,7 @@ static int altera_spi_close(struct firmware_handler *=
fh)
>  =

>  	dev_dbg(dev, "Finalize programming\n");
>  =

> -	if (this->padding_done =3D=3D false) {
> +	if (this->data->padding && this->padding_done =3D=3D false) {
>  		spi_message_init(&m);
>  		t.tx_buf =3D &dummy;
>  		t.rx_buf =3D NULL;
> @@ -196,12 +244,23 @@ static int altera_spi_close(struct firmware_handler=
 *fh)
>  	} else {
>  		ret =3D wait_on_timeout(10 * USECOND,
>  				(gpio_get_value(this->confd_gpio) =3D=3D 1));
> -
>  	}
>  =

> +
>  	if (ret =3D=3D 0) {
>  		dev_dbg(dev, "Programming successful\n");
> -		return ret;
> +
> +		/*
> +		 * After CONF_DONE goes high, send two additional falling edges on DCLK
> +		 * to begin initialization and enter user mode
> +		 */
> +		spi_message_init(&m);
> +		memset(&t, 0, sizeof(t));
> +		t.tx_buf =3D NULL;
> +		t.rx_buf =3D NULL;
> +		t.len =3D 2;
> +		spi_message_add_tail(&t, &m);
> +		return spi_sync(this->spi, &m);
>  	}
>  =

>  	dev_err(dev, "Programming failed due to time out\n");
> @@ -267,9 +326,10 @@ out:
>  	return ret;
>  }
>  =

> -static void altera_spi_init_mode(struct spi_device *spi)
> +static void altera_spi_init_mode(struct spi_device *spi, int spi_bits_pe=
r_word)
>  {
> -	spi->bits_per_word =3D 32;
> +	spi->bits_per_word =3D spi_bits_per_word;
> +
>  	/*
>  	 * CPHA =3D CPOL =3D 0
>  	 * the FPGA expects its firmware data with LSB first
> @@ -284,9 +344,14 @@ static int altera_spi_probe(struct device_d *dev)
>  	struct firmware_handler *fh;
>  	const char *alias =3D of_alias_get(dev->device_node);
>  	const char *model =3D NULL;
> +	const struct altera_ps_data *data;
>  =

>  	dev_dbg(dev, "Probing FPGA firmware programmer\n");
>  =

> +	rc =3D dev_get_drvdata(dev, (const void **)&data);
> +	if (rc)
> +		return rc;
> +
>  	this =3D xzalloc(sizeof(*this));
>  	fh =3D &this->fh;
>  =

> @@ -308,7 +373,9 @@ static int altera_spi_probe(struct device_d *dev)
>  	fh->dev =3D dev;
>  =

>  	this->spi =3D (struct spi_device *)dev->type_data;
> -	altera_spi_init_mode(this->spi);
> +	this->data =3D data;
> +
> +	altera_spi_init_mode(this->spi, this->data->spi_bits_per_word);
>  	this->dev =3D dev;
>  =

>  	dev_dbg(dev, "Registering FPGA firmware programmer\n");
> @@ -327,9 +394,9 @@ out:
>  }
>  =

>  static struct of_device_id altera_spi_id_table[] =3D {
> -	{
> -		.compatible =3D "altr,fpga-passive-serial",
> -	},
> +	{ .compatible =3D "altr,fpga-passive-serial", .data =3D &a5_data },
> +	{ .compatible =3D "altr,fpga-arria10-passive-serial", .data =3D &a10_da=
ta },
> +	{ }
>  };
>  =

>  static struct driver_d altera_spi_driver =3D {
> -- =

> 2.11.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
