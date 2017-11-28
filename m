Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eJaL0-0000Yq-KX
 for barebox@lists.infradead.ORG; Tue, 28 Nov 2017 07:29:59 +0000
Date: Tue, 28 Nov 2017 08:29:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171128072930.2fey2ev6dr4lu4z7@pengutronix.de>
References: <20171126070446.12266-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171126070446.12266-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] ARM: i.MX: bbu-internal: fix comment
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, Nov 26, 2017 at 08:04:46AM +0100, Ulrich =D6lmann wrote:
> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx-bbu-internal.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =


Applied, thanks

Sascha

> diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx=
-bbu-internal.c
> index 51ec8b8270f9..a8433ed901c0 100644
> --- a/arch/arm/mach-imx/imx-bbu-internal.c
> +++ b/arch/arm/mach-imx/imx-bbu-internal.c
> @@ -496,7 +496,7 @@ int imx6_bbu_internal_mmc_register_handler(const char=
 *name, char *devicefile,
>  }
>  =

>  /*
> - * Register a i.MX53 internal boot update handler for i2c/spi
> + * Register a i.MX6 internal boot update handler for i2c/spi
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
