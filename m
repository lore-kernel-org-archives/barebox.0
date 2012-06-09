Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SdJpH-0002nl-9k
 for barebox@lists.infradead.org; Sat, 09 Jun 2012 11:27:27 +0000
Date: Sat, 9 Jun 2012 13:27:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120609112725.GI30400@pengutronix.de>
References: <1339227266-9398-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1339227266-9398-1-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] Move /dev/zero to separate unit
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Jun 09, 2012 at 11:34:25AM +0400, Alexander Shiyan wrote:
> This patch allows to present "/dev/zero" always in system and not
> depending  of mem-command. Standard files allow to test other memory
> devices, not only "mem", such as NOR, NAND, MCI-devices e.t.c.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied to -next. Thanks

Sascha

> ---
>  commands/Makefile |    1 +
>  commands/mem.c    |   29 -----------------------------
>  commands/stddev.c |   51 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 52 insertions(+), 29 deletions(-)
>  create mode 100644 commands/stddev.c
> 
> diff --git a/commands/Makefile b/commands/Makefile
> index 4c8a0a9..d39c466 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -1,3 +1,4 @@
> +obj-y				+= stddev.o
>  obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
>  obj-$(CONFIG_CMD_UIMAGE)	+= uimage.o
>  obj-$(CONFIG_CMD_LINUX16)	+= linux16.o
> diff --git a/commands/mem.c b/commands/mem.c
> index 080bfde..9a67cf3 100644
> --- a/commands/mem.c
> +++ b/commands/mem.c
> @@ -623,32 +623,3 @@ static int mem_init(void)
>  }
>  
>  device_initcall(mem_init);
> -
> -static ssize_t zero_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
> -{
> -	memset(buf, 0, count);
> -	return count;
> -}
> -
> -static struct file_operations zeroops = {
> -	.read  = zero_read,
> -	.lseek = dev_lseek_default,
> -};
> -
> -static int zero_init(void)
> -{
> -	struct cdev *cdev;
> -
> -	cdev = xzalloc(sizeof (*cdev));
> -
> -	cdev->name = "zero";
> -	cdev->size = ~0;
> -	cdev->ops = &zeroops;
> -
> -	devfs_create(cdev);
> -
> -	return 0;
> -}
> -
> -device_initcall(zero_init);
> -
> diff --git a/commands/stddev.c b/commands/stddev.c
> new file mode 100644
> index 0000000..18fea94
> --- /dev/null
> +++ b/commands/stddev.c
> @@ -0,0 +1,51 @@
> +/*
> + * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
> + * MA 02111-1307 USA
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +
> +static ssize_t zero_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
> +{
> +	memset(buf, 0, count);
> +	return count;
> +}
> +
> +static struct file_operations zeroops = {
> +	.read  = zero_read,
> +	.lseek = dev_lseek_default,
> +};
> +
> +static int zero_init(void)
> +{
> +	struct cdev *cdev;
> +
> +	cdev = xzalloc(sizeof (*cdev));
> +
> +	cdev->name = "zero";
> +	cdev->size = ~0;
> +	cdev->ops = &zeroops;
> +
> +	devfs_create(cdev);
> +
> +	return 0;
> +}
> +
> +device_initcall(zero_init);
> -- 
> 1.7.3.4
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
