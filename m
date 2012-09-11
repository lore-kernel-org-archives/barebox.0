Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBKlX-0005u9-JA
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 07:20:12 +0000
Date: Tue, 11 Sep 2012 09:20:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120911072009.GC18243@pengutronix.de>
References: <1347341491-2647-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347341491-2647-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH] fs: fs.c fix cast
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 11, 2012 at 07:31:31AM +0200, Alexander Aring wrote:
> Fix casting on min argument, to avoid warnings on 64bit build.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>

Applied, thanks

Sascha

> ---
>  fs/fs.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 38917bf..db4621a 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -1525,7 +1525,9 @@ ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulon
>  		return -1;
>  	dev = cdev->dev;
>  
> -	size = min((loff_t)count, resource_size(&dev->resource[0]) - offset);
> +	size = min((resource_size_t)count,
> +			resource_size(&dev->resource[0]) -
> +			(resource_size_t)offset);
>  	memcpy_sz(buf, dev_get_mem_region(dev, 0) + offset, size, flags & O_RWSIZE_MASK);
>  	return size;
>  }
> @@ -1540,7 +1542,9 @@ ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, loff_t offse
>  		return -1;
>  	dev = cdev->dev;
>  
> -	size = min((loff_t)count, resource_size(&dev->resource[0]) - offset);
> +	size = min((resource_size_t)count,
> +			resource_size(&dev->resource[0]) -
> +			(resource_size_t)offset);
>  	memcpy_sz(dev_get_mem_region(dev, 0) + offset, buf, size, flags & O_RWSIZE_MASK);
>  	return size;
>  }
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
