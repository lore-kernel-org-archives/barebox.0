Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8Sbs-0003Ox-2C
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 09:06:21 +0000
Date: Mon, 3 Sep 2012 11:06:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120903090617.GF26594@pengutronix.de>
References: <1346651881-3765-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346651881-3765-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 1/2] mtd: fix compiler warnings
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 03, 2012 at 07:58:00AM +0200, Alexander Aring wrote:
> Fix some compiler warnings.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>

Applied, thanks

Sascha

> ---
>  drivers/mtd/core.c   | 6 +++---
>  drivers/mtd/mtdraw.c | 4 ++--
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
> index 5510439..3dcc908 100644
> --- a/drivers/mtd/core.c
> +++ b/drivers/mtd/core.c
> @@ -79,7 +79,7 @@ static ssize_t mtd_write(struct cdev* cdev, const void *buf, size_t _count,
>  		return -EINVAL;
>  	}
>  
> -	dev_dbg(cdev->dev, "write: 0x%08lx 0x%08x\n", offset, count);
> +	dev_dbg(cdev->dev, "write: 0x%08lx 0x%08lx\n", offset, count);
>  	while (count) {
>  		now = count > mtd->writesize ? mtd->writesize : count;
>  
> @@ -100,7 +100,7 @@ static ssize_t mtd_write(struct cdev* cdev, const void *buf, size_t _count,
>  				ret = mtd->write(mtd, offset, now, &retlen,
>  						  buf);
>  			dev_dbg(cdev->dev,
> -				"offset: 0x%08lx now: 0x%08x retlen: 0x%08x\n",
> +				"offset: 0x%08lx now: 0x%08lx retlen: 0x%08lx\n",
>  				offset, now, retlen);
>  		}
>  		if (ret)
> @@ -174,7 +174,7 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
>  }
>  
>  #ifdef CONFIG_MTD_WRITE
> -static ssize_t mtd_erase(struct cdev *cdev, size_t count, loff_t offset)
> +static int mtd_erase(struct cdev *cdev, size_t count, loff_t offset)
>  {
>  	struct mtd_info *mtd = cdev->priv;
>  	struct erase_info erase;
> diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
> index 24f7358..9961a75 100644
> --- a/drivers/mtd/mtdraw.c
> +++ b/drivers/mtd/mtdraw.c
> @@ -137,7 +137,7 @@ static ssize_t mtdraw_read(struct cdev *cdev, void *buf, size_t count,
>  		retlen += ret;
>  	}
>  	if (ret < 0)
> -		printf("err %d\n", ret);
> +		printf("err %lu\n", ret);
>  	else
>  		ret = retlen;
>  	return ret;
> @@ -222,7 +222,7 @@ static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
>  	}
>  }
>  
> -static ssize_t mtdraw_erase(struct cdev *cdev, size_t count, loff_t _offset)
> +static int mtdraw_erase(struct cdev *cdev, size_t count, loff_t _offset)
>  {
>  	struct mtd_info *mtd = to_mtd(cdev);
>  	struct erase_info erase;
> -- 
> 1.7.12
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
