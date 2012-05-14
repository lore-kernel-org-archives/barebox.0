Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STqOf-0004d1-81
 for barebox@lists.infradead.org; Mon, 14 May 2012 08:12:50 +0000
Date: Mon, 14 May 2012 10:12:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120514081246.GC21318@pengutronix.de>
References: <20120513090917.GX27341@pengutronix.de>
 <1336912806-4163-1-git-send-email-agalakhov@gmail.com>
 <1336912806-4163-3-git-send-email-agalakhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336912806-4163-3-git-send-email-agalakhov@gmail.com>
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
Subject: Re: [PATCH 2/9] Fine split S3C arch dependencies from generic code
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, May 13, 2012 at 06:39:59PM +0600, Alexey Galakhov wrote:
> Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
> ---
>  
>  // {"NAND 1MiB 3,3V 8-bit", 0xec, 256, 1, 0x1000, 0},
>  static struct s3c24x0_nand_platform_data nand_info = {
> @@ -51,7 +51,7 @@ static int a9m2410_mem_init(void)
>  	 * Note: On this card the second SDRAM page is not used
>  	 */
>  	s3c24xx_disable_second_sdram_bank();
> -	size = s3c24xx_get_memory_size();
> +	size = s3c_get_memory_size();

s3c24xx_get_memory_size is a s3c24xx specific function, which is called
from a s3c24xx specific context, so please keep the name like it is.

Generally if two functions need to be implemented differently on
different SoCs they should have a different name. We learned that
the hard way in the kernel where we tend to build multiple SoCs in
a single image. With a generic s3c_ this won't work.
Not that we want to compile in multiple SoC support into barebox in the
near future, but the above already *is* done right, so don't change it.

> diff --git a/arch/arm/boards/a9m2440/a9m2410dev.c b/arch/arm/boards/a9m2440/a9m2410dev.c
> index bedb0f7..f23fc5d 100644
> --- a/arch/arm/boards/a9m2440/a9m2410dev.c
> +++ b/arch/arm/boards/a9m2440/a9m2410dev.c
> @@ -30,7 +30,7 @@
>  #include <io.h>
>  #include <mach/s3c-iomap.h>
>  #include <mach/s3c-busctl.h>
> -#include <mach/s3c24xx-gpio.h>
> +#include <mach/gpio-s3c24x0.h>

Don't rename files if you don't really have to. One may argue if one
name or the other is better, but once the files are there you need
really good reasons to change them because tracking git history over renames
is hard.
If you really want to change filenames, please generate your patches
with git format-patch -M which will make it easier to review.

>  #include <mach/s3c-iomap.h>
> -#include <mach/s3c24xx-nand.h>
> +#include <mach/nand-s3c24x0.h>

Same here.

Overall this patch introduces a lot of churn without explaining why it
is useful. The series would be much better if you just drop this patch.

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
