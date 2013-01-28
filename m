Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzkNt-00032P-A0
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 08:48:10 +0000
Date: Mon, 28 Jan 2013 09:48:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130128084807.GB23543@pengutronix.de>
References: <20130127110714.GL26329@game.jcrosoft.org>
 <1359285649-18717-1-git-send-email-plagnioj@jcrosoft.com>
 <1359285649-18717-6-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359285649-18717-6-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 6/8] at91sam9m10ihd: add lcd support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Jan 27, 2013 at 12:20:47PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/at91sam9m10ihd/env/init/splash |    8 +++
>  arch/arm/boards/at91sam9m10ihd/init.c          |   65 ++++++++++++++++++++++++
>  arch/arm/configs/at91sam9m10ihd_defconfig      |    5 ++
>  3 files changed, 78 insertions(+)
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/splash
> 
> diff --git a/arch/arm/boards/at91sam9m10ihd/env/init/splash b/arch/arm/boards/at91sam9m10ihd/env/init/splash
> new file mode 100644
> index 0000000..18e74df
> --- /dev/null
> +++ b/arch/arm/boards/at91sam9m10ihd/env/init/splash
> @@ -0,0 +1,8 @@
> +#!/bin/sh
> +
> +splash=/env/splash.png
> +
> +if [ -f ${splash} -a -e /dev/fb0 ]; then
> +	splash -o ${splash}
> +	fb0.enable=1
> +fi
> diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
> index beede0b..da32a04 100644
> --- a/arch/arm/boards/at91sam9m10ihd/init.c
> +++ b/arch/arm/boards/at91sam9m10ihd/init.c
> @@ -173,6 +173,70 @@ static int at91sam9m10g45ek_mem_init(void)
>  }
>  mem_initcall(at91sam9m10g45ek_mem_init);
>  
> +#if defined(CONFIG_DRIVER_VIDEO_ATMEL)
> +static int ek_gpio_request_output(int gpio, const char *name)
> +{
> +	int ret;
> +
> +	ret = gpio_request(gpio, name);
> +	if (ret) {
> +		pr_err("%s: can not request gpio %d (%d)\n", name, gpio, ret);
> +		return ret;
> +	}
> +
> +	ret = gpio_direction_output(gpio, 1);
> +	if (ret)
> +		pr_err("%s: can not configure gpio %d as output (%d)\n", name, gpio, ret);
> +	return ret;
> +}
> +
> +static struct fb_videomode at91fb_default_monspecs[] = {
> +	{
> +		.name		= "MULTEK",
> +		.refresh	= 60,
> +		.xres		= 800,		.yres		= 480,
> +		.pixclock	= KHZ2PICOS(15000),
> +
> +		.left_margin	= 40,		.right_margin	= 40,
> +		.upper_margin	= 29,		.lower_margin	= 13,
> +		.hsync_len	= 48,		.vsync_len	= 3,
> +
> +		.sync		= 0,
> +		.vmode		= FB_VMODE_NONINTERLACED,
> +	},
> +};
> +
> +#define AT91SAM9G45_DEFAULT_LCDCON2	(ATMEL_LCDC_MEMOR_LITTLE \
> +					| ATMEL_LCDC_DISTYPE_TFT \
> +					| ATMEL_LCDC_CLKMOD_ALWAYSACTIVE)
> +
> +static void at91_lcdc_power_control(int on)
> +{
> +	gpio_set_value(AT91_PIN_PE6, on);
> +}

This function is unused.

> +
> +/* Driver datas */
> +static struct atmel_lcdfb_platform_data ek_lcdc_data = {
> +	.lcdcon_is_backlight		= true,
> +	.default_bpp			= 16,
> +	.default_dmacon			= ATMEL_LCDC_DMAEN,
> +	.default_lcdcon2		= AT91SAM9G45_DEFAULT_LCDCON2,
> +	.guard_time			= 9,
> +	.lcd_wiring_mode		= ATMEL_LCDC_WIRING_RGB,
> +	.mode_list			= at91fb_default_monspecs,
> +	.num_modes			= ARRAY_SIZE(at91fb_default_monspecs),
> +};
> +
> +static void ek_add_device_lcd(void)
> +{
> +	if (ek_gpio_request_output(AT91_PIN_PE6, "lcdc_power"))
> +		return;
> +
> +	at91_add_device_lcdc(&ek_lcdc_data);
> +}
> +#else
> +static void ek_add_device_lcd(void) {}
> +

unterminated ifdef. I fixed this while applying.

This leaves the unused function producing a compiler warning. Can you
provide a fixup patch?

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
