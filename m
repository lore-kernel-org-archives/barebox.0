Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZFnm-0007yw-0K
 for barebox@lists.infradead.org; Mon, 06 May 2013 07:25:41 +0000
Date: Mon, 6 May 2013 09:25:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130506072516.GC32299@pengutronix.de>
References: <1367822669-5735-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367822669-5735-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: ccmx51js: Add support for USB Host1
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, May 06, 2013 at 10:44:29AM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/ccxmx51/ccxmx51js.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm/boards/ccxmx51/ccxmx51js.c b/arch/arm/boards/ccxmx51/ccxmx51js.c
> index 8c1d2dc..ae31caf 100644
> --- a/arch/arm/boards/ccxmx51/ccxmx51js.c
> +++ b/arch/arm/boards/ccxmx51/ccxmx51js.c
> @@ -20,6 +20,8 @@
>  #include <init.h>
>  #include <mci.h>
>  #include <asm/armlinux.h>
> +#include <mach/gpio.h>
> +#include <mach/generic.h>
>  #include <mach/imx51-regs.h>
>  #include <mach/iomux-mx51.h>
>  #include <mach/devices-imx51.h>
> @@ -27,6 +29,8 @@
>  
>  #include "ccxmx51.h"
>  
> +#define CCXMX51JS_USBHOST1_RESET	IMX_GPIO_NR(3, 8)
> +
>  static iomux_v3_cfg_t ccxmx51js_pads[] = {
>  	/* SD1 */
>  	MX51_PAD_SD1_CLK__SD1_CLK,
> @@ -74,6 +78,11 @@ static struct esdhc_platform_data sdhc3_pdata = {
>  	.caps		= MMC_MODE_4BIT | MMC_MODE_8BIT,
>  };
>  
> +static struct imxusb_platformdata ccxmx51js_usbhost1_pdata = {
> +	.flags	= MXC_EHCI_MODE_ULPI | MXC_EHCI_ITC_NO_THRESHOLD,
> +	.mode	= IMX_USB_MODE_HOST,
> +};
> +
>  static int ccxmx51js_init(void)
>  {
>  	mxc_iomux_v3_setup_multiple_pads(ccxmx51js_pads, ARRAY_SIZE(ccxmx51js_pads));
> @@ -83,6 +92,12 @@ static int ccxmx51js_init(void)
>  		imx51_add_mmc2(&sdhc3_pdata);
>  	}
>  
> +	gpio_direction_output(CCXMX51JS_USBHOST1_RESET, 0);
> +	mdelay(10);
> +	gpio_set_value(CCXMX51JS_USBHOST1_RESET, 1);
> +	mdelay(10);
> +	imx51_add_usbh1(&ccxmx51js_usbhost1_pdata);
> +
>  	armlinux_set_architecture(ccxmx51_id->wless ? MACH_TYPE_CCWMX51JS : MACH_TYPE_CCMX51JS);
>  
>  	return 0;
> -- 
> 1.8.1.5
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
