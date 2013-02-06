Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3A2b-0007yf-9X
 for barebox@lists.infradead.org; Wed, 06 Feb 2013 18:48:18 +0000
Date: Wed, 6 Feb 2013 19:48:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130206184814.GK1906@pengutronix.de>
References: <004301ce030a$68506aa0$38f13fe0$@com>
 <1360004939.170907890@f389.i.mail.ru>
 <005301ce0338$1e5e1fe0$5b1a5fa0$@com>
 <20130205085233.GN1906@pengutronix.de>
 <008301ce03c9$0eedd320$2cc97960$@com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <008301ce03c9$0eedd320$2cc97960$@com>
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
Subject: Re: i.MX53, add access to third I2C peripheral ( resubmit with
 Signed-off tag )
To: George Pontis <GPontis@z9.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 05, 2013 at 09:48:51AM -0800, George Pontis wrote:
> Subject: i.MX53 i2c, add support for third i2c interface
> 
> Signed-off-by: George Pontis <gpontis@spamcop.net>

Applied, thanks.

Your mailer wraps lines. I had to apply this manually. Please figure out
how to send patches correctly next time.

Sascha

> ---
> diff -Naur bb.a/arch/arm/mach-imx/include/mach/devices-imx53.h
> bb.b/arch/arm/mach-imx/include/mach/devic
> es-imx53.h
> --- bb.a/arch/arm/mach-imx/include/mach/devices-imx53.h 2013-02-04
> 06:24:51.000000000 -0800
> +++ bb.b/arch/arm/mach-imx/include/mach/devices-imx53.h 2013-02-03
> 22:24:26.930091420 -0800
> @@ -21,6 +21,11 @@
>         return imx_add_i2c((void *)MX53_I2C2_BASE_ADDR, 1, pdata);
>  }
> 
> +static inline struct device_d *imx53_add_i2c2(struct i2c_platform_data
> *pdata)
> +{
> +       return imx_add_i2c((void *)MX53_I2C3_BASE_ADDR, 2, pdata);
> +}
> +
>  static inline struct device_d *imx53_add_uart0(void)
>  {
>         return imx_add_uart_imx21((void *)MX53_UART1_BASE_ADDR, 0);
> diff -Naur bb.a/arch/arm/mach-imx/clk-imx5.c
> bb.b/arch/arm/mach-imx/clk-imx5.c
> --- bb.a/arch/arm/mach-imx/clk-imx5.c   2013-02-04 06:24:51.000000000 -0800
> +++ bb.b/arch/arm/mach-imx/clk-imx5.c   2013-02-04 16:14:04.729284183 -0800
> @@ -272,6 +272,7 @@
>         clkdev_add_physbase(clks[uart_root], MX53_UART3_BASE_ADDR, NULL);
>         clkdev_add_physbase(clks[per_root], MX53_I2C1_BASE_ADDR, NULL);
>         clkdev_add_physbase(clks[per_root], MX53_I2C2_BASE_ADDR, NULL);
> +       clkdev_add_physbase(clks[per_root], MX53_I2C3_BASE_ADDR, NULL);
>         clkdev_add_physbase(clks[per_root], MX53_GPT1_BASE_ADDR, NULL);
>         clkdev_add_physbase(clks[ipg], MX53_CSPI_BASE_ADDR, NULL);
>         clkdev_add_physbase(clks[ecspi_podf], MX53_ECSPI1_BASE_ADDR, NULL);
> 
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
