Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gqfIr-0004Dg-Hc
 for barebox@lists.infradead.org; Mon, 04 Feb 2019 14:32:55 +0000
Date: Mon, 4 Feb 2019 15:32:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190204143251.23aqqemxjrk5tjtq@pengutronix.de>
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
 <20190129065549.29161-11-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190129065549.29161-11-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 10/19] fs: devfs: Change .lseek callbacks to return
 'int'
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 28, 2019 at 10:55:40PM -0800, Andrey Smirnov wrote:
> Returning requested offset from .lseek() callback doesn't really give
> us any new information while bringing unnecessary
> complications. Change all .lseek() types (both in struct struct
> cdev_operations and in struct fs_driver_d) to return 'int' and adjust
> the rest of the codebase accordingly.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/mtd/nand/nand-bb.c |  5 ++---
>  drivers/mtd/ubi/barebox.c  |  4 ++--
>  fs/bpkfs.c                 |  4 ++--
>  fs/devfs.c                 |  6 +++---
>  fs/efi.c                   |  4 ++--
>  fs/fat/fat.c               |  4 ++--
>  fs/fs.c                    |  8 +++-----
>  fs/nfs.c                   |  4 ++--
>  fs/pstore/fs.c             |  4 ++--
>  fs/smhfs.c                 |  4 ++--
>  fs/tftp.c                  | 10 +++++-----
>  fs/uimagefs.c              |  4 ++--
>  include/driver.h           |  2 +-
>  include/fs.h               |  2 +-
>  14 files changed, 31 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
> index 012163ebb..eea4bb43e 100644
> --- a/drivers/mtd/nand/nand-bb.c
> +++ b/drivers/mtd/nand/nand-bb.c
> @@ -236,11 +236,10 @@ static int nand_bb_calc_size(struct nand_bb *bb)
>  	return 0;
>  }
>  
> -static loff_t nand_bb_lseek(struct cdev *cdev, loff_t __offset)
> +static int nand_bb_lseek(struct cdev *cdev, loff_t offset)
>  {
>  	struct nand_bb *bb = cdev->priv;
>  	loff_t raw_pos = 0;
> -	uint32_t offset = __offset;
>  
>  	/* lseek only in readonly mode */
>  	if (bb->flags & O_ACCMODE)
> @@ -257,7 +256,7 @@ static loff_t nand_bb_lseek(struct cdev *cdev, loff_t __offset)
>  
>  		if (!offset) {
>  			bb->offset = raw_pos;
> -			return __offset;
> +			return 0;

This introduces the warning

include/linux/kernel.h:111:17: warning: comparison of distinct pointer types lacks a cast
  (void) (&_min1 == &_min2);  \
                   ^
drivers/mtd/nand/nand-bb.c:248:15: note: in expansion of macro 'min'
		      off_t now = min(offset, bb->mtd->erasesize);

Changed to use min_t() rather than min()

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
