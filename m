Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pfv5e-0005Dh-Sp
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 14:02:20 +0000
Message-ID: <4D38404B.1020204@free-electrons.com>
Date: Thu, 20 Jan 2011 15:01:47 +0100
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
MIME-Version: 1.0
References: <1295516821-8988-1-git-send-email-s.hauer@pengutronix.de>
	<1295516821-8988-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295516821-8988-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 05/10] i.MX23/28: Fix setting of lcd clock
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 01/20/2011 10:46 AM, Sascha Hauer wrote:
> Use the correct bitmask for masking out which is
> SET_PIXFRAC(MASK_PIXFRAC)
> 

I was just about to send you the same kind of patch, as this bug bit me during
kernel boot when using cpufreq.

As you are working on imx23 and video driver, what do you think of my previous
patches ? I sent them in January the 4th:

ARM STM/i.MX: Add possibility to choose the bit per pixel for STM
    video driver
ARM STM/i.MX: Add possibility to select the data mode for stm video
      driver ( DCn signal is high )
ARM STM/i.MX: Add the reset control of LCD

They should need to be rebased on this new patch set as you made some changes
with the name of the structures and the name of the files. But before doing
this I would like to know if there was a chance that they will be applied in
barebox.


> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-stm/imx_lcd_clk.c |    3 ++-
>  1 files changed, 2 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/mach-stm/imx_lcd_clk.c b/arch/arm/mach-stm/imx_lcd_clk.c
> index 8938664..65bfc6e 100644
> --- a/arch/arm/mach-stm/imx_lcd_clk.c
> +++ b/arch/arm/mach-stm/imx_lcd_clk.c
> @@ -120,7 +120,8 @@ unsigned imx_set_lcdifclk(unsigned nc)
>  			best_frac, best_div, 480 * 18 / best_frac,
>  			480000 * 18 / best_frac / best_div);
>  
> -	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC) & ~MASK_PIXFRAC;
> +	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC);
> +	reg &= ~SET_PIXFRAC(MASK_PIXFRAC);
>  	reg |= SET_PIXFRAC(best_frac);
>  	writel(reg, IMX_CCM_BASE + HW_CLKCTRL_FRAC);
>  	writel(reg & ~CLKCTRL_FRAC_CLKGATEPIX, IMX_CCM_BASE + HW_CLKCTRL_FRAC);


-- 
Gregory Clement, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com
+33 602 196 044

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
