Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1US5Ld-00055z-SZ
 for barebox@lists.infradead.org; Tue, 16 Apr 2013 12:50:58 +0000
Date: Tue, 16 Apr 2013 14:50:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130416125056.GL1906@pengutronix.de>
References: <1366028925-27776-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366028925-27776-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] at91sam9m10g45ek: add spi dataflash supprt
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 15, 2013 at 02:28:45PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks
MSascha


> ---
>  arch/arm/boards/at91sam9m10g45ek/init.c     |   18 ++++++++++++++++++
>  arch/arm/configs/at91sam9m10g45ek_defconfig |    4 +++-
>  2 files changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
> index f32215d..d9a2f1f 100644
> --- a/arch/arm/boards/at91sam9m10g45ek/init.c
> +++ b/arch/arm/boards/at91sam9m10g45ek/init.c
> @@ -38,6 +38,7 @@
>  #include <mach/at91sam9_smc.h>
>  #include <gpio_keys.h>
>  #include <readkey.h>
> +#include <spi/spi.h>
>  
>  /*
>   * board revision encoding
> @@ -125,6 +126,22 @@ static void ek_add_device_mci(void)
>  static void ek_add_device_mci(void) {}
>  #endif
>  
> +static const struct spi_board_info ek_spi_devices[] = {
> +	{
> +		.name		= "mtd_dataflash",
> +		.chip_select	= 0,
> +		.max_speed_hz	= 15 * 1000 * 1000,
> +		.bus_num	= 0,
> +	}
> +};
> +
> +static void ek_add_device_spi(void)
> +{
> +	spi_register_board_info(ek_spi_devices,
> +			ARRAY_SIZE(ek_spi_devices));
> +	at91_add_device_spi(0, NULL);
> +}
> +
>  #ifdef CONFIG_LED_GPIO
>  struct gpio_led ek_leds[] = {
>  	{
> @@ -281,6 +298,7 @@ static void ek_add_device_lcdc(void) {}
>  static int at91sam9m10g45ek_devices_init(void)
>  {
>  	ek_add_device_nand();
> +	ek_add_device_spi();
>  	at91_add_device_eth(0, &macb_pdata);
>  	ek_add_device_mci();
>  	ek_add_device_usb();
> diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
> index 1df34f7..7e05e95 100644
> --- a/arch/arm/configs/at91sam9m10g45ek_defconfig
> +++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
> @@ -64,8 +64,10 @@ CONFIG_NET_RESOLV=y
>  CONFIG_DRIVER_NET_MACB=y
>  CONFIG_NET_USB=y
>  CONFIG_NET_USB_ASIX=y
> -# CONFIG_SPI is not set
> +CONFIG_DRIVER_SPI_ATMEL=y
>  CONFIG_MTD=y
> +# CONFIG_MTD_OOB_DEVICE is not set
> +CONFIG_MTD_DATAFLASH=y
>  CONFIG_NAND=y
>  # CONFIG_NAND_ECC_HW is not set
>  # CONFIG_NAND_ECC_HW_SYNDROME is not set
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
