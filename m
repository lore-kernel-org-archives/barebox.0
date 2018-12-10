Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWHjA-0006JG-DO
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 09:19:50 +0000
Date: Mon, 10 Dec 2018 10:19:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181210091933.3lrzl5efmrn2v3p3@pengutronix.de>
References: <20181207161732.16561-1-florian.baeuerle@allegion.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181207161732.16561-1-florian.baeuerle@allegion.com>
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
Subject: Re: [PATCH] phycard-imx27: add support for 64MB RAM variants
To: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, Dec 07, 2018 at 04:17:53PM +0000, Baeuerle, Florian wrote:
> Some older pca100 boards were available with 64MB RAM. The chips
> require a slightly different sdram controller initialization. Support
> this by building bootloader images for both variants.
> =

> Signed-off-by: Florian B=E4uerle <florian.baeuerle@allegion.com>
> ---
>  arch/arm/boards/phytec-phycard-imx27/lowlevel.c | 52 +++++++++++++++++++=
------
>  images/Makefile.imx                             | 10 +++--
>  2 files changed, 48 insertions(+), 14 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c b/arch/arm/b=
oards/phytec-phycard-imx27/lowlevel.c
> index e1132e0..1e96c08 100644
> --- a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
> +++ b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
> @@ -15,11 +15,30 @@
>  #include <mach/esdctl.h>
>  #include <mach/imx-nand.h>
>  =

> -#define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
> +enum {
> +	PHYCARD_MICRON_64MB,
> +	PHYCARD_MICRON_128MB,
> +};
>  =

