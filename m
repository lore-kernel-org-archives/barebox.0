Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMva1-000172-Ly
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 16:00:48 +0000
References: <20200928155041.32649-1-m.felsch@pengutronix.de>
 <20200928155041.32649-3-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c8b21a2a-70ba-81ec-7c3f-cec15868b6c2@pengutronix.de>
Date: Mon, 28 Sep 2020 18:00:45 +0200
MIME-Version: 1.0
In-Reply-To: <20200928155041.32649-3-m.felsch@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 02/18] ARM: boards: mx6-sabrelite: [cosmetic] make use of
 IMX_GPIO_NR
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org

On 9/28/20 5:50 PM, Marco Felsch wrote:
> Convert the global number to the more readable IMX_GPIO_NR() macro, no
> functional changes.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  .../boards/freescale-mx6-sabrelite/board.c    | 20 +++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
> index f4f2994a51..020a44297a 100644
> --- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
> +++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
> @@ -70,37 +70,37 @@ static int ksz9021rn_phy_fixup(struct phy_device *dev)
>  
>  static struct gpio fec_gpios[] = {
>  	{
> -		.gpio = 87,
> +		.gpio = IMX_GPIO_NR(3, 23),
>  		.flags = GPIOF_OUT_INIT_LOW,
>  		.label = "phy-rst",
>  	}, {
> -		.gpio = 190,
> +		.gpio = IMX_GPIO_NR(6, 30),
>  		.flags = GPIOF_OUT_INIT_HIGH,
>  		.label = "phy-addr2",
>  	}, {
> -		.gpio = 23,
> +		.gpio = IMX_GPIO_NR(1, 23),
>  		.flags = GPIOF_OUT_INIT_LOW,
>  		.label = "phy-led-mode",
>  	}, {
>  		/* MODE strap-in pins: advertise all capabilities */
> -		.gpio = 185,
> +		.gpio = IMX_GPIO_NR(6, 25),
>  		.flags = GPIOF_OUT_INIT_HIGH,
>  		.label = "phy-adv1",
>  	}, {
> -		.gpio = 187,
> +		.gpio = IMX_GPIO_NR(6, 27),
>  		.flags = GPIOF_OUT_INIT_HIGH,
>  		.label = "phy-adv1",
>  	}, {
> -		.gpio = 188,
> +		.gpio = IMX_GPIO_NR(6, 28),
>  		.flags = GPIOF_OUT_INIT_HIGH,
>  		.label = "phy-adv1",
>  	}, {
> -		.gpio = 189,
> +		.gpio = IMX_GPIO_NR(6, 29),
>  		.flags = GPIOF_OUT_INIT_HIGH,
>  		.label = "phy-adv1",
>  	}, {
>  		/* Enable 125 MHz clock output */
> -		.gpio = 184,
> +		.gpio = IMX_GPIO_NR(6, 24),
>  		.flags = GPIOF_OUT_INIT_HIGH,
>  		.label = "phy-125MHz",
>  	},
> @@ -139,9 +139,9 @@ fs_initcall(sabrelite_ksz9021rn_setup);
>  static void sabrelite_ehci_init(void)
>  {
>  	/* hub reset */
> -	gpio_direction_output(204, 0);
> +	gpio_direction_output(IMX_GPIO_NR(7, 12), 0);
>  	udelay(2000);
> -	gpio_set_value(204, 1);
> +	gpio_set_value(IMX_GPIO_NR(7, 12), 1);
>  }
>  
>  static int sabrelite_devices_init(void)
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
