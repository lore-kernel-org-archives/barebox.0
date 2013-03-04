Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCQM6-00079e-0I
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 08:02:43 +0000
Date: Mon, 4 Mar 2013 09:02:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130304080232.GM25672@pengutronix.de>
References: <1361897742-3454-1-git-send-email-maxime.ripard@free-electrons.com>
 <1361897742-3454-2-git-send-email-maxime.ripard@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361897742-3454-2-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: Re: [PATCH 1/2] memsize: Make get_ram_size RAM proof
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 26, 2013 at 05:55:41PM +0100, Maxime Ripard wrote:
> get_ram_size cannot be used when running from RAM at the moment, even
> though it backs up the memory cells it modifies, since it can also
> modify the get_ram_size function itself.
> 
> Avoid testing the memory area where barebox is loaded at to prevent this
> problem. If the memory supposed to host barebox is not working, we'll
> have plenty of other problems anyway.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
> ---
>  common/memsize.c |   21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/common/memsize.c b/common/memsize.c
> index d149e41..1d00984 100644
> --- a/common/memsize.c
> +++ b/common/memsize.c
> @@ -19,6 +19,9 @@
>  
>  #include <common.h>
>  #include <config.h>
> +
> +#include <asm-generic/sections.h>
> +
>  #if defined (__PPC__) && !defined (__SANDBOX__)
>  /*
>   * At least on G2 PowerPC cores, sequential accesses to non-existent
> @@ -45,6 +48,15 @@ long get_ram_size(volatile long *base, long maxsize)
>  
>  	for (cnt = (maxsize / sizeof (long)) >> 1; cnt > 0; cnt >>= 1) {
>  		addr = base + cnt;	/* pointer arith! */
> +
> +		/*
> +		 * If we run get_ram_size from RAM, avoid poking into
> +		 * the Barebox code, and if the RAM at these address
> +		 * doesn't work, we will have trouble anyway...
> +		 */
> +		if (addr > (long*)_text && addr < (long*)__bss_stop)
> +			continue;

Unfortunately I had to drop this one. It breaks compilation on some
architectures which do not have _text and __bss_stop (namely blackfin
and another one I forgot about).

Anyway, I realized that we now can start the MMU during early startup,
so when you call this function from your board code your SDRAM might
already be cached. I assume get_ram_size won't work reliably in this
case anymore.

Since you only use it to detect whether you have 128MiB or 256Mib, could
you code a stripped down version of this function especially for your
board? Could you even adjust the SDRAM controller registers to the size
you really have? I have no idea if the SDRAM controller can cope with
that, but it might be worth giving it a try. I have a patch in the
queue moving the i.MX28 over to dynamically detecting the SDRAM size
via controller readback, so this then would simply detect the correct
size.

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
