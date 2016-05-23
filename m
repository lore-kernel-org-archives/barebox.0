Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4jLI-0006yW-V2
 for barebox@lists.infradead.org; Mon, 23 May 2016 06:27:57 +0000
Date: Mon, 23 May 2016 08:27:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160523062733.GK11148@pengutronix.de>
References: <1463678348-9046-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1463678348-9046-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] ATA: platform_ide: Fix patch "driver: replace
 dev_request_mem_region with dev_request_mem_resource" dev_request_mem_region
 with dev_request_mem_resource" The driver trying to use memory resource,
 then IO resource. The ALT register is optional.
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, May 19, 2016 at 08:19:08PM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/ata/intf_platform_ide.c | 14 +++++---------
>  1 file changed, 5 insertions(+), 9 deletions(-)

Applied, thanks.

I fixed the commit log a bit while applying, somehow the complete
message came up in the subject.

Sascha

> 
> diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
> index c3af083..15f5c0a 100644
> --- a/drivers/ata/intf_platform_ide.c
> +++ b/drivers/ata/intf_platform_ide.c
> @@ -104,17 +104,13 @@ static int platform_ide_probe(struct device_d *dev)
>  	}
>  
>  	iores = dev_request_mem_resource(dev, 0);
> -	if (IS_ERR(iores))
> -		return PTR_ERR(iores);
> -	reg_base = IOMEM(iores->start);
> -
> -	if (!IS_ERR(reg_base)) {
> +	if (!IS_ERR(iores)) {
> +		reg_base = IOMEM(iores->start);
>  		mmio = 1;
>  		iores = dev_request_mem_resource(dev, 1);
> -		if (IS_ERR(iores))
> -			return PTR_ERR(iores);
> -		alt_base = IOMEM(iores->start);
> -		if (IS_ERR(alt_base))
> +		if (!IS_ERR(iores))
> +			alt_base = IOMEM(iores->start);
> +		else
>  			alt_base = NULL;
>  	} else {
>  		reg = dev_get_resource(dev, IORESOURCE_IO, 0);
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
