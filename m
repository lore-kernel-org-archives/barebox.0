Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egQ5V-0002lc-Os
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 07:12:16 +0000
Date: Tue, 30 Jan 2018 08:11:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180130071158.urvefxgjl3lvmfwd@pengutronix.de>
References: <1517231051-12129-1-git-send-email-d.schultz@phytec.de>
 <1517231051-12129-3-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1517231051-12129-3-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH 3/3] drivers: mtd: nand: omap: Return stat value
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 29, 2018 at 02:04:11PM +0100, Daniel Schultz wrote:
> The read page function should return the total count of flipped bits,
> otherwise the caller always thinks no bitflip occured.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  drivers/mtd/nand/nand_omap_gpmc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
> index e18ce63..38f4960 100644
> --- a/drivers/mtd/nand/nand_omap_gpmc.c
> +++ b/drivers/mtd/nand/nand_omap_gpmc.c
> @@ -712,7 +712,7 @@ static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
>  	else
>  		mtd->ecc_stats.corrected += stat;
>  
> -	return 0;
> +	return stat;
>  }

I'm afraid this is not enough. read_page should return the maximum
number of bitflips in any ECC step. You first have to change
omap_correct_bch() so that it returns this number.

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
