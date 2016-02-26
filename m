Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from erouter8.ore.mailhop.org ([54.187.218.212])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZP0T-0001QP-BR
 for barebox@lists.infradead.org; Fri, 26 Feb 2016 20:28:58 +0000
Date: Fri, 26 Feb 2016 20:28:32 +0000
From: Jason Cooper <barebox@lakedaemon.net>
Message-ID: <20160226202832.GE7219@io.lakedaemon.net>
References: <1456488287-23404-1-git-send-email-s.trumtrar@pengutronix.de>
 <1456488287-23404-3-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1456488287-23404-3-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 2/5] lib: random: get_random_bytes from HWRNG if present
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Steffen,

On Fri, Feb 26, 2016 at 01:04:44PM +0100, Steffen Trumtrar wrote:
> Instead of generating pseudo random numbers, get random bytes
> from an optional HW generator, if enabled and registered.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  lib/random.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)

I have a long interest in KASLR on arm/arm64, so I'm glad to see this
series!  :-)

> diff --git a/lib/random.c b/lib/random.c
> index 210fea99466e..ff82dd1bed85 100644
> --- a/lib/random.c
> +++ b/lib/random.c
> @@ -1,5 +1,6 @@
>  #include <common.h>
>  #include <stdlib.h>
> +#include <linux/hw_random.h>
>  
>  static unsigned int random_seed;
>  
> @@ -22,6 +23,24 @@ void get_random_bytes(void *_buf, int len)
>  {
>  	char *buf = _buf;
>  
> +	if (IS_ENABLED(CONFIG_HWRNG)) {
> +		struct hwrng *rng;
> +		int bytes;
> +
> +		rng = hwrng_get_first();
> +		if (!PTR_ERR(rng)) {
> +			while (len) {
> +				bytes = hwrng_get_data(rng, _buf, len, 0);
> +				if (!bytes)
> +					goto sw_fallback;
> +				len -= bytes;
> +			}
> +
> +			return;
> +		}
> +	}
> +
> +sw_fallback:
>  	while (len--)
>  		*buf++ = rand() % 256;
>  }

However, I disagree with this approach.  One of the main problems we've
had over the years with random number generation is not being clear
about *how* the numbers were generated.  Something designed for placing
characters in a game is not suitable for creating long-term crypto keys,
stack canaries, and ASLR offsets.  See the paper on iOS bootloader and
KASLR [1].

With that in mind, I'd like to suggest that we preserve the current
functionality of get_random_bytes() as a non-strong source of entropy.
After all, all current calls to srand() feed in a time...

We can then add get_hwrng_bytes() which makes it clear where the bytes
are coming from.  Users down the line can more easily make an assessment
of whether the SoC hwrng is trusted or not for their usecase.

My goal here is to have the bootloader grab some strong random numbers
to hand off to the kernel.  The decompressor would consume a bit of it
to initialize KASLR, and the rest would be consumed seeding the kernel's
entropy pools.

A second goal is to have the OS write a seed file somewhere the
bootloader can access.  Then, on reboot, the bootloader can read it in
and hand it off to the kernel for KASLR, etc.  But that is orthogonal to
this patch series...

thx,

Jason.

[1] http://mista.nu/research/early_random-paper.pdf

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
