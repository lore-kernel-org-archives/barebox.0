Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kx4dQ-0006kk-IB
 for barebox@lists.infradead.org; Wed, 06 Jan 2021 08:57:41 +0000
Date: Wed, 6 Jan 2021 09:57:38 +0100
Message-ID: <20210106085738.GK19063@pengutronix.de>
References: <20201217110731.14914-1-m.grzeschik@pengutronix.de>
 <20201217110731.14914-3-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217110731.14914-3-m.grzeschik@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH v2 2/5] usb: dwc2: add clk dependency for probe via oftree
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 17, 2020 at 12:07:28PM +0100, Michael Grzeschik wrote:
> The dwc2 controller at least needs one core clock which needs to be
> enabled before it is able to address the core registers. This patch adds
> the referenced clock in the devicetree to be used.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  drivers/usb/dwc2/core.h |  1 +
>  drivers/usb/dwc2/dwc2.c | 19 +++++++++++++++++--
>  2 files changed, 18 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
> index b9845b5524..780efb262c 100644
> --- a/drivers/usb/dwc2/core.h
> +++ b/drivers/usb/dwc2/core.h
> @@ -467,6 +467,7 @@ struct dwc2 {
>  	struct dwc2_core_params params;
>  
>  	struct phy *phy; /* optional */
> +	struct clk *clk;
>  
>  #ifdef CONFIG_USB_DWC2_HOST
>  	struct usb_host host;
> diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
> index 82b5ef2813..13455479ef 100644
> --- a/drivers/usb/dwc2/dwc2.c
> +++ b/drivers/usb/dwc2/dwc2.c
> @@ -50,15 +50,26 @@ static int dwc2_probe(struct device_d *dev)
>  	dwc2->regs = IOMEM(iores->start);
>  	dwc2->dev = dev;
>  
> +	dwc2->clk = clk_get(dev, NULL);

According to the binding doc the clock should be named "otg", I think
this should be changed accordingly.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
