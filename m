Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hEsl7-0008Qq-VY
 for barebox@lists.infradead.org; Fri, 12 Apr 2019 09:46:11 +0000
Date: Fri, 12 Apr 2019 11:46:06 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190412094606.2bkv5vimvsra3ae7@pengutronix.de>
References: <20190412082028.6195-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190412082028.6195-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/2] mtd: peb: Add function to test for an empty block
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Apr 12, 2019 at 10:20:27AM +0200, Sascha Hauer wrote:
> FIXME: Why does this use raw accesses? The test for 16 bitflips

Was this FIXME supposed to land in the commit history? :)

 - Roland

> is arbitrary, do this properly. Only a single page of a whole
> block is tested, this has at least to be documented.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mtd/peb.c     | 32 ++++++++++++++++++++++++++++++++
>  include/mtd/mtd-peb.h |  1 +
>  2 files changed, 33 insertions(+)
> 
> diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
> index 388db7f587..d9da4797b0 100644
> --- a/drivers/mtd/peb.c
> +++ b/drivers/mtd/peb.c
> @@ -15,6 +15,7 @@
>  #include <init.h>
>  #include <magicvar.h>
>  #include <globalvar.h>
> +#include <linux/mtd/nand.h>
>  #include <linux/mtd/mtd.h>
>  #include <mtd/mtd-peb.h>
>  #include <linux/err.h>
> @@ -562,6 +563,37 @@ out:
>  	return err;
>  }
>  
> +int mtd_peb_is_empty(struct mtd_info *mtd, int block)
> +{
> +	struct mtd_oob_ops ops;
> +	int rawsize = mtd->writesize + mtd->oobsize;
> +	void *rawpage = xmalloc(rawsize);
> +	int ret;
> +	loff_t offset = (loff_t)block * mtd->erasesize;
> +
> +	ops.mode = MTD_OPS_RAW;
> +	ops.ooboffs = 0;
> +	ops.datbuf = rawpage;
> +	ops.len = mtd->writesize;
> +	ops.oobbuf = rawpage + mtd->writesize;
> +	ops.ooblen = mtd->oobsize;
> +
> +	ret = mtd_read_oob(mtd, offset, &ops);
> +	if (ret)
> +		goto err;
> +
> +	ret = nand_check_erased_buf(rawpage, rawsize, 16);
> +
> +	if (ret == -EBADMSG)
> +		ret = 0;
> +	else if (ret >= 0)
> +		ret = 1;
> +
> +err:
> +	free(rawpage);
> +	return ret;
> +}
> +
>  /**
>   * mtd_peb_create_bitflips - create bitflips on Nand pages
>   * @mtd: mtd device
> diff --git a/include/mtd/mtd-peb.h b/include/mtd/mtd-peb.h
> index 23f89d89a8..6d862499aa 100644
> --- a/include/mtd/mtd-peb.h
> +++ b/include/mtd/mtd-peb.h
> @@ -18,6 +18,7 @@ int mtd_peb_check_all_ff(struct mtd_info *mtd, int pnum, int offset, int len,
>  int mtd_peb_verify(struct mtd_info *mtd, const void *buf, int pnum,
>  				int offset, int len);
>  int mtd_num_pebs(struct mtd_info *mtd);
> +int mtd_peb_is_empty(struct mtd_info *mtd, int block);
>  int mtd_peb_create_bitflips(struct mtd_info *mtd, int pnum, int offset,
>  				   int len, int num_bitflips, int random,
>  				   int info);
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
