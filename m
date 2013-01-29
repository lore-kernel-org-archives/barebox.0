Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U074j-00084j-CH
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 09:01:53 +0000
Date: Tue, 29 Jan 2013 10:01:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130129090151.GP1906@pengutronix.de>
References: <1359365200-21604-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359365200-21604-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] ARM: efika-mx-smartbook: clean up whitespaces
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 28, 2013 at 01:26:40PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/efika-mx-smartbook/board.c |   14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
> index a455c55..5c02689 100644
> --- a/arch/arm/boards/efika-mx-smartbook/board.c
> +++ b/arch/arm/boards/efika-mx-smartbook/board.c
> @@ -198,7 +198,7 @@ static int efikamx_mem_init(void)
>  {
>  	arm_add_mem_device("ram0", 0x90000000, SZ_512M);
>  
> -        return 0;
> +	return 0;
>  }
>  mem_initcall(efikamx_mem_init);
>  
> @@ -220,7 +220,7 @@ static const struct spi_board_info efikamx_spi_board_info[] = {
>  		.chip_select = 1,
>  		.max_speed_hz = 20 * 1000 * 1000,
>  		.bus_num = 0,
> -        },
> +	},
>  };
>  
>  static void efikamx_power_init(void)
> @@ -294,11 +294,11 @@ static void efikamx_power_init(void)
>  	/* Set VDIG to 1.8V, VGEN3 to 1.8V, VCAM to 2.6V */
>  	mc13xxx_reg_read(mc, MC13892_REG_SETTING_0, &val);
>  	val &= ~(MC13892_SETTING_0_VCAM_MASK |
> -                        MC13892_SETTING_0_VGEN3_MASK |
> -                        MC13892_SETTING_0_VDIG_MASK);
> +		MC13892_SETTING_0_VGEN3_MASK |
> +		MC13892_SETTING_0_VDIG_MASK);
>  	val |= MC13892_SETTING_0_VDIG_1_8 |
> -                MC13892_SETTING_0_VGEN3_1_8 |
> -                MC13892_SETTING_0_VCAM_2_6;
> +		MC13892_SETTING_0_VGEN3_1_8 |
> +		MC13892_SETTING_0_VCAM_2_6;
>  	mc13xxx_reg_write(mc, MC13892_REG_SETTING_0, val);
>  
>  	/* Set VVIDEO to 2.775V, VAUDIO to 3V, VSD to 3.15V */
> @@ -455,7 +455,7 @@ static int efikamx_devices_init(void)
>  	imx51_add_mmc1(&efikasb_sd2_data);
>  
>  	for (i = 0; i < ARRAY_SIZE(leds); i++)
> -                led_gpio_register(&leds[i]);
> +		led_gpio_register(&leds[i]);
>  
>  	imx51_add_i2c1(NULL);
>  
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
