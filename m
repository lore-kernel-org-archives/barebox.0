Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmD2K-0006rw-1R
 for barebox@lists.infradead.org; Mon, 07 Dec 2020 09:42:28 +0000
Date: Mon, 7 Dec 2020 10:42:26 +0100
Message-ID: <20201207094226.GJ3977@pengutronix.de>
References: <20201204174045.27340-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201204174045.27340-1-a.fatoum@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: i.MX: add low level gpio helpers for i.MX8M
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Dec 04, 2020 at 06:40:44PM +0100, Ahmad Fatoum wrote:
> Like many GPIO controllers of times past, the i.MX8M is also compatible
> with the i.MX31 GPIO controller. Add GPIO helpers for low-level code to
> use.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/include/mach/imx-gpio.h | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/include/mach/imx-gpio.h b/arch/arm/mach-imx/include/mach/imx-gpio.h
> index 891c33a3f411..0cfd16f4fa43 100644
> --- a/arch/arm/mach-imx/include/mach/imx-gpio.h
> +++ b/arch/arm/mach-imx/include/mach/imx-gpio.h
> @@ -50,6 +50,7 @@ static inline void imx31_gpio_direction_output(void *base, int gpio, int value)
>  #define imx51_gpio_direction_output(base, gpio, value) imx31_gpio_direction_output(base, gpio,value)
>  #define imx53_gpio_direction_output(base, gpio, value) imx31_gpio_direction_output(base, gpio,value)
>  #define imx6_gpio_direction_output(base, gpio, value) imx31_gpio_direction_output(base, gpio,value)
> +#define imx8m_gpio_direction_output(base, gpio, value) imx31_gpio_direction_output(base, gpio,value)
>  
>  static inline void imx1_gpio_direction_input(void *base, int gpio, int value)
>  {
> @@ -69,6 +70,7 @@ static inline void imx31_gpio_direction_input(void *base, int gpio)
>  #define imx51_gpio_direction_input(base, gpio, value) imx31_gpio_direction_input(base, gpio)
>  #define imx53_gpio_direction_input(base, gpio, value) imx31_gpio_direction_input(base, gpio)
>  #define imx6_gpio_direction_input(base, gpio) imx31_gpio_direction_input(base, gpio)
> +#define imx8m_gpio_direction_input(base, gpio) imx31_gpio_direction_input(base, gpio)
>  
>  #define imx1_gpio_val(base, gpio) readl(base + 0x1c) & (1 << gpio) ? 1 : 0
>  #define imx21_gpio_val(base, gpio) imx1_gpio_val(base, gpio)
> @@ -80,5 +82,6 @@ static inline void imx31_gpio_direction_input(void *base, int gpio)
>  #define imx51_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
>  #define imx53_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
>  #define imx6_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
> +#define imx8m_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
>  
>  #endif /* __MACH_IMX_GPIO_H */
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
