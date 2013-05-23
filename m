Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfVjb-0005HT-5I
 for barebox@lists.infradead.org; Thu, 23 May 2013 13:39:12 +0000
Date: Thu, 23 May 2013 15:38:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130523133849.GS32299@pengutronix.de>
References: <1369302358-9934-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369302358-9934-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 1/2] arm: am33xx: add pinmux and clock config for UART2
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, May 23, 2013 at 11:45:57AM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-omap/am33xx_clock.c              |    8 ++++++++
>  arch/arm/mach-omap/am33xx_mux.c                |   11 +++++++++++
>  arch/arm/mach-omap/include/mach/am33xx-clock.h |    3 +++
>  arch/arm/mach-omap/include/mach/am33xx-mux.h   |    1 +
>  4 files changed, 23 insertions(+)
> 
> diff --git a/arch/arm/mach-omap/am33xx_clock.c b/arch/arm/mach-omap/am33xx_clock.c
> index a28540c..4451d62 100644
> --- a/arch/arm/mach-omap/am33xx_clock.c
> +++ b/arch/arm/mach-omap/am33xx_clock.c
> @@ -89,6 +89,14 @@ static void per_clocks_enable(void)
>  	__raw_writel(PRCM_MOD_EN, CM_WKUP_UART0_CLKCTRL);
>  	while (__raw_readl(CM_WKUP_UART0_CLKCTRL) != PRCM_MOD_EN);
>  
> +	/* UART1 */
> +	__raw_writel(PRCM_MOD_EN, CM_PER_UART1_CLKCTRL);
> +	while (__raw_readl(CM_PER_UART1_CLKCTRL) != PRCM_MOD_EN);
> +
> +	/* UART2 */
> +	__raw_writel(PRCM_MOD_EN, CM_PER_UART2_CLKCTRL);
> +	while (__raw_readl(CM_PER_UART2_CLKCTRL) != PRCM_MOD_EN);
> +
>  	/* UART3 */
>  	__raw_writel(PRCM_MOD_EN, CM_PER_UART3_CLKCTRL);
>  	while (__raw_readl(CM_PER_UART3_CLKCTRL) != PRCM_MOD_EN);
> diff --git a/arch/arm/mach-omap/am33xx_mux.c b/arch/arm/mach-omap/am33xx_mux.c
> index 36fe379..61014d9 100644
> --- a/arch/arm/mach-omap/am33xx_mux.c
> +++ b/arch/arm/mach-omap/am33xx_mux.c
> @@ -27,6 +27,12 @@ static const __maybe_unused struct module_pin_mux uart0_pin_mux[] = {
>  	{-1},
>  };
>  
> +static const __maybe_unused struct module_pin_mux uart2_pin_mux[] = {
> +	{OFFSET(mii1_txclk), (MODE(1) | PULLUDEN | RXACTIVE)},	/* UART2_RXD */
> +	{OFFSET(mii1_rxclk), (MODE(1) | PULLUDEN)},		/* UART2_TXD */
> +	{-1},
> +};
> +
>  static const __maybe_unused struct module_pin_mux uart3_pin_mux[] = {
>  	{OFFSET(spi0_cs1), (MODE(1) | PULLUDEN | RXACTIVE)},	/* UART3_RXD */
>  	{OFFSET(ecap0_in_pwm0_out), (MODE(1) | PULLUDEN)},	/* UART3_TXD */
> @@ -275,6 +281,11 @@ void am33xx_enable_uart0_pin_mux(void)
>  	configure_module_pin_mux(uart0_pin_mux);
>  }
>  
> +void am33xx_enable_uart2_pin_mux(void)
> +{
> +	configure_module_pin_mux(uart2_pin_mux);
> +}
> +
>  void am33xx_enable_mmc0_pin_mux(void)
>  {
>  	configure_module_pin_mux(mmc0_pin_mux);
> diff --git a/arch/arm/mach-omap/include/mach/am33xx-clock.h b/arch/arm/mach-omap/include/mach/am33xx-clock.h
> index 2ecfc5f..3d1f074 100644
> --- a/arch/arm/mach-omap/include/mach/am33xx-clock.h
> +++ b/arch/arm/mach-omap/include/mach/am33xx-clock.h
> @@ -136,7 +136,10 @@
>  #define CM_PER_GPIO1_CLKCTRL            (CM_PER + 0xAC) /* GPIO1 */
>  #define CM_PER_GPIO2_CLKCTRL            (CM_PER + 0xB0) /* GPIO2 */
>  #define CM_PER_GPIO3_CLKCTRL            (CM_PER + 0xB4) /* GPIO3 */
> +#define CM_PER_UART1_CLKCTRL            (CM_PER + 0x6C) /* UART1 */
> +#define CM_PER_UART2_CLKCTRL            (CM_PER + 0x70) /* UART2 */
>  #define CM_PER_UART3_CLKCTRL            (CM_PER + 0x74) /* UART3 */
> +#define CM_PER_UART4_CLKCTRL            (CM_PER + 0x78) /* UART4 */
>  #define CM_PER_I2C1_CLKCTRL             (CM_PER + 0x48) /* I2C1 */
>  #define CM_PER_I2C2_CLKCTRL             (CM_PER + 0x44) /* I2C2 */
>  #define CM_WKUP_GPIO0_CLKCTRL           (CM_WKUP + 0x8) /* GPIO0 */
> diff --git a/arch/arm/mach-omap/include/mach/am33xx-mux.h b/arch/arm/mach-omap/include/mach/am33xx-mux.h
> index 896e958..e0f7077 100644
> --- a/arch/arm/mach-omap/include/mach/am33xx-mux.h
> +++ b/arch/arm/mach-omap/include/mach/am33xx-mux.h
> @@ -252,6 +252,7 @@ extern void am33xx_enable_i2c0_pin_mux(void);
>  extern void am33xx_enable_i2c1_pin_mux(void);
>  extern void am33xx_enable_i2c2_pin_mux(void);
>  extern void am33xx_enable_uart0_pin_mux(void);
> +extern void am33xx_enable_uart2_pin_mux(void);
>  extern void am33xx_enable_mmc0_pin_mux(void);
>  
>  #endif /*__AM33XX_MUX_H__ */
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
