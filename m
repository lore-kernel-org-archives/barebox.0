Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo1.mail-out.ovh.net ([188.165.38.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U24Nz-0007wz-2e
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 18:33:52 +0000
Received: from mail640.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 96A96FF9787
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 19:48:42 +0100 (CET)
Date: Sun, 3 Feb 2013 19:32:33 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130203183233.GG18068@game.jcrosoft.org>
References: <20130203152218.GF18068@game.jcrosoft.org>
 <1359905053-13109-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359905053-13109-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/5] usb-a926x: only provide the resource if the driver
 is enable
To: barebox@lists.infradead.org

On 16:24 Sun 03 Feb     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> usefull for bootstrap
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
ingore this patch

Best Regards,
J.
>  arch/arm/boards/usb-a926x/init.c |    9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
> index 0383280..e2da8ea 100644
> --- a/arch/arm/boards/usb-a926x/init.c
> +++ b/arch/arm/boards/usb-a926x/init.c
> @@ -246,6 +246,15 @@ static struct at91_udc_data __initdata ek_udc_data = {
>  	.pullup_pin	= -EINVAL,		/* pull-up driven by UDC */
>  };
>  
> +static void usb_a9260_add_device_usb(void)
> +{
> +	at91_add_device_usbh_ohci(&ek_usbh_data);
> +}
> +#else
> +static void usb_a9260_add_device_usb(void) {}
> +#endif
> +
> +#ifdef CONFIG_USB_GADGET_DRIVER_AT91
>  static void __init ek_add_device_udc(void)
>  {
>  	if (machine_is_usb_a9260() || machine_is_usb_a9g20())
> -- 
> 1.7.10.4
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
