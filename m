Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9HTq-0005gN-FF
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 15:25:27 +0000
Message-ID: <1346858724.3388.24.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 05 Sep 2012 17:25:24 +0200
In-Reply-To: <1346651881-3765-1-git-send-email-alex.aring@gmail.com>
References: <1346651881-3765-1-git-send-email-alex.aring@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 1/2] mtd: fix compiler warnings
To: barebox@lists.infradead.org
Cc: Alexander Aring <alex.aring@googlemail.com>

Hi,

On Mon, 2012-09-03 at 07:58 +0200, Alexander Aring wrote:
> Fix some compiler warnings.
> --- a/drivers/mtd/core.c
> +++ b/drivers/mtd/core.c
> @@ -79,7 +79,7 @@ static ssize_t mtd_write(struct cdev* cdev, const void *buf, size_t _count,
>  		return -EINVAL;
>  	}
>  
> -	dev_dbg(cdev->dev, "write: 0x%08lx 0x%08x\n", offset, count);
> +	dev_dbg(cdev->dev, "write: 0x%08lx 0x%08lx\n", offset, count);
>  	while (count) {

This causes some new warnings for me:
drivers/mtd/core.c: In function 'mtd_write':
drivers/mtd/core.c:82:2: warning: format '%08lx' expects type 'long unsigned int', but argument 5 has type 'size_t'
drivers/mtd/core.c:102:4: warning: format '%08lx' expects type 'long unsigned int', but argument 5 has type 'size_t'
drivers/mtd/core.c:102:4: warning: format '%08lx' expects type 'long unsigned int', but argument 6 has type 'size_t'

They go away when reverting this. It seems that different achitectures
have different ideas about size_t:
./include/linux/types.h:54:typedef __kernel_size_t		size_t;
./arch/ppc/include/asm/posix_types.h:17:typedef unsigned int	__kernel_size_t;
./arch/blackfin/include/asm/posix_types.h:45:typedef unsigned int __kernel_size_t;
./arch/mips/include/asm/posix_types.h:34:typedef unsigned int	__kernel_size_t;
./arch/mips/include/asm/posix_types.h:39:typedef unsigned long	__kernel_size_t;
./arch/x86/include/asm/posix_types.h:34:typedef unsigned int	__kernel_size_t;
./arch/sandbox/include/asm/posix_types.h:18:typedef unsigned long	__kernel_size_t;
./arch/nios2/include/asm/posix_types.h:30:typedef unsigned int		__kernel_size_t;
./arch/openrisc/include/asm/posix_types.h:28:typedef unsigned int	__kernel_size_t;
./arch/arm/include/asm/posix_types.h:30:typedef unsigned int		__kernel_size_t;

On which arch did you see the warnings with the original code?

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
