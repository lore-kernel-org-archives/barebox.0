Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLAHP-0003Xh-5g
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 12:51:03 +0000
Message-ID: <1423572640.2848.1.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 10 Feb 2015 13:50:40 +0100
In-Reply-To: <1423571604-43061-2-git-send-email-w.egorov@phytec.de>
References: <1423571604-43061-1-git-send-email-w.egorov@phytec.de>
 <1423571604-43061-2-git-send-email-w.egorov@phytec.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2: For next 2/2] ARM: am33xx: Add support for reset
 reason detection
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

Am Dienstag, den 10.02.2015, 13:33 +0100 schrieb Wadim Egorov:
> Also activate in defconfig.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
> v2: Use the existing rest_source framework.
> ---
>  arch/arm/configs/am335x_defconfig                |  1 +
>  arch/arm/mach-omap/am33xx_generic.c              | 44 ++++++++++++++++++++++++
>  arch/arm/mach-omap/include/mach/am33xx-silicon.h |  1 +
>  3 files changed, 46 insertions(+)
> 
> diff --git a/arch/arm/configs/am335x_defconfig b/arch/arm/configs/am335x_defconfig
> index f34a4c6..0b8f58d 100644
> --- a/arch/arm/configs/am335x_defconfig
> +++ b/arch/arm/configs/am335x_defconfig
> @@ -24,6 +24,7 @@ CONFIG_MENU=y
>  CONFIG_BLSPEC=y
>  CONFIG_CONSOLE_ACTIVATE_NONE=y
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> +CONFIG_RESET_SOURCE=y
>  CONFIG_DEBUG_INFO=y
>  CONFIG_LONGHELP=y
>  CONFIG_CMD_IOMEM=y
> diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
> index 912138d..67d6d8f 100644
> --- a/arch/arm/mach-omap/am33xx_generic.c
> +++ b/arch/arm/mach-omap/am33xx_generic.c
> @@ -26,6 +26,7 @@
>  #include <mach/sys_info.h>
>  #include <mach/am33xx-generic.h>
>  #include <mach/gpmc.h>
> +#include <reset_source.h>
>  
>  void __noreturn am33xx_reset_cpu(unsigned long addr)
>  {
> @@ -152,6 +153,49 @@ static int am33xx_bootsource(void)
>  	return 0;
>  }
>  
> +static int am33xx_detect_reset_reason(void)
> +{
> +	static int init;
> +	static uint32_t val;

val should not be static, but initialized to 0.

> +
> +	if (!IS_ENABLED(CONFIG_RESET_SOURCE))
> +		return 0;
> +
> +	if (!init) {
> +		/* save value of AM33XX_PRM_RSTST register */
> +		val = readl(AM33XX_PRM_RSTST);
> +		/* clear AM33XX_PRM_RSTST - must be cleared by software
> +		 * (warm reset insensitive) */
> +		writel(val, AM33XX_PRM_RSTST);
> +		init = 1;
> +	}

Why do you need this? An initcall is executed exactly once.

> +
> +	switch (val) {
> +	case (1 << 9):
> +		reset_source_set(RESET_JTAG);
> +		break;;
> +	case (1 << 5):
> +		reset_source_set(RESET_EXT);
> +		break;
> +	case (1 << 4):
> +	case (1 << 3):
> +		reset_source_set(RESET_WDG);
> +		break;
> +	case (1 << 1):
> +		reset_source_set(RESET_RST);
> +		break;
> +	case (1 << 0):
> +		reset_source_set(RESET_POR);
> +		break;
> +	default:
> +		reset_source_set(RESET_UKWN);
> +		break;
> +	}
> +
> +	return 0;
> +}
> +device_initcall(am33xx_detect_reset_reason);
> +
>  int am33xx_register_ethaddr(int eth_id, int mac_id)
>  {
>  	void __iomem *mac_id_low = (void *)AM33XX_MAC_ID0_LO + mac_id * 8;
> diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
> index 4e63b43..7c209ec 100644
> --- a/arch/arm/mach-omap/include/mach/am33xx-silicon.h
> +++ b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
> @@ -68,6 +68,7 @@
>  
>  #define AM33XX_PRM_RSTCTRL		(AM33XX_PRM_BASE + 0x0f00)
>  #define AM33XX_PRM_RSTCTRL_RESET	0x1
> +#define AM33XX_PRM_RSTST		(AM33XX_PRM_BASE + 0x0f08)
>  
>  /* CTRL */
>  #define AM33XX_CTRL_BASE		(AM33XX_L4_WKUP_BASE + 0x210000)

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
