Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c9U6T-00036c-7P
 for barebox@lists.infradead.org; Wed, 23 Nov 2016 09:44:34 +0000
Date: Wed, 23 Nov 2016 10:44:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161123094411.35wbx2wmyv6i5ahz@pengutronix.de>
References: <7189a1ce-2633-97a4-464d-ae95736135bc@systec-electronic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7189a1ce-2633-97a4-464d-ae95736135bc@systec-electronic.com>
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
Subject: Re: [PATCHv2] ARM: i.MX25/35: Fix bootsource detection
To: Daniel =?iso-8859-15?Q?Kr=FCger?= <daniel.krueger@systec-electronic.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 22, 2016 at 12:08:45PM +0100, Daniel Kr=FCger wrote:
> This fixes commit 0b47f95340d801a26643e5e1f4ee05287e8ae90e for i.MX25/35.
> Otherwise the bootsource was just "unknown".
> =

> Signed-off-by: Daniel Krueger <daniel.krueger@systec-electronic.com>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/boot.c |   12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> =

> diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> index b66c29d..4893060 100644
> --- a/arch/arm/mach-imx/boot.c
> +++ b/arch/arm/mach-imx/boot.c
> @@ -69,13 +69,13 @@ static const enum bootsource locations[4][4] =3D {
>   * Note also that I suspect that the boot source pins are only sampled at
>   * power up.
>   */
> -static void imx25_35_boot_save_loc(unsigned int ctrl, unsigned int type)
> +static enum bootsource imx25_35_boot_source(unsigned int ctrl, unsigned =
int type)
>  {
>  	enum bootsource src;
>  =

>  	src =3D locations[ctrl][type];
>  =

> -	bootsource_set(src);
> +	return src;
>  }
>  =

>  void imx25_get_boot_source(enum bootsource *src, int *instance)
> @@ -84,8 +84,8 @@ void imx25_get_boot_source(enum bootsource *src, int *i=
nstance)
>  	uint32_t val;
>  =

>  	val =3D readl(ccm_base + MX25_CCM_RCSR);
> -	imx25_35_boot_save_loc((val >> MX25_CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
> -			       (val >> MX25_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
> +	*src =3D imx25_35_boot_source((val >> MX25_CCM_RCSR_MEM_CTRL_SHIFT) & 0=
x3,
> +				    (val >> MX25_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
>  }
>  =

>  void imx25_boot_save_loc(void)
> @@ -105,8 +105,8 @@ void imx35_get_boot_source(enum bootsource *src, int =
*instance)
>  	uint32_t val;
>  =

>  	val =3D readl(ccm_base + MX35_CCM_RCSR);
> -	imx25_35_boot_save_loc((val >> MX35_CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
> -			       (val >> MX35_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
> +	*src =3D imx25_35_boot_source((val >> MX35_CCM_RCSR_MEM_CTRL_SHIFT) & 0=
x3,
> +				    (val >> MX35_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
>  }
>  =

>  void imx35_boot_save_loc(void)
> -- =

> 1.7.9.5
> =

> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
