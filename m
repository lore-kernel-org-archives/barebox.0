Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqstX-0007Ok-PZ
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 21:31:56 +0000
Date: Mon, 16 Jul 2012 23:31:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120716213131.GW30009@pengutronix.de>
References: <201207111115.58627.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201207111115.58627.jbe@pengutronix.de>
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
Subject: Re: [PATCH/Master] ARM/MXS: the GPIO bitkeeper enable logic is
 inverse to the pullup enable logic
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 11, 2012 at 11:15:58AM +0200, Juergen Beisert wrote:
> While a set bit enables the pullup (if exists) it disables the bitkeeper (if
> exists). Both features are using the same register bit and only one of this
> feature is present on a per pin base.
>     
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-mxs/iomux-imx.c b/arch/arm/mach-mxs/iomux-imx.c
> index 9203588..784c506 100644
> --- a/arch/arm/mach-mxs/iomux-imx.c
> +++ b/arch/arm/mach-mxs/iomux-imx.c
> @@ -125,7 +125,7 @@ void imx_gpio_mode(uint32_t m)
>  	if (BK_PRESENT(m)) {
>  		reg_offset = calc_pullup_reg(gpio_pin);
>  		writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE + reg_offset +
> -				(GET_BITKEEPER(m) == 1 ? BIT_SET : BIT_CLR));
> +				(GET_BITKEEPER(m) == 1 ? BIT_CLR : BIT_SET));
>  	}
>  
>  	if (GET_FUNC(m) == IS_GPIO) {
> 
> -- 
> Pengutronix e.K.                              | Juergen Beisert             |
> Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |
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
