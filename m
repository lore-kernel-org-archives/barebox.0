Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T5zrA-0006gE-CB
 for barebox@lists.infradead.org; Mon, 27 Aug 2012 13:59:57 +0000
Date: Mon, 27 Aug 2012 15:59:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120827135926.GI26594@pengutronix.de>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
 <1345783818-28784-7-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1345783818-28784-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 07/18] ramfs: add symlink and readlink support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 24, 2012 at 06:50:07AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  fs/ramfs.c |   53 ++++++++++++++++++++++++++++++++++++++++++++++-------
>  1 file changed, 46 insertions(+), 7 deletions(-)
> 
> diff --git a/fs/ramfs.c b/fs/ramfs.c
> index 91d06b8..38da593 100644
> --- a/fs/ramfs.c
> +++ b/fs/ramfs.c
> @@ -42,6 +42,7 @@ struct ramfs_inode {
>  	struct ramfs_inode *parent;
>  	struct ramfs_inode *next;
>  	struct ramfs_inode *child;
> +	char *symlink;
>  	ulong mode;
>  
>  	struct handle_d *handle;
> @@ -176,6 +177,7 @@ static void ramfs_put_inode(struct ramfs_inode *node)
>  		data = tmp;
>  	}
>  
> +	free(node->symlink);
>  	free(node->name);
>  	free(node);
>  }
> @@ -212,18 +214,28 @@ static struct ramfs_inode* node_insert(struct ramfs_inode *parent_node, const ch
>  
>  /* ---------------------------------------------------------------*/
>  
> -static int ramfs_create(struct device_d *dev, const char *pathname, mode_t mode)
> +static int __ramfs_create(struct device_d *dev, const char *pathname,
> +			  mode_t mode, const char *symlink)
>  {
>  	struct ramfs_priv *priv = dev->priv;
>  	struct ramfs_inode *node;
>  	char *file;
>  
>  	node = rlookup_parent(priv, pathname, &file);
> -	if (node) {
> -		node_insert(node, file, mode);
> -		return 0;
> -	}
> -	return -ENOENT;
> +	if (!node)
> +		return -ENOENT;
> +
> +	node = node_insert(node, file, mode);
> +	if (!node)
> +		return -ENOMEM;
> +	node->symlink = strdup(symlink);

Either check for errors or use xstrdup.

> +
> +	return 0;
> +}
> +
> +static int ramfs_create(struct device_d *dev, const char *pathname, mode_t mode)
> +{
> +	return __ramfs_create(dev, pathname, mode, NULL);
>  }
>  
>  static int ramfs_unlink(struct device_d *dev, const char *pathname)
> @@ -532,12 +544,37 @@ static int ramfs_stat(struct device_d *dev, const char *filename, struct stat *s
>  	if (!node)
>  		return -ENOENT;
>  
> -	s->st_size = node->size;
> +	s->st_size = node->symlink ? strlen(node->symlink) : node->size;
>  	s->st_mode = node->mode;
>  
>  	return 0;
>  }
>  
> +static int ramfs_symlink(struct device_d *dev, const char *pathname,
> +		       const char *newpath)
> +{
> +	mode_t mode = S_IFLNK | S_IRWXU | S_IRWXG | S_IRWXO;
> +
> +	return __ramfs_create(dev, newpath, mode, pathname);
> +}
> +
> +static int ramfs_readlink(struct device_d *dev, const char *pathname,
> +			char *buf, size_t bufsiz)
> +{
> +	struct ramfs_priv *priv = dev->priv;
> +	struct ramfs_inode *node = rlookup(priv, pathname);
> +	int len;
> +
> +	if (!node || !node->symlink)
> +		return -ENOENT;
> +
> +	len = min(bufsiz, strlen(node->symlink));
> +
> +	strncat(buf, node->symlink, len);

You append to buf? What do you expect to be in there? I think memcpy
would be more appropriate here.

I see no code freeing node->symlink in this patch.

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
