Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YpAvA-0000xO-B7
 for barebox@lists.infradead.org; Mon, 04 May 2015 07:36:08 +0000
Date: Mon, 4 May 2015 09:35:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150504073545.GP6325@pengutronix.de>
References: <1430683999-5910-1-git-send-email-andrew.smirnov@gmail.com>
 <1430683999-5910-3-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430683999-5910-3-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 3/8] bootstrap_read_devfs(): Check for errors from
 devfs_add_partition()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, May 03, 2015 at 01:13:14PM -0700, Andrey Smirnov wrote:
> Check for errors returned by devfs_add_partition() and bail if there
> are any.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  lib/bootstrap/devfs.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c
> index 82c7d21..de274a0 100644
> --- a/lib/bootstrap/devfs.c
> +++ b/lib/bootstrap/devfs.c
> @@ -82,10 +82,17 @@ void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
>  	int ret;
>  	int size = 0;
>  	void *to, *header;
> -	struct cdev *cdev;
> +	struct cdev *cdev, partition;
>  	char *partname = "x";
> 
> -	devfs_add_partition(devname, offset, max_size, DEVFS_PARTITION_FIXED, partname);
> +	partition = devfs_add_partition(devname, offset, max_size,
> +					DEVFS_PARTITION_FIXED, partname);
> +	if (IS_ERR_OR_NULL(partition)) {

IS_ERR please. devfs_add_partition() will not return a NULL pointer.

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
