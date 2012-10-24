Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQviu-0004BZ-U6
 for barebox@lists.infradead.org; Wed, 24 Oct 2012 07:49:57 +0000
Date: Wed, 24 Oct 2012 09:49:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121024074955.GV27665@pengutronix.de>
References: <1350982800-11777-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350982800-11777-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH] devfs-core: add writesize in mtd partition ioctl
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 23, 2012 at 11:00:00AM +0200, Alexander Aring wrote:
> Add writesize in mtd partition MEMGETINFO ioctl.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>

Just checked, we already have this one.

Sascha

> ---
>  fs/devfs-core.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index 2788fe7..0d2f75a 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -136,6 +136,7 @@ static int partition_ioctl(struct cdev *cdev, int request, void *buf)
>  			user->flags	= cdev->mtd->flags;
>  			user->size	= cdev->mtd->size;
>  			user->erasesize	= cdev->mtd->erasesize;
> +			user->writesize	= cdev->mtd->writesize;
>  			user->oobsize	= cdev->mtd->oobsize;
>  			user->mtd	= cdev->mtd;
>  			/* The below fields are obsolete */
> -- 
> 1.8.0
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
