Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OdkMa-0004dy-E3
	for barebox@lists.infradead.org; Tue, 27 Jul 2010 13:38:34 +0000
Date: Tue, 27 Jul 2010 15:34:07 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100727133407.GH10913@game.jcrosoft.org>
References: <34b884f5ad525ce661f0872634673ac5c13b575f.1280236567.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <34b884f5ad525ce661f0872634673ac5c13b575f.1280236567.git.baruch@tkos.co.il>
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
Subject: Re: [PATCH] fs: add basic sanity check before accessing the files
	array
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

Hi,

	it will be better to use a common function to do the check

Best Regards,
J.
On 16:16 Tue 27 Jul     , Baruch Siach wrote:
> This patch adds some basic file descriptor sanity checks to the file access
> routines. Check whether the given file descriptor is in the files array range,
> and whether the file entry is valid.
> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
>  fs/fs.c |   40 ++++++++++++++++++++++++++++++++++++++++
>  1 files changed, 40 insertions(+), 0 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 8417067..449dcc2 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -457,6 +457,11 @@ int ioctl(int fd, int request, void *buf)
>  	struct fs_driver_d *fsdrv;
>  	FILE *f = &files[fd];
>  
> +	if (fd < 0 || fd >= MAX_FILES || !f->in_use) {
> +		errno = -EBADF;
> +		return errno;
> +	}
> +
>  	dev = f->dev;
>  
>  	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
> @@ -474,6 +479,11 @@ int read(int fd, void *buf, size_t count)
>  	struct fs_driver_d *fsdrv;
>  	FILE *f = &files[fd];
>  
> +	if (fd < 0 || fd >= MAX_FILES || !f->in_use) {
> +		errno = -EBADF;
> +		return errno;
> +	}
> +
>  	dev = f->dev;
>  
>  	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
> @@ -494,6 +504,11 @@ ssize_t write(int fd, const void *buf, size_t count)
>  	struct fs_driver_d *fsdrv;
>  	FILE *f = &files[fd];
>  
> +	if (fd < 0 || fd >= MAX_FILES || !f->in_use) {
> +		errno = -EBADF;
> +		return errno;
> +	}
> +
>  	dev = f->dev;
>  
>  	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
> @@ -524,6 +539,11 @@ off_t lseek(int fildes, off_t offset, int whence)
>  	FILE *f = &files[fildes];
>  	off_t pos;
>  
> +	if (fildes < 0 || fildes >= MAX_FILES || !f->in_use) {
> +		errno = -EBADF;
> +		return -1;
> +	}
> +
>  	errno = 0;
>  
>  	dev = f->dev;
> @@ -567,6 +587,11 @@ int erase(int fd, size_t count, unsigned long offset)
>  	struct fs_driver_d *fsdrv;
>  	FILE *f = &files[fd];
>  
> +	if (fd < 0 || fd >= MAX_FILES || !f->in_use) {
> +		errno = -EBADF;
> +		return errno;
> +	}
> +
>  	dev = f->dev;
>  
>  	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
> @@ -589,6 +614,11 @@ int protect(int fd, size_t count, unsigned long offset, int prot)
>  	struct fs_driver_d *fsdrv;
>  	FILE *f = &files[fd];
>  
> +	if (fd < 0 || fd >= MAX_FILES || !f->in_use) {
> +		errno = -EBADF;
> +		return errno;
> +	}
> +
>  	dev = f->dev;
>  
>  	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
> @@ -627,6 +657,11 @@ void *memmap(int fd, int flags)
>  	FILE *f = &files[fd];
>  	void *ret = (void *)-1;
>  
> +	if (fd < 0 || fd >= MAX_FILES || !f->in_use) {
> +		errno = -EBADF;
> +		return ret;
> +	}
> +
>  	dev = f->dev;
>  
>  	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
> @@ -646,6 +681,11 @@ int close(int fd)
>  	struct fs_driver_d *fsdrv;
>  	FILE *f = &files[fd];
>  
> +	if (fd < 0 || fd >= MAX_FILES || !f->in_use) {
> +		errno = -EBADF;
> +		return errno;
> +	}
> +
>  	dev = f->dev;
>  
>  	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
> -- 
> 1.7.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
