Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jtXRf-0001NX-Hm
 for barebox@lists.infradead.org; Thu, 09 Jul 2020 14:22:40 +0000
Date: Thu, 9 Jul 2020 16:22:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200709142237.GH15485@pengutronix.de>
References: <1594050861-161289-1-git-send-email-r.karszniewicz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1594050861-161289-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: Re: [PATCH] ARM: configs: Remove unused Kconfig symbol 'NAND_IMX_BBM'
To: Robert Karszniewicz <r.karszniewicz@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Jul 06, 2020 at 05:54:21PM +0200, Robert Karszniewicz wrote:
> This Kconfig symbol has been removed in
> 2ad441bb7e78 ("mtd: nand-imx: Create BBT automatically when necessary")
> 
> Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
> ---
>  arch/arm/configs/eukrea_cpuimx35_defconfig    | 1 -
>  arch/arm/configs/freescale-mx21-ads_defconfig | 1 -
>  arch/arm/configs/imx_defconfig                | 1 -
>  arch/arm/configs/imx_v7_defconfig             | 1 -
>  4 files changed, 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/configs/eukrea_cpuimx35_defconfig
> index bd19fc45aa11..b3d5741c6978 100644
> --- a/arch/arm/configs/eukrea_cpuimx35_defconfig
> +++ b/arch/arm/configs/eukrea_cpuimx35_defconfig
> @@ -74,7 +74,6 @@ CONFIG_MTD_RAW_DEVICE=y
>  CONFIG_NAND=y
>  CONFIG_NAND_ALLOW_ERASE_BAD=y
>  CONFIG_NAND_IMX=y
> -CONFIG_NAND_IMX_BBM=y
>  CONFIG_USB_HOST=y
>  CONFIG_USB_IMX_CHIPIDEA=y
>  CONFIG_USB_EHCI=y
> diff --git a/arch/arm/configs/freescale-mx21-ads_defconfig b/arch/arm/configs/freescale-mx21-ads_defconfig
> index 7dc8cb142687..e1843db3e24c 100644
> --- a/arch/arm/configs/freescale-mx21-ads_defconfig
> +++ b/arch/arm/configs/freescale-mx21-ads_defconfig
> @@ -36,5 +36,4 @@ CONFIG_DRIVER_CFI=y
>  CONFIG_CFI_BUFFER_WRITE=y
>  CONFIG_NAND=y
>  CONFIG_NAND_IMX=y
> -CONFIG_NAND_IMX_BBM=y
>  CONFIG_FS_TFTP=y
> diff --git a/arch/arm/configs/imx_defconfig b/arch/arm/configs/imx_defconfig
> index ede70d7eaf9a..02e33e122ec8 100644
> --- a/arch/arm/configs/imx_defconfig
> +++ b/arch/arm/configs/imx_defconfig
> @@ -90,7 +90,6 @@ CONFIG_NAND=y
>  # CONFIG_NAND_ECC_HW_SYNDROME is not set
>  CONFIG_NAND_ALLOW_ERASE_BAD=y
>  CONFIG_NAND_IMX=y
> -CONFIG_NAND_IMX_BBM=y
>  CONFIG_MTD_UBI=y
>  CONFIG_MTD_UBI_FASTMAP=y
>  CONFIG_USB_HOST=y
> diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
> index 5bf908ee850c..d89ac1e3490c 100644
> --- a/arch/arm/configs/imx_v7_defconfig
> +++ b/arch/arm/configs/imx_v7_defconfig
> @@ -143,7 +143,6 @@ CONFIG_MTD_SST25L=y
>  CONFIG_NAND=y
>  CONFIG_NAND_ALLOW_ERASE_BAD=y
>  CONFIG_NAND_IMX=y
> -CONFIG_NAND_IMX_BBM=y
>  CONFIG_NAND_MXS=y
>  CONFIG_MTD_UBI=y
>  CONFIG_MTD_UBI_FASTMAP=y
> -- 
> 2.7.4
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
