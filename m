Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibic9-0005cT-JQ
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 10:07:35 +0000
Date: Mon, 2 Dec 2019 11:07:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191202100731.zz63c2vsco34x2qb@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
 <20191129151505.23946-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129151505.23946-2-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 01/39] ARM: imx: add image type choice
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 29, 2019 at 04:14:27PM +0100, Lucas Stach wrote:
> ARM32 and ARM64 boards can not be built into the same image. Make this
> clear by adding a choice for the different image types. While at it
> add a single board option.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/mach-imx/Kconfig | 56 +++++++++++++++++++++++++--------------
>  1 file changed, 36 insertions(+), 20 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 6e98e95dbb00..f39d58ecefb2 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -199,10 +199,22 @@ config ARCH_VF610
>  	select IMX_OCOTP	# Needed for clock adjustement
>  	select CLOCKSOURCE_ARM_GLOBAL_TIMER
>  
> +choice
> +	prompt "Build type"
> +
>  config IMX_MULTI_BOARDS
> -	bool "Allow multiple boards to be selected"
> +	bool "Allow multiple ARM32 boards to be selected"
> +	select HAVE_PBL_MULTI_IMAGES
> +
> +config IMX_MULTI_BOARDS64
> +	bool "Allow multiple ARM64 boards to be selected"
>  	select HAVE_PBL_MULTI_IMAGES
>  
> +config IMX_SINGLE_BOARD
> +	bool "Select single board (legacy)"
> +
> +endchoice

This breaks several defconfigs that now have the wrong default for this
choice:

cupid_defconfig
eukrea_cpuimx25_defconfig
eukrea_cpuimx27_defconfig
eukrea_cpuimx35_defconfig
eukrea_cpuimx51_defconfig
freescale-mx21-ads_defconfig
freescale-mx25-3ds_defconfig
freescale-mx27-ads_defconfig
freescale-mx35-3ds_defconfig
freescale-mx53-smd_defconfig
imx_v8_defconfig
kindle3_defconfig
neso_defconfig
phytec-phycore-imx31_defconfig
phytec-phycore-imx35_defconfig
tx51stk5_defconfig

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
