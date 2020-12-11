Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knkSo-00041h-Dn
 for barebox@lists.infradead.org; Fri, 11 Dec 2020 15:36:12 +0000
Date: Fri, 11 Dec 2020 16:36:08 +0100
Message-ID: <20201211153608.GB3977@pengutronix.de>
References: <20201210103104.3816-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210103104.3816-1-jmaselbas@kalray.eu>
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
Subject: Re: [PATCH v2 1/4] usb: dwc2: Add support for optional usb phy
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org

On Thu, Dec 10, 2020 at 11:31:01AM +0100, Jules Maselbas wrote:
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/usb/dwc2/core.h |  2 ++
>  drivers/usb/dwc2/dwc2.c | 24 ++++++++++++++++++++++++
>  drivers/usb/dwc2/dwc2.h |  1 +
>  3 files changed, 27 insertions(+)
> 
> diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
> index 090ca15fe..b9845b552 100644
> --- a/drivers/usb/dwc2/core.h
> +++ b/drivers/usb/dwc2/core.h
> @@ -466,6 +466,8 @@ struct dwc2 {
>  	struct dwc2_hw_params hw_params;
>  	struct dwc2_core_params params;
>  
> +	struct phy *phy; /* optional */
> +
>  #ifdef CONFIG_USB_DWC2_HOST
>  	struct usb_host host;
>  	u8 in_data_toggle[MAX_DEVICE][MAX_ENDPOINT];
> diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
> index 282e6754b..9ab3b5b53 100644
> --- a/drivers/usb/dwc2/dwc2.c
> +++ b/drivers/usb/dwc2/dwc2.c
> @@ -50,6 +50,20 @@ static int dwc2_probe(struct device_d *dev)
>  	dwc2->regs = IOMEM(iores->start);
>  	dwc2->dev = dev;
>  
> +	dwc2->phy = phy_optional_get(dev, "usb2-phy");
> +	if (IS_ERR(dwc2->phy)) {
> +		ret = PTR_ERR(dwc2->phy);
> +		return ret;
> +	}
> +
> +	if (dwc2->phy) {
> +		ret = phy_power_on(dwc2->phy);
> +		if (ret == 0)
> +			ret = phy_init(dwc2->phy);
> +		if (ret)
> +			goto error;
> +	}

Just like with clocks a NULL pointer is handled like a dummy phy, you
can drop the if (dwc2->phy) tests here.

Shouldn't phy_init() called before phy_power_on()? At least that's the
order I find in the Kernel in several places.

>  	dwc2_gadget_uninit(dwc2);
> +
> +	if (dwc2->phy) {
> +		ret = phy_exit(dwc2->phy);
> +		if (ret == 0)
> +			phy_power_off(dwc2->phy);
> +	}

Likewise phy_power_off() before phy_exit().

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
