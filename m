Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SKZrI-0008GG-NE
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 18:44:10 +0000
Date: Wed, 18 Apr 2012 20:43:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120418184351.GX3852@pengutronix.de>
References: <1334773510-13806-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334773510-13806-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] Allow use platform_ide driver without ALT-registers
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, Apr 18, 2012 at 10:25:10PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  drivers/ata/intf_platform_ide.c |   12 +++++++++---
>  1 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
> index 1955a9c..af20e05 100644
> --- a/drivers/ata/intf_platform_ide.c
> +++ b/drivers/ata/intf_platform_ide.c
> @@ -64,10 +64,16 @@ static void platform_ide_setup_port(void *reg_base, void *alt_base,
>  	ioaddr->status_addr = reg_base + (IDE_REG_STATUS << shift);
>  	ioaddr->command_addr = reg_base + (IDE_REG_CMD << shift);
>  
> -	ioaddr->altstatus_addr = alt_base + (IDE_REG_ALT_STATUS << shift);
> -	ioaddr->ctl_addr = alt_base + (IDE_REG_DEV_CTL << shift);
> -
> -	ioaddr->alt_dev_addr = alt_base + (IDE_REG_DRV_ADDR << shift);
> +	if (alt_base) {
> +		ioaddr->altstatus_addr = alt_base + (IDE_REG_ALT_STATUS << shift);
> +		ioaddr->ctl_addr = alt_base + (IDE_REG_DEV_CTL << shift);
> +
> +		ioaddr->alt_dev_addr = alt_base + (IDE_REG_DRV_ADDR << shift);
> +	} else {
> +		ioaddr->altstatus_addr = ioaddr->status_addr;
> +		ioaddr->ctl_addr = ioaddr->status_addr;
> +		/* ioaddr->alt_dev_addr not used in driver */
> +	}
>  }
>  
>  static int platform_ide_probe(struct device_d *dev)
> -- 
> 1.7.3.4
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
