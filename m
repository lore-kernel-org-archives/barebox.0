Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S06iE-0005vJ-Hf
 for barebox@lists.infradead.org; Wed, 22 Feb 2012 07:34:07 +0000
Date: Wed, 22 Feb 2012 08:33:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120222073359.GL3852@pengutronix.de>
References: <1329784059-6006-1-git-send-email-eric@eukrea.com>
 <1329784059-6006-3-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1329784059-6006-3-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/7] i.MX53: add silicn revision functions
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 21, 2012 at 01:27:35AM +0100, Eric B=E9nard wrote:
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/mach-imx/imx53.c                   |   45 +++++++++++++++++++++=
++++++
>  arch/arm/mach-imx/include/mach/imx53-regs.h |    5 +++
>  2 files changed, 50 insertions(+), 0 deletions(-)
> =

> diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
> index 4f7d1cb..acb9d49 100644
> --- a/arch/arm/mach-imx/imx53.c
> +++ b/arch/arm/mach-imx/imx53.c
> @@ -37,6 +37,51 @@ void *imx_gpio_base[] =3D {
>  =

>  int imx_gpio_count =3D ARRAY_SIZE(imx_gpio_base) * 32;
>  =

> +#define SI_REV 0x48
> +
> +static u32 mx53_silicon_revision;
> +static char *mx53_rev_string =3D "unknown";
> +
> +int imx_silicon_revision(void)
> +{
> +	return mx53_silicon_revision;
> +}
> +
> +static int query_silicon_revision(void)
> +{
> +	void __iomem *rom =3D MX53_IROM_BASE_ADDR;
> +	u32 rev;
> +
> +	rev =3D readl(rom + SI_REV);
> +	switch (rev) {
> +	case 0x10:
> +		mx53_silicon_revision =3D MX53_CHIP_REV_1_0;
> +		mx53_rev_string =3D "1.0";
> +		break;
> +	case 0x20:
> +		mx53_silicon_revision =3D MX53_CHIP_REV_2_0;
> +		mx53_rev_string =3D "2.0";
> +		break;
> +	case 0x21:
> +		mx53_silicon_revision =3D MX53_CHIP_REV_2_1;
> +		mx53_rev_string =3D "2.1";
> +		break;
> +	default:
> +		mx53_silicon_revision =3D 0;
> +	}
> +
> +	return 0;
> +}
> +core_initcall(query_silicon_revision);
> +
> +static int imx53_print_silicon_rev(void)
> +{
> +	printf("detected i.MX53 rev %s\n", mx53_rev_string);
> +
> +	return 0;
> +}
> +device_initcall(imx53_print_silicon_rev);
> +
>  static int imx53_init(void)
>  {
>  	add_generic_device("imx_iim", 0, NULL, MX53_IIM_BASE_ADDR, SZ_4K,
> diff --git a/arch/arm/mach-imx/include/mach/imx53-regs.h b/arch/arm/mach-=
imx/include/mach/imx53-regs.h
> index 8fefc54..065bf08 100644
> --- a/arch/arm/mach-imx/include/mach/imx53-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx53-regs.h
> @@ -135,5 +135,10 @@
>  #define MX53_CS2_96MB_BASE_ADDR		0xF6000000
>  #define MX53_CS3_BASE_ADDR		0xF6000000
>  =

> +/* silicon revisions specific to i.MX53 */
> +#define MX53_CHIP_REV_1_0	0x10
> +#define MX53_CHIP_REV_2_0	0x20
> +#define MX53_CHIP_REV_2_1	0x21

Can you please add the chip revisions to imx-regs.h and replace the
MX53_ prefix with a IMX_ prefix? They are the same for all i.MX SoCs.
We can then let the other SoCs use these defines later.

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