> -static void sdram_init(void)
> +#define ESDCTL0_VAL_64MB (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL9)
> +#define ESDCFG0_VAL_64MB 0x00696429
> +#define ESDCTL0_VAL_128MB (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
> +#define ESDCFG0_VAL_128MB 0x006ac73a
> +
> +static void sdram_init(int sdram)
>  {
>  	int i;
> +	unsigned esdcfg, esdctl;
> +
> +	if (sdram =3D=3D PHYCARD_MICRON_64MB) {
> +		esdcfg =3D ESDCFG0_VAL_64MB;
> +		esdctl =3D ESDCTL0_VAL_64MB;
> +	} else if (sdram =3D=3D PHYCARD_MICRON_128MB) {
> +		esdcfg =3D ESDCFG0_VAL_128MB;
> +		esdctl =3D ESDCTL0_VAL_128MB;
> +	} else {
> +		hang();
> +	}
>  =

>  	/*
>  	 * DDR on CSD0
> @@ -36,29 +55,29 @@ static void sdram_init(void)
>  =

>  	/* Initial reset */
>  	writel(0x00000004, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC);
> -	writel(0x006ac73a, MX27_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
> +	writel(esdcfg, MX27_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
>  =

>  	/* precharge CSD0 all banks */
> -	writel(ESDCTL0_VAL | ESDCTL0_SMODE_PRECHARGE,
> +	writel(esdctl | ESDCTL0_SMODE_PRECHARGE,
>  			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
>  	writel(0x00000000, 0xa0000f00);	/* CSD0 precharge address (A10 =3D 1) */
> -	writel(ESDCTL0_VAL | ESDCTL0_SMODE_AUTO_REFRESH,
> +	writel(esdctl | ESDCTL0_SMODE_AUTO_REFRESH,
>  			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
>  =

>  	for (i =3D 0; i < 8; i++)
>  		writel(0, 0xa0000f00);
>  =

> -	writel(ESDCTL0_VAL | ESDCTL0_SMODE_LOAD_MODE,
> +	writel(esdctl | ESDCTL0_SMODE_LOAD_MODE,
>  			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
>  	writeb(0xda, 0xa0000033);
>  	writeb(0xff, 0xa1000000);
>  =

> -	writel(ESDCTL0_VAL | ESDCTL0_DSIZ_31_0 | ESDCTL0_REF4 |
> +	writel(esdctl | ESDCTL0_DSIZ_31_0 | ESDCTL0_REF4 |
>  			ESDCTL0_BL | ESDCTL0_SMODE_NORMAL,
>  			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
>  }
>  =

> -void __bare_init __naked phytec_phycard_imx27_common_init(void *fdt)
> +void __bare_init __naked phytec_phycard_imx27_common_init(void *fdt, int=
 sdram)
>  {
>  	unsigned long r;
>  =

> @@ -96,14 +115,25 @@ void __bare_init __naked phytec_phycard_imx27_common=
_init(void *fdt)
>  		MX27_CSCR_SSI1_SEL | MX27_CSCR_H264_SEL |
>  		MX27_CSCR_MSHC_SEL, MX27_CCM_BASE_ADDR + MX27_CSCR);
>  =

> -	sdram_init();
> +	sdram_init(sdram);
>  =

>  	imx27_barebox_boot_nand_external(fdt);
>  }
>  =

>  extern char __dtb_imx27_phytec_phycard_s_rdk_bb_start[];
>  =

> -ENTRY_FUNCTION(start_phytec_phycard_imx27, r0, r1, r2)
> +ENTRY_FUNCTION(start_phytec_phycard_imx27_64mb, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 12);
> +
> +	fdt =3D __dtb_imx27_phytec_phycard_s_rdk_bb_start + get_runtime_offset(=
);
> +
> +	phytec_phycard_imx27_common_init(fdt, PHYCARD_MICRON_64MB);
> +}
> +
> +ENTRY_FUNCTION(start_phytec_phycard_imx27_128mb, r0, r1, r2)
>  {
>  	void *fdt;
>  =

> @@ -111,5 +141,5 @@ ENTRY_FUNCTION(start_phytec_phycard_imx27, r0, r1, r2)
>  =

>  	fdt =3D __dtb_imx27_phytec_phycard_s_rdk_bb_start + get_runtime_offset(=
);
>  =

> -	phytec_phycard_imx27_common_init(fdt);
> +	phytec_phycard_imx27_common_init(fdt, PHYCARD_MICRON_128MB);
>  }
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 9b5cd57..81df88e 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -43,9 +43,13 @@ CFG_start_imx25_karo_tx25.pblx.imximg =3D $(board)/kar=
o-tx25/flash-header-tx25.imx
>  FILE_barebox-karo-tx25-internal.img =3D start_imx25_karo_tx25.pblx.imximg
>  image-$(CONFIG_MACH_TX25) +=3D barebox-karo-tx25-internal.img
>  =

> -pblx-$(CONFIG_MACH_PCA100) +=3D start_phytec_phycard_imx27
> -FILE_barebox-phytec-phycard-imx27.img =3D start_phytec_phycard_imx27.pblx
> -image-$(CONFIG_MACH_PCA100) +=3D barebox-phytec-phycard-imx27.img
> +pblx-$(CONFIG_MACH_PCA100) +=3D start_phytec_phycard_imx27_64mb
> +FILE_barebox-phytec-phycard-imx27-64mb.img =3D start_phytec_phycard_imx2=
7_64mb.pblx
> +image-$(CONFIG_MACH_PCA100) +=3D barebox-phytec-phycard-imx27-64mb.img
> +
> +pblx-$(CONFIG_MACH_PCA100) +=3D start_phytec_phycard_imx27_128mb
> +FILE_barebox-phytec-phycard-imx27-128mb.img =3D start_phytec_phycard_imx=
27_128mb.pblx
> +image-$(CONFIG_MACH_PCA100) +=3D barebox-phytec-phycard-imx27-128mb.img
>  =

>  pblx-$(CONFIG_MACH_PCM038) +=3D start_phytec_phycore_imx27
>  FILE_barebox-phytec-phycore-imx27.img =3D start_phytec_phycore_imx27.pblx
> -- =

> 1.8.3.1
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
