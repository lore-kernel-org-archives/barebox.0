Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b5ogY-0008PK-Mm
 for barebox@lists.infradead.org; Thu, 26 May 2016 06:22:23 +0000
Date: Thu, 26 May 2016 08:21:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160526062159.GD31666@pengutronix.de>
References: <1464200006-7963-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464200006-7963-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/3] usb: ohci: Clear control register at driver startup
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, May 25, 2016 at 09:13:24PM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---

A comment why this is done would be nice.

Sascha


>  drivers/usb/host/ohci-at91.c | 7 -------
>  drivers/usb/host/ohci-hcd.c  | 7 ++++---
>  2 files changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
> index 0f5c8f1..0a6e5ca 100644
> --- a/drivers/usb/host/ohci-at91.c
> +++ b/drivers/usb/host/ohci-at91.c
> @@ -44,8 +44,6 @@ static void at91_stop_clock(void)
>  
>  static int at91_ohci_probe(struct device_d *dev)
>  {
> -	struct ohci_regs __iomem *regs = (struct ohci_regs __iomem *)dev->resource[0].start;
> -
>  	iclk = clk_get(NULL, "ohci_clk");
>  	fclk = clk_get(NULL, "uhpck");
>  
> @@ -54,11 +52,6 @@ static int at91_ohci_probe(struct device_d *dev)
>  	 */
>  	at91_start_clock();
>  
> -	/*
> -	 * The USB host controller must remain in reset.
> -	 */
> -	writel(0, &regs->control);
> -
>  	add_generic_device("ohci", DEVICE_ID_DYNAMIC, NULL, dev->resource[0].start,
>  			   resource_size(&dev->resource[0]), IORESOURCE_MEM, NULL);
>  
> diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
> index 612c3a1..a4795bb 100644
> --- a/drivers/usb/host/ohci-hcd.c
> +++ b/drivers/usb/host/ohci-hcd.c
> @@ -1817,14 +1817,15 @@ static int ohci_probe(struct device_d *dev)
>  		return -ENOMEM;
>  	memset(ohci->ohci_dev, 0, sizeof(*ohci->ohci_dev));
>  
> -	usb_register_host(host);
> -
>  	iores = dev_request_mem_resource(dev, 0);
>  	if (IS_ERR(iores))
>  		return PTR_ERR(iores);
>  	ohci->regs = IOMEM(iores->start);
>  
> -	return 0;
> +	/* Put the USB host controller into reset */
> +	writel(0, &ohci->regs->control);
> +
> +	return usb_register_host(host);
>  }
>  
>  static struct driver_d ohci_driver = {
> -- 
> 2.4.9
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
