Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyX1g-0005Bv-TY
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 08:24:14 +0000
Date: Mon, 3 Feb 2020 09:24:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200203082411.choxtqq5q5ritznp@pengutronix.de>
References: <20200130180053.30000-1-m.grzeschik@pengutronix.de>
 <20200130180053.30000-2-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200130180053.30000-2-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH v2 2/3] regulator: pfuze: add support to other
 architectures
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jan 30, 2020 at 07:00:52PM +0100, Michael Grzeschik wrote:
> Currently the pfuze driver is build dependent to ARCH_IMX6. To make it
> possible to work with ARCH_IMX8 we move the imx6_poweroff call to an own
> poweroff handler.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
> v1 -> v2: - added static inline wrapper for pfuze_register_init_callback
>           - moved the poweroff handler registration to pfuze init callback
> 	  - registering pfuze init callback from imx6_init
> 
>  arch/arm/mach-imx/imx6.c              | 12 +++++++++---
>  arch/arm/mach-imx/include/mach/imx6.h |  4 +++-
>  drivers/regulator/Kconfig             |  2 +-
>  drivers/regulator/pfuze.c             |  2 --
>  include/mfd/pfuze.h                   | 13 +++++++++++++
>  5 files changed, 26 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> index ef6a57b5cd..6a9ea23c71 100644
> --- a/arch/arm/mach-imx/imx6.c
> +++ b/arch/arm/mach-imx/imx6.c
> @@ -28,8 +28,7 @@
>  #include <mach/usb.h>
>  #include <asm/mmu.h>
>  #include <asm/cache-l2x0.h>
> -
> -#include <poweroff.h>
> +#include <mfd/pfuze.h>
>  
>  #define CLPCR				0x54
>  #define BP_CLPCR_LPM(mode)		((mode) & 0x3)
> @@ -205,6 +204,11 @@ u64 imx6_uid(void)
>  	return imx_ocotp_read_uid(IOMEM(MX6_OCOTP_BASE_ADDR));
>  }
>  
> +static void imx6_register_poweroff_init(struct regmap *map)
> +{
> +	poweroff_handler_register_fn(imx6_pm_stby_poweroff);
> +}
> +
>  int imx6_init(void)
>  {
>  	const char *cputypestr;
> @@ -262,6 +266,8 @@ int imx6_init(void)
>  	imx6_setup_ipu_qos();
>  	imx6ul_enet_clk_init();
>  
> +	pfuze_register_init_callback(imx6_register_poweroff_init);
> +
>  	return 0;
>  }
>  
> @@ -395,7 +401,7 @@ static int imx6_fixup_cpus_register(void)
>  }
>  device_initcall(imx6_fixup_cpus_register);
>  
> -void __noreturn imx6_pm_stby_poweroff(void)
> +void __noreturn imx6_pm_stby_poweroff(struct poweroff_handler *handler)
>  {
>  	void *ccm_base = IOMEM(MX6_CCM_BASE_ADDR);
>  	void *gpc_base = IOMEM(MX6_GPC_BASE_ADDR);
> diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
> index f0d20833fd..5560774de9 100644
> --- a/arch/arm/mach-imx/include/mach/imx6.h
> +++ b/arch/arm/mach-imx/include/mach/imx6.h
> @@ -6,7 +6,9 @@
>  #include <mach/imx6-regs.h>
>  #include <mach/revision.h>
>  
> -void __noreturn imx6_pm_stby_poweroff(void);
> +#include <poweroff.h>
> +
> +void __noreturn imx6_pm_stby_poweroff(struct poweroff_handler *handler);
>  
>  #define IMX6_ANATOP_SI_REV 0x260
>  #define IMX6SL_ANATOP_SI_REV 0x280
> diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
> index 28bd69a2a5..f47a115da2 100644
> --- a/drivers/regulator/Kconfig
> +++ b/drivers/regulator/Kconfig
> @@ -19,7 +19,7 @@ config REGULATOR_BCM283X
>  config REGULATOR_PFUZE
>  	bool "Freescale PFUZE100/200/3000 regulator driver"
>  	depends on I2C
> -	depends on ARCH_IMX6
> +	depends on ARCH_IMX6 || ARCH_IMX8MQ
>  
>  config REGULATOR_STPMIC1
>  	tristate "STMicroelectronics STPMIC1 PMIC Regulators"
> diff --git a/drivers/regulator/pfuze.c b/drivers/regulator/pfuze.c
> index 55f7eb5d4c..91aaec0e7e 100644
> --- a/drivers/regulator/pfuze.c
> +++ b/drivers/regulator/pfuze.c
> @@ -142,8 +142,6 @@ static void pfuze_power_off_prepare(struct poweroff_handler *handler)
>  	regmap_write_bits(pfuze_dev->map, PFUZE100_VGEN6VOL,
>  			  PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
>  			  PFUZE100_VGENxSTBY);
> -
> -	imx6_pm_stby_poweroff();
>  }
>  
>  static struct regmap_bus regmap_pfuze_i2c_bus = {
> diff --git a/include/mfd/pfuze.h b/include/mfd/pfuze.h
> index 6045ceec0a..85cee08c00 100644
> --- a/include/mfd/pfuze.h
> +++ b/include/mfd/pfuze.h
> @@ -1,6 +1,19 @@
>  #ifndef __INCLUDE_PFUZE_H
>  #define __INCLUDE_PFUZE_H
>  
> +#include <regmap.h>
> +
> +#ifdef CONFIG_REGULATOR_PFUZE
> +/* For proper poweroff sequencing, users on imx6 needs to call
> + * poweroff_handler_register_fn(imx6_pm_stby_poweroff);
> + * inside of the callback, to ensure a proper poweroff sequence
> + */
>  int pfuze_register_init_callback(void(*callback)(struct regmap *map));
> +#else
> +int pfuze_register_init_callback(void(*callback)(struct regmap *map))
> +{
> +	return -ENODEV;
> +}

Should be static inline int. Fixed while applying, thanks

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
