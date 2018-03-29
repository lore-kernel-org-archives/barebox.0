Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f1RZl-0007JR-AR
 for barebox@lists.infradead.org; Thu, 29 Mar 2018 07:02:23 +0000
Date: Thu, 29 Mar 2018 09:02:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180329070205.dfiivafh5xghupvs@pengutronix.de>
References: <20180326142556.27727-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180326142556.27727-1-p.zabel@pengutronix.de>
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
Subject: Re: [PATCH] of: partition: fix typo when writing #address-cells
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 26, 2018 at 04:25:56PM +0200, Philipp Zabel wrote:
> On > 4 GiB eMMC devices, barebox writes a 32-bit address and a 64-bit
> size into the partition reg property, because #address-cells is
> accidentally written as '#addres-cells'. This causes a fallback to
> 32-bit address size. Fix the typo and thereby of_partition_fixup for
> 64-bit partitions.
> 
> Fixes: a2fa18f9f483 ("mtd: of: Make used partition binding configurable")
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  drivers/of/partition.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/partition.c b/drivers/of/partition.c
> index 6f9651a9e4..aa6e601b7f 100644
> --- a/drivers/of/partition.c
> +++ b/drivers/of/partition.c
> @@ -190,7 +190,7 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
>  	if (ret)
>  		return ret;
>  
> -	of_property_write_u32(partnode, "#addres-cells", n_cells);
> +	of_property_write_u32(partnode, "#address-cells", n_cells);
>  	if (ret)
>  		return ret;
>  
> -- 
> 2.16.1
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
