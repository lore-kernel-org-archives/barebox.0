Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afN8s-0002PT-UO
 for barebox@lists.infradead.org; Mon, 14 Mar 2016 07:42:19 +0000
Date: Mon, 14 Mar 2016 08:41:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160314074156.GQ30994@pengutronix.de>
References: <1457598600-10669-1-git-send-email-mpa@pengutronix.de>
 <1457598600-10669-8-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1457598600-10669-8-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH v2 8/8] ubiformat: Cleanly umount and detach the ubi
 before formating
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Mar 10, 2016 at 09:30:00AM +0100, Markus Pargmann wrote:
> This was an open fixme for some time. ubiformat does not care about used
> ubi volumes or attached ubis.
> 
> This patch adds functionality that umounts all filesystems that are
> mounted from this nand device. After that the ubi is detached. Then the
> normal ubiformat code reformats the ubi. If a ubi was detached
> previously, the code tries to reattach the ubi. Filesystems are not
> remounted.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---
>  commands/ubiformat.c | 29 +++++++++++++++++++++++++++--
>  1 file changed, 27 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/ubiformat.c b/commands/ubiformat.c
> index f9c50b7936eb..4a80952dca61 100644
> --- a/commands/ubiformat.c
> +++ b/commands/ubiformat.c
> @@ -42,6 +42,7 @@
>  #include <libbb.h>
>  #include <libfile.h>
>  #include <linux/mtd/mtd.h>
> +#include <linux/mtd/ubi.h>
>  #include <linux/kernel.h>
>  #include <linux/stat.h>
>  #include <linux/log2.h>
> @@ -555,6 +556,8 @@ int do_ubiformat(int argc, char *argv[])
>  	struct mtd_dev_info mtd;
>  	struct ubigen_info ui;
>  	struct ubi_scan_info *si;
> +	int ubi_detached = -1;
> +	struct mtd_info_user mtd_info;
>  
>  	err = parse_opt(argc, argv);
>  	if (err)
> @@ -614,8 +617,19 @@ int do_ubiformat(int argc, char *argv[])
>  		goto out_close;
>  	}
>  
> -	/* Make sure this MTD device is not attached to UBI */
> -	/* FIXME! Find a proper way to do this in barebox! */
> +	err = ioctl(args.node_fd, MEMGETINFO, &mtd_info);
> +	if (err) {
> +		sys_errmsg("Failed to get user info %d\n", err);
> +		goto out_close;
> +	}
> +
> +	ubi_detached = ubi_num_get_by_mtd(mtd_info.mtd);
> +	err = ubi_detach_by_mtd(mtd_info.mtd, args.yes);
> +	if (err) {
> +		sys_errmsg("Cannot detach %d\n", err);
> +		goto out_close;
> +	}

ubi_detach_by_mtd() returns an error if the mtd device hasn't been
attached to ubi. I think there's a if (ubi_detached >= 0) missing here.

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
