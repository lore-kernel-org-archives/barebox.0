Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tm0d1-0000iI-9P
 for barebox@lists.infradead.org; Fri, 21 Dec 2012 11:19:02 +0000
Date: Fri, 21 Dec 2012 12:18:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121221111856.GO26326@pengutronix.de>
References: <1356012890-14822-1-git-send-email-wjatscheslaw.stoljarski@kiwigrid.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1356012890-14822-1-git-send-email-wjatscheslaw.stoljarski@kiwigrid.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] MFD MC34708: Add dependence on SPI
To: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 20, 2012 at 03:14:50PM +0100, Wjatscheslaw Stoljarski (Slawa) wrote:
> From: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
> 
> MC34708 depend on I2C or SPI, so let driver depend on SPI too
> and rename config option name to MFD_MC34708.
> 
> Signed-off-by: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>

Applied, thanks

Sascha

> ---
>  arch/arm/configs/freescale_mx53_loco_defconfig |    2 +-
>  drivers/mfd/Kconfig                            |    4 ++--
>  drivers/mfd/Makefile                           |    2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/configs/freescale_mx53_loco_defconfig b/arch/arm/configs/freescale_mx53_loco_defconfig
> index b61f0cf..fb6fcf8 100644
> --- a/arch/arm/configs/freescale_mx53_loco_defconfig
> +++ b/arch/arm/configs/freescale_mx53_loco_defconfig
> @@ -79,7 +79,7 @@ CONFIG_USB_STORAGE=y
>  CONFIG_MCI=y
>  CONFIG_MCI_STARTUP=y
>  CONFIG_MCI_IMX_ESDHC=y
> -CONFIG_I2C_MC34708=y
> +CONFIG_MFD_MC34708=y
>  CONFIG_WATCHDOG=y
>  CONFIG_WATCHDOG_IMX=y
>  CONFIG_FS_TFTP=y
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index 20eef86..a253de3 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -8,8 +8,8 @@ config I2C_MC34704
>  	depends on I2C
>  	bool "MC34704 PMIC driver"
>  
> -config I2C_MC34708
> -	depends on I2C
> +config MFD_MC34708
> +	depends on I2C || SPI
>  	bool "MC34708 PMIC driver"
>  
>  config I2C_MC9SDZ60
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index 792ae2d..a242eaf 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -1,6 +1,6 @@
>  obj-$(CONFIG_MFD_MC13XXX) += mc13xxx.o
>  obj-$(CONFIG_I2C_MC34704) += mc34704.o
> -obj-$(CONFIG_I2C_MC34708) += mc34708.o
> +obj-$(CONFIG_MFD_MC34708) += mc34708.o
>  obj-$(CONFIG_I2C_MC9SDZ60) += mc9sdz60.o
>  obj-$(CONFIG_I2C_LP3972) += lp3972.o
>  obj-$(CONFIG_I2C_TWLCORE) += twl-core.o
> -- 
> 1.7.9.5
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
