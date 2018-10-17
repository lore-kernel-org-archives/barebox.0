Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCi26-0006xd-4J
 for barebox@lists.infradead.org; Wed, 17 Oct 2018 09:22:35 +0000
Date: Wed, 17 Oct 2018 11:22:12 +0200
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20181017092212.3rmxgfffxi3etxfe@pengutronix.de>
References: <20181016195022.24904-1-o.rempel@pengutronix.de>
 <20181016195022.24904-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181016195022.24904-2-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 2/2] fs/devfs: fix compile warnings
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

For both of these, it would be nice to know what the compiler warnings
were, in case anyone wants to grep the logs.

 - Roland

On Tue, Oct 16, 2018 at 09:50:22PM +0200, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  fs/devfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/devfs.c b/fs/devfs.c
> index d2b801036e..10f098280e 100644
> --- a/fs/devfs.c
> +++ b/fs/devfs.c
> @@ -193,7 +193,7 @@ static struct inode *devfs_alloc_inode(struct super_block *sb)
>  	return &node->inode;
>  }
>  
> -int devfs_iterate(struct file *file, struct dir_context *ctx)
> +static int devfs_iterate(struct file *file, struct dir_context *ctx)
>  {
>  	struct cdev *cdev;
>  
> -- 
> 2.19.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
