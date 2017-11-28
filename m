Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eJaKq-0000YU-KZ
 for barebox@lists.infradead.ORG; Tue, 28 Nov 2017 07:29:48 +0000
Date: Tue, 28 Nov 2017 08:29:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171128072918.c6djomq7d3pydpz5@pengutronix.de>
References: <20171127063319.20094-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171127063319.20094-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] ARM: i.MX: bbu-internal: fix typos
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Nov 27, 2017 at 07:33:19AM +0100, Ulrich =D6lmann wrote:
> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx-bbu-internal.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx=
-bbu-internal.c
> index a8433ed901c0..887211d4ca8d 100644
> --- a/arch/arm/mach-imx/imx-bbu-internal.c
> +++ b/arch/arm/mach-imx/imx-bbu-internal.c
> @@ -407,7 +407,7 @@ static int __register_handler(struct imx_internal_bbu=
_handler *imx_handler)
>  }
>  =

>  /*
> - * Register a i.MX51 internal boot update handler for MMC/SD
> + * Register an i.MX51 internal boot update handler for MMC/SD
>   */
>  int imx51_bbu_internal_mmc_register_handler(const char *name, char *devi=
cefile,
>  		unsigned long flags)
> @@ -424,7 +424,7 @@ int imx51_bbu_internal_mmc_register_handler(const cha=
r *name, char *devicefile,
>  }
>  =

>  /*
> - * Register a i.MX53 internal boot update handler for MMC/SD
> + * Register an i.MX53 internal boot update handler for MMC/SD
>   */
>  int imx53_bbu_internal_mmc_register_handler(const char *name, char *devi=
cefile,
>  		unsigned long flags)
> @@ -441,7 +441,7 @@ int imx53_bbu_internal_mmc_register_handler(const cha=
r *name, char *devicefile,
>  }
>  =

>  /*
> - * Register a i.MX53 internal boot update handler for i2c/spi
> + * Register an i.MX53 internal boot update handler for i2c/spi
>   * EEPROMs / flashes. Nearly the same as MMC/SD, but we do not need to
>   * keep a partition table. We have to erase the device beforehand though.
>   */
> @@ -460,7 +460,7 @@ int imx53_bbu_internal_spi_i2c_register_handler(const=
 char *name, char *devicefi
>  }
>  =

>  /*
> - * Register a i.MX53 internal boot update handler for NAND
> + * Register an i.MX53 internal boot update handler for NAND
>   */
>  int imx53_bbu_internal_nand_register_handler(const char *name,
>  		unsigned long flags, int partition_size)
> @@ -479,7 +479,7 @@ int imx53_bbu_internal_nand_register_handler(const ch=
ar *name,
>  }
>  =

>  /*
> - * Register a i.MX6 internal boot update handler for MMC/SD
> + * Register an i.MX6 internal boot update handler for MMC/SD
>   */
>  int imx6_bbu_internal_mmc_register_handler(const char *name, char *devic=
efile,
>  		unsigned long flags)
> @@ -496,7 +496,7 @@ int imx6_bbu_internal_mmc_register_handler(const char=
 *name, char *devicefile,
>  }
>  =

>  /*
> - * Register a i.MX6 internal boot update handler for i2c/spi
> + * Register an i.MX6 internal boot update handler for i2c/spi
>   * EEPROMs / flashes. Nearly the same as MMC/SD, but we do not need to
>   * keep a partition table. We have to erase the device beforehand though.
>   */
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
