Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1US5L6-00055R-TR
 for barebox@lists.infradead.org; Tue, 16 Apr 2013 12:50:26 +0000
Date: Tue, 16 Apr 2013 14:50:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130416125023.GK1906@pengutronix.de>
References: <1366027438-18095-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366027438-18095-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] omap: move to common bootsource framework
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 15, 2013 at 02:03:58PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
> This is based on current master.

Applied, thanks

Sascha

> 
>  arch/arm/mach-omap/am33xx_generic.c       | 10 +++++++---
>  arch/arm/mach-omap/include/mach/generic.h | 13 -------------
>  arch/arm/mach-omap/omap3_generic.c        | 16 ++++++++++------
>  arch/arm/mach-omap/omap4_generic.c        | 24 +++++++++++++++---------
>  arch/arm/mach-omap/omap_generic.c         | 15 ++-------------
>  arch/arm/mach-omap/xload.c                | 26 ++++++++++++++------------
>  6 files changed, 48 insertions(+), 56 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
> index 059c55e..96432c9 100644
> --- a/arch/arm/mach-omap/am33xx_generic.c
> +++ b/arch/arm/mach-omap/am33xx_generic.c
> @@ -19,12 +19,13 @@
>   */
>  
>  #include <common.h>
> +#include <bootsource.h>
> +#include <init.h>
>  #include <io.h>
>  #include <net.h>
>  #include <mach/am33xx-silicon.h>
>  #include <mach/am33xx-clock.h>
>  #include <mach/sys_info.h>
> -#include <mach/generic.h>
>  #include <mach/am33xx-generic.h>
>  
>  void __noreturn reset_cpu(unsigned long addr)
> @@ -94,10 +95,13 @@ u32 running_in_sdram(void)
>  	return 0;		/* running in SRAM or FLASH */
>  }
>  
> -enum omap_boot_src am33xx_bootsrc(void)
> +static int am33xx_bootsource(void)
>  {
> -	return OMAP_BOOTSRC_MMC1; /* only MMC for now */
> +	bootsource_set(BOOTSOURCE_MMC); /* only MMC for now */
> +	bootsource_set_instance(0);
> +	return 0;
>  }
> +postcore_initcall(am33xx_bootsource);
>  
>  int am33xx_register_ethaddr(int eth_id, int mac_id)
>  {
> diff --git a/arch/arm/mach-omap/include/mach/generic.h b/arch/arm/mach-omap/include/mach/generic.h
> index 7455404..5a10a54 100644
> --- a/arch/arm/mach-omap/include/mach/generic.h
> +++ b/arch/arm/mach-omap/include/mach/generic.h
> @@ -27,17 +27,4 @@
>  #define cpu_is_omap4xxx()	(0)
>  #endif
>  
> -enum omap_boot_src {
> -	OMAP_BOOTSRC_UNKNOWN,
> -	OMAP_BOOTSRC_MMC1,
> -	OMAP_BOOTSRC_NAND,
> -	OMAP_BOOTSRC_SPI1,
> -	OMAP_BOOTSRC_USB1,
> -};
> -
> -enum omap_boot_src omap_bootsrc(void);
> -enum omap_boot_src am33xx_bootsrc(void);
> -enum omap_boot_src omap3_bootsrc(void);
> -enum omap_boot_src omap4_bootsrc(void);
> -
>  #endif
> diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
> index 10e03ae..f144813 100644
> --- a/arch/arm/mach-omap/omap3_generic.c
> +++ b/arch/arm/mach-omap/omap3_generic.c
> @@ -28,6 +28,7 @@
>   */
>  
>  #include <common.h>
> +#include <bootsource.h>
>  #include <init.h>
>  #include <io.h>
>  #include <mach/omap3-silicon.h>
> @@ -40,7 +41,6 @@
>  #include <mach/wdt.h>
>  #include <mach/sys_info.h>
>  #include <mach/syslib.h>
> -#include <mach/generic.h>
>  
>  /**
>   * @brief Reset the CPU
> @@ -461,21 +461,25 @@ void omap3_core_init(void)
>  #ifdef CONFIG_OMAP3_CLOCK_CONFIG
>  	prcm_init();
>  #endif
> -
>  }
>  
>  #define OMAP3_TRACING_VECTOR1 0x4020ffb4
>  
> -enum omap_boot_src omap3_bootsrc(void)
> +static int omap3_bootsource(void)
>  {
> +	enum bootsource src = BOOTSOURCE_UNKNOWN;
>  	u32 bootsrc = readl(OMAP3_TRACING_VECTOR1);
>  
>  	if (bootsrc & (1 << 2))
> -		return OMAP_BOOTSRC_NAND;
> +		src = BOOTSOURCE_NAND;
>  	if (bootsrc & (1 << 6))
> -		return OMAP_BOOTSRC_MMC1;
> -	return OMAP_BOOTSRC_UNKNOWN;
> +		src = BOOTSOURCE_MMC;
> +	bootsource_set(src);
> +	bootsource_set_instance(0);
> +
> +	return 0;
>  }
> +postcore_initcall(omap3_bootsource);
>  
>  /* GPMC timing for OMAP3 nand device */
>  const struct gpmc_config omap3_nand_cfg = {
> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
> index e1edffa..e08a355 100644
> --- a/arch/arm/mach-omap/omap4_generic.c
> +++ b/arch/arm/mach-omap/omap4_generic.c
> @@ -1,11 +1,11 @@
>  #include <common.h>
> +#include <bootsource.h>
>  #include <init.h>
>  #include <io.h>
>  #include <mach/omap4-clock.h>
>  #include <mach/omap4-silicon.h>
>  #include <mach/omap4-mux.h>
>  #include <mach/syslib.h>
> -#include <mach/generic.h>
>  #include <mach/gpmc.h>
>  #include <mach/gpio.h>
>  #include <mach/omap4_rom_usb.h>
> @@ -339,7 +339,7 @@ void omap4_ddr_init(const struct ddr_regs *ddr_regs,
>  	/* PHY control values */
>  
>  	sr32(CM_MEMIF_EMIF_1_CLKCTRL, 0, 32, 0x1);
> -        sr32(CM_MEMIF_EMIF_2_CLKCTRL, 0, 32, 0x1);
> +	sr32(CM_MEMIF_EMIF_2_CLKCTRL, 0, 32, 0x1);
>  
>  	/* Put the Core Subsystem PD to ON State */
>  
> @@ -466,7 +466,7 @@ static int omap_vector_init(void)
>  	 * The ROM code uses interrupts for the transfers, so do not modify the
>  	 * interrupt vectors in this case.
>  	 */
> -	if (omap4_bootsrc() != OMAP_BOOTSRC_USB1) {
> +	if (bootsource_get() != BOOTSOURCE_USB) {
>  		__asm__ __volatile__ (
>  			"mov    r0, #0;"
>  			"mcr    p15, #0, r0, c12, c0, #0;"
> @@ -478,22 +478,28 @@ static int omap_vector_init(void)
>  
>  	return 0;
>  }
> -core_initcall(omap_vector_init);
>  
>  #define OMAP4_TRACING_VECTOR3 0x4030d048
>  
> -enum omap_boot_src omap4_bootsrc(void)
> +static int omap4_bootsource(void)
>  {
> +	enum bootsource src = BOOTSOURCE_UNKNOWN;
>  	u32 bootsrc = readl(OMAP4_TRACING_VECTOR3);
>  
>  	if (bootsrc & (1 << 5))
> -		return OMAP_BOOTSRC_MMC1;
> +		return BOOTSOURCE_MMC;
>  	if (bootsrc & (1 << 3))
> -		return OMAP_BOOTSRC_NAND;
> +		return BOOTSOURCE_NAND;
>  	if (bootsrc & (1<<20))
> -		return OMAP_BOOTSRC_USB1;
> -	return OMAP_BOOTSRC_UNKNOWN;
> +		return BOOTSOURCE_USB;
> +	bootsource_set(src);
> +	bootsource_set_instance(0);
> +
> +	omap_vector_init();
> +
> +	return 0;
>  }
> +core_initcall(omap4_bootsource);
>  
>  #define GPIO_MASK 0x1f
>  
> diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
> index 580ed3e..cfd3dec 100644
> --- a/arch/arm/mach-omap/omap_generic.c
> +++ b/arch/arm/mach-omap/omap_generic.c
> @@ -13,23 +13,12 @@
>   *
>   */
>  #include <common.h>
> +#include <bootsource.h>
>  #include <envfs.h>
>  #include <init.h>
>  #include <io.h>
>  #include <fs.h>
>  #include <linux/stat.h>
> -#include <mach/generic.h>
> -
> -enum omap_boot_src omap_bootsrc(void)
> -{
> -#if defined(CONFIG_ARCH_OMAP3)
> -	return omap3_bootsrc();
> -#elif defined(CONFIG_ARCH_OMAP4)
> -	return omap4_bootsrc();
> -#elif defined(CONFIG_ARCH_AM33XX)
> -	return am33xx_bootsrc();
> -#endif
> -}
>  
>  #if defined(CONFIG_DEFAULT_ENVIRONMENT) && defined(CONFIG_MCI_STARTUP)
>  static int omap_env_init(void)
> @@ -38,7 +27,7 @@ static int omap_env_init(void)
>  	char *diskdev = "/dev/disk0.0";
>  	int ret;
>  
> -	if (omap_bootsrc() != OMAP_BOOTSRC_MMC1)
> +	if (bootsource_get() != BOOTSOURCE_MMC)
>  		return 0;
>  
>  	ret = stat(diskdev, &s);
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> index 72aa379..3cce3f2 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -1,4 +1,5 @@
>  #include <common.h>
> +#include <bootsource.h>
>  #include <partition.h>
>  #include <nand.h>
>  #include <init.h>
> @@ -6,7 +7,6 @@
>  #include <linux/mtd/mtd.h>
>  #include <fs.h>
>  #include <fcntl.h>
> -#include <mach/generic.h>
>  #include <sizes.h>
>  #include <filetype.h>
>  
> @@ -165,30 +165,32 @@ static __noreturn int omap_xload(void)
>  {
>  	int (*func)(void) = NULL;
>  
> -	switch (omap_bootsrc())
> +	switch (bootsource_get())
>  	{
> -	case OMAP_BOOTSRC_MMC1:
> -		printf("booting from MMC1\n");
> +	case BOOTSOURCE_MMC:
> +		printf("booting from MMC\n");
>  		func = omap_xload_boot_mmc();
>  		break;
> -	case OMAP_BOOTSRC_USB1:
> +	case BOOTSOURCE_USB:
>  		if (IS_ENABLED(CONFIG_FS_OMAP4_USBBOOT)) {
> -			printf("booting from USB1\n");
> +			printf("booting from USB\n");
>  			func = omap4_xload_boot_usb();
>  			break;
>  		} else {
> -			printf("booting from usb1 not enabled\n");
> +			printf("booting from USB not enabled\n");
>  		}
> -	case OMAP_BOOTSRC_UNKNOWN:
> -		printf("unknown boot source. Fall back to nand\n");
> -	case OMAP_BOOTSRC_NAND:
> +	case BOOTSOURCE_NAND:
>  		printf("booting from NAND\n");
>  		func = omap_xload_boot_nand(SZ_128K);
>  		break;
> -	case OMAP_BOOTSRC_SPI1:
> -		printf("booting from SPI1\n");
> +	case BOOTSOURCE_SPI:
> +		printf("booting from SPI\n");
>  		func = omap_xload_boot_spi(SZ_128K);
>  		break;
> +	default:
> +		printf("unknown boot source. Fall back to nand\n");
> +		func = omap_xload_boot_nand(SZ_128K);
> +		break;
>  	}
>  
>  	if (!func) {
> -- 
> 1.8.2.rc2
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
