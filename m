Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YxFFy-00018W-6A
 for barebox@lists.infradead.org; Tue, 26 May 2015 13:50:59 +0000
Date: Tue, 26 May 2015 15:50:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150526135034.GM6325@pengutronix.de>
References: <1432644381-29474-1-git-send-email-mkl@pengutronix.de>
 <1432644381-29474-3-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1432644381-29474-3-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH 2/2] blspec: automatically append bootargs
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, May 26, 2015 at 02:46:21PM +0200, Marc Kleine-Budde wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> When bootloader spec is used to boot devices it is often desirable
> to boot the same image from different media. Since the fs images
> need to contain the root= parameters to tell Linux where to boot
> from the images can't be identical on different media.
> 
> This patch changes this by introducing a 'appendroot' option for
> bootloader spec. If set to true, barebox will construct a Linux
> commandline option for the device the bootloader spec entry is found
> on.

This should have documentation in Documentation/user/booting-linux.rst.
(which currently lacks information that we can do bootloaderspec via NFS
aswell)

> +static int blspec_append_root(struct blspec_entry *entry)
> +{
> +	const char *appendroot;
> +	const char *rootarg;
> +	struct device_d *fsdev;
> +	int ret;
> +
> +	appendroot = blspec_entry_var_get(entry, "appendroot");
> +	if (!appendroot || strcmp(appendroot, "true"))
> +		return 0;
> +
> +	fsdev = get_dev_by_mountpath(entry->rootpath);
> +	if (!fsdev) {
> +		ret = -EINVAL;
> +		pr_err("Cannot get fs device for %s\n", entry->rootpath);
> +		goto err_out;
> +	}
> +
> +	rootarg = dev_get_param(fsdev, "linux.bootargs");

Better linux.root?

> --- a/drivers/mtd/ubi/kapi.c
> +++ b/drivers/mtd/ubi/kapi.c
> @@ -36,6 +36,7 @@ void ubi_do_get_device_info(struct ubi_device *ubi, struct ubi_device_info *di)
>  	di->min_io_size = ubi->min_io_size;
>  	di->max_write_size = ubi->max_write_size;
>  	di->ro_mode = ubi->ro_mode;
> +	di->mtd = ubi->mtd;
>  }
>  EXPORT_SYMBOL_GPL(ubi_do_get_device_info);
>  
> diff --git a/fs/fs.c b/fs/fs.c
> index a056d83d3d92..b8d3d3468f01 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -225,6 +225,19 @@ struct cdev *get_cdev_by_mountpath(const char *path)
>  	return fsdev->cdev;
>  }
>  
> +/*
> + * get_cdev_by_mountpath - return the cdev the given path
> + *                         is mounted on

s/get_cdev_by_mountpath/get_dev_by_mountpath/

> + */
> +struct device_d *get_dev_by_mountpath(const char *path)
> +{
> +	struct fs_device_d *fsdev;
> +
> +	fsdev = get_fsdevice_by_path(path);
> +
> +	return &fsdev->dev;
> +}
> +
>  char *get_mounted_path(const char *path)
>  {
>  	struct fs_device_d *fdev;
> diff --git a/fs/nfs.c b/fs/nfs.c
> index 2738c781d72b..ba00270a8b23 100644
> --- a/fs/nfs.c
> +++ b/fs/nfs.c
> @@ -1306,6 +1306,20 @@ static int nfs_stat(struct device_d *dev, const char *filename, struct stat *s)
>  	}
>  }
>  
> +static void nfs_set_rootarg(struct nfs_priv *npriv, struct device_d *dev)
> +{
> +	char *str;
> +	const char *ip;
> +
> +	ip = ip_to_string(npriv->server);
> +	str = asprintf("root=/dev/nfs nfsroot=%s:%s,v3,tcp",
> +			ip, npriv->path);

It would be nice to have the NFS options configurable. Maybe from a
global.linux.rootnfsopts variable?

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
