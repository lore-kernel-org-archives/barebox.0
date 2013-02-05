Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2eL4-0001cI-Uc
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 08:57:15 +0000
Date: Tue, 5 Feb 2013 09:57:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130205085713.GO1906@pengutronix.de>
References: <1360017396-13321-1-git-send-email-antonynpavlov@gmail.com>
 <1360017396-13321-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360017396-13321-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 2/2] pbl: factorise linux/decompress/mm.h inclusion
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 05, 2013 at 02:36:36AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  lib/decompress_inflate.c |    1 -
>  lib/decompress_unlzo.c   |    1 -
>  pbl/decomp.c             |    2 ++
>  3 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/lib/decompress_inflate.c b/lib/decompress_inflate.c
> index 5c1ebb6..526d6a1 100644
> --- a/lib/decompress_inflate.c
> +++ b/lib/decompress_inflate.c
> @@ -4,7 +4,6 @@
>  /* prevent inclusion of _LINUX_KERNEL_H in pre-boot environment: lots
>   * errors about console_printk etc... on ARM */
>  #define _LINUX_KERNEL_H
> -#include <linux/decompress/mm.h>
>  
>  #include "zlib_inflate/inftrees.c"
>  #include "zlib_inflate/inffast.c"
> diff --git a/lib/decompress_unlzo.c b/lib/decompress_unlzo.c
> index 1b2dc9d..2b0fbed 100644
> --- a/lib/decompress_unlzo.c
> +++ b/lib/decompress_unlzo.c
> @@ -32,7 +32,6 @@
>  #include <xfuncs.h>
>  
>  #ifdef STATIC
> -#include <linux/decompress/mm.h>
>  #include "lzo/lzo1x_decompress.c"
>  #else
>  #include <malloc.h>
> diff --git a/pbl/decomp.c b/pbl/decomp.c
> index aa6a31e..17fc01e 100644
> --- a/pbl/decomp.c
> +++ b/pbl/decomp.c
> @@ -10,6 +10,8 @@
>  
>  #define STATIC static
>  
> +#include <linux/decompress/mm.h>
> +

Any special reason for this patch? Normally the #include is in the file
requiring the declarations from the file. In this case decompress_* need
linux/decompress/mm.h, not pbl/decomp.c.

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
