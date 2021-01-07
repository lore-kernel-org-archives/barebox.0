Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxPXh-0001lR-AZ
 for barebox@lists.infradead.org; Thu, 07 Jan 2021 07:17:10 +0000
Date: Thu, 7 Jan 2021 08:17:04 +0100
Message-ID: <20210107071704.GU19063@pengutronix.de>
References: <tencent_1F5884D31C07819F5E1EA02A84FDD10FDC0A@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_1F5884D31C07819F5E1EA02A84FDD10FDC0A@qq.com>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 1/1]mtd:nand_mxs:update get/set features legacy function
 call
To: jameszxj <jameszxj@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Jan 07, 2021 at 10:19:38AM +0800, jameszxj wrote:
> update get/set features legacy function call to avoid NULL pointer crash.
> 
> Signed-off-by: zhengxiaojun <jameszxj at gmail.com>
> --- 
>  drivers/mtd/nand/nand_mxs.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

The format is perfectly fine, thanks :)

Applied.

Sascha

> 
> diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
> index 9f7ab1442..ad8aeb41f 100644
> --- a/drivers/mtd/nand/nand_mxs.c
> +++ b/drivers/mtd/nand/nand_mxs.c
> @@ -2055,14 +2055,12 @@ static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
>  		/* [1] send SET FEATURE commond to NAND */
>  		feature[0] = mode;
>  
> -		ret = chip->legacy.set_features(chip,
> -				ONFI_FEATURE_ADDR_TIMING_MODE, feature);
> +		ret = nand_set_features(chip, ONFI_FEATURE_ADDR_TIMING_MODE, feature);
>  		if (ret)
>  			goto err_out;
>  
>  		/* [2] send GET FEATURE command to double-check the timing mode */
> -		ret = chip->legacy.get_features(chip,
> -				ONFI_FEATURE_ADDR_TIMING_MODE, feature);
> +		ret = nand_get_features(chip, ONFI_FEATURE_ADDR_TIMING_MODE, feature);
>  		if (ret || feature[0] != mode)
>  			goto err_out;
>  	}
> -- 
> 2.29.2
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
