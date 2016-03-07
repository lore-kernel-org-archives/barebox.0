Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acqJY-0003Kv-Kp
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 08:14:53 +0000
Date: Mon, 7 Mar 2016 09:14:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160307081430.GJ21869@pengutronix.de>
References: <1457324509-24857-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1457324509-24857-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] !fixup driver: replace dev_request_mem_region with
 dev_request_mem_resource
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Mar 06, 2016 at 08:21:49PM -0800, Andrey Smirnov wrote:
> It looks like Coccinelle script failed to add register file
> initialization code at least in two places
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/i2c/busses/i2c-imx.c  | 1 +
>  drivers/usb/imx/imx-usb-phy.c | 1 +
>  2 files changed, 2 insertions(+)

It was missing in far more places. Should be fixed in the newest
version.

Sascha

 
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index 1017971..e407896 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -610,6 +610,7 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
>  		ret = PTR_ERR(iores);
>  		goto fail;
>  	}
> +	i2c_fsl->base = IOMEM(iores->start);
>  
>  	i2c_fsl_init_recovery(i2c_fsl, pdev);
>  
> diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
> index 3306bd4..33e27da 100644
> --- a/drivers/usb/imx/imx-usb-phy.c
> +++ b/drivers/usb/imx/imx-usb-phy.c
> @@ -76,6 +76,7 @@ static int imx_usbphy_probe(struct device_d *dev)
>  		ret = PTR_ERR(iores);
>  		goto err_free;
>  	}
> +	imxphy->base = IOMEM(iores->start);
>  
>  	imxphy->clk = clk_get(dev, NULL);
>  	if (IS_ERR(imxphy->clk)) {
> -- 
> 2.5.0
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
