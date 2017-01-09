Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQX5Q-0002s1-8o
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 10:21:58 +0000
Date: Mon, 9 Jan 2017 11:21:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109102133.2hwmwjqeikbbh5ck@pengutronix.de>
References: <1482356321-19996-1-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1482356321-19996-1-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH] mtd: nand_mxs: fix NAND error when change clk rate
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 21, 2016 at 10:38:41PM +0100, Christian Hemp wrote:
> The function "nand_enable_edo_mode" changed the NAND clk rate, without turning
> it off. In this case it is posible to get the following errors:
>     MXS NAND: Error sending command
>     MXS NAND: Error sending command
>     MXS NAND: DMA read error
> 
> This can be fixed if the NAND clk is disabled before we change the clk
> rate.
> 
> Tested with:
> nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron
> MT29F4G08ABADAWP), 512MiB, page size: 2048, OOB size: 64
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> ---
>  drivers/mtd/nand/nand_mxs.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
> index cba0bee..ce79bca 100644
> --- a/drivers/mtd/nand/nand_mxs.c
> +++ b/drivers/mtd/nand/nand_mxs.c
> @@ -2047,7 +2047,9 @@ static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
>  	nand->select_chip(mtd, -1);
>  
>  	/* [3] set the main IO clock, 100MHz for mode 5, 80MHz for mode 4. */
> +	clk_disable(info->clk);
>  	clk_set_rate(info->clk, (mode == 5) ? 100000000 : 80000000);
> +	clk_enable(info->clk);

Calling clk_disable doesn't guarantee that the clock is actually
disabled. If there's another user of the same clock then clk_disable
will only decrease the usage counter.
I think if possible we should fix this in the clock driver instead.

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
