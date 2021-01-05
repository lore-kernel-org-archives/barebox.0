Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kwmXN-00070I-E7
 for barebox@lists.infradead.org; Tue, 05 Jan 2021 13:38:14 +0000
Date: Tue, 5 Jan 2021 14:38:12 +0100
Message-ID: <20210105133811.GH19063@pengutronix.de>
References: <20201229123254.1053519-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201229123254.1053519-1-ahmad@a3f.at>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] include: <linux/math64.h>: sync with upstream
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Tue, Dec 29, 2020 at 01:32:54PM +0100, Ahmad Fatoum wrote:
> The header implements definitions for the 64-bit division helpers
> on 64-bit builds only. For 32-bit builds, it can only provide prototypes
> and the actual implementation will need to come from elsewhere.
> 
> We didn't have any out-of-line definitions in barebox with the result
> that functions like div_s64_rem() were so far only usable in
> 64-bit barebox builds. On 32-bit builds, they would result in a linker
> error.
> 
> Import the Linux v5.11-rc1 generic out-of-line 64-bit math on 32-bit
> implementation to fix this. While at it, synchronize the header to
> reduce diff to upstream.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  include/linux/math64.h | 211 +++++++++++++++++++++++++++++++++++-
>  lib/Makefile           |   1 +
>  lib/math/Makefile      |   1 +
>  lib/math/div64.c       | 235 +++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 443 insertions(+), 5 deletions(-)
>  create mode 100644 lib/math/Makefile
>  create mode 100644 lib/math/div64.c

Applied, thanks

Sascha

