Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fOPNY-0002iI-Qa
 for barebox@lists.infradead.org; Thu, 31 May 2018 15:20:47 +0000
Date: Thu, 31 May 2018 17:20:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180531152028.kbprl3tnv3qyrpep@pengutronix.de>
References: <1527590457-27742-1-git-send-email-heinrich.toews@wago.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1527590457-27742-1-git-send-email-heinrich.toews@wago.com>
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
Subject: Re: [PATCH] mtd: nand: omap_gpmc: fix: remove bch4 string extant
To: Heinrich.Toews@wago.com
Cc: barebox@lists.infradead.org

On Tue, May 29, 2018 at 10:41:11AM +0000, Heinrich.Toews@wago.com wrote:
> Remove an erroneous bch4 string leftover that
> leads to a false ecc mode mapping.
> 
> BCH4 support was previously removed by Teresa Remmet:
> d316cda 'mtd: nand: omap_gpmc: Remove BCH4 support'
> 
> Signed-off-by: Heinrich Toews <heinrich.toews@wago.com>
> ---
>  drivers/mtd/nand/nand_omap_gpmc.c | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
> index e18ce63..ce03c7a 100644
> --- a/drivers/mtd/nand/nand_omap_gpmc.c
> +++ b/drivers/mtd/nand/nand_omap_gpmc.c
> @@ -95,7 +95,6 @@ int omap_gpmc_decode_bch(int select_4_8, unsigned char *ecc, unsigned int *err_l
>  static const char *ecc_mode_strings[] = {
>  	"software",
>  	"hamming_hw_romcode",
> -	"bch4_hw",
>  	"bch8_hw",
>  	"bch8_hw_romcode",
>  };
> -- 
> 2.7.4
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
