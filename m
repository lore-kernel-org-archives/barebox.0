Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOCpK-000278-Tu
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 04:37:51 +0000
Date: Fri, 2 Oct 2020 06:37:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201002043748.GW11648@pengutronix.de>
References: <20201001094915.29005-1-y.bas@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201001094915.29005-1-y.bas@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] ARM: dts: imx6ul: phycore: Add phyCORE i.MX6 UL with
 eMMC
To: Yunus Bas <y.bas@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Oct 01, 2020 at 11:49:15AM +0200, Yunus Bas wrote:
> Add a phyCORE-i.MX 6UL with eMMC. It has following features:
>         - i.MX 6UL
>         - 512 MB RAM
>         - eMMC
>         - 10/100 MBits Ethernet
>         - USB OTG
>         - USB Host
> 
> Signed-off-by: Yunus Bas <y.bas@phytec.de>
> ---
> Changes in v2:
>  - Added missing include for the FIT-Image verification
> ---

Applied, thanks

Sascha

>  arch/arm/boards/phytec-som-imx6/lowlevel.c    |  1 +
>  arch/arm/dts/Makefile                         |  1 +
>  .../dts/imx6ul-phytec-phycore-som-emmc.dts    | 45 +++++++++++++++++++
>  images/Makefile.imx                           |  2 +
>  4 files changed, 49 insertions(+)
>  create mode 100644 arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
> 
> diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
> index 407115c2a..62a1c8de7 100644
> --- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
> +++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
> @@ -110,6 +110,7 @@ PHYTEC_ENTRY(start_phytec_phycore_imx6qp_som_nand_1gib, imx6qp_phytec_phycore_so
>  PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_1gib, imx6q_phytec_phycore_som_emmc, SZ_1G, true);
>  PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_2gib, imx6q_phytec_phycore_som_emmc, SZ_2G, true);
>  
> +PHYTEC_ENTRY(start_phytec_phycore_imx6ul_som_emmc_512mb, imx6ul_phytec_phycore_som_emmc, SZ_512M, false);
>  PHYTEC_ENTRY(start_phytec_phycore_imx6ul_som_nand_512mb, imx6ul_phytec_phycore_som_nand, SZ_512M, false);
>  PHYTEC_ENTRY(start_phytec_phycore_imx6ull_som_lc_nand_256mb, imx6ull_phytec_phycore_som_lc_nand, SZ_256M, false);
>  PHYTEC_ENTRY(start_phytec_phycore_imx6ull_som_nand_512mb, imx6ull_phytec_phycore_som_nand, SZ_512M, false);
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index af061bd29..37e0f07b9 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -67,6 +67,7 @@ lwl-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-phycard.dtb.o \
>  				imx6dl-phytec-phycore-som-emmc.dtb.o \
>  				imx6dl-phytec-phycore-som-lc-emmc.dtb.o \
>  				imx6ul-phytec-phycore-som-nand.dtb.o \
> +				imx6ul-phytec-phycore-som-emmc.dtb.o \
>  				imx6ull-phytec-phycore-som-lc-nand.dtb.o \
>  				imx6ull-phytec-phycore-som-nand.dtb.o \
>  				imx6ull-phytec-phycore-som-emmc.dtb.o
> diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
> new file mode 100644
> index 000000000..7d29c329a
> --- /dev/null
> +++ b/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
> @@ -0,0 +1,45 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> +/*
> + * Copyright (C) 2020 PHYTEC Messtechnik GmbH
> + * Author: Yunus Bas <y.bas@phytec.de>
> + */
> +
> +/dts-v1/;
> +#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
> +#include CONFIG_BOOTM_FITIMAGE_PUBKEY
> +#endif
> +#include <arm/imx6ul.dtsi>
> +#include "imx6ul-phytec-phycore-som.dtsi"
> +
> +/ {
> +	model = "PHYTEC phyCORE-i.MX6 Ultra Light SOM with eMMC";
> +	compatible = "phytec,imx6ul-pcl063-emmc", "fsl,imx6ul";
> +};
> +
> +&fec1 {
> +	status = "okay";
> +};
> +
> +&i2c1 {
> +	status = "okay";
> +};
> +
> +&uart1 {
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	status = "okay";
> +};
> +
> +&usbotg1 {
> +	status = "okay";
> +};
> +
> +&usbotg2 {
> +	status = "okay";
> +};
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 7b24e5fee..2327b8a0b 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -346,6 +346,8 @@ $(call build_imx_habv4img, CONFIG_MACH_GRINN_LITEBOARD, start_imx6ul_liteboard_5
>  
>  $(call build_imx_habv4img, CONFIG_MACH_NXP_IMX6ULL_EVK, start_nxp_imx6ull_evk, nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk, nxp-imx6ull-evk)
>  
> +$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6ul_som_emmc_512mb, phytec-som-imx6/flash-header-phytec-pcl063-512mb, phytec-phycore-imx6ul-emmc-512mb)
> +
>  $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6ul_som_nand_512mb, phytec-som-imx6/flash-header-phytec-pcl063-512mb, phytec-phycore-imx6ul-nand-512mb)
>  
>  $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6ull_som_lc_nand_256mb, phytec-som-imx6/flash-header-phytec-pcl063-256mb, phytec-phycore-imx6ull-lc-nand-256mb)
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
