Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T5zJe-0006W9-97
 for barebox@lists.infradead.org; Mon, 27 Aug 2012 13:25:19 +0000
Date: Mon, 27 Aug 2012 15:25:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120827132515.GE26594@pengutronix.de>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 01/18] fs: add readlink support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 24, 2012 at 06:50:01AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  fs/fs.c      |   59 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/fs.h |    5 +++++
>  2 files changed, 64 insertions(+)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 8ab1a3a..64a0d94 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -890,6 +890,65 @@ int close(int fd)
>  }
>  EXPORT_SYMBOL(close);
>  
> +ssize_t readlink(const char *pathname, char *buf, size_t bufsiz)

man 2 readlink says:

> On  success,  readlink()  returns  the number of bytes placed in buf.
> On error, -1 is returned and errno is set to indicate the error.

This function instead returns 0 for success and a negative error value.
This is ok, but if the meaning of the return value is different, then it
does not make sense to try to match the function prototype with the libc
function.
Make the return type int.

> +{
> +	struct fs_driver_d *fsdrv;
> +	struct fs_device_d *fsdev;
> +	char *p = normalise_path(pathname);
> +	char *freep = p;
> +	int ret;
> +	size_t len = 0;
> +	char tmp[PATH_MAX];
> +
> +	tmp[0] = 0;
> +	buf[0] = 0;
> +
> +	ret = path_check_prereq(pathname, S_IFLNK);
> +	if (ret)
> +		goto out;
> +
> +	fsdev = get_fs_device_and_root_path(&p);
> +	if (!fsdev) {
> +		ret = -ENODEV;
> +		goto out;
> +	}
> +	fsdrv = fsdev->driver;
> +
> +	len = min(bufsiz, (size_t)PATH_MAX);
> +	if (fsdrv->readlink) {
> +		ret = fsdrv->readlink(&fsdev->dev, p, tmp, len);
> +	} else {
> +		ret = -EROFS;

EROFS is a strange error code here.

> +		goto out;

This is not needed

> +	}
> +
> +	if (ret)
> +		goto out;
> +
> +	if (tmp[0] == '/') {
> +		int l = strlen(fsdev->path);
> +
> +		if (fsdev->path[l - 1] == '/')
> +			l--;
> +
> +		if (l) {
> +			len -= l;
> +			strncat(buf, fsdev->path, l);
> +		}
> +	}

I don't understand why you manipulate the link target when the link target
is an absolute path. This means that if mount a fatfs to fat and put a
link there:

/fat/somelink -> /env/bla

Then readlink will return /fat/env/bla, which is not what you want.

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
