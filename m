Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tugz4-0001WG-0T
 for barebox@lists.infradead.org; Mon, 14 Jan 2013 10:09:40 +0000
Date: Mon, 14 Jan 2013 11:09:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130114100936.GG1906@pengutronix.de>
References: <cover.1358127379.git.d.mierswa@phytec.de>
 <0b191bed8e3ea8b450b6990b76e0463558996b05.1358127379.git.d.mierswa@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0b191bed8e3ea8b450b6990b76e0463558996b05.1358127379.git.d.mierswa@phytec.de>
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
Subject: Re: [PATCH 2/4] i.MX21/27: don't enable lcd bus clocks too early
To: Daniel Mierswa <d.mierswa@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 14, 2013 at 02:54:14AM +0100, Daniel Mierswa wrote:
> On the MX27 based board phycard-i.MX27 the display won't properly
> come up.
> Before removing imx-regs.h and the code that sets the register
> in the i.MX video driver, the PCCR registers were set _after_
> the screen start (LSSAR) was set.
> This restores that old behaviour and makes the display come up
> properly again.
> I did not have a chance to test this on any other i.MX27 or i.MX21
> hardware though I assume that the "old" order is required there
> too.
> 
> Signed-off-by: Daniel Mierswa <d.mierswa@phytec.de>
> ---
>  arch/arm/mach-imx/clk-imx21.c |  7 ++++--
>  arch/arm/mach-imx/clk-imx27.c | 14 +++++++-----
>  drivers/video/imx.c           | 51 +++++++++++++++++++++++++++++++++++++------
>  3 files changed, 58 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/clk-imx21.c b/arch/arm/mach-imx/clk-imx21.c
> index 784951d..7404177 100644
> --- a/arch/arm/mach-imx/clk-imx21.c
> +++ b/arch/arm/mach-imx/clk-imx21.c
> @@ -89,7 +89,8 @@
>  
>  enum imx21_clks {
>  	ckil, ckih, fpm, mpll_sel, spll_sel, mpll, spll, fclk, hclk, ipg, per1,
> -	per2, per3, per4, usb_div, nfc_div, lcdc_per_gate, clk_max
> +	per2, per3, per4, usb_div, nfc_div, lcdc_per_gate, lcdc_ahb_gate,
> +	clk_max
>  };
>  
>  static struct clk *clks[clk_max];
> @@ -116,7 +117,7 @@ static int imx21_ccm_probe(struct device_d *dev)
>  			PCCR0_CSPI1_EN | PCCR0_CSPI2_EN | PCCR0_SDHC1_EN |
>  			PCCR0_SDHC2_EN | PCCR0_GPIO_EN | PCCR0_I2C_EN | PCCR0_DMA_EN |
>  			PCCR0_USBOTG_EN | PCCR0_NFC_EN | PCCR0_PERCLK4_EN |
> -			PCCR0_HCLK_USBOTG_EN | PCCR0_HCLK_LCDC_EN | PCCR0_HCLK_DMA_EN,
> +			PCCR0_HCLK_USBOTG_EN | PCCR0_HCLK_DMA_EN,
>  			base + CCM_PCCR0);
>  
>  	writel(PCCR1_CSPI3_EN | PCCR1_WDT_EN | PCCR1_GPT1_EN | PCCR1_GPT2_EN |
> @@ -143,6 +144,7 @@ static int imx21_ccm_probe(struct device_d *dev)
>  	clks[usb_div] = imx_clk_divider("usb_div", "spll", base + CCM_CSCR, 26, 3);
>  	clks[nfc_div] = imx_clk_divider("nfc_div", "ipg", base + CCM_PCDR0, 12, 4);
>  	clks[lcdc_per_gate] = imx_clk_gate("lcdc_per_gate", "per3", base + CCM_PCCR0, 18);
> +	clks[lcdc_ahb_gate] = imx_clk_gate("lcdc_ahb_gate", "ahb", base + CCM_PCCR0, 26);
>  
>  	clkdev_add_physbase(clks[per1], MX21_GPT1_BASE_ADDR, NULL);
>  	clkdev_add_physbase(clks[per1], MX21_GPT2_BASE_ADDR, NULL);
> @@ -158,6 +160,7 @@ static int imx21_ccm_probe(struct device_d *dev)
>  	clkdev_add_physbase(clks[ipg], MX21_SDHC1_BASE_ADDR, NULL);
>  	clkdev_add_physbase(clks[ipg], MX21_SDHC2_BASE_ADDR, NULL);
>  	clkdev_add_physbase(clks[lcdc_per_gate], MX21_LCDC_BASE_ADDR, NULL);
> +	clkdev_add_physbase(clks[lcdc_ahb_gate], MX21_LCDC_BASE_ADDR, "ahb");
>  
>  	return 0;
>  }
> diff --git a/arch/arm/mach-imx/clk-imx27.c b/arch/arm/mach-imx/clk-imx27.c
> index 222d2a6..958495e 100644
> --- a/arch/arm/mach-imx/clk-imx27.c
> +++ b/arch/arm/mach-imx/clk-imx27.c
> @@ -93,7 +93,7 @@
>  enum mx27_clks {
>  	dummy, ckih, ckil, mpll, spll, mpll_main2, ahb, ipg, nfc_div, per1_div,
>  	per2_div, per3_div, per4_div, usb_div, cpu_sel,	clko_sel, cpu_div, clko_div,
> -	clko_en, lcdc_per_gate, clk_max
> +	clko_en, lcdc_per_gate, lcdc_ahb_gate, lcdc_ipg_gate, clk_max
>  };
>  
>  static struct clk *clks[clk_max];
> @@ -136,7 +136,7 @@ static int imx27_ccm_probe(struct device_d *dev)
>  	base = dev_request_mem_region(dev, 0);
>  
>  	writel(PCCR0_SDHC3_EN | PCCR0_SDHC2_EN | PCCR0_SDHC1_EN |
> -			PCCR0_PWM_EN | PCCR0_KPP_EN | PCCR0_LCDC_EN | PCCR0_IIM_EN |
> +			PCCR0_PWM_EN | PCCR0_KPP_EN | PCCR0_IIM_EN |
>  			PCCR0_I2C2_EN | PCCR0_I2C1_EN | PCCR0_GPT6_EN | PCCR0_GPT5_EN |
>  			PCCR0_GPT4_EN | PCCR0_GPT3_EN | PCCR0_GPT2_EN | PCCR0_GPT1_EN |
>  			PCCR0_GPIO_EN | PCCR0_FEC_EN | PCCR0_CSPI3_EN | PCCR0_CSPI2_EN |
> @@ -144,9 +144,9 @@ static int imx27_ccm_probe(struct device_d *dev)
>  			base + CCM_PCCR0);
>  
>  	writel(PCCR1_NFC_BAUDEN | PCCR1_PERCLK4_EN | PCCR1_PERCLK2_EN | PCCR1_PERCLK1_EN |
> -			PCCR1_HCLK_USB | PCCR1_HCLK_LCDC | PCCR1_HCLK_FEC | PCCR1_HCLK_EMI |
> -			PCCR1_WDT_EN | PCCR1_USB_EN | PCCR1_UART6_EN | PCCR1_UART5_EN |
> -			PCCR1_UART4_EN | PCCR1_UART3_EN | PCCR1_UART2_EN | PCCR1_UART1_EN,
> +			PCCR1_HCLK_USB | PCCR1_HCLK_FEC | PCCR1_HCLK_EMI | PCCR1_WDT_EN |
> +			PCCR1_USB_EN | PCCR1_UART6_EN | PCCR1_UART5_EN | PCCR1_UART4_EN |
> +			PCCR1_UART3_EN | PCCR1_UART2_EN | PCCR1_UART1_EN,
>  			base + CCM_PCCR1);
>  
>  	clks[dummy] = clk_fixed("dummy", 0);
> @@ -180,6 +180,8 @@ static int imx27_ccm_probe(struct device_d *dev)
>  		clks[cpu_div] = imx_clk_divider("cpu_div", "cpu_sel", base + CCM_CSCR, 13, 3);
>  	clks[clko_div] = imx_clk_divider("clko_div", "clko_sel", base + CCM_PCDR0, 22, 3);
>  	clks[lcdc_per_gate] = imx_clk_gate("lcdc_per_gate", "per3_div", base + CCM_PCCR1, 7);
> +	clks[lcdc_ahb_gate] = imx_clk_gate("lcdc_ahb_gate", "ahb", base + CCM_PCCR1, 15);
> +	clks[lcdc_ipg_gate] = imx_clk_gate("lcdc_ipg_gate", "ipg", base + CCM_PCCR0, 14);
>  
>  	clkdev_add_physbase(clks[per1_div], MX27_GPT1_BASE_ADDR, NULL);
>  	clkdev_add_physbase(clks[per1_div], MX27_GPT2_BASE_ADDR, NULL);
> @@ -202,6 +204,8 @@ static int imx27_ccm_probe(struct device_d *dev)
>  	clkdev_add_physbase(clks[per2_div], MX27_SDHC2_BASE_ADDR, NULL);
>  	clkdev_add_physbase(clks[per2_div], MX27_SDHC3_BASE_ADDR, NULL);
>  	clkdev_add_physbase(clks[lcdc_per_gate], MX27_LCDC_BASE_ADDR, NULL);
> +	clkdev_add_physbase(clks[lcdc_ahb_gate], MX27_LCDC_BASE_ADDR, "ahb");
> +	clkdev_add_physbase(clks[lcdc_ipg_gate], MX27_LCDC_BASE_ADDR, "ipg");
>  	clkdev_add_physbase(clks[ipg], MX27_FEC_BASE_ADDR, NULL);
>  
>  	return 0;
> diff --git a/drivers/video/imx.c b/drivers/video/imx.c
> index 8381690..18e1243 100644
> --- a/drivers/video/imx.c
> +++ b/drivers/video/imx.c
> @@ -138,7 +138,16 @@ struct imxfb_rgb {
>  
>  struct imxfb_info {
>  	void __iomem		*regs;
> -	struct clk		*clk;
> +
> +#if defined(CONFIG_ARCH_IMX21) || defined(CONFIG_ARCH_IMX27)
> +	struct clk		*ahb_clk;
> +#endif
> +
> +#ifdef CONFIG_ARCH_IMX27
> +	struct clk		*ipg_clk;
> +#endif
> +
> +	struct clk		*per_clk;
>  
>  	u_int			pcr;
>  	u_int			pwmr;
> @@ -252,7 +261,15 @@ static void imxfb_enable_controller(struct fb_info *info)
>  
>  	writel(RMCR_LCDC_EN, fbi->regs + LCDC_RMCR);
>  
> -	clk_enable(fbi->clk);
> +#if defined(CONFIG_ARCH_IMX21) || defined(CONFIG_ARCH_IMX27)
> +	clk_enable(fbi->ahb_clk);
> +#endif
> +
> +#ifdef CONFIG_ARCH_IMX27
> +	clk_enable(fbi->ipg_clk);
> +#endif
> +
> +	clk_enable(fbi->per_clk);
>  
>  	if (fbi->enable)
>  		fbi->enable(1);
> @@ -267,7 +284,15 @@ static void imxfb_disable_controller(struct fb_info *info)
>  
>  	writel(0, fbi->regs + LCDC_RMCR);
>  
> -	clk_disable(fbi->clk);
> +	clk_disable(fbi->per_clk);
> +
> +#ifdef CONFIG_ARCH_IMX27
> +	clk_disable(fbi->ipg_clk);
> +#endif
> +
> +#if defined(CONFIG_ARCH_IMX21) || defined(CONFIG_ARCH_IMX27)
> +	clk_disable(fbi->ahb_clk);
> +#endif
>  }
>  
>  static void set_reg_overlay(struct fb_info *overlay)
> @@ -335,7 +360,7 @@ static int imxfb_activate_var(struct fb_info *info)
>  	writel(readl(fbi->regs + LCDC_CPOS) & ~(CPOS_CC0 | CPOS_CC1),
>  		fbi->regs + LCDC_CPOS);
>  
> -	lcd_clk = clk_get_rate(fbi->clk);
> +	lcd_clk = clk_get_rate(fbi->per_clk);
>  
>  	tmp = mode->pixclock * (unsigned long long)lcd_clk;
>  
> @@ -549,9 +574,21 @@ static int imxfb_probe(struct device_d *dev)
>  	fbi = xzalloc(sizeof(*fbi));
>  	info = &fbi->info;
>  
> -	fbi->clk = clk_get(dev, NULL);
> -	if (IS_ERR(fbi->clk))
> -		return PTR_ERR(fbi->clk);
> +	fbi->per_clk = clk_get(dev, NULL);
> +	if (IS_ERR(fbi->per_clk))
> +		return PTR_ERR(fbi->per_clk);
> +
> +#if defined(CONFIG_ARCH_IMX21) || defined(CONFIG_ARCH_IMX27)
> +	fbi->ahb_clk = clk_get(dev, "ahb");
> +	if (IS_ERR(fbi->ahb_clk))
> +		return PTR_ERR(fbi->ahb_clk);
> +#endif
> +
> +#ifdef CONFIG_ARCH_IMX27
> +	fbi->ipg_clk = clk_get(dev, "ipg");
> +	if (IS_ERR(fbi->ipg_clk))
> +		return PTR_ERR(fbi->ipg_clk);
> +#endif

Please provide a dummy ipg clock for the i.MX21. Then you can remove all
the ifdefs. Otherwise the series looks good.

Since you patch the i.MX21 clock file, have you tested this series on
such a hardware? It would be interesting to know if it still works since
I do not have a i.MX21 hardware.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
