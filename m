Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZYRC-0004WI-Nt
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 08:42:16 +0000
Date: Thu, 11 Jan 2018 09:42:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180111084202.uhttrsqveif3qn25@pengutronix.de>
References: <20180110083121.4540-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180110083121.4540-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] reset: reset-socfpga: sync driver with linux
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 10, 2018 at 09:31:21AM +0100, Steffen Trumtrar wrote:
> Sync the SoCFPGA reset driver with Linux v4.14-rc1.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/reset/reset-socfpga.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/reset/reset-socfpga.c b/drivers/reset/reset-socfpga.c
> index 9214197e627d..dd081ee84f72 100644
> --- a/drivers/reset/reset-socfpga.c
> +++ b/drivers/reset/reset-socfpga.c
> @@ -22,12 +22,12 @@
>  #include <linux/spinlock.h>
>  #include <linux/types.h>
>  
> -#define NR_BANKS		4
> +#define BANK_INCREMENT		4
> +#define NR_BANKS		8
>  
>  struct socfpga_reset_data {
>  	spinlock_t			lock;
>  	void __iomem			*membase;
> -	u32				modrst_offset;
>  	struct reset_controller_dev	rcdev;
>  };
>  
> @@ -44,9 +44,8 @@ static int socfpga_reset_assert(struct reset_controller_dev *rcdev,
>  
>  	spin_lock_irqsave(&data->lock, flags);
>  
> -	reg = readl(data->membase + data->modrst_offset + (bank * NR_BANKS));
> -	writel(reg | BIT(offset), data->membase + data->modrst_offset +
> -				 (bank * NR_BANKS));
> +	reg = readl(data->membase + (bank * BANK_INCREMENT));
> +	writel(reg | BIT(offset), data->membase + (bank * BANK_INCREMENT));
>  	spin_unlock_irqrestore(&data->lock, flags);
>  
>  	return 0;
> @@ -66,9 +65,8 @@ static int socfpga_reset_deassert(struct reset_controller_dev *rcdev,
>  
>  	spin_lock_irqsave(&data->lock, flags);
>  
> -	reg = readl(data->membase + data->modrst_offset + (bank * NR_BANKS));
> -	writel(reg & ~BIT(offset), data->membase + data->modrst_offset +
> -				  (bank * NR_BANKS));
> +	reg = readl(data->membase + (bank * BANK_INCREMENT));
> +	writel(reg & ~BIT(offset), data->membase + (bank * BANK_INCREMENT));
>  
>  	spin_unlock_irqrestore(&data->lock, flags);
>  
> @@ -85,6 +83,7 @@ static int socfpga_reset_probe(struct device_d *dev)
>  	struct socfpga_reset_data *data;
>  	struct resource *res;
>  	struct device_node *np = dev->device_node;
> +	u32 modrst_offset;
>  
>  	data = xzalloc(sizeof(*data));
>  
> @@ -93,10 +92,11 @@ static int socfpga_reset_probe(struct device_d *dev)
>  	if (IS_ERR(data->membase))
>  		return PTR_ERR(data->membase);
>  
> -	if (of_property_read_u32(np, "altr,modrst-offset", &data->modrst_offset)) {
> +	if (of_property_read_u32(np, "altr,modrst-offset", &modrst_offset)) {
>  		dev_warn(dev, "missing altr,modrst-offset property, assuming 0x10!\n");
> -		data->modrst_offset = 0x10;
> +		modrst_offset = 0x10;
>  	}
> +	data->membase += modrst_offset;
>  
>  	spin_lock_init(&data->lock);
>  
> -- 
> 2.11.0
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
