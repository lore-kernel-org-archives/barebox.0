Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XPmOS-0005zX-L1
 for barebox@lists.infradead.org; Fri, 05 Sep 2014 05:49:09 +0000
Date: Fri, 5 Sep 2014 07:48:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140905054845.GY5352@pengutronix.de>
References: <1408093803-17371-1-git-send-email-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1408093803-17371-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: Re: [PATCH] serial: imx: Fix for non-devicetree boards
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 15, 2014 at 11:10:03AM +0200, Philipp Zabel wrote:
> Commit 3843bfd0ab77eaf125ca617922927b61fc8ded74
> "serial: imx: Determine device name from device tree"
> broke this driver for non-devicetree boards, since
> of_alias_get may not be called with a NULL pointer
> as first argument.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>

Applied, thanks.

Damn, I missed this patch in my inbox, otherwise it would have been in
the last release.

Now it's in the stable/2014.09 branch.

Sascha

> ---
>  drivers/serial/serial_imx.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
> index 474bfaf..e379f29 100644
> --- a/drivers/serial/serial_imx.c
> +++ b/drivers/serial/serial_imx.c
> @@ -338,9 +338,11 @@ static int imx_serial_probe(struct device_d *dev)
>  	cdev->flush = imx_serial_flush;
>  	cdev->setbrg = imx_serial_setbaudrate;
>  	cdev->linux_console_name = "ttymxc";
> -	devname = of_alias_get(dev->device_node);
> -	if (devname)
> -		cdev->devname = xstrdup(devname);
> +	if (dev->device_node) {
> +		devname = of_alias_get(dev->device_node);
> +		if (devname)
> +			cdev->devname = xstrdup(devname);
> +	}
>  
>  	imx_serial_init_port(cdev);
>  
> -- 
> 2.0.1
> 
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
