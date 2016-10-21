Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxTzt-0000fo-E6
 for barebox@lists.infradead.org; Fri, 21 Oct 2016 07:12:10 +0000
Date: Fri, 21 Oct 2016 09:11:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161021071147.iacxwcdqz7sx7gs2@pengutronix.de>
References: <1476970807-43811-1-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1476970807-43811-1-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH 1/2] nand: imx6: Changed default NAND clock
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org, Daniel Schultz <d.schultz@phytec.de>

On Thu, Oct 20, 2016 at 03:40:06PM +0200, Christian Hemp wrote:
> From: Daniel Schultz <d.schultz@phytec.de>
> 
> The Barebox recognized false bad erase blocks while booting from a
> Spansion NAND (1). This error occurred due a to high clock. The
> Kernel sets the default NAND clock to 22Mhz. So, to fix this error and
> to be more identical with the Kernel, the Barebox should be too.

The timing is changed afterwards to a faster mode and the clock is
changed again. Does that work for you properly?

Sascha

> 
> 1: nand: NAND device: Manufacturer ID: 0x01, Chip ID: 0xd3 (AMD/Spansion
> S34ML08G2), 1024MiB, page size: 2048, OOB size: 128
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> Tested-by: Stefan Lengfeld <s.lengfeld@phytec.de>
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> ---
>  drivers/mtd/nand/nand_mxs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
> index 01aa063..fe955e8 100644
> --- a/drivers/mtd/nand/nand_mxs.c
> +++ b/drivers/mtd/nand/nand_mxs.c
> @@ -2145,7 +2145,7 @@ static int mxs_nand_probe(struct device_d *dev)
>  
>  	if (mxs_nand_is_imx6(nand_info)) {
>  		clk_disable(nand_info->clk);
> -		clk_set_rate(nand_info->clk, 96000000);
> +		clk_set_rate(nand_info->clk, 22000000);
>  		clk_enable(nand_info->clk);
>  		nand_info->dma_channel_base = 0;
>  	} else {
> -- 
> 1.9.1
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
