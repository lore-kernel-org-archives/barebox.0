Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxRzW-0003yq-Rj
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 05:35:57 +0000
Date: Mon, 10 Apr 2017 07:35:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170410053530.knbqoy2ijf76ehym@pengutronix.de>
References: <20170407094146.8705-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170407094146.8705-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] gui: image_renderer: fix "no previous prototype for
 'squashfs_set_rootarg'" warning
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 07, 2017 at 12:41:46PM +0300, Antony Pavlov wrote:
> The patch fixes this compiler's warning:
> 
>   fs/squashfs/squashfs.c:115:6: warning: no previous prototype for 'squashfs_set_rootarg' [-Wmissing-prototypes]
>    void squashfs_set_rootarg(struct squashfs_priv *priv, struct fs_device_d *fsdev)
>         ^
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---

Changed topic to "fs: squashfs:" and applied.

Sascha

>  fs/squashfs/squashfs.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
> index 4f4a307da..cf7431ee0 100644
> --- a/fs/squashfs/squashfs.c
> +++ b/fs/squashfs/squashfs.c
> @@ -112,7 +112,8 @@ static struct inode *squashfs_findfile(struct super_block *sb,
>  	return NULL;
>  }
>  
> -void squashfs_set_rootarg(struct squashfs_priv *priv, struct fs_device_d *fsdev)
> +static void squashfs_set_rootarg(struct squashfs_priv *priv,
> +					struct fs_device_d *fsdev)
>  {
>  	struct ubi_volume_desc *ubi_vol;
>  	struct ubi_volume_info vi = {};
> -- 
> 2.11.0
> 
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
