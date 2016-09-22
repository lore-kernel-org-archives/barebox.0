Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmyzf-0004g1-Rk
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 08:04:35 +0000
Date: Thu, 22 Sep 2016 10:04:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160922080408.rpqeithibjfga2rm@pengutronix.de>
References: <20160921080443.21522-1-iw3gtf@arcor.de>
 <20160921080443.21522-3-iw3gtf@arcor.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160921080443.21522-3-iw3gtf@arcor.de>
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
Subject: Re: [PATCH 2/2] commands: ubi: added the new command 'ubirename' to
 rename ubi volumes.
To: Giorgio Dal Molin <iw3gtf@arcor.de>
Cc: barebox@lists.infradead.org, Giorgio Dal Molin <giorgio.dal.molin@mobotix.com>

On Wed, Sep 21, 2016 at 10:04:43AM +0200, Giorgio Dal Molin wrote:
> From: Giorgio Dal Molin <giorgio.dal.molin@mobotix.com>
> 
> The syntax was taken from the corresponding command of the 'mts-utils'
> userland package:
> 
> # ubirename UBIDEV OLD_NAME NEW_NAME [OLD_NAME NEW_NAME ...]
> 
> Signed-off-by: Giorgio Dal Molin <iw3gtf@arcor.de>
> ---
>  commands/ubi.c | 87 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 87 insertions(+)
> 
> diff --git a/commands/ubi.c b/commands/ubi.c
> index 26b521f..3479340 100644
> --- a/commands/ubi.c
> +++ b/commands/ubi.c
> @@ -6,6 +6,8 @@
>  #include <errno.h>
>  #include <getopt.h>
>  #include <linux/mtd/mtd.h>
> +#include <linux/mtd/ubi.h>
> +#include <libgen.h>
>  #include <linux/kernel.h>
>  #include <linux/stat.h>
>  #include <linux/mtd/mtd-abi.h>
> @@ -306,3 +308,88 @@ BAREBOX_CMD_START(ubirmvol)
>  	BAREBOX_CMD_GROUP(CMD_GRP_PART)
>  	BAREBOX_CMD_HELP(cmd_ubirmvol_help)
>  BAREBOX_CMD_END
> +
> +
> +static int get_vol_id(const char *vol_name)
> +{
> +	struct ubi_volume_desc *desc;
> +	struct cdev *vol_cdev;
> +	struct ubi_volume_info vi;
> +
> +	vol_cdev = cdev_by_name(vol_name);
> +	if(!vol_cdev) {
> +		perror("cdev_by_name");
> +		return -1;
> +	}
> +	desc = ubi_open_volume_cdev(vol_cdev, UBI_READONLY);
> +	if(IS_ERR(desc)) {
> +		perror("ubi_open_volume_cdev");
> +		return -1;
> +	}
> +	ubi_get_volume_info(desc, &vi);
> +	ubi_close_volume(desc);
> +
> +	return vi.vol_id;
> +};

This get_vol_id() is not particularly nice. Also I do not like having
the rename operation inside the ioctl parser as this means we cannot
make the ubirename code optional for users that do not need renaming.

I just sent out a series which should help you in this regard. Can you
base your code ontop of this?

You should be able to get the vol_id with ubi_open_volume_nm() followed
by ubi_get_volume_info().

The rename_volumes() from patch #1 should become a
ubi_api_rename_volumes() directly called from the command code.

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
