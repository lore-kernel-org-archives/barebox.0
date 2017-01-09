Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQX8v-0005w6-Vi
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 10:25:35 +0000
Date: Mon, 9 Jan 2017 11:25:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109102512.zlxa6i3hrtuhxb66@pengutronix.de>
References: <20161220093340.14404-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161220093340.14404-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/9] fs: squashfs: don't reference UBI symbols if UBI
 isn't compiled in
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 20, 2016 at 10:33:32AM +0100, Lucas Stach wrote:
> There is no point in trying to append a UBI root option, if there is
> no UBI support in barebox.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---

Applied, thanks

Sascha

>  fs/squashfs/squashfs.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
> index c4d0bac97443..4f4a307dafdd 100644
> --- a/fs/squashfs/squashfs.c
> +++ b/fs/squashfs/squashfs.c
> @@ -120,6 +120,9 @@ void squashfs_set_rootarg(struct squashfs_priv *priv, struct fs_device_d *fsdev)
>  	struct mtd_info *mtd;
>  	char *str;
>  
> +	if (!IS_ENABLED(CONFIG_MTD_UBI))
> +		return;
> +
>  	ubi_vol = ubi_open_volume_cdev(fsdev->cdev, UBI_READONLY);
>  
>  	if (IS_ERR(ubi_vol))
> -- 
> 2.11.0
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
