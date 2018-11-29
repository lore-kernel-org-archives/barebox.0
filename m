Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSH4l-0001Om-Nk
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 07:49:33 +0000
Date: Thu, 29 Nov 2018 08:49:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181129074917.j3x57s65hbhbb2g5@pengutronix.de>
References: <20181127071300.28645-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181127071300.28645-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] mtd: nand: denali: quiet down driver
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Nov 27, 2018 at 08:13:00AM +0100, Steffen Trumtrar wrote:
> Instead of always printing the timing registers, make it a debug information
> only.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/mtd/nand/nand_denali.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/nand_denali.c
> index ef3395864cf5..256196624389 100644
> --- a/drivers/mtd/nand/nand_denali.c
> +++ b/drivers/mtd/nand/nand_denali.c
> @@ -511,7 +511,7 @@ static uint16_t denali_nand_timing_set(struct denali_nand_info *denali)
>  		get_hynix_nand_para(denali, device_id);
>  	}
>  
> -	dev_info(denali->dev,
> +	dev_dbg(denali->dev,
>  			"Dump timing register values:\n"
>  			"acc_clks: %d, re_2_we: %d, re_2_re: %d\n"
>  			"we_2_re: %d, addr_2_data: %d, rdwr_en_lo_cnt: %d\n"
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
