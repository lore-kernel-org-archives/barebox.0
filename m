Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WnM9G-0003iY-3R
 for barebox@lists.infradead.org; Thu, 22 May 2014 06:06:39 +0000
Date: Thu, 22 May 2014 08:06:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140522060615.GO5858@pengutronix.de>
References: <1400701396-6018-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1400701396-6018-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH] devinfo: add human readable size after memory range
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, May 21, 2014 at 09:43:16PM +0200, Franck Jullien wrote:
> It's not always easy to know what is the size of a parition.
> 
> This patch adds the size of a memory range in human readable
> format. We now have for example:
> 
> `---- cfi_flash0
>      `---- nor0
>           `---- 0x00000000-0x00ffffff (    16 MiB): /dev/nor0
>           `---- 0x00000000-0x0001ffff (   128 KiB): /dev/env0
>           `---- 0x00020000-0x0011ffff (     1 MiB): /dev/fpga0
>           `---- 0x00120000-0x0019ffff (   512 KiB): /dev/self0
>           `---- 0x001a0000-0x00d9ffff (    12 MiB): /dev/linux
>           `---- 0x00da0000-0x00ffffff (   2.4 MiB): /dev/elf
> 
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>

Good idea. Applied, thanks

Sascha

> ---
>  commands/devinfo.c |    3 ++-
>  1 files changed, 2 insertions(+), 1 deletions(-)
> 
> diff --git a/commands/devinfo.c b/commands/devinfo.c
> index 806e45c..75bc9d4 100644
> --- a/commands/devinfo.c
> +++ b/commands/devinfo.c
> @@ -33,9 +33,10 @@ static int do_devinfo_subtree(struct device_d *dev, int depth)
>  		list_for_each_entry(cdev, &dev->cdevs, devices_list) {
>  			for (i = 0; i < depth + 1; i++)
>  				printf("     ");
> -			printf("`---- 0x%08llx-0x%08llx: /dev/%s\n",
> +			printf("`---- 0x%08llx-0x%08llx (%10s): /dev/%s\n",
>  					cdev->offset,
>  					cdev->offset + cdev->size - 1,
> +					size_human_readable(cdev->size),
>  					cdev->name);
>  		}
>  	} else {
> -- 
> 1.7.1
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
