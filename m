Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SzNH5-0006aV-EJ
 for barebox@lists.infradead.org; Thu, 09 Aug 2012 07:35:20 +0000
Date: Thu, 9 Aug 2012 09:35:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120809073515.GT1451@pengutronix.de>
References: <1344329099-8528-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1344329099-8528-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] ARM i.MX: Add support for i2c on imx6
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Aug 07, 2012 at 10:44:59AM +0200, Steffen Trumtrar wrote:
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Applied, thanks

Sascha

> ---
> Hi all,
> 
> this patch adds support for i2c on imx6. The patch was tested on a sabrelite
> board, where I measured SCL and SDATA, as there are no devices connected (apart
> from an sgtl5000).
> 
>  arch/arm/mach-imx/include/mach/devices-imx6.h |   15 +++++++++++++++
>  arch/arm/mach-imx/speed-imx6.c                |    6 ++++++
>  2 files changed, 21 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/include/mach/devices-imx6.h b/arch/arm/mach-imx/include/mach/devices-imx6.h
> index ca063c5..c73e488 100644
> --- a/arch/arm/mach-imx/include/mach/devices-imx6.h
> +++ b/arch/arm/mach-imx/include/mach/devices-imx6.h
> @@ -49,3 +49,18 @@ static inline struct device_d *imx6_add_spi0(struct spi_imx_master *pdata)
>  {
>  	return imx_add_spi((void *)MX6_ECSPI1_BASE_ADDR, 0, pdata);
>  }
> +
> +static inline struct device_d *imx6_add_i2c0(struct i2c_platform_data *pdata)
> +{
> +	return imx_add_i2c((void *)MX6_I2C1_BASE_ADDR, 0, pdata);
> +}
> +
> +static inline struct device_d *imx6_add_i2c1(struct i2c_platform_data *pdata)
> +{
> +	return imx_add_i2c((void *)MX6_I2C2_BASE_ADDR, 1, pdata);
> +}
> +
> +static inline struct device_d *imx6_add_i2c2(struct i2c_platform_data *pdata)
> +{
> +	return imx_add_i2c((void *)MX6_I2C3_BASE_ADDR, 2, pdata);
> +}
> diff --git a/arch/arm/mach-imx/speed-imx6.c b/arch/arm/mach-imx/speed-imx6.c
> index df24545..645b2c9 100644
> --- a/arch/arm/mach-imx/speed-imx6.c
> +++ b/arch/arm/mach-imx/speed-imx6.c
> @@ -332,6 +332,11 @@ u32 imx_get_fecclk(void)
>  	return __get_ipg_clk();
>  }
>  
> +u32 imx_get_i2cclk(void)
> +{
> +	return __get_ipg_per_clk();
> +}
> +
>  u32 imx_get_cspiclk(void)
>  {
>  	return __get_cspi_clk();
> @@ -351,6 +356,7 @@ void imx_dump_clocks(void)
>  	printf("mx6q pll8: %d\n", freq);
>  	printf("mcu main:  %d\n", __get_mcu_main_clk());
>  	printf("periph:    %d\n", __get_periph_clk());
> +	printf("i2c:	   %d\n", __get_ipg_per_clk());
>  	printf("ipg:       %d\n", __get_ipg_clk());
>  	printf("ipg per:   %d\n", __get_ipg_per_clk());
>  	printf("cspi:      %d\n", __get_cspi_clk());
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
