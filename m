Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGJRD-00057s-QM
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 05:46:12 +0000
Date: Mon, 12 Dec 2016 06:45:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161212054550.tvypgzxcsthloozd@pengutronix.de>
References: <20161208105226.27858-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161208105226.27858-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 1/2] spi: mvebu: add LSB support
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 08, 2016 at 11:52:25AM +0100, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/spi/mvebu_spi.c | 28 ++++++++++++++++++++++++----
>  1 file changed, 24 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/spi/mvebu_spi.c b/drivers/spi/mvebu_spi.c
> index 6921cb8cd7db..c5d8732e4f84 100644
> --- a/drivers/spi/mvebu_spi.c
> +++ b/drivers/spi/mvebu_spi.c
> @@ -31,8 +31,13 @@
>  #define  IF_READ_READY		BIT(1)
>  #define  IF_CS_ENABLE		BIT(0)
>  #define SPI_IF_CONFIG		0x04
> +
> +#define  IF_RXLSBF		BIT(14)
> +#define  IF_TXLSBF		BIT(13)
> +
>  #define  IF_CLK_DIV(x)		((x) << 11)
>  #define  IF_CLK_DIV_MASK	(0x7 << 11)
> +
>  #define  IF_FAST_READ		BIT(10)
>  #define  IF_ADDRESS_LEN_4BYTE	(3 << 8)
>  #define  IF_ADDRESS_LEN_3BYTE	(2 << 8)
> @@ -192,6 +197,8 @@ static int dove_spi_set_baudrate(struct mvebu_spi *p,=
 u32 speed)
>  =

>  static int mvebu_spi_set_mode(struct mvebu_spi *p, u8 mode)
>  {
> +	u32 val;
> +
>  	/*
>  	 * From public datasheets of Orion SoCs, it is unclear
>  	 * if the SPI controller supports setting CPOL/CPHA.
> @@ -202,12 +209,19 @@ static int mvebu_spi_set_mode(struct mvebu_spi *p, =
u8 mode)
>  	 * other mode than SPI_MODE0.
>  	 */
>  =

> -	if ((mode & (SPI_CPOL|SPI_CPHA)) =3D=3D SPI_MODE_0)
> -		return 0;
> +	if ((mode & (SPI_CPOL|SPI_CPHA)) !=3D SPI_MODE_0) {
> +		pr_err("%s: unsupported SPI mode %02x\n", __func__, mode);
> +		return -EINVAL;
> +	}
>  =

> -	pr_err("%s: unsupported SPI mode %02x\n", __func__, mode);
> +	val =3D readl(p->base + SPI_IF_CONFIG);
> +	if (mode & SPI_LSB_FIRST)
> +		val |=3D IF_RXLSBF | IF_TXLSBF;
> +	else
> +		val &=3D ~(IF_RXLSBF | IF_TXLSBF);
> +	writel(val, p->base + SPI_IF_CONFIG);
>  =

> -	return -EINVAL;
> +	return 0;
>  }
>  =

>  static int mvebu_spi_setup(struct spi_device *spi)
> @@ -293,6 +307,12 @@ static int mvebu_spi_transfer(struct spi_device *spi=
, struct spi_message *msg)
>  	int ret;
>  	struct mvebu_spi *priv =3D priv_from_spi_device(spi);
>  =

> +	ret =3D mvebu_spi_set_mode(priv, spi->mode);
> +	if (ret) {
> +		dev_err(&spi->dev, "Failed to set mode (0x%x)\n", (unsigned)spi->mode);
> +		return ret;
> +	}
> +
>  	ret =3D mvebu_spi_set_cs(priv, spi->chip_select, spi->mode, true);
>  	if (ret)
>  		return ret;
> -- =

> 2.10.2
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
