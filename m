Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYB4f-0004fj-HD
 for barebox@lists.infradead.org; Mon, 21 Oct 2013 08:42:54 +0000
Date: Mon, 21 Oct 2013 10:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131021084229.GC30088@pengutronix.de>
References: <20131018163147.GZ32444@ns203013.ovh.net>
 <1382113992-9082-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1382113992-9082-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/3] devfs: add symlink support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 18, 2013 at 06:33:10PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will allow have symlink for any device such as named partition
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  fs/devfs-core.c  | 45 ++++++++++++++++++++++++++++++++++++++++++++-
>  fs/devfs.c       | 42 ++++++++++++++++++++++++++++++++++++++++--
>  include/driver.h |  4 ++++
>  3 files changed, 88 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index a92d434..0e1ac9a 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -45,13 +45,56 @@ int devfs_partition_complete(struct string_list *sl, char *instr)
>  }
>  #endif
>  
> +struct cdev *devfs_add_symlink_index(const char *filename, struct cdev *src)
> +{
> +	struct cdev *cdev;
> +	int ret;
> +
> +	if (!filename || !src)
> +		return ERR_PTR(-EIO);
> +
> +	ret = cdev_find_free_index(filename);
> +	if (ret == -1)
> +		return ERR_PTR(-ENOMEM);
> +
> +	cdev = xzalloc(sizeof(*cdev));
> +	cdev->name = asprintf("%s%d", filename, ret);
> +	cdev->symlink = src;
> +	ret = devfs_create(cdev);
> +	if (ret)
> +		return ERR_PTR(ret);
> +
> +	return cdev;
> +}
> +
> +struct cdev *devfs_add_symlink(const char *filename, struct cdev *src)
> +{
> +	struct cdev *cdev;
> +	int ret;
> +
> +	if (!filename || !src)
> +		return ERR_PTR(-EIO);
> +
> +	cdev = xzalloc(sizeof(*cdev));
> +	cdev->name = xstrdup(filename);
> +	cdev->symlink = src;

This is not nice.

- You only allow a single symlink
- No check whether this symlink already exists
- calling devfs_remove leaves dangling symlinks behind

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
