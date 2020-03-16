Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDnve-0006HP-M2
 for barebox@lists.infradead.org; Mon, 16 Mar 2020 11:29:08 +0000
Date: Mon, 16 Mar 2020 12:29:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200316112904.GN3335@pengutronix.de>
References: <005a346999484e40b638effd93982d1e930c0445.camel@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <005a346999484e40b638effd93982d1e930c0445.camel@googlemail.com>
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
Subject: Re: [PATCH] ARM: phytec-som-imx6: Add imx6dl with 512mb RAM
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org, Stefan =?iso-8859-15?Q?Riedm=FCller?= <s.riedmueller@phytec.de>

On Wed, Mar 11, 2020 at 12:06:29PM +0100, Christoph Fritz wrote:
> This patch adds support for a phyCORE-i.MX 6Solo/DualLight variant with
> 512mb RAM.
> =

> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> Signed-off-by: Stefan Riedm=FCller <s.riedmueller@phytec.de>
> ---

Applied, thanks

Sascha

>  .../flash-header-phytec-pcm058dl-512mb.imxcfg            | 9 +++++++++
>  arch/arm/boards/phytec-som-imx6/lowlevel.c               | 1 +
>  images/Makefile.imx                                      | 2 ++
>  3 files changed, 12 insertions(+)
>  create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-p=
cm058dl-512mb.imxcfg
> =

> diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl=
-512mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058d=
l-512mb.imxcfg
> new file mode 100644
> index 0000000000..5b92e5809c
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-512mb.=
imxcfg
> @@ -0,0 +1,9 @@
> +#define SETUP_MDCFG0			\
> +	wm 32 0x021b000c 0x3c409b85
> +
> +#define SETUP_MDASP_MDCTL		\
> +	wm 32 0x021b0040 0x00000017;	\
> +	wm 32 0x021b0000 0x83190000
> +
> +#include "flash-header-phytec-pcm058dl.h"
> +#include <mach/habv4-imx6-gencsf.h>
> diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards=
/phytec-som-imx6/lowlevel.c
> index 900aa19c19..2e38baa45d 100644
> --- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
> +++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
> @@ -111,6 +111,7 @@ PHYTEC_ENTRY(start_phytec_phyboard_subra_1gib_1bank, =
imx6q_phytec_phyboard_subra
>  PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_nand_256mb, imx6dl_phytec_p=
hycore_som_nand, SZ_256M, true);
>  PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_lc_nand_256mb, imx6dl_phyte=
c_phycore_som_lc_nand, SZ_256M, true);
>  PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_nand_1gib, imx6dl_phytec_ph=
ycore_som_nand, SZ_1G, true);
> +PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_emmc_512mb, imx6dl_phytec_p=
hycore_som_emmc, SZ_512M, true);
>  PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_emmc_1gib, imx6dl_phytec_ph=
ycore_som_emmc, SZ_1G, true);
>  PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_lc_emmc_1gib, imx6dl_phytec=
_phycore_som_lc_emmc, SZ_1G, true);
>  PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_nand_1gib, imx6q_phytec_phyc=
ore_som_nand, SZ_1G, true);
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 994fd951a0..708a9fbd24 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -293,6 +293,8 @@ $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX=
6, start_phytec_phycore_imx
>  =

>  $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phy=
core_imx6dl_som_lc_nand_256mb, phytec-som-imx6/flash-header-phytec-pcm058dl=
-256mb, phytec-phycore-imx6dl-som-lc-nand-256mb)
>  =

> +$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phy=
core_imx6dl_som_emmc_512mb, phytec-som-imx6/flash-header-phytec-pcm058dl-51=
2mb, phytec-phycore-imx6dl-som-emmc-512mb)
> +
>  $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phy=
core_imx6dl_som_emmc_1gib, phytec-som-imx6/flash-header-phytec-pcm058dl-1gi=
b, phytec-phycore-imx6dl-som-emmc-1gib)
>  =

>  $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phy=
core_imx6dl_som_lc_emmc_1gib, phytec-som-imx6/flash-header-phytec-pcm058dl-=
1gib, phytec-phycore-imx6dl-som-lc-emmc-1gib)
> -- =

> 2.20.1
> =

> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