> 
> diff --git a/include/linux/math64.h b/include/linux/math64.h
> index 71dd6d7109b7..e8b737e70e50 100644
> --- a/include/linux/math64.h
> +++ b/include/linux/math64.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
>  #ifndef _LINUX_MATH64_H
>  #define _LINUX_MATH64_H
>  
> @@ -6,10 +7,16 @@
>  
>  #if BITS_PER_LONG == 64
>  
> -#define div64_long(x,y) div64_s64((x),(y))
> +#define div64_long(x, y) div64_s64((x), (y))
> +#define div64_ul(x, y)   div64_u64((x), (y))
>  
>  /**
>   * div_u64_rem - unsigned 64bit divide with 32bit divisor with remainder
> + * @dividend: unsigned 64bit dividend
> + * @divisor: unsigned 32bit divisor
> + * @remainder: pointer to unsigned 32bit remainder
> + *
> + * Return: sets ``*remainder``, then returns dividend / divisor
>   *
>   * This is commonly provided by 32bit archs to provide an optimized 64bit
>   * divide.
> @@ -20,8 +27,13 @@ static inline u64 div_u64_rem(u64 dividend, u32 divisor, u32 *remainder)
>  	return dividend / divisor;
>  }
>  
> -/**
> +/*
>   * div_s64_rem - signed 64bit divide with 32bit divisor with remainder
> + * @dividend: signed 64bit dividend
> + * @divisor: signed 32bit divisor
> + * @remainder: pointer to signed 32bit remainder
> + *
> + * Return: sets ``*remainder``, then returns dividend / divisor
>   */
>  static inline s64 div_s64_rem(s64 dividend, s32 divisor, s32 *remainder)
>  {
> @@ -29,16 +41,38 @@ static inline s64 div_s64_rem(s64 dividend, s32 divisor, s32 *remainder)
>  	return dividend / divisor;
>  }
>  
> -/**
> +/*
> + * div64_u64_rem - unsigned 64bit divide with 64bit divisor and remainder
> + * @dividend: unsigned 64bit dividend
> + * @divisor: unsigned 64bit divisor
> + * @remainder: pointer to unsigned 64bit remainder
> + *
> + * Return: sets ``*remainder``, then returns dividend / divisor
> + */
> +static inline u64 div64_u64_rem(u64 dividend, u64 divisor, u64 *remainder)
> +{
> +	*remainder = dividend % divisor;
> +	return dividend / divisor;
> +}
> +
> +/*
>   * div64_u64 - unsigned 64bit divide with 64bit divisor
> + * @dividend: unsigned 64bit dividend
> + * @divisor: unsigned 64bit divisor
> + *
> + * Return: dividend / divisor
>   */
>  static inline u64 div64_u64(u64 dividend, u64 divisor)
>  {
>  	return dividend / divisor;
>  }
>  
> -/**
> +/*
>   * div64_s64 - signed 64bit divide with 64bit divisor
> + * @dividend: signed 64bit dividend
> + * @divisor: signed 64bit divisor
> + *
> + * Return: dividend / divisor
>   */
>  static inline s64 div64_s64(s64 dividend, s64 divisor)
>  {
> @@ -47,7 +81,8 @@ static inline s64 div64_s64(s64 dividend, s64 divisor)
>  
>  #elif BITS_PER_LONG == 32
>  
> -#define div64_long(x,y) div_s64((x),(y))
> +#define div64_long(x, y) div_s64((x), (y))
> +#define div64_ul(x, y)   div_u64((x), (y))
>  
>  #ifndef div_u64_rem
>  static inline u64 div_u64_rem(u64 dividend, u32 divisor, u32 *remainder)
> @@ -61,6 +96,10 @@ static inline u64 div_u64_rem(u64 dividend, u32 divisor, u32 *remainder)
>  extern s64 div_s64_rem(s64 dividend, s32 divisor, s32 *remainder);
>  #endif
>  
> +#ifndef div64_u64_rem
> +extern u64 div64_u64_rem(u64 dividend, u64 divisor, u64 *remainder);
> +#endif
> +
>  #ifndef div64_u64
>  extern u64 div64_u64(u64 dividend, u64 divisor);
>  #endif
> @@ -73,6 +112,8 @@ extern s64 div64_s64(s64 dividend, s64 divisor);
>  
>  /**
>   * div_u64 - unsigned 64bit divide with 32bit divisor
> + * @dividend: unsigned 64bit dividend
> + * @divisor: unsigned 32bit divisor
>   *
>   * This is the most common 64bit divide and should be used if possible,
>   * as many 32bit archs can optimize this variant better than a full 64bit
> @@ -88,6 +129,8 @@ static inline u64 div_u64(u64 dividend, u32 divisor)
>  
>  /**
>   * div_s64 - signed 64bit divide with 32bit divisor
> + * @dividend: signed 64bit dividend
> + * @divisor: signed 32bit divisor
>   */
>  #ifndef div_s64
>  static inline s64 div_s64(s64 dividend, s32 divisor)
> @@ -99,6 +142,164 @@ static inline s64 div_s64(s64 dividend, s32 divisor)
>  
>  u32 iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder);
>  
> +#ifndef mul_u32_u32
> +/*
> + * Many a GCC version messes this up and generates a 64x64 mult :-(
> + */
> +static inline u64 mul_u32_u32(u32 a, u32 b)
> +{
> +	return (u64)a * b;
> +}
> +#endif
> +
> +#if defined(CONFIG_ARCH_SUPPORTS_INT128) && defined(__SIZEOF_INT128__)
> +
> +#ifndef mul_u64_u32_shr
> +static inline u64 mul_u64_u32_shr(u64 a, u32 mul, unsigned int shift)
> +{
> +	return (u64)(((unsigned __int128)a * mul) >> shift);
> +}
> +#endif /* mul_u64_u32_shr */
> +
> +#ifndef mul_u64_u64_shr
> +static inline u64 mul_u64_u64_shr(u64 a, u64 mul, unsigned int shift)
> +{
> +	return (u64)(((unsigned __int128)a * mul) >> shift);
> +}
> +#endif /* mul_u64_u64_shr */
> +
> +#else
> +
> +#ifndef mul_u64_u32_shr
> +static inline u64 mul_u64_u32_shr(u64 a, u32 mul, unsigned int shift)
> +{
> +	u32 ah, al;
> +	u64 ret;
> +
> +	al = a;
> +	ah = a >> 32;
> +
> +	ret = mul_u32_u32(al, mul) >> shift;
> +	if (ah)
> +		ret += mul_u32_u32(ah, mul) << (32 - shift);
> +
> +	return ret;
> +}
> +#endif /* mul_u64_u32_shr */
> +
> +#ifndef mul_u64_u64_shr
> +static inline u64 mul_u64_u64_shr(u64 a, u64 b, unsigned int shift)
> +{
> +	union {
> +		u64 ll;
> +		struct {
> +#ifdef __BIG_ENDIAN
> +			u32 high, low;
> +#else
> +			u32 low, high;
> +#endif
> +		} l;
> +	} rl, rm, rn, rh, a0, b0;
> +	u64 c;
> +
> +	a0.ll = a;
> +	b0.ll = b;
> +
> +	rl.ll = mul_u32_u32(a0.l.low, b0.l.low);
> +	rm.ll = mul_u32_u32(a0.l.low, b0.l.high);
> +	rn.ll = mul_u32_u32(a0.l.high, b0.l.low);
> +	rh.ll = mul_u32_u32(a0.l.high, b0.l.high);
> +
> +	/*
> +	 * Each of these lines computes a 64-bit intermediate result into "c",
> +	 * starting at bits 32-95.  The low 32-bits go into the result of the
> +	 * multiplication, the high 32-bits are carried into the next step.
> +	 */
> +	rl.l.high = c = (u64)rl.l.high + rm.l.low + rn.l.low;
> +	rh.l.low = c = (c >> 32) + rm.l.high + rn.l.high + rh.l.low;
> +	rh.l.high = (c >> 32) + rh.l.high;
> +
> +	/*
> +	 * The 128-bit result of the multiplication is in rl.ll and rh.ll,
> +	 * shift it right and throw away the high part of the result.
> +	 */
> +	if (shift == 0)
> +		return rl.ll;
> +	if (shift < 64)
> +		return (rl.ll >> shift) | (rh.ll << (64 - shift));
> +	return rh.ll >> (shift & 63);
> +}
> +#endif /* mul_u64_u64_shr */
> +
> +#endif
> +
> +#ifndef mul_u64_u32_div
> +static inline u64 mul_u64_u32_div(u64 a, u32 mul, u32 divisor)
> +{
> +	union {
> +		u64 ll;
> +		struct {
> +#ifdef __BIG_ENDIAN
> +			u32 high, low;
> +#else
> +			u32 low, high;
> +#endif
> +		} l;
> +	} u, rl, rh;
> +
> +	u.ll = a;
> +	rl.ll = mul_u32_u32(u.l.low, mul);
> +	rh.ll = mul_u32_u32(u.l.high, mul) + rl.l.high;
> +
> +	/* Bits 32-63 of the result will be in rh.l.low. */
> +	rl.l.high = do_div(rh.ll, divisor);
> +
> +	/* Bits 0-31 of the result will be in rl.l.low.	*/
> +	do_div(rl.ll, divisor);
> +
> +	rl.l.high = rh.l.low;
> +	return rl.ll;
> +}
> +#endif /* mul_u64_u32_div */
> +
> +u64 mul_u64_u64_div_u64(u64 a, u64 mul, u64 div);
> +
> +#define DIV64_U64_ROUND_UP(ll, d)	\
> +	({ u64 _tmp = (d); div64_u64((ll) + _tmp - 1, _tmp); })
> +
> +/**
> + * DIV64_U64_ROUND_CLOSEST - unsigned 64bit divide with 64bit divisor rounded to nearest integer
> + * @dividend: unsigned 64bit dividend
> + * @divisor: unsigned 64bit divisor
> + *
> + * Divide unsigned 64bit dividend by unsigned 64bit divisor
> + * and round to closest integer.
> + *
> + * Return: dividend / divisor rounded to nearest integer
> + */
> +#define DIV64_U64_ROUND_CLOSEST(dividend, divisor)	\
> +	({ u64 _tmp = (divisor); div64_u64((dividend) + _tmp / 2, _tmp); })
> +
> +/*
> + * DIV_S64_ROUND_CLOSEST - signed 64bit divide with 32bit divisor rounded to nearest integer
> + * @dividend: signed 64bit dividend
> + * @divisor: signed 32bit divisor
> + *
> + * Divide signed 64bit dividend by signed 32bit divisor
> + * and round to closest integer.
> + *
> + * Return: dividend / divisor rounded to nearest integer
> + */
> +#define DIV_S64_ROUND_CLOSEST(dividend, divisor)(	\
> +{							\
> +	s64 __x = (dividend);				\
> +	s32 __d = (divisor);				\
> +	((__x > 0) == (__d > 0)) ?			\
> +		div_s64((__x + (__d / 2)), __d) :	\
> +		div_s64((__x - (__d / 2)), __d);	\
> +}							\
> +)
> +
>  static __always_inline u32
>  __iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder)
>  {
> diff --git a/lib/Makefile b/lib/Makefile
> index ba6af6f2ab24..9c6f4133d77c 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -25,6 +25,7 @@ obj-y			+= cmdlinepart.o
>  obj-y			+= recursive_action.o
>  obj-y			+= make_directory.o
>  obj-y			+= math.o
> +obj-y			+= math/
>  obj-$(CONFIG_XXHASH)	+= xxhash.o
>  obj-$(CONFIG_BZLIB)	+= decompress_bunzip2.o
>  obj-$(CONFIG_ZLIB)	+= decompress_inflate.o zlib_inflate/
> diff --git a/lib/math/Makefile b/lib/math/Makefile
> new file mode 100644
> index 000000000000..3341a8e4744b
> --- /dev/null
> +++ b/lib/math/Makefile
> @@ -0,0 +1 @@
> +obj-y += div64.o
> diff --git a/lib/math/div64.c b/lib/math/div64.c
> new file mode 100644
> index 000000000000..507de8216a3e
> --- /dev/null
> +++ b/lib/math/div64.c
> @@ -0,0 +1,235 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2003 Bernardo Innocenti <bernie@develer.com>
> + *
> + * Based on former do_div() implementation from asm-parisc/div64.h:
> + *	Copyright (C) 1999 Hewlett-Packard Co
> + *	Copyright (C) 1999 David Mosberger-Tang <davidm@hpl.hp.com>
> + *
> + *
> + * Generic C version of 64bit/32bit division and modulo, with
> + * 64bit result and 32bit remainder.
> + *
> + * The fast case for (n>>32 == 0) is handled inline by do_div().
> + *
> + * Code generated for this function might be very inefficient
> + * for some CPUs. __div64_32() can be overridden by linking arch-specific
> + * assembly versions such as arch/ppc/lib/div64.S and arch/sh/lib/div64.S
> + * or by defining a preprocessor macro in arch/include/asm/div64.h.
> + */
> +
> +#include <linux/bitops.h>
> +#include <linux/export.h>
> +#include <linux/kernel.h>
> +#include <linux/math64.h>
> +#include <linux/log2.h>
> +
> +/* Not needed on 64bit architectures */
> +#if BITS_PER_LONG == 32
> +
> +#ifndef __div64_32
> +uint32_t __attribute__((weak)) __div64_32(uint64_t *n, uint32_t base)
> +{
> +	uint64_t rem = *n;
> +	uint64_t b = base;
> +	uint64_t res, d = 1;
> +	uint32_t high = rem >> 32;
> +
> +	/* Reduce the thing a bit first */
> +	res = 0;
> +	if (high >= base) {
> +		high /= base;
> +		res = (uint64_t) high << 32;
> +		rem -= (uint64_t) (high*base) << 32;
> +	}
> +
> +	while ((int64_t)b > 0 && b < rem) {
> +		b = b+b;
> +		d = d+d;
> +	}
> +
> +	do {
> +		if (rem >= b) {
> +			rem -= b;
> +			res += d;
> +		}
> +		b >>= 1;
> +		d >>= 1;
> +	} while (d);
> +
> +	*n = res;
> +	return rem;
> +}
> +EXPORT_SYMBOL(__div64_32);
> +#endif
> +
> +/**
> + * div_s64_rem - signed 64bit divide with 64bit divisor and remainder
> + * @dividend:	64bit dividend
> + * @divisor:	64bit divisor
> + * @remainder:  64bit remainder
> + */
> +#ifndef div_s64_rem
> +s64 div_s64_rem(s64 dividend, s32 divisor, s32 *remainder)
> +{
> +	u64 quotient;
> +
> +	if (dividend < 0) {
> +		quotient = div_u64_rem(-dividend, abs(divisor), (u32 *)remainder);
> +		*remainder = -*remainder;
> +		if (divisor > 0)
> +			quotient = -quotient;
> +	} else {
> +		quotient = div_u64_rem(dividend, abs(divisor), (u32 *)remainder);
> +		if (divisor < 0)
> +			quotient = -quotient;
> +	}
> +	return quotient;
> +}
> +EXPORT_SYMBOL(div_s64_rem);
> +#endif
> +
> +/**
> + * div64_u64_rem - unsigned 64bit divide with 64bit divisor and remainder
> + * @dividend:	64bit dividend
> + * @divisor:	64bit divisor
> + * @remainder:  64bit remainder
> + *
> + * This implementation is a comparable to algorithm used by div64_u64.
> + * But this operation, which includes math for calculating the remainder,
> + * is kept distinct to avoid slowing down the div64_u64 operation on 32bit
> + * systems.
> + */
> +#ifndef div64_u64_rem
> +u64 div64_u64_rem(u64 dividend, u64 divisor, u64 *remainder)
> +{
> +	u32 high = divisor >> 32;
> +	u64 quot;
> +
> +	if (high == 0) {
> +		u32 rem32;
> +		quot = div_u64_rem(dividend, divisor, &rem32);
> +		*remainder = rem32;
> +	} else {
> +		int n = fls(high);
> +		quot = div_u64(dividend >> n, divisor >> n);
> +
> +		if (quot != 0)
> +			quot--;
> +
> +		*remainder = dividend - quot * divisor;
> +		if (*remainder >= divisor) {
> +			quot++;
> +			*remainder -= divisor;
> +		}
> +	}
> +
> +	return quot;
> +}
> +EXPORT_SYMBOL(div64_u64_rem);
> +#endif
> +
> +/**
> + * div64_u64 - unsigned 64bit divide with 64bit divisor
> + * @dividend:	64bit dividend
> + * @divisor:	64bit divisor
> + *
> + * This implementation is a modified version of the algorithm proposed
> + * by the book 'Hacker's Delight'.  The original source and full proof
> + * can be found here and is available for use without restriction.
> + *
> + * 'http://www.hackersdelight.org/hdcodetxt/divDouble.c.txt'
> + */
> +#ifndef div64_u64
> +u64 div64_u64(u64 dividend, u64 divisor)
> +{
> +	u32 high = divisor >> 32;
> +	u64 quot;
> +
> +	if (high == 0) {
> +		quot = div_u64(dividend, divisor);
> +	} else {
> +		int n = fls(high);
> +		quot = div_u64(dividend >> n, divisor >> n);
> +
> +		if (quot != 0)
> +			quot--;
> +		if ((dividend - quot * divisor) >= divisor)
> +			quot++;
> +	}
> +
> +	return quot;
> +}
> +EXPORT_SYMBOL(div64_u64);
> +#endif
> +
> +/**
> + * div64_s64 - signed 64bit divide with 64bit divisor
> + * @dividend:	64bit dividend
> + * @divisor:	64bit divisor
> + */
> +#ifndef div64_s64
> +s64 div64_s64(s64 dividend, s64 divisor)
> +{
> +	s64 quot, t;
> +
> +	quot = div64_u64(abs(dividend), abs(divisor));
> +	t = (dividend ^ divisor) >> 63;
> +
> +	return (quot ^ t) - t;
> +}
> +EXPORT_SYMBOL(div64_s64);
> +#endif
> +
> +#endif /* BITS_PER_LONG == 32 */
> +
> +/*
> + * Iterative div/mod for use when dividend is not expected to be much
> + * bigger than divisor.
> + */
> +u32 iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder)
> +{
> +	return __iter_div_u64_rem(dividend, divisor, remainder);
> +}
> +EXPORT_SYMBOL(iter_div_u64_rem);
> +
> +#ifndef mul_u64_u64_div_u64
> +u64 mul_u64_u64_div_u64(u64 a, u64 b, u64 c)
> +{
> +	u64 res = 0, div, rem;
> +	int shift;
> +
> +	/* can a * b overflow ? */
> +	if (ilog2(a) + ilog2(b) > 62) {
> +		/*
> +		 * (b * a) / c is equal to
> +		 *
> +		 *      (b / c) * a +
> +		 *      (b % c) * a / c
> +		 *
> +		 * if nothing overflows. Can the 1st multiplication
> +		 * overflow? Yes, but we do not care: this can only
> +		 * happen if the end result can't fit in u64 anyway.
> +		 *
> +		 * So the code below does
> +		 *
> +		 *      res = (b / c) * a;
> +		 *      b = b % c;
> +		 */
> +		div = div64_u64_rem(b, c, &rem);
> +		res = div * a;
> +		b = rem;
> +
> +		shift = ilog2(a) + ilog2(b) - 62;
> +		if (shift > 0) {
> +			/* drop precision */
> +			b >>= shift;
> +			c >>= shift;
> +			if (!c)
> +				return res;
> +		}
> +	}
> +
> +	return res + div64_u64(a * b, c);
> +}
> +#endif
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
