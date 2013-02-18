Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7Nmw-0004lx-Pn
 for barebox@lists.infradead.org; Mon, 18 Feb 2013 10:17:35 +0000
Date: Mon, 18 Feb 2013 11:17:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130218101733.GP1906@pengutronix.de>
References: <1361135101-994-1-git-send-email-alex.aring@gmail.com>
 <1361135101-994-3-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361135101-994-3-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 2/2] fs: add pread and pwrite functions
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Feb 17, 2013 at 10:05:01PM +0100, Alexander Aring wrote:
> Add pread and pwrite functions.
> 
> Split read and write functions to save some space.
> The functions pread and pwrite saves and sets the file
> position to a given offset and restore them afterwards.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> ---
>  fs/fs.c      | 89 ++++++++++++++++++++++++++++++++++++++++++++++++++----------
>  include/fs.h |  2 ++
>  2 files changed, 77 insertions(+), 14 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 48d1c89..497a2ea 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -754,17 +754,12 @@ int ioctl(int fd, int request, void *buf)
>  	return ret;
>  }
>  
> -ssize_t read(int fd, void *buf, size_t count)
> +static ssize_t __read(FILE *f, void *buf, size_t count)
>  {
>  	struct device_d *dev;
>  	struct fs_driver_d *fsdrv;
> -	FILE *f;
>  	int ret;
>  
> -	if (check_fd(fd))
> -		return -errno;
> -
> -	f = &files[fd];
>  	dev = f->dev;
>  
>  	fsdrv = dev_to_fs_driver(dev);
> @@ -777,18 +772,34 @@ ssize_t read(int fd, void *buf, size_t count)
>  
>  	ret = fsdrv->read(dev, f, buf, count);
>  
> -	if (ret > 0)
> -		f->pos += ret;
>  	if (ret < 0)
>  		errno = -ret;
>  	return ret;
>  }
> -EXPORT_SYMBOL(read);
> +EXPORT_SYMBOL(pread);
>  
> -ssize_t write(int fd, const void *buf, size_t count)
> +ssize_t pread(int fd, void *buf, size_t count, loff_t offset)
> +{
> +	loff_t pos;
> +	FILE *f;
> +	int ret;
> +
> +	if (check_fd(fd))
> +		return -errno;
> +
> +	f = &files[fd];
> +
> +	pos = f->pos;
> +	f->pos = offset;
> +	ret = __read(f, buf, count);
> +	f->pos = pos;
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL(pread);

pread is exported twice with this patch. I fixed this while applying.

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
