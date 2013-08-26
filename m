Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDqos-0006Wb-7v
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 07:02:35 +0000
Date: Mon, 26 Aug 2013 09:02:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130826070212.GC30088@pengutronix.de>
References: <1377499437-8738-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1377499437-8738-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH] ARM: OMAP: PCM051: Remove spi platform data
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Aug 26, 2013 at 08:43:57AM +0200, Teresa G=E1mez wrote:
> SPI NOR flash can be detected by driver so no platform data
> is necessary.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/pcm051/board.c |    6 ------
>  1 files changed, 0 insertions(+), 6 deletions(-)
> =

> diff --git a/arch/arm/boards/pcm051/board.c b/arch/arm/boards/pcm051/boar=
d.c
> index 1993f34..4a740c8 100644
> --- a/arch/arm/boards/pcm051/board.c
> +++ b/arch/arm/boards/pcm051/board.c
> @@ -66,11 +66,6 @@ static int pcm051_mem_init(void)
>  }
>  mem_initcall(pcm051_mem_init);
>  =

> -static struct flash_platform_data pcm051_spi_flash =3D {
> -	.name	=3D "m25p",
> -	.type	=3D "w25q64",
> -};
> -
>  /*
>  * SPI Flash works at 80Mhz however the SPI controller runs with 48MHz.
>  * So setup Max speed to be less than the controller speed.
> @@ -78,7 +73,6 @@ static struct flash_platform_data pcm051_spi_flash =3D {
>  static struct spi_board_info pcm051_spi_board_info[] =3D {
>  	{
>  		.name		=3D "m25p80",
> -		.platform_data	=3D &pcm051_spi_flash,
>  		.max_speed_hz	=3D 24000000,
>  		.bus_num	=3D 0,
>  		.chip_select	=3D 0,
> -- =

> 1.7.0.4
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
