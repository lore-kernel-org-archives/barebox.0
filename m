Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adYxz-0004Fd-Gw
 for barebox@lists.infradead.org; Wed, 09 Mar 2016 07:55:36 +0000
Date: Wed, 9 Mar 2016 08:55:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160309075513.GD30994@pengutronix.de>
References: <1457434569-32054-1-git-send-email-mpa@pengutronix.de>
 <1457434569-32054-5-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1457434569-32054-5-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH 5/5] ubiformat: Cleanly umount and detach the ubi before
 formating
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Markus,

On Tue, Mar 08, 2016 at 11:56:09AM +0100, Markus Pargmann wrote:
> This was an open fixme for some time. ubiformat does not care about used
> ubi volumes or attached ubis.
> 
> This patch adds functionality that umounts all filesystems that are
> mounted from this nand device. After that the ubi is detached. Then the
> normal ubiformat code reformats the ubi. If a ubi was detached
> previously, the code tries to reattach the ubi. Filesystems are not
> remounted.

Normally I would expect ubiformat to fail when the mtd is used by UBI.
Can we make the behaviour optional and by default fail if the mtd is
busy?

> +static int ubi_umount_all(const char *mtddev, struct mtd_info_user *ui,
> +			  int *ubi_detached_num)
> +{
> +	struct ubi_device_info ubi_info;
> +	struct cdev *ubi_cdev;
> +	struct fs_device_d *fsdev;
> +	struct fs_device_d *fsdev_tmp;
> +	struct ubi_device *ubi_dev;
> +	int ret;
> +	int ubi_num;
> +	int vol_id;
> +
> +
> +	ubi_num = ubi_num_get_by_mtd(ui->mtd);
> +	if (ubi_num < 0) /* No attached ubi found */
> +		return 0;
> +
> +	ubi_get_device_info(ubi_num, &ubi_info);
> +
> +	ubi_volume_for_each(ubi_num, ubi_dev, vol_id, ret) {
> +		struct ubi_volume_desc *vol;
> +
> +		vol = ubi_open_volume(ubi_num, vol_id, UBI_READONLY);
> +		if (IS_ERR(vol)) {
> +			pr_err("Failed to open ubi volume %d %d, %ld. Continuing\n",
> +			       ubi_num, vol_id, PTR_ERR(vol));
> +			continue;
> +		}
> +
> +		for_each_fs_device_safe(fsdev_tmp, fsdev) {
> +			ubi_cdev = ubi_volume_get_cdev(vol);
> +
> +			if (fsdev->cdev == ubi_volume_get_cdev(vol)) {
> +				ret = umount(fsdev->path);
> +				if (ret) {
> +					pr_err("Failed umounting %s, %d, continuing anyway\n",
> +					       fsdev->path, ret);
> +				}

Shouldn't this be an error?

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
