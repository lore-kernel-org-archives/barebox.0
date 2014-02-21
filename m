Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGr6Q-00058G-P1
 for barebox@lists.infradead.org; Fri, 21 Feb 2014 14:29:23 +0000
Date: Fri, 21 Feb 2014 15:28:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140221142856.GJ17250@pengutronix.de>
References: <1392939087-32184-1-git-send-email-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1392939087-32184-1-git-send-email-festevam@gmail.com>
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
Subject: Re: [PATCH v2 1/2] ARM: i.MX6: sabresd: switch to multiboard support
To: Fabio Estevam <festevam@gmail.com>
Cc: Fabio Estevam <fabio.estevam@freescale.com>, barebox@lists.infradead.org

Hi Fabio,

It seems you are just a little bit too late: We already have this in
-next:

commit d7db7df1879e17d547e123f9a56abeac26aab203
Author: Lucas Stach <l.stach@pengutronix.de>
Date:   Mon Feb 17 13:04:12 2014 +0100

    ARM: i.MX6: sabresd: switch to multi-image
    
    Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

On Thu, Feb 20, 2014 at 08:31:26PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <fabio.estevam@freescale.com>
> 
> Add multiboard support for mx6sabresd.
> 
> Signed-off-by: Fabio Estevam <fabio.estevam@freescale.com>
> ---
> Changes since v1:
> - None
> 
>  arch/arm/boards/freescale-mx6-sabresd/board.c    | 13 +++++++++++--
>  arch/arm/configs/freescale-mx6-sabresd_defconfig |  2 +-
>  arch/arm/mach-imx/Kconfig                        | 10 ++++++----
>  3 files changed, 18 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boards/freescale-mx6-sabresd/board.c
> index c87b555..4917943 100644
> --- a/arch/arm/boards/freescale-mx6-sabresd/board.c
> +++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
> @@ -81,6 +81,9 @@ static void sabresd_phy_reset(void)
>  
>  static int sabresd_devices_init(void)
>  {
> +	if (!of_machine_is_compatible("fsl,imx6q-sabresd"))
> +		return 0;
> +
>  	armlinux_set_architecture(3980);
>  
>  	devfs_add_partition("disk0", 0, SZ_1M, DEVFS_PARTITION_FIXED, "self0");
> @@ -91,6 +94,9 @@ device_initcall(sabresd_devices_init);
>  
>  static int sabresd_coredevices_init(void)
>  {
> +	if (!of_machine_is_compatible("fsl,imx6q-sabresd"))
> +		return 0;
> +
>  	sabresd_phy_reset();
>  
>  	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
> @@ -104,12 +110,15 @@ static int sabresd_coredevices_init(void)
>   */
>  fs_initcall(sabresd_coredevices_init);
>  
> -static int sabresd_core_init(void)
> +static int sabresd_postcore_init(void)
>  {
> +	if (!of_machine_is_compatible("fsl,imx6q-sabresd"))
> +		return 0;
> +
>  	imx6_init_lowlevel();
>  
>  	barebox_set_hostname("sabresd");
>  
>  	return 0;
>  }
> -core_initcall(sabresd_core_init);
> +postcore_initcall(sabresd_postcore_init);
> diff --git a/arch/arm/configs/freescale-mx6-sabresd_defconfig b/arch/arm/configs/freescale-mx6-sabresd_defconfig
> index a2a7dcc..9fd3ce2 100644
> --- a/arch/arm/configs/freescale-mx6-sabresd_defconfig
> +++ b/arch/arm/configs/freescale-mx6-sabresd_defconfig
> @@ -1,5 +1,5 @@
>  CONFIG_ARCH_IMX=y
> -CONFIG_ARCH_IMX6=y
> +CONFIG_IMX_MULTI_BOARDS=y
>  CONFIG_MACH_SABRESD=y
>  CONFIG_IMX_IIM=y
>  CONFIG_IMX_IIM_FUSE_BLOW=y
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 5933f81..706b02d 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -225,6 +225,12 @@ config MACH_SABRELITE
>  	select HAVE_DEFAULT_ENVIRONMENT_NEW
>  	select HAVE_PBL_MULTI_IMAGES
>  
> +config MACH_SABRESD
> +	bool "Freescale i.MX6 SabreSD"
> +	select ARCH_IMX6
> +	select HAVE_DEFAULT_ENVIRONMENT_NEW
> +	select HAVE_PBL_MULTI_IMAGES
> +
>  config MACH_NITROGEN6X
>  	bool "BoundaryDevices Nitrogen6x"
>  	select ARCH_IMX6
> @@ -452,10 +458,6 @@ config MACH_MX6Q_ARM2
>  	bool "Freescale i.MX6q Armadillo2"
>  	select ARCH_IMX6
>  
> -config MACH_SABRESD
> -	bool "Freescale i.MX6 SabreSD"
> -	select ARCH_IMX6
> -
>  endchoice
>  
>  # ----------------------------------------------------------
> -- 
> 1.8.1.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
