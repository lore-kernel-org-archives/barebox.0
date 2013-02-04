Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2MBH-0006V8-7y
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 13:33:55 +0000
Date: Mon, 4 Feb 2013 14:33:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130204133353.GJ1906@pengutronix.de>
References: <1359620502-27551-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359620502-27551-1-git-send-email-jlu@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] nand_write: initialize OOB buffer for each page
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jan 31, 2013 at 09:21:42AM +0100, Jan Luebbe wrote:
> Previously, during a multi-page write, chip->oob_poi would not be
> reinitialized.
> 
> See commit f722013ee9fd24623df31dec9a91a6d02c3e2f2f in the kernel
> for an analogous change.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks

Sascha

> ---
>  drivers/mtd/nand/nand_write.c |   10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
> index 9997127..276728c 100644
> --- a/drivers/mtd/nand/nand_write.c
> +++ b/drivers/mtd/nand/nand_write.c
> @@ -296,10 +296,6 @@ int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
>  	    (chip->pagebuf << chip->page_shift) < (to + ops->len))
>  		chip->pagebuf = -1;
>  
> -	/* Initialize to all 0xFF, to avoid the possibility of
> -	   left over OOB data from a previous OOB read. */
> -	memset(chip->oob_poi, 0xff, mtd->oobsize);
> -
>  	while(1) {
>  		int bytes = mtd->writesize;
>  		int cached = writelen > bytes && page != blockmask;
> @@ -315,8 +311,12 @@ int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
>  			wbuf = chip->buffers->databuf;
>  		}
>  
> -		if (unlikely(oob))
> +		if (unlikely(oob)) {
>  			oob = nand_fill_oob(chip, oob, ops);
> +		} else {
> +			/* We still need to erase leftover OOB data */
> +			memset(chip->oob_poi, 0xff, mtd->oobsize);
> +		}
>  
>  		ret = chip->write_page(mtd, chip, wbuf, page, cached,
>  				       (ops->mode == MTD_OOB_RAW));
> -- 
> 1.7.10.4
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
