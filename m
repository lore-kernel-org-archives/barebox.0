Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOebY-00077n-Hr
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 08:08:26 +0000
Date: Mon, 19 Nov 2018 09:08:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181119080810.7puc46mpnrr25j6y@pengutronix.de>
References: <20181114151454.8326-1-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181114151454.8326-1-ejo@pengutronix.de>
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
Subject: Re: [PATCH] nand: denali: remove undefined GFP_DMA flag
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 14, 2018 at 04:14:54PM +0100, Enrico Jorns wrote:
> This was a remnant from porting kernel code to barebox.
> While being uncritical so far, this will now cause a compiler error
> since kzalloc is not a define but a static inline function.
> 
> As the kzalloc() 'mode' argument was ignored before and still will be,
> it is safe to remove the parameter.
> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---
>  drivers/mtd/nand/nand_denali.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/nand_denali.c
> index 8b09b3722f..ef3395864c 100644
> --- a/drivers/mtd/nand/nand_denali.c
> +++ b/drivers/mtd/nand/nand_denali.c
> @@ -1387,7 +1387,7 @@ int denali_init(struct denali_nand_info *denali)
>  	}
>  
>  	/* allocate a temporary buffer for nand_scan_ident() */
> -	denali->buf.buf = kzalloc(PAGE_SIZE, GFP_DMA | GFP_KERNEL);
> +	denali->buf.buf = kzalloc(PAGE_SIZE, GFP_KERNEL);

It's fine the way it is. The driver is from the Kernel, uses kzalloc  in
other places, so fine to do so here aswell.

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
