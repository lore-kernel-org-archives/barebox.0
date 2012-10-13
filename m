Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TN0s1-0004NG-P5
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 12:31:10 +0000
Date: Sat, 13 Oct 2012 14:31:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121013123108.GY27665@pengutronix.de>
References: <1350114328-23060-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350114328-23060-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH] mtd-core: add writesize in MEMGETINFO ioctl
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 13, 2012 at 09:45:28AM +0200, Alexander Aring wrote:
> Add writesize in MEMGETINFO ioctl.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>

Applied, thanks

Sascha

> ---
>  drivers/mtd/core.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
> index 6550741..7c323a1 100644
> --- a/drivers/mtd/core.c
> +++ b/drivers/mtd/core.c
> @@ -143,6 +143,7 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
>  		user->flags	= mtd->flags;
>  		user->size	= mtd->size;
>  		user->erasesize	= mtd->erasesize;
> +		user->writesize	= mtd->writesize;
>  		user->oobsize	= mtd->oobsize;
>  		user->mtd	= mtd;
>  		/* The below fields are obsolete */
> -- 
> 1.7.12.2
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
