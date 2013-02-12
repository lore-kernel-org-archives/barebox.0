Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5Bla-0002M9-B1
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 09:03:06 +0000
Date: Tue, 12 Feb 2013 10:03:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130212090304.GV1906@pengutronix.de>
References: <1360579325-31503-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360579325-31503-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] ARM i.MX28: change default watchdog reset method
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 11, 2013 at 11:42:05AM +0100, Steffen Trumtrar wrote:
> The default setting for the imx28 watchdog is to do a power-off reset. If the
> SoC is only powered via battery, then the watchdog powers the chip down, though.
> According to the datasheet it should still be possible to execute a proper POR
> with battery power, but testing showed otherwise.
> When the watchdog power-off reset is disabled, a software reset is executed
> instead. This works with and without battery power.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-mxs/soc-imx28.c |   12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm/mach-mxs/soc-imx28.c b/arch/arm/mach-mxs/soc-imx28.c
> index a181b75..a5f3d68 100644
> --- a/arch/arm/mach-mxs/soc-imx28.c
> +++ b/arch/arm/mach-mxs/soc-imx28.c
> @@ -21,6 +21,7 @@
>  
>  #define HW_CLKCTRL_RESET 0x1e0
>  # define HW_CLKCTRL_RESET_CHIP (1 << 1)
> +#define HW_CLKCTRL_WDOG_POR_DISABLE (1 << 5)
>  
>  /* Reset the full i.MX28 SoC via a chipset feature */
>  void __noreturn reset_cpu(unsigned long addr)
> @@ -35,3 +36,14 @@ void __noreturn reset_cpu(unsigned long addr)
>  	/*NOTREACHED*/
>  }
>  EXPORT_SYMBOL(reset_cpu);
> +
> +static int imx28_init(void)
> +{
> +	/*
> +	 * The default setting for the WDT is to do a POR. If the SoC is only
> +	 * powered via battery, then a WDT reset powers the chip down instead
> +	 * of resetting it. Use a software reset only.
> +	 */
> +	writel(HW_CLKCTRL_WDOG_POR_DISABLE, IMX_CCM_BASE + HW_CLKCTRL_RESET);
> +}
> +postcore_initcall(imx28_init);
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
