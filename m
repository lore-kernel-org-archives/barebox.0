Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjD31-0002DN-NS
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 17:26:00 +0000
Date: Mon, 25 Jun 2012 19:25:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120625172557.GI14321@pengutronix.de>
References: <1340625807-18113-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340625807-18113-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] fs/devfs.c: disallow write and erase if a partition is
 read-only
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 25, 2012 at 02:03:27PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks.

Sascha

> ---
>  fs/devfs.c |    6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/fs/devfs.c b/fs/devfs.c
> index ae48451..074bb34 100644
> --- a/fs/devfs.c
> +++ b/fs/devfs.c
> @@ -49,6 +49,9 @@ static int devfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t s
>  {
>  	struct cdev *cdev = f->inode;
>  
> +	if (cdev->flags & DEVFS_PARTITION_READONLY)
> +		return -EPERM;
> +
>  	return cdev_write(cdev, buf, size, f->pos, f->flags);
>  }
>  
> @@ -70,6 +73,9 @@ static int devfs_erase(struct device_d *_dev, FILE *f, size_t count, unsigned lo
>  {
>  	struct cdev *cdev = f->inode;
>  
> +	if (cdev->flags & DEVFS_PARTITION_READONLY)
> +		return -EPERM;
> +
>  	if (!cdev->ops->erase)
>  		return -ENOSYS;
>  
> -- 
> 1.7.10
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
