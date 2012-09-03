Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8S1Y-0000XL-3q
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 08:28:49 +0000
Date: Mon, 3 Sep 2012 10:28:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120903082846.GC26594@pengutronix.de>
References: <20120901123511.GA19233@game.jcrosoft.org>
 <1346503053-21862-1-git-send-email-plagnioj@jcrosoft.com>
 <1346503053-21862-4-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346503053-21862-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 04/18] fs: implement stat
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Sep 01, 2012 at 02:37:19PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> stat() stats the file pointed to by path and fills in buf.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  fs/fs.c      |  102 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/fs.h |    6 ++--
>  2 files changed, 104 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 291e879..e31065f 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -26,6 +26,7 @@
>  #include <errno.h>
>  #include <malloc.h>
>  #include <linux/stat.h>
> +#include <linux/err.h>
>  #include <fcntl.h>
>  #include <xfuncs.h>
>  #include <init.h>
> @@ -111,6 +112,58 @@ static int init_cwd(void)
>  
>  postcore_initcall(init_cwd);
>  
> +char *normalise_link(const char *pathname, const char *symlink)
> +{
> +	const char *buf = symlink;
> +	char *path_free, *path;
> +	char *absolute_path;
> +	int point = 0;
> +	int dir = 1;
> +	int len;
> +
> +	if (symlink[0] == '/')
> +		return strdup(symlink);
> +
> +	path = path_free = strdup(pathname);

This is not used...

> +
> +	while (*buf == '.' || *buf == '/') {
> +		if (*buf == '.') {
> +			point++;
> +		} else if (*buf == '/') {
> +			point = 0;
> +			dir++;
> +		}
> +		if (point > 2) {
> +			buf -= 2;
> +			break;
> +		}
> +		buf++;
> +	}
> +

...until here, so please move the allocation to here.

And as said before, either use xstrdup or check the return value.

> +	while(dir) {
> +		path = dirname(path);
> +		dir--;
> +	}
> +
> +	len = strlen(buf) + strlen(path) + 1;
> +	if (buf[0] != '/')
> +		len++;
> +
> +	absolute_path = calloc(sizeof(char), len);
> +
> +	if (!absolute_path)
> +		return NULL;

You lose the allocation of strdup(pathname) here.

> +
> +	strcat(absolute_path, path);
> +	if (buf[0] != '/')
> +		strcat(absolute_path, "/");
> +	strcat(absolute_path, buf);
> +
> +	free(path_free);
> +
> +	return absolute_path;
> +}
> +
>  char *normalise_path(const char *pathname)
>  {
>  	char *path = xzalloc(strlen(pathname) + strlen(cwd) + 2);
> @@ -512,6 +565,42 @@ out:
>  }
>  EXPORT_SYMBOL(unlink);
>  
> +static char* realfile(const char *pathname, struct stat *s)

static char *realfile

> +{
> +	char *path = normalise_path(pathname);
> +	int ret;
> +
> +	ret = lstat(path, s);
> +	if (ret)
> +		goto out;
> +
> +	if (S_ISLNK(s->st_mode)) {
> +		char tmp[PATH_MAX];
> +		char *new_path;
> +
> +		memset(tmp, 0, PATH_MAX);
> +
> +		ret = readlink(path, tmp, PATH_MAX - 1);
> +		if (ret < 0)
> +			goto out;
> +
> +		new_path = normalise_link(path, tmp);
> +		free(path);
> +		if (!new_path)
> +			return ERR_PTR(-ENOMEM);
> +		path = new_path;
> +
> +		ret = lstat(path, s);
> +	}
> +
> +	if (!ret)
> +		return path;
> +
> +out:
> +	free(path);
> +	return ERR_PTR(ret);
> +}
> +
>  int open(const char *pathname, int flags, ...)
>  {
>  	struct fs_device_d *fsdev;

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
