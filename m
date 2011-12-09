Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYwhU-0006lm-4S
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 09:25:05 +0000
Date: Fri, 9 Dec 2011 10:24:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111209092451.GA27267@pengutronix.de>
References: <1323353029-17281-1-git-send-email-antonynpavlov@gmail.com>
 <1323353029-17281-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323353029-17281-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC PATCH 1/3] import TLSF 2.0 from
 http://tlsf.baisoku.org/tlsf-2.0.zip
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 08, 2011 at 06:03:47PM +0400, Antony Pavlov wrote:
> TLSF: Two Level Segregated Fit memory allocator implementation.
> Written by Matthew Conte (matt@baisoku.org).
> Public Domain, no restrictions.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  common/tlsf.c      |  961 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/tlsf.h     |   52 +++
>  include/tlsfbits.h |  180 ++++++++++
>  3 files changed, 1193 insertions(+), 0 deletions(-)
>  create mode 100644 common/tlsf.c
>  create mode 100644 include/tlsf.h
>  create mode 100644 include/tlsfbits.h
> 
> diff --git a/common/tlsf.c b/common/tlsf.c
> new file mode 100644
> index 0000000..02dc8d4
> --- /dev/null
> +++ b/common/tlsf.c
> @@ -0,0 +1,961 @@

We should probably add a header here and at least say where the code
comes from. 'not subject to any licensing restrictions' for me means
that we can just add the standard GPL header here, but I'm no lawyer.


> diff --git a/include/tlsfbits.h b/include/tlsfbits.h
> new file mode 100644
> index 0000000..3e5c82a
> --- /dev/null
> +++ b/include/tlsfbits.h
> @@ -0,0 +1,180 @@
> +#ifndef INCLUDED_tlsfbits
> +#define INCLUDED_tlsfbits
> +
> +#if defined(__cplusplus)
> +#define tlsf_decl inline
> +#else
> +#define tlsf_decl static
> +#endif
> +
> +/*
> +** Architecture-specific bit manipulation routines.
> +**
> +** TLSF achieves O(1) cost for malloc and free operations by limiting
> +** the search for a free block to a free list of guaranteed size
> +** adequate to fulfill the request, combined with efficient free list
> +** queries using bitmasks and architecture-specific bit-manipulation
> +** routines.
> +**
> +** Most modern processors provide instructions to count leading zeroes
> +** in a word, find the lowest and highest set bit, etc. These
> +** specific implementations will be used when available, falling back
> +** to a reasonably efficient generic implementation.
> +**
> +** NOTE: TLSF spec relies on ffs/fls returning value 0..31.
> +** ffs/fls return 1-32 by default, returning 0 for error.
> +*/
> +
> +/*
> +** Detect whether or not we are building for a 32- or 64-bit (LP/LLP)
> +** architecture. There is no reliable portable method at compile-time.
> +*/
> +#if defined (__alpha__) || defined (__ia64__) || defined (__x86_64__) \
> +	|| defined (_WIN64) || defined (__LP64__) || defined (__LLP64__)
> +#define TLSF_64BIT
> +#endif

We should throw these ifdefs away and just use:

#include <linux/bitops.h>

tlsf_decl int tlsf_ffs(unsigned int word)
{
	return ffs(word) - 1;
}

tlsf_decl int tlsf_fls(unsigned int word)
{
	return fls(word) - 1;
}

You could fold this into the barebox adoption patch so that we still
have the original import clean.


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
