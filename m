Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEiVG-0002Ue-LZ
 for barebox@lists.infradead.org; Wed, 07 Dec 2016 20:07:47 +0000
Date: Wed, 7 Dec 2016 21:07:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161207200724.k5ydoefn63gleuju@pengutronix.de>
References: <20161124205918.20093-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161124205918.20093-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] mtd: m25p80: add support for Everspin MR25H40
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 24, 2016 at 09:59:18PM +0100, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/mtd/devices/m25p80.c  | 2 +-
>  drivers/mtd/spi-nor/spi-nor.c | 1 +
>  2 files changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
> index 656a7f5ef045..8a67792125e3 100644
> --- a/drivers/mtd/devices/m25p80.c
> +++ b/drivers/mtd/devices/m25p80.c
> @@ -179,7 +179,7 @@ static const struct platform_device_id m25p_ids[] =3D=
 {
>  	{"en25f32"},    {"en25p32"},    {"en25q32b"},   {"en25p64"},
>  	{"en25q64"},    {"en25qh128"},  {"en25qh256"},
>  	{"f25l32pa"},
> -	{"mr25h256"},   {"mr25h10"},
> +	{"mr25h256"},   {"mr25h10"},    {"mr25h40"},
>  	{"gd25q32"},    {"gd25q64"},
>  	{"160s33b"},    {"320s33b"},    {"640s33b"},
>  	{"mx25l2005a"}, {"mx25l4005a"}, {"mx25l8005"},  {"mx25l1606e"},
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 45be58623839..faeafe1bfb6a 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -504,6 +504,7 @@ static const struct spi_device_id spi_nor_ids[] =3D {
>  	/* Everspin */
>  	{ "mr25h256", CAT25_INFO( 32 * 1024, 1, 256, 2, SPI_NOR_NO_ERASE | SPI_=
NOR_NO_FR) },
>  	{ "mr25h10",  CAT25_INFO(128 * 1024, 1, 256, 3, SPI_NOR_NO_ERASE | SPI_=
NOR_NO_FR) },
> +	{ "mr25h40",  CAT25_INFO(512 * 1024, 1, 256, 3, SPI_NOR_NO_ERASE | SPI_=
NOR_NO_FR) },
>  =

>  	/* Fujitsu */
>  	{ "mb85rs1mt", INFO(0x047f27, 0, 128 * 1024, 1, SPI_NOR_NO_ERASE) },
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
