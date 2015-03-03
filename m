Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YShWV-00041j-MO
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 07:45:48 +0000
Date: Tue, 3 Mar 2015 08:45:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150303074525.GO11010@pengutronix.de>
References: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
 <1425327722-28232-2-git-send-email-rockford@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425327722-28232-2-git-send-email-rockford@yandex.ru>
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
Subject: Re: [PATCH 01/18] lib: Add gcd() function.
To: Andrey Panov <rockford@yandex.ru>
Cc: barebox@lists.infradead.org

On Mon, Mar 02, 2015 at 11:21:45PM +0300, Andrey Panov wrote:
>     It calculates greatest common divisor and is
>     compiled in only if CONFIG_GCD is selected.
> 
> Signed-off-by: Andrey Panov <rockford@yandex.ru>
> ---
>  include/linux/gcd.h | 12 ++++++++++++
>  lib/Kconfig         |  3 +++
>  lib/Makefile        |  1 +
>  lib/gcd.c           | 19 +++++++++++++++++++
>  4 files changed, 35 insertions(+)
>  create mode 100644 include/linux/gcd.h
>  create mode 100644 lib/gcd.c
> 
> diff --git a/include/linux/gcd.h b/include/linux/gcd.h
> new file mode 100644
> index 0000000..6405b27
> --- /dev/null
> +++ b/include/linux/gcd.h
> @@ -0,0 +1,12 @@
> +#ifndef _GCD_H
> +#define _GCD_H
> +
> +#include <linux/compiler.h>
> +
> +#if !defined(swap)
> +#define swap(x, y) do { typeof(x) z = x; x = y; y = z; } while (0)
> +#endiif

Please add this to a location where others can use it, maybe
include/linux/kernel.h.

> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -52,3 +52,4 @@ obj-$(CONFIG_STMP_DEVICE) += stmp-device.o
>  obj-y			+= wchar.o
>  obj-y			+= libfile.o
>  obj-y			+= bitmap.o
> +obj-$(CONFIG_GCD)	+= gcd.o

You can safely always compile it without adding an extra option. The
linker will throw it away when it's unused.

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
