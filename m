Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXXiG-0007aV-F6
 for barebox@lists.infradead.org; Mon, 25 Jun 2018 20:03:52 +0000
Date: Mon, 25 Jun 2018 22:03:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180625200336.bwqckhqnows3aygt@pengutronix.de>
References: <20180624212959.27468-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180624212959.27468-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/4] fs: devfs-core: Make use of devpath_to_name()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jun 24, 2018 at 02:29:56PM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  fs/devfs-core.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index 6b5e6da6a..f017e1c55 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -28,6 +28,7 @@
>  #include <linux/fs.h>
>  #include <linux/mtd/mtd.h>
>  #include <unistd.h>
> +#include <fs.h>
>  
>  LIST_HEAD(cdev_list);
>  
> @@ -155,10 +156,7 @@ struct cdev *cdev_open(const char *name, unsigned long flags)
>  	struct cdev *cdev;
>  	int ret;
>  
> -	if (!strncmp(name, "/dev/", 5))
> -		name += 5;
> -
> -	cdev = cdev_by_name(name);
> +	cdev = cdev_by_name(devpath_to_name(name));
>  	if (!cdev)
>  		return NULL;
>  
> -- 
> 2.17.1
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
