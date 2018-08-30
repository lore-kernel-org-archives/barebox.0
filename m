Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvLJG-0004nW-Jz
 for barebox@lists.infradead.org; Thu, 30 Aug 2018 11:40:24 +0000
Date: Thu, 30 Aug 2018 13:40:08 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20180830114008.xhpsinblhtvkip5a@pengutronix.de>
References: <20180830104527.4057-1-s.hauer@pengutronix.de>
 <20180830104527.4057-5-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180830104527.4057-5-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 4/5] fs: tftp: hide files which are actually not present
 on the server
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Aug 30, 2018 at 12:45:26PM +0200, Sascha Hauer wrote:
> In tftp_lookup we claimed that every desired file is there. This leads
> to problems when a user only tests if a file is present and makes
> decisions upon this information. Rather than claiming that all files
> are present do a tftp_do_open() on the files and see if it is really
> there.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/tftp.c | 33 +++++++++++++++++++++++++--------
>  1 file changed, 25 insertions(+), 8 deletions(-)
> 
> diff --git a/fs/tftp.c b/fs/tftp.c
> index 0baf0c2890..9274e931a2 100644
> --- a/fs/tftp.c
> +++ b/fs/tftp.c
> @@ -391,14 +391,6 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
>  	case O_WRONLY:
>  		priv->push = 1;
>  		priv->state = STATE_WRQ;
> -		if (!(accmode & O_TRUNC)) {
> -			/*
> -			 * TFTP always truncates the existing file, so this
> -			 * flag is mandatory when opening a file for writing.
> -			 */
> -			ret = -ENOSYS;
> -			goto out;
> -		}
>  		break;
>  	case O_RDWR:
>  		ret = -ENOSYS;
> @@ -646,10 +638,34 @@ static struct inode *tftp_get_inode(struct super_block *sb, const struct inode *
>  	return inode;
>  }
>  
> +static int tftp_create(struct inode *dir, struct dentry *dentry, umode_t mode)
> +{
> +	struct inode *inode;
> +
> +	inode = tftp_get_inode(dir->i_sb, dir, mode);
> +	if (!inode)
> +		return -EPERM;
> +
> +	inode->i_size = 0;
> +
> +	d_instantiate(dentry, inode);
> +
> +	return 0;
> +}
> +
>  static struct dentry *tftp_lookup(struct inode *dir, struct dentry *dentry,
>  			    unsigned int flags)
>  {
> +	struct super_block *sb = dir->i_sb;
> +	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
>  	struct inode *inode;
> +	struct file_priv *priv;
> +
> +	priv = tftp_do_open(&fsdev->dev, O_RDONLY, dentry);
> +	if (IS_ERR(priv))
> +		return NULL;
> +
> +	tftp_do_close(priv);
>  
>  	inode = tftp_get_inode(dir->i_sb, dir, S_IFREG | S_IRWXUGO);
>  	if (!inode)
> @@ -663,6 +679,7 @@ static struct dentry *tftp_lookup(struct inode *dir, struct dentry *dentry,
>  static const struct inode_operations tftp_dir_inode_operations =
>  {
>  	.lookup = tftp_lookup,
> +	.create = tftp_create,
>  };
>  
>  static const struct super_operations tftp_ops;

Tested-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Thx,
Steffen

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
