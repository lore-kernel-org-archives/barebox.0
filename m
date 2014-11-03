Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XlGlN-0001zC-Q9
 for barebox@lists.infradead.org; Mon, 03 Nov 2014 12:29:38 +0000
Date: Mon, 3 Nov 2014 13:29:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141103122914.GN14443@pengutronix.de>
References: <1415009424-5889-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415009424-5889-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [For next PATCH v2 1/2] arm: am33xx: Add rmii2_crs_dv mux
 selection in SMA2 register
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 03, 2014 at 11:10:23AM +0100, Wadim Egorov wrote:
> "Silicon revision 1.0 devices only provide the MMC2_DAT7 signal when Mode3 is
> selected. Silicon revision 2.0 and newer devices implement another level of
> pin multiplexing which provides the original MMC2_DAT7 signal or RMII2_CRS_DV
> signal when Mode3 is selected. This new level of of pin multiplexing is
> selected with bit zero of the SMA2 register."
> 
> See AM335x Sitara Processors Manual.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>

Applied, thanks

Sascha

> ---
> v2: Added silicon revision check. SMA2 register does not exist in revision 1.0
> 
>  arch/arm/mach-omap/am33xx_generic.c              |   17 +++++++++++++++++
>  arch/arm/mach-omap/include/mach/am33xx-generic.h |    1 +
>  2 files changed, 18 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
> index f293134..7fe8881 100644
> --- a/arch/arm/mach-omap/am33xx_generic.c
> +++ b/arch/arm/mach-omap/am33xx_generic.c
> @@ -428,3 +428,20 @@ void am335x_sdram_init(int ioctrl, const struct am33xx_cmd_control *cmd_ctrl,
>  
>  	am33xx_config_sdram(emif_regs);
>  }
> +
> +#define AM33XX_CONTROL_SMA2_OFS	0x1320
> +
> +/**
> + * am33xx_select_rmii2_crs_dv - Select RMII2_CRS_DV on GPMC_A9 pin in MODE3
> + */
> +void am33xx_select_rmii2_crs_dv(void)
> +{
> +	uint32_t val;
> +
> +	if (am33xx_get_cpu_rev() == AM335X_ES1_0)
> +		return;
> +
> +	val = readl(AM33XX_CTRL_BASE + AM33XX_CONTROL_SMA2_OFS);
> +	val |= 0x00000001;
> +	writel(val, AM33XX_CTRL_BASE + AM33XX_CONTROL_SMA2_OFS);
> +}
> diff --git a/arch/arm/mach-omap/include/mach/am33xx-generic.h b/arch/arm/mach-omap/include/mach/am33xx-generic.h
> index 6c85d51..1264e7e 100644
> --- a/arch/arm/mach-omap/include/mach/am33xx-generic.h
> +++ b/arch/arm/mach-omap/include/mach/am33xx-generic.h
> @@ -33,5 +33,6 @@ void __noreturn am33xx_reset_cpu(unsigned long addr);
>  void am33xx_enable_per_clocks(void);
>  int am33xx_init(void);
>  int am33xx_devices_init(void);
> +void am33xx_select_rmii2_crs_dv(void);
>  
>  #endif /* __MACH_AM33XX_GENERIC_H */
> -- 
> 1.7.0.4
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
