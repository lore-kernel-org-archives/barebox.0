Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gKISF-0006yy-RR
 for barebox@lists.infradead.org; Wed, 07 Nov 2018 07:40:49 +0000
Date: Wed, 7 Nov 2018 08:40:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181107074035.vydj7o77itezv2uj@pengutronix.de>
References: <20181106145806.15952-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181106145806.15952-1-bst@pengutronix.de>
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
Subject: Re: [PATCH] mtd: nand_denali: update compatible
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 06, 2018 at 03:58:06PM +0100, Bastian Krause wrote:
> 190a1c6e47 ("dts: update to v4.18-rc3") changed the compatible of the
> Denali NAND controller. Update the compatible in the barebox driver
> accordingly.
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  drivers/mtd/nand/nand_denali_dt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to master, thanks

Sascha

> 
> diff --git a/drivers/mtd/nand/nand_denali_dt.c b/drivers/mtd/nand/nand_denali_dt.c
> index 2c6b188094..e3024549cd 100644
> --- a/drivers/mtd/nand/nand_denali_dt.c
> +++ b/drivers/mtd/nand/nand_denali_dt.c
> @@ -86,7 +86,7 @@ out_disable_clk:
>  
>  static __maybe_unused struct of_device_id denali_nand_compatible[] = {
>  	{
> -		.compatible = "denali,denali-nand-dt"
> +		.compatible = "altr,socfpga-denali-nand"
>  	}, {
>  		/* sentinel */
>  	}
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
