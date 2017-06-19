Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMq53-00052i-E0
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 06:22:35 +0000
Date: Mon, 19 Jun 2017 08:21:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170619062151.cmqzrhdogximvyte@pengutronix.de>
References: <20170614185705.20804-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170614185705.20804-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] mtd: spi-nor: sync definition of Spansion chips from Linux
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 14, 2017 at 08:57:05PM +0200, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 22 ++++++++++++----------
>  1 file changed, 12 insertions(+), 10 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 3f1def66c6c1..fb13cd12694a 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -557,28 +557,30 @@ static const struct spi_device_id spi_nor_ids[] =3D=
 {
>  	 * for the chips listed here (without boot sectors).
>  	 */
>  	{ "s25sl032p",  INFO(0x010215, 0x4d00,  64 * 1024,  64, SPI_NOR_DUAL_RE=
AD | SPI_NOR_QUAD_READ) },
> -	{ "s25sl064p",  INFO(0x010216, 0x4d00,  64 * 1024, 128, 0) },
> +	{ "s25sl064p",  INFO(0x010216, 0x4d00,  64 * 1024, 128, SPI_NOR_DUAL_RE=
AD | SPI_NOR_QUAD_READ) },
>  	{ "s25fl256s0", INFO(0x010219, 0x4d00, 256 * 1024, 128, 0) },
>  	{ "s25fl256s1", INFO(0x010219, 0x4d01,  64 * 1024, 512, SPI_NOR_DUAL_RE=
AD | SPI_NOR_QUAD_READ) },
>  	{ "s25fl512s",  INFO(0x010220, 0x4d00, 256 * 1024, 256, SPI_NOR_DUAL_RE=
AD | SPI_NOR_QUAD_READ) },
>  	{ "s70fl01gs",  INFO(0x010221, 0x4d00, 256 * 1024, 256, 0) },
>  	{ "s25sl12800", INFO(0x012018, 0x0300, 256 * 1024,  64, 0) },
>  	{ "s25sl12801", INFO(0x012018, 0x0301,  64 * 1024, 256, 0) },
> -	{ "s25fl128s",	INFO6(0x012018, 0x4d0180, 64 * 1024, 256, SPI_NOR_QUAD_R=
EAD) },
> -	{ "s25fl129p0", INFO(0x012018, 0x4d00, 256 * 1024,  64, 0) },
> -	{ "s25fl129p1", INFO(0x012018, 0x4d01,  64 * 1024, 256, 0) },
> +	{ "s25fl128s",	INFO6(0x012018, 0x4d0180, 64 * 1024, 256, SPI_NOR_DUAL_R=
EAD | SPI_NOR_QUAD_READ) },
> +	{ "s25fl129p0", INFO(0x012018, 0x4d00, 256 * 1024,  64, SPI_NOR_DUAL_RE=
AD | SPI_NOR_QUAD_READ) },
> +	{ "s25fl129p1", INFO(0x012018, 0x4d01,  64 * 1024, 256, SPI_NOR_DUAL_RE=
AD | SPI_NOR_QUAD_READ) },
>  	{ "s25sl004a",  INFO(0x010212,      0,  64 * 1024,   8, 0) },
>  	{ "s25sl008a",  INFO(0x010213,      0,  64 * 1024,  16, 0) },
>  	{ "s25sl016a",  INFO(0x010214,      0,  64 * 1024,  32, 0) },
>  	{ "s25sl032a",  INFO(0x010215,      0,  64 * 1024,  64, 0) },
>  	{ "s25sl064a",  INFO(0x010216,      0,  64 * 1024, 128, 0) },
> -	{ "s25fl008k",  INFO(0xef4014,      0,  64 * 1024,  16, SECT_4K) },
> -	{ "s25fl016k",  INFO(0xef4015,      0,  64 * 1024,  32, SECT_4K) },
> +	{ "s25fl004k",  INFO(0xef4013,      0,  64 * 1024,   8, SECT_4K | SPI_N=
OR_DUAL_READ | SPI_NOR_QUAD_READ) },
> +	{ "s25fl008k",  INFO(0xef4014,      0,  64 * 1024,  16, SECT_4K | SPI_N=
OR_DUAL_READ | SPI_NOR_QUAD_READ) },
> +	{ "s25fl016k",  INFO(0xef4015,      0,  64 * 1024,  32, SECT_4K | SPI_N=
OR_DUAL_READ | SPI_NOR_QUAD_READ) },
>  	{ "s25fl064k",  INFO(0xef4017,      0,  64 * 1024, 128, SECT_4K) },
> -	{ "s25fl116k",  INFO(0x014015,      0,  64 * 1024,  32, SECT_4K) },
> -	{ "s25fl132k",  INFO(0x014016,      0,  64 * 1024,  64, 0) },
> -	{ "s25fl204k",  INFO(0x014013,      0,  64 * 1024,   8, SECT_4K) },
> -	{ "s25fl208k",  INFO(0x014014,      0,  64 * 1024,  16, SECT_4K) },
> +	{ "s25fl116k",  INFO(0x014015,      0,  64 * 1024,  32, SECT_4K | SPI_N=
OR_DUAL_READ | SPI_NOR_QUAD_READ) },
> +	{ "s25fl132k",  INFO(0x014016,      0,  64 * 1024,  64, SECT_4K) },
> +	{ "s25fl164k",  INFO(0x014017,      0,  64 * 1024, 128, SECT_4K) },
> +	{ "s25fl204k",  INFO(0x014013,      0,  64 * 1024,   8, SECT_4K | SPI_N=
OR_DUAL_READ) },
> +	{ "s25fl208k",  INFO(0x014014,      0,  64 * 1024,  16, SECT_4K | SPI_N=
OR_DUAL_READ) },
>  =

>  	/* SST -- large erase sizes are "overlays", "sectors" are 4K */
>  	{ "sst25vf040b", INFO(0xbf258d, 0, 64 * 1024,  8, SECT_4K | SST_WRITE) =
},
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
