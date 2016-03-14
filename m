Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afMzf-0004rA-4f
 for barebox@lists.infradead.org; Mon, 14 Mar 2016 07:32:48 +0000
Date: Mon, 14 Mar 2016 08:32:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160314073221.GP30994@pengutronix.de>
References: <1457598600-10669-1-git-send-email-mpa@pengutronix.de>
 <1457598600-10669-7-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1457598600-10669-7-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH v2 7/8] ubi: Let ubidetach umount all filesystems before
 detaching
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Mar 10, 2016 at 09:29:59AM +0100, Markus Pargmann wrote:
> This patch iterates through all ubi volumes and umounts all filesystems
> that are mounted.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---
>  drivers/mtd/ubi/build.c | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
> index 7ee34bc62f30..edaa98b0973c 100644
> --- a/drivers/mtd/ubi/build.c
> +++ b/drivers/mtd/ubi/build.c
> @@ -25,6 +25,7 @@
>   * later using the "UBI control device".
>   */
>  
> +#include <fs.h>
>  #include <linux/err.h>
>  #include <linux/stringify.h>
>  #include <linux/stat.h>
> @@ -713,6 +714,8 @@ out_free:
>  int ubi_detach_mtd_dev(int ubi_num, int anyway)
>  {
>  	struct ubi_device *ubi;
> +	int vol_id;
> +	int ret;
>  
>  	if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
>  		return -EINVAL;
> @@ -723,6 +726,32 @@ int ubi_detach_mtd_dev(int ubi_num, int anyway)
>  
>  	ubi->ref_count--;
>  
> +	ubi_volume_for_each(ubi_num, ubi, vol_id, ret) {
> +		struct ubi_volume_desc *vol;
> +
> +		vol = ubi_open_volume(ubi_num, vol_id, UBI_READONLY);
> +		if (IS_ERR(vol)) {
> +			pr_err("Failed to open ubi volume %d %d, %ld\n",
> +			       ubi_num, vol_id, PTR_ERR(vol));
> +			if (anyway)
> +				continue;
> +
> +			ubi_volume_abort(ubi);
> +			return PTR_ERR(vol);
> +		}
> +
> +		ret = umount_by_cdev(ubi_volume_get_cdev(vol));
> +		ubi_close_volume(vol);
> +		if (ret) {
> +			pr_err("Failed umounting ubi volume %d %d, %d\n",
> +			       ubi_num, vol_id, ret);
> +			if (anyway)
> +				continue;
> +			ubi_volume_abort(ubi);
> +			return ret;
> +		}
> +	}

Wouldn't the following do it?

void ubi_umount_volumes(struct ubi_device *ubi)
{
	int i;

	for (i = 0; i < ubi->vtbl_slots; i++) {
		struct ubi_volume *vol = ubi->volumes[i];

		if (!vol)
			continue;

		umount_by_cdev(vol->cdev);
	}
}

We shouldn't change the UBI code too much as it makes updates harder. If
possible, please move the code to cdev.c which is completely barebox
specific (if needed, we may rename cdev.c to barebox.c)

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
