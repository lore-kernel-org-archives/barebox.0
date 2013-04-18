Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USiHS-0004qQ-S2
 for barebox@lists.infradead.org; Thu, 18 Apr 2013 06:25:15 +0000
Date: Thu, 18 Apr 2013 08:25:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130418062513.GE1906@pengutronix.de>
References: <1366218769-30808-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366218769-30808-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] am33xx: add defines for GPIOs
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 17, 2013 at 07:12:49PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-omap/include/mach/am33xx-clock.h   |    2 ++
>  arch/arm/mach-omap/include/mach/am33xx-silicon.h |    6 ++++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/arch/arm/mach-omap/include/mach/am33xx-clock.h b/arch/arm/mach-omap/include/mach/am33xx-clock.h
> index 39c107f..cbee641 100644
> --- a/arch/arm/mach-omap/include/mach/am33xx-clock.h
> +++ b/arch/arm/mach-omap/include/mach/am33xx-clock.h
> @@ -139,7 +139,9 @@
>  #define CM_PER_CPGMAC0_CLKCTRL          (CM_PER + 0x14) /* Ethernet */
>  #define CM_PER_CPSW_CLKSTCTRL           (CM_PER + 0x144)/* Ethernet */
>  #define CM_PER_OCMCRAM_CLKCTRL          (CM_PER + 0x2C) /* OCMC RAM */
> +#define CM_PER_GPIO1_CLKCTRL            (CM_PER + 0xAC) /* GPIO1 */
>  #define CM_PER_GPIO2_CLKCTRL            (CM_PER + 0xB0) /* GPIO2 */
> +#define CM_PER_GPIO3_CLKCTRL            (CM_PER + 0xB4) /* GPIO3 */
>  #define CM_PER_UART3_CLKCTRL            (CM_PER + 0x74) /* UART3 */
>  #define CM_PER_I2C1_CLKCTRL             (CM_PER + 0x48) /* I2C1 */
>  #define CM_PER_I2C2_CLKCTRL             (CM_PER + 0x44) /* I2C2 */
> diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
> index e69d345..9edf4ca 100644
> --- a/arch/arm/mach-omap/include/mach/am33xx-silicon.h
> +++ b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
> @@ -29,6 +29,12 @@
>  #define AM33XX_UART1_BASE		(AM33XX_L4_PER_BASE + 0x22000)
>  #define AM33XX_UART2_BASE		(AM33XX_L4_PER_BASE + 0x24000)
>  
> +/* GPIO */
> +#define AM33XX_GPIO0_BASE		(AM33XX_L4_WKUP_BASE + 0x207000 + 0x100)
> +#define AM33XX_GPIO1_BASE		(AM33XX_L4_PER_BASE + 0x4C000 + 0x100)
> +#define AM33XX_GPIO2_BASE		(AM33XX_L4_PER_BASE + 0x1AC000 + 0x100)
> +#define AM33XX_GPIO3_BASE		(AM33XX_L4_PER_BASE + 0x1AE000 + 0x100)
> +
>  /* EMFI Registers */
>  #define AM33XX_EMFI0_BASE		0x4C000000
>  
> -- 
> 1.7.10.4
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
