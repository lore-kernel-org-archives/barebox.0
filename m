Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clIA0-0003Ca-QR
 for barebox@lists.infradead.org; Tue, 07 Mar 2017 16:40:30 +0000
Date: Tue, 7 Mar 2017 17:40:00 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170307164000.GC26868@ravnborg.org>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
 <20170306225356.31475-36-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170306225356.31475-36-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 35/45] usb: ohci-at91: Add DT support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 06, 2017 at 02:53:46PM -0800, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-at91/include/mach/board.h |  6 ++-
>  drivers/usb/host/ohci-at91.c            | 84 ++++++++++++++++++++++++++++++++-
>  2 files changed, 86 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
> index 491b220..5d76e00 100644
> --- a/arch/arm/mach-at91/include/mach/board.h
> +++ b/arch/arm/mach-at91/include/mach/board.h
> @@ -32,11 +32,13 @@
>  
>  void at91_set_main_clock(unsigned long rate);
>  
> +#define AT91_MAX_USBH_PORTS	3
> +
>   /* USB Host */
>  struct at91_usbh_data {
>  	u8		ports;		/* number of ports on root hub */
> -	int		vbus_pin[2];	/* port power-control pin */
> -	u8	vbus_pin_active_low[2];	/* vbus polarity */
> +	int		vbus_pin[AT91_MAX_USBH_PORTS];	/* port power-control pin */
> +	u8	vbus_pin_active_low[AT91_MAX_USBH_PORTS];	/* vbus polarity */
>  };
>  extern void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data);
>  extern void __init at91_add_device_usbh_ehci(struct at91_usbh_data *data);
> diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
> index f413616..54fe45f 100644
> --- a/drivers/usb/host/ohci-at91.c
> +++ b/drivers/usb/host/ohci-at91.c
> @@ -23,10 +23,18 @@
>  #include <usb/usb.h>
>  #include <usb/usb_defs.h>
>  #include <errno.h>
> +#include <gpio.h>
> +#include <of_gpio.h>
>  #include <io.h>
>  
> +#include <mach/board.h>
> +
>  #include "ohci.h"
>  
> +#define at91_for_each_port(index)					\
> +	for ((index) = 0; (index) < AT91_MAX_USBH_PORTS; (index)++)
> +
> +
>  struct ohci_at91_priv {
>  	struct device_d *dev;
>  	struct clk *iclk;
> @@ -59,6 +67,53 @@ static void at91_stop_clock(struct ohci_at91_priv *ohci_at91)
>  	clk_disable(ohci_at91->iclk);
>  }
>  
> +static void at91_ohci_probe_dt(struct device_d *dev)
> +{
> +	u32 ports;
> +	int i, ret, gpio;
> +	enum of_gpio_flags flags;
> +	struct at91_usbh_data *pdata;
> +	struct device_node *np = dev->device_node;
> +
> +	pdata = xzalloc(sizeof(*pdata));
> +	dev->platform_data = pdata;
> +
> +	if (!of_property_read_u32(np, "num-ports", &ports))
> +		pdata->ports = ports;
If we fail to read "num-ports" then we will fail in the following when dereferencing pdata->ports
> +
> +	at91_for_each_port(i) {
> +		/*
> +		 * do not configure PIO if not in relation with
> +		 * real USB port on board
> +		 */
> +		if (i >= pdata->ports) {
                         ^ here

> +			pdata->vbus_pin[i] = -EINVAL;
> +			continue;
> +		}

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
