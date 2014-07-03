Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2b0p-0001pG-6U
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 07:00:56 +0000
Date: Thu, 3 Jul 2014 09:00:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140703070031.GP14257@pengutronix.de>
References: <1404316514-23162-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404316514-23162-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH] mtd: delete partition erase size initialisation
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 02, 2014 at 04:55:14PM +0100, Renaud Barbier wrote:
> Delete the partition erase size initialisation to let the code
> that follows determine the biggest partition erase size.

Applied, thanks

Sascha

> ---
>  drivers/mtd/partition.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
> index 5c0d46f..9b2b20e 100644
> --- a/drivers/mtd/partition.c
> +++ b/drivers/mtd/partition.c
> @@ -108,7 +108,6 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
>  	part->type = mtd->type;
>  	part->flags = mtd->flags;
>  	part->parent = &mtd->class_dev;
> -	part->erasesize = mtd->erasesize;
>  	part->writesize = mtd->writesize;
>  	part->writebufsize = mtd->writebufsize;
>  	part->oobsize = mtd->oobsize;
> -- 
> 1.8.3.1
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
