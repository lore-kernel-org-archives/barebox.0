Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VEbmW-00052x-OS
 for barebox@lists.infradead.org; Wed, 28 Aug 2013 09:11:18 +0000
Date: Wed, 28 Aug 2013 11:10:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130828091047.GU30088@pengutronix.de>
References: <1377632568-3767-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1377632568-3767-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH] i.MX53: add imx53_add_mmc3
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Tue, Aug 27, 2013 at 09:42:48PM +0200, Eric B=E9nard wrote:
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/mach-imx/include/mach/devices-imx53.h | 5 +++++
>  1 file changed, 5 insertions(+)

Nice to see a patch from you again ;)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/ma=
ch-imx/include/mach/devices-imx53.h
> index df14654..4621c53 100644
> --- a/arch/arm/mach-imx/include/mach/devices-imx53.h
> +++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
> @@ -62,6 +62,11 @@ static inline struct device_d *imx53_add_mmc2(struct e=
sdhc_platform_data *pdata)
>  	return imx_add_esdhc((void *)MX53_ESDHC3_BASE_ADDR, 2, pdata);
>  }
>  =

> +static inline struct device_d *imx53_add_mmc3(struct esdhc_platform_data=
 *pdata)
> +{
> +	return imx_add_esdhc((void *)MX53_ESDHC4_BASE_ADDR, 3, pdata);
> +}
> +
>  static inline struct device_d *imx53_add_nand(struct imx_nand_platform_d=
ata *pdata)
>  {
>  	struct resource res[] =3D {
> -- =

> 1.8.3.1
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
