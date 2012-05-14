Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STqGJ-00041m-43
 for barebox@lists.infradead.org; Mon, 14 May 2012 08:04:11 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 14 May 2012 10:03:01 +0200
References: <20120513090917.GX27341@pengutronix.de>
 <1336912806-4163-1-git-send-email-agalakhov@gmail.com>
 <1336912806-4163-3-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1336912806-4163-3-git-send-email-agalakhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201205141003.02064.jbe@pengutronix.de>
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
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Alexey Galakhov wrote:
> Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
> ---
>  arch/arm/boards/a9m2410/a9m2410.c                  |   10 +-
>  arch/arm/boards/a9m2440/a9m2410dev.c               |    2 +-
>  arch/arm/boards/a9m2440/a9m2440.c                  |   10 +-
>  arch/arm/boards/mini2440/mini2440.c                |   10 +-
> [...]
>  delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h
>  create mode 100644 arch/arm/mach-samsung/include/mach/gpio-s3c24x0.h
> [...]
>  create mode 100644 arch/arm/mach-samsung/include/mach/nand-s3c24x0.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
> [...]
> diff --git a/arch/arm/boards/a9m2410/a9m2410.c
> b/arch/arm/boards/a9m2410/a9m2410.c index 1a3181e..e416c8e 100644
> --- a/arch/arm/boards/a9m2410/a9m2410.c
> +++ b/arch/arm/boards/a9m2410/a9m2410.c
> @@ -33,10 +33,10 @@
>  #include <nand.h>
>  #include <io.h>
>  #include <mach/s3c-iomap.h>
> -#include <mach/s3c24xx-nand.h>
> +#include <mach/nand-s3c24x0.h>
>  #include <mach/s3c-generic.h>
>  #include <mach/s3c-busctl.h>
> -#include <mach/s3c24xx-gpio.h>
> +#include <mach/gpio-s3c24x0.h>
> [...]
>  delete mode 100644 arch/arm/mach-samsung/s3c24xx-clocks.c

You have to touch all S3C24xx based board files just to rename these files 
from "<socname>-<function>.h" to "<function>-<socname>.h"?

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
