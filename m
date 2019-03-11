Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3F7n-0005Xv-KG
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 07:13:29 +0000
Date: Mon, 11 Mar 2019 08:13:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190311071325.2q3x2x3ntupsp4td@pengutronix.de>
References: <20190307074813.19664-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190307074813.19664-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] usb: dwc3: Toggle GCTL.CORESOFTRESET as a first step
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 06, 2019 at 11:48:13PM -0800, Andrey Smirnov wrote:
> Toggle GCTL.CORESOFTRESET before trying to access any of the block's
> registers. Without this additional step, first read of DWC3_GHWPARAMS*
> that follows results in assertion of GSTS.CSRTIMEOUT and IP block
> stuck in a non-functional state.
> 
> Note that all above has only been observed on i.MX8MQ (ZII Zest board)
> for USB1 controller. USB2 doesn't seem to be affected by this.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/usb/dwc3/core.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
> index 2e7031a34..1fc24a441 100644
> --- a/drivers/usb/dwc3/core.c
> +++ b/drivers/usb/dwc3/core.c
> @@ -663,6 +663,21 @@ static void dwc3_check_params(struct dwc3 *dwc)
>  	}
>  }
>  
> +static void dwc3_coresoft_reset(struct dwc3 *dwc)
> +{
> +	u32 reg;
> +
> +	reg = dwc3_readl(dwc->regs, DWC3_GCTL);
> +	reg |= DWC3_GCTL_CORESOFTRESET;
> +	dwc3_writel(dwc->regs, DWC3_GCTL, reg);
> +
> +	mdelay(100);

100ms is quite long. Isn't a shorter delay enough?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
