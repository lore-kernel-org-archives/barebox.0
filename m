Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQmio-0003KF-Nz
 for barebox@lists.infradead.org; Fri, 09 Oct 2020 07:21:47 +0000
Date: Fri, 9 Oct 2020 09:21:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201009072144.GY11648@pengutronix.de>
References: <20201008151143.30303-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201008151143.30303-1-jmaselbas@kalray.eu>
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
Subject: Re: [PATCH] usb: dwc2: Uninitialize host and device on remove
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org

On Thu, Oct 08, 2020 at 05:11:43PM +0200, Jules Maselbas wrote:
> Device gadget must be properly uninitialized on poweroff however host
> system might not detect barebox's usb gadget has beeing disconnected.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/usb/dwc2/dwc2.c   | 16 ++--------------
>  drivers/usb/dwc2/dwc2.h   |  4 ++++
>  drivers/usb/dwc2/gadget.c |  6 ++++++
>  drivers/usb/dwc2/host.c   | 13 +++++++++++++
>  4 files changed, 25 insertions(+), 14 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
> index 7a8ba6c4f..894307bd4 100644
> --- a/drivers/usb/dwc2/dwc2.c
> +++ b/drivers/usb/dwc2/dwc2.c
> @@ -15,19 +15,6 @@
>  
>  #include "dwc2.h"
>  
> -static void dwc2_uninit_common(struct dwc2 *dwc2)
> -{
> -	uint32_t hprt0;
> -
> -	hprt0 = dwc2_readl(dwc2, HPRT0);
> -
> -	/* Put everything in reset. */
> -	hprt0 &= ~(HPRT0_ENA | HPRT0_ENACHG | HPRT0_CONNDET | HPRT0_OVRCURRCHG);
> -	hprt0 |= HPRT0_RST;
> -
> -	dwc2_writel(dwc2, hprt0, HPRT0);
> -}
> -
>  static int dwc2_set_mode(void *ctx, enum usb_dr_mode mode)
>  {
>  	struct dwc2 *dwc2 = ctx;
> @@ -98,7 +85,8 @@ static void dwc2_remove(struct device_d *dev)
>  {
>  	struct dwc2 *dwc2 = dev->priv;
>  
> -	dwc2_uninit_common(dwc2);
> +	dwc2_host_uninit(dwc2);
> +	dwc2_gadget_uninit(dwc2);
>  }
>  
>  static const struct of_device_id dwc2_platform_dt_ids[] = {
> diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
> index 2475fd005..01a4ec2ca 100644
> --- a/drivers/usb/dwc2/dwc2.h
> +++ b/drivers/usb/dwc2/dwc2.h
> @@ -37,13 +37,17 @@ int dwc2_submit_roothub(struct dwc2 *dwc2, struct usb_device *dev,
>  		unsigned long pipe, void *buf, int len,
>  		struct devrequest *setup);
>  int dwc2_register_host(struct dwc2 *dwc2);
> +void dwc2_host_uninit(struct dwc2 *dwc2);
>  #else
>  static inline int dwc2_register_host(struct dwc2 *dwc2) { return -ENODEV; }
> +static inline void dwc2_host_uninit(struct dwc2 *dwc2) {};
>  #endif
>  
>  /* Gadget functions */
>  #ifdef CONFIG_USB_DWC2_GADGET
>  int dwc2_gadget_init(struct dwc2 *dwc2);
> +void dwc2_gadget_uninit(struct dwc2 *dwc2);
>  #else
>  static inline int dwc2_gadget_init(struct dwc2 *dwc2) { return -ENODEV; }
> +static inline void dwc2_gadget_uninit(struct dwc2 *dwc2) {};
>  #endif
> diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
> index 6a65b9b11..aa7447c9b 100644
> --- a/drivers/usb/dwc2/gadget.c
> +++ b/drivers/usb/dwc2/gadget.c
> @@ -2734,3 +2734,9 @@ int dwc2_gadget_init(struct dwc2 *dwc2)
>  
>  	return 0;
>  }
> +
> +void dwc2_gadget_uninit(struct dwc2 *dwc2)
> +{
> +	dwc2_core_disconnect(dwc2);
> +	dwc2_gadget_disconnect(dwc2);
> +}
> diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
> index 59a2aac47..f95ec4e56 100644
> --- a/drivers/usb/dwc2/host.c
> +++ b/drivers/usb/dwc2/host.c
> @@ -779,3 +779,16 @@ int dwc2_register_host(struct dwc2 *dwc2)
>  
>  	return usb_register_host(host);
>  }
> +
> +void dwc2_host_uninit(struct dwc2 *dwc2)
> +{
> +	uint32_t hprt0;
> +
> +	hprt0 = dwc2_readl(dwc2, HPRT0);
> +
> +	/* Put everything in reset. */
> +	hprt0 &= ~(HPRT0_ENA | HPRT0_ENACHG | HPRT0_CONNDET | HPRT0_OVRCURRCHG);
> +	hprt0 |= HPRT0_RST;
> +
> +	dwc2_writel(dwc2, hprt0, HPRT0);
> +}
> -- 
> 2.17.1
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
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
