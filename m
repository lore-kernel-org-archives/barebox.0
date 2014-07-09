Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4kU4-0000U3-0S
 for barebox@lists.infradead.org; Wed, 09 Jul 2014 05:32:01 +0000
Date: Wed, 9 Jul 2014 07:31:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140709053136.GZ23235@pengutronix.de>
References: <cover.1404734020.git.zahari.doychev@linux.com>
 <a2949dd62538a64ec5689b63d6ff531620ceb198.1404734020.git.zahari.doychev@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a2949dd62538a64ec5689b63d6ff531620ceb198.1404734020.git.zahari.doychev@linux.com>
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
Subject: Re: [PATCH] drivers/mtd: fix NULL pointer dereference in partition
 lock/unlock
To: Zahari Doychev <zahari.doychev@linux.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 08, 2014 at 09:37:35AM +0200, Zahari Doychev wrote:
> Some mtd device does not support lock and unlock functions. Adding this check
> avoids crashing when mtd_part_lock/unlock are called for such devices.
> 
> Signed-off-by: Zahari Doychev <zahari.doychev@linux.com>

Applied, thanks

Sascha

> ---
>  drivers/mtd/partition.c |    6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
> index 5c0d46f..5a3d1ae 100644
> --- a/drivers/mtd/partition.c
> +++ b/drivers/mtd/partition.c
> @@ -51,6 +51,9 @@ static int mtd_part_erase(struct mtd_info *mtd, struct erase_info *instr)
>  
>  static int mtd_part_lock(struct mtd_info *mtd, loff_t offset, size_t len)
>  {
> +	if (!mtd->master->lock)
> +		return -ENOSYS;
> +
>  	if (!(mtd->flags & MTD_WRITEABLE))
>  		return -EROFS;
>  
> @@ -64,6 +67,9 @@ static int mtd_part_lock(struct mtd_info *mtd, loff_t offset, size_t len)
>  
>  static int mtd_part_unlock(struct mtd_info *mtd, loff_t offset, size_t len)
>  {
> +	if (!mtd->master->unlock)
> +		return -ENOSYS;
> +
>  	if (!(mtd->flags & MTD_WRITEABLE))
>  		return -EROFS;
>  
> -- 
> 1.7.9.5
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
