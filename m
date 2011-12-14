Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo5.mail-out.ovh.net ([188.165.51.82]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RaqyO-00082e-Ij
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 15:42:25 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 36947FF9D0A
 for <barebox@lists.infradead.org>; Wed, 14 Dec 2011 16:42:46 +0100 (CET)
Date: Wed, 14 Dec 2011 16:37:59 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111214153759.GD7553@game.jcrosoft.org>
References: <1323701217-26236-1-git-send-email-plagnioj@jcrosoft.com>
 <1323701217-26236-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323701217-26236-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 3/4] at91: add at91_udc resource
To: barebox@lists.infradead.org

Hi,

	do not forget this one otherwise the usb device will not compile

Best Regards,
J.
On 15:46 Mon 12 Dec     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> this device controller is present on rm9200/9260/9g20/9261/9g10/9263
> 
> the 9g45 use an other IP
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/mach-at91/at91rm9200_devices.c  |   21 +++++++++++++++++++++
>  arch/arm/mach-at91/at91sam9260_devices.c |   19 +++++++++++++++++++
>  arch/arm/mach-at91/at91sam9261_devices.c |   19 +++++++++++++++++++
>  arch/arm/mach-at91/at91sam9263_devices.c |   19 +++++++++++++++++++
>  4 files changed, 78 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
> index bd7d3f0..8c19846 100644
> --- a/arch/arm/mach-at91/at91rm9200_devices.c
> +++ b/arch/arm/mach-at91/at91rm9200_devices.c
> @@ -42,6 +42,27 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
>  void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
>  #endif
>  
> +/* --------------------------------------------------------------------
> + *  USB Device (Gadget)
> + * -------------------------------------------------------------------- */
> +
> +#ifdef CONFIG_USB_GADGET_DRIVER_AT91
> +void __init at91_add_device_udc(struct at91_udc_data *data)
> +{
> +	if (data->vbus_pin > 0) {
> +		at91_set_gpio_input(data->vbus_pin, 0);
> +		at91_set_deglitch(data->vbus_pin, 1);
> +	}
> +
> +	if (data->pullup_pin > 0)
> +		at91_set_gpio_output(data->pullup_pin, 0);
> +
> +	add_generic_device("at91_udc", -1, NULL, AT91RM9200_BASE_UDP, SZ_16K,
> +			   IORESOURCE_MEM, data);
> +}
> +#else
> +void __init at91_add_device_udc(struct at91_udc_data *data) {}
> +#endif
>  
>  /* --------------------------------------------------------------------
>   *  Ethernet
> diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
> index be1fdd9..945530f 100644
> --- a/arch/arm/mach-at91/at91sam9260_devices.c
> +++ b/arch/arm/mach-at91/at91sam9260_devices.c
> @@ -39,6 +39,25 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
>  void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
>  #endif
>  
> +/* --------------------------------------------------------------------
> + *  USB Device (Gadget)
> + * -------------------------------------------------------------------- */
> +
> +#ifdef CONFIG_USB_GADGET_DRIVER_AT91
> +void __init at91_add_device_udc(struct at91_udc_data *data)
> +{
> +	if (data->vbus_pin > 0) {
> +		at91_set_gpio_input(data->vbus_pin, 0);
> +		at91_set_deglitch(data->vbus_pin, 1);
> +	}
> +
> +	add_generic_device("at91_udc", -1, NULL, AT91SAM9260_BASE_UDP, SZ_16K,
> +			   IORESOURCE_MEM, data);
> +}
> +#else
> +void __init at91_add_device_udc(struct at91_udc_data *data) {}
> +#endif
> +
>  #if defined(CONFIG_DRIVER_NET_MACB)
>  void at91_add_device_eth(struct at91_ether_platform_data *data)
>  {
> diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
> index 3f69b18..4fd3c79 100644
> --- a/arch/arm/mach-at91/at91sam9261_devices.c
> +++ b/arch/arm/mach-at91/at91sam9261_devices.c
> @@ -43,6 +43,25 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
>  void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
>  #endif
>  
> +/* --------------------------------------------------------------------
> + *  USB Device (Gadget)
> + * -------------------------------------------------------------------- */
> +
> +#ifdef CONFIG_USB_GADGET_DRIVER_AT91
> +void __init at91_add_device_udc(struct at91_udc_data *data)
> +{
> +	if (data->vbus_pin > 0) {
> +		at91_set_gpio_input(data->vbus_pin, 0);
> +		at91_set_deglitch(data->vbus_pin, 1);
> +	}
> +
> +	add_generic_device("at91_udc", -1, NULL, AT91SAM9261_BASE_UDP, SZ_16K,
> +			   IORESOURCE_MEM, data);
> +}
> +#else
> +void __init at91_add_device_udc(struct at91_udc_data *data) {}
> +#endif
> +
>  #if defined(CONFIG_NAND_ATMEL)
>  void at91_add_device_nand(struct atmel_nand_data *data)
>  {
> diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
> index 994a975..bbadc5d 100644
> --- a/arch/arm/mach-at91/at91sam9263_devices.c
> +++ b/arch/arm/mach-at91/at91sam9263_devices.c
> @@ -51,6 +51,25 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
>  void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
>  #endif
>  
> +/* --------------------------------------------------------------------
> + *  USB Device (Gadget)
> + * -------------------------------------------------------------------- */
> +
> +#ifdef CONFIG_USB_GADGET_DRIVER_AT91
> +void __init at91_add_device_udc(struct at91_udc_data *data)
> +{
> +	if (data->vbus_pin > 0) {
> +		at91_set_gpio_input(data->vbus_pin, 0);
> +		at91_set_deglitch(data->vbus_pin, 1);
> +	}
> +
> +	add_generic_device("at91_udc", -1, NULL, AT91SAM9263_BASE_UDP, SZ_16K,
> +			   IORESOURCE_MEM, data);
> +}
> +#else
> +void __init at91_add_device_udc(struct at91_udc_data *data) {}
> +#endif
> +
>  #if defined(CONFIG_DRIVER_NET_MACB)
>  void at91_add_device_eth(struct at91_ether_platform_data *data)
>  {
> -- 
> 1.7.7

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
