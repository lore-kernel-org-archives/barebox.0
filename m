Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFynk-0001xH-3m
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 09:53:10 +0000
Date: Fri, 26 Oct 2018 11:52:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181026095256.jtfuch4q3l22ea3q@pengutronix.de>
References: <20181024233754.GA17799@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181024233754.GA17799@lenoch>
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
Subject: Re: [PATCH 1/3] mtd: atmel_nand: replace printk with dev_info
To: Ladislav Michl <ladis@linux-mips.org>
Cc: barebox@lists.infradead.org

On Thu, Oct 25, 2018 at 01:37:54AM +0200, Ladislav Michl wrote:
> Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
> ---
>  drivers/mtd/nand/atmel_nand.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks

Sascha

> diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
> index 0b9071c9b..4bc944d24 100644
> --- a/drivers/mtd/nand/atmel_nand.c
> +++ b/drivers/mtd/nand/atmel_nand.c
> @@ -1429,14 +1429,14 @@ static int __init atmel_nand_probe(struct device_d *dev)
>  		}
>  
>  		if (gpio_get_value(host->board->det_pin)) {
> -			printk("No SmartMedia card inserted.\n");
> +			dev_info(dev, "No SmartMedia card inserted.\n");
>  			res = -ENXIO;
>  			goto err_no_card;
>  		}
>  	}
>  
>  	if (host->board->on_flash_bbt) {
> -		printk(KERN_INFO "atmel_nand: Use On Flash BBT\n");
> +		dev_info(dev, "Use On Flash BBT\n");
>  		nand_chip->bbt_options |= NAND_BBT_USE_FLASH;
>  	}
>  
> -- 
> 2.19.1
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
