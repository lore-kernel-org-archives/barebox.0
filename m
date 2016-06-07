Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bAADz-0001DY-7i
 for barebox@lists.infradead.org; Tue, 07 Jun 2016 06:10:51 +0000
Date: Tue, 7 Jun 2016 08:10:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160607061029.GD31666@pengutronix.de>
References: <1464960369-1241-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464960369-1241-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] fs: squashfs: use correct format specifier
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 03, 2016 at 03:26:09PM +0200, Lucas Stach wrote:
> Fixes:
> fs/squashfs/inode.c: warning: format '%d' expects argument
> of type 'int', but argument 3 has type 'long long int'
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks

Sascha

> ---
>  fs/squashfs/inode.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/squashfs/inode.c b/fs/squashfs/inode.c
> index 749fc7ef9538..923c397fa89f 100644
> --- a/fs/squashfs/inode.c
> +++ b/fs/squashfs/inode.c
> @@ -126,7 +126,7 @@ int squashfs_read_inode(struct inode *inode, long long ino)
>  	struct squashfs_base_inode *sqshb_ino = &squashfs_ino.base;
>  	int xattr_id = SQUASHFS_INVALID_XATTR;
>  
> -	TRACE("Entered squashfs_read_inode: %d\n", ino);
> +	TRACE("Entered squashfs_read_inode: %lld\n", ino);
>  
>  	/*
>  	 * Read inode base common to all inode types.
> -- 
> 2.8.1
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
